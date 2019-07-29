Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 007707856C
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jul 2019 08:53:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8E7E2204FC;
	Mon, 29 Jul 2019 06:53:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qbVV0AlakMsQ; Mon, 29 Jul 2019 06:53:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0C7D020500;
	Mon, 29 Jul 2019 06:53:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C9BCE1BF40D
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:53:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id C49E987A87
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:53:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Hd9rf59aSFN for <devel@linuxdriverproject.org>;
 Mon, 29 Jul 2019 06:53:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga07-in.huawei.com [45.249.212.35])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0BC3287A50
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2019 06:52:47 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 5B7E54FD6EB467559D91;
 Mon, 29 Jul 2019 14:52:45 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 29 Jul
 2019 14:52:34 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH 19/22] staging: erofs: tidy up utils.c
Date: Mon, 29 Jul 2019 14:51:56 +0800
Message-ID: <20190729065159.62378-20-gaoxiang25@huawei.com>
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
 - Update comments in erofs_try_to_release_workgroup;
 - code style cleanup.

Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/utils.c | 27 +++++++++++++--------------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/erofs/utils.c b/drivers/staging/erofs/utils.c
index 0e6308b15717..814c2ee037ae 100644
--- a/drivers/staging/erofs/utils.c
+++ b/drivers/staging/erofs/utils.c
@@ -114,8 +114,7 @@ int erofs_register_workgroup(struct super_block *sb,
 	 */
 	__erofs_workgroup_get(grp);
 
-	err = radix_tree_insert(&sbi->workstn_tree,
-				grp->index, grp);
+	err = radix_tree_insert(&sbi->workstn_tree, grp->index, grp);
 	if (unlikely(err))
 		/*
 		 * it's safe to decrease since the workgroup isn't visible
@@ -156,18 +155,18 @@ static bool erofs_try_to_release_workgroup(struct erofs_sb_info *sbi,
 					   bool cleanup)
 {
 	/*
-	 * for managed cache enabled, the refcount of workgroups
-	 * themselves could be < 0 (freezed). So there is no guarantee
-	 * that all refcount > 0 if managed cache is enabled.
+	 * If managed cache is on, refcount of workgroups
+	 * themselves could be < 0 (freezed). In other words,
+	 * there is no guarantee that all refcounts > 0.
 	 */
 	if (!erofs_workgroup_try_to_freeze(grp, 1))
 		return false;
 
 	/*
-	 * note that all cached pages should be unlinked
-	 * before delete it from the radix tree.
-	 * Otherwise some cached pages of an orphan old workgroup
-	 * could be still linked after the new one is available.
+	 * Note that all cached pages should be unattached
+	 * before deleted from the radix tree. Otherwise some
+	 * cached pages could be still attached to the orphan
+	 * old workgroup when the new one is available in the tree.
 	 */
 	if (erofs_try_to_free_all_cached_pages(sbi, grp)) {
 		erofs_workgroup_unfreeze(grp, 1);
@@ -175,7 +174,7 @@ static bool erofs_try_to_release_workgroup(struct erofs_sb_info *sbi,
 	}
 
 	/*
-	 * it is impossible to fail after the workgroup is freezed,
+	 * It's impossible to fail after the workgroup is freezed,
 	 * however in order to avoid some race conditions, add a
 	 * DBG_BUGON to observe this in advance.
 	 */
@@ -183,8 +182,8 @@ static bool erofs_try_to_release_workgroup(struct erofs_sb_info *sbi,
 						     grp->index)) != grp);
 
 	/*
-	 * if managed cache is enable, the last refcount
-	 * should indicate the related workstation.
+	 * If managed cache is on, last refcount should indicate
+	 * the related workstation.
 	 */
 	erofs_workgroup_unfreeze_final(grp);
 	return true;
@@ -273,9 +272,9 @@ static unsigned long erofs_shrink_scan(struct shrinker *shrink,
 	unsigned long freed = 0;
 
 	spin_lock(&erofs_sb_list_lock);
-	do
+	do {
 		run_no = ++shrinker_run_no;
-	while (run_no == 0);
+	} while (run_no == 0);
 
 	/* Iterate over all mounted superblocks and try to shrink them */
 	p = erofs_sb_list.next;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
