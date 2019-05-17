Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFA2215B5
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 10:51:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C6DE38774E;
	Fri, 17 May 2019 08:51:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9c9jY6RIwl3g; Fri, 17 May 2019 08:51:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 557AF876F0;
	Fri, 17 May 2019 08:51:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8A7411BF958
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:51:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 811C288369
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:51:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QrnuZLBJr0Cg for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 08:50:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id BBB3F88331
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 08:50:16 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 187942087E;
 Fri, 17 May 2019 08:50:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558083016;
 bh=h4DVjeKIZLFAbLpo3yxztTkYRVAZ8uDyCTaNKeXchLE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pc3GmCSgWN+yHI1RSeMICqYUd0yHRaLa+RSrpjTG6h9p/2AP0UkhZh2LQ4opaUnak
 3ozKpqSAbR81XYYn77ijOdyJ37Cam+Fj90vtD/mOgTIYwC483JRtgqBzfXTENAs8W4
 zZJAAY2kf9zpq1RXxMmHMjuqFi8U+/vyz5cFHrt4=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: [PATCH 04/10] staging: kpc2000: remove lock_card/unlock_card functions
Date: Fri, 17 May 2019 10:49:39 +0200
Message-Id: <20190517084945.2810-6-gregkh@linuxfoundation.org>
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

We do not need an inline function to "hide" the lock, so just replace
the few calls to these functions with the "real" mutex_lock/unlock()
calls.

Cc: Matt Sickler <Matt.Sickler@daktronics.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/kpc2000/kpc2000/cell_probe.c |  4 ++--
 drivers/staging/kpc2000/kpc2000/core.c       | 10 +++++-----
 drivers/staging/kpc2000/kpc2000/pcie.h       | 14 --------------
 3 files changed, 7 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/cell_probe.c b/drivers/staging/kpc2000/kpc2000/cell_probe.c
index 6a2ebdf20113..9289ac98c8c6 100644
--- a/drivers/staging/kpc2000/kpc2000/cell_probe.c
+++ b/drivers/staging/kpc2000/kpc2000/cell_probe.c
@@ -243,7 +243,7 @@ int kuio_irqcontrol(struct uio_info *uioinfo, s32 irq_on)
     struct kp2000_device *pcard = kudev->pcard;
     u64 mask;
 
-    lock_card(pcard);
+	mutex_lock(&pcard->sem);
     mask = readq(pcard->sysinfo_regs_base + REG_INTERRUPT_MASK);
     if (irq_on){
         mask &= ~(1 << (kudev->cte.irq_base_num));
@@ -251,7 +251,7 @@ int kuio_irqcontrol(struct uio_info *uioinfo, s32 irq_on)
         mask |= (1 << (kudev->cte.irq_base_num));
     }
     writeq(mask, pcard->sysinfo_regs_base + REG_INTERRUPT_MASK);
-    unlock_card(pcard);
+	mutex_unlock(&pcard->sem);
 
     return 0;
 }
diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index 343db829e157..0d46d7e7d2cc 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -334,7 +334,7 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
     scnprintf(pcard->name, 16, "kpcard%d", pcard->card_num);
 
     mutex_init(&pcard->sem);
-    lock_card(pcard);
+	mutex_lock(&pcard->sem);
 
     pcard->pdev = pdev;
     pci_set_drvdata(pdev, pcard);
@@ -482,7 +482,7 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
     //}
 
     dev_dbg(&pcard->pdev->dev, "kp2000_pcie_probe() complete!\n");
-    unlock_card(pcard);
+	mutex_unlock(&pcard->sem);
     return 0;
 
   out11:
@@ -506,7 +506,7 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
   out4:
     pci_disable_device(pcard->pdev);
   out3:
-    unlock_card(pcard);
+	mutex_unlock(&pcard->sem);
     kfree(pcard);
     return err;
 }
@@ -520,7 +520,7 @@ static void kp2000_pcie_remove(struct pci_dev *pdev)
 
     if (pcard == NULL)  return;
 
-    lock_card(pcard);
+	mutex_lock(&pcard->sem);
     kp2000_remove_cores(pcard);
     mfd_remove_devices(PCARD_TO_DEV(pcard));
     misc_deregister(&pcard->miscdev);
@@ -539,7 +539,7 @@ static void kp2000_pcie_remove(struct pci_dev *pdev)
     }
     pci_disable_device(pcard->pdev);
     pci_set_drvdata(pdev, NULL);
-    unlock_card(pcard);
+	mutex_unlock(&pcard->sem);
     kfree(pcard);
 }
 
diff --git a/drivers/staging/kpc2000/kpc2000/pcie.h b/drivers/staging/kpc2000/kpc2000/pcie.h
index 056f2a393de1..e204f12632dc 100644
--- a/drivers/staging/kpc2000/kpc2000/pcie.h
+++ b/drivers/staging/kpc2000/kpc2000/pcie.h
@@ -90,18 +90,4 @@ void  kp2000_remove_cores(struct kp2000_device *pcard);
 // Define this quick little macro because the expression is used frequently
 #define PCARD_TO_DEV(pcard)  (&(pcard->pdev->dev))
 
-static inline void
-lock_card(struct kp2000_device *pcard)
-{
-    BUG_ON(pcard == NULL);
-    mutex_lock(&pcard->sem);
-}
-static inline void
-unlock_card(struct kp2000_device *pcard)
-{
-    BUG_ON(pcard == NULL);
-    mutex_unlock(&pcard->sem);
-}
-
-
 #endif /* KP2000_PCIE_H */
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
