Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F05861AC2
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Jul 2019 08:42:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D5E9E20514;
	Mon,  8 Jul 2019 06:42:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RRV314mxKKSV; Mon,  8 Jul 2019 06:42:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3D01D204FA;
	Mon,  8 Jul 2019 06:42:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 32AF11BF577
 for <devel@linuxdriverproject.org>; Mon,  8 Jul 2019 06:42:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 2FACD85B5D
 for <devel@linuxdriverproject.org>; Mon,  8 Jul 2019 06:42:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HMPN7QYs9I3a for <devel@linuxdriverproject.org>;
 Mon,  8 Jul 2019 06:42:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D360785C13
 for <devel@driverdev.osuosl.org>; Mon,  8 Jul 2019 06:42:04 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id c73so2425303pfb.13
 for <devel@driverdev.osuosl.org>; Sun, 07 Jul 2019 23:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Yo1QAzuVvVx10hcYQLg44jv+8cWMvmt4aBxKCt74Zi4=;
 b=FXRdL7aZHLWTgN/snC21UOqnv2lx7n+I0tXjKSjfO5ldfLyE8tKpZShA8+OtAxMEqb
 pQyFiC2JycQqDok3uDQs7Kxv+v0lMFwzzBTKMYzmG22AjznB90JwYkNP9c1itrRFh0gN
 6RkA/WlV6+X7Qi/XNv/6iG2MFQV9V1SH11Ye2mQU1H8zOHSZwV3PPiLO2iGtgCbkyZiO
 UkGS2bsSswaU/6n5HdBUjUaIyPV+ZC2oJFuGfHhzi4DoFpNjBN4/57DMZHiObqpRwfN9
 Rnx9l1jIQkHrHz38vW7yHzVX3A7YlmRiZN5ANxbfQEbArAJFuL+myoFCaG0fY77tCpt+
 2TJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Yo1QAzuVvVx10hcYQLg44jv+8cWMvmt4aBxKCt74Zi4=;
 b=K+ntN0ORjZcpp34pa/Q8sZTMxkc8pVYb+Cn66gUXKro5+mqVIXOnqZLXQl5J/Wigia
 +wc14DqxwEKHCbRFGmRXk0hlDXgE4NgJCOIwWZwZkTyW0TP1mGIuh1zeOpkV9hyJQrcB
 QDu3QzlWmO5OsJMIf1sFt08peZ2RjFS0K9YLdEL46Ffs8IM/FlRrMvcqv6a627Nt9Fni
 pQMM3m5bgspGB2ruRokkO/fBuX2Rcb60CWywXPLFolNW/cfz2O7AlOEcRPWi0HYsDaZ3
 9//t2FBp7HkeqWEiiuZALgR5ZJwXtAGy/sU81KIPtG1vadiyo7QukW4IOejj+8fJRLOZ
 RbfQ==
X-Gm-Message-State: APjAAAXLuP+LG3UztVLjOHRpQtrMrni58ALGipjlsrfDuDQA0aZ70PrT
 0NwFMR7U501UTlknFz8u2Vuimsts
X-Google-Smtp-Source: APXvYqyetnPCzLMYFFF0Svmr4x329/Rzprb6tAbSMB1DT18wh+rzUolsIjwYNHpfii7NG0t8P/xq1w==
X-Received: by 2002:a17:90a:cb87:: with SMTP id
 a7mr23801869pju.130.1562568124256; 
 Sun, 07 Jul 2019 23:42:04 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id b11sm18729817pfd.18.2019.07.07.23.42.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 07 Jul 2019 23:42:03 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 3/3] staging: most: dim2: Remove function dimcb_io_write()
Date: Mon,  8 Jul 2019 12:11:45 +0530
Message-Id: <20190708064145.3250-3-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190708064145.3250-1-nishkadg.linux@gmail.com>
References: <20190708064145.3250-1-nishkadg.linux@gmail.com>
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove function dimcb_io_write as all it does is call writel.
Modify calls to dimcb_io_write to writel, flipping the order of the
arguments as required.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/most/dim2/dim2.c | 10 ----
 drivers/staging/most/dim2/hal.c  | 79 +++++++++++++++-----------------
 drivers/staging/most/dim2/hal.h  |  2 -
 3 files changed, 38 insertions(+), 53 deletions(-)

