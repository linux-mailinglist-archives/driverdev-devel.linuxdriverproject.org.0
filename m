Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A16887721
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Aug 2019 12:22:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 752FC88309;
	Fri,  9 Aug 2019 10:22:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oOt4TzdPwvTY; Fri,  9 Aug 2019 10:22:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AF27987DFE;
	Fri,  9 Aug 2019 10:22:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 350D01BF2FD
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 10:22:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3209322005
 for <devel@linuxdriverproject.org>; Fri,  9 Aug 2019 10:22:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w-iqz6lvBPFW for <devel@linuxdriverproject.org>;
 Fri,  9 Aug 2019 10:22:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
 by silver.osuosl.org (Postfix) with ESMTPS id 5AB5420372
 for <devel@driverdev.osuosl.org>; Fri,  9 Aug 2019 10:22:21 +0000 (UTC)
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 360CEC9566F2D0524110;
 Fri,  9 Aug 2019 18:22:18 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0; Fri, 9 Aug 2019
 18:22:09 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <gregkh@linuxfoundation.org>, <ard.biesheuvel@linaro.org>
Subject: [PATCH] staging: wusbcore: Fix build error without CONFIG_USB
Date: Fri, 9 Aug 2019 18:21:50 +0800
Message-ID: <20190809102150.66896-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

USB_WUSB should depends on CONFIG_USB, otherwise building fails

drivers/staging/wusbcore/wusbhc.o: In function `wusbhc_giveback_urb':
wusbhc.c:(.text+0xa28): undefined reference to `usb_hcd_giveback_urb'

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 71ed79b0e4be ("USB: Move wusbcore and UWB to staging as it is obsolete")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/wusbcore/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wusbcore/Kconfig b/drivers/staging/wusbcore/Kconfig
index 056c60b..a559d02 100644
--- a/drivers/staging/wusbcore/Kconfig
+++ b/drivers/staging/wusbcore/Kconfig
@@ -4,7 +4,7 @@
 #
 config USB_WUSB
 	tristate "Enable Wireless USB extensions"
-	depends on UWB
+	depends on UWB && USB
 	select CRYPTO
 	select CRYPTO_AES
 	select CRYPTO_CCM
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
