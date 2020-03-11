Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76905182159
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 19:58:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D36A89350;
	Wed, 11 Mar 2020 18:58:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HbRWbtKP6Vwj; Wed, 11 Mar 2020 18:58:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8155489343;
	Wed, 11 Mar 2020 18:58:19 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2C7BE1BF400
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 29D1E862AC
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 13mc_0OELQi4
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 16D7886268
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:14 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id n2so3340194wmc.3
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 11:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=F6bSfGFABOeHbQdghX405zHEHwLruba4t4LDi1xakuE=;
 b=AgZbnFe88p2q5MESzHuGQ283WKLfuhgW52uundCNkqSFdLNRNf1B2UL79pH6A/YA3d
 2UE0CSbD+IGVyJdAhVUgSXw1GAy8HQ7Er8hEaIGsk0NUEz/UdIjcRPqCKwHj3LInht25
 26uBfP/izqQropc6jNfuDRIb6lxtqPRPkVHu7mv3dV0BD1eKKGTkMxaCL6u84wgzPZYs
 6TLGuuu7CteVlb1rYpTPFE1lsUAyXCN5FPvWMqc7AYWPCOJr8Jf4P0+4QCfjRZ+ZBQFY
 x1AAgduA/o5LyEj1cZ4zA8FZDmgZ9vh91y+rfBy1eWrKDL+wEK9H6cZGA9LQdN1yxQai
 GYuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=F6bSfGFABOeHbQdghX405zHEHwLruba4t4LDi1xakuE=;
 b=ZNhuHJnEYU83PPMqAe/tkknB803MkQgcoI1F3j49ZIA3gRb9sU4+R8j6ImP2A3FL+g
 ZuGHQzFOMK0wRLORamQWpRUMzaSZSBNAKQNGBo3QEzGmxVGd7oHvPFfpokGc+BOxq6EV
 p63xEyttVpUEqUHt98U8bYU5hnrgEzKLdeF2zX2DAue8RU34u+AW3rXSCdMjuxzjB0Oq
 X+rJZiaNZcqdzymyYeDOng/tWP4DxmBb3iy0AgaZYIOIFUd7qqerVzjUgIs1vT36PCE0
 dMlFROZvhkXWTTmPSzc5uvbjGUdcIvemg5IFAgfghJBgEoZMOZZ99O/9hb8lmpTXl4dZ
 eVgg==
X-Gm-Message-State: ANhLgQ134W7eCVCtoKlnqTd6gOpgffuyhO1bYL4KIgonnZcN8KO0vgbI
 xISEb2jwIfCH3N/2yLEbzF8=
X-Google-Smtp-Source: ADFU+vsSAnJ85aaYC2r/nJ+VXiDhRIsnSSVOiIJZp7RS84jUqQ8YqI4snavf+YYhqpqNRlQ/SPpb/g==
X-Received: by 2002:a1c:25c1:: with SMTP id l184mr172070wml.122.1583953092465; 
 Wed, 11 Mar 2020 11:58:12 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id n11sm38457120wrw.11.2020.03.11.11.58.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 11 Mar 2020 11:58:11 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 1/5] staging: mt7621-pci: use gpios for properly reset
Date: Wed, 11 Mar 2020 19:58:04 +0100
Message-Id: <20200311185808.29166-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311185808.29166-1-sergio.paracuellos@gmail.com>
References: <20200311185808.29166-1-sergio.paracuellos@gmail.com>
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
After this changes the order to make all assert and
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
index 770dabd3a70d..45ebd880ef6c 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -95,6 +95,7 @@
  * @pcie: pointer to PCIe host info
  * @phy: pointer to PHY control block
  * @pcie_rst: pointer to port reset control
+ * @gpio_rst: gpio reset
  * @slot: port slot
  * @enabled: indicates if port is enabled
  */
@@ -104,6 +105,7 @@ struct mt7621_pcie_port {
 	struct mt7621_pcie *pcie;
 	struct phy *phy;
 	struct reset_control *pcie_rst;
+	struct gpio_desc *gpio_rst;
 	u32 slot;
 	bool enabled;
 };
@@ -117,8 +119,6 @@ struct mt7621_pcie_port {
  * @offset: IO / Memory offset
  * @dev: Pointer to PCIe device
  * @ports: pointer to PCIe port information
- * @perst: gpio reset
- * @rst: pointer to pcie reset
  * @resets_inverted: depends on chip revision
  * reset lines are inverted.
  */
@@ -133,8 +133,6 @@ struct mt7621_pcie {
 		resource_size_t io;
 	} offset;
 	struct list_head ports;
-	struct gpio_desc *perst;
-	struct reset_control *rst;
 	bool resets_inverted;
 };
 
@@ -210,16 +208,14 @@ static void write_config(struct mt7621_pcie *pcie, unsigned int dev,
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
@@ -367,6 +363,13 @@ static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
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
 
@@ -383,12 +386,6 @@ static int mt7621_pcie_parse_dt(struct mt7621_pcie *pcie)
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
@@ -399,12 +396,6 @@ static int mt7621_pcie_parse_dt(struct mt7621_pcie *pcie)
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
 
@@ -458,16 +449,49 @@ static int mt7621_pcie_init_port(struct mt7621_pcie_port *port)
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
 	struct mt7621_pcie_port *port, *tmp;
-	u32 val = 0;
 	int err;
 
 	rt_sysc_m32(PERST_MODE_MASK, PERST_MODE_GPIO, MT7621_GPIO_MODE);
 
-	mt7621_perst_gpio_pcie_assert(pcie);
+	mt7621_pcie_reset_assert(pcie);
+	mt7621_pcie_reset_rc_deassert(pcie);
 
 	list_for_each_entry_safe(port, tmp, &pcie->ports, list) {
 		u32 slot = port->slot;
@@ -476,16 +500,10 @@ static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
 		if (err) {
 			dev_err(dev, "Initiating port %d failed\n", slot);
 			list_del(&port->list);
-		} else {
-			val = read_config(pcie, slot, PCIE_FTS_NUM);
-			dev_info(dev, "Port %d N_FTS = %x\n", slot,
-				 (unsigned int)val);
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
