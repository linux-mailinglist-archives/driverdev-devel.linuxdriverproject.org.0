Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3775BD46
	for <lists+driverdev-devel@lfdr.de>; Mon,  1 Jul 2019 15:49:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 00E9985EF3;
	Mon,  1 Jul 2019 13:49:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jL-z41FJIkpB; Mon,  1 Jul 2019 13:49:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE96785EBE;
	Mon,  1 Jul 2019 13:49:42 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D2F161BF966
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 13:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CA374204E9
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 13:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ipm3VOSHQNy6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 13:49:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id B89C7204BC
 for <driverdev-devel@linuxdriverproject.org>;
 Mon,  1 Jul 2019 13:49:37 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,439,1557212400"; d="scan'208";a="37986951"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 01 Jul 2019 06:49:38 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 1 Jul 2019 06:49:36 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 1 Jul 2019 06:49:34 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: most: remove data sanity check
Date: Mon, 1 Jul 2019 15:49:33 +0200
Message-ID: <1561988973-301-1-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
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

This patch removes the data check in the set_cfg_* functions, because
the modules infacing the hardware (usb, i2c, ...) already have it.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/configfs.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/staging/most/configfs.c b/drivers/staging/most/configfs.c
index 1d8bf29..0254956 100644
--- a/drivers/staging/most/configfs.c
+++ b/drivers/staging/most/configfs.c
@@ -35,56 +35,42 @@ static struct list_head mdev_link_list;
 
 static int set_cfg_buffer_size(struct mdev_link *link)
 {
-	if (!link->buffer_size)
-		return -ENODATA;
 	return most_set_cfg_buffer_size(link->device, link->channel,
 					link->buffer_size);
 }
 
 static int set_cfg_subbuffer_size(struct mdev_link *link)
 {
-	if (!link->subbuffer_size)
-		return -ENODATA;
 	return most_set_cfg_subbuffer_size(link->device, link->channel,
 					   link->subbuffer_size);
 }
 
 static int set_cfg_dbr_size(struct mdev_link *link)
 {
-	if (!link->dbr_size)
-		return -ENODATA;
 	return most_set_cfg_dbr_size(link->device, link->channel,
 				     link->dbr_size);
 }
 
 static int set_cfg_num_buffers(struct mdev_link *link)
 {
-	if (!link->num_buffers)
-		return -ENODATA;
 	return most_set_cfg_num_buffers(link->device, link->channel,
 					link->num_buffers);
 }
 
 static int set_cfg_packets_xact(struct mdev_link *link)
 {
-	if (!link->packets_per_xact)
-		return -ENODATA;
 	return most_set_cfg_packets_xact(link->device, link->channel,
 					 link->packets_per_xact);
 }
 
 static int set_cfg_direction(struct mdev_link *link)
 {
-	if (!strlen(link->direction))
-		return -ENODATA;
 	return most_set_cfg_direction(link->device, link->channel,
 				      link->direction);
 }
 
 static int set_cfg_datatype(struct mdev_link *link)
 {
-	if (!strlen(link->datatype))
-		return -ENODATA;
 	return most_set_cfg_datatype(link->device, link->channel,
 				     link->datatype);
 }
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
