Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB8A2E980E
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Jan 2021 16:07:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 96204860E0;
	Mon,  4 Jan 2021 15:06:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o-C07rlrDiSi; Mon,  4 Jan 2021 15:06:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7021A85785;
	Mon,  4 Jan 2021 15:06:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 45EF71BF385
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 15:06:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 40D6C85657
 for <devel@linuxdriverproject.org>; Mon,  4 Jan 2021 15:06:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MVS_i5wDDjDc for <devel@linuxdriverproject.org>;
 Mon,  4 Jan 2021 15:06:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com
 [209.85.128.46])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6759785785
 for <devel@driverdev.osuosl.org>; Mon,  4 Jan 2021 15:06:55 +0000 (UTC)
Received: by mail-wm1-f46.google.com with SMTP id g185so19632429wmf.3
 for <devel@driverdev.osuosl.org>; Mon, 04 Jan 2021 07:06:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=u16IIXrGx9IaBElFRHmezv8TmeheFCyUqI/uHbKGhdA=;
 b=UoGmeEl8pQXGyZllwJc6XzKDnn2Qg+p1W6BJPmu3GoBjLqreCOPwl7D7YNTT7Y9ToU
 pYMgRosfMiadao1lW/0JZD42ztaRlpWDLYYRI0CXGbX0dF9gAK1KG/pSY7FUuAAMl/A4
 bxL8QB1onvVaoka3QvVrhnNO/I0XClt+KN+Olss93FFw3xOEwtAjE/7FxRWJZAXRt+q9
 W2tkVWJlmgr8xbIKgp5eKWbAuLroECbWGt81y6/iSh+FV7t5oefxM4Ij+hiedyZoDCHg
 RD1q1q0eqcR/2W+4qIg/5TTW6HtjdYp/4pCaVi1k3s0NzGz41tKIqwDMZ7BGaLzU59w6
 iCtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=u16IIXrGx9IaBElFRHmezv8TmeheFCyUqI/uHbKGhdA=;
 b=KNxQ9ZYI/CO9BgkiGvp8ewtdRm4L/eiRyMPN7yFau+6kwDWMSN7cTSqOs1pfmTXzxy
 nEXHfgaHfExtNbR48H2qL3BWTSXRZjjAVYa3+VEiLeplNsBnKg9cV+XtG5Lk2KONZTkB
 ogOCS2F16AxgKiiKZ8TMNhqpa50NlELSqZZSShKBi+tsVEP3nIgbXlDYBn1Uz9Z4WPlP
 w0CiAwj5+sdqX1DKjJJ+oBDmjWaFi50jTDEXB2MwEDMChMOPHRYPiAYOaK7a20vcZJAi
 sEy46T1D8tzt1Ud9q07FxuwSHBpBr7JVFJ9R600RMz41cMP6vKEG9XLH7rtxVpizFfma
 CLXg==
X-Gm-Message-State: AOAM532qjKpw60BxVCs9c87x0Msvi8Kd44eoq+rCSqsEa8sXhqDjRdq7
 9uGU5ZCd7W+QQ6wzQgC+u8U=
X-Google-Smtp-Source: ABdhPJyxMIAoVQ9ANUlhRkhtNsNXnfrNuiwdHp9Fm6aqqV0h6wBpBLXttq/Qineh3cPRhB3TrNd+gQ==
X-Received: by 2002:a1c:7f8c:: with SMTP id
 a134mr27558254wmd.184.1609772813990; 
 Mon, 04 Jan 2021 07:06:53 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id n11sm78990139wra.9.2021.01.04.07.06.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 04 Jan 2021 07:06:53 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-dts: match pinctrl nodes with its binding
 documentation
Date: Mon,  4 Jan 2021 16:06:51 +0100
Message-Id: <20210104150651.32083-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, neil@brown.name, linus.walleij@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

According to the binding documentation pinctrl related nodes
must use '-pins$' and ''^(.*-)?pinmux$'' as names. Change all
to properly match them. Also default state is for consumer
nodes and shall be removed from here.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-dts/mt7621.dtsi | 51 ++++++++++++--------------
 1 file changed, 23 insertions(+), 28 deletions(-)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index 5b9d3bf82cb1..40dcf13521e7 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -222,89 +222,84 @@ hsdma: hsdma@7000 {
 
 	pinctrl: pinctrl {
 		compatible = "ralink,rt2880-pinmux";
-		pinctrl-names = "default";
-		pinctrl-0 = <&state_default>;
-
-		state_default: pinctrl0 {
-		};
 
-		i2c_pins: i2c0 {
-			i2c0 {
+		i2c_pins: i2c0-pins {
+			pinmux {
 				groups = "i2c";
 				function = "i2c";
 			};
 		};
 
-		spi_pins: spi0 {
-			spi0 {
+		spi_pins: spi0-pins {
+			pinmux {
 				groups = "spi";
 				function = "spi";
 			};
 		};
 
-		uart1_pins: uart1 {
-			uart1 {
+		uart1_pins: uart1-pins {
+			pinmux {
 				groups = "uart1";
 				function = "uart1";
 			};
 		};
 
-		uart2_pins: uart2 {
-			uart2 {
+		uart2_pins: uart2-pins {
+			pinmux {
 				groups = "uart2";
 				function = "uart2";
 			};
 		};
 
-		uart3_pins: uart3 {
-			uart3 {
+		uart3_pins: uart3-pins {
+			pinmux {
 				groups = "uart3";
 				function = "uart3";
 			};
 		};
 
-		rgmii1_pins: rgmii1 {
-			rgmii1 {
+		rgmii1_pins: rgmii1-pins {
+			pinmux {
 				groups = "rgmii1";
 				function = "rgmii1";
 			};
 		};
 
-		rgmii2_pins: rgmii2 {
-			rgmii2 {
+		rgmii2_pins: rgmii2-pins {
+			pinmux {
 				groups = "rgmii2";
 				function = "rgmii2";
 			};
 		};
 
-		mdio_pins: mdio0 {
-			mdio0 {
+		mdio_pins: mdio0-pins {
+			pinmux {
 				groups = "mdio";
 				function = "mdio";
 			};
 		};
 
-		pcie_pins: pcie0 {
-			pcie0 {
+		pcie_pins: pcie0-pins {
+			pinmux {
 				groups = "pcie";
 				function = "gpio";
 			};
 		};
 
-		nand_pins: nand0 {
-			spi-nand {
+		nand_pins: nand0-pins {
+			spi-pinmux {
 				groups = "spi";
 				function = "nand1";
 			};
 
-			sdhci-nand {
+			sdhci-pinmux {
 				groups = "sdhci";
 				function = "nand2";
 			};
 		};
 
-		sdhci_pins: sdhci0 {
-			sdhci0 {
+		sdhci_pins: sdhci0-pins {
+			pinmux {
 				groups = "sdhci";
 				function = "sdhci";
 			};
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
