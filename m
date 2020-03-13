Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E97B4184FEE
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 21:09:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 2B1CA8657C;
	Fri, 13 Mar 2020 20:09:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L2ayIHTEy3io; Fri, 13 Mar 2020 20:09:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id AAB4B864E0;
	Fri, 13 Mar 2020 20:09:25 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 686901BF2C2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6328589811
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VsCD25yfJM-y
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1B1FB89805
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:22 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id r7so8592750wmg.0
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 13:09:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9Was5VHBSYy7tzsJhAW6/Uo5k1C3lF1au4du08mpM34=;
 b=PKKOYASQjFnDzS/A4QV63JxtQYaUhwBmb5g0kQ0KlzfX7W7urRUB4UAGNpvyVLC8Pn
 Xy7A3ZH2sDYL0D2FEjEa6MBW7AbBRPSeOUx4M3pX8aRwi3Cqkb5fcoOjLwRwHmEYmqGQ
 gc1qfC1/cDvbmm3AsTeolCFV69tfY+Uhi2wd395TEBKSB+zM8rcM+tgmHtzAZUmUIHml
 RGYYGXREj6dsOUXL1MJHdcvGHkPJig5V0kv8KGFfE8UzhMdTrAbumneL1MDXP86a3ql5
 biD/p/FwWoaAk/iU3JeaY/zPjr8bQHpbraiM8pWxk4I1/vjshKb7AbBJamSNEycSUBd+
 c/Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9Was5VHBSYy7tzsJhAW6/Uo5k1C3lF1au4du08mpM34=;
 b=fTG79ixe7FuccdfXuWEkw6oB0MjIiNOMANOUDhjFdeC/JdbNowx5w+QTgYtqWBq23y
 prFxtFe+3HOevLXjhevMbadPjWGq+4/WJ92Zay0kHA2dMTL63Dy6s6ZM8pcihrGOf2g5
 UQ7QOGZZIrkfHQmYtZEJoTzhh4OkkPWi2oea9bZop0JKTQvbn8v72/ccfZ+tEgnpuoEd
 N71hndIf3D8sSzsoNF7fXql1EAVtGJVLQ+lMdqLvvlHwFdyAxhGdb5sGiEUtfmrv1H0G
 uzlXqbo8K1kuAxsdYN9C2jks2M+YsOXHT7J/XcOQmfr+f9Zmei21dfuWZp7IU67seq8D
 uX2Q==
X-Gm-Message-State: ANhLgQ2m+hv+jzDAGdemgbqvVc/dLsg92YoV+V03f+P4d57wW6hNqk7D
 KGAaR9BN8YD9nrsbNj8mIbg=
X-Google-Smtp-Source: ADFU+vtnfxaV+c78q8HQxi44LaxnqK3Wt16Fpc2mPmSgsPhZDhwS94TqU3LnaVXsKKaT7v09hfh70A==
X-Received: by 2002:a1c:7c08:: with SMTP id x8mr12173294wmc.84.1584130160506; 
 Fri, 13 Mar 2020 13:09:20 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id b187sm2249422wmc.14.2020.03.13.13.09.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 13 Mar 2020 13:09:20 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v4 3/6] staging: mt7621-dts: make use of 'reset-gpios'
 property for pci
Date: Fri, 13 Mar 2020 21:09:10 +0100
Message-Id: <20200313200913.24321-4-sergio.paracuellos@gmail.com>
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
