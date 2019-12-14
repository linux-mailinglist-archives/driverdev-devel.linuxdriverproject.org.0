Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C84E11F3E8
	for <lists+driverdev-devel@lfdr.de>; Sat, 14 Dec 2019 21:17:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8884887939;
	Sat, 14 Dec 2019 20:17:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mMRWrp1TKxhP; Sat, 14 Dec 2019 20:17:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DB59F873B6;
	Sat, 14 Dec 2019 20:17:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0680C1BF342
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 20:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 035E12041E
 for <devel@linuxdriverproject.org>; Sat, 14 Dec 2019 20:17:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6qd8oT8nFCni for <devel@linuxdriverproject.org>;
 Sat, 14 Dec 2019 20:17:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from faui03.informatik.uni-erlangen.de
 (faui03.informatik.uni-erlangen.de [131.188.30.103])
 by silver.osuosl.org (Postfix) with ESMTPS id 94BE220348
 for <devel@driverdev.osuosl.org>; Sat, 14 Dec 2019 20:17:12 +0000 (UTC)
Received: from faui04e.informatik.uni-erlangen.de
 (faui04e.informatik.uni-erlangen.de [IPv6:2001:638:a000:4130:131:188:30:135])
 by faui03.informatik.uni-erlangen.de (Postfix) with ESMTP id 6282F24144E;
 Sat, 14 Dec 2019 21:17:11 +0100 (CET)
Received: by faui04e.informatik.uni-erlangen.de (Postfix, from userid 28475)
 id 550513C1272; Sat, 14 Dec 2019 21:17:11 +0100 (CET)
From: Sven Leykauf <sven_leykauf1@web.de>
To: devel@driverdev.osuosl.org
Subject: [PATCH v2 22/24] sm750fb: Fix Avoid CamelCase
Date: Sat, 14 Dec 2019 21:10:01 +0100
Message-Id: <20191214200937.10795-22-sven_leykauf1@web.de>
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

Change names of functions, their parameters and local variables,
according to coding style.
Patch upholds compileability.

Co-developed-by: Daniel Bauer <daniel.j.bauer@fau.de>
Signed-off-by: Daniel Bauer <daniel.j.bauer@fau.de>
Signed-off-by: Sven Leykauf <sven_leykauf1@web.de>
---
 drivers/staging/sm750fb/ddk750_mode.c | 88 +++++++++++++--------------
 1 file changed, 44 insertions(+), 44 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_mode.c b/drivers/staging/sm750fb/ddk750_mode.c
index 35d05ba3c633..ab593f2feb8c 100644
--- a/drivers/staging/sm750fb/ddk750_mode.c
+++ b/drivers/staging/sm750fb/ddk750_mode.c
@@ -14,13 +14,13 @@
  * in bit 29:27 of Display Control register.
  */
 static unsigned long
-displayControlAdjust_SM750LE(struct mode_parameter *pModeParam,
-			     unsigned long dispControl)
+display_control_adjust_sm750le(struct mode_parameter *p_mode_param,
+			       unsigned long disp_control)
 {
 	unsigned long x, y;
 
-	x = pModeParam->horizontal_display_end;
-	y = pModeParam->vertical_display_end;
+	x = p_mode_param->horizontal_display_end;
+	y = p_mode_param->vertical_display_end;
 
 	/*
 	 * SM750LE has to set up the top-left and bottom-right
@@ -36,47 +36,47 @@ displayControlAdjust_SM750LE(struct mode_parameter *pModeParam,
 	       ((x - 1) & CRT_AUTO_CENTERING_BR_RIGHT_MASK));
 
 	/*
-	 * Assume common fields in dispControl have been properly set before
+	 * Assume common fields in disp_control have been properly set before
 	 * calling this function.
-	 * This function only sets the extra fields in dispControl.
+	 * This function only sets the extra fields in disp_control.
 	 */
 
 	/* Clear bit 29:27 of display control register */
-	dispControl &= ~CRT_DISPLAY_CTRL_CLK_MASK;
+	disp_control &= ~CRT_DISPLAY_CTRL_CLK_MASK;
 
 	/* Set bit 29:27 of display control register for the right clock */
 	/* Note that SM750LE only need to supported 7 resolutions. */
 	if (x == 800 && y == 600)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL41;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL41;
 	else if (x == 1024 && y == 768)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL65;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL65;
 	else if (x == 1152 && y == 864)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL80;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL80;
 	else if (x == 1280 && y == 768)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL80;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL80;
 	else if (x == 1280 && y == 720)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL74;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL74;
 	else if (x == 1280 && y == 960)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL108;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL108;
 	else if (x == 1280 && y == 1024)
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL108;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL108;
 	else /* default to VGA clock */
-		dispControl |= CRT_DISPLAY_CTRL_CLK_PLL25;
+		disp_control |= CRT_DISPLAY_CTRL_CLK_PLL25;
 
 	/* Set bit 25:24 of display controller */
-	dispControl |= (CRT_DISPLAY_CTRL_CRTSELECT | CRT_DISPLAY_CTRL_RGBBIT);
+	disp_control |= (CRT_DISPLAY_CTRL_CRTSELECT | CRT_DISPLAY_CTRL_RGBBIT);
 
 	/* Set bit 14 of display controller */
-	dispControl |= DISPLAY_CTRL_CLOCK_PHASE;
+	disp_control |= DISPLAY_CTRL_CLOCK_PHASE;
 
-	poke32(CRT_DISPLAY_CTRL, dispControl);
+	poke32(CRT_DISPLAY_CTRL, disp_control);
 
-	return dispControl;
+	return disp_control;
 }
 
 /* only timing related registers will be  programed */
