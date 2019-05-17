Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6AA215BA
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 10:52:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 63A05868BC;
	Fri, 17 May 2019 08:51:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WC8u6TX02zKu; Fri, 17 May 2019 08:51:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7154986880;
	Fri, 17 May 2019 08:51:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A7031C1639
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:51:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 71AD288347
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:50:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vYJHszIbis9A for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 08:50:34 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1F1DB88329
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 08:50:06 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 792E72082E;
 Fri, 17 May 2019 08:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558083006;
 bh=nTP8GOAeCRgbeZ08sI2zTa+3fM331BtuYU+zjsSofG0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=clxPQHDAeuWChGN3hzeYaKMj23du8uehOwKbkKk1r77f/+75qoylvIkE9IZfgXDYx
 IHuWykBpryOHdFk+tZPcJ6AqMZRBzk+9Z9ppuJ5jPNPwVeI0/FP2v31samQzKQ7T/z
 u/09PmsX0Wk2wqkIalNyEpKk3frwJmKgndaeN/c8=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: [PATCH 10/10] staging: kpc2000: remove SetBackEndControl() function
Date: Fri, 17 May 2019 10:49:45 +0200
Message-Id: <20190517084945.2810-12-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190517084945.2810-1-gregkh@linuxfoundation.org>
References: <20190517084945.2810-1-gregkh@linuxfoundation.org>
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

As this is only called twice, just call writel() like a normal driver
should :)

At the same time, clean up the formatting for the irq handler, as there
is no need to have that be incorrect, it just hurts the eyes...

Cc: Matt Sickler <Matt.Sickler@daktronics.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/kpc2000/kpc2000/core.c            | 15 ++++++++++-----
 drivers/staging/kpc2000/kpc2000/dma_common_defs.h |  5 -----
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index 0d46d7e7d2cc..09375b4cc893 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -191,11 +191,15 @@ static int  read_system_regs(struct kp2000_device *pcard)
     return 0;
 }
 
-irqreturn_t  kp2000_irq_handler(int irq, void *dev_id)
+static irqreturn_t kp2000_irq_handler(int irq, void *dev_id)
 {
-    struct kp2000_device  *pcard = (struct kp2000_device*)dev_id;
-    SetBackEndControl(pcard->dma_common_regs, KPC_DMA_CARD_IRQ_ENABLE | KPC_DMA_CARD_USER_INTERRUPT_MODE | KPC_DMA_CARD_USER_INTERRUPT_ACTIVE);
-    return IRQ_HANDLED;
+	struct kp2000_device *pcard = dev_id;
+
+	writel(KPC_DMA_CARD_IRQ_ENABLE |
+	       KPC_DMA_CARD_USER_INTERRUPT_MODE |
+	       KPC_DMA_CARD_USER_INTERRUPT_ACTIVE,
+	       pcard->dma_common_regs);
+	return IRQ_HANDLED;
 }
 
 static int kp2000_cdev_open(struct inode *inode, struct file *filp)
@@ -478,7 +482,8 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
     //}
 
     //{ Step 12: Enable IRQs in HW
-    SetBackEndControl(pcard->dma_common_regs, KPC_DMA_CARD_IRQ_ENABLE | KPC_DMA_CARD_USER_INTERRUPT_MODE);
+	writel(KPC_DMA_CARD_IRQ_ENABLE | KPC_DMA_CARD_USER_INTERRUPT_MODE,
+	       pcard->dma_common_regs);
     //}
 
     dev_dbg(&pcard->pdev->dev, "kp2000_pcie_probe() complete!\n");
diff --git a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
index efc35c8e9d5c..21450e3d408f 100644
--- a/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
+++ b/drivers/staging/kpc2000/kpc2000/dma_common_defs.h
@@ -21,9 +21,4 @@
 #define KPC_DMA_CARD_S2C_INTERRUPT_STATUS_MASK  0x00FF0000
 #define KPC_DMA_CARD_C2S_INTERRUPT_STATUS_MASK  0xFF000000
 
-static inline  void  SetBackEndControl(void __iomem *regs, u32 value)
-{
-    writel(value, regs + 0);
-}
-
 #endif /* KPC_DMA_COMMON_DEFS_H_ */
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
