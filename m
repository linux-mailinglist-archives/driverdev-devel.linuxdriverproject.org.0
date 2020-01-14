Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A1513AE26
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 16:58:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1D7E585F41;
	Tue, 14 Jan 2020 15:58:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a8PrIV8fBu5N; Tue, 14 Jan 2020 15:58:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1967285F15;
	Tue, 14 Jan 2020 15:58:16 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F3A2A1BF574
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F0188860BE
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S9PbeG3qUL8k
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4838F853E3
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:08 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 7xN6iDojUPik15c6NEdkhLAaORKJnZqOvF++eymvnaLU0JW5c6lD6tFeq7Slh8pCDhZdWs7ueh
 Tuksmw4V3L7jDLf3ueq3yUhrmulfPqpw14v4FK/8Laz8B7BPGlKjj1idZZ7++TC/qSLZ1OqV3t
 ftVW+sA+vRwLV1vMC0deK5HbtPiAIQh0If1W53FWtaXus6o8J/kbvnIhcYnRRmYRzdXOLx9zu9
 KSy3poOGZFM0KxTbvRCqtTc2HILEUzcSLf0UAruv5QwEO9LEX3TmrL/NBrodNUWbt6roApoL0Z
 cG4=
X-IronPort-AV: E=Sophos;i="5.69,433,1571727600"; d="scan'208";a="63208309"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Jan 2020 08:58:07 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Jan 2020 08:58:07 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 14 Jan 2020 08:58:06 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC v3 5/9] staging: most: usb: check for NULL device
Date: Tue, 14 Jan 2020 16:57:54 +0100
Message-ID: <1579017478-3339-6-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579017478-3339-1-git-send-email-christian.gromm@microchip.com>
References: <1579017478-3339-1-git-send-email-christian.gromm@microchip.com>
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

Check if the dci structer has been allocated before trying to release it.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v3:
	This patch has been added to the series.

 drivers/staging/most/usb/usb.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index fe3384a..cae7553 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -1205,8 +1205,10 @@ static void hdm_disconnect(struct usb_interface *interface)
 	del_timer_sync(&mdev->link_stat_timer);
 	cancel_work_sync(&mdev->poll_work_obj);
 
-	most_put_iface_dev(mdev->dci->dev.parent);
-	device_unregister(&mdev->dci->dev);
+	if (mdev->dci) {
+		most_put_iface_dev(mdev->dci->dev.parent);
+		device_unregister(&mdev->dci->dev);
+	}
 	most_deregister_interface(&mdev->iface);
 
 	kfree(mdev->busy_urbs);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
