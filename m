Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAB102CD5E3
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Dec 2020 13:51:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7FB6387AC8;
	Thu,  3 Dec 2020 12:51:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8e+fdF16vaVz; Thu,  3 Dec 2020 12:51:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EDE3D87AA3;
	Thu,  3 Dec 2020 12:51:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E6B551BF344
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:51:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AA2A72E385
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 12:51:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8HjxL236yGio for <devel@linuxdriverproject.org>;
 Thu,  3 Dec 2020 12:51:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
 by silver.osuosl.org (Postfix) with ESMTPS id 8F4FE2E36F
 for <devel@driverdev.osuosl.org>; Thu,  3 Dec 2020 12:50:57 +0000 (UTC)
Received: from orion.localdomain ([95.118.71.13]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MCoYS-1ktdjX0ukS-008w2z; Thu, 03 Dec 2020 13:48:11 +0100
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 09/11] drivers: staging: rtl8192e: remove unneeded
 MODULE_VERSION() call
Date: Thu,  3 Dec 2020 13:48:01 +0100
Message-Id: <20201203124803.23390-9-info@metux.net>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201203124803.23390-1-info@metux.net>
References: <20201203124803.23390-1-info@metux.net>
X-Provags-ID: V03:K1:TWPmkvMRLe+RvSvuPagbKMS63HtX/xzJmb8w2MTfTkQSWtN8MuE
 d7qBVuYtmwsjFJW9rVHBB94Z/d4wpwb0RbxgZhF7DW1Pd4B5YrB7GVqudc3Okkrs/cbk0hb
 wpEPKqD7q5Npkh3McC87Qc2PnpfO4QTfipZwhrOTyZIuO3P4vIPgtk5IzMpWFUwIaYhfJLL
 KY9a+bUX9nduw5vCyGp8g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:K6oID9tUrnQ=:CM//xMqa9mV7ETaJ0BNeUg
 6ZNSYbSTHSCeQ84menR9DiDAANTYKHy0oR5ehOCMfO7zii6wlMymLiOGzPGNVhBa7QX9CB+Bm
 UdErWAcIwvwTzBrpWc013DMY8ZreOtvRNI12e5bs7eOAYgEKgUPrLOGwgSFRyl8Ax0f9Ky+di
 3abr8qqDymyiRc8Sqj5is7sSmWlmBY3tB6mwhcD0Zlk9PAdHJ1DPa1R+gxNfiVE3nPklz1Bcf
 CbJS3qDyEEpBDch0Hpx4EYGpl6daNjJN5z8xij/f1+KOYMXVMWNxzyNQPuJ+zw1oZ9EeO1C1w
 A9A8zAKnUSM5FKNxVSH9Fj3iWXTO8FJt1knNt4HCiwLmo5PVRaYghHwp2BHpSud9C+SFobpId
 UYYCDI/0DGBq/Mda6lfbUYujYw39f/VCvrjqEuQStLGT82Z/PGIgwe+XiLr02
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

Remove MODULE_VERSION(), as it doesn't seem to have any practical purpose:
the driver has received lots of changes, while the module version remained
constant. Unmaintained version numbers aren't actually useful.

Signed-off-by: Enrico Weigelt <info@metux.net>
---
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index 663675efcfe4..e316f920657b 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -2635,7 +2635,6 @@ void rtl92e_check_rfctrl_gpio_timer(struct timer_list *t)
  ***************************************************************************/
 MODULE_DESCRIPTION("Linux driver for Realtek RTL819x WiFi cards");
 MODULE_AUTHOR(DRV_COPYRIGHT " " DRV_AUTHOR);
-MODULE_VERSION(DRV_VERSION);
 MODULE_LICENSE("GPL");
 MODULE_FIRMWARE(RTL8192E_BOOT_IMG_FW);
 MODULE_FIRMWARE(RTL8192E_MAIN_IMG_FW);
-- 
2.11.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
