Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EC018CC15
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 12:01:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3895988B41;
	Fri, 20 Mar 2020 11:01:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P+tK6q1M9U-E; Fri, 20 Mar 2020 11:01:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 917F888AA6;
	Fri, 20 Mar 2020 11:01:37 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50BAD1BF307
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 4B8CD87D81
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kn9hgOKXBy64
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0F96487D6E
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:29 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 25so6007960wmk.3
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 04:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C+K1Wn87HRo1w5pxDLjZQJdk/XpOTjn8WLcOTvs6Vec=;
 b=Q+Lv8JrreJGuB/RiaaVpacB1IP3SMdwvBjlXbWnUQszVLFPQpdfm9zkC6gMFBW6WwZ
 ivxDfIBWSXzOLepvNGOMX8k0d61ZnDgkghLiYY5i5wugX4oZsFRatmcIvX2mnrfOEqsY
 gj3jg4jGdWJ78ePtkFV5FkS2IgA/0z49+4j5n+5PTjC+kuiTdnNYvccdgB+Jjo0qySbo
 uAZB5k5UP/7pGnzjPzTrNVPBGgn4m95ctDlb9f9VdcdoYBgCNgPS/64vZLTW38G5Fua9
 I3aNwvDGODbIJrSRHbvCacsEBj+UnZWw27ZWsQ5kQ2wWVuvKtSi/pUX29FZkl48C5/l6
 vX1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C+K1Wn87HRo1w5pxDLjZQJdk/XpOTjn8WLcOTvs6Vec=;
 b=nlqEqNoYO3mPv+uvXTAckENhz36xMcdDz9AbYmQUFaQb3H+F9xlAXm9k+MqNZ/jW86
 XVv12urVwztfBdj60DEjtdmDlT02Emv0R3OjCjYqXy9QGjeWKJmkLfQB0jdYR5to7sBj
 tVCtaPF8MBTC264J3YUlJksWm3QCaRVa5rSsw2wOh1VvA5YHlk8dYKapMA5hToR97i2H
 bYRfQlfqtGxeX4F2B7/t7jjhwaRkK7pkHd3lKgojEnIQjKYVOrZyxRTXc52o5GZR7VwE
 LJdr/Wa+b6hZRSRenjGMjHQJtZc9T+3ZMt8iNnQz1B5o4YH9fmY1J3BMqS4GTqV0YJ6H
 Qrzw==
X-Gm-Message-State: ANhLgQ2j9mMa+uVLrww3fy/YY3TltQDo7SWYw2Hk+Xd/d8gVwz2T9PlZ
 t6ijpPZnu8qVSjA+g5BgZEc=
X-Google-Smtp-Source: ADFU+vs9pI1mAxgl3tvz4bN8Xs/3CdA9/ra0K9Vpl/anYrOJ7YxLxsemoDStKeh6aSOqxqmImwvf9A==
X-Received: by 2002:a1c:e914:: with SMTP id q20mr1574940wmc.105.1584702087243; 
 Fri, 20 Mar 2020 04:01:27 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id e6sm7488584wrn.29.2020.03.20.04.01.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 20 Mar 2020 04:01:26 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/5] staging: mt7621-pci-phy: avoid to create to different
 phys for a dual port one
Date: Fri, 20 Mar 2020 12:01:19 +0100
Message-Id: <20200320110123.9907-2-sergio.paracuellos@gmail.com>
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

This soc has two phy's for the pcie one of them using just a different
register for settig it up but sharing all the rest of the config. Until
now we was presenting this schema as three different phy's in the device
tree using the 'phy-cells' node property to discriminate an index and
setting up a complete phy for the dual port index. This sometimes worked
properly but reconfiguring the same registers twice presents sometimes
some unstable pcie links and the ports was not properly being detected.
The problems only appears on hard resets and soft resets was properly
working. Instead of having this schema just set two phy's in the device
ree and use the 'phy-cells' property to say if the port has or not a dual
port. Doing this configuration and set up becomes easier, LOC is decreased 
and the behaviour also gets deterministic with properly and stable pcie
links in both hard and soft resets.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../staging/mt7621-pci-phy/pci-mt7621-phy.c   | 144 +++++++-----------
 1 file changed, 59 insertions(+), 85 deletions(-)

diff --git a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c b/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
index 648f0c8df003..63dfbb85af11 100644
--- a/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
+++ b/drivers/staging/mt7621-pci-phy/pci-mt7621-phy.c
@@ -77,32 +77,22 @@
 
 #define MAX_PHYS	2
 
