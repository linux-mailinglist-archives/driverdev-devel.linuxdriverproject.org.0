Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 698762CD5E6
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Dec 2020 13:51:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 87FB92E38C;
	Thu,  3 Dec 2020 12:51:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 99gClA6OsEsr; Thu,  3 Dec 2020 12:51:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F0EDD2E375;
	Thu,  3 Dec 2020 12:50:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B88FA1BF344
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:50:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B58BE87506
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:50:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AXNB1jDb2fv9 for <devel@linuxdriverproject.org>;
 Thu,  3 Dec 2020 12:50:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ED5F587513
 for <devel@driverdev.osuosl.org>; Thu,  3 Dec 2020 12:50:52 +0000 (UTC)
Received: from orion.localdomain ([95.118.71.13]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1Mrfgi-1kPmZ03hwK-00nkW5; Thu, 03 Dec 2020 13:48:07 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 03/11] drivers: staging: gdm724x: remove unneeded
 MODULE_VERSION() call
Date: Thu,  3 Dec 2020 13:47:55 +0100
Message-Id: <20201203124803.23390-3-info@metux.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201203124803.23390-1-info@metux.net>
References: <20201203124803.23390-1-info@metux.net>
X-Provags-ID: V03:K1:y/GRYT+te7Xvb7tqixaHWNKlrsFAQsktrzB4LZEe1ypwz1DoS68
 HNy5FLm7U6iklFSixKOCHtXY2kF48DiVaeuPrLGmy0DXsQZyGMBuHVtCM4C5T04ORFcmFb9
 1QNyTCBTBB861jFXXj1JCfg22dQDfhM52ieKjGpOtFqygA1jxZCid554JQBNmBAL1CCYJAD
 Xllzu1X8tGbIRTfaM6k7w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:f24F5x+x0sk=:/niJrw9CbZxm8SsYM0Uqyt
 54SI3myUUg/yESet1Neh6kEryUvzRVV3D0etBZG1U06WU041rOie57lSUYeSpCaCPH4n56OD8
 s9Lklkmj/Ci16AIN+3FKW8HBz1z41XUzntXRkm4uT6ZHah3Yq31iG8aXQLCQmmfVaRIwxZom9
 B4kCaZVaCKyWrxvVoVM814L+H+SJjk+qy7fStVwXdn1AlegP5MuSjQhNw7KJy7Z+a/nJoDVQL
 XHya0MD8jPFKQrJsem41b3YKrCluMZqOU9ZeXI7mIg8TDcQidGv/7ur3I/buC/U5nlZEGcX1z
 Watp+frjGAYm8TtIboTE9++3BRc/Rlbi77wRIro32Fwg9VjGRd9q3pS2srkwZLZKWOF9LjCQr
 bq3XFUNXcAOhVeYgObI7ew9jNXoEuYKcCVgbB85Zm+CLTJk+Ph9L3wBKvp68P
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
Cc: devel@driverdev.osuosl.org, toddpoynor@google.com, sbranden@broadcom.com,
 rjui@broadcom.com, speakup@linux-speakup.org, rcy@google.com,
 f.fainelli@gmail.com, rspringer@google.com, laurent.pinchart@ideasonboard.com,
 netdev@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 mchehab@kernel.org, nsaenzjulienne@suse.de, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove MODULE_VERSION(), as it doesn't seem to serve any practical purpose.
For in-kernel drivers, the kernel version matters. And the code has received
lots of changes, without the version ever been touched (remained constant
since landing in the mainline tree), so it doesn't seem to have any practical
meaning anymore.

Signed-off-by: Enrico Weigelt <info@metux.net>
---
 drivers/staging/gdm724x/gdm_lte.h | 1 -
 drivers/staging/gdm724x/gdm_usb.c | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_lte.h b/drivers/staging/gdm724x/gdm_lte.h
index f2143a6e0e99..bf6478ab05dd 100644
--- a/drivers/staging/gdm724x/gdm_lte.h
+++ b/drivers/staging/gdm724x/gdm_lte.h
@@ -11,7 +11,6 @@
 
 #define MAX_NIC_TYPE		4
 #define MAX_RX_SUBMIT_COUNT	3
-#define DRIVER_VERSION		"3.7.17.0"
 
 enum TX_ERROR_CODE {
 	TX_NO_ERROR = 0,
diff --git a/drivers/staging/gdm724x/gdm_usb.c b/drivers/staging/gdm724x/gdm_usb.c
index dc4da66c3695..aa6f08396396 100644
--- a/drivers/staging/gdm724x/gdm_usb.c
+++ b/drivers/staging/gdm724x/gdm_usb.c
@@ -1003,6 +1003,5 @@ static void __exit gdm_usb_lte_exit(void)
 module_init(gdm_usb_lte_init);
 module_exit(gdm_usb_lte_exit);
 
-MODULE_VERSION(DRIVER_VERSION);
 MODULE_DESCRIPTION("GCT LTE USB Device Driver");
 MODULE_LICENSE("GPL");
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
