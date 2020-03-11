Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 632511814C4
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 10:27:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8733486702;
	Wed, 11 Mar 2020 09:27:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id inasrOgKFk7h; Wed, 11 Mar 2020 09:27:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 60945864EC;
	Wed, 11 Mar 2020 09:27:16 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 06C821BF5DB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 02F3A20426
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xcU5bVqHiXhj
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 79968203BB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:12 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id n15so1563125wrw.13
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 02:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=goG6ivXoVa5SJTFaxeKtzJJrhsZJRYvnL8kNnwyl6LM=;
 b=TGHG40wExzDUnBb/j3Lsg2xsE7JP/Q5O6ir5mrKxZNxZNigS0TwVmIvOoK/TkdbHR8
 GQyZ5LKnNSylJhCByGOp3pmCfOrG6p5Gn6clmejQPd1SqBKTBcnsTDE+pwg9DH+sfHMF
 EYbf61podwWjyZbdMLsZoRkm9pSc51oI7LWjlpo3j6zZSEAqGR9BphwdWqklOkAUVkfz
 FQNb9+IhTt/oe5tN23pJ7HA4bG7fzvp8z144wq9nmSzuUvINYLbd6giy78g3M+70Rlfv
 WwP06vmc4mK1PLPfn/er2YmUyu1IBrZTjmlmW5e0SV6J2hYP14PEq8lNy87BUgjK8UFJ
 nLSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=goG6ivXoVa5SJTFaxeKtzJJrhsZJRYvnL8kNnwyl6LM=;
 b=VUivzgv7mD1oWVTZkwnphlA41zbupmIoz2ATLTMt7n3pKFIl3xJIDKWocgjB3bLbsE
 +hBdcv/2MbNPHsD/5dTKnqLPXUg8/VU4yBDJjvG2EEcm53By4dg9m1CzJsEhf85CmF9v
 z8l5KvOMWcEfw0ai2xkPsZHejvezPxkNPIhlNxjJWqLgE62Q0Kx/tWJZQr1H1PBAKj0d
 170WAF6fViJGLr6wGCNYjDojknKjY3vYrTm+tqGNFN3cuTSUjXighyoK6wdR5pIAUHIi
 irGdsygnWQW8exOSyfJUiZe43LLSTE3cg3I6KafVYkWTFdmB7191jRJ+S4CsFckURKoa
 WbVg==
X-Gm-Message-State: ANhLgQ0pje9XH5QVg5irI65lRBkvsfw9C9kGoAPMYHHlyKH5h/ChP6wz
 tVdN6b/T5ZB66NKtCrT0984Pynyb
X-Google-Smtp-Source: ADFU+vu/eR0tbw35+/aLdhFLcS8BLmgRJ8keOrqYeBnCVSnBCKoaby3SB1UoAaD+q7rBmvpq6sThRg==
X-Received: by 2002:a5d:5089:: with SMTP id a9mr3492944wrt.187.1583918830955; 
 Wed, 11 Mar 2020 02:27:10 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id v14sm33075156wrr.34.2020.03.11.02.27.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 11 Mar 2020 02:27:10 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/5] staging: mt7621-pci: use gpios for properly reset
Date: Wed, 11 Mar 2020 10:27:03 +0100
Message-Id: <20200311092707.23454-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311092707.23454-1-sergio.paracuellos@gmail.com>
References: <20200311092707.23454-1-sergio.paracuellos@gmail.com>
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
Cc: ryder.lee@mediatek.com, driverdev-devel@linuxdriverproject.org,
 weijie.gao@mediatek.com, gerg@kernel.org, neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Original driver code was using three gpio's for reset
asserts and deasserts the pcis. Instead of using that
a general reset control with a perst gpio was introduced
and it seems it is partially working but sometimes there
are some unexpected hangs on boot. This commit make use of
the three original gpios using 'reset-gpios' property of
the device tree and removes the reset line and perst gpio.
Setting mode as 'gpio' is not necessary anymore because the
device tree will be changed to function 'gpio' for the group
'pcie'. After this changes the order to make all assert and
deassert in the 'probe' process makes more sense:
* Parse device tree.
* make assert of the RC's and EP's before doing anything else.
* make deassert of the RC's before initializing the phy.
* Init the phy.
* make deassert of the EP's before initialize pci ports.
* Normal PCI initialization.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 82 +++++++++++++++----------
 1 file changed, 49 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 770dabd3a70d..78fdf7d51514 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -35,9 +35,6 @@
 
 #include "../../pci/pci.h"
 
-/* sysctl */
-#define MT7621_GPIO_MODE		0x60
-
 /* MediaTek specific configuration registers */
 #define PCIE_FTS_NUM			0x70c
 #define PCIE_FTS_NUM_MASK		GENMASK(15, 8)
@@ -95,6 +92,7 @@
  * @pcie: pointer to PCIe host info
  * @phy: pointer to PHY control block
  * @pcie_rst: pointer to port reset control
+ * @gpio_rst: gpio reset
  * @slot: port slot
  * @enabled: indicates if port is enabled
  */
@@ -104,6 +102,7 @@ struct mt7621_pcie_port {
 	struct mt7621_pcie *pcie;
 	struct phy *phy;
 	struct reset_control *pcie_rst;
+	struct gpio_desc *gpio_rst;
 	u32 slot;
 	bool enabled;
 };
