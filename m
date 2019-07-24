Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E1F72473
	for <lists+driverdev-devel@lfdr.de>; Wed, 24 Jul 2019 04:24:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0386887C89;
	Wed, 24 Jul 2019 02:24:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jXxtK-1Sp+dc; Wed, 24 Jul 2019 02:24:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 54C6D87C16;
	Wed, 24 Jul 2019 02:24:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 28ABC1BF3BA
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 02:24:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 25AE0836F1
 for <devel@linuxdriverproject.org>; Wed, 24 Jul 2019 02:24:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id diFJaEFlMiVx for <devel@linuxdriverproject.org>;
 Wed, 24 Jul 2019 02:24:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by whitealder.osuosl.org (Postfix) with ESMTPS id B7C6881CA3
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 02:24:23 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id f17so16092713pfn.6
 for <devel@driverdev.osuosl.org>; Tue, 23 Jul 2019 19:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DHFA8suWUP3tpWesHwhM+PuI3SVJDTd+EXpBK0dcsfw=;
 b=kdnkeIs9UnlW7io2ltC+Jx434Sp7jd23QovrRYNLKrNrCFZDyr8Lar08/olaNCKxYw
 n+hb+OW1t8Y+ZfxdTGyMOSRZ5ys3tY4//A5ZPvCg5ep4Sd1zMTNKNtjzD3xJKwEQq2g5
 Hfte9ICcF5AQXLfcBpNOQijig8veInit8HsZGklfWLEkSIkCPtLy65Y7Qr3uv5H3IzX9
 tSCEA2C5aMqzMrVOwtakcjKYn96SmPkM1hg2pdjBMkdPs+sjOxc1z6kWhdMMq4xrvcfw
 qnDLXAqMnqg4S5W49cY+r4FhYevM5YlHAOxH2pdwV/wTiCbBN92zvpzKyiUUgatjBVYC
 BKdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DHFA8suWUP3tpWesHwhM+PuI3SVJDTd+EXpBK0dcsfw=;
 b=eLEfXqfJtRhEajYmNO77VRUy/P08sdmsEQO11g5v6GMbSaFI/CaseOMW72FgLSk2LT
 d76D0gmtLMTAZCHaC2AJ23qZmob3lUgvrq80wUmCprn9gt+3C25c6F5ldgOdk9h8N0SZ
 DiAKDprziCEfdSSzEcX+4OymVfIbXa5C34K8c91GPGjSEDg8Yn41gUVSwDj7cA6oOTp6
 OBo1PwZTXUYAA8W6iK71WU+2LFqC1Lv2Yb2rMsr1JnDbmlZn6SH1zH5O4ZMvr5onGDWS
 lYiFQWE5fff3oCYlDM4CEsRnoCE8zcK+zJF7ippv5QMx8QV6qeIsPQpRezFdpPFAIoh5
 34dw==
X-Gm-Message-State: APjAAAUxpme7VcumJLILzi8J8IiQsQt2DCJGmdiqwX0BFHw8dVP6n0g0
 3xFmXX1XiNwT25TIKo3RK5M=
X-Google-Smtp-Source: APXvYqyv5VGeSzUKKTyB6UP2tZYzg/oEpNsftr7kxHCCip1RDPO9NuyaCaNi89fYJoRP2+U9gPQAyA==
X-Received: by 2002:a65:5a44:: with SMTP id z4mr79338446pgs.41.1563935063367; 
 Tue, 23 Jul 2019 19:24:23 -0700 (PDT)
Received: from guoguo-omen-lan.lan ([107.151.139.128])
 by smtp.gmail.com with ESMTPSA id s185sm63468029pgs.67.2019.07.23.19.24.18
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 19:24:22 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), linux-kernel@vger.kernel.org (open list),
 linux-mips@vger.kernel.org (open list:MIPS),
 devel@driverdev.osuosl.org (open list:STAGING SUBSYSTEM)
Subject: [PATCH v2 2/6] MIPS: ralink: drop ralink_clk_init for mt7621
Date: Wed, 24 Jul 2019 10:23:06 +0800
Message-Id: <20190724022310.28010-3-gch981213@gmail.com>
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

This function isn't called anywhere. just drop it.

Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
---
Change since v1:
New patch. Split from:
  "MIPS: ralink: fix cpu clock of mt7621 and add dt clk devices"

 arch/mips/ralink/mt7621.c | 43 ---------------------------------------
 1 file changed, 43 deletions(-)

diff --git a/arch/mips/ralink/mt7621.c b/arch/mips/ralink/mt7621.c
index 9415be0d57b8..ba39f3f3a7c7 100644
--- a/arch/mips/ralink/mt7621.c
+++ b/arch/mips/ralink/mt7621.c
@@ -18,11 +18,6 @@
 
 #include "common.h"
 
-#define SYSC_REG_SYSCFG		0x10
-#define SYSC_REG_CPLL_CLKCFG0	0x2c
-#define SYSC_REG_CUR_CLK_STS	0x44
-#define CPU_CLK_SEL		(BIT(30) | BIT(31))
-
 #define MT7621_GPIO_MODE_UART1		1
 #define MT7621_GPIO_MODE_I2C		2
 #define MT7621_GPIO_MODE_UART3_MASK	0x3
@@ -113,44 +108,6 @@ phys_addr_t mips_cpc_default_phys_base(void)
 	panic("Cannot detect cpc address");
 }
 
-void __init ralink_clk_init(void)
-{
-	int cpu_fdiv = 0;
-	int cpu_ffrac = 0;
-	int fbdiv = 0;
-	u32 clk_sts, syscfg;
-	u8 clk_sel = 0, xtal_mode;
-	u32 cpu_clk;
-
-	if ((rt_sysc_r32(SYSC_REG_CPLL_CLKCFG0) & CPU_CLK_SEL) != 0)
-		clk_sel = 1;
-
-	switch (clk_sel) {
-	case 0:
-		clk_sts = rt_sysc_r32(SYSC_REG_CUR_CLK_STS);
-		cpu_fdiv = ((clk_sts >> 8) & 0x1F);
-		cpu_ffrac = (clk_sts & 0x1F);
-		cpu_clk = (500 * cpu_ffrac / cpu_fdiv) * 1000 * 1000;
-		break;
-
-	case 1:
-		fbdiv = ((rt_sysc_r32(0x648) >> 4) & 0x7F) + 1;
-		syscfg = rt_sysc_r32(SYSC_REG_SYSCFG);
-		xtal_mode = (syscfg >> 6) & 0x7;
-		if (xtal_mode >= 6) {
-			/* 25Mhz Xtal */
-			cpu_clk = 25 * fbdiv * 1000 * 1000;
-		} else if (xtal_mode >= 3) {
-			/* 40Mhz Xtal */
-			cpu_clk = 40 * fbdiv * 1000 * 1000;
-		} else {
-			/* 20Mhz Xtal */
-			cpu_clk = 20 * fbdiv * 1000 * 1000;
-		}
-		break;
-	}
-}
-
 void __init ralink_of_remap(void)
 {
 	rt_sysc_membase = plat_of_remap_node("mtk,mt7621-sysc");
-- 
2.21.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
