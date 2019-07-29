Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A221078552
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jul 2019 08:52:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 38BCE87A47;
	Mon, 29 Jul 2019 06:52:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SNVDcjgVy7Ok; Mon, 29 Jul 2019 06:52:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id EBF3C8796A;
	Mon, 29 Jul 2019 06:52:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 748361BF40D
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:52:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 71ACE883B8
 for <devel@linuxdriverproject.org>; Mon, 29 Jul 2019 06:52:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wWHQrkNQlYVB for <devel@linuxdriverproject.org>;
 Mon, 29 Jul 2019 06:52:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga06-in.huawei.com [45.249.212.32])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E4A3A883F0
 for <devel@driverdev.osuosl.org>; Mon, 29 Jul 2019 06:52:32 +0000 (UTC)
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 23E19FCE5F164ECB604F;
 Mon, 29 Jul 2019 14:52:30 +0800 (CST)
Received: from architecture4.huawei.com (10.140.130.215) by smtp.huawei.com
 (10.3.19.210) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 29 Jul
 2019 14:52:22 +0800
From: Gao Xiang <gaoxiang25@huawei.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 <devel@driverdev.osuosl.org>
Subject: [PATCH 08/22] staging: erofs: kill CONFIG_EROFS_FS_IO_MAX_RETRIES
Date: Mon, 29 Jul 2019 14:51:45 +0800
Message-ID: <20190729065159.62378-9-gaoxiang25@huawei.com>
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

CONFIG_EROFS_FS_IO_MAX_RETRIES seems a runtime setting
and users have no idea about the change in behaviour.

Let's remove the setting currently and fold it into code,
turn it into a module parameter if it's really needed.

Suggested-by: David Sterba <dsterba@suse.cz>
Signed-off-by: Gao Xiang <gaoxiang25@huawei.com>
---
 drivers/staging/erofs/Kconfig    | 9 ---------
 drivers/staging/erofs/data.c     | 2 +-
 drivers/staging/erofs/internal.h | 6 ------
 3 files changed, 1 insertion(+), 16 deletions(-)

diff --git a/drivers/staging/erofs/Kconfig b/drivers/staging/erofs/Kconfig
index 2577cbb46a5b..747e9eebfaa5 100644
--- a/drivers/staging/erofs/Kconfig
+++ b/drivers/staging/erofs/Kconfig
@@ -78,15 +78,6 @@ config EROFS_FAULT_INJECTION
 	  Test EROFS to inject faults such as ENOMEM, EIO, and so on.
 	  If unsure, say N.
 
-config EROFS_FS_IO_MAX_RETRIES
-	int "EROFS IO Maximum Retries"
-	depends on EROFS_FS
-	default "5"
-	help
-	  Maximum retry count of IO Errors.
-
-	  If unsure, leave the default value (5 retries, 6 IOs at most).
-
 config EROFS_FS_ZIP
 	bool "EROFS Data Compresssion Support"
 	depends on EROFS_FS
diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
index 75b859e48084..65e0d288e2a1 100644
--- a/drivers/staging/erofs/data.c
+++ b/drivers/staging/erofs/data.c
@@ -49,7 +49,7 @@ struct page *__erofs_get_meta_page(struct super_block *sb,
 	/* prefer retrying in the allocator to blindly looping below */
 	const gfp_t gfp = mapping_gfp_constraint(mapping, ~__GFP_FS) |
 		(nofail ? __GFP_NOFAIL : 0);
-	unsigned int io_retries = nofail ? EROFS_IO_MAX_RETRIES_NOFAIL : 0;
+	unsigned int io_retries = nofail ? 5 : 0;
 	struct page *page;
 	int err;
 
diff --git a/drivers/staging/erofs/internal.h b/drivers/staging/erofs/internal.h
index ffd4b1a3fc25..58b8bb9cbb9f 100644
--- a/drivers/staging/erofs/internal.h
+++ b/drivers/staging/erofs/internal.h
@@ -470,12 +470,6 @@ static inline void __submit_bio(struct bio *bio, unsigned int op,
 	submit_bio(bio);
 }
 
-#ifndef CONFIG_EROFS_FS_IO_MAX_RETRIES
-#define EROFS_IO_MAX_RETRIES_NOFAIL	0
-#else
-#define EROFS_IO_MAX_RETRIES_NOFAIL	CONFIG_EROFS_FS_IO_MAX_RETRIES
-#endif
-
 struct page *__erofs_get_meta_page(struct super_block *sb, erofs_blk_t blkaddr,
 				   bool prio, bool nofail);
 
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
