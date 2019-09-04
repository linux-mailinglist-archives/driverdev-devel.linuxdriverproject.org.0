Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 838B8A787E
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 04:10:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2049E86A00;
	Wed,  4 Sep 2019 02:10:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jUSVqrl_zQXC; Wed,  4 Sep 2019 02:10:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E675D85644;
	Wed,  4 Sep 2019 02:10:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0BBA71BF983
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 077E48829B
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9G+BMFq+Wu7z for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 02:10:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A84FC88251
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 02:10:32 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 938614BD2A40AB5CB661;
 Wed,  4 Sep 2019 10:10:30 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.211) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 4 Sep 2019
 10:10:24 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Christoph Hellwig <hch@lst.de>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH v2 17/25] erofs: kill __submit_bio()
Date: Wed, 4 Sep 2019 10:09:04 +0800
Message-ID: <20190904020912.63925-18-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904020912.63925-1-gaoxiang25@huawei.com>
References: <20190901055130.30572-1-hsiangkao@aol.com>
 <20190904020912.63925-1-gaoxiang25@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.140.130.215]
X-CFilter-Loop: Reflected
X-BeenThere: driverdev-devel@linuxdriverproject.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Driver Project Developer List
 <driverdev-devel.linuxdriverproject.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Cc: linux-fsdevel@vger.kernel.org, Miao Xie <miaoxie@huawei.com>,
 Chao Yu <chao@kernel.org>, linux-erofs@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As Christoph pointed out [1], "
Why is there __submit_bio which really just obsfucates
what is going on?  Also why is __submit_bio using
bio_set_op_attrs instead of opencode it as the comment
right next to it asks you to? "

Let's use submit_bio directly instead.

[1] https://lore.kernel.org/r/20190830162812.GA10694@infradead.org/
Reported-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/data.c     | 21 +++++++++++++--------
 fs/erofs/internal.h |  7 -------
 fs/erofs/zdata.c    |  6 ++++--
 3 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/fs/erofs/data.c b/fs/erofs/data.c
index 28eda71bb1a9..70b1e353756e 100644
--- a/fs/erofs/data.c
+++ b/fs/erofs/data.c
@@ -40,7 +40,8 @@ static inline void read_endio(struct bio *bio)
 
 static struct bio *erofs_grab_raw_bio(struct super_block *sb,
 				      erofs_blk_t blkaddr,
-				      unsigned int nr_pages)
+				      unsigned int nr_pages,
+				      bool ismeta)
 {
 	struct bio *bio = bio_alloc(GFP_NOIO, nr_pages);
 
@@ -48,6 +49,11 @@ static struct bio *erofs_grab_raw_bio(struct super_block *sb,
 	bio_set_dev(bio, sb->s_bdev);
 	bio->bi_iter.bi_sector = (sector_t)blkaddr << LOG_SECTORS_PER_BLOCK;
 	bio->bi_private = sb;
+	if (ismeta)
+		bio->bi_opf = REQ_OP_READ | REQ_META;
+	else
+		bio->bi_opf = REQ_OP_READ;
+
 	return bio;
 }
 
@@ -69,14 +75,14 @@ struct page *erofs_get_meta_page(struct super_block *sb, erofs_blk_t blkaddr)
 	if (!PageUptodate(page)) {
 		struct bio *bio;
 
-		bio = erofs_grab_raw_bio(sb, blkaddr, 1);
+		bio = erofs_grab_raw_bio(sb, blkaddr, 1, true);
 
 		if (bio_add_page(bio, page, PAGE_SIZE, 0) != PAGE_SIZE) {
 			err = -EFAULT;
 			goto err_out;
 		}
 
-		__submit_bio(bio, REQ_OP_READ, REQ_META);
+		submit_bio(bio);
 		lock_page(page);
 
 		/* this page has been truncated by others */
@@ -201,7 +207,7 @@ static inline struct bio *erofs_read_raw_page(struct bio *bio,
 	    /* not continuous */
 	    *last_block + 1 != current_block) {
 submit_bio_retry:
-		__submit_bio(bio, REQ_OP_READ, 0);
+		submit_bio(bio);
 		bio = NULL;
 	}
 
@@ -271,7 +277,7 @@ static inline struct bio *erofs_read_raw_page(struct bio *bio,
 		if (nblocks > BIO_MAX_PAGES)
 			nblocks = BIO_MAX_PAGES;
 
-		bio = erofs_grab_raw_bio(sb, blknr, nblocks);
+		bio = erofs_grab_raw_bio(sb, blknr, nblocks, false);
 	}
 
 	err = bio_add_page(bio, page, PAGE_SIZE, 0);
@@ -302,8 +308,7 @@ static inline struct bio *erofs_read_raw_page(struct bio *bio,
 	/* if updated manually, continuous pages has a gap */
 	if (bio)
 submit_bio_out:
-		__submit_bio(bio, REQ_OP_READ, 0);
-
+		submit_bio(bio);
 	return err ? ERR_PTR(err) : NULL;
 }
 
@@ -367,7 +372,7 @@ static int erofs_raw_access_readpages(struct file *filp,
 
 	/* the rare case (end in gaps) */
 	if (bio)
-		__submit_bio(bio, REQ_OP_READ, 0);
+		submit_bio(bio);
 	return 0;
 }
 
diff --git a/fs/erofs/internal.h b/fs/erofs/internal.h
index 90c62fb5f80d..13c8d841c43a 100644
--- a/fs/erofs/internal.h
+++ b/fs/erofs/internal.h
@@ -409,13 +409,6 @@ static inline int z_erofs_map_blocks_iter(struct inode *inode,
 #endif	/* !CONFIG_EROFS_FS_ZIP */
 
 /* data.c */
-static inline void __submit_bio(struct bio *bio, unsigned int op,
-				unsigned int op_flags)
-{
-	bio_set_op_attrs(bio, op, op_flags);
-	submit_bio(bio);
-}
-
 struct page *erofs_get_meta_page(struct super_block *sb, erofs_blk_t blkaddr);
 
 int erofs_map_blocks(struct inode *, struct erofs_map_blocks *, int);
diff --git a/fs/erofs/zdata.c b/fs/erofs/zdata.c
index 21ade322cc81..3010fa3d1ac3 100644
--- a/fs/erofs/zdata.c
+++ b/fs/erofs/zdata.c
@@ -1258,7 +1258,7 @@ static bool z_erofs_vle_submit_all(struct super_block *sb,
 
 		if (bio && force_submit) {
 submit_bio_retry:
-			__submit_bio(bio, REQ_OP_READ, 0);
+			submit_bio(bio);
 			bio = NULL;
 		}
 
@@ -1270,6 +1270,8 @@ static bool z_erofs_vle_submit_all(struct super_block *sb,
 			bio->bi_iter.bi_sector = (sector_t)(first_index + i) <<
 				LOG_SECTORS_PER_BLOCK;
 			bio->bi_private = bi_private;
+			bio->bi_opf = REQ_OP_READ;
+
 			++nr_bios;
 		}
 
@@ -1290,7 +1292,7 @@ static bool z_erofs_vle_submit_all(struct super_block *sb,
 	} while (owned_head != Z_EROFS_PCLUSTER_TAIL);
 
 	if (bio)
-		__submit_bio(bio, REQ_OP_READ, 0);
+		submit_bio(bio);
 
 	if (postsubmit_is_all_bypassed(q, nr_bios, force_fg))
 		return true;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
