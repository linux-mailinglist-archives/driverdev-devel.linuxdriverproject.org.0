Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 350701D31B8
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 15:47:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EF7EE27161;
	Thu, 14 May 2020 13:47:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zXYO8gh91AYp; Thu, 14 May 2020 13:47:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DC52E2701D;
	Thu, 14 May 2020 13:46:55 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5E4991BF96B
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 4FFF32701D
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IUXc3uSMrazV
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by silver.osuosl.org (Postfix) with ESMTPS id 7C838270AE
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 13:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589464001; x=1621000001;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=Rthw9RgyxsSo7CXVnKL+/+TueNiZ78Tg2Sf6xtbmegU=;
 b=IDYBnUjNVqtxEri4SLLqhkO7NvMkd2TZ0NXXwjnKO8bZYWnO3lB23gte
 /wnIFnDAf1J7mzYmV0S/g9BbhiJ9g7OHixX0UwgnZuNrFKB5OdtDvYyeN
 alD6vsD7XUlov3tDk19BhSwPSezYsJsLVM5nGqNjNVOZuz6qTdTj8fCLo
 sg0tphMeyfL8AW9lEVp3nBoMDbIS8oUyi1fWwA6t1AjV80jLqpZIJw5NR
 iytDBvJUymw3Z4ToB3r1YlkgkuAefR3qnFR0ptNHWi41HkZ7iD8+GeRRA
 s/teuQREfwYm2RjUg/9xGBw6TaUF7lvUj3zjM43phrCeyxfeGR3gYRriD A==;
IronPort-SDR: +yJJfPnFu9ZnE4o82sZ4w8RwvUaRAucwpRm96DIxswOCzDNA21w/AHF3nI1il7PeY3tnNO0rFr
 Z7PRhrsEQ4XgwbG1IxRYVtttsCdrJWq4KeWDjvp4sxTy4tEfOhU4Nkj3OI8ZalcqW2BqoOHTc7
 JqZ2sDlNYr9ZVCMZTF+Ns/FHrpDPhia7D/x7cv3+Y+I5/nmbdANGPc6deP/ueSIgueaGZjhNOk
 LoNBBNNDDK5VaxNN6YJfJs75V7ka+KNQx4SnLiAqQ8/wsWx3ZfRa8RfgFBRZCVimTZEKXppV89
 lt8=
X-IronPort-AV: E=Sophos;i="5.73,391,1583218800"; d="scan'208";a="75267238"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 May 2020 06:46:37 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 May 2020 06:46:36 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 14 May 2020 06:46:39 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 3/7] staging: most: usb: check number of reported endpoints
Date: Thu, 14 May 2020 15:46:25 +0200
Message-ID: <1589463989-30029-4-git-send-email-christian.gromm@microchip.com>
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

This patch checks the number of endpoints reported by the USB
interface descriptor and throws an error if the number exceeds
MAX_NUM_ENDPOINTS.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/most/usb/usb.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 76963c0..25e114d 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -1045,13 +1045,17 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
 	unsigned int num_endpoints;
 	struct most_channel_capability *tmp_cap;
 	struct usb_endpoint_descriptor *ep_desc;
-	int ret = 0;
+	int ret;
 
 	if (!mdev)
-		goto err_out_of_memory;
+		return -ENOMEM;
 
 	usb_set_intfdata(interface, mdev);
 	num_endpoints = usb_iface_desc->desc.bNumEndpoints;
+	if (num_endpoints > MAX_NUM_ENDPOINTS) {
+		kfree(mdev);
+		return -EINVAL;
+	}
 	mutex_init(&mdev->io_mutex);
 	INIT_WORK(&mdev->poll_work_obj, wq_netinfo);
 	timer_setup(&mdev->link_stat_timer, link_stat_timer_handler, 0);
@@ -1180,11 +1184,6 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
 	kfree(mdev->conf);
 err_free_mdev:
 	put_device(&mdev->dev);
-err_out_of_memory:
-	if (ret == 0 || ret == -ENOMEM) {
-		ret = -ENOMEM;
-		dev_err(dev, "out of memory\n");
-	}
 	return ret;
 }
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
