Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AB835AB23
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Apr 2021 07:52:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6774A40207;
	Sat, 10 Apr 2021 05:52:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nN-m5dZCVr85; Sat, 10 Apr 2021 05:52:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7B8544020D;
	Sat, 10 Apr 2021 05:51:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 42A9B1BF5B5
 for <devel@linuxdriverproject.org>; Sat, 10 Apr 2021 05:51:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2EC5D40207
 for <devel@linuxdriverproject.org>; Sat, 10 Apr 2021 05:51:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EQIOG6vNaQKm for <devel@linuxdriverproject.org>;
 Sat, 10 Apr 2021 05:51:07 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com
 [IPv6:2a00:1450:4864:20::32b])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C4BE40002
 for <devel@driverdev.osuosl.org>; Sat, 10 Apr 2021 05:51:07 +0000 (UTC)
Received: by mail-wm1-x32b.google.com with SMTP id 12so3912246wmf.5
 for <devel@driverdev.osuosl.org>; Fri, 09 Apr 2021 22:51:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p/+xyni/YCGnKs32N9UtSLDiZXGL8+kotlNAwV9L5+c=;
 b=NfvK5567HYt28UkCipC06OgWMXPv7Xs9pNRCvykTRcAx00BjWzfFEEWJrOxksUatKW
 2S6pPl424KJmgjkuSQKibYoX53aeHq480QN+onSdVaokc/YY/JgCIFP3Huzopt3gegXw
 wvl59Pvp7FIH5pHL9hI3eKy2D4IdSzD0UAdivVAniXC79uFka4smA7mFrZUKSV5LzZok
 v94MeQJhw5GeqR64FbhauTZv1c41UvLJkSsaqRFWnmtq5Xn11CvN+Amf3NRNo0w3efeT
 PWIWzm+ufZw+StStCPPL+sLsGokA9V2dDUay0KgscK5/vtDrMzDuGvzRh9wTM1zcl7nD
 8Rzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p/+xyni/YCGnKs32N9UtSLDiZXGL8+kotlNAwV9L5+c=;
 b=QpozYajNeSdB+8SwvGUa1OF2w5Kb88xAbQv94WT9DFXh8ggMXxDP7ofsCN0cpUaS7a
 i1jeIGFOU1i+WgVXs2bBL4AxqTZ9cHKdZ2AncVQ2oq6jCWjgmpbMxZqo/fCRaXLDL8yK
 tu+aMuV8+wFdONqjfk2Dtgd1iyHDBHpHi/QdRwglfLlaO0OjPSDP/kusGAtrjOlHRRS+
 nk89eyI9ioaE/6udzR2xeR8YfehRTO/krQWafc/lJkTqXc4zBskofZGzjwbYs1RYLRUi
 acXr0kPqfOX2YqyUqWIEDpHFinQrKI6YZxZNSxDEKSqMa+sWqyU1YWOtuUGW/Uu9W8uw
 y5YQ==
X-Gm-Message-State: AOAM5310Ylly6W7k+1vjlhtleg4Kp5Kg0Ydh220BjwIaCP4xZsEsXK5a
 OZbPtuv9Ugv90DvQpVFGH0o=
X-Google-Smtp-Source: ABdhPJz25GEZhbs/h2JpGSa5AGxf7gRmHLyLhu2qvbYdZpuKoymAD7tbn7xeXclHbozOjtpqTeTEgw==
X-Received: by 2002:a05:600c:2ca:: with SMTP id
 10mr16977918wmn.40.1618033865267; 
 Fri, 09 Apr 2021 22:51:05 -0700 (PDT)
Received: from localhost.localdomain
 (225.red-83-57-119.dynamicip.rima-tde.net. [83.57.119.225])
 by smtp.gmail.com with ESMTPSA id o2sm6376518wmc.23.2021.04.09.22.51.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 09 Apr 2021 22:51:04 -0700 (PDT)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v13 3/4] staging: mt7621-dts: use valid vendor 'mediatek'
 instead of invalid 'mtk'
Date: Sat, 10 Apr 2021 07:50:58 +0200
Message-Id: <20210410055059.13518-4-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210410055059.13518-1-sergio.paracuellos@gmail.com>
References: <20210410055059.13518-1-sergio.paracuellos@gmail.com>
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
index 6b3db98894cb..f82ad2a621f6 100644
--- a/arch/mips/ralink/mt7621.c
+++ b/arch/mips/ralink/mt7621.c
@@ -136,8 +136,8 @@ static void __init mt7621_memory_detect(void)
 
 void __init ralink_of_remap(void)
 {
-	rt_sysc_membase = plat_of_remap_node("mtk,mt7621-sysc");
-	rt_memc_membase = plat_of_remap_node("mtk,mt7621-memc");
+	rt_sysc_membase = plat_of_remap_node("mediatek,mt7621-sysc");
+	rt_memc_membase = plat_of_remap_node("mediatek,mt7621-memc");
 
 	if (!rt_sysc_membase || !rt_memc_membase)
 		panic("Failed to remap core resources");
@@ -205,7 +205,7 @@ void __init prom_soc_init(struct ralink_soc_info *soc_info)
 
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
