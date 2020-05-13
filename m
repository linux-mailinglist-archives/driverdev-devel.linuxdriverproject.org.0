Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 468631D17A3
	for <lists+driverdev-devel@lfdr.de>; Wed, 13 May 2020 16:32:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 872A386F38;
	Wed, 13 May 2020 14:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ucxKjCBL0B6n; Wed, 13 May 2020 14:32:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 335F286C5A;
	Wed, 13 May 2020 14:32:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B1E3A1BF484
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 14:32:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A3A342210F
 for <devel@linuxdriverproject.org>; Wed, 13 May 2020 14:32:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x7clucro9CAE for <devel@linuxdriverproject.org>;
 Wed, 13 May 2020 14:32:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 9DED8220EF
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 14:32:12 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id y3so21161080wrt.1
 for <devel@driverdev.osuosl.org>; Wed, 13 May 2020 07:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=e5l1ivHxvrs1cxo8s+YGVNADN8Rkef6bb/X9HBvnEUo=;
 b=jYfhdyXMvfikdAmp4t94kn7Oqc+gcUglu6kotXtK7pCKoEZcxVf+D/gfJXZgnlA3tY
 VcjpeS5YBLgOvzR5lH8nd8xcxAdRH5J/1H+Rx0YuTlUz/0uGIY6A8YBpL08huizZsKAk
 pQTiCU//78OYtJbklytYh8aNf58msaMeP+CHrBi+IMPVFrxmNPRXvWfqUONnqkYrCTX6
 gvaFx+iNa4Fpv9gfJJ9qbT4HuW1APNIdtSjeNhLXuUCQ+UFiSiHNQBRrDklcXRcQBRGJ
 /WFHn0p2Cbgl8iZvetZyCwySHcma/dxORA0r5kTxv83q873p1+IsAj4VwSbTtPefwDf3
 YB4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=e5l1ivHxvrs1cxo8s+YGVNADN8Rkef6bb/X9HBvnEUo=;
 b=FEaeJos3s3nHRFX5+thl35hiyCiIi+IzjCC+Vz1rL0bd3IzMsPmkIFrMUtxGXiCDqA
 Mp70YpVYPeOoHlHSt6oqjhCTVpxRrIBA7TIN5wp7myEF+GUtYupFnFziXp6KvCRAwT0E
 jsgLhbekT2tTg6Ih1UBB391VfO+2VUfn/QFoMIPTmxMByHYcEcEBAafl+94R641Ypt2a
 6zqMmmxxuB+ih3oLR8PryM09xhNlBREnm/NjZTPx+hGY0Jnf9CClaeV1EudJXJHhAOP9
 tEGONeeRlN4Uk6buRzga70FowyCena0tuxVcQwAzmx+BpEodRdfJ9gFWSeJSYixS2xKt
 aCug==
X-Gm-Message-State: AGi0PuaaHoSfmMZ4OKRb3Jribk5QbzcVhM7zy1grm4VnDBjuzFPBmigv
 XlejG9BU6CuI89O2vL2T4sA=
X-Google-Smtp-Source: APiQypLALuA0r2EITrx0jgdNwC0QL/EE50fO/i1b1frjQJxz76h8l1YXSRVhSmv9cyqfKw97a8V3XQ==
X-Received: by 2002:adf:ee03:: with SMTP id y3mr29782517wrn.190.1589380330471; 
 Wed, 13 May 2020 07:32:10 -0700 (PDT)
Received: from localhost
 (ipv6-fd0e7292a9d5c758.ost.clients.hamburg.freifunk.net.
 [2a03:2267:4:0:fd0e:7292:a9d5:c758])
 by smtp.gmail.com with ESMTPSA id b2sm25212812wrm.30.2020.05.13.07.32.08
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 13 May 2020 07:32:09 -0700 (PDT)
From: Oliver Graute <oliver.graute@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: fbtft: fb_st7789v: Initialize the Display
Date: Wed, 13 May 2020 16:30:46 +0200
Message-Id: <1589380299-21871-1-git-send-email-oliver.graute@gmail.com>
X-Mailer: git-send-email 2.7.4
X-Patchwork-Bot: notify
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
Cc: devel@driverdev.osuosl.org, linux-fbdev@vger.kernel.org,
 Oliver Graute <oliver.graute@kococonnector.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, dan.carpenter@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Oliver Graute <oliver.graute@kococonnector.com>

