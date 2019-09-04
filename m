Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D638FA7881
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 04:10:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 93732869F2;
	Wed,  4 Sep 2019 02:10:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jvw3ILZSlYp1; Wed,  4 Sep 2019 02:10:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC81A869D2;
	Wed,  4 Sep 2019 02:10:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA4251BF4DB
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 880FB88388
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HsWnZWW4yk9q for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 02:10:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A92ED88262
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 02:10:32 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 88A9C8B5EE1071CFCEE2;
 Wed,  4 Sep 2019 10:10:30 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.211) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 4 Sep 2019
 10:10:22 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Christoph Hellwig <hch@lst.de>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH v2 16/25] erofs: kill prio and nofail of erofs_get_meta_page()
Date: Wed, 4 Sep 2019 10:09:03 +0800
Message-ID: <20190904020912.63925-17-gaoxiang25@huawei.com>
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

As Christoph pointed out [1],
"Why is there __erofs_get_meta_page with the two weird
booleans instead of a single erofs_get_meta_page that
gets and gfp_t for additional flags and an unsigned int
for additional bio op flags."

And since all callers can handle errors, let's kill
prio and nofail and erofs_get_inline_page() now.

[1] https://lore.kernel.org/r/20190830162812.GA10694@infradead.org/
Reported-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/data.c     | 25 ++++++-------------------
 fs/erofs/inode.c    |  2 +-
 fs/erofs/internal.h | 18 +-----------------
 fs/erofs/xattr.c    | 13 ++++++-------
 fs/erofs/zmap.c     |  4 ++--
 5 files changed, 16 insertions(+), 46 deletions(-)

diff --git a/fs/erofs/data.c b/fs/erofs/data.c
index 0136ea117934..28eda71bb1a9 100644
--- a/fs/erofs/data.c
+++ b/fs/erofs/data.c
@@ -51,25 +51,19 @@ static struct bio *erofs_grab_raw_bio(struct super_block *sb,
 	return bio;
 }
 
