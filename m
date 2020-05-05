Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2A41C525E
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 12:00:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5FA0C234AC;
	Tue,  5 May 2020 10:00:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XBYwgnB4KtZ7; Tue,  5 May 2020 10:00:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0D920204EE;
	Tue,  5 May 2020 10:00:41 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B620D1BF2E4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B2F2D878AF
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uVxEHvdbH3sK
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1E7AF8788F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue,  5 May 2020 10:00:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588672836; x=1620208836;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=PzVrejahgsQ46RCKgDEaRmo9uv0O5rkWydddSEwwRpc=;
 b=DVRjkNjQU6GCsUsEAavBy+btfbjHRko6oxA8QHQeB5U2F4YMC3XP835x
 wFLDeooc64Pgw63BmaYsOZo9md/NpHF7Y2RFfqTDTC7oshoM0vV1p9duT
 ctwa5Yd7ly2mT3iK+EyOhK9o0KgveO0uM7ZXMF6EsuFwomRmgwKZGuGoO
 H4eDjc8jX1GnSyN9WgurzoGqW/jLApky2Rn/AnJRbz8Pxm324Hvh+7qWG
 JvQq6ArLNJfZfaylDi5L0NZHvE7Rw0L1vB5lxpOEbgqRMShYyY3tMC+b8
 fGe6fOINj6dQT3HAA3G983xzsYXwYu6FmBNo7OFPvLHYkh55+uU/3hrZs A==;
IronPort-SDR: ZnY7rdfetiugGuIESWUHD6eDFmNAlXk8t3W/BEuGGmFdIjPBYIlGyTsN0udCLs06fVl7GHW2en
 nLw0dMqA0bY8CpZs+DaYqQQaCUWeqv+dplwkRX9iJdxB+eMatQV3nIBCg+tYbeDxUzmPejjPkE
 seO72cCJoEvM/R77Kms65tVczmPyQHKyujk4+YpTiuit0QS+GI9nfLK4MlynsHHxKiHdo02P7n
 2PuV3FlQN4Ma+oMQWhhR+cGrncXMcNYjTmeNQqSV5Aq3EEIWU0kj0z4Dez5ToeGNfTv+SAbdsz
 J3s=
X-IronPort-AV: E=Sophos;i="5.73,354,1583218800"; d="scan'208";a="74250519"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 05 May 2020 03:00:35 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 5 May 2020 03:00:35 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 5 May 2020 03:00:34 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 2/4] staging: most: usb: use EINVAL error code
Date: Tue, 5 May 2020 12:00:27 +0200
Message-ID: <1588672829-28883-3-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588672829-28883-1-git-send-email-christian.gromm@microchip.com>
References: <1588672829-28883-1-git-send-email-christian.gromm@microchip.com>
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

This patch replaces the error code EIO with EINVAL, when there is no IO
happening.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/usb/usb.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 9527e31..1087ad9 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -274,13 +274,13 @@ static int hdm_add_padding(struct most_dev *mdev, int channel, struct mbo *mbo)
 	unsigned int j, num_frames;
 
 	if (!frame_size)
-		return -EIO;
+		return -EINVAL;
 	num_frames = mbo->buffer_length / frame_size;
 
 	if (num_frames < 1) {
 		dev_err(&mdev->usb_device->dev,
 			"Missed minimal transfer unit.\n");
-		return -EIO;
+		return -EINVAL;
 	}
 
 	for (j = num_frames - 1; j > 0; j--)
@@ -308,7 +308,7 @@ static int hdm_remove_padding(struct most_dev *mdev, int channel,
 	unsigned int j, num_frames;
 
 	if (!frame_size)
-		return -EIO;
+		return -EINVAL;
 	num_frames = mbo->processed_length / USB_MTU;
 
 	for (j = 1; j < num_frames; j++)
@@ -556,7 +556,7 @@ static int hdm_enqueue(struct most_interface *iface, int channel,
 	void *virt_address;
 
 	if (unlikely(!mbo))
-		return -EIO;
+		return -EINVAL;
 	if (unlikely(iface->num_channels <= channel || channel < 0))
 		return -ECHRNG;
 
@@ -577,7 +577,7 @@ static int hdm_enqueue(struct most_interface *iface, int channel,
 
 	if ((conf->direction & MOST_CH_TX) && mdev->padding_active[channel] &&
 	    hdm_add_padding(mdev, channel, mbo)) {
-		retval = -EIO;
+		retval = -EINVAL;
 		goto err_free_urb;
 	}
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
