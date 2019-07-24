Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1582272476
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 04:24:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C478084CE6;
	Wed, 24 Jul 2019 02:24:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xwqFYp1iyTDU; Wed, 24 Jul 2019 02:24:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 40F6184499;
	Wed, 24 Jul 2019 02:24:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B0FDF1BF3BA
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 02:24:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id AB285835F5
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 02:24:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DWRtyTcPFFZG for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 02:24:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 23D21822AE
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 02:24:29 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id az7so21332186plb.5
 for <devel@driverdev.osuosl.org>; Tue, 23 Jul 2019 19:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fAOxzZw/MQyA9eCxg3dz/9JXY348XgvfL/0jCf3qhSo=;
 b=qmDQaCCkzJM3tjqNb60YdqegPoAIVlt2jrTXEsB4JIVL9+TSifudJXqGNz4bPLWjys
 4ziN8qz2uyYVOL4dIzBZ9gAygM4u2hTVCBBLIZxv5FcVBAvJVJ4ubhBNK2XB0Z18eJdB
 voyzv+FAto/5JnhDCOH8qG0vh8Wh6yOjMFaEQvH3bEvln6XMM5kRU+lCW9WrKelrmmrv
 ODvpbLIN87xCM4yLxOMJDOnUQLbTlOc3bL9b4VmgqRWLn7+4tqZFyC/sKyQzg+qoW1e3
 btt6KbHTn2DPVIrrjRK9nUJ7Bci1W9L2N841mtxGkN1p0bw+4/NWvS1Opt4lDz+ITHwT
 wOGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fAOxzZw/MQyA9eCxg3dz/9JXY348XgvfL/0jCf3qhSo=;
 b=PpedKnlT5uCjok9j70nEB1Y6hKHDrpagCmCfWADHf7T7dQkFtuGqqlYPkUv/fthx59
 KooHGZCVPa0jOfcSx9tPy+dDViwruhdSbIhjZW9S/CzyUTr7yPaiv7Ohlww/NAsXsKZ+
 phYseu7LbVfUSXunyKADRcFJLHmUMQ6jFQT3PbBFVvpZ6ob3Lzo0Ao9Z8dUXTWUvRaUa
 rA7S/gSBvyRX38y8rKalzYPbG1LMIQYweIHOjYZmRv8np5ale0eGQcuEAkuqdf0G43l9
 c28ynMMgQ62WN67d2GBf0V8BJ4vtORUCk+wamLUqjdEND+WgKDmB4vcLk/snZkQ1lCkv
 LnQw==
X-Gm-Message-State: APjAAAUg36djB3p8GQo+DafY3OclWAAWpgfLiy4so44SZ03cC3xij7sd
 Vp1z2eSiWVK1epcVTaTmr8w=
X-Google-Smtp-Source: APXvYqzLIb9de4c0yjoqKVOV+8sdtTEYw/IMzFC9CzQRUgMtpRa75hCHQ45w4ZMwm0g5wFk7nD4VgA==
X-Received: by 2002:a17:902:f095:: with SMTP id
 go21mr85051752plb.58.1563935068782; 
 Tue, 23 Jul 2019 19:24:28 -0700 (PDT)
Received: from guoguo-omen-lan.lan ([107.151.139.128])
 by smtp.gmail.com with ESMTPSA id s185sm63468029pgs.67.2019.07.23.19.24.23
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 19:24:28 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list),
 linux-mips@vger.kernel.org (open list:MIPS),
 devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
Subject: [PATCH v2 3/6] MIPS: ralink: add clock device providing cpu/bus clock
 for mt7621
Date: Wed, 24 Jul 2019 10:23:07 +0800
Message-Id: <20190724022310.28010-4-gch981213@gmail.com>
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

For a long time the mt7621 uses a fixed cpu clock which causes a problem
if the cpu frequency is not 880MHz.
This patch adds cpu/bus clock calculation code and binds clocks to
mt7621-pll node.

Ported from OpenWrt:
c7ca224299 ramips: fix cpu clock of mt7621 and add dt clk devices

Signed-off-by: Weijie Gao <hackpascal@gmail.com>
Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---

Changes since v1:
1. split patch.
2. calculate clocks using the function called by CLK_OF_DECLARE
   drop direct function call in timer-gic.c of ralink_clk_init
3. drop assignment of mips-hpt-frequency

 arch/mips/include/asm/mach-ralink/mt7621.h | 20 ++++++
 arch/mips/ralink/mt7621.c                  | 77 ++++++++++++++++++++++
 2 files changed, 97 insertions(+)

diff --git a/arch/mips/include/asm/mach-ralink/mt7621.h b/arch/mips/include/asm/mach-ralink/mt7621.h
index 65483a4681ab..51a6e51aef3f 100644
--- a/arch/mips/include/asm/mach-ralink/mt7621.h
+++ b/arch/mips/include/asm/mach-ralink/mt7621.h
@@ -17,6 +17,10 @@
 #define SYSC_REG_CHIP_REV		0x0c
 #define SYSC_REG_SYSTEM_CONFIG0		0x10
 #define SYSC_REG_SYSTEM_CONFIG1		0x14
+#define SYSC_REG_CLKCFG0		0x2c
+#define SYSC_REG_CUR_CLK_STS		0x44
+
+#define MEMC_REG_CPU_PLL		0x648
 
 #define CHIP_REV_PKG_MASK		0x1
 #define CHIP_REV_PKG_SHIFT		16
@@ -24,6 +28,22 @@
 #define CHIP_REV_VER_SHIFT		8
 #define CHIP_REV_ECO_MASK		0xf
 