-static int programModeRegisters(struct mode_parameter *pModeParam,
-				struct pll_value *pll)
+static int program_mode_registers(struct mode_parameter *p_mode_param,
+				  struct pll_value *pll)
 {
 	int ret = 0;
 	int cnt = 0;
@@ -86,46 +86,46 @@ static int programModeRegisters(struct mode_parameter *pModeParam,
 		/* programe secondary pixel clock */
 		poke32(CRT_PLL_CTRL, sm750_format_pll_reg(pll));
 
-		tmp = ((pModeParam->horizontal_total - 1) <<
+		tmp = ((p_mode_param->horizontal_total - 1) <<
 		       CRT_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
 		     CRT_HORIZONTAL_TOTAL_TOTAL_MASK;
-		tmp |= (pModeParam->horizontal_display_end - 1) &
+		tmp |= (p_mode_param->horizontal_display_end - 1) &
 		      CRT_HORIZONTAL_TOTAL_DISPLAY_END_MASK;
 
 		poke32(CRT_HORIZONTAL_TOTAL, tmp);
 
-		tmp = (pModeParam->horizontal_sync_width <<
+		tmp = (p_mode_param->horizontal_sync_width <<
 		       CRT_HORIZONTAL_SYNC_WIDTH_SHIFT) &
 		     CRT_HORIZONTAL_SYNC_WIDTH_MASK;
-		tmp |= (pModeParam->horizontal_sync_start - 1) &
+		tmp |= (p_mode_param->horizontal_sync_start - 1) &
 		      CRT_HORIZONTAL_SYNC_START_MASK;
 
 		poke32(CRT_HORIZONTAL_SYNC, tmp);
 
-		tmp = ((pModeParam->vertical_total - 1) <<
+		tmp = ((p_mode_param->vertical_total - 1) <<
 		       CRT_VERTICAL_TOTAL_TOTAL_SHIFT) &
 		     CRT_VERTICAL_TOTAL_TOTAL_MASK;
-		tmp |= (pModeParam->vertical_display_end - 1) &
+		tmp |= (p_mode_param->vertical_display_end - 1) &
 		      CRT_VERTICAL_TOTAL_DISPLAY_END_MASK;
 
 		poke32(CRT_VERTICAL_TOTAL, tmp);
 
-		tmp = ((pModeParam->vertical_sync_height <<
+		tmp = ((p_mode_param->vertical_sync_height <<
 		       CRT_VERTICAL_SYNC_HEIGHT_SHIFT)) &
 		     CRT_VERTICAL_SYNC_HEIGHT_MASK;
-		tmp |= (pModeParam->vertical_sync_start - 1) &
+		tmp |= (p_mode_param->vertical_sync_start - 1) &
 		      CRT_VERTICAL_SYNC_START_MASK;
 
 		poke32(CRT_VERTICAL_SYNC, tmp);
 
 		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
-		if (pModeParam->vertical_sync_polarity)
+		if (p_mode_param->vertical_sync_polarity)
 			tmp |= DISPLAY_CTRL_VSYNC_PHASE;
-		if (pModeParam->horizontal_sync_polarity)
+		if (p_mode_param->horizontal_sync_polarity)
 			tmp |= DISPLAY_CTRL_HSYNC_PHASE;
 
 		if (sm750_get_chip_type() == SM750LE) {
-			displayControlAdjust_SM750LE(pModeParam, tmp);
+			display_control_adjust_sm750le(p_mode_param, tmp);
 		} else {
 			reg = peek32(CRT_DISPLAY_CTRL) &
 				~(DISPLAY_CTRL_VSYNC_PHASE |
@@ -140,40 +140,40 @@ static int programModeRegisters(struct mode_parameter *pModeParam,
 
 		poke32(PANEL_PLL_CTRL, sm750_format_pll_reg(pll));
 
-		reg = ((pModeParam->horizontal_total - 1) <<
+		reg = ((p_mode_param->horizontal_total - 1) <<
 			PANEL_HORIZONTAL_TOTAL_TOTAL_SHIFT) &
 			PANEL_HORIZONTAL_TOTAL_TOTAL_MASK;
-		reg |= ((pModeParam->horizontal_display_end - 1) &
+		reg |= ((p_mode_param->horizontal_display_end - 1) &
 			PANEL_HORIZONTAL_TOTAL_DISPLAY_END_MASK);
 		poke32(PANEL_HORIZONTAL_TOTAL, reg);
 
 		poke32(PANEL_HORIZONTAL_SYNC,
-		       ((pModeParam->horizontal_sync_width <<
+		       ((p_mode_param->horizontal_sync_width <<
 			 PANEL_HORIZONTAL_SYNC_WIDTH_SHIFT) &
 			PANEL_HORIZONTAL_SYNC_WIDTH_MASK) |
-		       ((pModeParam->horizontal_sync_start - 1) &
+		       ((p_mode_param->horizontal_sync_start - 1) &
 			PANEL_HORIZONTAL_SYNC_START_MASK));
 
 		poke32(PANEL_VERTICAL_TOTAL,
-		       (((pModeParam->vertical_total - 1) <<
+		       (((p_mode_param->vertical_total - 1) <<
 			 PANEL_VERTICAL_TOTAL_TOTAL_SHIFT) &
 			PANEL_VERTICAL_TOTAL_TOTAL_MASK) |
-		       ((pModeParam->vertical_display_end - 1) &
+		       ((p_mode_param->vertical_display_end - 1) &
 			PANEL_VERTICAL_TOTAL_DISPLAY_END_MASK));
 
 		poke32(PANEL_VERTICAL_SYNC,
-		       ((pModeParam->vertical_sync_height <<
+		       ((p_mode_param->vertical_sync_height <<
 			 PANEL_VERTICAL_SYNC_HEIGHT_SHIFT) &
 			PANEL_VERTICAL_SYNC_HEIGHT_MASK) |
-		       ((pModeParam->vertical_sync_start - 1) &
+		       ((p_mode_param->vertical_sync_start - 1) &
 			PANEL_VERTICAL_SYNC_START_MASK));
 
 		tmp = DISPLAY_CTRL_TIMING | DISPLAY_CTRL_PLANE;
-		if (pModeParam->vertical_sync_polarity)
+		if (p_mode_param->vertical_sync_polarity)
 			tmp |= DISPLAY_CTRL_VSYNC_PHASE;
-		if (pModeParam->horizontal_sync_polarity)
+		if (p_mode_param->horizontal_sync_polarity)
 			tmp |= DISPLAY_CTRL_HSYNC_PHASE;
-		if (pModeParam->clock_phase_polarity)
+		if (p_mode_param->clock_phase_polarity)
 			tmp |= DISPLAY_CTRL_CLOCK_PHASE;
 
 		reserved = PANEL_DISPLAY_CTRL_RESERVED_MASK |
@@ -220,6 +220,6 @@ int ddk750_set_mode_timing(struct mode_parameter *parm, enum clock_type clock)
 		outb_p(0x88, 0x3d4);
 		outb_p(0x06, 0x3d5);
 	}
-	programModeRegisters(parm, &pll);
+	program_mode_registers(parm, &pll);
 	return 0;
 }
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
