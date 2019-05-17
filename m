Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6053B21771
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 13:03:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CD89631519;
	Fri, 17 May 2019 11:03:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WYzDHxjTCK2g; Fri, 17 May 2019 11:03:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 859B631446;
	Fri, 17 May 2019 11:03:27 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 317061BF5B4
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2D7968788B
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id njzlOzC61U8e
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:18 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from kadath.azazel.net (kadath.azazel.net [81.187.231.250])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 39AF4878B0
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 17 May 2019 11:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=azazel.net; 
 s=20190108;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=o1c+y4N1zlXNr78Cg/I2grIYGOfplmMduJhcKIC7kRI=; b=qSKbdtv/gTuA7ENMK2T4gFtkri
 SRpsQtVpqs4ZYrO5IgZZsqxVz8Zx6RErLsV+jQsx+wmyUgXoNenkqlDwqiTiC5lnkyqWbrD/ToH09
 2CNTrVYyj+2Ka3rh3BPxgEfxJd/p4FXKmHTRgrzFZYCHbDyXUZxmdHvWZWBiVpr0CnJ6MvfWdtKQ/
 WQgj7g3Vt1JB6+RHnX3pdUt1YFjCyM2ymYu6ov4bnXKreMZwi4o3fvAmItXzNhEwBjgSNJ9Y4WvaK
 yDGR1810nFh1H7nyqgOl8JbZ3hCdaCU/BE6OqBSCnQ8MXcIwg6V9eYG3YZhS5frl2C0QTTSn+n0bd
 J0zshA+w==;
Received: from ulthar.dreamlands ([192.168.96.2])
 by kadath.azazel.net with esmtp (Exim 4.89)
 (envelope-from <jeremy@azazel.net>)
 id 1hRadw-00045l-CS; Fri, 17 May 2019 12:03:16 +0100
From: Jeremy Sowden <jeremy@azazel.net>
To: Linux Driver Project Developer List
 <driverdev-devel@linuxdriverproject.org>
Subject: [PATCH v3 6/6] staging: kpc2000: use IDA to assign card numbers.
Date: Fri, 17 May 2019 12:03:15 +0100
Message-Id: <20190517110315.10646-7-jeremy@azazel.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190517110315.10646-1-jeremy@azazel.net>
References: <20190517073057.GA2631@kroah.com>
 <20190517110315.10646-1-jeremy@azazel.net>
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
variable, which was read and later incremented.  This was not thread-
safe, so now we use an IDA instead.

Updated TODO.

Signed-off-by: Jeremy Sowden <jeremy@azazel.net>
---
 drivers/staging/kpc2000/TODO           |  1 -
 drivers/staging/kpc2000/kpc2000/core.c | 15 ++++++++++++---
 2 files changed, 12 insertions(+), 4 deletions(-)

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
index 80141514f7d1..3a90cdad3eb4 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -1,4 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0+
+#include <linux/idr.h>
 #include <linux/init.h>
 #include <linux/module.h>
 #include <linux/pci.h>
@@ -18,6 +19,7 @@
 #include <linux/jiffies.h>
 #include "pcie.h"
 
+static DEFINE_IDA(card_num_ida);
 
 /*******************************************************
   * SysFS Attributes
@@ -230,7 +232,6 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 {
     int err = 0;
     struct kp2000_device *pcard;
-    static int card_count = 1;
     int rv;
     unsigned long reg_bar_phys_addr;
     unsigned long reg_bar_phys_len;
@@ -250,8 +251,13 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
     //}
 
     //{ Step 2: Initialize trivial pcard elements
-    pcard->card_num = card_count;
-    card_count++;
+    rv = ida_simple_get(&card_num_ida, 1, INT_MAX, GFP_KERNEL);
+    if (rv < 0) {
+	err = rv;
+	dev_err(&pdev->dev, "probe: failed to get card number (%d)\n", err);
+	goto out2;
+    }
+    pcard->card_num = rv;
     scnprintf(pcard->name, 16, "kpcard%d", pcard->card_num);
 
     mutex_init(&pcard->sem);
@@ -428,6 +434,8 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
     pci_disable_device(pcard->pdev);
   out3:
     unlock_card(pcard);
+    ida_simple_remove(&card_num_ida, pcard->card_num);
+  out2:
     kfree(pcard);
     return err;
 }
@@ -461,5 +469,6 @@ void  kp2000_pcie_remove(struct pci_dev *pdev)
     pci_disable_device(pcard->pdev);
     pci_set_drvdata(pdev, NULL);
     unlock_card(pcard);
+    ida_simple_remove(&card_num_ida, pcard->card_num);
     kfree(pcard);
 }
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
