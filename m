Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 158601814C7
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 10:27:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C744787FF1;
	Wed, 11 Mar 2020 09:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zb-wRv8DkTDz; Wed, 11 Mar 2020 09:27:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 59BDB87E8E;
	Wed, 11 Mar 2020 09:27:20 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CBCA41BF5DB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C8C4388072
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PyY3ENRCb7U5
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 9A29587F48
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:16 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id e26so1237022wme.5
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 02:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9Was5VHBSYy7tzsJhAW6/Uo5k1C3lF1au4du08mpM34=;
 b=GCYekQXnzX8mLkZDcQk0edRD5EhCzB4n7TxrH015jvPcTSaFGrr0GSW4r6Ng4Fg9xq
 h9rorpZSvdbiUD7x5/rVLGt6eiR94g7rfr7XmybfMIxcSabgMd4QzSrHPdgMXCTLcGv0
 a6v0cadgcpo4RVftFszTZ906BLfFD96Sb2sAjUTLk32O1RIT39d0kUH9jBXFIrkuQ0eB
 p+XSiQZEoPRYW3vhMpX2Q2+d6rBbXWC4recY0Xnp98rmNNAvWbMkjPyU2SfCUj1PKqiz
 2bw9x6+QEkvmyy4kk54diWvPuwuvdH+OrIvMwP+OciughXDa1rcKqnLz8E7wSOOhK9fi
 XyxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9Was5VHBSYy7tzsJhAW6/Uo5k1C3lF1au4du08mpM34=;
 b=UGT8gs5iPfJwZrwxPFUFvU02WKK45Vy6vmKJsodLOCSMfyQQDfd3wB2xxtIRUcccji
 U+05s9d/TQzPJByj0RVuRZCUk0Ibq+ec7bvZSDlYfGGuVs9NFIa+UhW6NUlKBMUJ+MOf
 70vl5GsWb3eMRu4a8idtjOs1I5N2EksN5oZ6/TQerKh+S9gdYV/DegVAo1BJfE5gTPJv
 kt2lyz/eE8S4KW2cq35GnuluwrvhF+/8BFuHihP0Z+iwlssiun+nQlLzHZghGwS+VNZE
 JbRhkIDoAQt05fMdJ9YKr8Y1XlKsXMgCG/Ra3iAnk1Q0qWV+YD2/WcBKPFert3N+sv60
 cVFg==
X-Gm-Message-State: ANhLgQ08rplWJm7BJ49lwGYsPKU8vkO6tThfZwESdjVncUezCszYo7me
 jUtP1gEYZT6JtDQ2g0mndmg=
X-Google-Smtp-Source: ADFU+vuYuc79Te/CE1YX146B1WriJ1wAOQ/lbD+9UlYhkKKUIU2APm3dB2xbCHmRgpHPqTtd3Ok0Ww==
X-Received: by 2002:a1c:9dc6:: with SMTP id g189mr2933046wme.91.1583918834953; 
 Wed, 11 Mar 2020 02:27:14 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id v14sm33075156wrr.34.2020.03.11.02.27.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 11 Mar 2020 02:27:14 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/5] staging: mt7621-dts: make use of 'reset-gpios' property
 for pci
Date: Wed, 11 Mar 2020 10:27:06 +0100
Message-Id: <20200311092707.23454-5-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311092707.23454-1-sergio.paracuellos@gmail.com>
References: <20200311092707.23454-1-sergio.paracuellos@gmail.com>
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
