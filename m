Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 828BE192DBE
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Mar 2020 17:04:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4435324F0C;
	Wed, 25 Mar 2020 16:04:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S5mPouj0O5wQ; Wed, 25 Mar 2020 16:04:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BD0B52040C;
	Wed, 25 Mar 2020 16:04:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D76FF1BF487
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 16:04:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D38748065D
 for <devel@linuxdriverproject.org>; Wed, 25 Mar 2020 16:04:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e8yXYgfEgt1a for <devel@linuxdriverproject.org>;
 Wed, 25 Mar 2020 16:04:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5070D804AC
 for <devel@driverdev.osuosl.org>; Wed, 25 Mar 2020 16:04:01 +0000 (UTC)
Received: from mail.kernel.org (ip5f5ad4e9.dynamic.kabel-deutschland.de
 [95.90.212.233])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ECC0D2077D;
 Wed, 25 Mar 2020 16:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585152241;
 bh=/YZy1j5dX52QBA68q9SViv2y+oiaFKA4xv2QbEhOZA4=;
 h=From:To:Cc:Subject:Date:From;
 b=ClsJ9UYWBbp4Uz4XmfRkQk92n+yf7yV4SxCYgHSBdz2Gh7Th6OlxpUqO2W7f8mo7V
 CPGOZ727NTJiTNbIckIlIOuODwoyzR/WuJelJpvDnv2xK5QMhbfh2GkmVrv1W5SpT5
 3V8zz02wGsvYVpYQuFHE8jvZpGviVt2iGFpo0qH4=
Received: from mchehab by mail.kernel.org with local (Exim 4.92.3)
 (envelope-from <mchehab@kernel.org>)
 id 1jH8Va-003MJ8-K9; Wed, 25 Mar 2020 17:03:58 +0100
From: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>
To: Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: [PATCH 0/4]  media Kconfig reorg - part 2
Date: Wed, 25 Mar 2020 17:03:53 +0100
Message-Id: <cover.1585151701.git.mchehab+huawei@kernel.org>
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Michal Simek <michal.simek@xilinx.com>, "Lad,
 Prabhakar" <prabhakar.csengg@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Pavel Machek <pavel@ucw.cz>, devel@driverdev.osuosl.org,
 linux-renesas-soc@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Kukjin Kim <kgene@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Bingbu Cao <bingbu.cao@intel.com>,
 Tian Shu Qiu <tian.shu.qiu@intel.com>, Yong Zhi <yong.zhi@intel.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>,
 Helen Koike <helen.koike@collabora.com>, Yong Deng <yong.deng@magewell.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org,
 Hyun Kwon <hyun.kwon@xilinx.com>, Heungjun Kim <riverful.kim@samsung.com>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

That's the second part of media Kconfig changes. The entire series is
at:

	https://git.linuxtv.org/mchehab/experimental.git/log/?h=media-kconfig

It addresses some issues I noticed when reviewing the series, and do
some changes on how things will be displayed.

It also simplify dependencencies on media-controller-dependent drivers,
by auto-selecting the needed deps.

It should be noticed that the media controller may also optionally
selected for several other drivers, so there is still a prompt to allow
manually enabling it, in the case it was not auto-selected.

PS.: While not needed anymore, because all dependent drivers auto
select, at least for now, I opted to keep the prompt for:

- VIDEO_V4L2_SUBDEV_API

  The rationale is that there are a few drivers that can optionally depend
  on it (like tvp5150). So, better to keep the dependency, in order to be
  able to test those drivers with and without the option.

- MEDIA_CONTROLLER_REQUEST_API

  The rationale is that there are some warnings at the Request API, and
  it would be good to keep it, at least while drivers are on staging.

Mauro Carvalho Chehab (4):
  media: dvb-core: Kconfig: default to use dynamic minors
  media: Kconfig files: use select for V4L2 subdevs and MC
  media: i2c/Kconfig: reorganize items there
  media: Kconfig: don't use visible for device type select

 drivers/media/Kconfig                         |  25 +-
 drivers/media/dvb-core/Kconfig                |   1 +
 drivers/media/i2c/Kconfig                     | 406 +++++++++++-------
 drivers/media/i2c/et8ek8/Kconfig              |   4 +-
 drivers/media/i2c/m5mols/Kconfig              |   5 +-
 drivers/media/i2c/smiapp/Kconfig              |   5 +-
 drivers/media/pci/cobalt/Kconfig              |   4 +-
 drivers/media/pci/intel/ipu3/Kconfig          |   4 +-
 drivers/media/pci/sta2x11/Kconfig             |   6 +-
 drivers/media/platform/Kconfig                |  28 +-
 drivers/media/platform/am437x/Kconfig         |   4 +-
 drivers/media/platform/atmel/Kconfig          |   4 +-
 drivers/media/platform/cadence/Kconfig        |   8 +-
 drivers/media/platform/exynos4-is/Kconfig     |   5 +-
 drivers/media/platform/rcar-vin/Kconfig       |   8 +-
 .../media/platform/sunxi/sun4i-csi/Kconfig    |   4 +-
 .../media/platform/sunxi/sun6i-csi/Kconfig    |   4 +-
 drivers/media/platform/xilinx/Kconfig         |   4 +-
 drivers/media/spi/Kconfig                     |   4 +-
 drivers/media/test_drivers/vimc/Kconfig       |   4 +-
 drivers/staging/media/hantro/Kconfig          |   5 +-
 drivers/staging/media/imx/Kconfig             |   5 +-
 drivers/staging/media/ipu3/Kconfig            |   3 +-
 drivers/staging/media/omap4iss/Kconfig        |   4 +-
 drivers/staging/media/rkisp1/Kconfig          |   4 +-
 drivers/staging/media/sunxi/cedrus/Kconfig    |   5 +-
 26 files changed, 349 insertions(+), 214 deletions(-)

-- 
2.25.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
