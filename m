Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B231E3D32
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 11:06:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5A4842322B;
	Wed, 27 May 2020 09:06:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yjCVPMbVpVTr; Wed, 27 May 2020 09:06:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 929D52047C;
	Wed, 27 May 2020 09:06:36 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C23DD1BF2EF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B998987E6E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id l4OPMKMjkZXh
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2E1FA87D5D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590570393; x=1622106393;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=UQhCFs5M0TuJKwieIYLpaCSxjEN4IzcEDkm4f4sP1qI=;
 b=xzMxJF6Q7l3Ngymqn/MMcr0XZ8WChQxVHK/VRikdKYMgMADZ+Op9GSpH
 3xJXMDYNI9Dqns1c0uf1AvWR4vIDloXkXYTgJX428FNUm7jmhdv9pnVWg
 1c+C5gMaJiufYUNgGZtPS5XYuo2QoQSYAmyf9xqpGxTdnxrhTpjYNm5b8
 XJEIvyUrY6hUpM1o7TaWPHEsjyszIYMBMm+JQld9HLyfpvqQ9uP/y3EWK
 zp+da4YRKt/xV6jkEzBfzLxz8dpPSqU8WUAPhGaFhZNqVvg0d2hnT+i09
 6rO78fWh1cSfGZFT/Ij8DDk5q0Ush8tkxKwHMlcJ6210G8plJ+laoQOP9 w==;
IronPort-SDR: rykcD1jpoRaddSsGpC1Py2gQs/RJUJQtnj6j9oo2dORH56zZc6MZOSzKdC7WzAD2H7dFy8KXpV
 chr+jkUFoB1Bw88Dl6dB4j8OatUPiCsGuagR2/yP9kd4T59at9GRnvAb8VYs/4SQAO/5AHDEDv
 FPuiJQybHtSqJ947TztcuBy3MQkb+Wyp7BmsIdULY8jGRVfuE/Vp4zuGbcm2Z79/ZT5Gi2yFbL
 ECx/Xdmnv/JEUIsPCSjjHhk3Wmyb70L1sAKsKnsL4XIYxjfBsRQ6NMVDMo9+oXKfly/hFnLkCY
 Jwc=
X-IronPort-AV: E=Sophos;i="5.73,440,1583218800"; d="scan'208";a="77204586"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 May 2020 02:06:33 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 May 2020 02:06:32 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 27 May 2020 02:06:31 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 01/10] staging: most: usb: change order of function parameters
Date: Wed, 27 May 2020 11:06:18 +0200
Message-ID: <1590570387-27069-2-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590570387-27069-1-git-send-email-christian.gromm@microchip.com>
References: <1590570387-27069-1-git-send-email-christian.gromm@microchip.com>
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

This patch swaps the arguments of function get_stream_frame_size to
have the struct device as first parameter.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/most/usb/usb.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 56b75e4..0e1264d 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -183,10 +183,11 @@ static inline int start_sync_ep(struct usb_device *usb_dev, u16 ep)
 
 /**
  * get_stream_frame_size - calculate frame size of current configuration
+ * @dev: device structure
  * @cfg: channel configuration
  */
-static unsigned int get_stream_frame_size(struct most_channel_config *cfg,
-					  struct device *dev)
+static unsigned int get_stream_frame_size(struct device *dev,
+					  struct most_channel_config *cfg)
 {
 	unsigned int frame_size = 0;
 	unsigned int sub_size = cfg->subbuffer_size;
@@ -270,7 +271,7 @@ static int hdm_poison_channel(struct most_interface *iface, int channel)
 static int hdm_add_padding(struct most_dev *mdev, int channel, struct mbo *mbo)
 {
 	struct most_channel_config *conf = &mdev->conf[channel];
-	unsigned int frame_size = get_stream_frame_size(conf, &mdev->dev);
+	unsigned int frame_size = get_stream_frame_size(&mdev->dev, conf);
 	unsigned int j, num_frames;
 
 	if (!frame_size)
@@ -304,7 +305,7 @@ static int hdm_remove_padding(struct most_dev *mdev, int channel,
 			      struct mbo *mbo)
 {
 	struct most_channel_config *const conf = &mdev->conf[channel];
-	unsigned int frame_size = get_stream_frame_size(conf, &mdev->dev);
+	unsigned int frame_size = get_stream_frame_size(&mdev->dev, conf);
 	unsigned int j, num_frames;
 
 	if (!frame_size)
@@ -600,7 +601,7 @@ static int hdm_configure_channel(struct most_interface *iface, int channel,
 
 	mdev->padding_active[channel] = true;
 
-	frame_size = get_stream_frame_size(conf, &mdev->dev);
+	frame_size = get_stream_frame_size(&mdev->dev, conf);
 	if (frame_size == 0 || frame_size > USB_MTU) {
 		dev_warn(dev, "Misconfig: frame size wrong\n");
 		return -EINVAL;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
