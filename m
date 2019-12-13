Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B541D11E334
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 13:06:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5250A25C9B;
	Fri, 13 Dec 2019 12:06:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uWNcmJGd7L2Z; Fri, 13 Dec 2019 12:06:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 35C2125C00;
	Fri, 13 Dec 2019 12:06:31 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 661551BF2AE
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 544D888542
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UuiAoigUKFEd
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C5B6088534
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:25 +0000 (UTC)
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: Efd8ZhG4RktUyLSwnfpg5ajHk3tLyzKgU7FifQW8eEc6CGk5KTdJ60HDMW+GvYV7sb0ur6dH1E
 XYFVbcYLPELOpIUBBjdX/3v+7kMdEMSXx2KdNtKlZffbO2J8jEIxwnzKCUxQrhKqtR5rMiOCGS
 ElDcY2ED9rNnX2OhhqmKS69VED4oNlLYmoA2dOH/LIU9nuq0kPygth8fpNCT2ZeQlZaadaFgnL
 fovD7Mo2sGpFVo+v3rGFov/Evzu/I/lZKmEezbFVMo7TvY1qDGelVOKEQcQXSJAEBU+f8Y8PGq
 3h0=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="58439038"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 05:05:11 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 05:05:10 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 13 Dec 2019 05:05:10 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC v2 4/9] staging: most: configfs: use strlcpy
Date: Fri, 13 Dec 2019 13:04:17 +0100
Message-ID: <1576238662-16512-5-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
References: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
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

This patch uses strlcpy to copy data provided by userspace in order
to not overflow the allocated space.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v2:
	This patch has beed added to the series.

 drivers/staging/most/configfs.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/most/configfs.c b/drivers/staging/most/configfs.c
index d671022..9fbcadf 100644
--- a/drivers/staging/most/configfs.c
+++ b/drivers/staging/most/configfs.c
@@ -197,7 +197,7 @@ static ssize_t mdev_link_device_store(struct config_item *item,
 {
 	struct mdev_link *mdev_link = to_mdev_link(item);
 
-	strcpy(mdev_link->device, page);
+	strlcpy(mdev_link->device, page, sizeof(mdev_link->device));
 	strim(mdev_link->device);
 	return count;
 }
@@ -212,7 +212,7 @@ static ssize_t mdev_link_channel_store(struct config_item *item,
 {
 	struct mdev_link *mdev_link = to_mdev_link(item);
 
-	strcpy(mdev_link->channel, page);
+	strlcpy(mdev_link->channel, page, sizeof(mdev_link->channel));
 	strim(mdev_link->channel);
 	return count;
 }
@@ -227,7 +227,8 @@ static ssize_t mdev_link_comp_store(struct config_item *item,
 {
 	struct mdev_link *mdev_link = to_mdev_link(item);
 
-	strcpy(mdev_link->comp, page);
+	strlcpy(mdev_link->comp, page, sizeof(mdev_link->comp));
+	strim(mdev_link->comp);
 	return count;
 }
 
@@ -242,7 +243,8 @@ static ssize_t mdev_link_comp_params_store(struct config_item *item,
 {
 	struct mdev_link *mdev_link = to_mdev_link(item);
 
-	strcpy(mdev_link->comp_params, page);
+	strlcpy(mdev_link->comp_params, page, sizeof(mdev_link->comp_params));
+	strim(mdev_link->comp_params);
 	return count;
 }
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
