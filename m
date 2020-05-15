Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 197AD1D495D
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 11:21:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A4FFF2E61D;
	Fri, 15 May 2020 09:21:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5zzvt1zRp6iZ; Fri, 15 May 2020 09:21:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9ED632E672;
	Fri, 15 May 2020 09:21:29 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C1E71BF2C1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 78CEE87D2A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kd0hnpGPTflB
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C417F87D2D
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589534482; x=1621070482;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=WgkHpKxo9RD0c8kLRLewmCDgFfeEeyTT+ncvhvCYTWg=;
 b=ycLBa1qb+oLlRrE2mGwTUUgt/F01lo/HSN6NGvTxjNXAr/mC/Z6IFLwi
 jD3HkkLwvtaDbEhJtHzCDy7pIu/XXUmUQd+Gw+Hk3wtT7cYY9oZbWfond
 CWMhGGsNxz29X/Moz5kzquZ2McYS3cqxxhopWLNHZLyj+Fdk65savJbMo
 0NynBn//VRB7fHPVea9R2+ah/ScUc4vIi7RauI1c6XmH2VhA2oEvFz898
 ZKyeoowMZktJDk3j/yqQ/Yeke20UoDAoVeElY86gwUczXFoxmhjBtjlLY
 8STjNBDTB/e2+hpBkPB9ajLz1QYO8VXLE7S78Uy0sLS73/O2ibHFHFTCn A==;
IronPort-SDR: MP3N0IDylcYIjgcUrU3eLHieNrmCNo1tbnjl8oYRuSOSFoqiTJz9S2f69+6wRXwa+ODfRLL6PP
 KDdthGXPUgN/NXB+DYLFMg0oyB2UqbHWSj02MfGrSIqtAGJgr+f0SwDZltHSa0UvTX6dzWQU1F
 iYFfS2Sv9yqCGDJ8G+69b52D3YU6LGAJKf4mIky1Wj04ZyJSbljz8K0EucLI4zlARouiuXaDfo
 RbJhhg+mV9k73P6mFnxfMK4wcboKiYQmcJyHJ+MX/VDf8aL7NbL8Z8ycVBmrOuVxiWsAoocSsC
 prg=
X-IronPort-AV: E=Sophos;i="5.73,394,1583218800"; d="scan'208";a="76018837"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 02:21:11 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 02:21:13 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 15 May 2020 02:21:09 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v3 1/7] staging: most: usb: use dev_*() functions to print
 messages
Date: Fri, 15 May 2020 11:20:59 +0200
Message-ID: <1589534465-7423-2-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589534465-7423-1-git-send-email-christian.gromm@microchip.com>
References: <1589534465-7423-1-git-send-email-christian.gromm@microchip.com>
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch removes the pr_*() functions and uses dev_*() instead.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
v2:
v3:

 drivers/staging/most/usb/usb.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index a4bf362..85d4fa0 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -5,7 +5,6 @@
  * Copyright (C) 2013-2015 Microchip Technology Germany II GmbH & Co. KG
  */
 
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 #include <linux/module.h>
 #include <linux/fs.h>
 #include <linux/usb.h>
@@ -186,13 +185,14 @@ static inline int start_sync_ep(struct usb_device *usb_dev, u16 ep)
  * get_stream_frame_size - calculate frame size of current configuration
  * @cfg: channel configuration
  */
-static unsigned int get_stream_frame_size(struct most_channel_config *cfg)
+static unsigned int get_stream_frame_size(struct most_channel_config *cfg,
+					  struct device *dev)
 {
 	unsigned int frame_size = 0;
 	unsigned int sub_size = cfg->subbuffer_size;
 
 	if (!sub_size) {
-		pr_warn("Misconfig: Subbuffer size zero.\n");
+		dev_warn(dev, "Misconfig: Subbuffer size zero.\n");
 		return frame_size;
 	}
 	switch (cfg->data_type) {
@@ -201,7 +201,7 @@ static unsigned int get_stream_frame_size(struct most_channel_config *cfg)
 		break;
 	case MOST_CH_SYNC:
 		if (cfg->packets_per_xact == 0) {
-			pr_warn("Misconfig: Packets per XACT zero\n");
+			dev_warn(dev, "Misconfig: Packets per XACT zero\n");
 			frame_size = 0;
 		} else if (cfg->packets_per_xact == 0xFF) {
 			frame_size = (USB_MTU / sub_size) * sub_size;
@@ -210,7 +210,7 @@ static unsigned int get_stream_frame_size(struct most_channel_config *cfg)
 		}
 		break;
 	default:
-		pr_warn("Query frame size of non-streaming channel\n");
+		dev_warn(dev, "Query frame size of non-streaming channel\n");
 		break;
 	}
 	return frame_size;
@@ -270,7 +270,7 @@ static int hdm_poison_channel(struct most_interface *iface, int channel)
 static int hdm_add_padding(struct most_dev *mdev, int channel, struct mbo *mbo)
 {
 	struct most_channel_config *conf = &mdev->conf[channel];
-	unsigned int frame_size = get_stream_frame_size(conf);
+	unsigned int frame_size = get_stream_frame_size(conf, &mdev->dev);
 	unsigned int j, num_frames;
 
 	if (!frame_size)
@@ -304,7 +304,7 @@ static int hdm_remove_padding(struct most_dev *mdev, int channel,
 			      struct mbo *mbo)
 {
 	struct most_channel_config *const conf = &mdev->conf[channel];
-	unsigned int frame_size = get_stream_frame_size(conf);
+	unsigned int frame_size = get_stream_frame_size(conf, &mdev->dev);
 	unsigned int j, num_frames;
 
 	if (!frame_size)
@@ -697,7 +697,7 @@ static int hdm_configure_channel(struct most_interface *iface, int channel,
 
 	mdev->padding_active[channel] = true;
 
-	frame_size = get_stream_frame_size(conf);
+	frame_size = get_stream_frame_size(conf, &mdev->dev);
 	if (frame_size == 0 || frame_size > USB_MTU) {
 		dev_warn(dev, "Misconfig: frame size wrong\n");
 		return -EINVAL;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
