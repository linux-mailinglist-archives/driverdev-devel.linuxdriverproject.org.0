Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A9AA4453
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Aug 2019 13:56:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29D7A86B1F;
	Sat, 31 Aug 2019 11:55:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yfdjDAYYMn1E; Sat, 31 Aug 2019 11:55:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 50F6986E7F;
	Sat, 31 Aug 2019 11:55:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C2B541BF426
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 11:55:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BFC9D20031
 for <devel@linuxdriverproject.org>; Sat, 31 Aug 2019 11:55:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1IaV8CxRUhzG for <devel@linuxdriverproject.org>;
 Sat, 31 Aug 2019 11:55:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f194.google.com (mail-pg1-f194.google.com
 [209.85.215.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 2E10320028
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 11:55:55 +0000 (UTC)
Received: by mail-pg1-f194.google.com with SMTP id n9so4894248pgc.1
 for <devel@driverdev.osuosl.org>; Sat, 31 Aug 2019 04:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=jiPI/S1I8ovmltBRaSbmMFouXNTRLulDlE8rPr/ejko=;
 b=GGUFrqGAVjbyF5vKF3QF51JSgXMSZfxc7mdKdQy421z5AVSFolgparAvlh75IjaOO1
 7PcWSJ4fxcA3OHXKMqg7lai8U5bEr60glEVhd8RNRQ0r6k6KZT3kTS0PSddADp+rOdvk
 l1McEl6fVEe+X5umSQIxqN42n8gwqpiEXPR4+bEbz38lyiNoFuR3tZ+cdC88mGUOnjcN
 hqL6YkkjDXobfVk8b1BBUM+yVkcVqbnFmyFOMFGZuAp7qMhAPW2V3V2ZEjWAVI9pdd1m
 XwOgjgDZlBEYt4oGeR2l6JmVDkvqCgOCM3wc9eToZWJCuNkD4ygUDoTpGUMWyS/qK5ZG
 46gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jiPI/S1I8ovmltBRaSbmMFouXNTRLulDlE8rPr/ejko=;
 b=soAQKZ+rnJs0Bv4cOLqi8ebPNfo+qCWXY9G+fp4rWbe8o6sO2uS6Nfo3ggKgAf9oS8
 ndevvHZu2SS7JUfK5wG6m2JtU/i3SLh10pOD4rAFmv2WLOHJw1ti+xH8cYEH5shHG9Nb
 PESDWGj8cLgnihDv1lE0KKYIhos+xfzFn5vOjiwHFPMTkca3yd59FPbclT0YiLyUZUal
 Z1SQblaN5UWQ59elnnMhnzppLSBJvt0V+2Sr8QXA83PNFRF/BaQPHgAC7klC9WxbJnOF
 nlAr9ortCeT8CEknU0tZudVlwmOZgm2/JN0feJNNLxoR7HMxtlmFQJ3HhVJRxzebu2KJ
 awfA==
X-Gm-Message-State: APjAAAW2Dr3dBOjUmthK8jP94W6xJTG4X0S4Z0xr0VcHVh+FFeMp+LBH
 /jjgO6tmJANPQCvA5j0Dna8=
X-Google-Smtp-Source: APXvYqz8wPT9Oo/EEVfCWytD2ATICtzrqqQct0x8l87FYI1dLTg9Ot+r67im8hkY0QQzTA+N8NzwKg==
X-Received: by 2002:a17:90a:ad4a:: with SMTP id
 w10mr3617827pjv.41.1567252554735; 
 Sat, 31 Aug 2019 04:55:54 -0700 (PDT)
Received: from localhost.localdomain ([183.83.73.90])
 by smtp.gmail.com with ESMTPSA id t15sm10353411pfc.47.2019.08.31.04.55.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 31 Aug 2019 04:55:54 -0700 (PDT)
From: Harsh Jain <harshjain32@gmail.com>
To: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging:kpc2000: Fix long constant sparse warning
Date: Sat, 31 Aug 2019 17:25:32 +0530
Message-Id: <20190831115532.2398-1-harshjain32@gmail.com>
X-Mailer: git-send-email 2.17.1
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
Cc: harshjain32@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

It fixed following warning in kpc2000 driver
"constant XXXX is so big it is unsigned long"

Signed-off-by: Harsh Jain <harshjain32@gmail.com>
---
 drivers/staging/kpc2000/kpc2000/cell_probe.c | 18 +++++++++---------
 drivers/staging/kpc2000/kpc2000/core.c       | 18 +++++++++---------
 drivers/staging/kpc2000/kpc_dma/fileops.c    |  8 ++++----
 3 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index c124a836db27..738122afc2ae 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -53,15 +53,15 @@ struct core_table_entry {
 static
 void  parse_core_table_entry_v0(struct core_table_entry *cte, const u64 read_val)
 {
-	cte->type                = ((read_val & 0xFFF0000000000000) >> 52);
-	cte->offset              = ((read_val & 0x00000000FFFF0000) >> 16) * 4096;
-	cte->length              = ((read_val & 0x0000FFFF00000000) >> 32) * 8;
-	cte->s2c_dma_present     = ((read_val & 0x0008000000000000) >> 51);
-	cte->s2c_dma_channel_num = ((read_val & 0x0007000000000000) >> 48);
-	cte->c2s_dma_present     = ((read_val & 0x0000000000008000) >> 15);
-	cte->c2s_dma_channel_num = ((read_val & 0x0000000000007000) >> 12);
-	cte->irq_count           = ((read_val & 0x0000000000000C00) >> 10);
-	cte->irq_base_num        = ((read_val & 0x00000000000003F8) >>  3);
+	cte->type                = ((read_val & 0xFFF0000000000000UL) >> 52);
+	cte->offset              = ((read_val & 0x00000000FFFF0000UL) >> 16) * 4096;
+	cte->length              = ((read_val & 0x0000FFFF00000000UL) >> 32) * 8;
+	cte->s2c_dma_present     = ((read_val & 0x0008000000000000UL) >> 51);
+	cte->s2c_dma_channel_num = ((read_val & 0x0007000000000000UL) >> 48);
+	cte->c2s_dma_present     = ((read_val & 0x0000000000008000UL) >> 15);
+	cte->c2s_dma_channel_num = ((read_val & 0x0000000000007000UL) >> 12);
+	cte->irq_count           = ((read_val & 0x0000000000000C00UL) >> 10);
+	cte->irq_base_num        = ((read_val & 0x00000000000003F8UL) >>  3);
 }
 
 static
diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index cb05cca687e1..0a23727d0dc3 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -205,7 +205,7 @@ static void wait_and_read_ssid(struct kp2000_device *pcard)
 	u64 read_val = readq(pcard->sysinfo_regs_base + REG_FPGA_SSID);
 	unsigned long timeout;
 
-	if (read_val & 0x8000000000000000) {
+	if (read_val & 0x8000000000000000UL) {
 		pcard->ssid = read_val;
 		return;
 	}
@@ -213,7 +213,7 @@ static void wait_and_read_ssid(struct kp2000_device *pcard)
 	timeout = jiffies + (HZ * 2);
 	do {
 		read_val = readq(pcard->sysinfo_regs_base + REG_FPGA_SSID);
-		if (read_val & 0x8000000000000000) {
+		if (read_val & 0x8000000000000000UL) {
 			pcard->ssid = read_val;
 			return;
 		}
@@ -241,16 +241,16 @@ static int  read_system_regs(struct kp2000_device *pcard)
 	}
 
 	read_val = readq(pcard->sysinfo_regs_base + REG_CARD_ID_AND_BUILD);
-	pcard->card_id = (read_val & 0xFFFFFFFF00000000) >> 32;
-	pcard->build_version = (read_val & 0x00000000FFFFFFFF) >> 0;
+	pcard->card_id = (read_val & 0xFFFFFFFF00000000UL) >> 32;
+	pcard->build_version = (read_val & 0x00000000FFFFFFFFUL) >> 0;
 
 	read_val = readq(pcard->sysinfo_regs_base + REG_DATE_AND_TIME_STAMPS);
-	pcard->build_datestamp = (read_val & 0xFFFFFFFF00000000) >> 32;
-	pcard->build_timestamp = (read_val & 0x00000000FFFFFFFF) >> 0;
+	pcard->build_datestamp = (read_val & 0xFFFFFFFF00000000UL) >> 32;
+	pcard->build_timestamp = (read_val & 0x00000000FFFFFFFFUL) >> 0;
 
 	read_val = readq(pcard->sysinfo_regs_base + REG_CORE_TABLE_OFFSET);
-	pcard->core_table_length = (read_val & 0xFFFFFFFF00000000) >> 32;
-	pcard->core_table_offset = (read_val & 0x00000000FFFFFFFF) >> 0;
+	pcard->core_table_length = (read_val & 0xFFFFFFFF00000000UL) >> 32;
+	pcard->core_table_offset = (read_val & 0x00000000FFFFFFFFUL) >> 0;
 
 	wait_and_read_ssid(pcard);
 
@@ -401,7 +401,7 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
 		goto err_release_dma;
 
 	// Disable all "user" interrupts because they're not used yet.
-	writeq(0xFFFFFFFFFFFFFFFF,
+	writeq(0xFFFFFFFFFFFFFFFFUL,
 	       pcard->sysinfo_regs_base + REG_INTERRUPT_MASK);
 
 	// let the card master PCIe
diff --git a/drivers/staging/kpc2000/kpc_dma/fileops.c b/drivers/staging/kpc2000/kpc_dma/fileops.c
index 48ca88bc6b0b..cb52bd9a6d2f 100644
--- a/drivers/staging/kpc2000/kpc_dma/fileops.c
+++ b/drivers/staging/kpc2000/kpc_dma/fileops.c
@@ -146,15 +146,15 @@ static int kpc_dma_transfer(struct dev_private_data *priv,
 			card_addr += desc->DescByteCount;
 
 			dma_addr  = sg_dma_address(sg) + (p * 0x80000);
-			desc->DescSystemAddrLS = (dma_addr & 0x00000000FFFFFFFF) >>  0;
-			desc->DescSystemAddrMS = (dma_addr & 0xFFFFFFFF00000000) >> 32;
+			desc->DescSystemAddrLS = (dma_addr & 0x00000000FFFFFFFFUL) >>  0;
+			desc->DescSystemAddrMS = (dma_addr & 0xFFFFFFFF00000000UL) >> 32;
 
 			user_ctl = acd->priv->user_ctl;
 			if (i == acd->mapped_entry_count-1 && p == pcnt-1) {
 				user_ctl = acd->priv->user_ctl_last;
 			}
-			desc->DescUserControlLS = (user_ctl & 0x00000000FFFFFFFF) >>  0;
-			desc->DescUserControlMS = (user_ctl & 0xFFFFFFFF00000000) >> 32;
+			desc->DescUserControlLS = (user_ctl & 0x00000000FFFFFFFFUL) >>  0;
+			desc->DescUserControlMS = (user_ctl & 0xFFFFFFFF00000000UL) >> 32;
 
 			if (i == acd->mapped_entry_count-1 && p == pcnt-1)
 				desc->acd = acd;
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
