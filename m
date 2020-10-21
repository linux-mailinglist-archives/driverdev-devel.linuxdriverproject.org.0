Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 000032954BA
	for <lists+driverdev-devel@lfdr.de>; Thu, 22 Oct 2020 00:18:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 959B620415;
	Wed, 21 Oct 2020 22:18:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p8kmZKsZ+un8; Wed, 21 Oct 2020 22:18:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 337432E337;
	Wed, 21 Oct 2020 21:42:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9C1241BF371
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 21:42:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8A2F220013
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 21:42:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5euoKJu7ZxP9 for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 21:42:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 7DD5D2EE77
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 16:09:34 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id h2so1428833pll.11
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 09:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=yh7qPceYXnIObXUiA501DrhSV8AgldwhbkJilHJF/GE=;
 b=IW/6t8eVZygjCuqK6WmfeaRkTkHx6jM92mkH2ayV5svV9nA2uzR7YUmj8gLDOeQkxy
 Coa7yRT0YnuVyHZp0ZlwF0zEGDfqEcjzzPsuZn49dSYq5tpVdrx9+3wIx4dzpay1OP2j
 LngfR9/FchLBJ1OBTNDcxALZP//L2sIulSUu56U+bBU1y6VuJuwA5DFmQWRrrAo4ZV7I
 gjR/dp1sAUpwqbjKjH/eQTfoOib2AZNNI2ahzih0+ah+uP2E7BPPX+WtPGb33ilGZMtF
 UaxbWjX/Szd3/3ev6nNzJuZmqNApTq6YNVSHBafytwVxdCkJ6ONf/sZZVU9OrxOznKBi
 D/xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=yh7qPceYXnIObXUiA501DrhSV8AgldwhbkJilHJF/GE=;
 b=gPhR9U6gcDZa0H2FDriIzNhrgVOnqF7C0Zriq3huEJgutzaYAVi1Q3Si3AL8F3ZGtG
 4MTX5zyuRjIldjCHbr9hcGgt9dqntlV7gFZ1VO3y6HYE6eQ74dzxo+XydIqw2rgIS/iT
 aeWPSwhtKtrJgp4ynHwCNK/IdW3wbJkSeqllohToDw2JYwbNAWj8JymvuoPbRMikENvn
 h4baIp853cnlJkRqjlCqKcx5UQLznfrjak19B+qMIgg1PA7FaJJ263G5OUekiiZdvSu4
 lH5HL52YdMDa0zvsXwSLO0tb8O936zZ2vPjnxPvCs/5bJU5oLGNB7lQwBfCwGPf75HkO
 Km9A==
X-Gm-Message-State: AOAM532VYWTjTbDVBHnZTQwNlgVLfyYFE5RAE1IjjJkIatmnnjkPMkiT
 nl43f0YFGrRggHfO6L4so00=
X-Google-Smtp-Source: ABdhPJyeeWtDgQx4Wqkyg8bcl38THYKfujiVg8UDqZYDol8QiEzGFfS434spuR0DQ70/fziIpYJKDg==
X-Received: by 2002:a17:902:aa4c:b029:d5:e527:654c with SMTP id
 c12-20020a170902aa4cb02900d5e527654cmr4002244plr.24.1603296574163; 
 Wed, 21 Oct 2020 09:09:34 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id u65sm2826124pfc.11.2020.10.21.09.09.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Oct 2020 09:09:33 -0700 (PDT)
Date: Wed, 21 Oct 2020 21:39:29 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Subject: [PATCH v3 2/3] staging: kpc2000: re-indent code for better readability
Message-ID: <29cf604e69435c1f0ef46397d0d8a1b62f32fa9b.1603295576.git.mh12gx2825@gmail.com>
References: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603295575.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603295575.git.mh12gx2825@gmail.com>
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

Re-indent code as per the coding style guidelines. The changes improve
code readability. Issue reported by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v2:
   - None.
Changes since v1:
   - Separate specific checkpatch issues into individual patches.
   - Updated patch subject and description to be specific to the issue
     being fixed.
   - Introduced patch 3/3.
   - Suggested by Vaishali T.

 drivers/staging/kpc2000/kpc2000/core.c            | 3 ++-
 drivers/staging/kpc2000/kpc2000/dma_common_defs.h | 3 +--
 2 files changed, 3 insertions(+), 3 deletions(-)

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
