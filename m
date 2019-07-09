Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B2563AD6
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Jul 2019 20:22:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id A1B3D86879;
	Tue,  9 Jul 2019 18:22:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3x9+FWJ-mfkX; Tue,  9 Jul 2019 18:22:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 89686824E3;
	Tue,  9 Jul 2019 18:22:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 573931BF4D8
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 18:22:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 520AA85E08
 for <devel@linuxdriverproject.org>; Tue,  9 Jul 2019 18:22:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aUYxZZz_h0OE for <devel@linuxdriverproject.org>;
 Tue,  9 Jul 2019 18:22:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E88F185E07
 for <devel@driverdev.osuosl.org>; Tue,  9 Jul 2019 18:22:43 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id u14so8507904pfn.2
 for <devel@driverdev.osuosl.org>; Tue, 09 Jul 2019 11:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9STqI1Jzq/esB4/bjEEc0g84CBMMWQdoQcVCId/e994=;
 b=o86r0i6nZQWZmd7Ez3IDEDgeftma4RvtOLzhXESJHq0UoKm2E6xlpazwDyZ/bx+87o
 xw7OyLrvdsezFpQtk8mZJ46NoRhS42skGhoxIl+5A3mHjtC6xzgIn9iRGyBFbUMIruJp
 uxzY5sO9HZsaB6I9mcdFUP3UmhpPaGT5oeoYnycmzgstaEqHbn6zdRQtFMnY+MBKR0e0
 HSaQKfvhrBpClNIMAPm53/OrZodOgkYMNMDby6msKpwo9kdFVwvhwsN+3ZWWgZc78d8+
 OoNfk53WvPr4HlOgfm42XSa5ks6ZRb+Sd7hSjk8oGLwpR2+4mhX2c9CS/Oy9Rz7LeaiD
 2B8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9STqI1Jzq/esB4/bjEEc0g84CBMMWQdoQcVCId/e994=;
 b=TGKNXjmQzzoMMzH4YEzZxkgV0dXo72Wikv/0aEZinZD/43Rw6/Ex9/dLfz/53Hb8K2
 p++9dx0ByzM745q+lAtdyzD4zScKcUpeADom5xNajufa3oUY6DG3P7A8dM53B//rLRpG
 EhlADyeK+qyMkGDh2nggHRFKWg9JepVhfxHXG+thrmvuvvRNltOI23CKETUnClioRedQ
 nYupEgU2zXMueZAz0RXgKYlHP9LPbtkRzMQFCsN2xqeg6aSk6kAsoUVelnmZc5mfTEws
 PcROfLgo1Lyj/wET2o+UChXvn9F3YP4dtg+NjqJFqoRJBAIvPaBRXvUNeYp9A/g4sEoq
 kAFA==
X-Gm-Message-State: APjAAAV2/dnacey9NZ/IpMt8rXT92ceZEpel1sqbDEy9pjXeynrJngeq
 6NDqr1BXbqhcb1qvacv8tHw=
X-Google-Smtp-Source: APXvYqzKAyOruk1lgAox5FSkQXaGKkgqTScruNAMvyq+LbO+ZrLGsElxLNhhoD0ns0wrJJR+mc1wNw==
X-Received: by 2002:a17:90a:1b4a:: with SMTP id
 q68mr1573355pjq.61.1562696563612; 
 Tue, 09 Jul 2019 11:22:43 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:7001:2668:5400:1ff:fe62:2bbd])
 by smtp.gmail.com with ESMTPSA id m69sm21008639pga.11.2019.07.09.11.22.36
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 09 Jul 2019 11:22:43 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list),
 linux-mips@vger.kernel.org (open list:MIPS),
 devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
Subject: [PATCH 4/5] staging: mt7621-dts: add dt nodes for mt7621-pll
Date: Wed, 10 Jul 2019 02:20:17 +0800
Message-Id: <20190709182018.23193-5-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190709182018.23193-1-gch981213@gmail.com>
References: <20190709182018.23193-1-gch981213@gmail.com>
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

This commit adds device-tree node for mt7621-pll and use its clock
accordingly.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
 drivers/staging/mt7621-dts/mt7621.dtsi | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index a4c08110094b..12717f570ceb 100644
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
+		compatible = "mediatek,mt7621-pll", "syscon";
 
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
