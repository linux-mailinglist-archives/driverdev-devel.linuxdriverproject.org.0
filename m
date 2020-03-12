Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCF4182BB8
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 10:01:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4C1AF26509;
	Thu, 12 Mar 2020 09:00:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4FTRdkVq5uBr; Thu, 12 Mar 2020 09:00:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B28EB2612E;
	Thu, 12 Mar 2020 09:00:56 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB13E1BF332
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D811C85F81
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OJWNt9Ne4TmC
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f66.google.com (mail-ed1-f66.google.com
 [209.85.208.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id D136085F59
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:52 +0000 (UTC)
Received: by mail-ed1-f66.google.com with SMTP id h5so6462105edn.5
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 02:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mC6aKPf0JsvI4MW1VmEmjB3olnDEDIe+h2HRbKBFtmo=;
 b=ijjRP/ZVXbjmiF+D3gA0P3w4xJtycGNIPM5XfWSMF98D+g5KbDfLF4iCh3L4KVem43
 RC6chSwkrk43QX5mupymESMZeheNY8lBDJKh8FSOQQOUxeI67AIBP763u4w1MQKcMyIZ
 jOkt0kdWsBP5V0ocbKI7YhZpP8//zKz7SJ1WEH8MYqlttxsbgq2c0lBgpdY9NVlytHAl
 j8xOpEPZH3D1q8X2Az/78uiUb2al57Car+JW57rXi9/De9gxlwHIkL+t8JDSYjeXDJ/E
 DKuXDohkYtC2E4I5T9ly3Cb5391Z824DfLkDXtDzFeDIWE24o2UHWvXhSbpIildnpw0s
 NrOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mC6aKPf0JsvI4MW1VmEmjB3olnDEDIe+h2HRbKBFtmo=;
 b=nujJGqC8711wfCveCqugzXgyu12BAL1kpss3iGVDVYaa4L2YX9ZLkqmCivUDvdBS/t
 UyyPv9NyTdy0YWFnvtjQW9QTCYksJ2POlghvo7C9x5qbWOJ2LftiJfW5C1wDmDz6p8OP
 QCLCfBDGgkNbvNU40cYJVNyz+96dBQRdUsSzTXAznrxtyyLDYvsVlf4DDgfZjqwDbuQu
 s3gr5jjH7BFfARWx6an6mPg/LfzKvLB/HKMz6F0atHxEI8s7zGhsGveQJjA+h5q5STYR
 E/inLtaBokBVsQn1bqIfQRrf6bA4VVhoE5VpCIlT7nCyFkKG8jU8TKIAeCJodKWT/v6n
 cPkg==
X-Gm-Message-State: ANhLgQ2ngEX6NpCXDfaLqLSHvdVBozOoLK6lTppd160f2sHR2/5lDKGB
 xATh3Es222buTMVPEG3CLPlokETe
X-Google-Smtp-Source: ADFU+vudyONYn+HNmW5QfuTn8cMf8hak3q+mqi2u/vNwKqfmIMUNG26qbo26K5He5pjCmnpmOEimYQ==
X-Received: by 2002:a17:906:ecee:: with SMTP id
 qt14mr5948670ejb.297.1584003651126; 
 Thu, 12 Mar 2020 02:00:51 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id p24sm1132711edx.34.2020.03.12.02.00.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 12 Mar 2020 02:00:50 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 1/5] staging: mt7621-pci: use gpios for properly reset
Date: Thu, 12 Mar 2020 10:00:42 +0100
Message-Id: <20200312090046.26869-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200312090046.26869-1-sergio.paracuellos@gmail.com>
References: <20200312090046.26869-1-sergio.paracuellos@gmail.com>
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
According to the mediatek application note v0.1 there are
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
 drivers/staging/mt7621-pci/pci-mt7621.c | 82 +++++++++++++++----------
 1 file changed, 49 insertions(+), 33 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 770dabd3a70d..34f6bcd53fbf 100644
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
@@ -367,6 +365,11 @@ static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
 	if (IS_ERR(port->phy))
 		return PTR_ERR(port->phy);
 
+	port->gpio_rst = devm_gpiod_get_index(dev, "reset", slot,
+					      GPIOD_OUT_LOW);
+	if (IS_ERR(port->gpio_rst))
+		dev_notice(dev, "Failed to get GPIO for PCIe%d\n", slot);
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
