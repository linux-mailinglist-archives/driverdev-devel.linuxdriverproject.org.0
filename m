Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C47874B344
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jun 2019 09:45:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 4372F8788D;
	Wed, 19 Jun 2019 07:45:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iBC4CtR9Y1Qt; Wed, 19 Jun 2019 07:45:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6325286FDE;
	Wed, 19 Jun 2019 07:45:10 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 478211BF23C
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 41B408426E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C22RwxQ2dmcM
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E6367841D5
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 07:45:03 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id c66so617150wmf.0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Jun 2019 00:45:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UkUAP4MF6KxHVeMncajJvnDbB+OVxkuKmJ4665as0ro=;
 b=UvsdARGTzreDNvKGm1EkCvS/KqnqDjDQjj32F+NiO1/q5v1bSa1XX1RcYEraq2u3IT
 srLRi4XPYGrLbgjIzlr7m0YDyETVUe5KvryCb9HwxghbWqARdhupwBJxgLgS3YnETiCp
 D6CwpjHTw19uWZixZA9yt4wvucNUERKKPA93QdNl07WXByx4MIW1dA6OeLbkUXxFHFEp
 WzsINcnSorb6Ph2aenxg4CvHE+aCPuXygmn1ZMMy6WecGsqnXN8FbRwV1ruRIJuJQaCr
 jPnYeFm9I7mxTId4JmIxb3DTj7uduQkmDevUWyAnNfNpGMmvJOPiGc86pcGEpTFYMEo4
 3KdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UkUAP4MF6KxHVeMncajJvnDbB+OVxkuKmJ4665as0ro=;
 b=aP1csnEPhu7o0l4NTZEFjsyv4+1LJ6ryv5RMs+xa8fnuhaVtgfWEVT/r98kk+scCkx
 CfonMfjK2fEQ9B3EbBN0pU9/XKAAHRga6GOybu9EEqqJej7aeed8pnfZo4GnE/Pel2Xn
 J+HLc1n94MCZBqsZUzdW2rEhFmbkDOC6ymKDrTK6dw4lf0QLIuWDW7yaH0bUqhHrZXrL
 PzeKF4ra/t7JqL776G+7HBhMnpbYgks0EEM5liJbhSsW+MSgbMdSQefTBXt80m2prj7k
 RYl7MuV2FOr1ZN7uCHGCVqHa6xFbUQBPFbIzKA0Qs7zIAwqnnYyBJ1miQupRacJZ6aFM
 tAIw==
X-Gm-Message-State: APjAAAXcyns9dwQ3WW9XNQ7hqHNh/1lyPlFJoDojBks8kAZGWzdqfq6L
 hzKWKCYTFTHoIRSMhYPqFp5Vl4Ua
X-Google-Smtp-Source: APXvYqz1u4vzkndKluLjHgxfoYpH2ssyFUljEE02a3vXhEuaAQ5nVeaAEB9hUXNU+7aaS6NwYgF60g==
X-Received: by 2002:a1c:56d7:: with SMTP id k206mr6742646wmb.56.1560930302445; 
 Wed, 19 Jun 2019 00:45:02 -0700 (PDT)
Received: from localhost.localdomain (34.red-88-0-78.dynamicip.rima-tde.net.
 [88.0.78.34])
 by smtp.gmail.com with ESMTPSA id j7sm17925440wru.54.2019.06.19.00.45.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 19 Jun 2019 00:45:02 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/4] staging: mt7621-pci: use gpio perst instead of builtin
 behaviour
Date: Wed, 19 Jun 2019 09:44:56 +0200
Message-Id: <20190619074458.31112-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190619074458.31112-1-sergio.paracuellos@gmail.com>
References: <20190619074458.31112-1-sergio.paracuellos@gmail.com>
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org, gerg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Some boards seems to ignore the PERST builtin behaviour to properly
perform a pcie line reset. Use gpio PERST behaviour instead which
seems to be more common.

Fixes: bd1a05bd87ad ("staging: mt7621-pci: use PERST_N instead of gpio control")
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 106 +++++++++++++-----------
 1 file changed, 58 insertions(+), 48 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 7ba6ec93ac0f..de09bda0b4cd 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -17,6 +17,7 @@
 
 #include <linux/bitops.h>
 #include <linux/delay.h>
+#include <linux/gpio/consumer.h>
 #include <linux/iopoll.h>
 #include <linux/module.h>
 #include <linux/of.h>
@@ -35,6 +36,7 @@
 
 /* sysctl */
 #define MT7621_CHIP_REV_ID		0x0c
