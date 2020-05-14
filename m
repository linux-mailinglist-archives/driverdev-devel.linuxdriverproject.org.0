Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA1B1D2BDB
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 11:53:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1427489696;
	Thu, 14 May 2020 09:53:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T-Qdqi3tFIws; Thu, 14 May 2020 09:53:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1054789694;
	Thu, 14 May 2020 09:53:15 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D08D21BF342
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CD809876FF
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xp1QFHEnf1rH
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 527F5878BC
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589449988; x=1620985988;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=ulFIoRuFlAhbgBKdyPyVoH1HEiouU5Elxw0OIIY1pcQ=;
 b=NqflolDYci8TG3eyax4SuyhVL8BLFmCD03VbNSQLD736raf/GEdP7UvU
 hRzoMZjgmva3GxefR49rVni/2BWa16TwiuUhhWq1u/gVpUFylElrnOzwi
 q+R2VYAvSN4iWb63NP/Bx38cMee3rhnmsmhcWvrfbP3ooYMthdzpe8QeG
 JMJqD69e5IVE8RMCx7zNCWz7DO4HXQFR93XnfqhZeYwsUv4Rwv1/yAr+8
 FSnx49oa9dA3pm4ivTOOmsOPTWslYkZr0lB7MxYwYxQqNoHMm8tQGgic4
 k3or0JFn1c3nVLCIqM2XlbqZYzieJ59gIp9R/xnH12pMznv/GqNgST2XY A==;
IronPort-SDR: TM7+S6WU4eYPGBPIPzHkhIql2l8pYsqIPF+JMTyc2i432h/zcoWusOV06+MzErVFQRGnmDiosP
 w/iZ/MrQMtx2M+KFkM3Vn2Uh0616G4Zqqdne1RTdcJMv2jLzSz72sgNd/UUfHpWED0lbTENucI
 6YkgwPGJjmsrpjqgw5bFRW+mzCIMliQIxAvOfnJ8rj6ho3u8+v/UrHQcqRmHWVTH+Z/+D4fLeT
 BzWVlCNVpUOVGhoKtNOWrCGOkEpjVrEg+OPf/w78FbmojNitpW8Q7W0UC7fTnBrZ+elSw0LrRq
 254=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="73430412"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 May 2020 02:53:07 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 May 2020 02:53:06 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 14 May 2020 02:53:05 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v2 5/8] drivers: most: usb: use dev_dbg function
Date: Thu, 14 May 2020 11:52:53 +0200
Message-ID: <1589449976-11378-6-git-send-email-christian.gromm@microchip.com>
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

This patch replaces the functions dev_notice with dev_dbg to silence
the driver during normal operation.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
v2:

 drivers/most/most_usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/most/most_usb.c b/drivers/most/most_usb.c
index 1655fcd..35620a1 100644
--- a/drivers/most/most_usb.c
+++ b/drivers/most/most_usb.c
@@ -1129,13 +1129,13 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
 		init_usb_anchor(&mdev->busy_urbs[i]);
 		spin_lock_init(&mdev->channel_lock[i]);
 	}
-	dev_notice(dev, "claimed gadget: Vendor=%4.4x ProdID=%4.4x Bus=%02x Device=%02x\n",
+	dev_dbg(dev, "claimed gadget: Vendor=%4.4x ProdID=%4.4x Bus=%02x Device=%02x\n",
 		   le16_to_cpu(usb_dev->descriptor.idVendor),
 		   le16_to_cpu(usb_dev->descriptor.idProduct),
 		   usb_dev->bus->busnum,
 		   usb_dev->devnum);
 
-	dev_notice(dev, "device path: /sys/bus/usb/devices/%d-%s:%d.%d\n",
+	dev_dbg(dev, "device path: /sys/bus/usb/devices/%d-%s:%d.%d\n",
 		   usb_dev->bus->busnum,
 		   usb_dev->devpath,
 		   usb_dev->config->desc.bConfigurationValue,
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
