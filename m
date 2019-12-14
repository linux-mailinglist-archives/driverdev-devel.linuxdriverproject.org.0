Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6892511F3E7
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Dec 2019 21:17:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 141EB86594;
	Sat, 14 Dec 2019 20:17:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8lscI8XNb4_O; Sat, 14 Dec 2019 20:17:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0578D86283;
	Sat, 14 Dec 2019 20:17:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AC3951BF342
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 20:17:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A974587653
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 20:17:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b4OFeFss4Mpm for <devel@linuxdriverproject.org>;
 Sat, 14 Dec 2019 20:17:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 16C9E872E9
 for <devel@driverdev.osuosl.org>; Sat, 14 Dec 2019 20:17:05 +0000 (UTC)
Received: from faui04e.informatik.uni-erlangen.de
 (faui04e.informatik.uni-erlangen.de [IPv6:2001:638:a000:4130:131:188:30:135])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id DB60F24144E;
 Sat, 14 Dec 2019 21:17:03 +0100 (CET)
Received: by faui04e.informatik.uni-erlangen.de (Postfix, from userid 28475)
 id CE79F3C1272; Sat, 14 Dec 2019 21:17:03 +0100 (CET)
From: Sven Leykauf <sven_leykauf1@web.de>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 21/24] sm750fb: Fix Avoid CamelCase
Date: Sat, 14 Dec 2019 21:09:59 +0100
Message-Id: <20191214200937.10795-21-sven_leykauf1@web.de>
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

Change names of function prototypes and function implementation,
according to coding style.
Patch upholds compileability.

Dependencies: ddk750_mode.h
	      ddk750_mode.c
	      sm750_hw.c

Co-developed-by: Daniel Bauer <daniel.j.bauer@fau.de>
Signed-off-by: Daniel Bauer <daniel.j.bauer@fau.de>
Signed-off-by: Sven Leykauf <sven_leykauf1@web.de>
---
 drivers/staging/sm750fb/ddk750_mode.c | 2 +-
 drivers/staging/sm750fb/ddk750_mode.h | 2 +-
 drivers/staging/sm750fb/sm750_hw.c    | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index e00a6cb31947..35d05ba3c633 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -207,7 +207,7 @@ static int programModeRegisters(struct mode_parameter *pModeParam,
 	return ret;
 }
 
-int ddk750_setModeTiming(struct mode_parameter *parm, enum clock_type clock)
+int ddk750_set_mode_timing(struct mode_parameter *parm, enum clock_type clock)
 {
 	struct pll_value pll;
 
diff --git a/drivers/staging/sm750fb/ddk750_mode.h b/drivers/staging/sm750fb/ddk750_mode.h
index 2df78a0937b2..1b70885f85e5 100644
--- a/drivers/staging/sm750fb/ddk750_mode.h
+++ b/drivers/staging/sm750fb/ddk750_mode.h
@@ -33,5 +33,5 @@ struct mode_parameter {
 	enum spolarity clock_phase_polarity;
 };
 
-int ddk750_setModeTiming(struct mode_parameter *parm, enum clock_type clock);
+int ddk750_set_mode_timing(struct mode_parameter *parm, enum clock_type clock);
 #endif
diff --git a/drivers/staging/sm750fb/sm750_hw.c b/drivers/staging/sm750fb/sm750_hw.c
index 0f279f8bc15a..4ab8e77c1621 100644
--- a/drivers/staging/sm750fb/sm750_hw.c
+++ b/drivers/staging/sm750fb/sm750_hw.c
@@ -305,7 +305,7 @@ int hw_sm750_crtc_set_mode(struct lynxfb_crtc *crtc,
 		clock = SECONDARY_PLL;
 
 	pr_debug("Request pixel clock = %lu\n", modparm.pixel_clock);
-	ret = ddk750_setModeTiming(&modparm, clock);
+	ret = ddk750_set_mode_timing(&modparm, clock);
 	if (ret) {
 		pr_err("Set mode timing failed\n");
 		goto exit;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
