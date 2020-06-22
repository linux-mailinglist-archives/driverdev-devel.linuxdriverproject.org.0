Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A24B3203265
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Jun 2020 10:48:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id CB7958914A;
	Mon, 22 Jun 2020 08:48:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NesHmhsvi2UC; Mon, 22 Jun 2020 08:48:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 89B1F88CC7;
	Mon, 22 Jun 2020 08:48:29 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 121231BF488
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 007D7203D1
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZUFXmY4etMTW
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by silver.osuosl.org (Postfix) with ESMTPS id D490B2154E
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 22 Jun 2020 08:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592815701; x=1624351701;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=kEHsUn3IwD2o8gO6NRmQZxG5Kx1zKe28a5wFb+ON1IQ=;
 b=QzQphJ4iDJWTsrRQgEhejhSD2i3gUuFsSCxFIs4CztkbNU1+v5tpe1x7
 SAzV9J1CRMnW/p/dROeIeCCQbEPEzQvsh5bneFoBfYoMCvpEwnTRNL0PM
 MnzyAraEV4NnfQjk5hCq9WUOkFaEr0L/t/T8mPtmlBWjuT/C7+P0EZvIq
 z84P8mybViNTBQqsLWJ3yK/zf5PR+h+MsbFo/vd04MNG1jH1lZQOKrkoD
 /3qVvj1QCXOhZIzs3aatdD/WWCLillvjF03oshs0GfhPaR2G2kC7VPdOB
 aTlDwHyC8+zwTXG184RPflInxTrc83hXQam1spxGMjil9QyIWlnfueIFP g==;
IronPort-SDR: OrXrrDPjYqMKAIletwCFNJTBOQHy3aXCnyk2cjKHdpkwcOo7Tu5Z8P2tybZf/sPSdX5owcmoGz
 FQaW1mmzXjZkBhdgupZe1KuhHN+HgH0z/BEI5mdqHT70/lKKttZhKHjq/qlehDmwxQIGuEg5tI
 gXkQUCIkzn6oIly3/F1mhlLtfIlf9v3rvWsK+VJfkmF6G7kSGA2i/5tgNP6rJQxAJhRw+HKYdu
 rdJ9GACOF/VCkNEAd/loCH8GcrVZ3+vxx+cfmvSk+OH/dw9nt4KRzyqLX+FS8ICsGUPEjZxB6x
 TP4=
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="84541910"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 22 Jun 2020 01:48:21 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 22 Jun 2020 01:48:20 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 22 Jun 2020 01:48:19 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 2/6] staging: most: cdev: use dev_*() functions to print
 messages
Date: Mon, 22 Jun 2020 10:48:11 +0200
Message-ID: <1592815695-19305-3-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592815695-19305-1-git-send-email-christian.gromm@microchip.com>
References: <1592815695-19305-1-git-send-email-christian.gromm@microchip.com>
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

This patch removes the pr_*() functions and uses dev_*() instead.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/cdev/cdev.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index 093b44d..394c762 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -5,7 +5,6 @@
  * Copyright (C) 2013-2015 Microchip Technology Germany II GmbH & Co. KG
  */
 
-#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 #include <linux/module.h>
 #include <linux/sched.h>
 #include <linux/fs.h>
@@ -375,7 +374,7 @@ static int comp_rx_completion(struct mbo *mbo)
 	spin_unlock(&c->unlink);
 #ifdef DEBUG_MESG
 	if (kfifo_is_full(&c->fifo))
-		pr_info("WARN: Fifo is full\n");
+		dev_warn(c->dev, "Fifo is full\n");
 #endif
 	wake_up_interruptible(&c->wq);
 	return 0;
@@ -395,14 +394,15 @@ static int comp_tx_completion(struct most_interface *iface, int channel_id)
 	if (!iface)
 		return -EINVAL;
 
+	c = get_channel(iface, channel_id);
+	if (!c)
+		return -ENXIO;
+
 	if ((channel_id < 0) || (channel_id >= iface->num_channels)) {
-		pr_info("Channel ID out of range\n");
+		dev_warn(c->dev, "Channel ID out of range\n");
 		return -EINVAL;
 	}
 
-	c = get_channel(iface, channel_id);
-	if (!c)
-		return -ENXIO;
 	wake_up_interruptible(&c->wq);
 	return 0;
 }
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
