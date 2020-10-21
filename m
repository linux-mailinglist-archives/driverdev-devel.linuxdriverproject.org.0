Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E38BB2946CF
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 05:03:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6102B872FA;
	Wed, 21 Oct 2020 03:03:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u2+sphJ81O4j; Wed, 21 Oct 2020 03:03:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 618CD872C9;
	Wed, 21 Oct 2020 03:03:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D02731BF995
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 03:03:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CC4F486A3F
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 03:03:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Fsaehb41-e2g for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 03:03:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 48876867BC
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 03:03:44 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id w11so455135pll.8
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 20:03:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=5vkScaGqTpAr8sEadR6e0ZKGuB2E37ElQJ/NHuCEUcw=;
 b=ruyUFyBCKOApMSfgZTtbT+vX6LXChKfcfB73SA7d9ckTZbdvAmjSsUb9I5ihWdDxL6
 2sc2zgKYLwfyP2O7z5TBkGGgewsKoxbRxr7V8yh16Bb3QCRq4YSLUNx9d+VaDy8TMFa9
 xzEOVT8x1eSiVsqvddhnOE+LiTo3Y0MLnY3sYwEfB1F+kt7LXi6903K0scTEkh4fO4ST
 sj32QRvIm7Na04Nldx9be89omhepF6bioL58x2t2yL7JGuZiBZuDY/o5zo23wxXJ9vDm
 xW4V+s9h8Y2Pnhfm9FWESGcvCTwzcOSV732oJXe5zAF6Xd3KdUgE60xj6/ejJr5TKcCF
 1LpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=5vkScaGqTpAr8sEadR6e0ZKGuB2E37ElQJ/NHuCEUcw=;
 b=LDLLBHeZG7TEW0RwhXLCJpbDHgMip+MFYGhyCnx/6PBrIbdn36+1mLLmAmcQ0uFVH9
 NGP8SPQw8V8Vnmqm+bLuttO/SPHi2S1er4+9kD4iOenm9oqcgV3PFOAcexGVQF8Tz8pt
 fSry11cdHKo73oLSG7AjKR435OYQWiXAsqL6Z8w1CnGh7H2M3FVnb82EG61w3PtC+St/
 AHiE3gLCGVWcqX2+U/7fl1c8FnROve/KtOjvXf6QGi5ncG5wrDbMR9l/rymNbYG4w1pR
 qceKcn/zx2tftzzvr5l33I/4OzdRxpRBMfs0fnCxLyCgBvlVX5BM51VX/aF8RstKXj5W
 +j6Q==
X-Gm-Message-State: AOAM5307jB+qqoIWIIykaonx7j2EmS11sCVx3BCs5xvSVErirfjdlWH0
 +6RGJiCQSbCyXUZy5NtXBK4=
X-Google-Smtp-Source: ABdhPJw6joaV5rertj5ICkjtbtWRpEoZBLUVcVJmgMhBEq5jpM6ut4pvymcaA/LA/rs4Jr3tlzDY3w==
X-Received: by 2002:a17:90a:b38f:: with SMTP id
 e15mr1118103pjr.226.1603249423842; 
 Tue, 20 Oct 2020 20:03:43 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id z20sm358162pfk.199.2020.10.20.20.03.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Oct 2020 20:03:42 -0700 (PDT)
Date: Wed, 21 Oct 2020 08:33:35 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Subject: [PATCH 1/2] staging: kpc2000: resolve various code style issues
Message-ID: <bce6824343f7a10919be5130b5a6276ed186701c.1603248984.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: mh12gx2825@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Multiple issues reported by checkpatch script around lines exceeding 100
columns, indentation of function parameters, extra blank lines. These
code formatting changes improves the code readability.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/kpc2000/kpc2000/cell_probe.c  | 71 ++++++++++++++-----
 drivers/staging/kpc2000/kpc2000/core.c        |  3 +-
 .../staging/kpc2000/kpc2000/dma_common_defs.h |  3 +-
 3 files changed, 58 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index 738122afc2ae..e7e963d62699 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -30,9 +30,12 @@
  *
  */
 
-#define KPC_OLD_DMA_CH_NUM(present, channel)   ((present) ? (0x8 | ((channel) & 0x7)) : 0)
-#define KPC_OLD_S2C_DMA_CH_NUM(cte)   KPC_OLD_DMA_CH_NUM(cte.s2c_dma_present, cte.s2c_dma_channel_num)
-#define KPC_OLD_C2S_DMA_CH_NUM(cte)   KPC_OLD_DMA_CH_NUM(cte.c2s_dma_present, cte.c2s_dma_channel_num)
+#define KPC_OLD_DMA_CH_NUM(present, channel)   \
+		((present) ? (0x8 | ((channel) & 0x7)) : 0)
+#define KPC_OLD_S2C_DMA_CH_NUM(cte)   \
+		KPC_OLD_DMA_CH_NUM(cte.s2c_dma_present, cte.s2c_dma_channel_num)
+#define KPC_OLD_C2S_DMA_CH_NUM(cte)   \
+		KPC_OLD_DMA_CH_NUM(cte.c2s_dma_present, cte.c2s_dma_channel_num)
 
 #define KP_CORE_ID_INVALID      0
 #define KP_CORE_ID_I2C          3
