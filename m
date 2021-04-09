Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E04E935A6EF
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Apr 2021 21:20:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6640C402A4;
	Fri,  9 Apr 2021 19:20:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Nb8FintDIbrl; Fri,  9 Apr 2021 19:20:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 008EF401C9;
	Fri,  9 Apr 2021 19:20:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E268C1BF3DE
 for <devel@linuxdriverproject.org>; Fri,  9 Apr 2021 19:20:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D0878405DD
 for <devel@linuxdriverproject.org>; Fri,  9 Apr 2021 19:20:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iuwUXB3NdAVI for <devel@linuxdriverproject.org>;
 Fri,  9 Apr 2021 19:20:30 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AC2434048B
 for <devel@driverdev.osuosl.org>; Fri,  9 Apr 2021 19:20:30 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 y124-20020a1c32820000b029010c93864955so5287694wmy.5
 for <devel@driverdev.osuosl.org>; Fri, 09 Apr 2021 12:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Gp0+KZ2PzpF/j4W+LeqajIV0BfIQKayTYA5hoYYZ9tE=;
 b=VHgWTVKPZV/lN+sAe3ZQP0l2+JyWbS70mBfD1X1VX7+zREmSAzV5kQwdpK8fM1VyvJ
 1+OsOq7GgRb7qhICO97P17j01bqdyouzUdrnZjScSjO2mW+eB/woejOFAhvJHkwai+WB
 wbTz3TlRs8VPW7YRdLNU1NNnDLCt1MeI23b+V+i9U5B3LKYCCfKNOxlZ/gUDXN68xicr
 HaD+NCSwYFSipK+ECNU/LmZdAcWQFaW7dMEGwBx4ESAGQbQr9YfKVXRSpywceGF56woC
 b2SGLuGe/zrXOIWIOuxhYs3bA/R2ecuHB7rhHdVClGFi95Y1qLl9TOPcwfacUuaMZeAD
 CTgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Gp0+KZ2PzpF/j4W+LeqajIV0BfIQKayTYA5hoYYZ9tE=;
 b=In8wdpIw5vGuwwFxfZR/NOpKG9JhDbQS8C9v4oOx4/CIWyKwj4lP8L4M73o0dgGpDh
 IOyqAbvREMo8Z9eg1brjASjqApqO5qk+3QjSb5kcicTGt3p8CZVkVSJBtm6jletAAUUh
 XK5mySqrs8sTIEYhwqDFlopxfLZl6FMFbJGCyW49p77cZgeiq6KRo3zah640Gywj87l8
 5NcULOmjf07D9p6EkKng/7HEy/mj6E+CVJVrkbmZ3yBvPnYtpfS0c26PpgVM6dFMFesT
 rKplFcnXch7pNFQelT8Vt3tyrTGIPgxE8vIafDW9qyI0SoBFg3kTA+Vm+fdgJRCt1JWP
 b5BA==
X-Gm-Message-State: AOAM533V3vKn4iVB8cRtXatCwQIX887D8v8bI60DhpyO8WAcuR+60o3j
 cxKIDBBqukXYefn4iqDakbc=
X-Google-Smtp-Source: ABdhPJylpEd1yMNirJp5+9xls3bI/IoHuZBgzz6VNqBlZDSs4Ii3ET7sg8s+fjnm/yGf9D58dv6vkA==
X-Received: by 2002:a7b:cbc4:: with SMTP id n4mr15520985wmi.153.1617996029027; 
 Fri, 09 Apr 2021 12:20:29 -0700 (PDT)
Received: from localhost.localdomain
 (225.red-83-57-119.dynamicip.rima-tde.net. [83.57.119.225])
 by smtp.gmail.com with ESMTPSA id l9sm734259wrz.7.2021.04.09.12.20.28
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Apr 2021 12:20:28 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v12 3/4] staging: mt7621-dts: use valid vendor 'mediatek'
 instead of invalid 'mtk'
Date: Fri,  9 Apr 2021 21:20:23 +0200
Message-Id: <20210409192024.10024-4-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210409192024.10024-1-sergio.paracuellos@gmail.com>
References: <20210409192024.10024-1-sergio.paracuellos@gmail.com>
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 tsbogend@alpha.franken.de, gregkh@linuxfoundation.org,
 linux-mips@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 john@phrozen.org, neil@brown.name, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Vendor listed for mediatek in kernel vendor file 'vendor-prefixes.yaml'
