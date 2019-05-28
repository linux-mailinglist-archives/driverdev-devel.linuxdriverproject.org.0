Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6888C2BD99
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 May 2019 05:20:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 893FE8602E;
	Tue, 28 May 2019 03:20:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NSOGl+RduypV; Tue, 28 May 2019 03:20:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7909C860DB;
	Tue, 28 May 2019 03:20:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D64D61BF339
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 03:20:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C5F492DB9C
 for <devel@linuxdriverproject.org>; Tue, 28 May 2019 03:20:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5l-Yjc-+dnCS for <devel@linuxdriverproject.org>;
 Tue, 28 May 2019 03:20:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by silver.osuosl.org (Postfix) with ESMTPS id 95DC11FEAE
 for <devel@driverdev.osuosl.org>; Tue, 28 May 2019 03:20:33 +0000 (UTC)
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B5E2EF06512F3E944D5E;
 Tue, 28 May 2019 11:20:29 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.209) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 28 May
 2019 11:20:23 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH v3 1/2] staging: erofs: support statx
Date: Tue, 28 May 2019 11:19:42 +0800
Message-ID: <20190528031943.239665-1-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190528023147.94117-2-gaoxiang25@huawei.com>
References: <20190528023147.94117-2-gaoxiang25@huawei.com>
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
Cc: linux-erofs@lists.ozlabs.org, Chao Yu <chao@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, weidu.du@huawei.com,
 Fang Wei <fangwei1@huawei.com>, Miao Xie <miaoxie@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

statx() has already been supported in commit a528d35e8bfc
("statx: Add a system call to make enhanced file info available"),
user programs can get more useful attributes.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
change log v3:
 - update attributes_mask to indicate bits which erofs support
   as Chao pointed out;
 - already tested with samples/vfs/test-statx.c;

Thanks,
Gao Xiang

 drivers/staging/erofs/inode.c    | 20 ++++++++++++++++++++
 drivers/staging/erofs/internal.h |  2 ++
 drivers/staging/erofs/namei.c    |  1 +
 3 files changed, 23 insertions(+)

diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
index c7d3b815a798..1c220900e1a0 100644
--- a/drivers/staging/erofs/inode.c
+++ b/drivers/staging/erofs/inode.c
@@ -285,7 +285,25 @@ struct inode *erofs_iget(struct super_block *sb,
 	return inode;
 }
 
+int erofs_getattr(const struct path *path, struct kstat *stat,
+		  u32 request_mask, unsigned int query_flags)
+{
+	struct inode *const inode = d_inode(path->dentry);
+	struct erofs_vnode *const vi = EROFS_V(inode);
+
+	if (vi->data_mapping_mode == EROFS_INODE_LAYOUT_COMPRESSION)
+		stat->attributes |= STATX_ATTR_COMPRESSED;
+
+	stat->attributes |= STATX_ATTR_IMMUTABLE;
+	stat->attributes_mask |= (STATX_ATTR_COMPRESSED |
+				  STATX_ATTR_IMMUTABLE);
+
+	generic_fillattr(inode, stat);
+	return 0;
+}
+
 const struct inode_operations erofs_generic_iops = {
+	.getattr = erofs_getattr,
 #ifdef CONFIG_EROFS_FS_XATTR
 	.listxattr = erofs_listxattr,
 #endif
@@ -294,6 +312,7 @@ const struct inode_operations erofs_generic_iops = {
 
 const struct inode_operations erofs_symlink_iops = {
 	.get_link = page_get_link,
+	.getattr = erofs_getattr,
 #ifdef CONFIG_EROFS_FS_XATTR
 	.listxattr = erofs_listxattr,
 #endif
@@ -302,6 +321,7 @@ const struct inode_operations erofs_symlink_iops = {
 
 const struct inode_operations erofs_fast_symlink_iops = {
 	.get_link = simple_get_link,
+	.getattr = erofs_getattr,
 #ifdef CONFIG_EROFS_FS_XATTR
 	.listxattr = erofs_listxattr,
 #endif
diff --git a/drivers/staging/erofs/internal.h b/drivers/staging/erofs/internal.h
index c47778b3fabd..911333cdeef4 100644
--- a/drivers/staging/erofs/internal.h
+++ b/drivers/staging/erofs/internal.h
@@ -556,6 +556,8 @@ static inline bool is_inode_fast_symlink(struct inode *inode)
 }
 
 struct inode *erofs_iget(struct super_block *sb, erofs_nid_t nid, bool dir);
+int erofs_getattr(const struct path *path, struct kstat *stat,
+		  u32 request_mask, unsigned int query_flags);
 
 /* namei.c */
 extern const struct inode_operations erofs_dir_iops;
diff --git a/drivers/staging/erofs/namei.c b/drivers/staging/erofs/namei.c
index d8d9dc9dab43..fd3ae78d0ba5 100644
--- a/drivers/staging/erofs/namei.c
+++ b/drivers/staging/erofs/namei.c
@@ -247,6 +247,7 @@ static struct dentry *erofs_lookup(struct inode *dir,
 
 const struct inode_operations erofs_dir_iops = {
 	.lookup = erofs_lookup,
+	.getattr = erofs_getattr,
 #ifdef CONFIG_EROFS_FS_XATTR
 	.listxattr = erofs_listxattr,
 #endif
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
