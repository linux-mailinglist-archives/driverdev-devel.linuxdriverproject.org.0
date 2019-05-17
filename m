Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4263E215BB
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 10:52:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F2E13868C9;
	Fri, 17 May 2019 08:52:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JU3QRrC-VTH4; Fri, 17 May 2019 08:51:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CE0528688A;
	Fri, 17 May 2019 08:51:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B576B1BF958
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:51:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9F7058686D
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:50:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LgSYXAVjRtmo for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 08:50:11 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D4B4686879
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 08:50:08 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3D78620879;
 Fri, 17 May 2019 08:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558083008;
 bh=A6GwRKW+oEYVYsjLApSZ6TPyTRKGyPhHPu4Euuyeey0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=c3wbMdAlBca00D/AOK/YULqeVv9sJw75yvEXaK1uln7UqRnFVuPnDYLBkGa37dRJX
 9RC3tGlhBvJayZc9b0lCEIlasFGm/6phs5PC8RnAJp7v6X2ctz5Sb0Snjvy69H4IL8
 4HVGV2/DwQKkxe5ZqqUkUc+2g7lBlaix1yCa0dKA=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: [PATCH 02/10] staging: kp2000: remove kp200_module.c file
Date: Fri, 17 May 2019 10:49:36 +0200
Message-Id: <20190517084945.2810-3-gregkh@linuxfoundation.org>
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

The kp200_module.c does not need to be stand-alone, so move it into the
core.c file.  This lets us make some functions static, reducing the
global namespace of the driver.

Cc: Matt Sickler <Matt.Sickler@daktronics.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/kpc2000/kpc2000/Makefile      |  2 +-
 drivers/staging/kpc2000/kpc2000/core.c        | 44 ++++++++++++++-
 .../staging/kpc2000/kpc2000/kp2000_module.c   | 54 -------------------
 drivers/staging/kpc2000/kpc2000/pcie.h        |  2 -
 4 files changed, 43 insertions(+), 59 deletions(-)
 delete mode 100644 drivers/staging/kpc2000/kpc2000/kp2000_module.c

diff --git a/drivers/staging/kpc2000/kpc2000/Makefile b/drivers/staging/kpc2000/kpc2000/Makefile
index 28ab1e185f9f..cfc20e2193df 100644
--- a/drivers/staging/kpc2000/kpc2000/Makefile
+++ b/drivers/staging/kpc2000/kpc2000/Makefile
@@ -1,4 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0
 
 obj-m := kpc2000.o
-kpc2000-objs += kp2000_module.o  core.o  cell_probe.o  fileops.o
+kpc2000-objs += core.o  cell_probe.o  fileops.o
diff --git a/drivers/staging/kpc2000/kpc2000/core.c b/drivers/staging/kpc2000/kpc2000/core.c
index eb8bac62d33d..e525dd130ce2 100644
--- a/drivers/staging/kpc2000/kpc2000/core.c
+++ b/drivers/staging/kpc2000/kpc2000/core.c
@@ -198,7 +198,8 @@ irqreturn_t  kp2000_irq_handler(int irq, void *dev_id)
     return IRQ_HANDLED;
 }
 
-int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
+static int kp2000_pcie_probe(struct pci_dev *pdev,
+			     const struct pci_device_id *id)
 {
     int err = 0;
     struct kp2000_device *pcard;
@@ -405,7 +406,7 @@ int  kp2000_pcie_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 }
 
 
-void  kp2000_pcie_remove(struct pci_dev *pdev)
+static void kp2000_pcie_remove(struct pci_dev *pdev)
 {
     struct kp2000_device *pcard = pci_get_drvdata(pdev);
 
@@ -435,3 +436,42 @@ void  kp2000_pcie_remove(struct pci_dev *pdev)
     unlock_card(pcard);
     kfree(pcard);
 }
