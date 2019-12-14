Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E65EA11F3DA
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Dec 2019 21:15:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9245B8623F;
	Sat, 14 Dec 2019 20:15:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rTRhnFBuld-F; Sat, 14 Dec 2019 20:15:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 404DD861FE;
	Sat, 14 Dec 2019 20:15:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 070541BF342
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 20:15:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id EAC6620426
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 20:15:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id th8bYQis0NXd for <devel@linuxdriverproject.org>;
 Sat, 14 Dec 2019 20:15:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by silver.osuosl.org (Postfix) with ESMTPS id 29E7F2041E
 for <devel@driverdev.osuosl.org>; Sat, 14 Dec 2019 20:15:00 +0000 (UTC)
Received: from faui04e.informatik.uni-erlangen.de
 (faui04e.informatik.uni-erlangen.de [IPv6:2001:638:a000:4130:131:188:30:135])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id E61EA24144E;
 Sat, 14 Dec 2019 21:14:58 +0100 (CET)
Received: by faui04e.informatik.uni-erlangen.de (Postfix, from userid 28475)
 id DA1413C1272; Sat, 14 Dec 2019 21:14:58 +0100 (CET)
From: Sven Leykauf <sven_leykauf1@web.de>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 11/24] sm750fb: Fix Avoid CamelCase
Date: Sat, 14 Dec 2019 21:09:39 +0100
Message-Id: <20191214200937.10795-11-sven_leykauf1@web.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191214200937.10795-1-sven_leykauf1@web.de>
References: <20191214200937.10795-1-sven_leykauf1@web.de>
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
Cc: Daniel Bauer <daniel.j.bauer@fau.de>, Sven Leykauf <sven_leykauf1@web.de>,
 linux-kernel@i4.cs.fau.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change names of struct member variables, according to coding style.

Patch upholds compileability.

Dependencies: sm750.h
	      sm750_hw.c
	      sm750_accel_c

Co-developed-by: Daniel Bauer <daniel.j.bauer@fau.de>
Signed-off-by: Daniel Bauer <daniel.j.bauer@fau.de>
Signed-off-by: Sven Leykauf <sven_leykauf1@web.de>
---
 drivers/staging/sm750fb/sm750.h       | 4 ++--
 drivers/staging/sm750fb/sm750_accel.c | 6 +++---
 drivers/staging/sm750fb/sm750_hw.c    | 4 ++--
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.h b/drivers/staging/sm750fb/sm750.h
index e0082c2890ec..e41d72a46a86 100644
--- a/drivers/staging/sm750fb/sm750.h
+++ b/drivers/staging/sm750fb/sm750.h
@@ -50,9 +50,9 @@ struct init_status {
 
 struct lynx_accel {
 	/* base virtual address of DPR registers */
-	volatile unsigned char __iomem *dprBase;
+	volatile unsigned char __iomem *dpr_base;
 	/* base virtual address of de data port */
-	volatile unsigned char __iomem *dpPortBase;
+	volatile unsigned char __iomem *dp_port_base;
 
 	/* function pointers */
 	void (*de_init)(struct lynx_accel *);
diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index 8faa601c700b..0de18c1c8317 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -20,17 +20,17 @@
 #include "sm750_accel.h"
 static inline void write_dpr(struct lynx_accel *accel, int offset, u32 regValue)
 {
-	writel(regValue, accel->dprBase + offset);
+	writel(regValue, accel->dpr_base + offset);
 }
 
 static inline u32 read_dpr(struct lynx_accel *accel, int offset)
 {
-	return readl(accel->dprBase + offset);
+	return readl(accel->dpr_base + offset);
 }
 
 static inline void write_dpPort(struct lynx_accel *accel, u32 data)
 {
-	writel(data, accel->dpPortBase);
+	writel(data, accel->dp_port_base);
 }
 
 void sm750_hw_de_init(struct lynx_accel *accel)
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index 8bc02988bcde..f5db4a994a02 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -60,8 +60,8 @@ int hw_sm750_map(struct sm750_dev *sm750_dev, struct pci_dev *pdev)
 		pr_info("mmio virtual addr = %p\n", sm750_dev->pvReg);
 	}
 
-	sm750_dev->accel.dprBase = sm750_dev->pvReg + DE_BASE_ADDR_TYPE1;
-	sm750_dev->accel.dpPortBase = sm750_dev->pvReg + DE_PORT_ADDR_TYPE1;
+	sm750_dev->accel.dpr_base = sm750_dev->pvReg + DE_BASE_ADDR_TYPE1;
+	sm750_dev->accel.dp_port_base = sm750_dev->pvReg + DE_PORT_ADDR_TYPE1;
 
 	mmio750 = sm750_dev->pvReg;
 	sm750_set_chip_type(sm750_dev->devid, sm750_dev->revid);
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
