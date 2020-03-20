Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E9A18CC16
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 12:01:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B78C788B39;
	Fri, 20 Mar 2020 11:01:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id woTicwnzApsw; Fri, 20 Mar 2020 11:01:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3B2DB88A3D;
	Fri, 20 Mar 2020 11:01:39 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 97C951BF307
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 8FA6388A83
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Pfw-ipmkfT3A
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 78DE888A1F
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:31 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id b2so6844058wrj.10
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 04:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eiwIRChNIyn091Ekc9Fl+AoeUvrdHh3fPTMdNKxM3bw=;
 b=qt2FE8XaFdZMeoKlKD2Gms6/BSHEXEhI/iJJIoembc70Gnuu/mmPoI4kZgVUfmeKPY
 PGfNcPPOI/pjtNwXfpCWxkW48q+5jiJ/i5hcQMBCL1HCvd3m3I3eeLUAIhnsWfNK0S26
 l1eEPd/aNVWWELZjwBzmIOewwCXT1immqurTkgOs8YGkb8EKFyuvDTEZPmfDwjiRxyCT
 aiWx+q8JCgjsQO7twFqyjemh0+53Y0hOgJqgBWfZQ9Vt8tFIDpR9gUmIxwOuRqFxDgzq
 A+V5n+skuYXO7PVUKyDwMWA5MG36hQUWFEphARJO7we+jbZvVXfCDyrSZ10Z2sWnDCSW
 1AUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eiwIRChNIyn091Ekc9Fl+AoeUvrdHh3fPTMdNKxM3bw=;
 b=M0qfVvf6U9dGq6qlPms8WaJ0cfZKAj/K5P18rtUSRXAXRiT7bg4Tl4HivQiXYP2M+U
 DIRNo7taWD+I5pbklkqizwJ8T9wIzE6BAHNUUlrN+HPiYRVi8oiXBt4/IcyngUzkHbMU
 Hg3fQ3noVMWBRjIdBi17uGbnBhHh7yV2XGRxtk+LrGvFXwqIwmfwhMk6aTTcO8Z19Z4r
 EwhUpRvy9QtSa+IsLgINwa9yNAm+sMBLxX6OVFHTS10WHb5IgxeaC1tDcuoQpdyESH96
 NDtg6HOFi65CpFJeSS7MeUtwV791gzi3omvwUgwF2MLFzZrCM27S+5Ly5ogi2sSRm8/a
 rEPw==
X-Gm-Message-State: ANhLgQ22IcdNndrt70xmvaIH97q4yTN8eMSXpRmDUwYl45dxfUxPxeOp
 /qVaKwwPFrXYrySddNvW3lJcJWQo
X-Google-Smtp-Source: ADFU+vvq4B9GB3u2smugE/I5m8/X5ckz1aW8COOC4gdy9LRJgPKguxtibDse0UmDaY+wHP/oqxC88g==
X-Received: by 2002:adf:bb06:: with SMTP id r6mr10472869wrg.324.1584702089749; 
 Fri, 20 Mar 2020 04:01:29 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id e6sm7488584wrn.29.2020.03.20.04.01.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 20 Mar 2020 04:01:29 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/5] staging: mt7621-pci: use only two phys from device tree
Date: Fri, 20 Mar 2020 12:01:21 +0100
Message-Id: <20200320110123.9907-4-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320110123.9907-1-sergio.paracuellos@gmail.com>
References: <20200320110123.9907-1-sergio.paracuellos@gmail.com>
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

In order to align work with the mt7621-pci-phy part of
the driver and device tree which is now using only two
real phys one of them dual ported properly parse the
device tree and don't call phy initialization for the
slot 1 because is being taking into account when the
phy for the slot 0 is instantiated.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index d6fc8a08c9bd..a521653d8dba 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -358,7 +358,7 @@ static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
 
 	snprintf(name, sizeof(name), "pcie-phy%d", slot);
 	port->phy = devm_phy_get(dev, name);
-	if (IS_ERR(port->phy))
+	if (IS_ERR(port->phy) && slot != 1)
 		return PTR_ERR(port->phy);
 
 	port->gpio_rst = devm_gpiod_get_index_optional(dev, "reset", slot,
@@ -495,6 +495,11 @@ static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
 	list_for_each_entry_safe(port, tmp, &pcie->ports, list) {
 		u32 slot = port->slot;
 
+		if (slot == 1) {
+			port->enabled = true;
+			continue;
+		}
+
 		err = mt7621_pcie_init_port(port);
 		if (err) {
 			dev_err(dev, "Initiating port %d failed\n", slot);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
