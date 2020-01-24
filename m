Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3D11475F6
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 Jan 2020 02:17:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E8C5E22193;
	Fri, 24 Jan 2020 01:17:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OvUvLv07AZGV; Fri, 24 Jan 2020 01:17:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AA0E0221AF;
	Fri, 24 Jan 2020 01:17:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F38281BF321
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 01:17:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id ED8C52041C
 for <devel@linuxdriverproject.org>; Fri, 24 Jan 2020 01:17:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7wde1udxX1ny for <devel@linuxdriverproject.org>;
 Fri, 24 Jan 2020 01:17:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id 1C93620417
 for <devel@driverdev.osuosl.org>; Fri, 24 Jan 2020 01:17:15 +0000 (UTC)
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 35CAF22522;
 Fri, 24 Jan 2020 01:17:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579828634;
 bh=nhjcnkcEO8jN1x3NpWuxFwmmX5e5juZ3g2iPE9HWB9I=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=N9jTDwaVoWUMAQHsk3u9iXR7V1UGyHNbYcjNow6s+Kya3WtnB9uzJ7Ga4+KUwEspq
 FUdPAy5pTWiCpZWKVTdDuOGtoGvVSN6Pt/rGnRhhDZJGLYLk8eTJUJzgxLjWmTDu+u
 0j+iqT37CFaIQv50XLWM1+kXo9ursCQRpLe3Ab5U=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 05/33] staging: mt7621-pci: add quirks for 'E2'
 revision using 'soc_device_attribute'
Date: Thu, 23 Jan 2020 20:16:40 -0500
Message-Id: <20200124011708.18232-5-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200124011708.18232-1-sashal@kernel.org>
References: <20200124011708.18232-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
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
Cc: Sasha Levin <sashal@kernel.org>, devel@driverdev.osuosl.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Sergio Paracuellos <sergio.paracuellos@gmail.com>

[ Upstream commit b483b4e4d3f6bfd5089b9e6dc9ba259879c6ce6f ]

Depending on revision of the chip, reset lines are inverted. Make code
more readable making use of 'soc_device_match' in driver probe function.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Link: https://lore.kernel.org/r/20191006181032.19112-1-sergio.paracuellos@gmail.com
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 6b98827da57fd..3633c924848ec 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -29,15 +29,14 @@
 #include <linux/phy/phy.h>
 #include <linux/platform_device.h>
 #include <linux/reset.h>
+#include <linux/sys_soc.h>
 #include <mt7621.h>
 #include <ralink_regs.h>
 
 #include "../../pci/pci.h"
 
 /* sysctl */
-#define MT7621_CHIP_REV_ID		0x0c
 #define MT7621_GPIO_MODE		0x60
-#define CHIP_REV_MT7621_E2		0x0101
 
 /* MediaTek specific configuration registers */
 #define PCIE_FTS_NUM			0x70c
@@ -126,6 +125,8 @@ struct mt7621_pcie_port {
  * @ports: pointer to PCIe port information
  * @perst: gpio reset
  * @rst: pointer to pcie reset
+ * @resets_inverted: depends on chip revision
+ * reset lines are inverted.
  */
 struct mt7621_pcie {
 	void __iomem *base;
@@ -140,6 +141,7 @@ struct mt7621_pcie {
 	struct list_head ports;
 	struct gpio_desc *perst;
 	struct reset_control *rst;
+	bool resets_inverted;
 };
 
 static inline u32 pcie_read(struct mt7621_pcie *pcie, u32 reg)
@@ -229,9 +231,9 @@ static inline void mt7621_pcie_port_clk_disable(struct mt7621_pcie_port *port)
 
 static inline void mt7621_control_assert(struct mt7621_pcie_port *port)
 {
-	u32 chip_rev_id = rt_sysc_r32(MT7621_CHIP_REV_ID);
+	struct mt7621_pcie *pcie = port->pcie;
 
-	if ((chip_rev_id & 0xFFFF) == CHIP_REV_MT7621_E2)
+	if (pcie->resets_inverted)
 		reset_control_assert(port->pcie_rst);
 	else
 		reset_control_deassert(port->pcie_rst);
@@ -239,9 +241,9 @@ static inline void mt7621_control_assert(struct mt7621_pcie_port *port)
 
 static inline void mt7621_control_deassert(struct mt7621_pcie_port *port)
 {
-	u32 chip_rev_id = rt_sysc_r32(MT7621_CHIP_REV_ID);
+	struct mt7621_pcie *pcie = port->pcie;
 
-	if ((chip_rev_id & 0xFFFF) == CHIP_REV_MT7621_E2)
+	if (pcie->resets_inverted)
 		reset_control_deassert(port->pcie_rst);
 	else
 		reset_control_assert(port->pcie_rst);
@@ -641,9 +643,14 @@ static int mt7621_pcie_register_host(struct pci_host_bridge *host,
 	return pci_host_probe(host);
 }
 
+static const struct soc_device_attribute mt7621_pci_quirks_match[] = {
+	{ .soc_id = "mt7621", .revision = "E2" }
+};
+
 static int mt7621_pci_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
+	const struct soc_device_attribute *attr;
 	struct mt7621_pcie *pcie;
 	struct pci_host_bridge *bridge;
 	int err;
@@ -661,6 +668,10 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 	platform_set_drvdata(pdev, pcie);
 	INIT_LIST_HEAD(&pcie->ports);
 
+	attr = soc_device_match(mt7621_pci_quirks_match);
+	if (attr)
+		pcie->resets_inverted = true;
+
 	err = mt7621_pcie_parse_dt(pcie);
 	if (err) {
 		dev_err(dev, "Parsing DT failed\n");
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
