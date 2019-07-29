Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3057678563
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jul 2019 08:53:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D9C4F86996;
	Mon, 29 Jul 2019 06:53:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5SiKXpNsg8ma; Mon, 29 Jul 2019 06:53:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3818286978;
	Mon, 29 Jul 2019 06:52:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C1FE11BF40D
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:52:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BCF9B86978
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:52:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id R1i64iKdwX97 for <devel@linuxdriverproject.org>;
 Mon, 29 Jul 2019 06:52:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C41AB86A34
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2019 06:52:47 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 60B6363F9D6113796B92;
 Mon, 29 Jul 2019 14:52:45 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 29 Jul
 2019 14:52:35 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH 20/22] staging: erofs: tidy up internal.h
Date: Mon, 29 Jul 2019 14:51:57 +0800
Message-ID: <20190729065159.62378-21-gaoxiang25@huawei.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190729065159.62378-1-gaoxiang25@huawei.com>
References: <20190729065159.62378-1-gaoxiang25@huawei.com>
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

keep in line with erofs-outofstaging patchset:
 - remove an extra #ifdef CONFIG_EROFS_FS_ZIP;
 - add tags at the end of #endif acrossing several lines.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/internal.h | 29 +++++++++++++----------------
 1 file changed, 13 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/erofs/internal.h b/drivers/staging/erofs/internal.h
index 43f9d90195bc..39d009554094 100644
--- a/drivers/staging/erofs/internal.h
+++ b/drivers/staging/erofs/internal.h
@@ -49,7 +49,7 @@ struct erofs_fault_info {
 	unsigned int inject_rate;
 	unsigned int inject_type;
 };
-#endif
+#endif	/* CONFIG_EROFS_FAULT_INJECTION */
 
 /* EROFS_SUPER_MAGIC_V1 to represent the whole file system */
 #define EROFS_SUPER_MAGIC   EROFS_SUPER_MAGIC_V1
@@ -138,7 +138,7 @@ static inline bool time_to_inject(struct erofs_sb_info *sbi, int type)
 static inline void erofs_show_injection_info(int type)
 {
 }
-#endif
+#endif	/* !CONFIG_EROFS_FAULT_INJECTION */
 
 static inline void *erofs_kmalloc(struct erofs_sb_info *sbi,
 					size_t size, gfp_t flags)
@@ -236,8 +236,14 @@ static inline int erofs_wait_on_workgroup_freezed(struct erofs_workgroup *grp)
 	DBG_BUGON(v == EROFS_LOCKED_MAGIC);
 	return v;
 }
-#endif
-#endif	/* CONFIG_EROFS_FS_ZIP */
+#endif	/* !CONFIG_SMP */
+
+/* hard limit of pages per compressed cluster */
+#define Z_EROFS_CLUSTER_MAX_PAGES       (CONFIG_EROFS_FS_CLUSTER_PAGE_LIMIT)
+#define EROFS_PCPUBUF_NR_PAGES          Z_EROFS_CLUSTER_MAX_PAGES
+#else
+#define EROFS_PCPUBUF_NR_PAGES          0
+#endif	/* !CONFIG_EROFS_FS_ZIP */
 
 /* we strictly follow PAGE_SIZE and no buffer head yet */
 #define LOG_BLOCK_SIZE		PAGE_SHIFT
@@ -256,15 +262,6 @@ static inline int erofs_wait_on_workgroup_freezed(struct erofs_workgroup *grp)
 
 #define ROOT_NID(sb)		((sb)->root_nid)
 
-#ifdef CONFIG_EROFS_FS_ZIP
-/* hard limit of pages per compressed cluster */
-#define Z_EROFS_CLUSTER_MAX_PAGES       (CONFIG_EROFS_FS_CLUSTER_PAGE_LIMIT)
-
-#define EROFS_PCPUBUF_NR_PAGES          Z_EROFS_CLUSTER_MAX_PAGES
-#else
-#define EROFS_PCPUBUF_NR_PAGES          0
-#endif
-
 #define erofs_blknr(addr)       ((addr) / EROFS_BLKSIZ)
 #define erofs_blkoff(addr)      ((addr) % EROFS_BLKSIZ)
 #define blknr_to_addr(nr)       ((erofs_off_t)(nr) * EROFS_BLKSIZ)
@@ -304,7 +301,7 @@ struct erofs_vnode {
 			unsigned char  z_logical_clusterbits;
 			unsigned char  z_physical_clusterbits[2];
 		};
-#endif
+#endif	/* CONFIG_EROFS_FS_ZIP */
 	};
 	/* the corresponding vfs inode */
 	struct inode vfs_inode;
@@ -412,7 +409,7 @@ static inline int z_erofs_map_blocks_iter(struct inode *inode,
 {
 	return -ENOTSUPP;
 }
-#endif
+#endif	/* !CONFIG_EROFS_FS_ZIP */
 
 /* data.c */
 static inline struct bio *erofs_grab_bio(struct super_block *sb,
@@ -548,7 +545,7 @@ static inline int erofs_init_shrinker(void) { return 0; }
 static inline void erofs_exit_shrinker(void) {}
 static inline int z_erofs_init_zip_subsystem(void) { return 0; }
 static inline void z_erofs_exit_zip_subsystem(void) {}
-#endif
+#endif	/* !CONFIG_EROFS_FS_ZIP */
 
 #endif	/* __EROFS_INTERNAL_H */
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
