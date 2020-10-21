Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E6667295369
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 22:21:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DC74E86A42;
	Wed, 21 Oct 2020 20:21:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HNL7sIkCRWcl; Wed, 21 Oct 2020 20:21:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 53FCC86A4A;
	Wed, 21 Oct 2020 20:21:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06F831BF2A0
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 20:21:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D99FB2E0F1
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 20:21:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9YITrx1OW5bK for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 20:21:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id B227C32CFB
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 07:22:44 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id t4so742150plq.13
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 00:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=TDUK2ueSGjIe6K+YFlkySvwrKftZbl2/og1v3K5Fvho=;
 b=OBi+Qzvjm6zbf2H3I+dHK8W52+iXxbsUBCrWB7Zlimu44wRJAJhF2YTtl2aAPzw45P
 yLi+lnLZvwNXC9ssHHPzQ9ho00HeZ0q4Fu4qskKQ8qG6a+UbARJTZFoUgIDKhmM+a3Mn
 NPNJqEJMoguATa3u9ciA5yf7TxCVyR5BopVFeNNG5GmCE4BFyhy63kVLqHTT79pc/95w
 7bVhb8avF1O7sfV3RNZ9Aqbm1YAODwAFSFhIYelH4CqxlzKHcsZkGDbyYSz4opL5juzb
 Cnx4W6JT5P+d1Cx9kzmL2Vug4V0Mq/afk7Wiu88UT+Y5mfvYDBxYShY4RABPSoyqDujS
 8E7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=TDUK2ueSGjIe6K+YFlkySvwrKftZbl2/og1v3K5Fvho=;
 b=ngJlS7AvuxDlHwU1mh7kM9EJGZeBp8z044/8Wumj+FIBSlTEnfTC/uqAmE/pFk6HPs
 0R5LcJ5IEXYf6y35w+coBmSG23tvAjJejCrJM+Ez43H4ahsPm5euOxKF3Ia0VhcY26/7
 kSn0TIwK8o+ZB9OUuUdmZwL7qz9jTJHUxzXTAIfSX+r3NuUzDlb2yCY/EDCKtVXUeR3X
 At4gzgOTr86pfJjGMgM+L585c7uMFDHVdt6IYNHLjo0reirHehVig9bCms7VECEPZHvg
 UWbdBZUv1qOSVLOIMLKU0u2qDx2IBYMOOiVSjII0gQAIIecNvJJV5kQh7zzjNo6xxQwy
 zRyw==
X-Gm-Message-State: AOAM533XEoiyLFV5re3GYm2vO2d3DcnsvrvWQLwypUotjry7XmhQsjL5
 5qYT0cCLULoB+L0Yc1Qh5IH5DeoRjVM=
X-Google-Smtp-Source: ABdhPJzjMO2qrh9J0BgfJ+crEHSPk2BMs+lIVo46yHBgCifxHaakrrmgaFkGMoaza34FbayDWEVXUQ==
X-Received: by 2002:a17:902:d355:b029:d4:d88c:ded9 with SMTP id
 l21-20020a170902d355b02900d4d88cded9mr2226257plk.13.1603264964258; 
 Wed, 21 Oct 2020 00:22:44 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id k127sm1419005pgk.10.2020.10.21.00.22.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Oct 2020 00:22:43 -0700 (PDT)
Date: Wed, 21 Oct 2020 12:52:39 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Subject: [PATCH v2 1/3] staging: kpc2000: rearrange lines exceeding 100 columns
Message-ID: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603264610.git.mh12gx2825@gmail.com>
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

Reformat lines that exceed 100 column in length. Issue reported by
checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v1:
   - Separate specific checkpatch issues into individual patches.
   - Updated patch subject and description to be specific to the issue
     being fixed.
   - Introduced patch 3/3.
   - Suggested by Vaishali T.

 drivers/staging/kpc2000/kpc2000/cell_probe.c | 71 +++++++++++++++-----
 1 file changed, 55 insertions(+), 16 deletions(-)

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
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