-/* prio -- true is used for dir */
-struct page *__erofs_get_meta_page(struct super_block *sb,
-				   erofs_blk_t blkaddr, bool prio, bool nofail)
+struct page *erofs_get_meta_page(struct super_block *sb, erofs_blk_t blkaddr)
 {
 	struct inode *const bd_inode = sb->s_bdev->bd_inode;
 	struct address_space *const mapping = bd_inode->i_mapping;
-	/* prefer retrying in the allocator to blindly looping below */
-	const gfp_t gfp = mapping_gfp_constraint(mapping, ~__GFP_FS) |
-		(nofail ? __GFP_NOFAIL : 0);
-	unsigned int io_retries = nofail ? EROFS_IO_MAX_RETRIES_NOFAIL : 0;
+	const gfp_t gfp = mapping_gfp_constraint(mapping, ~__GFP_FS);
 	struct page *page;
 	int err;
 
 repeat:
 	page = find_or_create_page(mapping, blkaddr, gfp);
-	if (!page) {
-		DBG_BUGON(nofail);
+	if (!page)
 		return ERR_PTR(-ENOMEM);
-	}
+
 	DBG_BUGON(!PageLocked(page));
 
 	if (!PageUptodate(page)) {
@@ -82,14 +76,11 @@ struct page *__erofs_get_meta_page(struct super_block *sb,
 			goto err_out;
 		}
 
-		__submit_bio(bio, REQ_OP_READ,
-			     REQ_META | (prio ? REQ_PRIO : 0));
-
+		__submit_bio(bio, REQ_OP_READ, REQ_META);
 		lock_page(page);
 
 		/* this page has been truncated by others */
 		if (page->mapping != mapping) {
-unlock_repeat:
 			unlock_page(page);
 			put_page(page);
 			goto repeat;
@@ -97,10 +88,6 @@ struct page *__erofs_get_meta_page(struct super_block *sb,
 
 		/* more likely a read error */
 		if (!PageUptodate(page)) {
-			if (io_retries) {
-				--io_retries;
-				goto unlock_repeat;
-			}
 			err = -EIO;
 			goto err_out;
 		}
@@ -251,7 +238,7 @@ static inline struct bio *erofs_read_raw_page(struct bio *bio,
 
 			DBG_BUGON(map.m_plen > PAGE_SIZE);
 
-			ipage = erofs_get_meta_page(inode->i_sb, blknr, 0);
+			ipage = erofs_get_meta_page(inode->i_sb, blknr);
 
 			if (IS_ERR(ipage)) {
 				err = PTR_ERR(ipage);
diff --git a/fs/erofs/inode.c b/fs/erofs/inode.c
index 770f3259c862..8d496adbeaea 100644
--- a/fs/erofs/inode.c
+++ b/fs/erofs/inode.c
@@ -182,7 +182,7 @@ static int fill_inode(struct inode *inode, int isdir)
 	debugln("%s, reading inode nid %llu at %u of blkaddr %u",
 		__func__, vi->nid, ofs, blkaddr);
 
-	page = erofs_get_meta_page(inode->i_sb, blkaddr, isdir);
+	page = erofs_get_meta_page(inode->i_sb, blkaddr);
 
 	if (IS_ERR(page)) {
 		errln("failed to get inode (nid: %llu) page, err %ld",
diff --git a/fs/erofs/internal.h b/fs/erofs/internal.h
index 000ea92b36a3..90c62fb5f80d 100644
--- a/fs/erofs/internal.h
+++ b/fs/erofs/internal.h
@@ -258,8 +258,6 @@ static inline int erofs_wait_on_workgroup_freezed(struct erofs_workgroup *grp)
 #error erofs cannot be used in this platform
 #endif
 
-#define EROFS_IO_MAX_RETRIES_NOFAIL     5
-
 #define ROOT_NID(sb)		((sb)->root_nid)
 
 #define erofs_blknr(addr)       ((addr) / EROFS_BLKSIZ)
@@ -418,24 +416,10 @@ static inline void __submit_bio(struct bio *bio, unsigned int op,
 	submit_bio(bio);
 }
 
-struct page *__erofs_get_meta_page(struct super_block *sb, erofs_blk_t blkaddr,
-				   bool prio, bool nofail);
-
-static inline struct page *erofs_get_meta_page(struct super_block *sb,
-	erofs_blk_t blkaddr, bool prio)
-{
-	return __erofs_get_meta_page(sb, blkaddr, prio, false);
-}
+struct page *erofs_get_meta_page(struct super_block *sb, erofs_blk_t blkaddr);
 
 int erofs_map_blocks(struct inode *, struct erofs_map_blocks *, int);
 
-static inline struct page *erofs_get_inline_page(struct inode *inode,
-						 erofs_blk_t blkaddr)
-{
-	return erofs_get_meta_page(inode->i_sb, blkaddr,
-				   S_ISDIR(inode->i_mode));
-}
-
 /* inode.c */
 static inline unsigned long erofs_inode_hash(erofs_nid_t nid)
 {
diff --git a/fs/erofs/xattr.c b/fs/erofs/xattr.c
index d5b7fe0bee45..dd445c81c41f 100644
--- a/fs/erofs/xattr.c
+++ b/fs/erofs/xattr.c
@@ -87,7 +87,7 @@ static int init_inode_xattrs(struct inode *inode)
 	it.blkaddr = erofs_blknr(iloc(sbi, vi->nid) + vi->inode_isize);
 	it.ofs = erofs_blkoff(iloc(sbi, vi->nid) + vi->inode_isize);
 
-	it.page = erofs_get_inline_page(inode, it.blkaddr);
+	it.page = erofs_get_meta_page(sb, it.blkaddr);
 	if (IS_ERR(it.page)) {
 		ret = PTR_ERR(it.page);
 		goto out_unlock;
@@ -117,8 +117,7 @@ static int init_inode_xattrs(struct inode *inode)
 			DBG_BUGON(it.ofs != EROFS_BLKSIZ);
 			xattr_iter_end(&it, atomic_map);
 
-			it.page = erofs_get_meta_page(sb, ++it.blkaddr,
-						      S_ISDIR(inode->i_mode));
+			it.page = erofs_get_meta_page(sb, ++it.blkaddr);
 			if (IS_ERR(it.page)) {
 				kfree(vi->xattr_shared_xattrs);
 				vi->xattr_shared_xattrs = NULL;
@@ -168,7 +167,7 @@ static inline int xattr_iter_fixup(struct xattr_iter *it)
 
 	it->blkaddr += erofs_blknr(it->ofs);
 
-	it->page = erofs_get_meta_page(it->sb, it->blkaddr, false);
+	it->page = erofs_get_meta_page(it->sb, it->blkaddr);
 	if (IS_ERR(it->page)) {
 		int err = PTR_ERR(it->page);
 
@@ -199,7 +198,7 @@ static int inline_xattr_iter_begin(struct xattr_iter *it,
 	it->blkaddr = erofs_blknr(iloc(sbi, vi->nid) + inline_xattr_ofs);
 	it->ofs = erofs_blkoff(iloc(sbi, vi->nid) + inline_xattr_ofs);
 
-	it->page = erofs_get_inline_page(inode, it->blkaddr);
+	it->page = erofs_get_meta_page(inode->i_sb, it->blkaddr);
 	if (IS_ERR(it->page))
 		return PTR_ERR(it->page);
 
@@ -401,7 +400,7 @@ static int shared_getxattr(struct inode *inode, struct getxattr_iter *it)
 			if (i)
 				xattr_iter_end(&it->it, true);
 
-			it->it.page = erofs_get_meta_page(sb, blkaddr, false);
+			it->it.page = erofs_get_meta_page(sb, blkaddr);
 			if (IS_ERR(it->it.page))
 				return PTR_ERR(it->it.page);
 
@@ -623,7 +622,7 @@ static int shared_listxattr(struct listxattr_iter *it)
 			if (i)
 				xattr_iter_end(&it->it, true);
 
-			it->it.page = erofs_get_meta_page(sb, blkaddr, false);
+			it->it.page = erofs_get_meta_page(sb, blkaddr);
 			if (IS_ERR(it->it.page))
 				return PTR_ERR(it->it.page);
 
diff --git a/fs/erofs/zmap.c b/fs/erofs/zmap.c
index 30a5171637d7..9c141f145508 100644
--- a/fs/erofs/zmap.c
+++ b/fs/erofs/zmap.c
@@ -50,7 +50,7 @@ static int fill_inode_lazy(struct inode *inode)
 
 	pos = ALIGN(iloc(EROFS_SB(sb), vi->nid) + vi->inode_isize +
 		    vi->xattr_isize, 8);
-	page = erofs_get_meta_page(sb, erofs_blknr(pos), false);
+	page = erofs_get_meta_page(sb, erofs_blknr(pos));
 	if (IS_ERR(page)) {
 		err = PTR_ERR(page);
 		goto out_unlock;
@@ -127,7 +127,7 @@ static int z_erofs_reload_indexes(struct z_erofs_maprecorder *m,
 		put_page(mpage);
 	}
 
-	mpage = erofs_get_meta_page(sb, eblk, false);
+	mpage = erofs_get_meta_page(sb, eblk);
 	if (IS_ERR(mpage)) {
 		map->mpage = NULL;
 		return PTR_ERR(mpage);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
