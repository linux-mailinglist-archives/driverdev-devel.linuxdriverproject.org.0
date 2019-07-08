Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 05BC561AC1
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 Jul 2019 08:42:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7232B8608B;
	Mon,  8 Jul 2019 06:42:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HENF5ilH6hEJ; Mon,  8 Jul 2019 06:42:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C6DAC85BDF;
	Mon,  8 Jul 2019 06:42:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2F24F1BF577
 for <devel@linuxdriverproject.org>; Mon,  8 Jul 2019 06:42:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 24EA987347
 for <devel@linuxdriverproject.org>; Mon,  8 Jul 2019 06:42:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zVY8cjFCxdDj for <devel@linuxdriverproject.org>;
 Mon,  8 Jul 2019 06:42:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3DB4F8731A
 for <devel@driverdev.osuosl.org>; Mon,  8 Jul 2019 06:42:02 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id cl9so7696094plb.10
 for <devel@driverdev.osuosl.org>; Sun, 07 Jul 2019 23:42:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oumeg+yZFDFZu4sK49Nx4eVRhUTd+FXpIWAn79PaRdk=;
 b=Dk1iEgTIITT/g2Kf3rL4UwciV5LQQYbJw0eiX4m24RiqfBISW/fEFm2Eq5BDH8gcif
 37zv/q/ixo0A/eOVaW3rRYtzMZNZfo3c8jtNQ4Dib5cnpraYjWt2pedMqAg/yRBwxRfh
 7n9LVslrNAsgFUBfpgg+tr0owsAyx7rBSIbEYiCrTgaUTUXef7m1L2UvOxAa9l7pA+BV
 K+BRsJQ3uhmzowqj8Iua0m+6Y9d4M4trlf9wPhrX7m4p8LeD5iLN7efS+ASrk5zy6dr3
 KroWaSuceTPCMFndxCMcH6LTQ0TI14rUUl1oFtqO7vYWkbgxhOZi+DrbZxDOfUeFP38o
 qgOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oumeg+yZFDFZu4sK49Nx4eVRhUTd+FXpIWAn79PaRdk=;
 b=d7M/f7W5wgUxtPwltF2e13gbIXLGbC7qa8MgJ2NAW5WNcan5XWcwuGj0k6WRHQuIgG
 0p/qYFi5L5hMlrRH6ZmPp9CJXdI5LMS1s42CvuYv4KMeLQF3WGzqb4uKBLSI5WGJe5CK
 xyNff8EVzyLrNxCtZYBtV/V8kfuypbasQcfWL/BMs6lubzCfV2FaLqm2a5SeMeNBTBDq
 YgEuaQOmCmGI+twmxD+DtFzZqnBvJNmOWUzRbanxsKaIUpTVKI+QnMbYr0zIzL4+M2Rn
 Hkm9ayrcoHwjumC+dvnmVtuLh1AvQplJyYOBsC2dLzgldW0mDI7N7E/bm0U5nEA8CWmr
 DEfg==
X-Gm-Message-State: APjAAAWNQxW9ZlwlKU842Uu37c8Nvkmxw7g6KUX9gcKGJajkrog3jQs5
 zERpgoA0pHicNAWEBV6Jkbg=
X-Google-Smtp-Source: APXvYqzmNaQyS/Bd2G2BPSLUbXOGzTbm0GK641Rldd5EKfbYQ/MbhAcGGOwJhbiSZSXw28ARDg9HwQ==
X-Received: by 2002:a17:902:4e25:: with SMTP id
 f34mr22206731ple.305.1562568121969; 
 Sun, 07 Jul 2019 23:42:01 -0700 (PDT)
Received: from localhost.localdomain ([110.227.64.207])
 by smtp.gmail.com with ESMTPSA id b11sm18729817pfd.18.2019.07.07.23.42.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 07 Jul 2019 23:42:01 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 2/3] staging: most: dim2: Remove function dimcb_io_read()
Date: Mon,  8 Jul 2019 12:11:44 +0530
Message-Id: <20190708064145.3250-2-nishkadg.linux@gmail.com>
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

Remove function dimcb_io_read as it does nothing except call inbuilt
function readl.
Modify call sites accordingly.
Issue found with Coccinelle.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/most/dim2/dim2.c |  9 ---------
 drivers/staging/most/dim2/hal.c  | 15 ++++++++-------
 drivers/staging/most/dim2/hal.h  |  2 --
 3 files changed, 8 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/most/dim2/dim2.c b/drivers/staging/most/dim2/dim2.c
index 31fbc1a75b06..8d3da8e1d436 100644
--- a/drivers/staging/most/dim2/dim2.c
+++ b/drivers/staging/most/dim2/dim2.c
@@ -128,15 +128,6 @@ bool dim2_sysfs_get_state_cb(void)
 	return state;
 }
 
