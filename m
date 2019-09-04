Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7179DA7878
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Sep 2019 04:10:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA6A1869D9;
	Wed,  4 Sep 2019 02:10:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GIc102xJHTQO; Wed,  4 Sep 2019 02:10:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C48CC869E4;
	Wed,  4 Sep 2019 02:10:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1A9CF1BF4DB
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 17C0E87903
 for <devel@linuxdriverproject.org>; Wed,  4 Sep 2019 02:10:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l47l9IljZOzQ for <devel@linuxdriverproject.org>;
 Wed,  4 Sep 2019 02:10:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4093A878BB
 for <devel@driverdev.osuosl.org>; Wed,  4 Sep 2019 02:10:27 +0000 (UTC)
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 8478ED1D934AB763232E;
 Wed,  4 Sep 2019 10:10:25 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.211) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 4 Sep 2019
 10:10:18 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Christoph Hellwig <hch@lst.de>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH v2 12/25] erofs: better erofs symlink stuffs
Date: Wed, 4 Sep 2019 10:08:59 +0800
Message-ID: <20190904020912.63925-13-gaoxiang25@huawei.com>
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

Fix as Christoph suggested [1] [2], "remove is_inode_fast_symlink
and just opencode it in the few places using it"

and
"Please just set the ops directly instead of obsfucating that in
a single caller, single line inline function.  And please set it
instead of the normal symlink iops in the same place where you
also set those."

[1] https://lore.kernel.org/r/20190830163910.GB29603@infradead.org/
[2] https://lore.kernel.org/r/20190829102426.GE20598@infradead.org/
Reported-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 fs/erofs/inode.c    | 68 ++++++++++++++++++---------------------------
 fs/erofs/internal.h | 10 -------
 fs/erofs/super.c    |  5 ++--
 3 files changed, 29 insertions(+), 54 deletions(-)

diff --git a/fs/erofs/inode.c b/fs/erofs/inode.c
index a42f5fc14df9..770f3259c862 100644
--- a/fs/erofs/inode.c
+++ b/fs/erofs/inode.c
@@ -127,50 +127,39 @@ static int read_inode(struct inode *inode, void *data)
 	return -EFSCORRUPTED;
 }
 
-/*
- * try_lock can be required since locking order is:
- *   file data(fs_inode)
- *        meta(bd_inode)
- * but the majority of the callers is "iget",
- * in that case we are pretty sure no deadlock since
- * no data operations exist. However I tend to
- * try_lock since it takes no much overhead and
- * will success immediately.
- */
-static int fill_inline_data(struct inode *inode, void *data,
-			    unsigned int m_pofs)
+static int erofs_fill_symlink(struct inode *inode, void *data,
+			      unsigned int m_pofs)
 {
 	struct erofs_inode *vi = EROFS_I(inode);
 	struct erofs_sb_info *sbi = EROFS_I_SB(inode);
+	char *lnk;
 
-	/* should be tail-packing data inline */
-	if (vi->datalayout != EROFS_INODE_FLAT_INLINE)
+	/* if it cannot be handled with fast symlink scheme */
+	if (vi->datalayout != EROFS_INODE_FLAT_INLINE ||
+	    inode->i_size >= PAGE_SIZE) {
+		inode->i_op = &erofs_symlink_iops;
 		return 0;
+	}
 
-	/* fast symlink */
-	if (S_ISLNK(inode->i_mode) && inode->i_size < PAGE_SIZE) {
-		char *lnk = erofs_kmalloc(sbi, inode->i_size + 1, GFP_KERNEL);
-
-		if (!lnk)
-			return -ENOMEM;
-
-		m_pofs += vi->inode_isize + vi->xattr_isize;
+	lnk = erofs_kmalloc(sbi, inode->i_size + 1, GFP_KERNEL);
+	if (!lnk)
+		return -ENOMEM;
 
-		/* inline symlink data shouldn't cross page boundary as well */
-		if (m_pofs + inode->i_size > PAGE_SIZE) {
-			kfree(lnk);
-			errln("inline data cross block boundary @ nid %llu",
-			      vi->nid);
-			DBG_BUGON(1);
-			return -EFSCORRUPTED;
-		}
+	m_pofs += vi->inode_isize + vi->xattr_isize;
+	/* inline symlink data shouldn't cross page boundary as well */
+	if (m_pofs + inode->i_size > PAGE_SIZE) {
+		kfree(lnk);
+		errln("inline data cross block boundary @ nid %llu",
+		      vi->nid);
+		DBG_BUGON(1);
+		return -EFSCORRUPTED;
+	}
 
-		memcpy(lnk, data + m_pofs, inode->i_size);
-		lnk[inode->i_size] = '\0';
+	memcpy(lnk, data + m_pofs, inode->i_size);
+	lnk[inode->i_size] = '\0';
 
-		inode->i_link = lnk;
-		set_inode_fast_symlink(inode);
-	}
+	inode->i_link = lnk;
+	inode->i_op = &erofs_fast_symlink_iops;
 	return 0;
 }
 
@@ -217,8 +206,9 @@ static int fill_inode(struct inode *inode, int isdir)
 			inode->i_fop = &erofs_dir_fops;
 			break;
 		case S_IFLNK:
-			/* by default, page_get_link is used for symlink */
-			inode->i_op = &erofs_symlink_iops;
+			err = erofs_fill_symlink(inode, data, ofs);
+			if (err)
+				goto out_unlock;
 			inode_nohighmem(inode);
 			break;
 		case S_IFCHR:
@@ -237,11 +227,7 @@ static int fill_inode(struct inode *inode, int isdir)
 			err = z_erofs_fill_inode(inode);
 			goto out_unlock;
 		}
-
 		inode->i_mapping->a_ops = &erofs_raw_access_aops;
-
-		/* fill last page if inline data is available */
-		err = fill_inline_data(inode, data, ofs);
 	}
 
 out_unlock:
diff --git a/fs/erofs/internal.h b/fs/erofs/internal.h
index 10497ee07cae..cc1ea98c5c89 100644
--- a/fs/erofs/internal.h
+++ b/fs/erofs/internal.h
@@ -479,16 +479,6 @@ extern const struct inode_operations erofs_generic_iops;
 extern const struct inode_operations erofs_symlink_iops;
 extern const struct inode_operations erofs_fast_symlink_iops;
 
-static inline void set_inode_fast_symlink(struct inode *inode)
-{
-	inode->i_op = &erofs_fast_symlink_iops;
-}
-
-static inline bool is_inode_fast_symlink(struct inode *inode)
-{
-	return inode->i_op == &erofs_fast_symlink_iops;
-}
-
 struct inode *erofs_iget(struct super_block *sb, erofs_nid_t nid, bool dir);
 int erofs_getattr(const struct path *path, struct kstat *stat,
 		  u32 request_mask, unsigned int query_flags);
diff --git a/fs/erofs/super.c b/fs/erofs/super.c
index 3986be582dbb..b8b0e35f6621 100644
--- a/fs/erofs/super.c
+++ b/fs/erofs/super.c
@@ -40,10 +40,9 @@ static void free_inode(struct inode *inode)
 {
 	struct erofs_inode *vi = EROFS_I(inode);
 
-	/* be careful RCU symlink path (see ext4_inode_info->i_data)! */
-	if (is_inode_fast_symlink(inode))
+	/* be careful of RCU symlink path */
+	if (inode->i_op == &erofs_fast_symlink_iops)
 		kfree(inode->i_link);
-
 	kfree(vi->xattr_shared_xattrs);
 
 	kmem_cache_free(erofs_inode_cachep, vi);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
