Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 65012184FF2
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 21:10:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id EE4AE29CAB;
	Fri, 13 Mar 2020 20:10:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id O4ROAbKPU6HR; Fri, 13 Mar 2020 20:10:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id F3CEA29BF9;
	Fri, 13 Mar 2020 20:10:16 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1123D1BF2C2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:10:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0E6EC86F9C
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:10:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6cwHKsBlPVt5
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:10:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 70CFB86C23
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:19 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id n15so13655690wrw.13
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 13:09:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZJxNjHaDDW1DxWUsx3fTTgLKNgh/l16Z3O+v/RqsR4g=;
 b=cx2mj95XnIJ3LqOit0blIfFYMUak4Au+JrdSn4/szUnBkT9O6U/rt/t0ZaEwAl2kcx
 P6l4+IWX1JYk+K+SkN/wmArIkcjb7HHGFplPNwqG5Ti2KDdjEbOy5MmkVU+IJTeADVmr
 6KA/GqSzIN+ioCJRNZpEl0MzK0Rj4G76G/LfY+GLLdjPWjPwyF4U3obW7t6Gg4nX789A
 N7hNzu4dza9pFecLLC29IoYIgCwVWrTmidvwDshcz14vf4x80FUKxHgmdJW1ODKDn1qw
 K6e7rWI4Y4++3CqHgKIN5O2Zq8wtPwrNAZvJAzhSYVMnXs9Ap4o4u6hiktFJMsn8RkrQ
 02wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZJxNjHaDDW1DxWUsx3fTTgLKNgh/l16Z3O+v/RqsR4g=;
 b=HAgA3VQL4Yr2aCWDdVV3nyAunZyhgSduaxzkXcSHzFmEKpich1rS+/RGqxDWRpUtKX
 cUe7QT+5SLHrCDiaTvmv/O+ESHEH+Q93nrXzJWAPMffxpz5oz3gzVNDGaCvAPT6QQsGV
 5I7Zggsbwj7JfLu0440tUVLB62xjqcA8pGORwcKFA4uIDOCZzOBRH4NJOdUUK+jBP33O
 f4cpg4VJoj1kwZZ/t8vKyxDr+4NF/U2Vlt7B2EdexPsW5NnOJIgcryY4f3gNBnh1naxX
 bjJfvcV4n5C0ZmLFjo1a3V+1PF9nGZEDDouembK7oR4KTMlhLk9yyNAfP2UjDf8OMGCG
 4ynw==
X-Gm-Message-State: ANhLgQ2O3DBpCgF7hITDxB1uc55vms7tBSqxdP+cXqBmsNlzzBZ47BZM
 l2tQ70qffPUBoN9NHRp7wl7iYwE+
X-Google-Smtp-Source: ADFU+vu1/ourExiNEi2EwRORUIAoqPOJ6jsLOjq34+mUrCkNC2DSJ4wnNJO1Z2LLSf9U0DMY+uVfgg==
X-Received: by 2002:a5d:56cd:: with SMTP id m13mr19039372wrw.236.1584130157794; 
 Fri, 13 Mar 2020 13:09:17 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id b187sm2249422wmc.14.2020.03.13.13.09.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 13 Mar 2020 13:09:17 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v4 1/6] staging: mt7621-pci: use gpios for properly reset
Date: Fri, 13 Mar 2020 21:09:08 +0100
Message-Id: <20200313200913.24321-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313200913.24321-1-sergio.paracuellos@gmail.com>
References: <20200313200913.24321-1-sergio.paracuellos@gmail.com>
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
According to the mediatek aplication note v0.1 there are
three gpios used for pcie ports reset control: gpio#19,
gpio#8 and gpio#7 for slots 0, 1 and 2 respectively.
This schema can be used separately for mt7621A but in some
boards due to pin share issue, if the PCM and I2S function
are enable at the same time, there are no enough GPIO to
control per-port PCIe reset. In those cases gpio#19 is enought
for reset the three ports together. Because of this we just
try to get the three gpios but if some of them fail we are not
failing in boot process, just prints a kernel notice and take
after into account if the descriptor is or not valid in order
to use it. All of them are set as GPIO output low configuration.
The gpio descriptor's API takes device tree property into account
and invert value if the pin is configured as active low.
So we also have to properly request pins from device tree
and set values correct in assert and deassert functions.
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
 drivers/staging/mt7621-pci/pci-mt7621.c | 84 +++++++++++++++----------
 1 file changed, 51 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 770dabd3a70d..9b4fe8d31101 100644
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
 
@@ -210,16 +208,16 @@ static void write_config(struct mt7621_pcie *pcie, unsigned int dev,
 	pcie_write(pcie, val, RALINK_PCI_CONFIG_DATA);
 }
 
-static inline void mt7621_perst_gpio_pcie_assert(struct mt7621_pcie *pcie)
+static inline void mt7621_rst_gpio_pcie_assert(struct mt7621_pcie_port *port)
 {
-	gpiod_set_value(pcie->perst, 0);
-	mdelay(PERST_DELAY_US);
+	if (port->gpio_rst)
+		gpiod_set_value(port->gpio_rst, 1);
 }
 
-static inline void mt7621_perst_gpio_pcie_deassert(struct mt7621_pcie *pcie)
+static inline void mt7621_rst_gpio_pcie_deassert(struct mt7621_pcie_port *port)
 {
-	gpiod_set_value(pcie->perst, 1);
-	mdelay(PERST_DELAY_US);
+	if (port->gpio_rst)
+		gpiod_set_value(port->gpio_rst, 0);
 }
 
 static inline bool mt7621_pcie_port_is_linkup(struct mt7621_pcie_port *port)
@@ -367,6 +365,13 @@ static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
 	if (IS_ERR(port->phy))
 		return PTR_ERR(port->phy);
 
+	port->gpio_rst = devm_gpiod_get_index_optional(dev, "reset", slot,
+						       GPIOD_OUT_LOW);
+	if (IS_ERR(port->gpio_rst)) {
+		dev_err(dev, "Failed to get GPIO for PCIe%d\n", slot);
+		return PTR_ERR(port->gpio_rst);
+	}
+
 	port->slot = slot;
 	port->pcie = pcie;
 
@@ -383,12 +388,6 @@ static int mt7621_pcie_parse_dt(struct mt7621_pcie *pcie)
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
@@ -399,12 +398,6 @@ static int mt7621_pcie_parse_dt(struct mt7621_pcie *pcie)
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
 
@@ -458,16 +451,49 @@ static int mt7621_pcie_init_port(struct mt7621_pcie_port *port)
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
@@ -476,16 +502,10 @@ static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
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
@@ -499,8 +519,6 @@ static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
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
