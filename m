Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CB851A62C5
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 07:59:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5100285F9B;
	Mon, 13 Apr 2020 05:59:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sUC-pd+7N-qf; Mon, 13 Apr 2020 05:59:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C06DA85B5C;
	Mon, 13 Apr 2020 05:59:49 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A978C1BF20B
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 05:59:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id A3678203BF
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 05:59:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nh+0NaFcaZ1i
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 05:59:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 2F75A20108
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 05:59:46 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id i10so9055629wrv.10
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 12 Apr 2020 22:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=c5ZfUZA3j3xNmQcowhvhLKHFO6pMgn9GdrMFGSU1Uo4=;
 b=qTdmdqqR+O1atmVj+QBUCR8l8itA4+ksQ0v6ldzb/d1A6Ryux5U+QWcqBaJwLaiiev
 Gj5RKcTmfgZ52wk66gswE4zZqXsHy/heJ7WybZOAcT//4aiwlmjf7Ya6OqnmZOWWHrqF
 r9kLyi07VDIgubv6ZB1lLXghu6ehweVNAazRUURxtFT9uiHM92KV6A54mJkbJNfqNLSp
 YOjqs9ioGv0JJn2i2/G/eb7NNBpOm/jZNhA01fQCF/uz3zHCwHp+b0PwmdMChkSDIHZi
 A1NDyjH++PY4X4UOyEqcFji8iHzkMJnaNsxMasGyXbkbmjHxk3y7yVGpcsTydYWXgpjM
 Rq9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=c5ZfUZA3j3xNmQcowhvhLKHFO6pMgn9GdrMFGSU1Uo4=;
 b=mgI9D7BhUM23oq8EKLuhtf5oBmfuqgCPek18i0jiqkPN+RB5l/3f4Djrg8mISRHVLf
 j1EY0tbia0z15vNcsJidplOu1uGvIiH02gjyEs8alH48cP7ZIKSEqYBh3n5hr7Pgns+k
 Gf/TaKfaTcjCD7v+o6h+hes3NV3mXiDn/kKVonc7ANXhDGGT77yog4iptL732tDCtePh
 TRjH40EGRRz9iOXbHagzD5C62Zt+Ad0Zg3/jOKLJNiR9FvT7khVznOEbPlaCOjWwlDuE
 MwWBmzhkeNn4FIyNCTQBaqs+WPwkJqgga8IOK3je1FIOtflsagyqvzXOhR5jvjAmL8RQ
 Dl4g==
X-Gm-Message-State: AGi0PuYut0A6V3l/xjxI7izG0nEusGpg+NYdrTbMYczxW/Odn9XGg0CO
 LL+Q8w65OvrJcAxKDfiBxMscIeui
X-Google-Smtp-Source: APiQypK32dk9vj+/SDFgVq23yBrmrBdo7ZSY9irqgukoQ5u+GFRODABghUp9/DdYz8Ra4xp3jZ3Rtw==
X-Received: by 2002:adf:fa03:: with SMTP id m3mr5001854wrr.68.1586757584477;
 Sun, 12 Apr 2020 22:59:44 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id f3sm13594181wmj.24.2020.04.12.22.59.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 Apr 2020 22:59:43 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-pci: fix PCIe interrupt mapping
Date: Mon, 13 Apr 2020 07:59:42 +0200
Message-Id: <20200413055942.2714-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: neil@brown.name, devicetree@vger.kernel.org,
 driverdev-devel@linuxdriverproject.org, robh@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

MT7621 has three assigned interrupts for the pcie. This
interrupts should properly being mapped taking into account
which devices are finally connected in which bus according
to link status. So the irq mappings should be as follows
according to link status (three bits indicating which devices
are link up):

* For PCIe Bus 1 slot 0:
  - status = 0x2 || status = 0x6 => IRQ = pcie1_irq (24).
  - status = 0x4 => IRQ = pcie2_irq (25).
  - default => IRQ = pcie0_irq (23).
