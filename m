Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1B324976
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 09:56:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8271387568;
	Tue, 21 May 2019 07:56:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pcvrm-B0UT7b; Tue, 21 May 2019 07:56:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 01DD587360;
	Tue, 21 May 2019 07:56:42 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 007FC1BF958
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 07:56:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EE8C386EB1
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 07:56:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q+xRyzk32FD2
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 07:56:38 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F3A3B86E45
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 07:56:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+EMSfl5kvvX8fKGnpQgnAc4cknvp/T1ZV27LYkmaazQ=; b=CnGq8LHOY7PHDIyw1V0zeNYfr7
 797RUqRCnKCaFvPRpAS2kASIJzVfc/P7+/fdrj97arhRkxFjXr0vj5oilHqF1vDQe98dLfIZ9mgl0
 frnjy49k9hBhjydrmZtWonrta9dBZNitZS7Wp400LkF82NOihkYghslQfjNvWsrJdEUMZAcsjoZ/1
 I4VCGnOeg9GTCAtEhMDbmlWsw9r9FHCOcfPmIUBJNzFzullWFFicGsrCNz+qvE3fTGDzlAEi6wiaA
 xIJJf6Ve/3Jeti4fGs/EJGQHab+eU7cpjSv35vf5dmsaVp1PP0BkgxMeJnB655miTo6TqnBeOq0qa
 BrnKAckA==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hSzdU-0003vc-10; Tue, 21 May 2019 08:56:36 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v5 6/8] staging: kpc2000: use IDA to assign card numbers.
Date: Tue, 21 May 2019 08:56:33 +0100
Message-Id: <20190521075635.30458-7-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190521075635.30458-1-jeremy@azazel.net>
References: <20190521075635.30458-1-jeremy@azazel.net>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 192.168.96.2
X-SA-Exim-Mail-From: jeremy@azazel.net
X-SA-Exim-Scanned: No (on kadath.azazel.net); SAEximRunCond expanded to false
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
Cc: Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Previously the next card number was assigned from a static int local
variable.  Replaced it with an IDA.  Avoids the assignment of ever-
increasing card-numbers by allowing them to be reused.

Updated TODO.

Corrected format-specifier for unsigned pcard->card_num.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/TODO           |  1 -
 drivers/staging/kpc2000/kpc2000/core.c | 19 +++++++++++++++----
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/kpc2000/TODO b/drivers/staging/kpc2000/TODO
index 669fe5bf9637..47530e23e940 100644
--- a/drivers/staging/kpc2000/TODO
+++ b/drivers/staging/kpc2000/TODO
@@ -1,6 +1,5 @@
 - the kpc_spi driver doesn't seem to let multiple transactions (to different instances of the core) happen in parallel...
 - The kpc_i2c driver is a hot mess, it should probably be cleaned up a ton.  It functions against current hardware though.
-- pcard->card_num in kp2000_pcie_probe() is a global variable and needs atomic / locking / something better.
 - would be nice if the AIO fileops in kpc_dma could be made to work
     - probably want to add a CONFIG_ option to control compilation of the AIO functions
 - if the AIO fileops in kpc_dma start working, next would be making iov_count > 1 work too
diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index 2f4000f53740..35e54e494fa3 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -1,4 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0+
+#include <linux/idr.h>
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/pci.h>
@@ -18,6 +19,8 @@
 #include <linux/jiffies.h>
 #include "pcie.h"
 
+static DEFINE_IDA(card_num_ida);
+
 /*******************************************************
  * SysFS Attributes
  ******************************************************/
@@ -275,7 +278,6 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
 {
 	int err = 0;
 	struct kp2000_device *pcard;
-	static int card_count = 1;
 	int rv;
 	unsigned long reg_bar_phys_addr;
 	unsigned long reg_bar_phys_len;
@@ -301,9 +303,14 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
 	/*
 	 * Step 2: Initialize trivial pcard elements
 	 */
-	pcard->card_num = card_count;
-	card_count++;
-	scnprintf(pcard->name, 16, "kpcard%d", pcard->card_num);
+	err = ida_simple_get(&card_num_ida, 1, INT_MAX, GFP_KERNEL);
+	if (err < 0) {
+		dev_err(&pdev->dev, "probe: failed to get card number (%d)\n",
+			err);
+		goto out2;
+	}
+	pcard->card_num = err;
+	scnprintf(pcard->name, 16, "kpcard%u", pcard->card_num);
 
 	mutex_init(&pcard->sem);
 	mutex_lock(&pcard->sem);
@@ -518,6 +525,8 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
 	pci_disable_device(pcard->pdev);
 out3:
 	mutex_unlock(&pcard->sem);
+	ida_simple_remove(&card_num_ida, pcard->card_num);
+out2:
 	kfree(pcard);
 	return err;
 }
@@ -551,6 +560,7 @@ static void kp2000_pcie_remove(struct pci_dev *pdev)
 	pci_disable_device(pcard->pdev);
 	pci_set_drvdata(pdev, NULL);
 	mutex_unlock(&pcard->sem);
+	ida_simple_remove(&card_num_ida, pcard->card_num);
 	kfree(pcard);
 }
 
@@ -586,6 +596,7 @@ static void __exit  kp2000_pcie_exit(void)
 {
 	pci_unregister_driver(&kp2000_driver_inst);
 	class_destroy(kpc_uio_class);
+	ida_destroy(&card_num_ida);
 }
 module_exit(kp2000_pcie_exit);
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
