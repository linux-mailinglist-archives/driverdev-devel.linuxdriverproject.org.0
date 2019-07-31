Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D79807C7C8
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Jul 2019 17:58:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6D69F86974;
	Wed, 31 Jul 2019 15:58:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6FI5SZQ2HF6G; Wed, 31 Jul 2019 15:58:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 67BE7869CA;
	Wed, 31 Jul 2019 15:58:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F07E31BF844
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 15:58:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D430C2044B
 for <devel@linuxdriverproject.org>; Wed, 31 Jul 2019 15:58:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lbP4R+MBx3fa for <devel@linuxdriverproject.org>;
 Wed, 31 Jul 2019 15:58:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by silver.osuosl.org (Postfix) with ESMTPS id A57F9221A9
 for <devel@driverdev.osuosl.org>; Wed, 31 Jul 2019 15:58:29 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id DD1B386E5F4DE52E5264;
 Wed, 31 Jul 2019 23:58:25 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 31 Jul
 2019 23:58:15 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Chao Yu
 <yuchao0@huawei.com>, <devel@driverdev.osuosl.org>
Subject: [PATCH v2 05/22] staging: erofs: sunset erofs_workstn_{lock,unlock}
Date: Wed, 31 Jul 2019 23:57:35 +0800
Message-ID: <20190731155752.210602-6-gaoxiang25@huawei.com>
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

It was used for Linux backward compatibility, and
no use for upstream kernel.

Reviewed-by: Chao Yu <yuchao0@huawei.com>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/internal.h |  3 ---
 drivers/staging/erofs/utils.c    | 10 +++++-----
 2 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/erofs/internal.h b/drivers/staging/erofs/internal.h
index 501429ec0f91..ed487ee56f74 100644
--- a/drivers/staging/erofs/internal.h
+++ b/drivers/staging/erofs/internal.h
@@ -179,9 +179,6 @@ static inline void *erofs_kmalloc(struct erofs_sb_info *sbi,
 #define test_opt(sbi, option)	((sbi)->mount_opt & EROFS_MOUNT_##option)
 
 #ifdef CONFIG_EROFS_FS_ZIP
-#define erofs_workstn_lock(sbi)         xa_lock(&(sbi)->workstn_tree)
-#define erofs_workstn_unlock(sbi)       xa_unlock(&(sbi)->workstn_tree)
-
 /* basic unit of the workstation of a super_block */
 struct erofs_workgroup {
 	/* the workgroup index in the workstation */
diff --git a/drivers/staging/erofs/utils.c b/drivers/staging/erofs/utils.c
index a68dbe375fa0..024806003297 100644
--- a/drivers/staging/erofs/utils.c
+++ b/drivers/staging/erofs/utils.c
@@ -102,14 +102,14 @@ int erofs_register_workgroup(struct super_block *sb,
 		return err;
 
 	sbi = EROFS_SB(sb);
-	erofs_workstn_lock(sbi);
+	xa_lock(&sbi->workstn_tree);
 
 	grp = xa_tag_pointer(grp, tag);
 
 	/*
 	 * Bump up reference count before making this workgroup
 	 * visible to other users in order to avoid potential UAF
-	 * without serialized by erofs_workstn_lock.
+	 * without serialized by workstn_lock.
 	 */
 	__erofs_workgroup_get(grp);
 
@@ -122,7 +122,7 @@ int erofs_register_workgroup(struct super_block *sb,
 		 */
 		__erofs_workgroup_put(grp);
 
-	erofs_workstn_unlock(sbi);
+	xa_unlock(&sbi->workstn_tree);
 	radix_tree_preload_end();
 	return err;
 }
@@ -225,7 +225,7 @@ unsigned long erofs_shrink_workstation(struct erofs_sb_info *sbi,
 
 	int i, found;
 repeat:
-	erofs_workstn_lock(sbi);
+	xa_lock(&sbi->workstn_tree);
 
 	found = radix_tree_gang_lookup(&sbi->workstn_tree,
 				       batch, first_index, PAGEVEC_SIZE);
@@ -243,7 +243,7 @@ unsigned long erofs_shrink_workstation(struct erofs_sb_info *sbi,
 		if (unlikely(!--nr_shrink))
 			break;
 	}
-	erofs_workstn_unlock(sbi);
+	xa_unlock(&sbi->workstn_tree);
 
 	if (i && nr_shrink)
 		goto repeat;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
