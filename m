Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 14E3FF31C2
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Nov 2019 15:49:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DDAB4844AF;
	Thu,  7 Nov 2019 14:49:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ToH0uxCh3N4y; Thu,  7 Nov 2019 14:49:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F38708448C;
	Thu,  7 Nov 2019 14:49:40 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 110621BF3D2
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 14:49:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0CFAD203BD
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 14:49:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fMb-Iu1QWugg
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 14:49:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by silver.osuosl.org (Postfix) with ESMTPS id 90E3520378
 for <driverdev-devel@linuxdriverproject.org>;
 Thu,  7 Nov 2019 14:49:37 +0000 (UTC)
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: qfuRkPr9JDkgGF/61OrPTP7vDSy5NP2hZAfgJFhhK0IxBGk35y+TuZwtB9dFIiNwm1bppfA1pB
 IhHgLjNw/kts9BJdrjjH0EChqflRbG6T+4CpCjuJfUh1ociJMwYHm+sFK4LGGxU3W6L4LUazfu
 sFG325UKlW9FAXhMLAkYnxeOUnbv/6EmOyzv1oH/Xsgtrnhgn/VXmkR7wQxgqNQJUoPrURn+E5
 QSBhqOlL9diHCJMEvtKn93Ny9XnfLdHAxDSUj1Tt5vgeL1f7SLfHJElhPv0ylXLJd3e3McmA85
 xDU=
X-IronPort-AV: E=Sophos;i="5.68,278,1569308400"; d="scan'208";a="53315467"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Nov 2019 07:49:36 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 7 Nov 2019 07:49:37 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 7 Nov 2019 07:49:34 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: most: remove string termination dependency from user
 space data
Date: Thu, 7 Nov 2019 15:49:28 +0100
Message-ID: <1573138169-27562-1-git-send-email-christian.gromm@microchip.com>
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

This patch removes the constraint that user space data has to be terminated
with a new line character. It is needed to let the user choose how the data
is formatted.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/configfs.c |  4 ++++
 drivers/staging/most/core.c     | 18 +++++++++---------
 2 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/most/configfs.c b/drivers/staging/most/configfs.c
index 64c65c2..c06cf84 100644
--- a/drivers/staging/most/configfs.c
+++ b/drivers/staging/most/configfs.c
@@ -164,6 +164,7 @@ static ssize_t mdev_link_direction_store(struct config_item *item,
 	    !sysfs_streq(page, "dir_tx") && !sysfs_streq(page, "tx"))
 		return -EINVAL;
 	strcpy(mdev_link->direction, page);
+	strim(mdev_link->direction);
 	return count;
 }
 
@@ -182,6 +183,7 @@ static ssize_t mdev_link_datatype_store(struct config_item *item,
 	    !sysfs_streq(page, "isoc_avp"))
 		return -EINVAL;
 	strcpy(mdev_link->datatype, page);
+	strim(mdev_link->datatype);
 	return count;
 }
 
@@ -196,6 +198,7 @@ static ssize_t mdev_link_device_store(struct config_item *item,
 	struct mdev_link *mdev_link = to_mdev_link(item);
 
 	strcpy(mdev_link->device, page);
+	strim(mdev_link->device);
 	return count;
 }
 
@@ -210,6 +213,7 @@ static ssize_t mdev_link_channel_store(struct config_item *item,
 	struct mdev_link *mdev_link = to_mdev_link(item);
 
 	strcpy(mdev_link->channel, page);
+	strim(mdev_link->channel);
 	return count;
 }
 
diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index 8e9a0b6..f7d2c78 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -84,11 +84,11 @@ static const struct {
 	int most_ch_data_type;
 	const char *name;
 } ch_data_type[] = {
-	{ MOST_CH_CONTROL, "control\n" },
-	{ MOST_CH_ASYNC, "async\n" },
-	{ MOST_CH_SYNC, "sync\n" },
-	{ MOST_CH_ISOC, "isoc\n"},
-	{ MOST_CH_ISOC, "isoc_avp\n"},
+	{ MOST_CH_CONTROL, "control" },
+	{ MOST_CH_ASYNC, "async" },
+	{ MOST_CH_SYNC, "sync" },
+	{ MOST_CH_ISOC, "isoc"},
+	{ MOST_CH_ISOC, "isoc_avp"},
 };
 
 /**
@@ -675,13 +675,13 @@ int most_set_cfg_direction(char *mdev, char *mdev_ch, char *buf)
 
 	if (!c)
 		return -ENODEV;
-	if (!strcmp(buf, "dir_rx\n")) {
+	if (!strcmp(buf, "dir_rx")) {
 		c->cfg.direction = MOST_CH_RX;
-	} else if (!strcmp(buf, "rx\n")) {
+	} else if (!strcmp(buf, "rx")) {
 		c->cfg.direction = MOST_CH_RX;
-	} else if (!strcmp(buf, "dir_tx\n")) {
+	} else if (!strcmp(buf, "dir_tx")) {
 		c->cfg.direction = MOST_CH_TX;
-	} else if (!strcmp(buf, "tx\n")) {
+	} else if (!strcmp(buf, "tx")) {
 		c->cfg.direction = MOST_CH_TX;
 	} else {
 		pr_info("Invalid direction\n");
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