+#define MT7621_GPIO_MODE		0x60
 #define CHIP_REV_MT7621_E2		0x0101
 
 /* MediaTek specific configuration registers */
@@ -81,7 +83,6 @@
 #define PCIE_BAR_ENABLE			BIT(0)
 #define PCIE_PORT_INT_EN(x)		BIT(20 + (x))
 #define PCIE_PORT_CLK_EN(x)		BIT(24 + (x))
-#define PCIE_PORT_PERST(x)		BIT(1 + (x))
 #define PCIE_PORT_LINKUP		BIT(0)
 
 #define PCIE_CLK_GEN_EN			BIT(31)
@@ -89,6 +90,9 @@
 #define PCIE_CLK_GEN1_DIS		GENMASK(30, 24)
 #define PCIE_CLK_GEN1_EN		(BIT(27) | BIT(25))
 #define MEMORY_BASE			0x0
+#define PERST_MODE_MASK			GENMASK(11, 10)
+#define PERST_MODE_GPIO			BIT(10)
+#define PERST_DELAY_US			1000
 
 /**
  * struct mt7621_pcie_port - PCIe port information
@@ -119,6 +123,7 @@ struct mt7621_pcie_port {
  * @offset: IO / Memory offset
  * @dev: Pointer to PCIe device
  * @ports: pointer to PCIe port information
+ * @perst: gpio reset
  * @rst: pointer to pcie reset
  */
 struct mt7621_pcie {
@@ -132,6 +137,7 @@ struct mt7621_pcie {
 		resource_size_t io;
 	} offset;
 	struct list_head ports;
+	struct gpio_desc *perst;
 	struct reset_control *rst;
 };
 
@@ -198,6 +204,23 @@ static void write_config(struct mt7621_pcie *pcie, unsigned int dev,
 	pcie_write(pcie, val, RALINK_PCI_CONFIG_DATA);
 }
 
