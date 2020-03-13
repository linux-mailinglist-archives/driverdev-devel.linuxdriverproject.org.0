Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B1772184FEF
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Mar 2020 21:09:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id AA36629DD7;
	Fri, 13 Mar 2020 20:09:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xq+u807MaYt3; Fri, 13 Mar 2020 20:09:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3E81129CA6;
	Fri, 13 Mar 2020 20:09:27 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3BAEC1BF2C2
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3629D89811
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xkg8VwaluAXD
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 54DD18980C
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 20:09:23 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id a132so11289383wme.1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Mar 2020 13:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WeUhMBBaN3F2NEPM7PNYjW5fn3JSXPi9Sz2wpn2Z5jo=;
 b=Oy/q9kuoF2RCWRCE1s4aONO6vSlLVpXBuvzL/qgMFzgmtk+pwCXtXk+Bgs3oaR1D6s
 Vmdh8MhENscYbwk3oHf6RDZwjfCqPVK1X6CJrDQ8SHC1ZmwjpYb0WGkfE8xTxQGvSxQt
 LWfpDNLHwKTpPoNaaX3MwwUoKf8ewzmuFmcrb9tuzjMbDmFyj6wDR3T+nEmp1xt6sBt/
 zhaQSy+/XEpLa9IA+cU6lXvO31WazGbA431wnLGz/wcKGWnjnWYufhZC8Op6mhptXkKw
 Win/FtrFMAxQuyiSJB/uvPokHwd3dktUsVg3IbIhhFQMhgSsfTN30HnzrbJL7Rf4r+7c
 E/Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WeUhMBBaN3F2NEPM7PNYjW5fn3JSXPi9Sz2wpn2Z5jo=;
 b=sI3ZfiuTRRjRPQOdxZKCrE/sahiLrP8pwHUXfT3hvD2kk6ef+zAgHy/MzJ5ZIfbiBH
 9EGESiDbv+0W4fpwsLFFUlV00BqaabvbAzeFcDhIRYkfrJwHJ3y4UUDxqlND1DJrFgz6
 70LIlq7wSpmREGUGz2sR8tgAY223RafwyR7qjzMB/H8zDlnCWi7vX+pWMEpYHaiqaqV+
 tuKCvoBoJjAWZz2sYUdnMsSSCC/ZOvxR35D89o7KsQoLYlZbb3Lr7/KvNOrPudBjhlBW
 119FNxjvff1nVuRuGSrHpWQp7DcP0b/fskBsU7q0c4GC4B5rCJEmlehKnb5kCWmTTs/L
 hKtQ==
X-Gm-Message-State: ANhLgQ0jJQ0sdQdazEi95X2zLqHoAeYa2fFCYX8avUZo94IokR8Knv5X
 qmIl+aMC7CzrMye5XvUdxRQ=
X-Google-Smtp-Source: ADFU+vth1z9QGYu7caXQpKGSPxPwDZrJsTqCLGBpaKJ98o0ztd6Q+M6Ho4dSLGa31Hc8K2HLjz9UpA==
X-Received: by 2002:a7b:c30a:: with SMTP id k10mr12218790wmj.20.1584130161815; 
 Fri, 13 Mar 2020 13:09:21 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id b187sm2249422wmc.14.2020.03.13.13.09.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 13 Mar 2020 13:09:21 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v4 4/6] staging: mt7621-pci: bindings: update doc accordly to
 last changes
Date: Fri, 13 Mar 2020 21:09:11 +0100
Message-Id: <20200313200913.24321-5-sergio.paracuellos@gmail.com>
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

Properly update bindings documentation with added 'reset-gpios'
property. Delete also 'perst-gpio' which is not being used anymore.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 drivers/staging/mt7621-pci/mediatek,mt7621-pci.txt | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/mt7621-pci/mediatek,mt7621-pci.txt b/drivers/staging/mt7621-pci/mediatek,mt7621-pci.txt
index 604ec813bd45..327a68267309 100644
--- a/drivers/staging/mt7621-pci/mediatek,mt7621-pci.txt
+++ b/drivers/staging/mt7621-pci/mediatek,mt7621-pci.txt
@@ -6,7 +6,6 @@ Required properties:
 - reg: Base addresses and lengths of the PCIe subsys and root ports.
 - bus-range: Range of bus numbers associated with this controller.
 - #address-cells: Address representation for root ports (must be 3)
-- perst-gpio: PCIe reset signal line.
 - pinctrl-names : The pin control state names.
 - pinctrl-0: The "default" pinctrl state.
 - #size-cells: Size representation for root ports (must be 2)
@@ -24,6 +23,7 @@ Required properties:
   See ../clocks/clock-bindings.txt for details.
 - clock-names: Must be "pcie0", "pcie1", "pcieN"... based on the number of
   root ports.
+- reset-gpios: GPIO specs for the reset pins.
 
 In addition, the device tree node must have sub-nodes describing each PCIe port
 interface, having the following mandatory properties:
@@ -49,7 +49,6 @@ Example for MT7621:
 		#address-cells = <3>;
 		#size-cells = <2>;
 
-		perst-gpio = <&gpio 19 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pcie_pins>;
 
@@ -74,6 +73,10 @@ Example for MT7621:
 		clocks = <&clkctrl 24 &clkctrl 25 &clkctrl 26>;
 		clock-names = "pcie0", "pcie1", "pcie2";
 
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
