Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB3BF24CCE
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 May 2019 12:35:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1AF0087994;
	Tue, 21 May 2019 10:35:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5HAdbZuWskYM; Tue, 21 May 2019 10:35:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 94A8286DC6;
	Tue, 21 May 2019 10:35:37 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 702671BF964
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 10:35:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6D35D866BD
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 10:35:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JFjixSz07emQ
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 10:35:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B0A9884E2E
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 21 May 2019 10:35:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C0iFiuhpHSah8KPYIiBPsCjQhqZKPbns8UfTTEzYCyI=; b=XwC97qx5iMurBzzJbqJSCm0rSE
 O1dY9nsbxshVA7tJWPdOaQJ+BLOY0iRI32fqreipV5vtgh409TER24cGg95RA0B+vx540530pAPmV
 iUNWeTZSzXXhDjP4NAgYBPPnKFU8W1DW1yTtwKHWAOj4MDOHvrVxsEGB0TGXdloNvVb+SsV5kMvf6
 J19tfmqZxn8DNQWtNBgc0Vdft+4PIJkqddOn/8L6xFzu7XEJtuPDp5JXxeHrgRzuIzlKCCRx4AVxp
 uvx5xeBmng2zqBNs+TYlex2IIp5vAqZ+qy+XBMiaIqdvnzzL9wAS4E/5aZC4hBZZm4Elm7qTaCaFk
 iwK5yR7w==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hT27B-00073p-5C; Tue, 21 May 2019 11:35:25 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v6 4/6] staging: kpc2000: use IDA to assign card numbers.
Date: Tue, 21 May 2019 11:35:22 +0100
Message-Id: <20190521103524.2176-5-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190521103524.2176-1-jeremy@azazel.net>
References: <20190521103524.2176-1-jeremy@azazel.net>
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
index 6b56ddcc03fa..7d6b99fcd2bd 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -1,5 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0+
 #include <linux/kernel.h>
+#include <linux/idr.h>
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/pci.h>
@@ -25,6 +26,8 @@
 #include "pcie.h"
 #include "uapi.h"
 
+static DEFINE_IDA(card_num_ida);
+
 /*******************************************************
  * SysFS Attributes
  ******************************************************/
@@ -388,7 +391,6 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
 {
 	int err = 0;
 	struct kp2000_device *pcard;
-	static int card_count = 1;
 	int rv;
 	unsigned long reg_bar_phys_addr;
 	unsigned long reg_bar_phys_len;
@@ -414,9 +416,14 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
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
@@ -630,6 +637,8 @@ static int kp2000_pcie_probe(struct pci_dev *pdev,
 	pci_disable_device(pcard->pdev);
 out3:
 	mutex_unlock(&pcard->sem);
+	ida_simple_remove(&card_num_ida, pcard->card_num);
+out2:
 	kfree(pcard);
 	return err;
 }
@@ -663,6 +672,7 @@ static void kp2000_pcie_remove(struct pci_dev *pdev)
 	pci_disable_device(pcard->pdev);
 	pci_set_drvdata(pdev, NULL);
 	mutex_unlock(&pcard->sem);
+	ida_simple_remove(&card_num_ida, pcard->card_num);
 	kfree(pcard);
 }
 
@@ -698,6 +708,7 @@ static void __exit  kp2000_pcie_exit(void)
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