-/**
- * dimcb_io_read - callback from HAL to read an I/O register
- * @ptr32: register address
- */
-u32 dimcb_io_read(u32 __iomem *ptr32)
-{
-	return readl(ptr32);
-}
-
 /**
  * dimcb_io_write - callback from HAL to write value to an I/O register
  * @ptr32: register address
diff --git a/drivers/staging/most/dim2/hal.c b/drivers/staging/most/dim2/hal.c
index d4d532e76147..fcf5d2a0f491 100644
--- a/drivers/staging/most/dim2/hal.c
+++ b/drivers/staging/most/dim2/hal.c
@@ -13,6 +13,7 @@
 #include "reg.h"
 #include <linux/stddef.h>
 #include <linux/kernel.h>
+#include <linux/io.h>
 
 /*
  * Size factor for isochronous DBR buffer.
@@ -146,7 +147,7 @@ static void dim2_transfer_madr(u32 val)
 	dimcb_io_write(&g.dim2->MADR, val);
 
 	/* wait for transfer completion */
-	while ((dimcb_io_read(&g.dim2->MCTL) & 1) != 1)
+	while ((readl(&g.dim2->MCTL) & 1) != 1)
 		continue;
 
 	dimcb_io_write(&g.dim2->MCTL, 0);   /* clear transfer complete */
@@ -170,7 +171,7 @@ static u32 dim2_read_ctr(u32 ctr_addr, u16 mdat_idx)
 {
 	dim2_transfer_madr(ctr_addr);
 
-	return dimcb_io_read((&g.dim2->MDAT0) + mdat_idx);
+	return readl((&g.dim2->MDAT0) + mdat_idx);
 }
 
 static void dim2_write_ctr_mask(u32 ctr_addr, const u32 *mask, const u32 *value)
@@ -357,14 +358,14 @@ static void dim2_configure_channel(
 
 	/* unmask interrupt for used channel, enable mlb_sys_int[0] interrupt */
 	dimcb_io_write(&g.dim2->ACMR0,
-		       dimcb_io_read(&g.dim2->ACMR0) | bit_mask(ch_addr));
+		       readl(&g.dim2->ACMR0) | bit_mask(ch_addr));
 }
 
 static void dim2_clear_channel(u8 ch_addr)
 {
 	/* mask interrupt for used channel, disable mlb_sys_int[0] interrupt */
 	dimcb_io_write(&g.dim2->ACMR0,
-		       dimcb_io_read(&g.dim2->ACMR0) & ~bit_mask(ch_addr));
+		       readl(&g.dim2->ACMR0) & ~bit_mask(ch_addr));
 
 	dim2_clear_cat(AHB_CAT, ch_addr);
 	dim2_clear_adt(ch_addr);
@@ -562,12 +563,12 @@ static bool dim2_is_mlb_locked(void)
 	u32 const mask0 = bit_mask(MLBC0_MLBLK_BIT);
 	u32 const mask1 = bit_mask(MLBC1_CLKMERR_BIT) |
 			  bit_mask(MLBC1_LOCKERR_BIT);
-	u32 const c1 = dimcb_io_read(&g.dim2->MLBC1);
+	u32 const c1 = readl(&g.dim2->MLBC1);
 	u32 const nda_mask = (u32)MLBC1_NDA_MASK << MLBC1_NDA_SHIFT;
 
 	dimcb_io_write(&g.dim2->MLBC1, c1 & nda_mask);
-	return (dimcb_io_read(&g.dim2->MLBC1) & mask1) == 0 &&
-	       (dimcb_io_read(&g.dim2->MLBC0) & mask0) != 0;
+	return (readl(&g.dim2->MLBC1) & mask1) == 0 &&
+	       (readl(&g.dim2->MLBC0) & mask0) != 0;
 }
 
 /* -------------------------------------------------------------------------- */
diff --git a/drivers/staging/most/dim2/hal.h b/drivers/staging/most/dim2/hal.h
index fca6c22de8a6..d16268bd9317 100644
--- a/drivers/staging/most/dim2/hal.h
+++ b/drivers/staging/most/dim2/hal.h
@@ -97,8 +97,6 @@ bool dim_enqueue_buffer(struct dim_channel *ch, u32 buffer_addr,
 
 bool dim_detach_buffers(struct dim_channel *ch, u16 buffers_number);
 
-u32 dimcb_io_read(u32 __iomem *ptr32);
-
 void dimcb_io_write(u32 __iomem *ptr32, u32 value);
 
 void dimcb_on_error(u8 error_id, const char *error_message);
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
