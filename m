Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 351A02C0257
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Nov 2020 10:36:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 93BEB8641F;
	Mon, 23 Nov 2020 09:36:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YioMKLyKVBbo; Mon, 23 Nov 2020 09:36:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AB7A0864E5;
	Mon, 23 Nov 2020 09:36:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9A5231BF2BC
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 09:36:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9319E85640
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 09:36:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id agsOIrPmQOFN for <devel@linuxdriverproject.org>;
 Mon, 23 Nov 2020 09:36:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A3286855A1
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 09:36:46 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id c9so17237988wml.5
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 01:36:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RQPGGl4UvBFGCPYJYvGl/fLX+pEs+gSzX2HXeDdX+hU=;
 b=iy9H2uvwQpiiJFxWtG6rwqlcyMnoHpLW5fNl22Ei5QEl0qedHdorP0/zrP9GjZNrBo
 /k3qOte3S9sG/SHNzX9ABnkxR/y4fasYasgNrNJTL9uZbk0t4TKvhw0d0tZ1uKBpJsvg
 K315IYVOzTh18XYvk1UQWpsFJnzN4F8WYyi3d++z30UVhS41/9xS5c6sykr/zRLZ2lee
 bP2hOUp74qjkNYv1rLJiD5AJwhmz7jbcL7oDVTOAMgE6QSzhLFyNVFFPv2iS78imU0MI
 uiauVfGbGEfF8I6sE9WZgjgxQArkT/r7fsMIFXgulVMCLcw9LIaJedYCJoLVe0087Ckq
 regA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RQPGGl4UvBFGCPYJYvGl/fLX+pEs+gSzX2HXeDdX+hU=;
 b=EHChB9Aea54sx5q4rmcPePJKsCFP5iDnEFnAudKbC2v9qVT11mdJxPHr4ewG1LFGwE
 aQuNZb0qKVfJ1O4HLS0+OwaZczOJKN/tD1G8cts/VR6SgpnEsslbj76SaoCM2KP0ZjtH
 0kpo5YZvFHqVGXxoigNM9SZFObb0pOOmJjBIsEmet23tBhnYbt38TD8ojNKEiheHDngc
 8QSfX95B3bwBE5Zil3enBKMD6f1YVlvqIMqtlb9TK0vgH5RsCNaxagMKw6mjh9Kcw0Rw
 N30buOYBplKrBmZ7a8pA+uj8zvWAGxPlry9N8xkEeWkWBSkrDz8zd77XPMfIEDmWrXwn
 QA+A==
X-Gm-Message-State: AOAM533H/O7rzMZxPYM+jEXO03wIB5TWmCTd8QpBnAniwXv32NiLPVa0
 rzOrCqIluin3YnXUy9VpbxU=
X-Google-Smtp-Source: ABdhPJwIUhL17YdTGGVcBJHmSEeqjr9Chb8H4SSdO5m142AWWuZ70iI//t7JAeQcmZa6MkVfll+T2g==
X-Received: by 2002:a1c:398a:: with SMTP id g132mr23929689wma.51.1606124205155; 
 Mon, 23 Nov 2020 01:36:45 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id s202sm16073807wme.39.2020.11.23.01.36.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Nov 2020 01:36:44 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/7] staging: mt7621-pci: parse and prepare resources in
 'mt7621_pci_parse_request_of_pci_ranges'
