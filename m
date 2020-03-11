Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DD351814C9
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Mar 2020 10:27:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B388E88057;
	Wed, 11 Mar 2020 09:27:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EKrIJQigHMfz; Wed, 11 Mar 2020 09:27:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id C3E6887FED;
	Wed, 11 Mar 2020 09:27:22 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C6E7A1BF5DB
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id BF1D487E5E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oEUHZyOJoPuV
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id D8BF687D55
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 09:27:17 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id s14so1593985wrt.8
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 11 Mar 2020 02:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WeUhMBBaN3F2NEPM7PNYjW5fn3JSXPi9Sz2wpn2Z5jo=;
 b=mAD5kp08VNQf7REsbh3c2KCu8DjD/peSt3+c66p1IsZAHdXZAVUMOH3QOkgahzl4EZ
 XAiL/zVrdypZjUjsXoSIe0e2XRV/cgOY+HWp19BPg7IBfFaY21t5ePnjgS2Ec2diJaGj
 ZepBZsNrgCvfaYOnefCg6quTJHeubuNC1GA+OFg9LwWif7ILDSxVXonWGUgoXxEgOztd
 9/tlMlDk4RXTvZLUSq/UnTlxbp/4gS/2i9jNM4mwzVhhMup4UgathnWoBmSdFUZvXCkm
 I84mIgci1u7A8r2IwUep3mmymVbc6EfXWepLK08dF36mnMUMM7RHsOG+DLyVlhstdb6A
 jIYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WeUhMBBaN3F2NEPM7PNYjW5fn3JSXPi9Sz2wpn2Z5jo=;
 b=M4AOH3dyKzCqfVq04B7sK3fFGo7enYhh24bIAtmKljiIaCfa78F5bX4CRIurSmX0tl
 zHuy46hZs/bs8RNeOOjyagHzJuUwQJBQ6K6RV6xS3bTjVuuZTbMWbIuf0CwisHM161hk
 p8I3BoCwpFJFVNBifl/Qs9edm2t6dhRvCBOgmFxgJsHwIwl2uNVXz4EhwbzWQh8p0YzQ
 8egm7poSSxVANNzdYSe5qen+QQZ3er5ZR+DKKMAv3kfLjMJTkVjlvl3SNrChmB6IOJoF
 52zF8dwgWL0m9JRyDVnhyp/FTh1GS9TrxdioBIMG4iJPXrU/CKs9LaZTkysHf/6Lyiyd
 XIyQ==
X-Gm-Message-State: ANhLgQ3ippHqU1nC6lQobXBJ2N95E2f23/0JK7f9HeEbgyUn6zkCFulk
 F1ZICSnyXeQJse3nvN8Fmxk=
X-Google-Smtp-Source: ADFU+vtGoltaMaSzj+vQkfFLQMco6/dzxxBITvIwaaJVmsDN1QTZ2dlRvoyue8fODKvlel5cDuqjeA==
X-Received: by 2002:adf:9071:: with SMTP id h104mr3481239wrh.359.1583918836375; 
 Wed, 11 Mar 2020 02:27:16 -0700 (PDT)
Received: from localhost.localdomain
 (134.red-83-46-193.dynamicip.rima-tde.net. [83.46.193.134])
 by smtp.gmail.com with ESMTPSA id v14sm33075156wrr.34.2020.03.11.02.27.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 11 Mar 2020 02:27:15 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/5] staging: mt7621-pci: bindings: update doc accordly to
 last changes
Date: Wed, 11 Mar 2020 10:27:07 +0100
Message-Id: <20200311092707.23454-6-sergio.paracuellos@gmail.com>
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