+#define XTAL_MODE_SEL_MASK		0x7
+#define XTAL_MODE_SEL_SHIFT		6
+
+#define CPU_CLK_SEL_MASK		0x3
+#define CPU_CLK_SEL_SHIFT		30
+
+#define CUR_CPU_FDIV_MASK		0x1f
+#define CUR_CPU_FDIV_SHIFT		8
+#define CUR_CPU_FFRAC_MASK		0x1f
+#define CUR_CPU_FFRAC_SHIFT		0
+
+#define CPU_PLL_PREDIV_MASK		0x3
+#define CPU_PLL_PREDIV_SHIFT		12
+#define CPU_PLL_FBDIV_MASK		0x7f
+#define CPU_PLL_FBDIV_SHIFT		4
+
 #define MT7621_DRAM_BASE                0x0
 #define MT7621_DDR2_SIZE_MIN		32
 #define MT7621_DDR2_SIZE_MAX		256
diff --git a/arch/mips/ralink/mt7621.c b/arch/mips/ralink/mt7621.c
index ba39f3f3a7c7..baf9033a67b4 100644
--- a/arch/mips/ralink/mt7621.c
+++ b/arch/mips/ralink/mt7621.c
@@ -7,12 +7,16 @@
 
 #include <linux/kernel.h>
 #include <linux/init.h>
+#include <linux/clkdev.h>
+#include <linux/clk-provider.h>
+#include <dt-bindings/clock/mt7621-clk.h>
 
 #include <asm/mipsregs.h>
 #include <asm/smp-ops.h>
 #include <asm/mips-cps.h>
 #include <asm/mach-ralink/ralink_regs.h>
 #include <asm/mach-ralink/mt7621.h>
+#include <asm/time.h>
 
 #include <pinmux.h>
 
@@ -103,11 +107,84 @@ static struct rt2880_pmx_group mt7621_pinmux_data[] = {
 	{ 0 }
 };
 
+static struct clk *clks[MT7621_CLK_MAX];
+static struct clk_onecell_data clk_data = {
+	.clks = clks,
+	.clk_num = ARRAY_SIZE(clks),
+};
+
 phys_addr_t mips_cpc_default_phys_base(void)
 {
 	panic("Cannot detect cpc address");
 }
 
+static struct clk *__init mt7621_add_sys_clkdev(
+	const char *id, unsigned long rate)
+{
+	struct clk *clk;
+	int err;
+
+	clk = clk_register_fixed_rate(NULL, id, NULL, 0, rate);
+	if (IS_ERR(clk))
+		panic("failed to allocate %s clock structure", id);
+
+	err = clk_register_clkdev(clk, id, NULL);
+	if (err)
+		panic("unable to register %s clock device", id);
+
+	return clk;
+}
+
+static void __init mt7621_clocks_init(struct device_node *np)
+{
+	const static u32 prediv_tbl[] = {0, 1, 2, 2};
+	u32 syscfg, xtal_sel, clkcfg, clk_sel, curclk, ffiv, ffrac;
+	u32 pll, prediv, fbdiv;
+	u32 xtal_clk, cpu_clk, bus_clk;
+
+	syscfg = rt_sysc_r32(SYSC_REG_SYSTEM_CONFIG0);
+	xtal_sel = (syscfg >> XTAL_MODE_SEL_SHIFT) & XTAL_MODE_SEL_MASK;
+
+	clkcfg = rt_sysc_r32(SYSC_REG_CLKCFG0);
+	clk_sel = (clkcfg >> CPU_CLK_SEL_SHIFT) & CPU_CLK_SEL_MASK;
+
+	curclk = rt_sysc_r32(SYSC_REG_CUR_CLK_STS);
+	ffiv = (curclk >> CUR_CPU_FDIV_SHIFT) & CUR_CPU_FDIV_MASK;
+	ffrac = (curclk >> CUR_CPU_FFRAC_SHIFT) & CUR_CPU_FFRAC_MASK;
+
+	if (xtal_sel <= 2)
+		xtal_clk = 20 * 1000 * 1000;
+	else if (xtal_sel <= 5)
+		xtal_clk = 40 * 1000 * 1000;
+	else
+		xtal_clk = 25 * 1000 * 1000;
+
+	switch (clk_sel) {
+	case 0:
+		cpu_clk = 500 * 1000 * 1000;
+		break;
+	case 1:
+		pll = rt_memc_r32(MEMC_REG_CPU_PLL);
+		fbdiv = (pll >> CPU_PLL_FBDIV_SHIFT) & CPU_PLL_FBDIV_MASK;
+		prediv = (pll >> CPU_PLL_PREDIV_SHIFT) & CPU_PLL_PREDIV_MASK;
+		cpu_clk = ((fbdiv + 1) * xtal_clk) >> prediv_tbl[prediv];
+		break;
+	default:
+		cpu_clk = xtal_clk;
+	}
+
+	cpu_clk = cpu_clk / ffiv * ffrac;
+	bus_clk = cpu_clk / 4;
+
+	clks[MT7621_CLK_CPU] = mt7621_add_sys_clkdev("cpu", cpu_clk);
+	clks[MT7621_CLK_BUS] = mt7621_add_sys_clkdev("bus", bus_clk);
+
+	pr_info("CPU Clock: %dMHz\n", cpu_clk / 1000000);
+
+	of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
+}
+CLK_OF_DECLARE(mt7621_clk, "mediatek,mt7621-pll", mt7621_clocks_init);
+
 void __init ralink_of_remap(void)
 {
 	rt_sysc_membase = plat_of_remap_node("mtk,mt7621-sysc");
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
