Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E44A177265
	for <lists+driverdev-devel@lfdr.de>; Tue,  3 Mar 2020 10:30:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D361F204F8;
	Tue,  3 Mar 2020 09:30:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cKIYF9YMUFqN; Tue,  3 Mar 2020 09:30:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4A0A420011;
	Tue,  3 Mar 2020 09:30:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9C5491BF32C
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 09:30:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 9887F20023
 for <devel@linuxdriverproject.org>; Tue,  3 Mar 2020 09:30:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id t69WdJeArYw8 for <devel@linuxdriverproject.org>;
 Tue,  3 Mar 2020 09:30:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from huawei.com (szxga05-in.huawei.com [45.249.212.191])
 by silver.osuosl.org (Postfix) with ESMTPS id 6FCFD20011
 for <devel@driverdev.osuosl.org>; Tue,  3 Mar 2020 09:30:27 +0000 (UTC)
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 63E242D7F5A184E362CF;
 Tue,  3 Mar 2020 17:30:22 +0800 (CST)
Received: from localhost (10.173.223.234) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Tue, 3 Mar 2020
 17:30:15 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <hverkuil@xs4all.nl>, <mchehab@kernel.org>, <gregkh@linuxfoundation.org>, 
 <yuehaibing@huawei.com>, <tglx@linutronix.de>
Subject: [PATCH -next] staging: media: usbvision: Add missing
 MEDIA_USB_SUPPORT dependency
Date: Tue, 3 Mar 2020 17:27:47 +0800
Message-ID: <20200303092747.28360-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.173.223.234]
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

VIDEO_USBVISION driver depends on MEDIA_USB_SUPPORT

Reported-by: Hulk Robot <hulkci@huawei.com>
Fixes: 8fb12ce2ec9d ("media: usbvision: deprecate driver")
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/staging/media/usbvision/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/usbvision/Kconfig b/drivers/staging/media/usbvision/Kconfig
index 7903f55..c6e1afb 100644
--- a/drivers/staging/media/usbvision/Kconfig
+++ b/drivers/staging/media/usbvision/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config VIDEO_USBVISION
 	tristate "USB video devices based on Nogatech NT1003/1004/1005 (Deprecated)"
-	depends on I2C && VIDEO_V4L2
+	depends on MEDIA_USB_SUPPORT && I2C && VIDEO_V4L2
 	select VIDEO_TUNER
 	select VIDEO_SAA711X if MEDIA_SUBDRV_AUTOSELECT
 	help
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
