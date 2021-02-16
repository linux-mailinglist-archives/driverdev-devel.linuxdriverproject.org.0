Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E64D31CB41
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 14:38:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89BC66F503
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 13:38:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HP4o0-UwJRgY for <lists+driverdev-devel@lfdr.de>;
	Tue, 16 Feb 2021 13:38:32 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 0064C6F58C; Tue, 16 Feb 2021 13:38:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 453E16F5A5;
	Tue, 16 Feb 2021 13:37:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 00EB61BF34C
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 13:36:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id EFB2686887
 for <devel@linuxdriverproject.org>; Tue, 16 Feb 2021 13:36:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dUlikcehtOY7 for <devel@linuxdriverproject.org>;
 Tue, 16 Feb 2021 13:36:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E597286D92
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 13:36:25 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id n4so10057335wrx.1
 for <devel@driverdev.osuosl.org>; Tue, 16 Feb 2021 05:36:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LHPolF/4+qgvhOCrefG8j8poOWD/AjdPdfrmSOA9PFI=;
 b=aHVeYw7yyr78IzdC7pBIdrqBu0/Fi7fJ3b3ih+Dxco0sM2QxQ4sPvZ/ETqx1I6xVSO
 4u9HiwJPeoo7UKg6c9DBAGaBPXAdwdf727rxSZgaWSWlPcx8fGUCP5boAOauWMs4y723
 s1zDMMB9ZQmVxzVcIYmosS7GLSPc9sSB/LRZOWbz9lu+qANgRoiMCf7rEjhCyhE9dq9l
 dF7bakVlNqYKig51VCN3DI4N7G+kWqkTXsEBhW/ecXZP7olW6NjgXbuyNhtLJVVQJS2N
 UhDXnJOo8Y9Gsxl1wopGnnFMvFbGYmhNWPKhky9hdGOa98Q3uoKFHKupcj4Pa4IDH5jR
 r81A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LHPolF/4+qgvhOCrefG8j8poOWD/AjdPdfrmSOA9PFI=;
 b=AQdLjiR3H0lSMtXi0nuOZaIagtA/Vnkb4UZGAQPcE1EGPmuHVDGG3DjgFnu3mBzsa0
 vb4zdE6cYKiUXlg2YXz8Vt6YNT0YTsECAc5idNRpQS/PLbMfEB138cEdz9g7Awpf71sv
 w0H+4bSqCSiosbUKsL4KfrriLsnjHnHWw8lH3HVT9WUmbtk4iJ5SmQ99X6jcRjg5pmUR
 i1PKyiziWYRo2xWJ/7ppUb+k/BVDqwuwhp3oBOjMbHa400W8Hsx12+Np4nFLcEWfZH/F
 RLPpNn6zf45VwIy/NImU2SLWNuDF2X+jEDEqlTvXvtJ9Vm8eO8XChBcxfy3IETIb5dTk
 vurw==
X-Gm-Message-State: AOAM532zFs5W5QVDkitXOm6jo9+69goRYIp6BR4BhLUX/yDvnSZZwPTg
 Fg6rYe62hdTEtwlZsKs/bpI=
X-Google-Smtp-Source: ABdhPJzrxT5uY2EpvBZgJXOC7D/qVbf1DJp8Dy+nt/4sN3Kl33MogjBD4OSJ6d5jW0cwMWfOmnuSdg==
X-Received: by 2002:adf:fa91:: with SMTP id h17mr23827068wrr.257.1613482584500; 
 Tue, 16 Feb 2021 05:36:24 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id l7sm28032530wrn.11.2021.02.16.05.36.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Feb 2021 05:36:24 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v6 5/6] staging: mt7621-dts: use valid vendor 'mediatek'
 instead of invalid 'mtk'
Date: Tue, 16 Feb 2021 14:36:16 +0100
Message-Id: <20210216133617.22333-6-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210216133617.22333-1-sergio.paracuellos@gmail.com>
References: <20210216133617.22333-1-sergio.paracuellos@gmail.com>
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
index 11d1670d4339..55784dd48dc5 100644
--- a/drivers/staging/mt7621-dts/mt7621.dtsi
+++ b/drivers/staging/mt7621-dts/mt7621.dtsi
@@ -56,7 +56,7 @@ palmbus: palmbus@1E000000 {
 		#size-cells = <1>;
 
 		sysc: sysc@0 {
-			compatible = "mtk,mt7621-sysc", "syscon";
+			compatible = "mediatek,mt7621-sysc", "syscon";
 			reg = <0x0 0x100>;
 		};
 
@@ -71,7 +71,7 @@ pll: pll {
 		};
 
 		wdt: wdt@100 {
-			compatible = "mtk,mt7621-wdt";
+			compatible = "mediatek,mt7621-wdt";
 			reg = <0x100 0x100>;
 		};
 
@@ -128,17 +128,17 @@ i2s: i2s@a00 {
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
 
@@ -366,7 +366,7 @@ timer {
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
