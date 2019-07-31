Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AC57C7E3
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 17:59:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7BD3E84525;
	Wed, 31 Jul 2019 15:59:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t+72pvJKZpGo; Wed, 31 Jul 2019 15:59:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5EE3384DDD;
	Wed, 31 Jul 2019 15:58:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E8D0B1BF844
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 15:58:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D9F0687CDE
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 15:58:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5SlaO+IEh0TK for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 15:58:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 7B34C87D86
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 15:58:44 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 1F9E2CE9E1C1E0B667C5;
 Wed, 31 Jul 2019 23:58:41 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 31 Jul
 2019 23:58:30 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu
 <yuchao0@huawei.com>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 18/22] staging: erofs: remove clusterbits in sbi
Date: Wed, 31 Jul 2019 23:57:48 +0800
Message-ID: <20190731155752.210602-19-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190731155752.210602-1-gaoxiang25@huawei.com>
References: <20190731155752.210602-1-gaoxiang25@huawei.com>
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

clustersize can now be set on per-file basis
rather than per-filesystem basis.

Reviewed-by: Chao Yu <yuchao0@huawei.com>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/internal.h | 5 -----
 drivers/staging/erofs/super.c    | 9 ---------
 drivers/staging/erofs/zmap.c     | 3 +--
 3 files changed, 1 insertion(+), 16 deletions(-)

diff --git a/drivers/staging/erofs/internal.h b/drivers/staging/erofs/internal.h
index a631acd0dc62..3176c350779e 100644
--- a/drivers/staging/erofs/internal.h
+++ b/drivers/staging/erofs/internal.h
@@ -77,8 +77,6 @@ struct erofs_sb_info {
 	struct list_head list;
 	struct mutex umount_mutex;
 
-	/* cluster size in bit shift */
-	unsigned char clusterbits;
 	/* the dedicated workstation for compression */
 	struct radix_tree_root workstn_tree;
 
@@ -248,9 +246,6 @@ static inline int erofs_wait_on_workgroup_freezed(struct erofs_workgroup *grp)
 /* hard limit of pages per compressed cluster */
 #define Z_EROFS_CLUSTER_MAX_PAGES       (CONFIG_EROFS_FS_CLUSTER_PAGE_LIMIT)
 #define EROFS_PCPUBUF_NR_PAGES          Z_EROFS_CLUSTER_MAX_PAGES
-
-/* page count of a compressed cluster */
-#define erofs_clusterpages(sbi)         ((1 << (sbi)->clusterbits) / PAGE_SIZE)
 #else
 #define EROFS_PCPUBUF_NR_PAGES          0
 #endif	/* !CONFIG_EROFS_FS_ZIP */
diff --git a/drivers/staging/erofs/super.c b/drivers/staging/erofs/super.c
index af5d87793e4d..dad5a3137988 100644
--- a/drivers/staging/erofs/super.c
+++ b/drivers/staging/erofs/super.c
@@ -124,15 +124,6 @@ static int superblock_read(struct super_block *sb)
 	sbi->xattr_blkaddr = le32_to_cpu(layout->xattr_blkaddr);
 #endif
 	sbi->islotbits = ffs(sizeof(struct erofs_inode_v1)) - 1;
-#ifdef CONFIG_EROFS_FS_ZIP
-	/* TODO: clusterbits should be related to inode */
-	sbi->clusterbits = blkszbits;
-
-	if (1 << (sbi->clusterbits - PAGE_SHIFT) > Z_EROFS_CLUSTER_MAX_PAGES)
-		errln("clusterbits %u is not supported on this kernel",
-		      sbi->clusterbits);
-#endif
-
 	sbi->root_nid = le16_to_cpu(layout->root_nid);
 	sbi->inos = le64_to_cpu(layout->inos);
 
diff --git a/drivers/staging/erofs/zmap.c b/drivers/staging/erofs/zmap.c
index 205e884ca4e0..aeed5c674d9e 100644
--- a/drivers/staging/erofs/zmap.c
+++ b/drivers/staging/erofs/zmap.c
@@ -13,13 +13,12 @@
 int z_erofs_fill_inode(struct inode *inode)
 {
 	struct erofs_vnode *const vi = EROFS_V(inode);
-	struct super_block *const sb = inode->i_sb;
 
 	if (vi->datamode == EROFS_INODE_FLAT_COMPRESSION_LEGACY) {
 		vi->z_advise = 0;
 		vi->z_algorithmtype[0] = 0;
 		vi->z_algorithmtype[1] = 0;
-		vi->z_logical_clusterbits = EROFS_SB(sb)->clusterbits;
+		vi->z_logical_clusterbits = LOG_BLOCK_SIZE;
 		vi->z_physical_clusterbits[0] = vi->z_logical_clusterbits;
 		vi->z_physical_clusterbits[1] = vi->z_logical_clusterbits;
 		set_bit(EROFS_V_Z_INITED_BIT, &vi->flags);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
