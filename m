Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15D611B793A
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Apr 2020 17:16:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AA66C204D2;
	Fri, 24 Apr 2020 15:16:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IWrmpkMPDpDX; Fri, 24 Apr 2020 15:16:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EBAD72043C;
	Fri, 24 Apr 2020 15:16:42 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1AEF51BF33C
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 15:16:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 178E08563A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 15:16:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ouyt_18xNwsO
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 15:16:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D516985593
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 24 Apr 2020 15:16:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1587741399; x=1619277399;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=+HYYVM0WDEG1oH32Iny/MrvmgvhjNQ+soXE9TEnhJbc=;
 b=eHr0VJx9Gw1cckgbFE3Rlpm7MT6kDC10dj7KtiANkOfd6p5G/9Ta8UlI
 0hv9B23oCNSU30Xw1GiXUlePj9FCb2XiWhlBvsVIVtf8PIOy0ezlughKM
 J2Cs1fwGtpXw4Ni6KcKXNAp4VCMS534MiG0ToaZ5S4WT0BzA/ris2QRHS
 kz9VDFlVWs86mTLrQC1uhOBOdhTId2mulRqUZ9QGlqe6m9LMMpFta28vF
 0zePKvu1qK8BlS7kKTTN9Fi2wH/N0z0j2qdQURsiEL3M2yEdhuc2B6h/I
 UuJBlW1QaFyQqrXZALkCQfecVJMOsH5u5sea+FwRqj37JvFvSKJQrvRKl g==;
IronPort-SDR: J4m0SxTDYxHPeFCwIN7s7fPU3W9I89qyHHI9J6RoKrlLSQg0Rv9tUhRqsIrtSc18oNQTaEesp3
 J7wagZ8f5yTX6V6M/Awo1c9WWzjHtqVwg15NDvduQdAbgQWje9j/uNbYUUnt+ZGjSP9KSBx40P
 IZeR8rkdQJGmSfBksquCeyOVZ9TeTezWY52DzGI8i+mgcUohYN7ekkPdFbS8qV2oN8t1yJax0j
 j1adEDSQHdxDEIaFeTygaL5hMT5aN+b7wA1XTxQNWn76qIrQSIF8u3VBQLMZ5HmTWK7Rhrvwyh
 19c=
X-IronPort-AV: E=Sophos;i="5.73,311,1583218800"; d="scan'208";a="73729161"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 24 Apr 2020 08:16:39 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 24 Apr 2020 08:16:38 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 24 Apr 2020 08:16:37 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v2] most: core: use function subsys_initcall()
Date: Fri, 24 Apr 2020 17:16:34 +0200
Message-ID: <1587741394-22021-1-git-send-email-christian.gromm@microchip.com>
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
Reported-by: kernel test robot <lkp@intel.com>
---
v2: add Reported-by tag

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
