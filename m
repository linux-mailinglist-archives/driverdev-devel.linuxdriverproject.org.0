Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49792146D0E
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jan 2020 16:38:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 15DE288306;
	Thu, 23 Jan 2020 15:38:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jlJ9b-NbDBZL; Thu, 23 Jan 2020 15:38:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1CF42882EB;
	Thu, 23 Jan 2020 15:38:37 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 77F5C1BF9B4
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 72AEA87610
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yf9fiFACgZRH
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by whitealder.osuosl.org (Postfix) with ESMTPS id BFE2286E6E
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:32 +0000 (UTC)
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
IronPort-SDR: OuBsH4cYRnl+1iRcYCnMvWCJ14Lara8buGV/w+S/knVHKu50KwI+j29PVBJXXzVS2sdAj6n3nZ
 IMIMSjjGSRTIN0wg3jpWYbAbYBIaWuPZU1x8AGiIefVTXzyBAcjGPdAAATudPXSM1vCpqwrpDS
 J5lLXjMbwVzIIsdNA/scK59B3bUx+4d/Zv5k2SunAFyotnq/akJ5EAaWn/BkmzwwDPU+CppsQa
 vlKPjjM+3PsZ9jkNsOjxHXhlNKlaLAyx+3p+xhYCuKB0BMojwNHk5x1Mi0/uTSE8wldxPmRhQL
 sSg=
X-IronPort-AV: E=Sophos;i="5.70,354,1574146800"; d="scan'208";a="65746474"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jan 2020 08:38:31 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 23 Jan 2020 08:38:31 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 23 Jan 2020 08:38:31 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v4 02/10] staging: most: core: drop device reference
Date: Thu, 23 Jan 2020 16:38:18 +0100
Message-ID: <1579793906-5054-3-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579793906-5054-1-git-send-email-christian.gromm@microchip.com>
References: <1579793906-5054-1-git-send-email-christian.gromm@microchip.com>
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

This patch drops the device reference added by function
bus_find_device_by_name.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v4:
	This patch has beed added to the series

 drivers/staging/most/core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index d907f93..84d4f52 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -533,6 +533,7 @@ static struct most_channel *get_channel(char *mdev, char *mdev_ch)
 	dev = bus_find_device_by_name(&mc.bus, NULL, mdev);
 	if (!dev)
 		return NULL;
+	put_device(dev);
 	iface = dev_get_drvdata(dev);
 	list_for_each_entry_safe(c, tmp, &iface->p->channel_list, list) {
 		if (!strcmp(dev_name(&c->dev), mdev_ch))
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