+
+struct class *kpc_uio_class;
+ATTRIBUTE_GROUPS(kpc_uio_class);
+
+static const struct pci_device_id kp2000_pci_device_ids[] = {
+	{ PCI_DEVICE(PCI_VENDOR_ID_DAKTRONICS, PCI_DEVICE_ID_DAKTRONICS) },
+	{ PCI_DEVICE(PCI_VENDOR_ID_DAKTRONICS, PCI_DEVICE_ID_DAKTRONICS_KADOKA_P2KR0) },
+	{ 0, }
+};
+MODULE_DEVICE_TABLE(pci, kp2000_pci_device_ids);
+
+static struct pci_driver kp2000_driver_inst = {
+	.name =		"kp2000_pcie",
+	.id_table =	kp2000_pci_device_ids,
+	.probe =	kp2000_pcie_probe,
+	.remove =	kp2000_pcie_remove,
+};
+
+static int __init  kp2000_pcie_init(void)
+{
+	kpc_uio_class = class_create(THIS_MODULE, "kpc_uio");
+	if (IS_ERR(kpc_uio_class))
+		return PTR_ERR(kpc_uio_class);
+
+	kpc_uio_class->dev_groups = kpc_uio_class_groups;
+	return pci_register_driver(&kp2000_driver_inst);
+}
+module_init(kp2000_pcie_init);
+
+static void __exit  kp2000_pcie_exit(void)
+{
+	pci_unregister_driver(&kp2000_driver_inst);
+	class_destroy(kpc_uio_class);
+}
+module_exit(kp2000_pcie_exit);
+
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Lee.Brooke@Daktronics.com, Matt.Sickler@Daktronics.com");
+MODULE_SOFTDEP("pre: uio post: kpc_nwl_dma kpc_i2c kpc_spi");
diff --git a/drivers/staging/kpc2000/kpc2000/kp2000_module.c b/drivers/staging/kpc2000/kpc2000/kp2000_module.c
deleted file mode 100644
index fa3bd266ba54..000000000000
--- a/drivers/staging/kpc2000/kpc2000/kp2000_module.c
+++ /dev/null
@@ -1,54 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-#include <linux/init.h>
-#include <linux/module.h>
-#include <linux/pci.h>
-#include <linux/types.h>
-#include <linux/export.h>
-#include <linux/slab.h>
-#include <asm/io.h>
-#include <linux/io.h>
-#include <linux/mfd/core.h>
-#include <linux/platform_device.h>
-#include <linux/ioport.h>
-#include "pcie.h"
-
-
-MODULE_LICENSE("GPL");
-MODULE_AUTHOR("Lee.Brooke@Daktronics.com, Matt.Sickler@Daktronics.com");
-MODULE_SOFTDEP("pre: uio post: kpc_nwl_dma kpc_i2c kpc_spi");
-
-struct class *kpc_uio_class;
-ATTRIBUTE_GROUPS(kpc_uio_class);
-
-static const struct pci_device_id kp2000_pci_device_ids[] = {
-	{ PCI_DEVICE(PCI_VENDOR_ID_DAKTRONICS, PCI_DEVICE_ID_DAKTRONICS) },
-	{ PCI_DEVICE(PCI_VENDOR_ID_DAKTRONICS, PCI_DEVICE_ID_DAKTRONICS_KADOKA_P2KR0) },
-	{ 0, }
-};
-MODULE_DEVICE_TABLE(pci, kp2000_pci_device_ids);
-
-static struct pci_driver  kp2000_driver_inst = {
-	.name       = "kp2000_pcie",
-	.id_table   = kp2000_pci_device_ids,
-	.probe      = kp2000_pcie_probe,
-	.remove     = kp2000_pcie_remove
-};
-
-
-static int __init  kp2000_pcie_init(void)
-{
-	kpc_uio_class = class_create(THIS_MODULE, "kpc_uio");
-	if (IS_ERR(kpc_uio_class))
-		return PTR_ERR(kpc_uio_class);
-
-	kpc_uio_class->dev_groups = kpc_uio_class_groups;
-	return pci_register_driver(&kp2000_driver_inst);
-}
-module_init(kp2000_pcie_init);
-
-static void __exit  kp2000_pcie_exit(void)
-{
-	pci_unregister_driver(&kp2000_driver_inst);
-	class_destroy(kpc_uio_class);
-}
-module_exit(kp2000_pcie_exit);
diff --git a/drivers/staging/kpc2000/kpc2000/pcie.h b/drivers/staging/kpc2000/kpc2000/pcie.h
index 8a032a5a962e..9278084af547 100644
--- a/drivers/staging/kpc2000/kpc2000/pcie.h
+++ b/drivers/staging/kpc2000/kpc2000/pcie.h
@@ -84,8 +84,6 @@ struct kp2000_device {
 extern struct class *kpc_uio_class;
 extern struct attribute *kpc_uio_class_attrs[];
 
-int   kp2000_pcie_probe(struct pci_dev *dev, const struct pci_device_id *id);
-void  kp2000_pcie_remove(struct pci_dev *pdev);
 int   kp2000_probe_cores(struct kp2000_device *pcard);
 void  kp2000_remove_cores(struct kp2000_device *pcard);
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
