Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D7500215B4
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 May 2019 10:51:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 613FB87162;
	Fri, 17 May 2019 08:51:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6EpNxC3SDWHw; Fri, 17 May 2019 08:51:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 72BB586FFD;
	Fri, 17 May 2019 08:51:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BF72A1BF958
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:51:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 02C6E8833E
 for <devel@linuxdriverproject.org>; Fri, 17 May 2019 08:50:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zDsoTkhwnTE8 for <devel@linuxdriverproject.org>;
 Fri, 17 May 2019 08:50:28 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6E3C888335
 for <devel@driverdev.osuosl.org>; Fri, 17 May 2019 08:50:19 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C6F1D2089E;
 Fri, 17 May 2019 08:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558083019;
 bh=qc2MLABth5LgKEDYEeSmGAAVPl4TVDhkIoRpk7V7aN0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qca/EW9S/qZdxC3q2blQ+ANRfc/xIoZBVlha0ZdZb62FJdRtmiy0vgGEUOGPDzYDL
 zj/udazH72VEq3M/F+4U4qvGBAc5kjG2YI8docQ6/BzLBXQi/2MCO2Btk0LNdrL6P/
 hegsnJfye7pH17aH2KncdnFLRtXcTCjayDmcv1MA=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: devel@driverdev.osuosl.org
Subject: [PATCH 05/10] staging: kpc2000: fix coding style in pcie.h
Date: Fri, 17 May 2019 10:49:40 +0200
Message-Id: <20190517084945.2810-7-gregkh@linuxfoundation.org>
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

Use tabs in pcie.h, like is mandated.

Cc: Matt Sickler <Matt.Sickler@daktronics.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/staging/kpc2000/kpc2000/pcie.h | 106 ++++++++++++-------------
 1 file changed, 53 insertions(+), 53 deletions(-)

diff --git a/drivers/staging/kpc2000/kpc2000/pcie.h b/drivers/staging/kpc2000/kpc2000/pcie.h
index e204f12632dc..59db46752961 100644
--- a/drivers/staging/kpc2000/kpc2000/pcie.h
+++ b/drivers/staging/kpc2000/kpc2000/pcie.h
@@ -27,67 +27,67 @@
  *      9   <---------------------- IRQ Active Flags ---------------------->
  */
 
-#define REG_WIDTH   8
-#define REG_MAGIC_NUMBER            (0 * REG_WIDTH)
-#define REG_CARD_ID_AND_BUILD       (1 * REG_WIDTH)
-#define REG_DATE_AND_TIME_STAMPS    (2 * REG_WIDTH)
-#define REG_CORE_TABLE_OFFSET       (3 * REG_WIDTH)
-#define REG_FPGA_SSID               (4 * REG_WIDTH)
-#define REG_FPGA_HW_ID              (5 * REG_WIDTH)
-#define REG_FPGA_DDNA               (6 * REG_WIDTH)
-#define REG_CPLD_CONFIG             (7 * REG_WIDTH)
-#define REG_INTERRUPT_MASK          (8 * REG_WIDTH)
-#define REG_INTERRUPT_ACTIVE        (9 * REG_WIDTH)
-#define REG_PCIE_ERROR_COUNT        (10 * REG_WIDTH)
-
-#define KP2000_MAGIC_VALUE      0x196C61482231894D
-
-#define PCI_VENDOR_ID_DAKTRONICS    0x1c33
-#define PCI_DEVICE_ID_DAKTRONICS    0x6021
-
-#define DMA_BAR     0
-#define REG_BAR     1
+#define REG_WIDTH			8
+#define REG_MAGIC_NUMBER		(0 * REG_WIDTH)
+#define REG_CARD_ID_AND_BUILD		(1 * REG_WIDTH)
+#define REG_DATE_AND_TIME_STAMPS	(2 * REG_WIDTH)
+#define REG_CORE_TABLE_OFFSET		(3 * REG_WIDTH)
+#define REG_FPGA_SSID			(4 * REG_WIDTH)
+#define REG_FPGA_HW_ID			(5 * REG_WIDTH)
+#define REG_FPGA_DDNA			(6 * REG_WIDTH)
+#define REG_CPLD_CONFIG			(7 * REG_WIDTH)
+#define REG_INTERRUPT_MASK		(8 * REG_WIDTH)
+#define REG_INTERRUPT_ACTIVE		(9 * REG_WIDTH)
+#define REG_PCIE_ERROR_COUNT		(10 * REG_WIDTH)
+
+#define KP2000_MAGIC_VALUE		0x196C61482231894D
+
+#define PCI_VENDOR_ID_DAKTRONICS	0x1c33
+#define PCI_DEVICE_ID_DAKTRONICS	0x6021
+
+#define DMA_BAR				0
+#define REG_BAR				1
 
 struct kp2000_device {
-    struct pci_dev     *pdev;
-    struct miscdevice   miscdev;
-    char                name[16];
-
-    unsigned int        card_num;
-    struct mutex        sem;
-
-    void __iomem       *sysinfo_regs_base;
-    void __iomem       *regs_bar_base;
-    struct resource     regs_base_resource;
-    void __iomem       *dma_bar_base;
-    void __iomem       *dma_common_regs;
-    struct resource     dma_base_resource;
-
-    // "System Registers"
-    u32                 card_id;
-    u32                 build_version;
-    u32                 build_datestamp;
-    u32                 build_timestamp;
-    u32                 core_table_offset;
-    u32                 core_table_length;
-    u8                  core_table_rev;
-    u8                  hardware_revision;
-    u64                 ssid;
-    u64                 ddna;
-
-    // IRQ stuff
-    unsigned int        irq;
-
-    struct list_head    uio_devices_list;
+	struct pci_dev		*pdev;
+	struct miscdevice	miscdev;
+	char			name[16];
+
+	unsigned int		card_num;
+	struct mutex		sem;
+
+	void __iomem		*sysinfo_regs_base;
+	void __iomem		*regs_bar_base;
+	struct resource		regs_base_resource;
+	void __iomem		*dma_bar_base;
+	void __iomem		*dma_common_regs;
+	struct resource		dma_base_resource;
+
+	// "System Registers"
+	u32			card_id;
+	u32			build_version;
+	u32			build_datestamp;
+	u32			build_timestamp;
+	u32			core_table_offset;
+	u32			core_table_length;
+	u8			core_table_rev;
+	u8			hardware_revision;
+	u64			ssid;
+	u64			ddna;
+
+	// IRQ stuff
+	unsigned int		irq;
+
+	struct list_head	uio_devices_list;
 };
 
 extern struct class *kpc_uio_class;
 extern struct attribute *kpc_uio_class_attrs[];
 
-int   kp2000_probe_cores(struct kp2000_device *pcard);
-void  kp2000_remove_cores(struct kp2000_device *pcard);
+int kp2000_probe_cores(struct kp2000_device *pcard);
+void kp2000_remove_cores(struct kp2000_device *pcard);
 
 // Define this quick little macro because the expression is used frequently
-#define PCARD_TO_DEV(pcard)  (&(pcard->pdev->dev))
+#define PCARD_TO_DEV(pcard)	(&(pcard->pdev->dev))
 
 #endif /* KP2000_PCIE_H */
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
