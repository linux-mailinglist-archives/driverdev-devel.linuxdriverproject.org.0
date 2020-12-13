Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 030D82D8E9E
	for <lists+driverdev-devel@lfdr.de>; Sun, 13 Dec 2020 17:17:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 88AEA8740A;
	Sun, 13 Dec 2020 16:17:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KwlINft6Adgl; Sun, 13 Dec 2020 16:17:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1B4AF871D4;
	Sun, 13 Dec 2020 16:17:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A24D1BF3EA
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:17:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 06E0A85D94
 for <devel@linuxdriverproject.org>; Sun, 13 Dec 2020 16:17:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id py9ooMf9CTez for <devel@linuxdriverproject.org>;
 Sun, 13 Dec 2020 16:17:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 437AE85E28
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 16:17:34 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id r7so13981579wrc.5
 for <devel@driverdev.osuosl.org>; Sun, 13 Dec 2020 08:17:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X/SjzDMsmOBxksRB2/nR67BPPBDrp7yLu8jvVQSPdRA=;
 b=RA9YPVDPP+Hlea2+CoCov3pCGvBJPPAI//vWwsri9yIDoXMxCPFwqlm6aDUA2tO5C2
 bbs/pBFtoOssukMSlk+7pNsbfJJEnm8M2sC0hWQs3hFZGgb5GTq3rlSIvtcp/dg+oo1G
 lchDa25ZOzl5UcvMKgN6pSH4FkRYFQER+22/5YbSv/PtsN4qAHnezkQHLWsEaOO8McL/
 CEHY0YkOqBdy9bBZMNVBFK6VthIvIC8paW39UGvpmOJVE1WOrgKrE8ZGuqdZTwFeyfXN
 um/36355ECTDo1cnex8yxgAPttwXkzCmXrLAHG7xZoIg8PBNJ0W7AP+rJkinQO5Nl7kh
 5iMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X/SjzDMsmOBxksRB2/nR67BPPBDrp7yLu8jvVQSPdRA=;
 b=i8LtI3tXTuSczn6fHXbj8IIdnwcjhBYtwNAgwb4JyIXe/bfY6GK4h2HQZf46lam1Ny
 mhxtshNr725Hw5N9DOGaRJABtWVDfFiYXFNeTgp/i69zdx9m4BrJ4mThxMTW9ZD86Cdq
 pwQEDRJC5TmcLAQ+B+CWoQFXdNHXYz7paCVGOIRJIfNe+llxctTUq6q6dEcXn2ckRgaZ
 KMJXhojKspnS+RovX5te+5hsLB0iZmzTTCbM9dh60l+QJ4GBaA6sE3K/92vS3pg/vBI/
 rj6KHq44vn4iuCJhqkYGlj7zQosQpcHklK1gRnAPL8GTo3gW0kuL8TF5UlkztrI5+Q43
 CKGA==
X-Gm-Message-State: AOAM532exDY0428w+O6fVJcnn2qZyq2+jCYwK6ackGN6Hhb4mJtV8izT
 1bEBAiZvt4riszv1JgupIj8=
X-Google-Smtp-Source: ABdhPJyJqmj0HNzc2fwOmoYbmupN0wZjJVWhHfjcFkpjkCTKKiJrRTgN6MXYcDkwVAPecugXOEcpeg==
X-Received: by 2002:a5d:5704:: with SMTP id a4mr13108334wrv.37.1607876252873; 
 Sun, 13 Dec 2020 08:17:32 -0800 (PST)
Received: from localhost.localdomain (188.red-81-44-87.dynamicip.rima-tde.net.
 [81.44.87.188])
 by smtp.gmail.com with ESMTPSA id 64sm27102073wmd.12.2020.12.13.08.17.31
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 13 Dec 2020 08:17:32 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: linus.walleij@linaro.org
Subject: [PATCH 8/8] staging: mt7621-dts: properly name pinctrl related nodes
Date: Sun, 13 Dec 2020 17:17:21 +0100
Message-Id: <20201213161721.6514-9-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
References: <20201213161721.6514-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org, yanaijie@huawei.com,
 gregkh@linuxfoundation.org, linux-gpio@vger.kernel.org, robh+dt@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

According to the binding documentation pinctrl related nodes
must use '-pins$' and ''^(.*-)?pinmux$'' as names. Change all
of them to properly match them.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-dts/mt7621.dtsi | 46 +++++++++++++-------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index 5b9d3bf82cb1..f05b7dec703b 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -228,83 +228,83 @@ pinctrl: pinctrl {
 		state_default: pinctrl0 {
 		};
 
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
