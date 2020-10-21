Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 361592948E4
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 09:29:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5462984E15;
	Wed, 21 Oct 2020 07:29:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gf0NqoimYlwa; Wed, 21 Oct 2020 07:29:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 00020862E4;
	Wed, 21 Oct 2020 07:29:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 02B131BF5A9
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 07:29:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id F20E58698C
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 07:29:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 28ilRf0W66E9 for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 07:29:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E134B867BB
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 07:26:35 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id o9so757676plx.10
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 00:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=COkh0ZLnqFaA8xDcB21IFSBxo1VaxBiO/fKhA0Lh574=;
 b=ImpEFdgLXixlLzLml4OFWi3tiD4b5etcYjKTXQ9/BEsiMZDfj3TwF2jiAUuBKXamJy
 HTKyfXoiTzxXExZ1twGMTOEbkFxBARe3en9j39am2r369vbftwh8sbLRWOboxtLr/KGB
 VqiWp9mh+9Vdwf1h0LT32Zrcttgo+9E9hqdI0NTVx49vVDF7zjEJvLf6dbHC3FLDZt8W
 RxqlE51ZotTRieDPtagOkw1FscKQJmZFO8Da2maiBr3QZvWHj88Rofqs0KI84/a7GVBB
 1gMYGVHudKRV82/h4D2vedmmcUvx3ECdcTcI0Yxnt2V3JG/hWpyhcsyQzaYLpJpLpVaf
 AFWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=COkh0ZLnqFaA8xDcB21IFSBxo1VaxBiO/fKhA0Lh574=;
 b=tvoXerJtWbdgbwlpJGYm1NflWoTplaRgKaeT3N/mEFOume+Xxc+LBbC/t60KL46Zft
 3BsNs7Kza1fNcTEzZuKqvFEaS7vRSejnwqYQQJvg/FrmRrT4qdCCWiomtiQIo/iF7ApA
 HN2ptlOSWalFhV2jNIhBBkId+B6gTzNYNuGXkYvgvVDX6ZkfIWzHtpAxFPsadscvncW7
 hyODRWEpKLrkpMG2fINr7zoQibHgHQSpglwSRppScwkXwXcLufLByAdVHKmc+5+Hs5NZ
 agbH/Ty96y06E0cAEjCJUpRUb4+r5o6GJbo77+Z7IFkWjrqVoEzMz5B6LlJODz4GudTe
 dLSg==
X-Gm-Message-State: AOAM532LOsyIhnUP98D/deKcq4fdM1HlBkNO8Q01Ips+bQOsaklZLqsu
 lcYPLqHPPTYHLxCGdFnvnL3f3pJkkCY=
X-Google-Smtp-Source: ABdhPJzXKB8iEFbkiUvYIQeyCarXfAH+riBWgYUFaR6cC8sUxcq4xLUvseNFrE6sxPgx1Q36Sa+43A==
X-Received: by 2002:a17:90a:fa03:: with SMTP id
 cm3mr2066210pjb.56.1603265195615; 
 Wed, 21 Oct 2020 00:26:35 -0700 (PDT)
Received: from ubuntu204 ([103.108.75.206])
 by smtp.gmail.com with ESMTPSA id e5sm1304006pfj.99.2020.10.21.00.26.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Oct 2020 00:26:35 -0700 (PDT)
Date: Wed, 21 Oct 2020 12:56:30 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org
Subject: [PATCH v2 2/3] staging: kpc2000: re-indent code for better readability
Message-ID: <29cf604e69435c1f0ef46397d0d8a1b62f32fa9b.1603264610.git.mh12gx2825@gmail.com>
References: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603264610.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <809d142d109b4f0acfcb4fa204bdd03381fc051f.1603264610.git.mh12gx2825@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Re-indent code as per the coding style guidelines. The changes improve
code readability. Issue reported by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Changes since v1:
  - Separate specific checkpatch issues into individual patches.
  - Update patch subject and description to specific issue being fixed.
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
