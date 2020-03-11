Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DA36F18215D
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 19:58:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7784688A66;
	Wed, 11 Mar 2020 18:58:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UADsJ1CxvG+2; Wed, 11 Mar 2020 18:58:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6BF5788A6A;
	Wed, 11 Mar 2020 18:58:21 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B292D1BF400
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AF72E8927D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CPS0U3pgMwQw
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D4CDB89228
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:16 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id a5so3300972wmb.0
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 11:58:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9Was5VHBSYy7tzsJhAW6/Uo5k1C3lF1au4du08mpM34=;
 b=Jf4Sick3vdtkTULhPSFx/Uw6GPF0BjKP6N3kxRe4jx4bXFaLH5uc76NwjB4T7ZWr8u
 9jK2zKA6WA/KAuXiBAU/ryWztmoK+LmYpKN+HP1vCn7Bnw6v1d1zDMlLOG82QDTgPmQO
 EMyo2CrvCRCyRGrlxHJhj4FUuvu7npuQYTzXDVLR5CCV2RdPlMplWfiTwev034heTHya
 7AhL8+4Om+sNepMpKIs+V+YZiWWquO/jfPG0zAC+lUMG4SBFqRP2bEDqwZdtsAzgz3r/
 1TTCQQbKOuzrEEqUfYNvv9cc8CN5bO+a8IOvHbsVhq2o4vfT6M9qY1ubamkIYdPFtwS5
 COqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9Was5VHBSYy7tzsJhAW6/Uo5k1C3lF1au4du08mpM34=;
 b=TOpFkBDr9sMOJHN1xKY2wF+pcHDmVfTbjoOky5tx9eZgKH1XuvryxYRPuqYcZRru5W
 inWZcBjgaw90xCcgSYrTmzfOMihb0IKq1xXYTSl1MycT5wLoG00gy0fmlFBH5S/QqCKF
 0Qe6fmKZKBihwkw5vELSPRN/x8iFEvkbDU3vCemCoJHtZbtsLMu7K8dH+I8dt9HfmGq9
 mtHk1hOGRQNHgGxJqD5z9giJ6u+AsmdTd2rR3d747vpvZ2vELoQrQh9HExIaQS5xpdDu
 5Y8A9UmTklQtggxGnLcIeixom0i3Q7jQpZDFCREsvV+UjZz6d20KryHbMZRn6L323JBX
 PmcA==
X-Gm-Message-State: ANhLgQ0aXHkJNiQZnQ6GtP66pnajHrAtnNAnG51QB3IIpFSy6CocKwuf
 Vr9XxVndltydOsH+QmJLZeI=
X-Google-Smtp-Source: ADFU+vv9pxjbxvJ2PbStF8Xx6XeekBD6wn8rpt5g0OP7bbNnW+cr3v7NcwjY/eqPo5KCm6Z0r7pYeA==
X-Received: by 2002:a1c:f606:: with SMTP id w6mr139777wmc.109.1583953095429;
 Wed, 11 Mar 2020 11:58:15 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id n11sm38457120wrw.11.2020.03.11.11.58.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 11 Mar 2020 11:58:14 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 3/5] staging: mt7621-dts: make use of 'reset-gpios'
 property for pci
Date: Wed, 11 Mar 2020 19:58:06 +0100
Message-Id: <20200311185808.29166-4-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311185808.29166-1-sergio.paracuellos@gmail.com>
References: <20200311185808.29166-1-sergio.paracuellos@gmail.com>
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
