Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E40532BC4CF
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Nov 2020 10:56:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 892CA86BF2;
	Sun, 22 Nov 2020 09:56:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UD8KiodI4w8E; Sun, 22 Nov 2020 09:56:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5218B86BDC;
	Sun, 22 Nov 2020 09:56:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3AE2B1BF568
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 09:56:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 329B220362
 for <devel@linuxdriverproject.org>; Sun, 22 Nov 2020 09:56:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jPhiowv+kh8E for <devel@linuxdriverproject.org>;
 Sun, 22 Nov 2020 09:56:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 1872A20395
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 09:56:07 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id a65so14477439wme.1
 for <devel@driverdev.osuosl.org>; Sun, 22 Nov 2020 01:56:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pH4YiFa3zIrW5cBsHONER3WL/ieQbB97y8DpDIKkWFI=;
 b=Iov1hSHiHu+XHsVKC76tIQefz8RyYifIOEPd+qZhGln//cGkhaG4HeNg+ML6ooWvC4
 GdJRSC9fCzRSCqQFjx6/34cUs8EfZxHTJwBgLNfuNViUHX8oj+4zUVh6d+hrth78Rpv1
 VwkXBFSSuY8wif+tZ0jZcH0r2+de4S0vhtFs6pIsjOjZn9vKezpWvaZ8VBqt+ZQYd0hW
 FIxepQaF2Wn+usjPOxgAoIfWecbkxOYBpt+uahdcjO55e2StrmeUuYEiQY7xaxBoX0mw
 SEbo0CGuv6ei/JwfzGKtgtnz8TliR+IsCWbyd7QGkqrMy8l4YFNzWn6iLlPDQhB4SySV
 801g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pH4YiFa3zIrW5cBsHONER3WL/ieQbB97y8DpDIKkWFI=;
 b=Pv29GZRSAMEH3mmDXAb56xOwRDfR2lvFxIE6c05OFuUvXG/FtocCX8J3Ub2tMktCVw
 bZ3eKgKkK50MiqBtmJT2P+WZ5b0inU0HL2tXFtXoIXnHDFZPTmIc9F6vugwV6IpEn+li
 qFIgHI46usAvUnsdhZizpxO7+qtnX/AtGlJ75gJ8kIbSb5llue6M1V2fkgg/+dESIFeR
 POJGJt7proyS3FHtVpa0ZFgvGYfC8db99K4Y1No+BGJChmgWBri5akkFWGJAVteSCrM1
 NkxfhS2cLkQNGDT+cBGX3StfWJPaEDZXMp0IyzaVpkIzLKh2SzuTKk94/gdKjwsRPdXV
 jRDQ==
X-Gm-Message-State: AOAM53225WS0fPFCyE4Em/baEaQFtpCmgG0/vrnuVCCM0CmEZQM5Bras
 GwlaQqXJMGoUsKAnQQlpVR4=
X-Google-Smtp-Source: ABdhPJwBIQt/L/k/aduacdDbcS7Xsuy1ptvmYy41XoYrrgkAcVfE/zDgbGKj6Ms235bc75jyiZRoow==
X-Received: by 2002:a1c:63d7:: with SMTP id x206mr18804956wmb.34.1606038965656; 
 Sun, 22 Nov 2020 01:56:05 -0800 (PST)
Received: from localhost.localdomain (196.red-83-40-48.dynamicip.rima-tde.net.
 [83.40.48.196])
 by smtp.gmail.com with ESMTPSA id p21sm10593570wma.41.2020.11.22.01.56.04
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 22 Nov 2020 01:56:05 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: mturquette@baylibre.com
Subject: [PATCH v4 5/6] staging: mt7621-dts: use valid vendor 'mediatek'
 instead of invalid 'mtk'
Date: Sun, 22 Nov 2020 10:55:55 +0100
Message-Id: <20201122095556.21597-6-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201122095556.21597-1-sergio.paracuellos@gmail.com>
References: <20201122095556.21597-1-sergio.paracuellos@gmail.com>
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
Cc: hackpascal@gmail.com, devel@driverdev.osuosl.org, tsbogend@alpha.franken.de,
 sboyd@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 evicetree@vger.kernel.org, linux-mips@vger.kernel.org, robh+dt@kernel.org,
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
index 35cfda8f6faf..8fc311703beb 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -56,7 +56,7 @@ palmbus: palmbus@1E000000 {
 		#size-cells = <1>;
 
 		sysc: sysc@0 {
-			compatible = "mtk,mt7621-sysc", "syscon";
+			compatible = "mediatek,mt7621-sysc", "syscon";
 			reg = <0x0 0x100>;
 
 			pll: pll {
@@ -69,7 +69,7 @@ pll: pll {
 		};
 
 		wdt: wdt@100 {
-			compatible = "mtk,mt7621-wdt";
+			compatible = "mediatek,mt7621-wdt";
 			reg = <0x100 0x100>;
 		};
 
@@ -125,17 +125,17 @@ i2s: i2s@a00 {
 		};
 
 		memc: memc@5000 {
-			compatible = "mtk,mt7621-memc";
+			compatible = "mediatek,mt7621-memc";
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
 
@@ -368,7 +368,7 @@ timer {
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