* For PCIe Bus 2 slot 0:
  - status = 0x5 || status = 0x6 => IRQ = pcie2_irq (25).
  - default => IRQ = pcie1_irq (24).
* For PCIe Bus 2 slot 1:
  - status = 0x5 || status = 0x6 => IRQ = pcie2_irq (25).
  - default => IRQ = pcie1_irq (24).
* For PCIe Bus 3 any slot:
  - default => IRQ = pcie2_irq (25).

Because of this, the function 'of_irq_parse_and_map_pci' cannot
be used and we need to change device tree information from using
the 'interrupt-map' and 'interrupt-map-mask' properties into an
'interrupts' property to be able to get irq information from the
ports using the 'platform_get_irq' and storing an 'irq-map' into
the pcie driver data node to properly map correct irq using a
new 'mt7621_map_irq' function where this map will be read and the
correct irq returned.

Fixes: 46d093124df4 ("staging: mt7621-pci: improve interrupt mapping")
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
Tested in gnubee pc1 (which uses all the buses and also worked without
changes) and tested also in ZyXEL LTE3301-PLUS which has PCIe and a
mt7615e connected to second bus on the first phy where the current
mapping was failing and this changes seems to fix the mapping problems.

On gnubee we get:

# cat /proc/interrupts 
CPU0       CPU1       CPU2       CPU3       
...

23:          0          0          0          0  MIPS GIC  11  ahci[0000:01:00.0]
24:          0          0          0          0  MIPS GIC  31  ahci[0000:02:00.0]
25:        279          0          0          0  MIPS GIC  32  ahci[0000:03:00.0]

On the ZyXEL LTE3301-PLUS before this changes (wrongly '23' (pcie0 one) is assigned):

root@OpenWrt:/# cat /proc/interrupts
CPU0       CPU1       CPU2       CPU3
...

23:          0          0          0          0  MIPS GIC  11  mt7615e

After this changes:

root@OpenWrt:/# cat /proc/interrupts
CPU0       CPU1       CPU2       CPU3
...

24:         85          0          0          0  MIPS GIC  31  mt7615e

Thanks!

 drivers/staging/mt7621-dts/mt7621.dtsi  |  9 +++----
 drivers/staging/mt7621-pci/pci-mt7621.c | 36 +++++++++++++++++++++++--
 2 files changed, 38 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index 9e5cf68731bb..82aa93634eda 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -523,11 +523,10 @@ pcie: pcie@1e140000 {
 			0x01000000 0 0x00000000 0x1e160000 0 0x00010000 /* io space */
 		>;
 
-		#interrupt-cells = <1>;
-		interrupt-map-mask = <0xF0000 0 0 1>;
-		interrupt-map = <0x10000 0 0 1 &gic GIC_SHARED 4 IRQ_TYPE_LEVEL_HIGH>,
-				<0x20000 0 0 1 &gic GIC_SHARED 24 IRQ_TYPE_LEVEL_HIGH>,
-				<0x30000 0 0 1 &gic GIC_SHARED 25 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-parent = <&gic>;
+		interrupts = <GIC_SHARED 4 IRQ_TYPE_LEVEL_HIGH
+				GIC_SHARED 24 IRQ_TYPE_LEVEL_HIGH
+				GIC_SHARED 25 IRQ_TYPE_LEVEL_HIGH>;
 
 		status = "disabled";
 
diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index b9d460a9c041..36207243a71b 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -97,6 +97,7 @@
  * @pcie_rst: pointer to port reset control
  * @gpio_rst: gpio reset
  * @slot: port slot
+ * @irq: GIC irq
  * @enabled: indicates if port is enabled
  */
 struct mt7621_pcie_port {
@@ -107,6 +108,7 @@ struct mt7621_pcie_port {
 	struct reset_control *pcie_rst;
 	struct gpio_desc *gpio_rst;
 	u32 slot;
+	int irq;
 	bool enabled;
 };
 
@@ -120,6 +122,7 @@ struct mt7621_pcie_port {
  * @dev: Pointer to PCIe device
  * @io_map_base: virtual memory base address for io
  * @ports: pointer to PCIe port information
+ * @irq_map: irq mapping info according pcie link status
  * @resets_inverted: depends on chip revision
  * reset lines are inverted.
  */
@@ -135,6 +138,7 @@ struct mt7621_pcie {
 	} offset;
 	unsigned long io_map_base;
 	struct list_head ports;
+	int irq_map[PCIE_P2P_MAX];
 	bool resets_inverted;
 };
 
@@ -279,6 +283,16 @@ static void setup_cm_memory_region(struct mt7621_pcie *pcie)
 	}
 }
 
