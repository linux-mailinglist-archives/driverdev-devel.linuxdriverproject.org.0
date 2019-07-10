Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F30D64074
	for <lists+driverdev-devel@lfdr.de>; Wed, 10 Jul 2019 07:12:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CE37A2157D;
	Wed, 10 Jul 2019 05:12:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Sy8iAp8YfBwN; Wed, 10 Jul 2019 05:12:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DC48C204CD;
	Wed, 10 Jul 2019 05:12:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B820F1BF3B5
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 05:11:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B2151868F9
 for <devel@linuxdriverproject.org>; Wed, 10 Jul 2019 05:11:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DOZhudbna8BY for <devel@linuxdriverproject.org>;
 Wed, 10 Jul 2019 05:11:57 +0000 (UTC)
X-Greylist: delayed 00:06:57 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0014.hostedemail.com
 [216.40.44.14])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 581C4867DF
 for <devel@driverdev.osuosl.org>; Wed, 10 Jul 2019 05:11:57 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave01.hostedemail.com (Postfix) with ESMTP id C672B18037D4C
 for <devel@driverdev.osuosl.org>; Wed, 10 Jul 2019 05:04:35 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 2D69B181D3403;
 Wed, 10 Jul 2019 05:04:33 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::::::::::::::::::::,
 RULES_HIT:41:355:379:541:973:982:988:989:1260:1345:1437:1534:1541:1711:1730:1747:1777:1792:1801:2198:2199:2393:2559:2562:2731:3138:3139:3140:3141:3142:3352:3865:3866:3867:3868:4250:4605:5007:6261:6737:10004:10848:11026:11658:11914:12043:12048:12297:12679:12895:13069:13161:13229:13311:13357:14096:14181:14384:14394:14581:14721:21080:21220:21451:21627:30054,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:26,
 LUA_SUMMARY:none
X-HE-Tag: help91_a3a1c1ec484c
X-Filterd-Recvd-Size: 2833
Received: from joe-laptop.perches.com (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf06.hostedemail.com (Postfix) with ESMTPA;
 Wed, 10 Jul 2019 05:04:30 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Andrew Morton <akpm@linux-foundation.org>,
 Patrick Venture <venture@google.com>, Nancy Yuen <yuenn@google.com>,
 Benjamin Fair <benjaminfair@google.com>, Andrew Jeffery <andrew@aj.id.au>,
 openbmc@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, netdev@vger.kernel.org,
 linux-mediatek@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-wireless@vger.kernel.org,
 linux-media@vger.kernel.org
Subject: [PATCH 00/12] treewide: Fix GENMASK misuses
Date: Tue,  9 Jul 2019 22:04:13 -0700
Message-Id: <cover.1562734889.git.joe@perches.com>
X-Mailer: git-send-email 2.15.0
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
Cc: linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
 alsa-devel@alsa-project.org, linux-mmc@vger.kernel.org,
 dri-devel@lists.freedesktop.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

These GENMASK uses are inverted argument order and the
actual masks produced are incorrect.  Fix them.

Add checkpatch tests to help avoid more misuses too.

Joe Perches (12):
  checkpatch: Add GENMASK tests
  clocksource/drivers/npcm: Fix misuse of GENMASK macro
  drm: aspeed_gfx: Fix misuse of GENMASK macro
  iio: adc: max9611: Fix misuse of GENMASK macro
  irqchip/gic-v3-its: Fix misuse of GENMASK macro
  mmc: meson-mx-sdio: Fix misuse of GENMASK macro
  net: ethernet: mediatek: Fix misuses of GENMASK macro
  net: stmmac: Fix misuses of GENMASK macro
  rtw88: Fix misuse of GENMASK macro
  phy: amlogic: G12A: Fix misuse of GENMASK macro
  staging: media: cedrus: Fix misuse of GENMASK macro
  ASoC: wcd9335: Fix misuse of GENMASK macro

 drivers/clocksource/timer-npcm7xx.c               |  2 +-
 drivers/gpu/drm/aspeed/aspeed_gfx.h               |  2 +-
 drivers/iio/adc/max9611.c                         |  2 +-
 drivers/irqchip/irq-gic-v3-its.c                  |  2 +-
 drivers/mmc/host/meson-mx-sdio.c                  |  2 +-
 drivers/net/ethernet/mediatek/mtk_eth_soc.h       |  2 +-
 drivers/net/ethernet/mediatek/mtk_sgmii.c         |  2 +-
 drivers/net/ethernet/stmicro/stmmac/descs.h       |  2 +-
 drivers/net/ethernet/stmicro/stmmac/dwmac-sun8i.c |  4 ++--
 drivers/net/wireless/realtek/rtw88/rtw8822b.c     |  2 +-
 drivers/phy/amlogic/phy-meson-g12a-usb2.c         |  2 +-
 drivers/staging/media/sunxi/cedrus/cedrus_regs.h  |  2 +-
 scripts/checkpatch.pl                             | 15 +++++++++++++++
 sound/soc/codecs/wcd-clsh-v2.c                    |  2 +-
 14 files changed, 29 insertions(+), 14 deletions(-)

-- 
2.15.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