diff --git a/drivers/staging/most/dim2/dim2.c b/drivers/staging/most/dim2/dim2.c
index 8d3da8e1d436..043a3e14fdfc 100644
--- a/drivers/staging/most/dim2/dim2.c
+++ b/drivers/staging/most/dim2/dim2.c
@@ -128,16 +128,6 @@ bool dim2_sysfs_get_state_cb(void)
 	return state;
 }
 
-/**
- * dimcb_io_write - callback from HAL to write value to an I/O register
- * @ptr32: register address
- * @value: value to write
- */
-void dimcb_io_write(u32 __iomem *ptr32, u32 value)
-{
-	writel(value, ptr32);
-}
-
 /**
  * dimcb_on_error - callback from HAL to report miscommunication between
  * HDM and HAL
diff --git a/drivers/staging/most/dim2/hal.c b/drivers/staging/most/dim2/hal.c
index fcf5d2a0f491..39e17a7d2f24 100644
--- a/drivers/staging/most/dim2/hal.c
+++ b/drivers/staging/most/dim2/hal.c
@@ -144,13 +144,13 @@ static void free_dbr(int offs, int size)
 
 static void dim2_transfer_madr(u32 val)
 {
-	dimcb_io_write(&g.dim2->MADR, val);
+	writel(val, &g.dim2->MADR);
 
 	/* wait for transfer completion */
 	while ((readl(&g.dim2->MCTL) & 1) != 1)
 		continue;
 
-	dimcb_io_write(&g.dim2->MCTL, 0);   /* clear transfer complete */
+	writel(0, &g.dim2->MCTL);   /* clear transfer complete */
 }
 
 static void dim2_clear_dbr(u16 addr, u16 size)
@@ -160,8 +160,8 @@ static void dim2_clear_dbr(u16 addr, u16 size)
 	u16 const end_addr = addr + size;
 	u32 const cmd = bit_mask(MADR_WNR_BIT) | bit_mask(MADR_TB_BIT);
 
-	dimcb_io_write(&g.dim2->MCTL, 0);   /* clear transfer complete */
-	dimcb_io_write(&g.dim2->MDAT0, 0);
+	writel(0, &g.dim2->MCTL);   /* clear transfer complete */
+	writel(0, &g.dim2->MDAT0);
 
 	for (; addr < end_addr; addr++)
 		dim2_transfer_madr(cmd | addr);
@@ -178,21 +178,21 @@ static void dim2_write_ctr_mask(u32 ctr_addr, const u32 *mask, const u32 *value)
 {
 	enum { MADR_WNR_BIT = 31 };
 
-	dimcb_io_write(&g.dim2->MCTL, 0);   /* clear transfer complete */
+	writel(0, &g.dim2->MCTL);   /* clear transfer complete */
 
 	if (mask[0] != 0)
-		dimcb_io_write(&g.dim2->MDAT0, value[0]);
+		writel(value[0], &g.dim2->MDAT0);
 	if (mask[1] != 0)
-		dimcb_io_write(&g.dim2->MDAT1, value[1]);
+		writel(value[1], &g.dim2->MDAT1);
 	if (mask[2] != 0)
-		dimcb_io_write(&g.dim2->MDAT2, value[2]);
+		writel(value[2], &g.dim2->MDAT2);
 	if (mask[3] != 0)
-		dimcb_io_write(&g.dim2->MDAT3, value[3]);
+		writel(value[3], &g.dim2->MDAT3);
 
-	dimcb_io_write(&g.dim2->MDWE0, mask[0]);
-	dimcb_io_write(&g.dim2->MDWE1, mask[1]);
-	dimcb_io_write(&g.dim2->MDWE2, mask[2]);
-	dimcb_io_write(&g.dim2->MDWE3, mask[3]);
+	writel(mask[0], &g.dim2->MDWE0);
+	writel(mask[1], &g.dim2->MDWE1);
+	writel(mask[2], &g.dim2->MDWE2);
+	writel(mask[3], &g.dim2->MDWE3);
 
 	dim2_transfer_madr(bit_mask(MADR_WNR_BIT) | ctr_addr);
 }
