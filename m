Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC6B1D495A
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 11:21:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 55335896A4;
	Fri, 15 May 2020 09:21:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GNl-T3SZxBOW; Fri, 15 May 2020 09:21:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id ADCEF8967F;
	Fri, 15 May 2020 09:21:30 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE5EE1BF2C1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AB6F487D2A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qzkA9a5Iv96Q
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0090B87D2F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589534482; x=1621070482;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=/ShI/Q7GIZEij7XyN+mHuuH9rRjoAPcdOsaNnOKnAmM=;
 b=1xo3H+UxwsICy04xUJQu8stmyWoWKvvQS4vw/VPpmWKuDZEjjqbdOPWm
 W8kM8d/aJ1HqBoWZyPNuy2MIxWMelaZBVaoX2QQXGAqxXwJvnMDtGBc32
 DUwrJJKBRC9zm/fvwnLZEMln7PaX4lwveND/iL9ZojF5GJDMjHfhWTVq8
 w+czUfCV1tyN9Ha5k2PTk7L9K9awo8VSopEnx0p0ryCD68DyM13mUd1nH
 p5dD6NWt2BT1NWn8KZwq/yRwfEvLZ6xqxZut/Rnd9TcelUW24xVteHoXh
 sNVGwoyHfLgJlNTZga1J8H+2+bauglNMFhK+6n3pXQB7912XSAs33RPIh w==;
IronPort-SDR: KdRx2A/lKSmA5GNhpUQOWhCnwuOa9uOCvT7qwiEZgVMoMiBIlUURrI5Vd+B4ZKNouVxL3fdrMF
 AKBc1zSErz9E8wgXoqbFFVQEo0Ge08K5nzBaLEFGddFiakcjkFSLCMPLRqVv3sQ/JAQ5vmwCDJ
 HVumfDTzJ07x9J5bVvOwIyF+wZ5MM0Sv4YRSbdJW6g8YCf3QX9g+admThu0a+IDMVcRftU63w6
 kq5YAWfjXBvzxm35DIydMAdp72n1iMCeI7lA/vuGnRjuLyIsXbUzERgIU0dOy6YaixOgZWBBiT
 X6o=
X-IronPort-AV: E=Sophos;i="5.73,394,1583218800"; d="scan'208";a="76018850"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 02:21:15 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 02:21:17 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 15 May 2020 02:21:12 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v3 4/7] staging: most: usb: use dev_dbg function
Date: Fri, 15 May 2020 11:21:02 +0200
Message-ID: <1589534465-7423-5-git-send-email-christian.gromm@microchip.com>
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

This patch replaces the functions dev_notice with dev_dbg to silence
the driver during normal operation.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
v2:
v3:

 drivers/staging/most/usb/usb.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 36c277f..8995ed0 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -1035,17 +1035,17 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
 		init_usb_anchor(&mdev->busy_urbs[i]);
 		spin_lock_init(&mdev->channel_lock[i]);
 	}
-	dev_notice(dev, "claimed gadget: Vendor=%4.4x ProdID=%4.4x Bus=%02x Device=%02x\n",
-		   le16_to_cpu(usb_dev->descriptor.idVendor),
-		   le16_to_cpu(usb_dev->descriptor.idProduct),
-		   usb_dev->bus->busnum,
-		   usb_dev->devnum);
-
-	dev_notice(dev, "device path: /sys/bus/usb/devices/%d-%s:%d.%d\n",
-		   usb_dev->bus->busnum,
-		   usb_dev->devpath,
-		   usb_dev->config->desc.bConfigurationValue,
-		   usb_iface_desc->desc.bInterfaceNumber);
+	dev_dbg(dev, "claimed gadget: Vendor=%4.4x ProdID=%4.4x Bus=%02x Device=%02x\n",
+		le16_to_cpu(usb_dev->descriptor.idVendor),
+		le16_to_cpu(usb_dev->descriptor.idProduct),
+		usb_dev->bus->busnum,
+		usb_dev->devnum);
+
+	dev_dbg(dev, "device path: /sys/bus/usb/devices/%d-%s:%d.%d\n",
+		usb_dev->bus->busnum,
+		usb_dev->devpath,
+		usb_dev->config->desc.bConfigurationValue,
+		usb_iface_desc->desc.bInterfaceNumber);
 
 	ret = most_register_interface(&mdev->iface);
 	if (ret)
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
