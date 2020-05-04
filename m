Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 298481C3B86
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 May 2020 15:44:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 36C238776F;
	Mon,  4 May 2020 13:44:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XNe8vxT8to1t; Mon,  4 May 2020 13:44:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 071FE87763;
	Mon,  4 May 2020 13:44:09 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 30E8D1BF41E
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 13:44:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 27FF722EE7
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 13:44:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p6RgSc4edBnT
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 13:44:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 41D02203D5
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  4 May 2020 13:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588599846; x=1620135846;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=tRt426a9NaHfWwsmyzzxQ7T/m3M76kxa4tVMeKwHs3A=;
 b=kkBO8xk6e9a1g/76updyuLJDqtnTWT8m851hLEH+NUY3xgEHe7uw9p54
 mNHS7ACU3zySQcTpmY4cp8Q1gn1k8m6Ay9gDnJl/Dlu2rgAUfhm3Xg/Bx
 lgNo2nYAmW2woaBOVD81Hxojm7rtdai7aMeXbxYCE2nQNbWelHv1y8vnm
 iA0hu+xspxeeTE1rVVV0GWdc1pb+qPb0LdP/tYNQMoxstJTHjfbw/k//P
 2hTOp0EURk0BjF468e4wa/Ksa2lwob7XE35X+octdbUzwz0syFEdoGhAN
 irXnUxA9FOzdtTJ/20utLzxzwy0xWlSRdH9FLIfdypfR3oT38dGg3sGhB Q==;
IronPort-SDR: 8sRE6mCUY7k0sajr25NgsO7+r2NN+EUWjKPjdhucFYs1fQlVM8cxYlnW3vh2pCwuDlRrpEc56G
 oL7KL9h5LI1x/KIRWCIn87d6OJdk5m+Bb5apFEUQov9xvjLBed3KN5r8hp9mgXzLtRJovJlEWe
 EgkaFJPHhhKj+E66e3LnC7qSWnpNpJ1gRnhhM2d+0xCQ/PcOwUwGk4yIKDHoD8UnwKybdkU82N
 GhmJz9fMBGcNtXw/NlSkcNObxgUXTEvZqVkduWw+NfR/DFEgZ5mMtg53y2rIygHvJ+TgzOW+fl
 qQI=
X-IronPort-AV: E=Sophos;i="5.73,352,1583218800"; d="scan'208";a="74667670"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 04 May 2020 06:44:05 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 4 May 2020 06:44:08 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 4 May 2020 06:44:03 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: most: usb: fix exception handling
Date: Mon, 4 May 2020 15:44:00 +0200
Message-ID: <1588599840-13237-1-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
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
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes error handling on function parameters.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/usb/usb.c | 33 +++++++++++++++++----------------
 1 file changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index e8c5a8c..e5276524 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -229,14 +229,14 @@ static unsigned int get_stream_frame_size(struct most_channel_config *cfg)
  */
 static int hdm_poison_channel(struct most_interface *iface, int channel)
 {
-	struct most_dev *mdev = to_mdev(iface);
+	struct most_dev *mdev;
 	unsigned long flags;
 	spinlock_t *lock; /* temp. lock */
 
 	if (unlikely(!iface)) {
-		dev_warn(&mdev->usb_device->dev, "Poison: Bad interface.\n");
-		return -EIO;
+		return -EFAULT;
 	}
+	mdev = to_mdev(iface);
 	if (unlikely(channel < 0 || channel >= iface->num_channels)) {
 		dev_warn(&mdev->usb_device->dev, "Channel ID out of range.\n");
 		return -ECHRNG;
@@ -278,13 +278,13 @@ static int hdm_add_padding(struct most_dev *mdev, int channel, struct mbo *mbo)
 	unsigned int j, num_frames;
 
 	if (!frame_size)
-		return -EIO;
+		return -EFAULT;
 	num_frames = mbo->buffer_length / frame_size;
 
 	if (num_frames < 1) {
 		dev_err(&mdev->usb_device->dev,
 			"Missed minimal transfer unit.\n");
-		return -EIO;
+		return -EINVAL;
 	}
 
 	for (j = num_frames - 1; j > 0; j--)
@@ -312,7 +312,7 @@ static int hdm_remove_padding(struct most_dev *mdev, int channel,
 	unsigned int j, num_frames;
 
 	if (!frame_size)
-		return -EIO;
+		return -EFAULT;
 	num_frames = mbo->processed_length / USB_MTU;
 
 	for (j = 1; j < num_frames; j++)
@@ -560,7 +560,7 @@ static int hdm_enqueue(struct most_interface *iface, int channel,
 	void *virt_address;
 
 	if (unlikely(!iface || !mbo))
-		return -EIO;
+		return -EFAULT;
 	if (unlikely(iface->num_channels <= channel || channel < 0))
 		return -ECHRNG;
 
@@ -666,18 +666,18 @@ static int hdm_configure_channel(struct most_interface *iface, int channel,
 {
 	unsigned int num_frames;
 	unsigned int frame_size;
-	struct most_dev *mdev = to_mdev(iface);
-	struct device *dev = &mdev->usb_device->dev;
+	struct most_dev *mdev;
+	struct device *dev;
 
+	if (unlikely(!iface || !conf))
+		return -EFAULT;
+	mdev = to_mdev(iface);
+	dev = &mdev->usb_device->dev;
 	mdev->is_channel_healthy[channel] = true;
 	mdev->clear_work[channel].channel = channel;
 	mdev->clear_work[channel].mdev = mdev;
 	INIT_WORK(&mdev->clear_work[channel].ws, wq_clear_halt);
 
-	if (unlikely(!iface || !conf)) {
-		dev_err(dev, "Bad interface or config pointer.\n");
-		return -EINVAL;
-	}
 	if (unlikely(channel < 0 || channel >= iface->num_channels)) {
 		dev_err(dev, "Channel ID out of range.\n");
 		return -EINVAL;
@@ -747,11 +747,12 @@ static void hdm_request_netinfo(struct most_interface *iface, int channel,
 {
 	struct most_dev *mdev;
 
-	BUG_ON(!iface);
+	if (!iface || !on_netinfo) {
+		WARN_ON(1);
+		return;
+	}
 	mdev = to_mdev(iface);
 	mdev->on_netinfo = on_netinfo;
-	if (!on_netinfo)
-		return;
 
 	mdev->link_stat_timer.expires = jiffies + HZ;
 	mod_timer(&mdev->link_stat_timer, mdev->link_stat_timer.expires);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
