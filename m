Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A382B36F6
	for <lists+driverdev-devel@lfdr.de>; Sun, 15 Nov 2020 18:10:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 452E687264;
	Sun, 15 Nov 2020 17:10:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rE5yMfLmn4bi; Sun, 15 Nov 2020 17:10:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D26D58722D;
	Sun, 15 Nov 2020 17:10:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id BC94F1BF3D2
 for <devel@linuxdriverproject.org>; Sun, 15 Nov 2020 17:09:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B8813863B7
 for <devel@linuxdriverproject.org>; Sun, 15 Nov 2020 17:09:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id czstKwhKsHV0 for <devel@linuxdriverproject.org>;
 Sun, 15 Nov 2020 17:09:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 40B11860DB
 for <devel@driverdev.osuosl.org>; Sun, 15 Nov 2020 17:09:59 +0000 (UTC)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch
 [84.226.167.205])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 959FA221F9;
 Sun, 15 Nov 2020 17:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1605460198;
 bh=fee1rS1X9ukahSpmLtq+PGaQQ1AAS2rXNMd0fRThlYs=;
 h=From:To:Cc:Subject:Date:From;
 b=AnQeEgA9bNSfhvUCOS3w3bCa8X0kwOcYH0QB3FMsiNa2AEYHo4IWcCZgbVcUFzZEK
 Fyib85P/hVkKknFKsgPJdQ39r5/4wJ3jXrdYUjs0aKFiPaVvUMcB2bsoEJzhfwXQhY
 X7r4oFKQ7bcvRYg6550q2TciSAaeVEs90nDg9P10=
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
Subject: [PATCH 0/3] clk/sunxi/media: Fix builds with COMMON_CLK and
 HAVE_LEGACY_CLK
Date: Sun, 15 Nov 2020 18:09:47 +0100
Message-Id: <20201115170950.304460-1-krzk@kernel.org>
X-Mailer: git-send-email 2.25.1
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

Hi,

Multiple configurations create unbuildable config by selecting
COMMON_CLK and HAVE_LEGACY_CLK.  The first simply should not be
selected.

The patches 2/3 and 3/3 address this specific problem.  I performed few
compile tests and I am still building other configurations, therefore
they were marked as RFC.

Best regards,
Krzysztof


Krzysztof Kozlowski (3):
  clk: fix redefinition of clk_prepare on MIPS with HAVE_LEGACY_CLK
  ARM: sunxi: do not select COMMON_CLK to fix builds
  media: atomisp: do not select COMMON_CLK to fix builds

 arch/arm/mach-sunxi/Kconfig           | 1 +
 drivers/clk/clk.c                     | 4 ++++
 drivers/staging/media/atomisp/Kconfig | 2 +-
 sound/soc/sunxi/Kconfig               | 2 +-
 4 files changed, 7 insertions(+), 2 deletions(-)

-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
