Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B42A7882
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 04:10:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A8B36869D2;
	Wed,  4 Sep 2019 02:10:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dvwxMdoohEi6; Wed,  4 Sep 2019 02:10:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C2824869C0;
	Wed,  4 Sep 2019 02:10:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2044F1BF983
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1D2FB880E0
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p3UwNKPo0HLJ for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 02:10:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6213E88251
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 02:10:42 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id B042EC183FF5ADEC2FEC;
 Wed,  4 Sep 2019 10:10:40 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.211) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 4 Sep 2019
 10:10:33 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Christoph Hellwig <hch@lst.de>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH v2 25/25] erofs: use read_cache_page_gfp for
 erofs_get_meta_page
Date: Wed, 4 Sep 2019 10:09:12 +0800
Message-ID: <20190904020912.63925-26-gaoxiang25@huawei.com>
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

As Christoph said [1], "I'd much prefer to just use
read_cache_page_gfp, and live with the fact that this
allocates bufferheads behind you for now.  I'll try to
speed up my attempts to get rid of the buffer heads on
the block device mapping instead. "

This simplifies the code a lot and a minor thing is
"no REQ_META (e.g. for blktrace) on metadata at all..."

[1] https://lore.kernel.org/r/20190903153704.GA2201@infradead.org/
Reported-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/data.c | 70 +++++++------------------------------------------
 1 file changed, 9 insertions(+), 61 deletions(-)

diff --git a/fs/erofs/data.c b/fs/erofs/data.c
index eb7bbae89ed0..8a9fcbd0e8ac 100644
--- a/fs/erofs/data.c
+++ b/fs/erofs/data.c
@@ -32,71 +32,13 @@ static void erofs_readendio(struct bio *bio)
 	bio_put(bio);
 }
 
-static struct bio *erofs_grab_raw_bio(struct super_block *sb,
-				      erofs_blk_t blkaddr,
-				      unsigned int nr_pages,
-				      bool ismeta)
-{
-	struct bio *bio = bio_alloc(GFP_NOIO, nr_pages);
-
-	bio->bi_end_io = erofs_readendio;
-	bio_set_dev(bio, sb->s_bdev);
-	bio->bi_iter.bi_sector = (sector_t)blkaddr << LOG_SECTORS_PER_BLOCK;
-	if (ismeta)
-		bio->bi_opf = REQ_OP_READ | REQ_META;
-	else
-		bio->bi_opf = REQ_OP_READ;
-
-	return bio;
-}
-
 struct page *erofs_get_meta_page(struct super_block *sb, erofs_blk_t blkaddr)
 {
 	struct inode *const bd_inode = sb->s_bdev->bd_inode;
 	struct address_space *const mapping = bd_inode->i_mapping;
-	const gfp_t gfp = mapping_gfp_constraint(mapping, ~__GFP_FS);
-	struct page *page;
-	int err;
-
-repeat:
-	page = find_or_create_page(mapping, blkaddr, gfp);
-	if (!page)
-		return ERR_PTR(-ENOMEM);
-
-	DBG_BUGON(!PageLocked(page));
-
-	if (!PageUptodate(page)) {
-		struct bio *bio;
-
-		bio = erofs_grab_raw_bio(sb, blkaddr, 1, true);
-
-		if (bio_add_page(bio, page, PAGE_SIZE, 0) != PAGE_SIZE) {
-			err = -EFAULT;
-			goto err_out;
-		}
-
-		submit_bio(bio);
-		lock_page(page);
 
-		/* this page has been truncated by others */
-		if (page->mapping != mapping) {
-			unlock_page(page);
-			put_page(page);
-			goto repeat;
-		}
-
-		/* more likely a read error */
-		if (!PageUptodate(page)) {
-			err = -EIO;
-			goto err_out;
-		}
-	}
-	return page;
-
-err_out:
-	unlock_page(page);
-	put_page(page);
-	return ERR_PTR(err);
+	return read_cache_page_gfp(mapping, blkaddr,
+				   mapping_gfp_constraint(mapping, ~__GFP_FS));
 }
 
 static int erofs_map_blocks_flatmode(struct inode *inode,
@@ -272,7 +214,13 @@ static inline struct bio *erofs_read_raw_page(struct bio *bio,
 		if (nblocks > BIO_MAX_PAGES)
 			nblocks = BIO_MAX_PAGES;
 
-		bio = erofs_grab_raw_bio(sb, blknr, nblocks, false);
+		bio = bio_alloc(GFP_NOIO, nblocks);
+
+		bio->bi_end_io = erofs_readendio;
+		bio_set_dev(bio, sb->s_bdev);
+		bio->bi_iter.bi_sector = (sector_t)blknr <<
+			LOG_SECTORS_PER_BLOCK;
+		bio->bi_opf = REQ_OP_READ;
 	}
 
 	err = bio_add_page(bio, page, PAGE_SIZE, 0);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
