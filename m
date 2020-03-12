Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEBD182BBA
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 10:01:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1CC3F265F5;
	Thu, 12 Mar 2020 09:01:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Pkqx92bAv6a2; Thu, 12 Mar 2020 09:01:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CB7822612E;
	Thu, 12 Mar 2020 09:01:00 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7EDAF1BF332
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 7AC1988544
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O5NYFkQj-Ok8
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 895048773D
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:56 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id h5so6462360edn.5
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 02:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9Was5VHBSYy7tzsJhAW6/Uo5k1C3lF1au4du08mpM34=;
 b=Pn7H4YrG3fGNAjaW1EJsJkSEw8XO3kLiEddmAbE5C1aEoWMkbmGJuuVK17qdJsF0IA
 TOIabQAxz8Y7Vv3ZfYySYq+Cvm73rQxaP460C1Etrp0UlupghSdabbQAX37Q2gvFU6zc
 uj43ChSFwnrVjSK1kl/pyc1xos+ud1510kvC0CBiN2agAWgwlPSXlc+X/kGZapgxbhos
 rxbHt1ElZqNlmDsVxJjQRIsK+nClfPJlMpcVvdSuU8pYJKfOkxq2BjvjW0x1bzK/dmDS
 rVzqBeQZgbsLQmbxcaYrT90kdsSTkN/szoqwvqk5Dz7ZG6HX1MPxvpGir/Zl3DISgD1A
 dYgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9Was5VHBSYy7tzsJhAW6/Uo5k1C3lF1au4du08mpM34=;
 b=iPrziEz9jZCXXhvirg7iPIWGV70lsjNuoMES/s84fUB5lbl//2b70RldLVfbeYNDHu
 FdPP11KymVNsrcM11pZdovaPtUPTfpB/bOmerQKCXInfUduFUrN8J4/lxWNaa3g5+ldR
 0SlX7k06oho7/kNeZPeDiLjQVqwwjJD242gl+7slaAXLFFiPl0srkD76gb3Agq9/VIAi
 ilsDib7ZO0zlWi7CSWA4gxDS8RFT/Nu+2/Dn+k/OqfceCXYQNVlTy5NVxF50Ms2Xaws4
 kI5CN96xGkGcfW0aAHcXxq+ZDvd3oUBlIx+n4xoI/zpTZJM6IyEsgdDsqmh75i2piJKs
 gQBg==
X-Gm-Message-State: ANhLgQ0/njTgjIk7gcB0AK/1UHWzcz+3gRR4sJYA6WVueXvUaCVeuNAz
 wv/s+uQHbGFB8ICPVbbj0Pk=
X-Google-Smtp-Source: ADFU+vunwxZRiQanQyW/eQ1Otc8YVIa+MwZdrezAAMdBx0oWe06IOB6wtWbt4MeNelmhhF2YOsdhhw==
X-Received: by 2002:a17:906:715:: with SMTP id
 y21mr5889073ejb.211.1584003654888; 
 Thu, 12 Mar 2020 02:00:54 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id p24sm1132711edx.34.2020.03.12.02.00.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 12 Mar 2020 02:00:53 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 3/5] staging: mt7621-dts: make use of 'reset-gpios'
 property for pci
Date: Thu, 12 Mar 2020 10:00:44 +0100
Message-Id: <20200312090046.26869-4-sergio.paracuellos@gmail.com>
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

Properly set pins for group pcie as 'gpio' function and declare
gpio's in the pci node to make reset stuff properly functional.
Delete no more needed general reset and previous pers gpio which
is now being used in 'reset-gpios' property.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-dts/mt7621.dtsi | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index d89d68ffa7bc..488474153535 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -286,7 +286,7 @@ mdio0 {
 		pcie_pins: pcie0 {
 			pcie0 {
 				groups = "pcie";
-				function = "pcie rst";
+				function = "gpio";
 			};
 		};
 
@@ -512,7 +512,6 @@ pcie: pcie@1e140000 {
 		#address-cells = <3>;
 		#size-cells = <2>;
 
-		perst-gpio = <&gpio 19 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pcie_pins>;
 
@@ -532,13 +531,17 @@ pcie: pcie@1e140000 {
 
 		status = "disabled";
 
-		resets = <&rstctrl 23 &rstctrl 24 &rstctrl 25 &rstctrl 26>;
-		reset-names = "pcie", "pcie0", "pcie1", "pcie2";
+		resets = <&rstctrl 24 &rstctrl 25 &rstctrl 26>;
+		reset-names = "pcie0", "pcie1", "pcie2";
 		clocks = <&clkctrl 24 &clkctrl 25 &clkctrl 26>;
 		clock-names = "pcie0", "pcie1", "pcie2";
 		phys = <&pcie0_phy 0>, <&pcie0_phy 1>, <&pcie1_phy 0>;
 		phy-names = "pcie-phy0", "pcie-phy1", "pcie-phy2";
 
+		reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>,
+				<&gpio 8 GPIO_ACTIVE_LOW>,
+				<&gpio 7 GPIO_ACTIVE_LOW>;
+
 		pcie@0,0 {
 			reg = <0x0000 0 0 0 0>;
 			#address-cells = <3>;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
