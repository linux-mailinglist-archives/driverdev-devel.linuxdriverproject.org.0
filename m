Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D19241D3
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 May 2019 22:10:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 41C5C2283C;
	Mon, 20 May 2019 20:10:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GFj26WSm5c3S; Mon, 20 May 2019 20:10:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9D57723469;
	Mon, 20 May 2019 20:10:47 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 534401BF3A8
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:10:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3EB1685D6C
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:10:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id z7pORf3VSM5v
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:10:39 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 56DCD857FB
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 20 May 2019 20:10:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hu141O/XYBzqT4jKnpLbfG5czlbi0/eCmqxBV65WI0M=; b=U3z8WcRTo6juPGNAzKGiuM7FIy
 ncF+O54iyJa8EhseQW/GNH0l83aB8nn0pTggAcGZG7n6X66fTlbbpQbfq6DXit1NDfDR1aSXOPRSx
 LccnCwXUCvyfW5+rDefVWSTo2U8VcB6xHJqza6cVk/H9N4xu4G6iaarZUkTyHyrpeg+QzUqo1aQHe
 x6bRCwSATa7NLqBvDO5vE4q4EvWTNKbd+vL034VJofBnw/NZg6sWu52AcGSpUjah0FezA0JzuQxGs
 FV5WiN7O9kDB0rnNCyhmNH4Js3N5aeD7CZidsBxM7Xwc+qVqqU9TtFYEpg8UxghYQabhLjvmwrRbi
 XgYgHWEQ==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hSoL1-0004Ol-S0; Mon, 20 May 2019 20:52:48 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v4 6/8] staging: kpc2000: use IDA to assign card numbers.
Date: Mon, 20 May 2019 20:52:41 +0100
Message-Id: <20190520195243.917-15-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520195243.917-1-jeremy@azazel.net>
References: <20190517110315.10646-1-jeremy@azazel.net>
 <20190520195243.917-1-jeremy@azazel.net>
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
 drivers/staging/kpc2000/TODO                  |  1 -
 drivers/staging/kpc2000/kpc2000/core.c        | 23 +++++++++++++++----
 .../staging/kpc2000/kpc2000/kp2000_module.c   |  1 +
 drivers/staging/kpc2000/kpc2000/pcie.h        |  9 ++++----
 4 files changed, 25 insertions(+), 9 deletions(-)

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
index 38de7e7a824d..a8383e8159eb 100644
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
@@ -274,7 +277,6 @@ int kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 {
 	int err = 0;
 	struct kp2000_device *pcard;
-	static int card_count = 1;
 	int rv;
 	unsigned long reg_bar_phys_addr;
 	unsigned long reg_bar_phys_len;
@@ -300,9 +302,14 @@ int kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
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
 	lock_card(pcard);
@@ -517,6 +524,8 @@ int kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 	pci_disable_device(pcard->pdev);
 out3:
 	unlock_card(pcard);
+	ida_simple_remove(&card_num_ida, pcard->card_num);
+out2:
 	kfree(pcard);
 	return err;
 }
@@ -550,5 +559,11 @@ void kp2000_pcie_remove(struct pci_dev *pdev)
 	pci_disable_device(pcard->pdev);
 	pci_set_drvdata(pdev, NULL);
 	unlock_card(pcard);
+	ida_simple_remove(&card_num_ida, pcard->card_num);
 	kfree(pcard);
 }
+
+void kp2000_pcie_destroy(void)
+{
+	ida_destroy(&card_num_ida);
+}
diff --git a/drivers/staging/kpc2000/kpc2000/kp2000_module.c b/drivers/staging/kpc2000/kpc2000/kp2000_module.c
index fa3bd266ba54..8da8d5f5f8cc 100644
--- a/drivers/staging/kpc2000/kpc2000/kp2000_module.c
+++ b/drivers/staging/kpc2000/kpc2000/kp2000_module.c
@@ -50,5 +50,6 @@ static void __exit  kp2000_pcie_exit(void)
 {
 	pci_unregister_driver(&kp2000_driver_inst);
 	class_destroy(kpc_uio_class);
+	kp2000_pcie_destroy();
 }
 module_exit(kp2000_pcie_exit);
diff --git a/drivers/staging/kpc2000/kpc2000/pcie.h b/drivers/staging/kpc2000/kpc2000/pcie.h
index 8a032a5a962e..b416b792250b 100644
--- a/drivers/staging/kpc2000/kpc2000/pcie.h
+++ b/drivers/staging/kpc2000/kpc2000/pcie.h
@@ -84,10 +84,11 @@ struct kp2000_device {
 extern struct class *kpc_uio_class;
 extern struct attribute *kpc_uio_class_attrs[];
 
-int   kp2000_pcie_probe(struct pci_dev *dev, const struct pci_device_id *id);
-void  kp2000_pcie_remove(struct pci_dev *pdev);
-int   kp2000_probe_cores(struct kp2000_device *pcard);
-void  kp2000_remove_cores(struct kp2000_device *pcard);
+int  kp2000_pcie_probe(struct pci_dev *dev, const struct pci_device_id *id);
+void kp2000_pcie_remove(struct pci_dev *pdev);
+void kp2000_pcie_destroy(void);
+int  kp2000_probe_cores(struct kp2000_device *pcard);
+void kp2000_remove_cores(struct kp2000_device *pcard);
 
 extern struct file_operations  kp2000_fops;
 
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
