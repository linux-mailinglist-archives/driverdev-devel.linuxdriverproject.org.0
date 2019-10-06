Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58096CD889
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 20:10:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3498D85ACD;
	Sun,  6 Oct 2019 18:10:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L5IsagVxtCLW; Sun,  6 Oct 2019 18:10:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 512FF81E1D;
	Sun,  6 Oct 2019 18:10:40 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BBED91BF5A2
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 18:10:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B8C158643F
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 18:10:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id leOCabcqHaje
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 18:10:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AE89C86096
 for <driverdev-devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 18:10:36 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id r17so13212479wme.0
 for <driverdev-devel@linuxdriverproject.org>;
 Sun, 06 Oct 2019 11:10:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nUc7j07G1K5gP3ruJjbXvjHvNURmkCH15Hqpb8iyvzg=;
 b=T37td21a4mAHOw30EnhvJbSSJE8n98qXDA8GbN7acu9mOdy1x0BIpsOjdfxntBvkpL
 VgbvoazTEXOUlwXhTWw3fCO2weNs6COhNODeYbPsB6VDUltbDNRd3PqxEo6FnXsGmGty
 eD4VAktURGhO8bHBJHX3qwk/wvYZ5SV91Kwb1eVPpLfHOvQdLvyOhNXi7RjdjaGHMDKc
 XrN/q1VxS45buHK37C5SFFLuigx6o0tVZO6K6U+o+0yhFNyZPdTfLjZ/L/cEzsoazmca
 bA5Yz4eofqHboDwzmbaT96A9tI3EpdSYh4RAwo8XEbZeroC7ct6ljnJMeX3NY6d3tjhs
 dWUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nUc7j07G1K5gP3ruJjbXvjHvNURmkCH15Hqpb8iyvzg=;
 b=cXwHhkumW5FHQ8n38ScOlMqmwvmG7nClZy4HIKlgqgE49oenPLP4APa5+0JUo8t2RW
 wXQIyo3icLrCLarzSA7gzB84zALkH2eRX/AICJcP5gPEX4Y6fnATrU9GgguZOugYZN7m
 cvr4wnA2SSzosg7OTzs28Wr/N1F6It6V/XWuBHHIMd+OOrlW3nhFqWy3DN+mSUOMbBY0
 MBm5GxyKKh8gxY21GRTtBIqbz0DUHNgee46RWHfObdrvMmh+NBOzHfQrN1Olw5vppQR2
 7UDdqAoHRxKeEk0HvzewtLenZ3hiA/Jrl9cV6lLV0QwUmCvZn0DJ+mj3MLcdQmS/vn81
 FFtw==
X-Gm-Message-State: APjAAAVMgdHJctEfvcbGhyvVUIwyCDyl3JRxrRhZPRat29ZBPlSddF3Y
 RCeGcl3CDnv75zfz2Zt/yzY=
X-Google-Smtp-Source: APXvYqx9NLtn0nrhm1ynLF/M9mHOKfYsgzrH970iCI+SxMFLkAArzfLrXbdFgof4n1cE5JCdg3IuFQ==
X-Received: by 2002:a7b:c34e:: with SMTP id l14mr16433659wmj.123.1570385435142; 
 Sun, 06 Oct 2019 11:10:35 -0700 (PDT)
Received: from localhost.localdomain (101.red-81-44-86.dynamicip.rima-tde.net.
 [81.44.86.101])
 by smtp.gmail.com with ESMTPSA id d78sm15469308wmd.47.2019.10.06.11.10.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 06 Oct 2019 11:10:34 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-pci: add quirks for 'E2' revision using
 'soc_device_attribute'
Date: Sun,  6 Oct 2019 20:10:32 +0200
Message-Id: <20191006181032.19112-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: neil@brown.name, driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Depending on revision of the chip, reset lines are inverted. Make code
more readable making use of 'soc_device_match' in driver probe function.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 6b98827da57f..3633c924848e 100644
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
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