-/**
- * struct mt7621_pci_phy_instance - Mt7621 Pcie PHY device
- * @phy: pointer to the kernel PHY device
- * @port_base: base register
- * @index: internal ID to identify the Mt7621 PCIe PHY
- */
-struct mt7621_pci_phy_instance {
-	struct phy *phy;
-	void __iomem *port_base;
-	u32 index;
-};
-
 /**
  * struct mt7621_pci_phy - Mt7621 Pcie PHY core
  * @dev: pointer to device
  * @regmap: kernel regmap pointer
- * @phys: pointer to Mt7621 PHY device
- * @nphys: number of PHY devices for this core
+ * @phy: pointer to the kernel PHY device
+ * @port_base: base register
+ * @has_dual_port: if the phy has dual ports.
  * @bypass_pipe_rst: mark if 'mt7621_bypass_pipe_rst'
  * needs to be executed. Depends on chip revision.
  */
 struct mt7621_pci_phy {
 	struct device *dev;
 	struct regmap *regmap;
-	struct mt7621_pci_phy_instance **phys;
-	int nphys;
+	struct phy *phy;
+	void __iomem *port_base;
+	bool has_dual_port;
 	bool bypass_pipe_rst;
 };
 
@@ -130,23 +120,23 @@ static inline void mt7621_phy_rmw(struct mt7621_pci_phy *phy,
 	phy_write(phy, val, reg);
 }
 
-static void mt7621_bypass_pipe_rst(struct mt7621_pci_phy *phy,
-				   struct mt7621_pci_phy_instance *instance)
+static void mt7621_bypass_pipe_rst(struct mt7621_pci_phy *phy)
 {
-	u32 offset = (instance->index != 1) ?
-		RG_PE1_PIPE_REG : RG_PE1_PIPE_REG + RG_P0_TO_P1_WIDTH;
-
-	mt7621_phy_rmw(phy, offset,
-		       RG_PE1_PIPE_RST | RG_PE1_PIPE_CMD_FRC,
-		       RG_PE1_PIPE_RST | RG_PE1_PIPE_CMD_FRC);
+	mt7621_phy_rmw(phy, RG_PE1_PIPE_REG, 0, RG_PE1_PIPE_RST);
+	mt7621_phy_rmw(phy, RG_PE1_PIPE_REG, 0, RG_PE1_PIPE_CMD_FRC);
+
+	if (phy->has_dual_port) {
+		mt7621_phy_rmw(phy, RG_PE1_PIPE_REG + RG_P0_TO_P1_WIDTH,
+			       0, RG_PE1_PIPE_RST);
+		mt7621_phy_rmw(phy, RG_PE1_PIPE_REG + RG_P0_TO_P1_WIDTH,
+			       0, RG_PE1_PIPE_CMD_FRC);
+	}
 }
 
