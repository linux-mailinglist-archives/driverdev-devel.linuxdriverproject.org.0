Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7415B182BBC
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 10:01:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id F2A48265F1;
	Thu, 12 Mar 2020 09:01:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X8CISyH7ACPf; Thu, 12 Mar 2020 09:01:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3FE6026600;
	Thu, 12 Mar 2020 09:01:06 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9CD7D1BF332
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:01:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8EFCE265DF
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:01:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RBon2eVASkDY
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:01:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by silver.osuosl.org (Postfix) with ESMTPS id EF8A3261E0
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:59 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id h62so6402851edd.12
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 02:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZYVBkoPhWiA6U7cxTEFQJ3ATIPflDT4EXivgUZR3/Mk=;
 b=NzOsaE5UIgRMuE1TXjBAyxSaepz2plOKjRG41GylwFLwdDCJAU7kVz6R0M8hv1d4Il
 YGub5ID0J6dAja5KYZOjNab7cKeYoqAon+iyVhJ7kVbwGS5uAQmC/3hqqNxbKwMLFd/I
 R/Nv1qq2L8w8V+P044q16lLxe087C0y6tL9DP0USIFW4oxBjnXAxIg6qN0vwawrD6f01
 5FrbV9Q7UGG84NB2iD6jzaihTLTsGPmPFOyEDvSKY2BsYDUbPcy7pl3ZCyeiOwoXl9Zd
 VeutkQzoPPFwOzaVfpCT5mNcyejPUIvnW1CmG8mFyF52KKykjEDZphL7057HnUSOhuLk
 ZLXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZYVBkoPhWiA6U7cxTEFQJ3ATIPflDT4EXivgUZR3/Mk=;
 b=gbhtnQRi4Ae6Bxtdwdvk/iC0G/flYT0uQsm5EYv2uPzrXUa02i0U6efzFbI+qt+Ww6
 o/j3K9teORE66EB85Jxdr9slw/OV8UmkGtQL9IFAbvCYr12GBw6moB6Jk1CFBZaMJwQv
 wKG9PTYCrQx99EiZxAMaRACORtPy5kAomG7gZAj2bVkZ3SrrHlNWX2+x1PPiwstd3uE0
 mfKz4v2nFXeDgx7GCRtPI1v0kdLrlgvLyApLepUqnxSZ+JCvy/78OoFFgLd0O+aRU5jG
 a0XJ074SdhgKqQHaVfZ0K1LZRSqFcMDd6x4XPm2ZfFPGPCkWsc8CmJ7gBLQK9JfuV6tt
 IjZg==
X-Gm-Message-State: ANhLgQ0CZtYlZHB/6eL5C0jh+DWUICx5W7C3Wf6GhJtxssQXEJfI6qrH
 /0qMFRkQiAMqzACxk6rlA1E=
X-Google-Smtp-Source: ADFU+vsmg8tMsgTArtfu01q3bWDQrgjzjE3DsAp69r0/bTVjiRW+ZB5QMAbCXpVUhaKoCxzV2zPNyw==
X-Received: by 2002:aa7:d7c9:: with SMTP id e9mr4176096eds.100.1584003657841; 
 Thu, 12 Mar 2020 02:00:57 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id p24sm1132711edx.34.2020.03.12.02.00.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 12 Mar 2020 02:00:57 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 5/5] staging: mt7621-pci: release gpios after pci
 initialization
Date: Thu, 12 Mar 2020 10:00:46 +0100
Message-Id: <20200312090046.26869-6-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200312090046.26869-1-sergio.paracuellos@gmail.com>
References: <20200312090046.26869-1-sergio.paracuellos@gmail.com>
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
index 5306a0dd769f..6ea284942b6f 100644
--- a/drivers/staging/mt7621-pci/pci-mt7621.c
+++ b/drivers/staging/mt7621-pci/pci-mt7621.c
@@ -482,6 +482,15 @@ static void mt7621_pcie_reset_ep_deassert(struct mt7621_pcie *pcie)
 	mdelay(PERST_DELAY_US);
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
@@ -681,7 +690,8 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 	err = mt7621_pcie_init_virtual_bridges(pcie);
 	if (err) {
 		dev_err(dev, "Nothing is connected in virtual bridges. Exiting...");
-		return 0;
+		err = 0;
+		goto out_release_gpios;
 	}
 
 	mt7621_pcie_enable_ports(pcie);
@@ -689,7 +699,7 @@ static int mt7621_pci_probe(struct platform_device *pdev)
 	err = mt7621_pci_parse_request_of_pci_ranges(pcie);
 	if (err) {
 		dev_err(dev, "Error requesting pci resources from ranges");
-		return err;
+		goto out_release_gpios;
 	}
 
 	setup_cm_memory_region(pcie);
@@ -697,16 +707,19 @@ static int mt7621_pci_probe(struct platform_device *pdev)
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
