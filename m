Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B68742B36F8
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Nov 2020 18:10:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 55B6C203F1;
	Sun, 15 Nov 2020 17:10:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zyn4U1ntbmGJ; Sun, 15 Nov 2020 17:10:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 3A13620385;
	Sun, 15 Nov 2020 17:10:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5D52F1BF3D2
 for <devel@linuxdriverproject.org>; Sun, 15 Nov 2020 17:10:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 59C7B85ABE
 for <devel@linuxdriverproject.org>; Sun, 15 Nov 2020 17:10:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S1Nmqq-UIqe1 for <devel@linuxdriverproject.org>;
 Sun, 15 Nov 2020 17:10:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C7B0685A4B
 for <devel@driverdev.osuosl.org>; Sun, 15 Nov 2020 17:10:05 +0000 (UTC)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 82B152419B;
 Sun, 15 Nov 2020 17:10:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605460205;
 bh=10UkZIU1eXfGlQQ7EpZi0NHGj/dLX4A8AuYloIYXAN4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0IRlXBDG0xHkpXiOS2224BF2lLlgIVoxfYKt/M3XkMjasIQkT0eA4vNRSraIrWlvK
 zFNEo9s1kMOPs8G67u2ty4PKOgyVDrcUMp77G49yjwn4cRfkSs1uLnZYh4CrxIAegM
 FwVVXAqn+xbr2rRFHXsooXWynXNSKA8ynddQYaTw=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-media@vger.kernel.org,
 devel@driverdev.osuosl.org, alsa-devel@alsa-project.org
Subject: [RFC 2/3] ARM: sunxi: do not select COMMON_CLK to fix builds
Date: Sun, 15 Nov 2020 18:09:49 +0100
Message-Id: <20201115170950.304460-3-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201115170950.304460-1-krzk@kernel.org>
References: <20201115170950.304460-1-krzk@kernel.org>
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

COMMON_CLK is a user-selectable option with its own dependencies.  The
most important dependency is !HAVE_LEGACY_CLK.  User-selectable drivers
should not select COMMON_CLK because they will create a dependency cycle
and build failures.  For example on MIPS a configuration with COMMON_CLK
(selected by SND_SUN8I_CODEC) and HAVE_LEGACY_CLK (selected by
SOC_RT305X) is possible:

  WARNING: unmet direct dependencies detected for COMMON_CLK
    Depends on [n]: !HAVE_LEGACY_CLK [=y]
    Selected by [y]:
    - SND_SUN8I_CODEC [=y] && SOUND [=y] && !UML && SND [=y] && SND_SOC [=y] &&
      (ARCH_SUNXI || COMPILE_TEST [=y]) && OF [=y] && (MACH_SUN8I || ARM64 && ARCH_SUNXI || COMPILE_TEST [=y])

    /usr/bin/mips-linux-gnu-ld: drivers/clk/clk.o: in function `clk_set_rate':
    (.text+0xaeb4): multiple definition of `clk_set_rate'; arch/mips/ralink/clk.o:(.text+0x88): first defined here

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm/mach-sunxi/Kconfig | 1 +
 sound/soc/sunxi/Kconfig     | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-sunxi/Kconfig b/arch/arm/mach-sunxi/Kconfig
index eeadb1a4dcfe..4d9f9b6d329d 100644
--- a/arch/arm/mach-sunxi/Kconfig
+++ b/arch/arm/mach-sunxi/Kconfig
@@ -4,6 +4,7 @@ menuconfig ARCH_SUNXI
 	depends on ARCH_MULTI_V5 || ARCH_MULTI_V7
 	select ARCH_HAS_RESET_CONTROLLER
 	select CLKSRC_MMIO
+	select COMMON_CLK
 	select GENERIC_IRQ_CHIP
 	select GPIOLIB
 	select PINCTRL
diff --git a/sound/soc/sunxi/Kconfig b/sound/soc/sunxi/Kconfig
index 69b9d8515335..ddcaaa98d3cb 100644
--- a/sound/soc/sunxi/Kconfig
+++ b/sound/soc/sunxi/Kconfig
@@ -14,7 +14,7 @@ config SND_SUN8I_CODEC
 	tristate "Allwinner SUN8I audio codec"
 	depends on OF
 	depends on MACH_SUN8I || (ARM64 && ARCH_SUNXI) || COMPILE_TEST
-	select COMMON_CLK
+	depends on COMMON_CLK
 	select REGMAP_MMIO
 	help
 	  This option enables the digital part of the internal audio codec for
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
