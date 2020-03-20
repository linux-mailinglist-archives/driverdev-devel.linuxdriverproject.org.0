Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DE18F18CC14
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Mar 2020 12:01:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DD5CD233B9;
	Fri, 20 Mar 2020 11:01:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rNLxvA24poTO; Fri, 20 Mar 2020 11:01:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 44DDE22773;
	Fri, 20 Mar 2020 11:01:36 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AD56C1BF9BD
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A3E7F87D6E
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mPWLP2beLbJy
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 043D887D69
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 11:01:30 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id 25so6008046wmk.3
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 20 Mar 2020 04:01:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nhQ1enZeLdeBG8lzirywPvlsxdKO3PWsjCbfkMl0nQ4=;
 b=PRDNLcaf6/WCS3z5B6cUulru4Om2vpgAQm2onK6SVUb8S93TgUKIBOTh82WBbb52Ji
 Fy8wKalxt1/Qd4qT6PDjnx4EYQOMv7V11IakfVBlXjHco4mkLvT8jYIklVw8JvodMi5f
 VYdzBR/8mMhZSFZo/CdXseW33SiMkhjhDEfMCrQcQee9gf5yr/J/F/YFBQm/LcGHhz/Y
 nCv57Fc6X0LClLQCeRAThhAxAYWiFzs82T8V3/ilEoNCiSaJb0huPIwHq1pFX5D5OSZe
 XcEhK/9KgwfJE2DF0obUjZY4Xa0fZW5XnkqA2qKTgcTu7wCE5+be1Tq0zEmFVojieV+e
 FSww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nhQ1enZeLdeBG8lzirywPvlsxdKO3PWsjCbfkMl0nQ4=;
 b=jMb4vrPX66PKWYezaqI6Vh8in4qBc4X2+jtoqTbcfbw176alCj1CoagEECFPQJFOdn
 0aPGaWaPNBD7uJ8gSuY06sRYjbit65ElIf02Ry+AsKUDBZr57hrQQjbk8l9x+bpTEpW6
 QUzAKtrOenYx7SQ2dYDOEZnBoaSdxI2eoiUU3QnZUQk0cL5Vdo3FnwGiTx8M3ukw2a0g
 B2tLkkr1E5Zd/ctgeEe3iKfR08XWLKqVo83ktHKkH+jH2oxgN0KDSwMdGqldBP/r4rgA
 6S8teHWu2D9Z53KzdWhBpWFE3AAaTTWZZltJaS7C08nNx29Z0STiZsgy3UwBsTLvktYE
 zC4A==
X-Gm-Message-State: ANhLgQ2tfdwPotUg1B7G9jXerc3wLtie0x5LWOruvorv/ZkUTQSnvmX8
 f7gAR8ABiw6ECwRtOkfTlJg=
X-Google-Smtp-Source: ADFU+vuykFuiCTTXWwdZRPHGv8msQFfqiga+rXjcwn1Ig0RzV7IQamadA87kny9NSazNNTUVVGJSdg==
X-Received: by 2002:a1c:7415:: with SMTP id p21mr9510458wmc.90.1584702088569; 
 Fri, 20 Mar 2020 04:01:28 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id e6sm7488584wrn.29.2020.03.20.04.01.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 20 Mar 2020 04:01:27 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/5] staging: mt7621-dts: set up only two pcie phys
Date: Fri, 20 Mar 2020 12:01:20 +0100
Message-Id: <20200320110123.9907-3-sergio.paracuellos@gmail.com>
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

This soc has only two real pcie phys one of them
having a different register to enable and disable it.
Change this to have only two dt nodes for the phys and
use 'phy-cells' properly to say if the phy has dual ports.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-dts/mt7621.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index 488474153535..10fb497cf81a 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -535,8 +535,8 @@ pcie: pcie@1e140000 {
 		reset-names = "pcie0", "pcie1", "pcie2";
 		clocks = <&clkctrl 24 &clkctrl 25 &clkctrl 26>;
 		clock-names = "pcie0", "pcie1", "pcie2";
-		phys = <&pcie0_phy 0>, <&pcie0_phy 1>, <&pcie1_phy 0>;
-		phy-names = "pcie-phy0", "pcie-phy1", "pcie-phy2";
+		phys = <&pcie0_phy 1>, <&pcie2_phy 0>;
+		phy-names = "pcie-phy0", "pcie-phy2";
 
 		reset-gpios = <&gpio 19 GPIO_ACTIVE_LOW>,
 				<&gpio 8 GPIO_ACTIVE_LOW>,
@@ -573,7 +573,7 @@ pcie0_phy: pcie-phy@1e149000 {
 		#phy-cells = <1>;
 	};
 
-	pcie1_phy: pcie-phy@1e14a000 {
+	pcie2_phy: pcie-phy@1e14a000 {
 		compatible = "mediatek,mt7621-pci-phy";
 		reg = <0x1e14a000 0x0700>;
 		#phy-cells = <1>;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
