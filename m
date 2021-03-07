Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE1F32FF52
	for <lists+driverdev-devel@lfdr.de>; Sun,  7 Mar 2021 08:05:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C72656067F;
	Sun,  7 Mar 2021 07:05:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Me5FXmtxNICP; Sun,  7 Mar 2021 07:05:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3CE18605F9;
	Sun,  7 Mar 2021 07:05:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B8F2A1BF275
 for <devel@linuxdriverproject.org>; Sun,  7 Mar 2021 07:04:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B05066060F
 for <devel@linuxdriverproject.org>; Sun,  7 Mar 2021 07:04:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zRfxw6PD1y3H for <devel@linuxdriverproject.org>;
 Sun,  7 Mar 2021 07:04:35 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8E032605DC
 for <devel@driverdev.osuosl.org>; Sun,  7 Mar 2021 07:04:35 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id u14so7849155wri.3
 for <devel@driverdev.osuosl.org>; Sat, 06 Mar 2021 23:04:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Pc2UQSj4gs1c19Ejfzc+HuXWHgveERW6w2HWG8Qczho=;
 b=ctr3j7HJLs5RxapdsxLB7SBxifzUOrmJKJr9aBY84HS9BKhZceS7N8XM+r1ENx4p6y
 CYPI2Gnz7WmtVyeO0jNqM32FNym1LEPlck5Z4pC25/C68y3u/JdC9tc+FFFpbvIBUl83
 fQRKzJhrKrUHcMyfm8kDV/BvhsJcIW8P5mLR4XjY0ynnVn/n6x/1qDHndeIfkRhFjsAj
 k2MWKBpH3sttQ1GXPdvHqrqteYh4uOZZZ4dErruIersmpQXwDBtcVlf48+aZ87gGLaJL
 7ZqpFRg+AneBXkjpq8YoTM2VvN0D0zT8hI27J5nxCwGXgWvosYhWrNRkbzgoAyiGCOgw
 yU3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Pc2UQSj4gs1c19Ejfzc+HuXWHgveERW6w2HWG8Qczho=;
 b=CaXvhPWEkzBwVTda11cSr2M902x9tGhcgE8k1la0d2aWDatPYMmzGBD7pCUs+78qI7
 OOGa0OnxdtjaZ6NqYr4i81lR8UYFOpoPYelvBN2L7qfi/xUbfgeJtD8Oarm6S9yZD+US
 NUB//HdIsMOxVw0k72UeQF5vJ3n1NoiAGmKd3JWeNdLnsvYsageKqbAkONvK2kkW+6g0
 sI3gUj7GITW3KS/3szypX5HI5OtcSFNj8ZKNt2yomyzT35OGRUcd83VHHsGH6Cs7/3Re
 Rt89CJrqFRNrSIXp4fGphN+pMQoWEfwEb1Ge163fzOCY4qbIlpu6JVJOMxVXAC8mRNAn
 V/sg==
X-Gm-Message-State: AOAM533iJUPv7tmYWOXDfl+KAnR+7EA/O2Wk+EvQH02u4VOrmSp3DwKE
 WutSdE6W6kKQIHBEfSNL7vo=
X-Google-Smtp-Source: ABdhPJxjRPjrNuqxrP/TRKvTPVB1/KR3yDIvVEhvzbE3Wq8KgnP0EfsbuXOA3Ug5u74zWAJKyQCgRg==
X-Received: by 2002:adf:ce8a:: with SMTP id r10mr16916408wrn.17.1615100673918; 
 Sat, 06 Mar 2021 23:04:33 -0800 (PST)
Received: from localhost.localdomain (67.red-83-54-30.dynamicip.rima-tde.net.
 [83.54.30.67])
 by smtp.gmail.com with ESMTPSA id j9sm12162533wmi.24.2021.03.06.23.04.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 06 Mar 2021 23:04:33 -0800 (PST)
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
To: sboyd@kernel.org
Subject: [PATCH v10 5/6] staging: mt7621-dts: use valid vendor 'mediatek'
 instead of invalid 'mtk'
Date: Sun,  7 Mar 2021 08:04:25 +0100
Message-Id: <20210307070426.15933-6-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210307070426.15933-1-sergio.paracuellos@gmail.com>
References: <20210307070426.15933-1-sergio.paracuellos@gmail.com>
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
