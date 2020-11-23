Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EED932C0259
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Nov 2020 10:37:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3E2032048D;
	Mon, 23 Nov 2020 09:37:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9MuZ2w5MzKoi; Mon, 23 Nov 2020 09:37:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 187E620494;
	Mon, 23 Nov 2020 09:36:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 189E91BF2BC
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 09:36:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0E0EB2048D
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 09:36:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 45+qcYrpHn5R for <devel@linuxdriverproject.org>;
 Mon, 23 Nov 2020 09:36:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 9D9A720492
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 09:36:47 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id e7so361213wrv.6
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 01:36:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MMArJXM9UzpjLMpWBXhkcJMC3LIGOmm/bIbpKGtqT8k=;
 b=cdbo3iuyPSIZ92/jo0fMskHL6KRAMan/JxZ2bGkhF2dNDzYWkyFeK/im00q3PoMZw/
 yyB4OW/OT5lo3qeV/rBZNSfr4NpM7f5+aq/CFtSIFl3SqvM5OI9H9hcDTsm0DU9B2pDY
 PbTmbDFipJ4fmu37ad8VdvtSw9UNI9TY0xg0H+uRpBQzhOQ4Cm4AdL3tCqRB4NFXwnbx
 jzzYW7CAG7hayr/gr31Ap0fXp4JQHgGKk5L1aZBzqVKpa5ygo8R/YgfIaf7wSu/Cdup1
 TCDmDwel8Tk48ZQdts8Ec48UcG22dchHQgL7hzdlmlkZoDQyNw5kATHsIXUcg8CqX20S
 u7kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MMArJXM9UzpjLMpWBXhkcJMC3LIGOmm/bIbpKGtqT8k=;
 b=s0fC69aXNdug0zU7gOszH7JP2vanFvFd8fJpQfPkV5X6IFJAIw2+Cw/bQQ1yIJmXq0
 IK6iI8bcCWYQkpfThY+pNbYhjWdL2+xNuoJw9gkxyC8QGWjWBIZcVwdsLY+m3FhiQxfO
 xru0WA59UWPjMDtdH5GZpOfPw3xz88suGdQH7k4xQQJ6hvHghDlOkfX4xXRXEFAOyoGj
 PSFKk4SzUVl8gq4a/XiYt1yYucdpAnx+3SKUXckAuZgttm/PNz18xu4NGy9yw2Zjt6FI
 t/TZFX+9Rk429XKqktwB2DLtz0jjFPST3gDNB9Nroo72cG2fV/LwtxegwUF/gCCAGNRo
 h+vw==
X-Gm-Message-State: AOAM533yTuvE6n+Hs7NCaQznQq1F7/NJVjgnldTWDoy076NedbuJEHJb
 aomGbp53IKdhdYw82hHA4u0=
X-Google-Smtp-Source: ABdhPJwdAX+ppKYIdJy1tqA/uDmxNOWJZdNNnGxNSahLRX13kDxck2H28zBj2aqnrgJKJ8YvM3JnXg==
X-Received: by 2002:adf:b64f:: with SMTP id i15mr10066625wre.125.1606124206235; 
 Mon, 23 Nov 2020 01:36:46 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id s202sm16073807wme.39.2020.11.23.01.36.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Nov 2020 01:36:45 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 6/7] staging: mt7621-pci: convert to use
 'devm_platform_ioremap_resource'
Date: Mon, 23 Nov 2020 10:36:36 +0100
Message-Id: <20201123093637.8300-7-sergio.paracuellos@gmail.com>
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

Instead of getting resources parsing from DT first and remaping
afterwards, this can be done in one step using the kernel function
'devm_platform_ioremap_resource'. Hence, update to use it.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 24 ++++--------------------
 1 file changed, 4 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index a0b3ec51c7d9..4cdaccbcc97c 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -337,28 +337,18 @@ static int mt7621_pci_parse_request_of_pci_ranges(struct pci_host_bridge *host)
 }
 
 static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
-				  struct device_node *node,
 				  int slot)
 {
 	struct mt7621_pcie_port *port;
 	struct device *dev = pcie->dev;
 	struct platform_device *pdev = to_platform_device(dev);
-	struct device_node *pnode = dev->of_node;
-	struct resource regs;
 	char name[10];
-	int err;
 
 	port = devm_kzalloc(dev, sizeof(*port), GFP_KERNEL);
 	if (!port)
 		return -ENOMEM;
 
-	err = of_address_to_resource(pnode, slot + 1, &regs);
-	if (err) {
-		dev_err(dev, "missing \"reg\" property\n");
-		return err;
-	}
-
-	port->base = devm_ioremap_resource(dev, &regs);
+	port->base = devm_platform_ioremap_resource(pdev, slot + 1);
 	if (IS_ERR(port->base))
 		return PTR_ERR(port->base);
 
@@ -399,17 +389,11 @@ static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
 static int mt7621_pcie_parse_dt(struct mt7621_pcie *pcie)
 {
 	struct device *dev = pcie->dev;
+	struct platform_device *pdev = to_platform_device(dev);
 	struct device_node *node = dev->of_node, *child;
-	struct resource regs;
 	int err;
 
-	err = of_address_to_resource(node, 0, &regs);
-	if (err) {
-		dev_err(dev, "missing \"reg\" property\n");
-		return err;
-	}
-
-	pcie->base = devm_ioremap_resource(dev, &regs);
+	pcie->base = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(pcie->base))
 		return PTR_ERR(pcie->base);
 
@@ -425,7 +409,7 @@ static int mt7621_pcie_parse_dt(struct mt7621_pcie *pcie)
 
 		slot = PCI_SLOT(err);
 
-		err = mt7621_pcie_parse_port(pcie, child, slot);
+		err = mt7621_pcie_parse_port(pcie, slot);
 		if (err) {
 			of_node_put(child);
 			return err;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