@@ -67,7 +70,8 @@ void  parse_core_table_entry_v0(struct core_table_entry *cte, const u64 read_val
 static
 void dbg_cte(struct kp2000_device *pcard, struct core_table_entry *cte)
 {
-	dev_dbg(&pcard->pdev->dev, "CTE: type:%3d  offset:%3d (%3d)  length:%3d (%3d)  s2c:%d  c2s:%d  irq_count:%d  base_irq:%d\n",
+	dev_dbg(&pcard->pdev->dev,
+		"CTE: type:%3d  offset:%3d (%3d)  length:%3d (%3d)  s2c:%d  c2s:%d  irq_count:%d  base_irq:%d\n",
 		cte->type,
 		cte->offset,
 		cte->offset / 4096,
@@ -107,7 +111,14 @@ static int probe_core_basic(unsigned int core_num, struct kp2000_device *pcard,
 		.ddna              = pcard->ddna,
 	};
 
-	dev_dbg(&pcard->pdev->dev, "Found Basic core: type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\n", cte.type, KPC_OLD_S2C_DMA_CH_NUM(cte), KPC_OLD_C2S_DMA_CH_NUM(cte), cte.offset, cte.length, cte.length / 8);
+	dev_dbg(&pcard->pdev->dev,
+		"Found Basic core: type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\n",
+		cte.type,
+		KPC_OLD_S2C_DMA_CH_NUM(cte),
+		KPC_OLD_C2S_DMA_CH_NUM(cte),
+		cte.offset,
+		cte.length,
+		cte.length / 8);
 
 	cell.platform_data = &core_pdata;
 	cell.pdata_size = sizeof(struct kpc_core_device_platdata);
@@ -290,7 +301,14 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
 	struct kpc_uio_device *kudev;
 	int rv;
 
-	dev_dbg(&pcard->pdev->dev, "Found UIO core:   type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\n", cte.type, KPC_OLD_S2C_DMA_CH_NUM(cte), KPC_OLD_C2S_DMA_CH_NUM(cte), cte.offset, cte.length, cte.length / 8);
+	dev_dbg(&pcard->pdev->dev,
+		"Found UIO core:   type = %02d  dma = %02x / %02x  offset = 0x%x  length = 0x%x (%d regs)\n",
+		cte.type,
+		KPC_OLD_S2C_DMA_CH_NUM(cte),
+		KPC_OLD_C2S_DMA_CH_NUM(cte),
+		cte.offset,
+		cte.length,
+		cte.length / 8);
 
 	kudev = kzalloc(sizeof(*kudev), GFP_KERNEL);
 	if (!kudev)
@@ -315,10 +333,14 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
 
 	kudev->uioinfo.mem[0].name = "uiomap";
 	kudev->uioinfo.mem[0].addr = pci_resource_start(pcard->pdev, REG_BAR) + cte.offset;
-	kudev->uioinfo.mem[0].size = (cte.length + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1); // Round up to nearest PAGE_SIZE boundary
+
+	// Round up to nearest PAGE_SIZE boundary
+	kudev->uioinfo.mem[0].size = (cte.length + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1);
 	kudev->uioinfo.mem[0].memtype = UIO_MEM_PHYS;
 
-	kudev->dev = device_create(kpc_uio_class, &pcard->pdev->dev, MKDEV(0, 0), kudev, "%s.%d.%d.%d", kudev->uioinfo.name, pcard->card_num, cte.type, kudev->core_num);
+	kudev->dev = device_create(kpc_uio_class,
+				   &pcard->pdev->dev, MKDEV(0, 0), kudev, "%s.%d.%d.%d",
+				   kudev->uioinfo.name, pcard->card_num, cte.type, kudev->core_num);
 	if (IS_ERR(kudev->dev)) {
 		dev_err(&pcard->pdev->dev, "%s: device_create failed!\n",
 			__func__);
@@ -341,7 +363,9 @@ static int probe_core_uio(unsigned int core_num, struct kp2000_device *pcard,
 	return 0;
 }
 
-static int  create_dma_engine_core(struct kp2000_device *pcard, size_t engine_regs_offset, int engine_num, int irq_num)
+static int  create_dma_engine_core(struct kp2000_device *pcard,
+				   size_t engine_regs_offset,
+				   int engine_num, int irq_num)
 {
 	struct mfd_cell  cell = { .id = engine_num };
 	struct resource  resources[2];
@@ -380,18 +404,28 @@ static int  kp2000_setup_dma_controller(struct kp2000_device *pcard)
 
 	// S2C Engines
 	for (i = 0 ; i < 32 ; i++) {
-		capabilities_reg = readq(pcard->dma_bar_base + KPC_DMA_S2C_BASE_OFFSET + (KPC_DMA_ENGINE_SIZE * i));
+		capabilities_reg = readq(pcard->dma_bar_base +
+					 KPC_DMA_S2C_BASE_OFFSET +
+					 (KPC_DMA_ENGINE_SIZE * i));
+
 		if (capabilities_reg & ENGINE_CAP_PRESENT_MASK) {
-			err = create_dma_engine_core(pcard, (KPC_DMA_S2C_BASE_OFFSET + (KPC_DMA_ENGINE_SIZE * i)), i,  pcard->pdev->irq);
+			err = create_dma_engine_core(pcard, (KPC_DMA_S2C_BASE_OFFSET +
+							    (KPC_DMA_ENGINE_SIZE * i)),
+						     i, pcard->pdev->irq);
 			if (err)
 				goto err_out;
 		}
 	}
 	// C2S Engines
 	for (i = 0 ; i < 32 ; i++) {
-		capabilities_reg = readq(pcard->dma_bar_base + KPC_DMA_C2S_BASE_OFFSET + (KPC_DMA_ENGINE_SIZE * i));
+		capabilities_reg = readq(pcard->dma_bar_base +
+					 KPC_DMA_C2S_BASE_OFFSET +
+					 (KPC_DMA_ENGINE_SIZE * i));
+
 		if (capabilities_reg & ENGINE_CAP_PRESENT_MASK) {
-			err = create_dma_engine_core(pcard, (KPC_DMA_C2S_BASE_OFFSET + (KPC_DMA_ENGINE_SIZE * i)), 32 + i,  pcard->pdev->irq);
+			err = create_dma_engine_core(pcard, (KPC_DMA_C2S_BASE_OFFSET +
+							    (KPC_DMA_ENGINE_SIZE * i)),
+						     32 + i,  pcard->pdev->irq);
 			if (err)
 				goto err_out;
 		}
@@ -433,10 +467,15 @@ int  kp2000_probe_cores(struct kp2000_device *pcard)
 	// Then, iterate over the possible core types.
 	for (current_type_id = 1 ; current_type_id <= highest_core_id ; current_type_id++) {
 		unsigned int core_num = 0;
-		// Foreach core type, iterate the whole table and instantiate subdevices for each core.
-		// Yes, this is O(n*m) but the actual runtime is small enough that it's an acceptable tradeoff.
+		/*
+		 * Foreach core type, iterate the whole table and instantiate
+		 * subdevices for each core.
+		 * Yes, this is O(n*m) but the actual runtime is small enough
+		 * that it's an acceptable tradeoff.
+		 */
 		for (i = 0 ; i < pcard->core_table_length ; i++) {
-			read_val = readq(pcard->sysinfo_regs_base + ((pcard->core_table_offset + i) * 8));
+			read_val = readq(pcard->sysinfo_regs_base +
+					 ((pcard->core_table_offset + i) * 8));
 			parse_core_table_entry(&cte, read_val, pcard->core_table_rev);
 
 			if (cte.type != current_type_id)
diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index 358d7b2f4ad1..6462a3059fb0 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -124,6 +124,7 @@ static ssize_t cpld_reconfigure(struct device *dev,
 	writeq(wr_val, pcard->sysinfo_regs_base + REG_CPLD_CONFIG);
 	return count;
 }
+
 static DEVICE_ATTR(cpld_reconfigure, 0220, NULL, cpld_reconfigure);
 
 static ssize_t irq_mask_reg_show(struct device *dev,
@@ -367,7 +368,7 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
 	dma_bar_phys_len = pci_resource_len(pcard->pdev, DMA_BAR);
 
 	pcard->dma_bar_base = ioremap(dma_bar_phys_addr,
-					      dma_bar_phys_len);
+				      dma_bar_phys_len);
 	if (!pcard->dma_bar_base) {
 		dev_err(&pcard->pdev->dev,
 			"probe: DMA_BAR could not remap memory to virtual space\n");
diff --git a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
index 21450e3d408f..8bc78be3c259 100644
--- a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
+++ b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
@@ -6,8 +6,7 @@
 #define KPC_DMA_S2C_BASE_OFFSET     0x0000
 #define KPC_DMA_C2S_BASE_OFFSET     0x2000
 #define KPC_DMA_ENGINE_SIZE         0x0100
-#define  ENGINE_CAP_PRESENT_MASK            0x1
-
+#define ENGINE_CAP_PRESENT_MASK     0x1
 
 #define KPC_DMA_CARD_IRQ_ENABLE                 (1 << 0)
 #define KPC_DMA_CARD_IRQ_ACTIVE                 (1 << 1)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