-static void mt7621_set_phy_for_ssc(struct mt7621_pci_phy *phy,
-				   struct mt7621_pci_phy_instance *instance)
+static void mt7621_set_phy_for_ssc(struct mt7621_pci_phy *phy)
 {
 	struct device *dev = phy->dev;
 	u32 reg = rt_sysc_r32(SYSC_REG_SYSTEM_CONFIG0);
-	u32 offset;
 
 	reg = (reg >> 6) & 0x7;
 	/* Set PCIe Port PHY to disable SSC */
@@ -156,10 +146,13 @@ static void mt7621_set_phy_for_ssc(struct mt7621_pci_phy *phy,
 		       RG_PE1_FRC_H_XTAL_TYPE | RG_PE1_H_XTAL_TYPE_VAL(0x00));
 
 	/* disable port */
-	offset = (instance->index != 1) ?
-		RG_PE1_FRC_PHY_REG : RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH;
-	mt7621_phy_rmw(phy, offset,
-		       RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
+	mt7621_phy_rmw(phy, RG_PE1_FRC_PHY_REG,
+		       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
+
+	if (phy->has_dual_port) {
+		mt7621_phy_rmw(phy, RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH,
+			       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
+	}
 
 	if (reg <= 5 && reg >= 3) { /* 40MHz Xtal */
 		/* Set Pre-divider ratio (for host mode) */
@@ -223,43 +216,44 @@ static void mt7621_set_phy_for_ssc(struct mt7621_pci_phy *phy,
 
 static int mt7621_pci_phy_init(struct phy *phy)
 {
-	struct mt7621_pci_phy_instance *instance = phy_get_drvdata(phy);
-	struct mt7621_pci_phy *mphy = dev_get_drvdata(phy->dev.parent);
+	struct mt7621_pci_phy *mphy = phy_get_drvdata(phy);
 
 	if (mphy->bypass_pipe_rst)
-		mt7621_bypass_pipe_rst(mphy, instance);
+		mt7621_bypass_pipe_rst(mphy);
 
-	mt7621_set_phy_for_ssc(mphy, instance);
+	mt7621_set_phy_for_ssc(mphy);
 
 	return 0;
 }
 
 static int mt7621_pci_phy_power_on(struct phy *phy)
 {
-	struct mt7621_pci_phy_instance *instance = phy_get_drvdata(phy);
-	struct mt7621_pci_phy *mphy = dev_get_drvdata(phy->dev.parent);
-	u32 offset = (instance->index != 1) ?
-		RG_PE1_FRC_PHY_REG : RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH;
+	struct mt7621_pci_phy *mphy = phy_get_drvdata(phy);
 
 	/* Enable PHY and disable force mode */
-	mt7621_phy_rmw(mphy, offset,
-		       RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN,
-		       RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN);
+	mt7621_phy_rmw(mphy, RG_PE1_FRC_PHY_REG,
+		       RG_PE1_FRC_PHY_EN, RG_PE1_PHY_EN);
+
+	if (mphy->has_dual_port) {
+		mt7621_phy_rmw(mphy, RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH,
+			       RG_PE1_FRC_PHY_EN, RG_PE1_PHY_EN);
+	}
 
 	return 0;
 }
 
 static int mt7621_pci_phy_power_off(struct phy *phy)
 {
-	struct mt7621_pci_phy_instance *instance = phy_get_drvdata(phy);
-	struct mt7621_pci_phy *mphy = dev_get_drvdata(phy->dev.parent);
-	u32 offset = (instance->index != 1) ?
-		RG_PE1_FRC_PHY_REG : RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH;
+	struct mt7621_pci_phy *mphy = phy_get_drvdata(phy);
 
 	/* Disable PHY */
-	mt7621_phy_rmw(mphy, offset,
-		       RG_PE1_FRC_PHY_EN | RG_PE1_PHY_EN,
-		       RG_PE1_FRC_PHY_EN);
+	mt7621_phy_rmw(mphy, RG_PE1_FRC_PHY_REG,
+		       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
+
+	if (mphy->has_dual_port) {
+		mt7621_phy_rmw(mphy, RG_PE1_FRC_PHY_REG + RG_P0_TO_P1_WIDTH,
+			       RG_PE1_PHY_EN, RG_PE1_FRC_PHY_EN);
+	}
 
 	return 0;
 }
@@ -282,13 +276,15 @@ static struct phy *mt7621_pcie_phy_of_xlate(struct device *dev,
 {
 	struct mt7621_pci_phy *mt7621_phy = dev_get_drvdata(dev);
 
-	if (args->args_count == 0)
-		return mt7621_phy->phys[0]->phy;
-
 	if (WARN_ON(args->args[0] >= MAX_PHYS))
 		return ERR_PTR(-ENODEV);
 
-	return mt7621_phy->phys[args->args[0]]->phy;
+	mt7621_phy->has_dual_port = args->args[0];
+
+	dev_info(dev, "PHY for 0x%08x (dual port = %d)\n",
+		 (unsigned int)mt7621_phy->port_base, mt7621_phy->has_dual_port);
+
+	return mt7621_phy->phy;
 }
 
 static const struct soc_device_attribute mt7621_pci_quirks_match[] = {
@@ -309,19 +305,11 @@ static int mt7621_pci_phy_probe(struct platform_device *pdev)
 	struct phy_provider *provider;
 	struct mt7621_pci_phy *phy;
 	struct resource *res;
-	int port;
-	void __iomem *port_base;
 
 	phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
 	if (!phy)
 		return -ENOMEM;
 
-	phy->nphys = MAX_PHYS;
-	phy->phys = devm_kcalloc(dev, phy->nphys,
-				 sizeof(*phy->phys), GFP_KERNEL);
-	if (!phy->phys)
-		return -ENOMEM;
-
 	attr = soc_device_match(mt7621_pci_quirks_match);
 	if (attr)
 		phy->bypass_pipe_rst = true;
@@ -335,39 +323,25 @@ static int mt7621_pci_phy_probe(struct platform_device *pdev)
 		return -ENXIO;
 	}
 
-	port_base = devm_ioremap_resource(dev, res);
-	if (IS_ERR(port_base)) {
+	phy->port_base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(phy->port_base)) {
 		dev_err(dev, "failed to remap phy regs\n");
-		return PTR_ERR(port_base);
+		return PTR_ERR(phy->port_base);
 	}
 
-	phy->regmap = devm_regmap_init_mmio(phy->dev, port_base,
+	phy->regmap = devm_regmap_init_mmio(phy->dev, phy->port_base,
 					    &mt7621_pci_phy_regmap_config);
 	if (IS_ERR(phy->regmap))
 		return PTR_ERR(phy->regmap);
 
-	for (port = 0; port < MAX_PHYS; port++) {
-		struct mt7621_pci_phy_instance *instance;
-		struct phy *pphy;
-
-		instance = devm_kzalloc(dev, sizeof(*instance), GFP_KERNEL);
-		if (!instance)
-			return -ENOMEM;
-
-		phy->phys[port] = instance;
-
-		pphy = devm_phy_create(dev, dev->of_node, &mt7621_pci_phy_ops);
-		if (IS_ERR(phy)) {
-			dev_err(dev, "failed to create phy\n");
-			return PTR_ERR(phy);
-		}
-
-		instance->port_base = port_base;
-		instance->phy = pphy;
-		instance->index = port;
-		phy_set_drvdata(pphy, instance);
+	phy->phy = devm_phy_create(dev, dev->of_node, &mt7621_pci_phy_ops);
+	if (IS_ERR(phy)) {
+		dev_err(dev, "failed to create phy\n");
+		return PTR_ERR(phy);
 	}
 
+	phy_set_drvdata(phy->phy, phy);
+
 	provider = devm_of_phy_provider_register(dev, mt7621_pcie_phy_of_xlate);
 
 	return PTR_ERR_OR_ZERO(provider);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
