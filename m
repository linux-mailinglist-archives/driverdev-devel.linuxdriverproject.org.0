Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 441FF1B781A
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Apr 2020 16:12:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EFF2D882B1;
	Fri, 24 Apr 2020 14:12:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TTg0gajfUXdV; Fri, 24 Apr 2020 14:12:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6EEA888258;
	Fri, 24 Apr 2020 14:12:41 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 40C131BF83E
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 14:12:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3CE838821D
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 14:12:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YsPhl3lUQsvb
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 14:12:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id A622B88196
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587737542; x=1619273542;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=LuRYObtxb9XNLBMHVCQ5gZU8LT7XjawbXkKM5yf1nEk=;
 b=hmJwdb0FtFUnPQxfXGRhqIt0m2ZIL/LVH8p39mo1ItQjjhwLV5FbrLAo
 HijO8zLuruL1O/vEint1UAcjRpSW2MP+c4SsmIxkOJOk4/a9i8vqaqR7x
 KooUvP1+gIfLzyC1E5CL1u9G7l8vPVTYTcTrs2M6gtSMdU8/AMLrHKcOc
 v3OIZYgQ6ev8UK/n8JKS+zW0Be2DVInHVKnfcTzNyz6u8E3N0BgXvNgw+
 II7XiOsUo9+31ZDmQ6fqblNIQzjMoaO/L9VJmssfbhNKuxR4FcHUmlI4i
 T9Avwi995RpcL0zDyEqYqemBV8giAl5JAjh+XeTFD8+Wn5aUXl7+CGbaR A==;
IronPort-SDR: pO5CvvEFdxz7p12wc1q19p2RiiMxGCLgn0F5Yq9OAc/uQpmPsDl9RhpfyeylXbKGby53cx/GUO
 04qwyiPSk3ChncVyB6nb4HylKK7RfRVelbxDO/ZuzHETx1Sv+Ct3Iu9Fk55de0l0tRa2QV70Xy
 Xndyz1AuyftDWFzCe8CLHoalEndv6oYOYlkc3Il63/mXBtRSYki6D+Qzv67iqJvZT/pjW/0Bfa
 8780StauFU54xBvzMyOU1RccG9IY4ATfXcO45ZJx7k1d/RCS3MUsc3vJVSLZQk0DXqQcR1WZ2Y
 Wc8=
X-IronPort-AV: E=Sophos;i="5.73,311,1583218800"; d="scan'208";a="74470565"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Apr 2020 07:12:19 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 24 Apr 2020 07:11:42 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 24 Apr 2020 07:12:18 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH] most: core: use function subsys_initcall()
Date: Fri, 24 Apr 2020 16:12:15 +0200
Message-ID: <1587737535-21622-1-git-send-email-christian.gromm@microchip.com>
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

This patch replaces function module_init() with subsys_initcall().
It is needed to ensure that the core module of the driver is
initialized before a component tries to register with the core. This
leads to a NULL pointer dereference if the driver is configured as
in-tree.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/most/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/most/core.c b/drivers/most/core.c
index 06426fc..f781c46 100644
--- a/drivers/most/core.c
+++ b/drivers/most/core.c
@@ -1483,7 +1483,7 @@ static void __exit most_exit(void)
 	ida_destroy(&mdev_id);
 }
 
-module_init(most_init);
+subsys_initcall(most_init);
 module_exit(most_exit);
 MODULE_LICENSE("GPL");
 MODULE_AUTHOR("Christian Gromm <christian.gromm@microchip.com>");
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
