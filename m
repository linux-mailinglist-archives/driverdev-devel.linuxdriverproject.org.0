Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A32A1D34E4
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 17:19:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7AF97895BD;
	Thu, 14 May 2020 15:19:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R+DZ2urJrta3; Thu, 14 May 2020 15:19:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D950895A0;
	Thu, 14 May 2020 15:19:11 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B73771BF37A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 15:19:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B4210872DF
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 15:19:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1UHoLR7SSQ22
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 15:19:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 15A7B872D8
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 15:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589469541; x=1621005541;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=lUbXm9Hi2Ra7UqsdrP7ZRyeuZc3zmXm9sYSDoqr6Ukc=;
 b=voC5IqYDOpLrnqqq0m9+AZZRYhBGI8+lyokVKdH6zZi23xX60DCyai9a
 SDj6khASMB27J/KEtzxUAdgfm71V8fId9qtGQbIA7KzDz6T0C8MHUYyHs
 LeqV7ZbvzgEHwaj/v+uJnODFB2uYs8aCSOtzMd8N365OR52bEAVm4keS+
 hbHtXntglOjpMUwPI+bb950Ygq5/xWgkpMc1Yf6+iH0oX2vi7mvY9llzW
 8QxA14k+Z0JV14o5j66QUXqb0KnV4eCfsfgqvVxRPBp5YlKo3p+eDJ27+
 UMdXl44WP1NraZAtYHZz7AZC8Vvi5EE9/u4Cj7TT1Kd4WHMj+tzfZ41EY g==;
IronPort-SDR: Hw4LbRd5KLKkWog3YwbbBYlD377fNUU+nzVAwrJ72mssypSUvZXSO0h2z1INf9pEqLZgRygLQm
 UeranlswXdRu2HB6XPDMlF/lpjKfh96uxVa3NdP7GTRPYJP82HvDTavOr6mDG2CYw4GY0rc1iL
 xMoO3ExTwDan0ZZ4J/eD1yOZP/vjO48NdWFbvoEovBzPgu4KfjK9nHgHEcIXERRgZ0Lz+0JfJW
 ff4AZzAxK030pxJa2LpAuwJkXgPESYNPEkqq6OGJePpBxpKaQETTP3YGfBTFPb+LaOFAiB7B+4
 HnM=
X-IronPort-AV: E=Sophos;i="5.73,391,1583218800"; d="scan'208";a="75909810"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 May 2020 08:19:01 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 May 2020 08:19:03 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 14 May 2020 08:19:02 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v2 4/7] staging: most: usb: use dev_dbg function
Date: Thu, 14 May 2020 17:18:49 +0200
Message-ID: <1589469532-21488-5-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589469532-21488-1-git-send-email-christian.gromm@microchip.com>
References: <1589469532-21488-1-git-send-email-christian.gromm@microchip.com>
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

 drivers/staging/most/usb/usb.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index d5c73cb..c3a7e71 100644
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