Date: Mon, 23 Nov 2020 10:36:35 +0100
Message-Id: <20201123093637.8300-6-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201123093637.8300-1-sergio.paracuellos@gmail.com>
References: <20201123093637.8300-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, neil@brown.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove 'mt7621_pcie_add_resources' where resources are added to the host
windows moving this code into the function where all the parsing and
preparing code is being done: 'mt7621_pci_parse_request_of_pci_ranges'.
The memory resource has been properly parsed for the PCI APIs so we
only need to retrieve it and use it in those places we need.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 44 ++++++++++++-------------
 1 file changed, 21 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 98569d9b70f2..a0b3ec51c7d9 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -116,7 +116,7 @@ struct mt7621_pcie_port {
  * struct mt7621_pcie - PCIe host information
  * @base: IO Mapped Register Base
  * @io: IO resource
- * @mem: non-prefetchable memory resource
+ * @mem: pointer to non-prefetchable memory resource
  * @dev: Pointer to PCIe device
  * @io_map_base: virtual memory base address for io
  * @ports: pointer to PCIe port information
@@ -128,7 +128,7 @@ struct mt7621_pcie {
 	void __iomem *base;
 	struct device *dev;
 	struct resource io;
-	struct resource mem;
+	struct resource *mem;
 	unsigned long io_map_base;
 	struct list_head ports;
 	int irq_map[PCIE_P2P_CNT];
@@ -256,7 +256,7 @@ static inline void mt7621_control_deassert(struct mt7621_pcie_port *port)
 
 static void setup_cm_memory_region(struct mt7621_pcie *pcie)
 {
-	struct resource *mem_resource = &pcie->mem;
+	struct resource *mem_resource = pcie->mem;
 	struct device *dev = pcie->dev;
 	resource_size_t mask;
 
@@ -286,12 +286,15 @@ static int mt7621_map_irq(const struct pci_dev *pdev, u8 slot, u8 pin)
 	return irq;
 }
 
-static int mt7621_pci_parse_request_of_pci_ranges(struct mt7621_pcie *pcie)
+static int mt7621_pci_parse_request_of_pci_ranges(struct pci_host_bridge *host)
 {
+	struct mt7621_pcie *pcie = pci_host_bridge_priv(host);
 	struct device *dev = pcie->dev;
 	struct device_node *node = dev->of_node;
 	struct of_pci_range_parser parser;
+	struct resource_entry *entry;
 	struct of_pci_range range;
+	LIST_HEAD(res);
 
 	if (of_pci_range_parser_init(&parser, node)) {
 		dev_err(dev, "missing \"ranges\" property\n");
@@ -314,14 +317,21 @@ static int mt7621_pci_parse_request_of_pci_ranges(struct mt7621_pcie *pcie)
 			of_pci_range_to_resource(&range, node, &pcie->io);
 			pcie->io.start = range.cpu_addr;
 			pcie->io.end = range.cpu_addr + range.size - 1;
-			break;
-		case IORESOURCE_MEM:
-			of_pci_range_to_resource(&range, node, &pcie->mem);
+			set_io_port_base(pcie->io_map_base);
 			break;
 		}
 	}
 
-	set_io_port_base(pcie->io_map_base);
+	entry = resource_list_first_type(&host->windows, IORESOURCE_MEM);
+	if (!entry) {
+		dev_err(dev, "Cannot get memory resource");
+		return -EINVAL;
+	}
+
+	pcie->mem = entry->res;
+	pci_add_resource(&res, &pcie->io);
+	pci_add_resource(&res, entry->res);
+	list_splice_init(&res, &host->windows);
 
 	return 0;
 }
@@ -641,19 +651,10 @@ static int mt7621_pcie_init_virtual_bridges(struct mt7621_pcie *pcie)
 	return 0;
 }
 
-static void mt7621_pcie_add_resources(struct mt7621_pcie *pcie,
-				      struct list_head *res)
-{
-	pci_add_resource(res, &pcie->io);
-	pci_add_resource(res, &pcie->mem);
-}
-
-static int mt7621_pcie_register_host(struct pci_host_bridge *host,
-				     struct list_head *res)
+static int mt7621_pcie_register_host(struct pci_host_bridge *host)
 {
 	struct mt7621_pcie *pcie = pci_host_bridge_priv(host);
 
-	list_splice_init(res, &host->windows);
 	host->ops = &mt7621_pci_ops;
 	host->map_irq = mt7621_map_irq;
 	host->sysdata = pcie;
@@ -672,7 +673,6 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 	struct mt7621_pcie *pcie;
 	struct pci_host_bridge *bridge;
 	int err;
-	LIST_HEAD(res);
 
 	if (!dev->of_node)
 		return -ENODEV;
@@ -696,7 +696,7 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 		return err;
 	}
 
-	err = mt7621_pci_parse_request_of_pci_ranges(pcie);
+	err = mt7621_pci_parse_request_of_pci_ranges(bridge);
 	if (err) {
 		dev_err(dev, "Error requesting pci resources from ranges");
 		return err;
@@ -718,9 +718,7 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 
 	setup_cm_memory_region(pcie);
 
-	mt7621_pcie_add_resources(pcie, &res);
-
-	err = mt7621_pcie_register_host(bridge, &res);
+	err = mt7621_pcie_register_host(bridge);
 	if (err) {
 		dev_err(dev, "Error registering host\n");
 		return err;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
