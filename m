Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F9F72483
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 04:24:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 78E2E87C9C;
	Wed, 24 Jul 2019 02:24:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OtdE-dCIn3RC; Wed, 24 Jul 2019 02:24:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D97487C17;
	Wed, 24 Jul 2019 02:24:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A899A1BF3BA
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 02:24:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A398781E5E
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 02:24:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NDCsFQyG9NBu for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 02:24:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 3037081CA3
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 02:24:44 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id o13so20351351pgp.12
 for <devel@driverdev.osuosl.org>; Tue, 23 Jul 2019 19:24:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qRMlM2gUSInEC6RWWvSWyihO1TIAbroHme9s+jonTRc=;
 b=uakhSOoJr7OLv33vGsuhtq2Ax1mkcbw1w3DshzvnsB11Jgvts/botujxNjtMMGf3BD
 nPjs20j2kLIW8b0TVsHSLGyqAF50zmL2OPm53LfVnH6zm4hr6Zyw6s2Rcd7dPU9gG3gC
 NPTyac0LdjUbzZ9uc+UhlJ8OughYsGXd6wMtLurs588+3WrMHwS1KYYz30r2BHvqI5Mn
 do9Wm3Mx0W4fSY77x8zmGEC1S2ppgFhZR8fUmDjkIsOpA4xDs8H0mFf6zR6uFnKShxYE
 oWAtVJA6PO5CLbreAX4+kIV1V1lFNrZL+qYwabWMZaZLCOUkfCzTPpuGNWvemLxQ3srs
 MfPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qRMlM2gUSInEC6RWWvSWyihO1TIAbroHme9s+jonTRc=;
 b=o7pruiufuLdf/QstETuODkEcSRlH0CMS/4i38cuckokoeZDyK7A8iiwLhREsJdP70j
 VQiiCZvlcIt+Xf6JGwTnQ3SYxKeU2dATUqC8H70S0qxZ18lWGbMgEK09Rozjn3+uNJkX
 vMYss+w+8tLj/M+QJEoRCgwjODjLDvsx4Hb6u3pO2qRWZg1guqV96hLLd1qWKNIq/GtT
 HCZGxPPaXqC6pf2S+ged2MlEN9xIdkEmzDT+ia2dfGoOe1A9gGzsA5BNn/2st8cyO19f
 XcDSr7L7pgjkDNOjWsvPPEuO5prbILzVuBiWc+H2qhNZXRHfznAcfBu0PFjBBENbS44E
 0VAQ==
X-Gm-Message-State: APjAAAUsk08tC3kHF4P5DNw3o/sLwcVhhd5j1GOXmebiJFYekRBAar2t
 ZPM4GFsd0ccjkh1bUmdOu1U=
X-Google-Smtp-Source: APXvYqwtiFH8QItK41hVwAREdYVTax52z066QYfEO1VzBIZM5BscyljFyb1qFWp/q4lLGfqmyg7yww==
X-Received: by 2002:aa7:81d9:: with SMTP id c25mr8963389pfn.255.1563935083841; 
 Tue, 23 Jul 2019 19:24:43 -0700 (PDT)
Received: from guoguo-omen-lan.lan ([107.151.139.128])
 by smtp.gmail.com with ESMTPSA id s185sm63468029pgs.67.2019.07.23.19.24.38
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 19:24:43 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list),
 linux-mips@vger.kernel.org (open list:MIPS),
 devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
Subject: [PATCH v2 6/6] staging: mt7621-dts: add dt nodes for mt7621-pll
Date: Wed, 24 Jul 2019 10:23:10 +0800
Message-Id: <20190724022310.28010-7-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190724022310.28010-1-gch981213@gmail.com>
References: <20190724022310.28010-1-gch981213@gmail.com>
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
Cc: Mark Rutland <mark.rutland@arm.com>, Weijie Gao <hackpascal@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stephen Boyd <sboyd@kernel.org>, James Hogan <jhogan@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Rob Herring <robh+dt@kernel.org>, John Crispin <john@phrozen.org>,
 NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit adds device-tree node for mt7621-pll and use its clocks
accordingly.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---

Changes since v1:
1. drop cpuclock node in gbpc1.dts
2. drop syscon in mt7621-pll node

 drivers/staging/mt7621-dts/gbpc1.dts   |  5 -----
 drivers/staging/mt7621-dts/mt7621.dtsi | 15 +++++++--------
 2 files changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/mt7621-dts/gbpc1.dts b/drivers/staging/mt7621-dts/gbpc1.dts
index 1fb560ff059c..d94b73243268 100644
--- a/drivers/staging/mt7621-dts/gbpc1.dts
+++ b/drivers/staging/mt7621-dts/gbpc1.dts
@@ -106,11 +106,6 @@
 			clock-frequency = <225000000>;
 };
 
-&cpuclock {
-			compatible = "fixed-clock";
-			clock-frequency = <900000000>;
-};
-
 &pcie {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie_pins>;
diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index d89d68ffa7bc..7b82f7f70404 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -1,4 +1,5 @@
 #include <dt-bindings/interrupt-controller/mips-gic.h>
+#include <dt-bindings/clock/mt7621-clk.h>
 #include <dt-bindings/gpio/gpio.h>
 
 / {
@@ -27,12 +28,11 @@
 		serial0 = &uartlite;
 	};
 
-	cpuclock: cpuclock@0 {
-		#clock-cells = <0>;
-		compatible = "fixed-clock";
+	pll: pll {
+		compatible = "mediatek,mt7621-pll";
 
-		/* FIXME: there should be way to detect this */
-		clock-frequency = <880000000>;
+		#clock-cells = <1>;
+		clock-output-names = "cpu", "bus";
 	};
 
 	sysclock: sysclock@0 {
@@ -155,7 +155,6 @@
 			compatible = "ns16550a";
 			reg = <0xc00 0x100>;
 
-			clocks = <&sysclock>;
 			clock-frequency = <50000000>;
 
 			interrupt-parent = <&gic>;
@@ -172,7 +171,7 @@
 			compatible = "ralink,mt7621-spi";
 			reg = <0xb00 0x100>;
 
-			clocks = <&sysclock>;
+			clocks = <&pll MT7621_CLK_BUS>;
 
 			resets = <&rstctrl 18>;
 			reset-names = "spi";
@@ -372,7 +371,7 @@
 		timer {
 			compatible = "mti,gic-timer";
 			interrupts = <GIC_LOCAL 1 IRQ_TYPE_NONE>;
-			clocks = <&cpuclock>;
+			clocks = <&pll MT7621_CLK_CPU>;
 		};
 	};
 
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
