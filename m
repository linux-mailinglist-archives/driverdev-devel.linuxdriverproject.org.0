Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 739DD18215C
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 19:58:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC89F893A1;
	Wed, 11 Mar 2020 18:58:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cng4tUdDolJh; Wed, 11 Mar 2020 18:58:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 48A858927D;
	Wed, 11 Mar 2020 18:58:24 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E8881BF400
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9B82D88A62
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2-S0mQELUzys
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3CAF688A5E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 18:58:18 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id m9so4026440wro.12
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 11:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WeUhMBBaN3F2NEPM7PNYjW5fn3JSXPi9Sz2wpn2Z5jo=;
 b=HxYFhGnRcQBr4pCgv7Tw/1Elo/cjcIjTZ/xiDF683px8oF7312eUYhQeB5l2zEaxUh
 EyYYWHv4xJnrp6OSI2qsyNbWqaFo6zKggQGFlS+XNAWF0syNSDomYIIf4qbq81CdrFLy
 4+F1254Lmnzb5CfxJTwkBHDQYhhVRzAvLxBaGDOtmuEQM86u8sGW2hD3RUwkuEcuWX7j
 QV8PLVmhSMYcRfiFJo4Eqizt81ri3pjR2uSSAu3b6/xt6LcfCktHbicJfGUqvsLHWIiu
 9mib56ZNRyq5lIS6ph9MEwMb1NJfAqpKCa2tZgyxQT72nI2GoXGvS5AWdIeaSwpj0eby
 BilQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WeUhMBBaN3F2NEPM7PNYjW5fn3JSXPi9Sz2wpn2Z5jo=;
 b=EUZYFEn2YApQ7vSF1SmhkaI4S63Iy0uRGXGCBKDPZkPNK5ylXt3bMj5XLeBuw4AK7o
 +BDN/JCmuHIpQQFvxAYpzbBaOvADcdiyFpcqVTxt7iFtKxa9YTS6h9blNApaQLMFJ43n
 0Tkkh1W8CRB4yICeD9DkLdbRPudMroz6PBbb9qA0pGtZ7Zodj9FkIEVpRKkudUPr+HzY
 Gkk+f1P2G+fy5ysE4Etg620iRZeGbfkursX1pBkU9NJbwjX9AGnoEWBF19shtrWnVamh
 TF3Lv2asOiAX7mdm/IMtq+B+OPNRMPgbq4fnZSwpeARh+oyMd9sPGiqj/ZvZiB43goWr
 Yl6g==
X-Gm-Message-State: ANhLgQ03CgBWqvallfuLG2GJohUwEoHSNcoBV94CDSG1xXhh4zFm+G4R
 0E96QMo4dRGXOuyd2pCMKFE=
X-Google-Smtp-Source: ADFU+vuYHADfdExQPtfMn3iQHwpd9MtYt555YD9fta4DPRXMuN+Ran+Wu+KOkh08HN7CfFxriIaYjg==
X-Received: by 2002:adf:d0c1:: with SMTP id z1mr5776883wrh.311.1583953096728; 
 Wed, 11 Mar 2020 11:58:16 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id n11sm38457120wrw.11.2020.03.11.11.58.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 11 Mar 2020 11:58:16 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 4/5] staging: mt7621-pci: bindings: update doc accordly to
 last changes
Date: Wed, 11 Mar 2020 19:58:07 +0100
Message-Id: <20200311185808.29166-5-sergio.paracuellos@gmail.com>
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
