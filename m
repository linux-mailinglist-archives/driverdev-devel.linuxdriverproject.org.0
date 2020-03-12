Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D0A182BBB
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Mar 2020 10:01:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5B92A2660F;
	Thu, 12 Mar 2020 09:01:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MZCx7nMXOJbe; Thu, 12 Mar 2020 09:01:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 97C4A231CB;
	Thu, 12 Mar 2020 09:01:03 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8E6C41BF332
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4982689351
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QoQdNsDXnN77
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com
 [209.85.208.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2A129892B6
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 09:00:58 +0000 (UTC)
Received: by mail-ed1-f67.google.com with SMTP id z65so6493024ede.0
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 12 Mar 2020 02:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WeUhMBBaN3F2NEPM7PNYjW5fn3JSXPi9Sz2wpn2Z5jo=;
 b=NwvFM2jYcSiRsRDG0cH7VB5hsPBAB6paYNguQ2VsghlH27jiOqJn/yB1zudA0aoxCq
 k7N/6VKGB+jtwxgJ0+6k6csSNwGik3wVtrOM4ZmWHBoz3sT/mCpMA7CBdz1eJcWgwUse
 viClkOi0qq0UJfRJb4BcGYcavlv0m4d6ay2p0PZZbn3VPix/vCiFlIke10qtpMltMkFM
 SRMhzAo/61kf34JXLssuj191JEBFzTwLKBLQc66NkmWIHDArWG2+6lfac5v0/E3YxxDO
 2ozG7n8HaEA16Ezy8DbLBu42b4MCh8AOhUfHc5HBsVG96leCy3fnMVH/DwWBHNBvA3R0
 Bi1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WeUhMBBaN3F2NEPM7PNYjW5fn3JSXPi9Sz2wpn2Z5jo=;
 b=D3Uv0IFxzM24V/gQ+1I5QABSlZY1H/Ss8/UpEe9BrI6ZjekltiKtuVDxUCEY7SqcPI
 Xn7jJKXrm8pNxF4wMWmaj4UrjGub/Gg29+BQJRUpvnz/XvYC/4SChjFhoVGcX+fx/ylp
 Tmn1AhuQfjzJonCbg3WeUCGWX+QVsuGlA/NvBSGj1VZIIRvHXAqqY0jl8fDFvTBLrJox
 PVdFmJyVA+76nyxJuZRyJt7XSeo68AGqYuzC0vgEO3kCrB9etcI0Ivrgrl8Nbmcu3mod
 G3zZ4sqg5piSxepabD+DjyEw2oM7WcNq9IfTSlK4XlFwWW4rWqXVrJ9iOob6K6Xjzi4a
 zY3w==
X-Gm-Message-State: ANhLgQ3whPpbac9ajpYI/POmSOrbYyQtFJnJWcQxv0Y1uyn+UQUpe2+L
 9tXFIUpd/iZQsYtZGG+x3tQ=
X-Google-Smtp-Source: ADFU+vtKkJ8+kOUqiKtxdWo/+yvWaCzt3i2lszkLcC9AzynAPv//+Nk5Rd3Ip4Cb3WcXilKz5itSkg==
X-Received: by 2002:a17:906:bcfc:: with SMTP id
 op28mr5932489ejb.290.1584003656220; 
 Thu, 12 Mar 2020 02:00:56 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id p24sm1132711edx.34.2020.03.12.02.00.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 12 Mar 2020 02:00:55 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 4/5] staging: mt7621-pci: bindings: update doc accordly to
 last changes
Date: Thu, 12 Mar 2020 10:00:45 +0100
Message-Id: <20200312090046.26869-5-sergio.paracuellos@gmail.com>
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
