Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B955184FF0
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 21:10:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1B76D87846;
	Fri, 13 Mar 2020 20:10:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BsMgB0pIqcL1; Fri, 13 Mar 2020 20:10:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 269E287234;
	Fri, 13 Mar 2020 20:10:14 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42B201BF2C2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3F74F89824
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FgZr-s2R2rQY
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1601F89814
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:26 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id n15so13656007wrw.13
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 13:09:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JAHDUtFF30wEPbON+Vzv3Y0++XJxpOwdxP97l+ZARrs=;
 b=Upe5UScDtrR1Sc72UxMYqrqIrxpj6N+K7nAEhIIjYj0C2evyCQFNWsmj8INoD+Qgzu
 inWvzZN6An2MuDQTDpaxYVN18CLkaFiyrk39sJ/dyNBi+1rkEd87lP0KilKgqGxRr9Oz
 drrrpxfEZPtm7kF4Z0ay+/yO29jteVldMjJIpaBPl7myI+1hftSGIdZCGCSyeBCZk8wt
 iZSK5qQp5kKlg1Ue96u+HDIE1eKMhSjcnOdx0MsBOzuhHeGmdmYf7REhr5tlbZa52mbj
 2/e7wbQNwf3Yhu8h3g6CsD+Amcmw86doOnZ9RGQ2qihdu0/FrNxEBt+1SYWVtV5Yszkx
 AYzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JAHDUtFF30wEPbON+Vzv3Y0++XJxpOwdxP97l+ZARrs=;
 b=bqNxu4h9T908P3P7PL61jduyMm3GLw2GDKwKMkCWYc01REg1mGInuTZfTlqD3Bze63
 FR31tf/EfMWjy5Cp7zxk7yCF0y1To4OY2vAGNTi10Ef+5ZmAslZSWjbhNJIYOsoAkjlh
 YyyxXBoEcRlkk8tEl0W+AZW+4z76O4xRmrf7/GEV3GabVa6joQDgiqsX06bfDF0SI7Kq
 jtzzp0LzBsOVQR6ateKA5+6gAPez0yLYJcH5n9+WSwbxIrLY7d3u3gKevmsvxoENanFB
 RQueZSq6Bkc609WFvUara6h7iN89dxBRVL0xGMRTVb3K7894nyI8CsIJA2wknFOCtuDY
 IO0g==
X-Gm-Message-State: ANhLgQ2rNXI35CoMVfptGr1bOdOHWHZCfb0K9ol0MXjDJcTOrVnt2hh1
 wqM8NO0L2sGDnnhQ60xcNOU=
X-Google-Smtp-Source: ADFU+vt1NhFBIO7veWyeJi7bcK1BqKOkZjchjiN5b6we3fNmSZRKfZCwWBAFPKl8erHWHeXWdScx9A==
X-Received: by 2002:a5d:474c:: with SMTP id o12mr1860118wrs.156.1584130164527; 
 Fri, 13 Mar 2020 13:09:24 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id b187sm2249422wmc.14.2020.03.13.13.09.23
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 13 Mar 2020 13:09:23 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v4 6/6] staging: mt7621-pci: delete no more needed
 'mt7621_reset_port'
Date: Fri, 13 Mar 2020 21:09:13 +0100
Message-Id: <20200313200913.24321-7-sergio.paracuellos@gmail.com>
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

After review all the resets at the beggining the function
'mt7621_reset_port' is not needed anymore. Hence delete it
and its uses.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 0d9dd14f6bec..973be9aa7bb2 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -255,13 +255,6 @@ static inline void mt7621_control_deassert(struct mt7621_pcie_port *port)
 		reset_control_assert(port->pcie_rst);
 }
 
-static void mt7621_reset_port(struct mt7621_pcie_port *port)
-{
-	mt7621_control_assert(port);
-	msleep(100);
-	mt7621_control_deassert(port);
-}
-
 static void setup_cm_memory_region(struct mt7621_pcie *pcie)
 {
 	struct resource *mem_resource = &pcie->mem;
@@ -427,12 +420,6 @@ static int mt7621_pcie_init_port(struct mt7621_pcie_port *port)
 	u32 slot = port->slot;
 	int err;
 
-	/*
-	 * Any MT7621 Ralink pcie controller that doesn't have 0x0101 at
-	 * the end of the chip_id has inverted PCI resets.
-	 */
-	mt7621_reset_port(port);
-
 	err = phy_init(port->phy);
 	if (err) {
 		dev_err(dev, "failed to initialize port%d phy\n", slot);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
