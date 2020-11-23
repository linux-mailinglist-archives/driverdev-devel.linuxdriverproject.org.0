Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DAE3D2C0252
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Nov 2020 10:36:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EE79885712;
	Mon, 23 Nov 2020 09:36:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H_a17bLy8Ibj; Mon, 23 Nov 2020 09:36:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DF0378557E;
	Mon, 23 Nov 2020 09:36:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 457A91BF2BC
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 09:36:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 42ADC8557E
 for <devel@linuxdriverproject.org>; Mon, 23 Nov 2020 09:36:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aNtY--ZqnsBd for <devel@linuxdriverproject.org>;
 Mon, 23 Nov 2020 09:36:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 65863855A1
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 09:36:42 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id u12so17947487wrt.0
 for <devel@driverdev.osuosl.org>; Mon, 23 Nov 2020 01:36:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cfn7KPoEDNUP5j1CUlwAt98NkFtTBvM06nmuIj7lq6c=;
 b=DNuZf2RPXD9qtccV+6Q6UrjIRbwy4haUcHUqp//F6v1m/JcJG85OdBGpXFVL++uqwA
 7GSY4sZerj6frZ3Dq/zO4YMsjQ2bc+qclqOlV+av0XOdOd26n0E4DMmEGsqhuMC/TsGD
 Tyh6H4lYl5tO8VxqWG8ZxLbR5m0+F7f6+ZQDqFH8IgZcQCY6h6t758unGVhGdxH82hkN
 tiF1V76agpNgtlON8WGmnhkVaTKQT2jyvrdnOrRXHTbNFqGL3J3+qGYkJ5vt2lP/beok
 29N8HX/PC8NteRQbFKMGHyPqfRyOj2IYv+o1Njosb5u6x19lxMRIXfx5z2XrueP676Of
 D0rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cfn7KPoEDNUP5j1CUlwAt98NkFtTBvM06nmuIj7lq6c=;
 b=ILAS0X150YAwZPCinZ75S0fR8oygnu5OYO1m+8O0pTnsrR+YLj04vEPt7nZvehxTRT
 qeVUFc4DPsurB1SH7A+tumjKOZErCIl/yDMq7Ek3xfvI/okZTsxi+2Ql4Ou2ELsDUxBl
 FV9ZxUF9XUZAYyPwge9/IXu3xfrqOP2IsrvXyJVAN/pIyW7pxna5xReYgmt7OBf7YNAv
 NGK2yxrwVrpl0CzloRpZqls+9fLZgqy8b9zVDos8fURXSyMI6Tk79iA6IwgQ8oV4UE0Q
 1IsC7fGZUQCgdh3YaTj6W+YWrZ6F7Z5+uRKx0CwBV6HNUmCNDZkZTaCFS/1FzqF9T67k
 Nang==
X-Gm-Message-State: AOAM533jY/2kz0Z0oduVxFxMivK0xAjCLRaocZtS8DlVXQMaALiXZ5Lb
 GDUSG3rhfsyImXbFR+sVcYY=
X-Google-Smtp-Source: ABdhPJwT4XwrMnSB3ZxMgr63BXT1wxp2FnLdhr+jyStUPeyHZ4MgfoYDB/nqOYi9aVxSoDQVDpw4pw==
X-Received: by 2002:adf:ed11:: with SMTP id a17mr30035810wro.197.1606124200921; 
 Mon, 23 Nov 2020 01:36:40 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id s202sm16073807wme.39.2020.11.23.01.36.40
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 23 Nov 2020 01:36:40 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/7] staging: mt7621-pci: remove bus ranges related code
Date: Mon, 23 Nov 2020 10:36:31 +0100
Message-Id: <20201123093637.8300-2-sergio.paracuellos@gmail.com>
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

Bus ranges are now discovered by default. Hence remove
its related code from the driver.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 7b38ef9f8560..3e8dddf5ec79 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -117,7 +117,6 @@ struct mt7621_pcie_port {
  * @base: IO Mapped Register Base
  * @io: IO resource
  * @mem: non-prefetchable memory resource
- * @busn: bus range
  * @offset: IO / Memory offset
  * @dev: Pointer to PCIe device
  * @io_map_base: virtual memory base address for io
@@ -131,7 +130,6 @@ struct mt7621_pcie {
 	struct device *dev;
 	struct resource io;
 	struct resource mem;
-	struct resource busn;
 	struct {
 		resource_size_t mem;
 		resource_size_t io;
@@ -299,7 +297,6 @@ static int mt7621_pci_parse_request_of_pci_ranges(struct mt7621_pcie *pcie)
 	struct device_node *node = dev->of_node;
 	struct of_pci_range_parser parser;
 	struct of_pci_range range;
-	int err;
 
 	if (of_pci_range_parser_init(&parser, node)) {
 		dev_err(dev, "missing \"ranges\" property\n");
@@ -324,15 +321,6 @@ static int mt7621_pci_parse_request_of_pci_ranges(struct mt7621_pcie *pcie)
 		}
 	}
 
-	err = of_pci_parse_bus_range(node, &pcie->busn);
-	if (err < 0) {
-		dev_err(dev, "failed to parse bus ranges property: %d\n", err);
-		pcie->busn.name = node->name;
-		pcie->busn.start = 0;
-		pcie->busn.end = 0xff;
-		pcie->busn.flags = IORESOURCE_BUS;
-	}
-
 	set_io_port_base(pcie->io_map_base);
 
 	return 0;
@@ -666,7 +654,6 @@ static int mt7621_pcie_register_host(struct pci_host_bridge *host,
 	struct mt7621_pcie *pcie = pci_host_bridge_priv(host);
 
 	list_splice_init(res, &host->windows);
-	host->busnr = pcie->busn.start;
 	host->dev.parent = pcie->dev;
 	host->ops = &mt7621_pci_ops;
 	host->map_irq = mt7621_map_irq;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
