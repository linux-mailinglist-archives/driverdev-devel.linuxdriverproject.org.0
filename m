Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BDA1D31B6
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 15:46:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5EBC287AA8;
	Thu, 14 May 2020 13:46:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OMh8VE4S7nPG; Thu, 14 May 2020 13:46:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 20E4E87A7B;
	Thu, 14 May 2020 13:46:47 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E7391BF31F
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5A908270F9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ak4fJ63sK2p8
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 43C1B26FFF
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589464000; x=1621000000;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=q62AaMvRlnJWHFhcdKw6BSnQ1+0vKJEbrDyzf0ZKEbo=;
 b=dpVuYCI9ObPruUUE8I/1t/DJzGnzITTfDiY9Ykn0LXE3jcr4jS9d7xtP
 0ZajLaf/3E8xgMFckRWkcL/DFxh1A6n5kcjPNCTGc0yaCF+KjohfUjEyY
 THeTUR86Bc/m2dafgpeGzs9D5opJmQ08j3PF0nMnl/uR8sJO+/SkaYqgV
 bxSeCq2H53EeGnG0u+B1/uFHlApZve66zezje4trgaOsHwMGd/6gwVIH+
 4P9ylDIFc7pYIP8Obpj5MOaoU9lc9+SfE5Oq+FgZcNQPbJ4yEe1B+uUFe
 BMZW52v9R3MEC+QKAVwXG8PGPoxdETfDRwKTQWZhn1eHDucL6O9m8vY6W g==;
IronPort-SDR: QT6xHZ9BqKXJ2PUNCtCgHwvy7pOtuQTx074zY1NHlqE5YyMnZf0noO+zNWS8PVhHsvpZd9J9QQ
 WulfXVwhJ7IkQL0VIGo+U1iFKQVKC7B3f8jwnpduc8/jmXwva6Xx9eVjhmed9Jq9mNeyQ7M8Yz
 Q6IupYP51Q3uAkjXbvO7oIbm8+Xht6s16ZTipc7lSRWhwoAb3RJyZIjws571EeoQdaDhYLwMhX
 dLS67wuk6cdETux4QZMBWbOGvPlJ85M5hfyv/xaz9sJu72LANtCJRk8TdgNGMUHWFhmOxJiQwa
 woE=
X-IronPort-AV: E=Sophos;i="5.73,391,1583218800"; d="scan'208";a="75894437"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 May 2020 06:46:40 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 May 2020 06:46:38 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 14 May 2020 06:46:40 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 4/7] staging: most: usb: use dev_dbg function
Date: Thu, 14 May 2020 15:46:26 +0200
Message-ID: <1589463989-30029-5-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589463989-30029-1-git-send-email-christian.gromm@microchip.com>
References: <1589463989-30029-1-git-send-email-christian.gromm@microchip.com>
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
 drivers/staging/most/usb/usb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 25e114d..882f59e 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -1130,13 +1130,13 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
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
