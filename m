Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD9FBDA2B
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Sep 2019 10:48:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 33000221A9;
	Wed, 25 Sep 2019 08:48:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xn4GchmUK-sj; Wed, 25 Sep 2019 08:48:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B7A00204A8;
	Wed, 25 Sep 2019 08:48:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2B9CA1BF3EC
 for <devel@linuxdriverproject.org>; Wed, 25 Sep 2019 08:48:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 260098484F
 for <devel@linuxdriverproject.org>; Wed, 25 Sep 2019 08:48:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oD8vff8wsyMU for <devel@linuxdriverproject.org>;
 Wed, 25 Sep 2019 08:48:42 +0000 (UTC)
X-Greylist: delayed 00:09:54 by SQLgrey-1.7.6
Received: from synology.com (mail.synology.com [211.23.38.101])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1189B847E5
 for <devel@driverdev.osuosl.org>; Wed, 25 Sep 2019 08:48:41 +0000 (UTC)
Received: from localhost.localdomain (unknown [10.17.32.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by synology.com (Postfix) with ESMTPSA id AF93B92B0345;
 Wed, 25 Sep 2019 16:38:44 +0800 (CST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=synology.com; s=123;
 t=1569400724; bh=qoQWCxWCJPyKO21TpgsOgMJlEEgWmStypzH+J3eiBUw=;
 h=From:To:Cc:Subject:Date;
 b=XgGl+7z+8JyOlb60HISxEuT/Y4gp2JCJZ0xdJ9+Ifq7JNszjy8tM32qHWa2vF7X4W
 wcAsFcfRLC1ez9Kx45SdkU+6GVcM1X/zlVD3+XdqPVSKiG2MHJui9Fu7RXe+1xI5b/
 0TFf03izZUhOFUk4bIIiL6ik/vA0SpvrcOFrZpHg=
From: jiayeli <jiayeli@synology.com>
To: Valdis Kletnieks <valdis.kletnieks@vt.edu>
Subject: [PATCH] staging: exfat: Use kvzalloc() instead of kzalloc() for
 exfat_sb_info
Date: Wed, 25 Sep 2019 16:37:29 +0800
Message-Id: <20190925083729.4653-1-jiayeli@synology.com>
X-Mailer: git-send-email 2.17.1
X-Synology-MCP-Status: no
X-Synology-Spam-Flag: no
X-Synology-Spam-Status: score=0, required 6, WHITELIST_FROM_ADDRESS 0
X-Synology-Virus-Status: no
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jia-Ye Li <jiayeli@synology.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Jia-Ye Li <jiayeli@synology.com>

Fix mount failed "Cannot allocate memory".

When the memory gets fragmented, kzalloc() might fail to allocate
physically contiguous pages for the struct exfat_sb_info (its size is
about 34KiB) even the total free memory is enough.
Use kvzalloc() to solve this problem.

Reviewed-by: Ethan Wu <ethanwu@synology.com>
Signed-off-by: Jia-Ye Li <jiayeli@synology.com>
---
 drivers/staging/exfat/exfat_super.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/exfat/exfat_super.c b/drivers/staging/exfat/exfat_super.c
index 5f6caee819a6..bfad2a6bbcb3 100644
--- a/drivers/staging/exfat/exfat_super.c
+++ b/drivers/staging/exfat/exfat_super.c
@@ -7,6 +7,7 @@
 #include <linux/init.h>
 #include <linux/time.h>
 #include <linux/slab.h>
+#include <linux/mm.h>
 #include <linux/seq_file.h>
 #include <linux/pagemap.h>
 #include <linux/mpage.h>
@@ -3450,7 +3451,7 @@ static void exfat_free_super(struct exfat_sb_info *sbi)
 		kfree(sbi->options.iocharset);
 	/* mutex_init is in exfat_fill_super function. only for 3.7+ */
 	mutex_destroy(&sbi->s_lock);
-	kfree(sbi);
+	kvfree(sbi);
 }
 
 static void exfat_put_super(struct super_block *sb)
@@ -3845,7 +3846,7 @@ static int exfat_fill_super(struct super_block *sb, void *data, int silent)
 	 * the filesystem, since we're only just about to mount
 	 * it and have no inodes etc active!
 	 */
-	sbi = kzalloc(sizeof(struct exfat_sb_info), GFP_KERNEL);
+	sbi = kvzalloc(sizeof(*sbi), GFP_KERNEL);
 	if (!sbi)
 		return -ENOMEM;
 	mutex_init(&sbi->s_lock);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
