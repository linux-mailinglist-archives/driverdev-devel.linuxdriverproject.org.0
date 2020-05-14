Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C241D2BD9
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 11:53:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E30B0879C8;
	Thu, 14 May 2020 09:53:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vCaPg6n8xb3s; Thu, 14 May 2020 09:53:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 72D808790F;
	Thu, 14 May 2020 09:53:12 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 60DC81BF342
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5CA97876FF
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y88XB6vuyrRA
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9ADF8873FA
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589449984; x=1620985984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=XaiyOzJbm9tSQ61/hL3KmBzEmbAKGicNIZ5Lz5YPXeg=;
 b=l1Q5WKaBgiZwh6ATgg3FQuJX5Ka1KCSOqHzdY6VqcbYWhELg0/Mv56K6
 MT5it9qINCcA+OVxCQJgdAJLzFF5kIjk8zGAUG4KYFfQnXeX1/tzR4TgN
 QUbUP82vLw4A/ct3NteueoEwu5rgBX7Bj3M2wmCh43qr/5j65xMTOc4Jt
 sFiyVq+KMq2CdfB3ClQuCkuZ6NUWSwm76URyGIcEYkqMv0extVTWChPKx
 fPtjnjkikr6YMspAE2TaTgggcyEs7wAtoaySpzBkqjpjsezWL/76sAaUy
 bsZknVwJCZiwWh84QFvcOOuR6jpIo9GMfxTtjO4sd3YV1SaVvQszP7jdN Q==;
IronPort-SDR: R/pp8qEZdCEbOKg1Aa/xvbar2wtBHLJSFk+z6KsvVsFkSuSj/dDfV/BqfIzHKMJ/awhPK9rnfP
 VITdidjD2a4XR2/aUQUa3FyJw45H5EBHUWV2JQojx3YMoW2LhSJCk6WgbrWVR2Mp46oTIcu8pY
 e4TZTxttgz0CYNocnP7f2DdGNAt1tKX3ym7eIFLhmOq7ehyRl6oj67GAvtjWtm96xfCogVb/HE
 U0EdToCKDKKUEH+/PG+//0k33GwGow5pRSikBQJHFH5lr4/jFVKrNbFPBR9mefymiLmtc98VPi
 zsc=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="76630476"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 May 2020 02:53:03 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 May 2020 02:53:02 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 14 May 2020 02:53:01 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v2 2/8] drivers: most: usb: use dev_*() functions to print
 messages
Date: Thu, 14 May 2020 11:52:50 +0200
Message-ID: <1589449976-11378-3-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589449976-11378-1-git-send-email-christian.gromm@microchip.com>
References: <1589449976-11378-1-git-send-email-christian.gromm@microchip.com>
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

 drivers/most/most_usb.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/most/most_usb.c b/drivers/most/most_usb.c
index daa5e4b..0846b38 100644
--- a/drivers/most/most_usb.c
+++ b/drivers/most/most_usb.c
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
@@ -696,7 +696,7 @@ static int hdm_configure_channel(struct most_interface *iface, int channel,
 
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