@@ -357,15 +357,13 @@ static void dim2_configure_channel(
 	dim2_configure_cat(AHB_CAT, ch_addr, type, is_tx ? 0 : 1);
 
 	/* unmask interrupt for used channel, enable mlb_sys_int[0] interrupt */
-	dimcb_io_write(&g.dim2->ACMR0,
-		       readl(&g.dim2->ACMR0) | bit_mask(ch_addr));
+	writel(readl(&g.dim2->ACMR0) | bit_mask(ch_addr), &g.dim2->ACMR0);
 }
 
 static void dim2_clear_channel(u8 ch_addr)
 {
 	/* mask interrupt for used channel, disable mlb_sys_int[0] interrupt */
-	dimcb_io_write(&g.dim2->ACMR0,
-		       readl(&g.dim2->ACMR0) & ~bit_mask(ch_addr));
+	writel(readl(&g.dim2->ACMR0) & ~bit_mask(ch_addr), &g.dim2->ACMR0);
 
 	dim2_clear_cat(AHB_CAT, ch_addr);
 	dim2_clear_adt(ch_addr);
@@ -374,7 +372,7 @@ static void dim2_clear_channel(u8 ch_addr)
 	dim2_clear_cdt(ch_addr);
 
 	/* clear channel status bit */
-	dimcb_io_write(&g.dim2->ACSR0, bit_mask(ch_addr));
+	writel(bit_mask(ch_addr), &g.dim2->ACSR0);
 }
 
 /* -------------------------------------------------------------------------- */
@@ -518,20 +516,20 @@ static inline u16 norm_sync_buffer_size(u16 buf_size, u16 bytes_per_frame)
 static void dim2_cleanup(void)
 {
 	/* disable MediaLB */
-	dimcb_io_write(&g.dim2->MLBC0, false << MLBC0_MLBEN_BIT);
+	writel(false << MLBC0_MLBEN_BIT, &g.dim2->MLBC0);
 
 	dim2_clear_ctram();
 
 	/* disable mlb_int interrupt */
-	dimcb_io_write(&g.dim2->MIEN, 0);
+	writel(0, &g.dim2->MIEN);
 
 	/* clear status for all dma channels */
-	dimcb_io_write(&g.dim2->ACSR0, 0xFFFFFFFF);
-	dimcb_io_write(&g.dim2->ACSR1, 0xFFFFFFFF);
+	writel(0xFFFFFFFF, &g.dim2->ACSR0);
+	writel(0xFFFFFFFF, &g.dim2->ACSR1);
 
 	/* mask interrupts for all channels */
-	dimcb_io_write(&g.dim2->ACMR0, 0);
-	dimcb_io_write(&g.dim2->ACMR1, 0);
+	writel(0, &g.dim2->ACMR0);
+	writel(0, &g.dim2->ACMR1);
 }
 
 static void dim2_initialize(bool enable_6pin, u8 mlb_clock)
@@ -539,23 +537,22 @@ static void dim2_initialize(bool enable_6pin, u8 mlb_clock)
 	dim2_cleanup();
 
 	/* configure and enable MediaLB */
-	dimcb_io_write(&g.dim2->MLBC0,
-		       enable_6pin << MLBC0_MLBPEN_BIT |
-		       mlb_clock << MLBC0_MLBCLK_SHIFT |
-		       g.fcnt << MLBC0_FCNT_SHIFT |
-		       true << MLBC0_MLBEN_BIT);
+	writel(enable_6pin << MLBC0_MLBPEN_BIT |
+	       mlb_clock << MLBC0_MLBCLK_SHIFT |
+	       g.fcnt << MLBC0_FCNT_SHIFT |
+	       true << MLBC0_MLBEN_BIT,
+	       &g.dim2->MLBC0);
 
 	/* activate all HBI channels */
