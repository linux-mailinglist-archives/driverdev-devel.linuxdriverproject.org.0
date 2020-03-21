Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C76D618DE7F
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Mar 2020 08:27:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C5E2F87731;
	Sat, 21 Mar 2020 07:27:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Kjy2ms9kY895; Sat, 21 Mar 2020 07:27:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6AA808771E;
	Sat, 21 Mar 2020 07:27:01 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id F3AE71BF2B9
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 07:26:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F0C7E88171
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 07:26:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jX-fkHYG-WvI
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 07:26:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 61C0687ECB
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 07:26:57 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id h4so10127967wru.2
 for <driverdev-devel@linuxdriverproject.org>;
 Sat, 21 Mar 2020 00:26:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lG9nkY2XZld0PmI0b9r5Yr+AM3pD+8axJrQD6+4yosE=;
 b=Q/BvUomDMjYIkN2UDvfQKl36lpIhwbR9kE9iu9kOtbIdd/CZXGv85FPo9Hk2pAkAW3
 1pE6hWieINcuBuJKNXSYYLGPwzNSvXzks3Ke/0wMrCfDM9rwWkUVAVJy7zOgr+WNrtnz
 7OvKFKmhLD3A4YlRPgqub+adZ6awc9uLME755C1gS+aV51NabxOZKnJgL+pDMnutHrWq
 34RssmeTEEeEEl9rfj3HneHT99cn3xNqw8ZXCDywxt5k9vAYAXyvSXx3pQrVLpkKakNI
 EpsRlsk4SfAEynWoNiyijMWxXUNiktanILoWzd1uvYk+fe3joM8pnKiz/r915dJV5Jco
 nsjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lG9nkY2XZld0PmI0b9r5Yr+AM3pD+8axJrQD6+4yosE=;
 b=HY06bd+tTohb/brOgdLmzuLR/j+UAh2/OtekJg5J0wmPytwKVGDo05bDPe8EGexU6B
 Oypvrv2ve8P++HdTExZgsPbzru/BEN8jyUaoOfbQEue/PSX8XIVTCJqhjDyL2fwHL40p
 Zqu1mwxnYDJk8ClgBZXGUAG/1KxoULhimuE/yQJhXeZw6WGbkI4c+N48WIpWEvEsyYrn
 dkksYt/kHybqWT0voM7AK5GnYP33ocuoc9UqkWbCbuXMDHVFmYSSNR7K8l2JTtz5pWI7
 NqpEi1P5zIE3+aOIpz1wev/UPU0iuWbL48aRRFezh1762fUx+gFZVzRZWaIXZtQ9XUAq
 jx6Q==
X-Gm-Message-State: ANhLgQ2MSaUCyqJLfF9ASWo8EmIlOATDzZXGm/J4SlIajmj5dnSUZvEq
 iUen3z/USN3AhMx8KYd1I00=
X-Google-Smtp-Source: ADFU+vs5sOi8hiCRnJYXWs4cHjw6nig90S8JnfAJFJvsZNin6JW8MwfIeTdtZ5Wywr/TJ8AV61ypbQ==
X-Received: by 2002:a5d:6289:: with SMTP id k9mr15642569wru.36.1584775615649; 
 Sat, 21 Mar 2020 00:26:55 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id w67sm10723126wmb.41.2020.03.21.00.26.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 21 Mar 2020 00:26:55 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: mt7621-pci: delete release gpios related code
Date: Sat, 21 Mar 2020 08:26:50 +0100
Message-Id: <20200321072650.7784-3-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200321072650.7784-1-sergio.paracuellos@gmail.com>
References: <20200321072650.7784-1-sergio.paracuellos@gmail.com>
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

Making gpio8 and gpio9 vendor specific and putting them
into the specific dts file makes not needed to release
gpios anymore because we are not occupying those pins
in the first place if it is not necessary. When the
device tree is parsed we can also check and return for
the error because we rely in the fact that the related
device for the board is correct.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/pci-mt7621.c | 27 +++++++------------------
 1 file changed, 7 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/mt7621-pci/pci-mt7621.c b/drivers/staging/mt7621-pci/pci-mt7621.c
index 23b51789f72e..1a76968b70c3 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -364,8 +364,8 @@ static int mt7621_pcie_parse_port(struct mt7621_pcie *pcie,
 	port->gpio_rst = devm_gpiod_get_index_optional(dev, "reset", slot,
 						       GPIOD_OUT_LOW);
 	if (IS_ERR(port->gpio_rst)) {
-		dev_notice(dev, "Failed to get GPIO for PCIe%d\n", slot);
-		port->gpio_rst = NULL;
+		dev_err(dev, "Failed to get GPIO for PCIe%d\n", slot);
+		return PTR_ERR(port->gpio_rst);
 	}
 
 	port->slot = slot;
@@ -474,15 +474,6 @@ static void mt7621_pcie_reset_ep_deassert(struct mt7621_pcie *pcie)
 	mdelay(PERST_DELAY_MS);
 }
 
-static void mt7621_pcie_release_gpios(struct mt7621_pcie *pcie)
-{
-	struct mt7621_pcie_port *port;
-
-	list_for_each_entry(port, &pcie->ports, list)
-		if (port->gpio_rst)
-			gpiod_put(port->gpio_rst);
-}
-
 static void mt7621_pcie_init_ports(struct mt7621_pcie *pcie)
 {
 	struct device *dev = pcie->dev;
@@ -684,7 +675,7 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 	err = mt7621_pci_parse_request_of_pci_ranges(pcie);
 	if (err) {
 		dev_err(dev, "Error requesting pci resources from ranges");
-		goto out_release_gpios;
+		return err;
 	}
 
 	/* set resources limits */
@@ -698,8 +689,7 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 	err = mt7621_pcie_init_virtual_bridges(pcie);
 	if (err) {
 		dev_err(dev, "Nothing is connected in virtual bridges. Exiting...");
-		err = 0;
-		goto out_release_gpios;
+		return 0;
 	}
 
 	mt7621_pcie_enable_ports(pcie);
@@ -709,19 +699,16 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 	err = mt7621_pcie_request_resources(pcie, &res);
 	if (err) {
 		dev_err(dev, "Error requesting resources\n");
-		goto out_release_gpios;
+		return err;
 	}
 
 	err = mt7621_pcie_register_host(bridge, &res);
 	if (err) {
 		dev_err(dev, "Error registering host\n");
-		goto out_release_gpios;
+		return err;
 	}
 
-out_release_gpios:
-	mt7621_pcie_release_gpios(pcie);
-
-	return err;
+	return 0;
 }
 
 static const struct of_device_id mt7621_pci_ids[] = {
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
