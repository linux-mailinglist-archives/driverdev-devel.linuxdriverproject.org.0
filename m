Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA251E3D36
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 11:06:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8C47524074;
	Wed, 27 May 2020 09:06:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J4FL2DIEtgw4; Wed, 27 May 2020 09:06:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3EB692047C;
	Wed, 27 May 2020 09:06:40 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AD6E71BF2EF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A9F2A87D5D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QggChEus2hmX
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2FEB387D3D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590570394; x=1622106394;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=4fyavP8fBjWc2V5YbqLvlyLFNgK3DRieJZKIShd5urI=;
 b=E2MwPmnJt4pllixtL7a2M4bxLKtcYb/z0SU1y99PnVF+gkseRUXO+Pj5
 9FOPh6naINQrw6nqFmOEIkuTdBlvcqTYU15bgwmZno+xeeZQwwMb2z8Fz
 TyWV0BdNT4hSnQB/9XC5q5ctQ+JOZl2c7+RVptubr/AH6YZctwZ++YeHN
 SJeq466eDUoV/Yg8vgYYhSmPi6uIphNkDTcZfS0FAhp0lVl5bG2H/YHXs
 NXGIlPlisXhwckPpQccJQhpZV0cMS9/foxHQ0gkfpV6Nn4KFdlx9UHEza
 j3lHO12GwF7r3wQ1Mb9tQVab1L2VrInpEU+XstHm3V15+5fRCdGUSyW6s w==;
IronPort-SDR: cL4GyGm1NPvPFKOUONDjewgN2Rmqt+MhZ3fPmRtrQgUXkqWsplDL3JVVRRx2RUouzuNt6P66/T
 iHcP7p1k3Za09BN+vBzxRK5PsW1F1gFiM1cxTWqWIq4psfYfYCAhdPx7DCH0fKNiKyKV4yFKsr
 8tvUTyP3al2zai9l92XlH0YQf6YcZZ/86PjOGe9wHe/kY0LxlVKE8Uwb9TwI1BTfkpsn8RFC+x
 LtpniwsYM3ZXRWARFGhTkUTkkTyM4LAKJxPwvDsYiOFvCfD3vuwvosjw/MpenZsuYozB8yNrVk
 iaw=
X-IronPort-AV: E=Sophos;i="5.73,440,1583218800"; d="scan'208";a="77204588"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 May 2020 02:06:34 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 May 2020 02:06:33 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 27 May 2020 02:06:32 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 02/10] staging: most: usb: don't use expressions that might
 fail in a declaration
Date: Wed, 27 May 2020 11:06:19 +0200
Message-ID: <1590570387-27069-3-git-send-email-christian.gromm@microchip.com>
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

This patch moves function calls that can fail out of the declararion block
of a function body. This is done to enhance readability.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
---
 drivers/staging/most/usb/usb.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 0e1264d..fd0d885 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -139,9 +139,10 @@ static void wq_netinfo(struct work_struct *wq_obj);
 static inline int drci_rd_reg(struct usb_device *dev, u16 reg, u16 *buf)
 {
 	int retval;
-	__le16 *dma_buf = kzalloc(sizeof(*dma_buf), GFP_KERNEL);
+	__le16 *dma_buf;
 	u8 req_type = USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_DEVICE;
 
+	dma_buf = kzalloc(sizeof(*dma_buf), GFP_KERNEL);
 	if (!dma_buf)
 		return -ENOMEM;
 
@@ -846,8 +847,9 @@ static ssize_t value_store(struct device *dev, struct device_attribute *attr,
 	const char *name = attr->attr.name;
 	struct most_dci_obj *dci_obj = to_dci_obj(dev);
 	struct usb_device *usb_dev = dci_obj->usb_device;
-	int err = kstrtou16(buf, 16, &val);
+	int err;
 
+	err = kstrtou16(buf, 16, &val);
 	if (err)
 		return err;
 
@@ -939,13 +941,14 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
 	struct usb_host_interface *usb_iface_desc = interface->cur_altsetting;
 	struct usb_device *usb_dev = interface_to_usbdev(interface);
 	struct device *dev = &usb_dev->dev;
-	struct most_dev *mdev = kzalloc(sizeof(*mdev), GFP_KERNEL);
+	struct most_dev *mdev;
 	unsigned int i;
 	unsigned int num_endpoints;
 	struct most_channel_capability *tmp_cap;
 	struct usb_endpoint_descriptor *ep_desc;
 	int ret = -ENOMEM;
 
+	mdev = kzalloc(sizeof(*mdev), GFP_KERNEL);
 	if (!mdev)
 		return -ENOMEM;
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