-	dimcb_io_write(&g.dim2->HCMR0, 0xFFFFFFFF);
-	dimcb_io_write(&g.dim2->HCMR1, 0xFFFFFFFF);
+	writel(0xFFFFFFFF, &g.dim2->HCMR0);
+	writel(0xFFFFFFFF, &g.dim2->HCMR1);
 
 	/* enable HBI */
-	dimcb_io_write(&g.dim2->HCTL, bit_mask(HCTL_EN_BIT));
+	writel(bit_mask(HCTL_EN_BIT), &g.dim2->HCTL);
 
 	/* configure DMA */
-	dimcb_io_write(&g.dim2->ACTL,
-		       ACTL_DMA_MODE_VAL_DMA_MODE_1 << ACTL_DMA_MODE_BIT |
-		       true << ACTL_SCE_BIT);
+	writel(ACTL_DMA_MODE_VAL_DMA_MODE_1 << ACTL_DMA_MODE_BIT |
+	       true << ACTL_SCE_BIT, &g.dim2->ACTL);
 }
 
 static bool dim2_is_mlb_locked(void)
@@ -566,7 +563,7 @@ static bool dim2_is_mlb_locked(void)
 	u32 const c1 = readl(&g.dim2->MLBC1);
 	u32 const nda_mask = (u32)MLBC1_NDA_MASK << MLBC1_NDA_SHIFT;
 
-	dimcb_io_write(&g.dim2->MLBC1, c1 & nda_mask);
+	writel(c1 & nda_mask, &g.dim2->MLBC1);
 	return (readl(&g.dim2->MLBC1) & mask1) == 0 &&
 	       (readl(&g.dim2->MLBC0) & mask0) != 0;
 }
@@ -591,7 +588,7 @@ static inline bool service_channel(u8 ch_addr, u8 idx)
 	dim2_write_ctr_mask(ADT + ch_addr, mask, adt_w);
 
 	/* clear channel status bit */
-	dimcb_io_write(&g.dim2->ACSR0, bit_mask(ch_addr));
+	writel(bit_mask(ch_addr), &g.dim2->ACSR0);
 
 	return true;
 }
@@ -777,8 +774,8 @@ static u8 init_ctrl_async(struct dim_channel *ch, u8 type, u8 is_tx,
 
 void dim_service_mlb_int_irq(void)
 {
-	dimcb_io_write(&g.dim2->MS0, 0);
-	dimcb_io_write(&g.dim2->MS1, 0);
+	writel(0, &g.dim2->MS0);
+	writel(0, &g.dim2->MS1);
 }
 
 /**
@@ -825,7 +822,7 @@ u8 dim_init_async(struct dim_channel *ch, u8 is_tx, u16 ch_address,
 	if (is_tx && !g.atx_dbr.ch_addr) {
 		g.atx_dbr.ch_addr = ch->addr;
 		dbrcnt_init(ch->addr, ch->dbr_size);
-		dimcb_io_write(&g.dim2->MIEN, bit_mask(20));
+		writel(bit_mask(20), &g.dim2->MIEN);
 	}
 
 	return ret;
@@ -892,7 +889,7 @@ u8 dim_destroy_channel(struct dim_channel *ch)
 		return DIM_ERR_DRIVER_NOT_INITIALIZED;
 
 	if (ch->addr == g.atx_dbr.ch_addr) {
-		dimcb_io_write(&g.dim2->MIEN, 0);
+		writel(0, &g.dim2->MIEN);
 		g.atx_dbr.ch_addr = 0;
 	}
 
diff --git a/drivers/staging/most/dim2/hal.h b/drivers/staging/most/dim2/hal.h
index d16268bd9317..20531449acab 100644
--- a/drivers/staging/most/dim2/hal.h
+++ b/drivers/staging/most/dim2/hal.h
@@ -97,8 +97,6 @@ bool dim_enqueue_buffer(struct dim_channel *ch, u32 buffer_addr,
 
 bool dim_detach_buffers(struct dim_channel *ch, u16 buffers_number);
 
-void dimcb_io_write(u32 __iomem *ptr32, u32 value);
-
 void dimcb_on_error(u8 error_id, const char *error_message);
 
 #endif /* _DIM2_HAL_H */
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