Set Gamma Values and Register Values for the HSD20_IPS Panel

Signed-off-by: Oliver Graute <oliver.graute@kococonnector.com>
---

need information howto set HSD20_IPS Panel at run time and not at compile time

Changes for v2:
 - added define for HSD20_IPS_GAMMA values
 - check for HSD20_IPS define
 - enabled MIPI_DCS_ENTER_INVERT_MODE

 drivers/staging/fbtft/fb_st7789v.c | 32 +++++++++++++++++++++++++-----
 1 file changed, 27 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/fbtft/fb_st7789v.c b/drivers/staging/fbtft/fb_st7789v.c
index 3c3f387936e8..ebc17e05ecd0 100644
--- a/drivers/staging/fbtft/fb_st7789v.c
+++ b/drivers/staging/fbtft/fb_st7789v.c
@@ -20,6 +20,12 @@
 	"70 2C 2E 15 10 09 48 33 53 0B 19 18 20 25\n" \
 	"70 2C 2E 15 10 09 48 33 53 0B 19 18 20 25"
 
+#define HSD20_IPS_GAMMA \
+	"D0 05 0A 09 08 05 2E 44 45 0F 17 16 2B 33\n" \
+	"D0 05 0A 09 08 05 2E 43 45 0F 16 16 2B 33"
+
+#define HSD20_IPS "true"
+
 /**
  * enum st7789v_command - ST7789V display controller commands
  *
@@ -82,14 +88,20 @@ static int init_display(struct fbtft_par *par)
 
 	/* set pixel format to RGB-565 */
 	write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, MIPI_DCS_PIXEL_FMT_16BIT);
+	if (HSD20_IPS)
+		write_reg(par, PORCTRL, 0x05, 0x05, 0x00, 0x33, 0x33);
 
-	write_reg(par, PORCTRL, 0x08, 0x08, 0x00, 0x22, 0x22);
+	else
+		write_reg(par, PORCTRL, 0x08, 0x08, 0x00, 0x22, 0x22);
 
 	/*
 	 * VGH = 13.26V
 	 * VGL = -10.43V
 	 */
-	write_reg(par, GCTRL, 0x35);
+	if (HSD20_IPS)
+		write_reg(par, GCTRL, 0x75);
+	else
+		write_reg(par, GCTRL, 0x35);
 
 	/*
 	 * VDV and VRH register values come from command write
@@ -101,13 +113,19 @@ static int init_display(struct fbtft_par *par)
 	 * VAP =  4.1V + (VCOM + VCOM offset + 0.5 * VDV)
 	 * VAN = -4.1V + (VCOM + VCOM offset + 0.5 * VDV)
 	 */
-	write_reg(par, VRHS, 0x0B);
+	if (HSD20_IPS)
+		write_reg(par, VRHS, 0x13);
+	else
+		write_reg(par, VRHS, 0x0B);
 
 	/* VDV = 0V */
 	write_reg(par, VDVS, 0x20);
 
 	/* VCOM = 0.9V */
-	write_reg(par, VCOMS, 0x20);
+	if (HSD20_IPS)
+		write_reg(par, VCOMS, 0x22);
+	else
+		write_reg(par, VCOMS, 0x20);
 
 	/* VCOM offset = 0V */
 	write_reg(par, VCMOFSET, 0x20);
@@ -120,6 +138,10 @@ static int init_display(struct fbtft_par *par)
 	write_reg(par, PWCTRL1, 0xA4, 0xA1);
 
 	write_reg(par, MIPI_DCS_SET_DISPLAY_ON);
+
+	if (HSD20_IPS)
+		write_reg(par, MIPI_DCS_ENTER_INVERT_MODE);
+
 	return 0;
 }
 
@@ -234,7 +256,7 @@ static struct fbtft_display display = {
 	.height = 320,
 	.gamma_num = 2,
 	.gamma_len = 14,
-	.gamma = DEFAULT_GAMMA,
+	.gamma = HSD20_IPS_GAMMA,
 	.fbtftops = {
 		.init_display = init_display,
 		.set_var = set_var,
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
