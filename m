Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E19971D2BE3
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 11:53:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9486F88B5D;
	Thu, 14 May 2020 09:53:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ztfTbFNse3Hp; Thu, 14 May 2020 09:53:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9EE2D88B85;
	Thu, 14 May 2020 09:53:11 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C006D1BF342
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BD0BC88B47
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M-WdpfamvnyT
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0680088B5D
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589449985; x=1620985985;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=Mmw5hIPN0sKQmWjs3u78F9H5tWaBpxFqYIUb5M3NgL0=;
 b=indvnUJEv0mUipQPOw1ckWoPPvTQjCmN1EapOvjsf02f4aVFsxNdHi/a
 f7HHolNwubZ+qZ3dQVTLzPbFUOea+IAaflixGBdbZBsf4C4Qzt1htMXiG
 t3e2Exdwmjsj8E3/OKD3yC0QLC4g5UjoXvlt3gmEPU/ZXpqVZLNbg7Aaj
 Qzs1ZJhkKBJJtdmMOAbbjeWCopfLo/MqrfgKY2ZNE9KLeqzOY/y1tOHcf
 E/AS+NbZfzDowDDPrxmd/IKuz3eRiHqWCFToRjZCOq1tGmSAhA6VYRqa0
 g3+1AUAQ7o3nGKD3sWvKbq6GRIu9EKwusDugBbDlx85r1WGq0i4FEgqss A==;
IronPort-SDR: Pb+6G9Wuk+s0TdWRLxI6dy9N3aB6clfYRYun3iDWldHb7ralsK6p26Xwf0YcxkmwHRbwLVAtY9
 YKKp1e+RL4rPdX25ePYaQFrnOTJ0UWSaVK4gA0xdIlr0pQA6dh6q9J+6MZaZGWTifHMbhfpK1D
 iW+doTtZkXSQCmBJEmAlwCQtXSgNgj3GrsXyE82IvuNyeoTjQirHRVgY5EaY2mfjyfuPG8M1nI
 Us6Tg8huRFB5pj2AzqFzad8heh66OwQA+KaIsR+EC7YOov0gg1KhVBnE17IoobI+YGrkaFJz66
 HT4=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="75245167"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 May 2020 02:53:05 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 May 2020 02:53:04 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 14 May 2020 02:53:04 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v2 4/8] drivers: most: usb: check number of reported endpoints
Date: Thu, 14 May 2020 11:52:52 +0200
Message-ID: <1589449976-11378-5-git-send-email-christian.gromm@microchip.com>
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

This patch checks the number of endpoints reported by the USB
interface descriptor and throws an error if the number exceeds
MAX_NUM_ENDPOINTS.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
v2:

 drivers/most/most_usb.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/most/most_usb.c b/drivers/most/most_usb.c
index 49d0b40..1655fcd 100644
--- a/drivers/most/most_usb.c
+++ b/drivers/most/most_usb.c
@@ -1044,13 +1044,17 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
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
@@ -1179,11 +1183,6 @@ hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
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