+static int mt7621_map_irq(const struct pci_dev *pdev, u8 slot, u8 pin)
+{
+	struct mt7621_pcie *pcie = pdev->bus->sysdata;
+	struct device *dev = pcie->dev;
+	int irq = pcie->irq_map[slot];
+
+	dev_info(dev, "bus=%d slot=%d irq=%d\n", pdev->bus->number, slot, irq);
+	return irq;
+}
+
 static int mt7621_pci_parse_request_of_pci_ranges(struct mt7621_pcie *pcie)
 {
 	struct device *dev = pcie->dev;
@@ -330,6 +344,7 @@ static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
 {
 	struct mt7621_pcie_port *port;
 	struct device *dev = pcie->dev;
+	struct platform_device *pdev = to_platform_device(dev);
 	struct device_node *pnode = dev->of_node;
 	struct resource regs;
 	char name[10];
@@ -371,6 +386,12 @@ static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
 	port->slot = slot;
 	port->pcie = pcie;
 
+	port->irq = platform_get_irq(pdev, slot);
+	if (port->irq < 0) {
+		dev_err(dev, "Failed to get IRQ for PCIe%d\n", slot);
+		return -ENXIO;
+	}
+
 	INIT_LIST_HEAD(&port->list);
 	list_add_tail(&port->list, &pcie->ports);
 
@@ -585,13 +606,15 @@ static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
 {
 	u32 pcie_link_status = 0;
 	u32 n;
-	int i;
+	int i = 0;
 	u32 p2p_br_devnum[PCIE_P2P_MAX];
+	int irqs[PCIE_P2P_MAX];
 	struct mt7621_pcie_port *port;
 
 	list_for_each_entry(port, &pcie->ports, list) {
 		u32 slot = port->slot;
 
+		irqs[i++] = port->irq;
 		if (port->enabled)
 			pcie_link_status |= BIT(slot);
 	}
@@ -614,6 +637,15 @@ static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
 		 (p2p_br_devnum[1] << PCIE_P2P_BR_DEVNUM1_SHIFT) |
 		 (p2p_br_devnum[2] << PCIE_P2P_BR_DEVNUM2_SHIFT));
 
+	/* Assign IRQs */
+	n = 0;
+	for (i = 0; i < PCIE_P2P_MAX; i++)
+		if (pcie_link_status & BIT(i))
+			pcie->irq_map[n++] = irqs[i];
+
+	for (i = n; i < PCIE_P2P_MAX; i++)
+		pcie->irq_map[i] = -1;
+
 	return 0;
 }
 
@@ -638,7 +670,7 @@ static int mt7621_pcie_register_host(struct pci_host_bridge *host,
 	host->busnr = pcie->busn.start;
 	host->dev.parent = pcie->dev;
 	host->ops = &mt7621_pci_ops;
-	host->map_irq = of_irq_parse_and_map_pci;
+	host->map_irq = mt7621_map_irq;
 	host->swizzle_irq = pci_common_swizzle;
 	host->sysdata = pcie;
 
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