contains 'mediatek' as a valid vendor string. Some nodes in the device
tree are using an invalid vendor string vfor 'mtk' instead. Fix all of
them in dts file. Update also ralink mt7621 related code to properly
match new strings. Even there are used in the device tree there are
some strings that are not referred anywhere but have been also updated
with new vendor name. These are 'mtk,mt7621-wdt', 'mtk,mt7621-nand',
'mtk,mt7621-mc', and 'mtk,mt7621-cpc'.

Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Acked-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 arch/mips/ralink/mt7621.c              |  6 +++---
 drivers/staging/mt7621-dts/mt7621.dtsi | 12 ++++++------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/mips/ralink/mt7621.c b/arch/mips/ralink/mt7621.c
index ca0ac607b0f3..5d74fc1c96ac 100644
--- a/arch/mips/ralink/mt7621.c
+++ b/arch/mips/ralink/mt7621.c
@@ -112,8 +112,8 @@ phys_addr_t mips_cpc_default_phys_base(void)
 
 void __init ralink_of_remap(void)
 {
-	rt_sysc_membase = plat_of_remap_node("mtk,mt7621-sysc");
-	rt_memc_membase = plat_of_remap_node("mtk,mt7621-memc");
+	rt_sysc_membase = plat_of_remap_node("mediatek,mt7621-sysc");
+	rt_memc_membase = plat_of_remap_node("mediatek,mt7621-memc");
 
 	if (!rt_sysc_membase || !rt_memc_membase)
 		panic("Failed to remap core resources");
@@ -181,7 +181,7 @@ void prom_soc_init(struct ralink_soc_info *soc_info)
 
 	if (n0 == MT7621_CHIP_NAME0 && n1 == MT7621_CHIP_NAME1) {
 		name = "MT7621";
-		soc_info->compatible = "mtk,mt7621-soc";
+		soc_info->compatible = "mediatek,mt7621-soc";
 	} else {
 		panic("mt7621: unknown SoC, n0:%08x n1:%08x\n", n0, n1);
 	}
diff --git a/drivers/staging/mt7621-dts/mt7621.dtsi b/drivers/staging/mt7621-dts/mt7621.dtsi
index b68183e7e6ad..f0c9ae757bcd 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -56,7 +56,7 @@ palmbus: palmbus@1E000000 {
 		#size-cells = <1>;
 
 		sysc: sysc@0 {
-			compatible = "mtk,mt7621-sysc", "syscon";
+			compatible = "mediatek,mt7621-sysc", "syscon";
 			reg = <0x0 0x100>;
 			#clock-cells = <1>;
 			ralink,memctl = <&memc>;
@@ -66,7 +66,7 @@ sysc: sysc@0 {
 		};
 
 		wdt: wdt@100 {
-			compatible = "mtk,mt7621-wdt";
+			compatible = "mediatek,mt7621-wdt";
 			reg = <0x100 0x100>;
 		};
 
@@ -123,17 +123,17 @@ i2s: i2s@a00 {
 		};
 
 		memc: memc@5000 {
-			compatible = "mtk,mt7621-memc", "syscon";
+			compatible = "mediatek,mt7621-memc", "syscon";
 			reg = <0x5000 0x1000>;
 		};
 
 		cpc: cpc@1fbf0000 {
-			     compatible = "mtk,mt7621-cpc";
+			     compatible = "mediatek,mt7621-cpc";
 			     reg = <0x1fbf0000 0x8000>;
 		};
 
 		mc: mc@1fbf8000 {
-			    compatible = "mtk,mt7621-mc";
+			    compatible = "mediatek,mt7621-mc";
 			    reg = <0x1fbf8000 0x8000>;
 		};
 
@@ -361,7 +361,7 @@ timer {
 	nand: nand@1e003000 {
 		status = "disabled";
 
-		compatible = "mtk,mt7621-nand";
+		compatible = "mediatek,mt7621-nand";
 		bank-width = <2>;
 		reg = <0x1e003000 0x800
 			0x1e003800 0x800>;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
