Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B24E184FF1
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 21:10:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8958C87122;
	Fri, 13 Mar 2020 20:10:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z6kQ5mH-RpY0; Fri, 13 Mar 2020 20:10:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4526584D62;
	Fri, 13 Mar 2020 20:10:12 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5DDF81BF2C2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5AE6989811
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GPUVblZ9Cpvt
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 922348980C
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:24 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id f3so6681547wrw.7
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 13:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3/j3HhCTsLNEed5rAFg5uFKCwXx+tcAAJXmTF6xhQq0=;
 b=gwM8AZUeQrp1ynYktyiuGNQ1QYq+qIQkDPVPmhJWJzP9nPoOR90Gj/pHSma4LkQpAQ
 I0B2NjMTyIxVhPxDfcfOvNzmpT+4g4lm6/D8ccnwbJ7YX7aKn7tL4liLQdVXdgPc1CK5
 iCguM8/KkbM19UNqCQ62mczAgMVeuHbI8HMmrJBAjh7oJZehMGHQXkYojUVSNe4E2Mzf
 e4aRo7TPIjPmSSA46THTvSPhiFExcwfFq7LnOmVI8Uzv3gftPZCCCpBBGdmfUPek0tDA
 UhxHjocdbBIYIq/cHsTrPL4Jys/JU2zK/ofIxNMtmuB9IAsJVwxG8lhFG4Ru+ENusblB
 5w9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3/j3HhCTsLNEed5rAFg5uFKCwXx+tcAAJXmTF6xhQq0=;
 b=lcqUPbALQ7tB8ynfpWBUYAiBpbQvW74Dw/wnIjAIwkdlZws3NkVkzHeqE0yg/U4M9i
 0SmZwqld+yX+YkpUqdttABQIBhzfZr+O/0KQKNs2kuFPChhptwXV8Z/+YoRkrgeqfX+E
 tvBo8PK1ALFyfKx1UOfWEvICypQ5NS5w7ORyYfq9PBk3wpG3AyI6vxQUsEH9zLqKfLdk
 y82lVjDzylp8tLwUCZUYEygJHABKvOlOMdWaTE5JHyr0Gr0i7DHW1OU0TKUOYDnRXgGx
 QNMutazvV0OcCFVOln2D54lV/3/rsWUZO/TaeEy24ipltxJgj5usTe8NStCk9oGnYj7e
 9UTA==
X-Gm-Message-State: ANhLgQ238Wxh60jKCCU6WqeH8ZxWyx17jAka+Zw0I59YRE0GUgRYSMtv
 8bQovWjOhSBIEgTou+ZYT/k=
X-Google-Smtp-Source: ADFU+vsgVw+sKJcTwB8GXQIJB5XDf0QaBkcLqPFdYLqJy1poWCoyMvCPQf8jOedghc7SNK5g5RAmzA==
X-Received: by 2002:adf:e502:: with SMTP id j2mr310781wrm.259.1584130163107;
 Fri, 13 Mar 2020 13:09:23 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id b187sm2249422wmc.14.2020.03.13.13.09.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 13 Mar 2020 13:09:22 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v4 5/6] staging: mt7621-pci: release gpios after pci
 initialization
Date: Fri, 13 Mar 2020 21:09:12 +0100
Message-Id: <20200313200913.24321-6-sergio.paracuellos@gmail.com>
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

R3G's LEDs fail to initialize because one of them uses GPIO8
Hence, release the GPIO resources after PCIe initialization
and properly release also in driver error path.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 3d85ce788f9f..0d9dd14f6bec 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -484,6 +484,15 @@ static void mt7621_pcie_reset_ep_deassert(struct mt7621_pcie *pcie)
 	mdelay(PERST_DELAY_MS);
 }
 
+static void mt7621_pcie_release_gpios(struct mt7621_pcie *pcie)
+{
+	struct mt7621_pcie_port *port;
+
+	list_for_each_entry(port, &pcie->ports, list)
+		if (port->gpio_rst)
+			gpiod_put(port->gpio_rst);
+}
+
 static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
 {
 	struct device *dev = pcie->dev;
@@ -683,7 +692,8 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 	err = mt7621_pcie_init_virtual_bridges(pcie);
 	if (err) {
 		dev_err(dev, "Nothing is connected in virtual bridges. Exiting...");
-		return 0;
+		err = 0;
+		goto out_release_gpios;
 	}
 
 	mt7621_pcie_enable_ports(pcie);
@@ -691,7 +701,7 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 	err = mt7621_pci_parse_request_of_pci_ranges(pcie);
 	if (err) {
 		dev_err(dev, "Error requesting pci resources from ranges");
-		return err;
+		goto out_release_gpios;
 	}
 
 	setup_cm_memory_region(pcie);
@@ -699,16 +709,19 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 	err = mt7621_pcie_request_resources(pcie, &res);
 	if (err) {
 		dev_err(dev, "Error requesting resources\n");
-		return err;
+		goto out_release_gpios;
 	}
 
 	err = mt7621_pcie_register_host(bridge, &res);
 	if (err) {
 		dev_err(dev, "Error registering host\n");
-		return err;
+		goto out_release_gpios;
 	}
 
-	return 0;
+out_release_gpios:
+	mt7621_pcie_release_gpios(pcie);
+
+	return err;
 }
 
 static const struct of_device_id mt7621_pci_ids[] = {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