@@ -117,8 +116,6 @@ struct mt7621_pcie_port {
  * @offset: IO / Memory offset
  * @dev: Pointer to PCIe device
  * @ports: pointer to PCIe port information
- * @perst: gpio reset
- * @rst: pointer to pcie reset
  * @resets_inverted: depends on chip revision
  * reset lines are inverted.
  */
@@ -133,8 +130,6 @@ struct mt7621_pcie {
 		resource_size_t io;
 	} offset;
 	struct list_head ports;
-	struct gpio_desc *perst;
-	struct reset_control *rst;
 	bool resets_inverted;
 };
 
@@ -210,16 +205,14 @@ static void write_config(struct mt7621_pcie *pcie, unsigned int dev,
 	pcie_write(pcie, val, RALINK_PCI_CONFIG_DATA);
 }
 
-static inline void mt7621_perst_gpio_pcie_assert(struct mt7621_pcie *pcie)
+static inline void mt7621_rst_gpio_pcie_assert(struct mt7621_pcie_port *port)
 {
-	gpiod_set_value(pcie->perst, 0);
-	mdelay(PERST_DELAY_US);
+	gpiod_set_value(port->gpio_rst, 0);
 }
 
-static inline void mt7621_perst_gpio_pcie_deassert(struct mt7621_pcie *pcie)
+static inline void mt7621_rst_gpio_pcie_deassert(struct mt7621_pcie_port *port)
 {
-	gpiod_set_value(pcie->perst, 1);
-	mdelay(PERST_DELAY_US);
+	gpiod_set_value(port->gpio_rst, 1);
 }
 
 static inline bool mt7621_pcie_port_is_linkup(struct mt7621_pcie_port *port)
@@ -367,6 +360,13 @@ static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
 	if (IS_ERR(port->phy))
 		return PTR_ERR(port->phy);
 
+	port->gpio_rst = devm_gpiod_get_index(dev, "reset", slot,
+					      GPIOD_OUT_HIGH);
+	if (IS_ERR(port->gpio_rst)) {
+		dev_err(dev, "Unable to request GPIO reset in slot %d\n", slot);
+		return PTR_ERR(port->gpio_rst);
+	}
+
 	port->slot = slot;
 	port->pcie = pcie;
 
@@ -383,12 +383,6 @@ static int mt7621_pcie_parse_dt(struct mt7621_pcie *pcie)
 	struct resource regs;
 	int err;
 
-	pcie->perst = devm_gpiod_get(dev, "perst", GPIOD_OUT_HIGH);
-	if (IS_ERR(pcie->perst)) {
-		dev_err(dev, "failed to get gpio perst\n");
-		return PTR_ERR(pcie->perst);
-	}
-
 	err = of_address_to_resource(node, 0, &regs);
 	if (err) {
 		dev_err(dev, "missing \"reg\" property\n");
@@ -399,12 +393,6 @@ static int mt7621_pcie_parse_dt(struct mt7621_pcie *pcie)
 	if (IS_ERR(pcie->base))
 		return PTR_ERR(pcie->base);
 
-	pcie->rst = devm_reset_control_get_exclusive(dev, "pcie");
-	if (PTR_ERR(pcie->rst) == -EPROBE_DEFER) {
-		dev_err(dev, "failed to get pcie reset control\n");
-		return PTR_ERR(pcie->rst);
-	}
-
 	for_each_available_child_of_node(node, child) {
 		int slot;
 
@@ -458,6 +446,39 @@ static int mt7621_pcie_init_port(struct mt7621_pcie_port *port)
 	return 0;
 }
 
+static void mt7621_pcie_reset_assert(struct mt7621_pcie *pcie)
+{
+	struct mt7621_pcie_port *port;
+
+	list_for_each_entry(port, &pcie->ports, list) {
+		/* PCIe RC reset assert */
+		mt7621_control_assert(port);
+
+		/* PCIe EP reset assert */
+		mt7621_rst_gpio_pcie_assert(port);
+	}
+
+	mdelay(PERST_DELAY_US);
+}
+
+static void mt7621_pcie_reset_rc_deassert(struct mt7621_pcie *pcie)
+{
+	struct mt7621_pcie_port *port;
+
+	list_for_each_entry(port, &pcie->ports, list)
+		mt7621_control_deassert(port);
+}
+
+static void mt7621_pcie_reset_ep_deassert(struct mt7621_pcie *pcie)
+{
+	struct mt7621_pcie_port *port;
+
+	list_for_each_entry(port, &pcie->ports, list)
+		mt7621_rst_gpio_pcie_deassert(port);
+
+	mdelay(PERST_DELAY_US);
+}
+
 static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
 {
 	struct device *dev = pcie->dev;
@@ -465,9 +486,8 @@ static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
 	u32 val = 0;
 	int err;
 
-	rt_sysc_m32(PERST_MODE_MASK, PERST_MODE_GPIO, MT7621_GPIO_MODE);
-
-	mt7621_perst_gpio_pcie_assert(pcie);
+	mt7621_pcie_reset_assert(pcie);
+	mt7621_pcie_reset_rc_deassert(pcie);
 
 	list_for_each_entry_safe(port, tmp, &pcie->ports, list) {
 		u32 slot = port->slot;
@@ -483,9 +503,7 @@ static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
 		}
 	}
 
-	reset_control_assert(pcie->rst);
-
-	mt7621_perst_gpio_pcie_deassert(pcie);
+	mt7621_pcie_reset_ep_deassert(pcie);
 
 	list_for_each_entry(port, &pcie->ports, list) {
 		u32 slot = port->slot;
@@ -499,8 +517,6 @@ static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
 			port->enabled = false;
 		}
 	}
-
-	reset_control_deassert(pcie->rst);
 }
 
 static void mt7621_pcie_enable_port(struct mt7621_pcie_port *port)
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
