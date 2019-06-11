Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE793C151
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2019 04:43:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D191587A4F;
	Tue, 11 Jun 2019 02:43:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yon3cZADLPnY; Tue, 11 Jun 2019 02:43:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 67BC687A43;
	Tue, 11 Jun 2019 02:43:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4AB301BF40F
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 02:43:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 459F285E47
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2019 02:43:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VXA5m-Nomje1 for <devel@linuxdriverproject.org>;
 Tue, 11 Jun 2019 02:43:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id DE8CB85E35
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 02:43:18 +0000 (UTC)
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 813E8A03BFD95E363468;
 Tue, 11 Jun 2019 10:43:15 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.212) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 11 Jun
 2019 10:43:07 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Chao Yu <yuchao0@huawei.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 2/2] staging: erofs: rename data_mapping_mode to datamode
Date: Tue, 11 Jun 2019 10:42:20 +0800
Message-ID: <20190611024220.86121-2-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190611024220.86121-1-gaoxiang25@huawei.com>
References: <20190611024220.86121-1-gaoxiang25@huawei.com>
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

data_mapping_mode is too long as a member name of erofs_vnode,
datamode is straight-forward enough.

Reviewed-by: Chao Yu <yuchao0@huawei.com>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/inode.c    | 17 ++++++++---------
 drivers/staging/erofs/internal.h | 10 ++++------
 2 files changed, 12 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
index 9520419f746c..e51348f7e838 100644
--- a/drivers/staging/erofs/inode.c
+++ b/drivers/staging/erofs/inode.c
@@ -22,11 +22,11 @@ static int read_inode(struct inode *inode, void *data)
 	const unsigned int advise = le16_to_cpu(v1->i_advise);
 	erofs_blk_t nblks = 0;
 
-	vi->data_mapping_mode = __inode_data_mapping(advise);
+	vi->datamode = __inode_data_mapping(advise);
 
-	if (unlikely(vi->data_mapping_mode >= EROFS_INODE_LAYOUT_MAX)) {
-		errln("unknown data mapping mode %u of nid %llu",
-		      vi->data_mapping_mode, vi->nid);
+	if (unlikely(vi->datamode >= EROFS_INODE_LAYOUT_MAX)) {
+		errln("unsupported data mapping %u of nid %llu",
+		      vi->datamode, vi->nid);
 		DBG_BUGON(1);
 		return -EIO;
 	}
@@ -63,7 +63,7 @@ static int read_inode(struct inode *inode, void *data)
 		inode->i_size = le64_to_cpu(v2->i_size);
 
 		/* total blocks for compressed files */
-		if (vi->data_mapping_mode == EROFS_INODE_LAYOUT_COMPRESSION)
+		if (is_inode_layout_compression(inode))
 			nblks = le32_to_cpu(v2->i_u.compressed_blocks);
 	} else if (__inode_version(advise) == EROFS_INODE_LAYOUT_V1) {
 		struct erofs_sb_info *sbi = EROFS_SB(inode->i_sb);
@@ -95,7 +95,7 @@ static int read_inode(struct inode *inode, void *data)
 			sbi->build_time_nsec;
 
 		inode->i_size = le32_to_cpu(v1->i_size);
-		if (vi->data_mapping_mode == EROFS_INODE_LAYOUT_COMPRESSION)
+		if (is_inode_layout_compression(inode))
 			nblks = le32_to_cpu(v1->i_u.compressed_blocks);
 	} else {
 		errln("unsupported on-disk inode version %u of nid %llu",
@@ -127,7 +127,7 @@ static int fill_inline_data(struct inode *inode, void *data,
 {
 	struct erofs_vnode *vi = EROFS_V(inode);
 	struct erofs_sb_info *sbi = EROFS_I_SB(inode);
-	int mode = vi->data_mapping_mode;
+	const int mode = vi->datamode;
 
 	DBG_BUGON(mode >= EROFS_INODE_LAYOUT_MAX);
 
@@ -299,9 +299,8 @@ int erofs_getattr(const struct path *path, struct kstat *stat,
 		  u32 request_mask, unsigned int query_flags)
 {
 	struct inode *const inode = d_inode(path->dentry);
-	struct erofs_vnode *const vi = EROFS_V(inode);
 
-	if (vi->data_mapping_mode == EROFS_INODE_LAYOUT_COMPRESSION)
+	if (is_inode_layout_compression(inode))
 		stat->attributes |= STATX_ATTR_COMPRESSED;
 
 	stat->attributes |= STATX_ATTR_IMMUTABLE;
diff --git a/drivers/staging/erofs/internal.h b/drivers/staging/erofs/internal.h
index 911333cdeef4..6a7eb04d29b4 100644
--- a/drivers/staging/erofs/internal.h
+++ b/drivers/staging/erofs/internal.h
@@ -347,8 +347,7 @@ struct erofs_vnode {
 	/* atomic flags (including bitlocks) */
 	unsigned long flags;
 
-	unsigned char data_mapping_mode;
-	/* inline size in bytes */
+	unsigned char datamode;
 	unsigned char inode_isize;
 	unsigned short xattr_isize;
 
@@ -383,18 +382,17 @@ static inline unsigned long inode_datablocks(struct inode *inode)
 
 static inline bool is_inode_layout_plain(struct inode *inode)
 {
-	return EROFS_V(inode)->data_mapping_mode == EROFS_INODE_LAYOUT_PLAIN;
+	return EROFS_V(inode)->datamode == EROFS_INODE_LAYOUT_PLAIN;
 }
 
 static inline bool is_inode_layout_compression(struct inode *inode)
 {
-	return EROFS_V(inode)->data_mapping_mode ==
-					EROFS_INODE_LAYOUT_COMPRESSION;
+	return EROFS_V(inode)->datamode == EROFS_INODE_LAYOUT_COMPRESSION;
 }
 
 static inline bool is_inode_layout_inline(struct inode *inode)
 {
-	return EROFS_V(inode)->data_mapping_mode == EROFS_INODE_LAYOUT_INLINE;
+	return EROFS_V(inode)->datamode == EROFS_INODE_LAYOUT_INLINE;
 }
 
 extern const struct super_operations erofs_sops;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
