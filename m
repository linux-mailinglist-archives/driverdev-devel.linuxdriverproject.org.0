Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AAE9C13AE25
	for <lists+driverdev-devel@lfdr.de>; Tue, 14 Jan 2020 16:58:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4C9E28609F;
	Tue, 14 Jan 2020 15:58:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4UQ47XPhxXPT; Tue, 14 Jan 2020 15:58:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0570186074;
	Tue, 14 Jan 2020 15:58:12 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 498321BF574
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4485F85F11
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2qFPpc9ltmGI
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 79B0284EE4
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 14 Jan 2020 15:58:04 +0000 (UTC)
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: JGS+KW4iljfasocZFRuawSucvBs2Gmz7rrIbHvPmHkhYrLEV6sWIIxodNcchC5WstpqGUlmg1Q
 ibgdBk+WyzrA2EEgtKzzhdbxz+7GtfKenFf5iia5ihKhItS3Gbrm66XchnD8GPu0p0nY/7frLA
 gram7481V/TezEt/+s0ivxtcXxJtdafyM6KqC51/Jm63ZrD2noJSEJdeAJXFu3+W5mvHc4nRra
 mGpf+/otzxif0+3cLR9vMvs/7cEv1+1NFCLbVwLWhza7i4aXeGaMzyqw4bYcY+6C8kf6Aqf6v9
 0F0=
X-IronPort-AV: E=Sophos;i="5.69,433,1571727600"; d="scan'208";a="64694966"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 Jan 2020 08:58:03 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 14 Jan 2020 08:58:03 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 14 Jan 2020 08:58:02 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC v3 1/9] staging: most: core: fix date in file comment
Date: Tue, 14 Jan 2020 16:57:50 +0100
Message-ID: <1579017478-3339-2-git-send-email-christian.gromm@microchip.com>
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

This patch updates the date range in the comment section.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v3:
	This patch has been added to the series.

 drivers/staging/most/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index af542ed..8c8a647 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -2,7 +2,7 @@
 /*
  * core.c - Implementation of core module of MOST Linux driver stack
  *
- * Copyright (C) 2013-2015 Microchip Technology Germany II GmbH & Co. KG
+ * Copyright (C) 2013-2020 Microchip Technology Germany II GmbH & Co. KG
  */
 
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
