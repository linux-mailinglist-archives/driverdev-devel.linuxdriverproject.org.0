Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7221EDD3
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 13:14:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4B3D727408;
	Wed, 15 May 2019 11:14:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8wl20IrKqIRT; Wed, 15 May 2019 11:14:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 58AD922699;
	Wed, 15 May 2019 11:14:49 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BC4B11BF3D9
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B8317860B0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:14:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hxZsgfOaWy8V
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:14:40 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A1F808609D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 15 May 2019 11:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+tm5CcX6+/yo8uRol80InVE85O2yZhqPxdeQoTfadvs=; b=B5L2dmfe3bVNmV37TSyp2W3YvW
 JLkEWUYMecYshRqtYPOZJ4XN5M1vxhbnja6HvfqDSXQnH2CWUEAN3daU6EIgYZwqbOoLuysyzf8FK
 QZgBB+ad3F+LWi26SKw1RA8VatCLf5m9MWVN3qOj+zE4XlPkZV1D/xg4LyePntbE03NOeEKGWzdX6
 +5HPXbDyD4dr16munRFPbueFEIV893FngJZfHJJK2c1P6hHZv2WyRamNvVkFkHlz+C0gFfdCHASBV
 er4kX9jqYlwBy3185PoH7dpGl5CqHET3FEd3BbhNZqXkyr4/28cXHhhKHpL3+9x8/viZfYv9kzNDK
 QtC/eT9g==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>) id 1hQrrq-0003Fc-JN
 for driverdev-devel@linuxdriverproject.org; Wed, 15 May 2019 12:14:38 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v2 3/5] staging: kpc2000: added designated initializers to two
 structs.
Date: Wed, 15 May 2019 12:14:35 +0100
Message-Id: <20190515111437.18828-4-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190515111437.18828-1-jeremy@azazel.net>
References: <20190515103454.18456-1-jeremy@azazel.net>
 <20190515111437.18828-1-jeremy@azazel.net>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.96.2
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed the following two sparse warnings by using designated
initializers:

  drivers/staging/kpc2000/kpc2000/cell_probe.c:101:34: warning: Using plain integer as NULL pointer
  drivers/staging/kpc2000/kpc2000/cell_probe.c:364:34: warning: Using plain integer as NULL pointer

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index 30e6f176ddfa..b98d53c8637f 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -94,7 +94,7 @@ void parse_core_table_entry(struct core_table_entry *cte, const u64 read_val, co
 static int probe_core_basic(unsigned int core_num, struct kp2000_device *pcard,
 			    char *name, const struct core_table_entry cte)
 {
-    struct mfd_cell  cell = {0};
+    struct mfd_cell  cell = { .id = core_num, .name = name };
     struct resource  resources[2];
 
     struct kpc_core_device_platdata  core_pdata = {
@@ -110,8 +110,6 @@ static int probe_core_basic(unsigned int core_num, struct kp2000_device *pcard,
     
     cell.platform_data = &core_pdata;
     cell.pdata_size = sizeof(struct kpc_core_device_platdata);
-    cell.name = name;
-    cell.id = core_num;
     cell.num_resources = 2;
     
     memset(&resources, 0, sizeof(resources));
@@ -315,14 +313,13 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
 
 static int  create_dma_engine_core(struct kp2000_device *pcard, size_t engine_regs_offset, int engine_num, int irq_num)
 {
-    struct mfd_cell  cell = {0};
+    struct mfd_cell  cell = { .id = engine_num };
     struct resource  resources[2];
 
     dev_dbg(&pcard->pdev->dev, "create_dma_core(pcard = [%p], engine_regs_offset = %zx, engine_num = %d)\n", pcard, engine_regs_offset, engine_num);
     
     cell.platform_data = NULL;
     cell.pdata_size = 0;
-    cell.id = engine_num;
     cell.name = KP_DRIVER_NAME_DMA_CONTROLLER;
     cell.num_resources = 2;
     
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