+static inline void mt7621_perst_gpio_pcie_assert(struct mt7621_pcie *pcie)
+{
+	gpiod_set_value(pcie->perst, 0);
+	mdelay(PERST_DELAY_US);
+}
+
+static inline void mt7621_perst_gpio_pcie_deassert(struct mt7621_pcie *pcie)
+{
+	gpiod_set_value(pcie->perst, 1);
+	mdelay(PERST_DELAY_US);
+}
+
+static inline bool mt7621_pcie_port_is_linkup(struct mt7621_pcie_port *port)
+{
+	return (pcie_port_read(port, RALINK_PCI_STATUS) & PCIE_PORT_LINKUP) != 0;
+}
+
 static inline void mt7621_control_assert(struct mt7621_pcie_port *port)
 {
 	u32 chip_rev_id = rt_sysc_r32(MT7621_CHIP_REV_ID);
@@ -344,6 +367,12 @@ static int mt7621_pcie_parse_dt(struct mt7621_pcie *pcie)
 	struct resource regs;
 	int err;
 
+	pcie->perst = devm_gpiod_get(dev, "perst", GPIOD_OUT_HIGH);
+	if (IS_ERR(pcie->perst)) {
+		dev_err(dev, "failed to get gpio perst\n");
+		return PTR_ERR(pcie->perst);
+	}
+
 	err = of_address_to_resource(node, 0, &regs);
 	if (err) {
 		dev_err(dev, "missing \"reg\" property\n");
@@ -384,7 +413,6 @@ static int mt7621_pcie_init_port(struct mt7621_pcie_port *port)
 	struct mt7621_pcie *pcie = port->pcie;
 	struct device *dev = pcie->dev;
 	u32 slot = port->slot;
-	u32 val = 0;
 	int err;
 
 	/*
@@ -393,47 +421,34 @@ static int mt7621_pcie_init_port(struct mt7621_pcie_port *port)
 	 */
 	mt7621_reset_port(port);
 
-	val = read_config(pcie, slot, PCIE_FTS_NUM);
-	dev_info(dev, "Port %d N_FTS = %x\n", slot, (unsigned int)val);
-
 	err = phy_init(port->phy);
 	if (err) {
 		dev_err(dev, "failed to initialize port%d phy\n", slot);
-		goto err_phy_init;
+		return err;
 	}
 
 	err = phy_power_on(port->phy);
 	if (err) {
 		dev_err(dev, "failed to power on port%d phy\n", slot);
-		goto err_phy_on;
-	}
-
-	if ((pcie_port_read(port, RALINK_PCI_STATUS) & PCIE_PORT_LINKUP) == 0) {
-		dev_err(dev, "pcie%d no card, disable it (RST & CLK)\n", slot);
-		mt7621_control_assert(port);
-		port->enabled = false;
-		err = -ENODEV;
-		goto err_no_link_up;
+		return err;
 	}
 
 	port->enabled = true;
 
 	return 0;
-
-err_no_link_up:
-	phy_power_off(port->phy);
-err_phy_on:
-	phy_exit(port->phy);
-err_phy_init:
-	return err;
 }
 
 static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
 {
 	struct device *dev = pcie->dev;
 	struct mt7621_pcie_port *port, *tmp;
+	u32 val = 0;
 	int err;
 
+	rt_sysc_m32(PERST_MODE_MASK, PERST_MODE_GPIO, MT7621_GPIO_MODE);
+
+	mt7621_perst_gpio_pcie_assert(pcie);
+
 	list_for_each_entry_safe(port, tmp, &pcie->ports, list) {
 		u32 slot = port->slot;
 
@@ -441,10 +456,29 @@ static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
 		if (err) {
 			dev_err(dev, "Initiating port %d failed\n", slot);
 			list_del(&port->list);
+		} else {
+			val = read_config(pcie, slot, PCIE_FTS_NUM);
+			dev_info(dev, "Port %d N_FTS = %x\n", slot,
+				 (unsigned int)val);
 		}
 	}
 
 	reset_control_assert(pcie->rst);
+
+	mt7621_perst_gpio_pcie_deassert(pcie);
+
+	list_for_each_entry(port, &pcie->ports, list) {
+		u32 slot = port->slot;
+
+		if (!mt7621_pcie_port_is_linkup(port)) {
+			dev_err(dev, "pcie%d no card, disable it (RST & CLK)\n",
+				slot);
+			phy_power_off(port->phy);
+			mt7621_control_assert(port);
+			port->enabled = false;
+		}
+	}
+
 	rt_sysc_m32(0x30, 2 << 4, SYSC_REG_SYSTEM_CONFIG1);
 	rt_sysc_m32(PCIE_CLK_GEN_EN, PCIE_CLK_GEN_DIS, RALINK_PCIE_CLK_GEN);
 	rt_sysc_m32(PCIE_CLK_GEN1_DIS, PCIE_CLK_GEN1_EN, RALINK_PCIE_CLK_GEN1);
@@ -453,30 +487,12 @@ static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
 	reset_control_deassert(pcie->rst);
 }
 
-static int mt7621_pcie_enable_port(struct mt7621_pcie_port *port)
+static void mt7621_pcie_enable_port(struct mt7621_pcie_port *port)
 {
 	struct mt7621_pcie *pcie = port->pcie;
 	u32 slot = port->slot;
 	u32 offset = MT7621_PCIE_OFFSET + (slot * MT7621_NEXT_PORT);
 	u32 val;
-	int err;
-
-	/* assert port PERST_N */
-	val = pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
-	val |= PCIE_PORT_PERST(slot);
-	pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);
-
-	/* de-assert port PERST_N */
-	val = pcie_read(pcie, RALINK_PCI_PCICFG_ADDR);
-	val &= ~PCIE_PORT_PERST(slot);
-	pcie_write(pcie, val, RALINK_PCI_PCICFG_ADDR);
-
-	/* 100ms timeout value should be enough for Gen1 training */
-	err = readl_poll_timeout(port->base + RALINK_PCI_STATUS,
-				 val, !!(val & PCIE_PORT_LINKUP),
-				 20, 100 * USEC_PER_MSEC);
-	if (err)
-		return -ETIMEDOUT;
 
 	/* enable pcie interrupt */
 	val = pcie_read(pcie, RALINK_PCI_PCIMSK_ADDR);
@@ -492,8 +508,6 @@ static int mt7621_pcie_enable_port(struct mt7621_pcie_port *port)
 	/* configure class code and revision ID */
 	pcie_write(pcie, PCIE_CLASS_CODE | PCIE_REVISION_ID,
 		   offset + RALINK_PCI_CLASS);
-
-	return 0;
 }
 
 static void mt7621_pcie_enable_ports(struct mt7621_pcie *pcie)
@@ -506,11 +520,7 @@ static void mt7621_pcie_enable_ports(struct mt7621_pcie *pcie)
 
 	list_for_each_entry(port, &pcie->ports, list) {
 		if (port->enabled) {
-			if (mt7621_pcie_enable_port(port)) {
-				dev_err(dev, "de-assert port %d PERST_N\n",
-					port->slot);
-				continue;
-			}
+			mt7621_pcie_enable_port(port);
 			dev_info(dev, "PCIE%d enabled\n", num_slots_enabled);
 			num_slots_enabled++;
 		}
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
