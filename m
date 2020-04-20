Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AD2C1B1247
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Apr 2020 18:51:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A884122011;
	Mon, 20 Apr 2020 16:50:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0ZnITLWVUVi3; Mon, 20 Apr 2020 16:50:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CA1FF21F76;
	Mon, 20 Apr 2020 16:50:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DF2FF1BF327
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 16:50:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B830387E79
 for <devel@linuxdriverproject.org>; Mon, 20 Apr 2020 16:50:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MoPbhMNw1kKk for <devel@linuxdriverproject.org>;
 Mon, 20 Apr 2020 16:50:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2D00887EA4
 for <devel@driverdev.osuosl.org>; Mon, 20 Apr 2020 16:50:27 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad4d8.dynamic.kabel-deutschland.de
 [95.90.212.216])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1F3820782;
 Mon, 20 Apr 2020 16:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587401427;
 bh=MDt0Lw7hNGUNJLDKC9Pa5zQNeCn7S4niMVRjFFuEMyw=;
 h=From:To:Cc:Subject:Date:From;
 b=CPgV43yG3PclbfpvPL7b0ijxlK/upd1MllgZdY2blU+PMY8l8W3TyCzyt4Bvld8z/
 qlyM784JHu3ySa33Ayqf7a+odNVVIhH6mDK5lllq4LUzk5PbGY6b1l24h2sOS/ZqJC
 mohQarlVILGjR3yWEPmxNwx5Y2+4ZuaEWr7XVKJg=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jQZcm-009jbA-Vc; Mon, 20 Apr 2020 18:50:24 +0200
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH] media: usbvision: depends on USB
Date: Mon, 20 Apr 2020 18:50:24 +0200
Message-Id: <a0ed60978af23b398d128d1075a7961ef57f0694.1587401420.git.mchehab+huawei@kernel.org>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, Stephen Rothwell <sfr@canb.auug.org.au>,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 YueHaibing <yuehaibing@huawei.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

When built with:
	CONFIG_USB=m
	CONFIG_VIDEO_USBVISION=y

It causes ld errors:

ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_write_reg_irq':
usbvision-core.c:(.text+0x8a4): undefined reference to `usb_submit_urb'
ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_isoc_irq':
usbvision-core.c:(.text+0x2ee8): undefined reference to `usb_submit_urb'
ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_read_reg':
usbvision-core.c:(.text+0x30ad): undefined reference to `usb_control_msg'
ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_write_reg':
usbvision-core.c:(.text+0x3178): undefined reference to `usb_control_msg'
ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_set_output':
usbvision-core.c:(.text+0x344e): undefined reference to `usb_control_msg'
ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_set_input':
usbvision-core.c:(.text+0x3b9b): undefined reference to `usb_control_msg'
ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_setup':
usbvision-core.c:(.text+0x4009): undefined reference to `usb_control_msg'
ld: drivers/staging/media/usbvision/usbvision-core.o:usbvision-core.c:(.text+0x417f): more undefined references to `usb_control_msg' follow
ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_set_alternate':
usbvision-core.c:(.text+0x4518): undefined reference to `usb_set_interface'
ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_init_isoc':
usbvision-core.c:(.text+0x4673): undefined reference to `usb_alloc_urb'
ld: usbvision-core.c:(.text+0x46a5): undefined reference to `usb_alloc_coherent'
ld: usbvision-core.c:(.text+0x4765): undefined reference to `usb_submit_urb'
ld: drivers/staging/media/usbvision/usbvision-core.o: in function `usbvision_stop_isoc':
usbvision-core.c:(.text+0x4837): undefined reference to `usb_kill_urb'
ld: usbvision-core.c:(.text+0x485f): undefined reference to `usb_free_coherent'
ld: usbvision-core.c:(.text+0x4874): undefined reference to `usb_free_urb'
ld: usbvision-core.c:(.text+0x48f1): undefined reference to `usb_set_interface'
ld: drivers/staging/media/usbvision/usbvision-video.o: in function `usbvision_release':
usbvision-video.c:(.text+0x1a8a): undefined reference to `usb_free_urb'
ld: drivers/staging/media/usbvision/usbvision-video.o: in function `usbvision_disconnect':
usbvision-video.c:(.text+0x1b74): undefined reference to `usb_put_dev'
ld: drivers/staging/media/usbvision/usbvision-video.o: in function `usbvision_radio_close':
usbvision-video.c:(.text+0x1c89): undefined reference to `usb_set_interface'
ld: drivers/staging/media/usbvision/usbvision-video.o: in function `usbvision_probe':
usbvision-video.c:(.text+0x1e4b): undefined reference to `usb_get_dev'
ld: usbvision-video.c:(.text+0x20e1): undefined reference to `usb_alloc_urb'
ld: usbvision-video.c:(.text+0x2797): undefined reference to `usb_put_dev'
ld: drivers/staging/media/usbvision/usbvision-video.o: in function `usbvision_exit':
usbvision-video.c:(.exit.text+0x37): undefined reference to `usb_deregister'
ld: drivers/staging/media/usbvision/usbvision-video.o: in function `usbvision_init':
usbvision-video.c:(.init.text+0xf9): undefined reference to `usb_register_driver'
ld: drivers/staging/media/usbvision/usbvision-i2c.o: in function `usbvision_i2c_write':
usbvision-i2c.c:(.text+0x2f4): undefined reference to `usb_control_msg'

Cc: Stephen Rothwell <sfr@canb.auug.org.au>
Reported-by: Randy Dunlap <rdunlap@infradead.org>
Signed-off-by: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
---
 drivers/staging/media/usbvision/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/usbvision/Kconfig b/drivers/staging/media/usbvision/Kconfig
index c6e1afb5ac48..1c7da2a2caac 100644
--- a/drivers/staging/media/usbvision/Kconfig
+++ b/drivers/staging/media/usbvision/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config VIDEO_USBVISION
 	tristate "USB video devices based on Nogatech NT1003/1004/1005 (Deprecated)"
-	depends on MEDIA_USB_SUPPORT && I2C && VIDEO_V4L2
+	depends on MEDIA_USB_SUPPORT && I2C && VIDEO_V4L2 && USB
 	select VIDEO_TUNER
 	select VIDEO_SAA711X if MEDIA_SUBDRV_AUTOSELECT
 	help
-- 
2.25.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
