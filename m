Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB59C2A71EF
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 00:45:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 13B3F85AC7;
	Wed,  4 Nov 2020 23:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W2f0oMYkP1rF; Wed,  4 Nov 2020 23:45:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 745C98442F;
	Wed,  4 Nov 2020 23:45:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8E5EE1BF2B7
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:44:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 85EB2856CB
 for <devel@linuxdriverproject.org>; Wed,  4 Nov 2020 23:44:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sA7epZdYyXTV for <devel@linuxdriverproject.org>;
 Wed,  4 Nov 2020 23:44:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com
 [209.85.167.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 2EE3C84896
 for <devel@driverdev.osuosl.org>; Wed,  4 Nov 2020 23:44:58 +0000 (UTC)
Received: by mail-lf1-f65.google.com with SMTP id s30so177299lfc.4
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 15:44:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mSwbQjJ1cVy439QSgrXK9AcLY7148KkOFvsAqpIxmwg=;
 b=QtXKfweBRlsbGOAlYxZXOz/lYCy8unSAvDGjjvWSh/sezRhvIb291EkMy/Az42Eo7e
 TAfz8YALCyTQ46RYjcz1KHr1bxx3QIW42M38LghlqXeAJIOhgwnXDJ2w5PFdGxUrDaJa
 CgbvRUnmn+hP+Q9Jgoz/cIcjn3sh+vTzr920aJr959sxIfklRYfD0wQYr1mK7xUjvoYi
 X2ev0EAqFLOjT7G0Gaih9PQ6buZ2mt73AMYcrCt1Dn2Wa1sOYP2Wywby9BlcF6QCpkRM
 Ts50hSUFzQvXaYS6FgwlN+Yz+9QeF79aJ602AxxMXZAJiSKQWJJzQ4tzPEnhrIo8A+OP
 CRyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mSwbQjJ1cVy439QSgrXK9AcLY7148KkOFvsAqpIxmwg=;
 b=j60/rRAPH94z2J+RJOoDlGks1W5nKXhQCGNU9JM36D1bEXQugilz4PCZlCMrYo4Z4b
 PW/XCj/exrhaRDBdplyB7UBdhTMZxkSqth5P+bB6CbsuSaKj8rr/5wUb9BYVzE87Fc5S
 CPbVMuKBLLgM5cxpqwwmnkR1EGTPIuQI3bg03fikPqFx5DcASbTxU9bFzsDXGEnlXTZy
 Au8HnkEhn+3gTxwPT0UkRkwTb5XZ2iKpiBXcZKnfZiB5LO2Abn8FnCbjon+yoKOk+59L
 5hZ2gRZ0c2zTe6IjRIFSRyWKmdXWmBZ2EJTkroCf8yd1TTxKWGlNKarPViLC92Cu0P0b
 /cow==
X-Gm-Message-State: AOAM532OVqvg3gC8mCoXRINFXYolu4+lr0rrgRObEU2zLW3KVhi7doos
 UP/DQ90t3tsHYI6Djn6cNDQ=
X-Google-Smtp-Source: ABdhPJyAnR4d+zZoZfcUMnF37/CdTyI5a7cshqFtJeUxmjjzKi7K0NU+QmIwz6qwfyOY2SPBqOSB8Q==
X-Received: by 2002:a19:c8c1:: with SMTP id y184mr46637lff.598.1604533495960; 
 Wed, 04 Nov 2020 15:44:55 -0800 (PST)
Received: from localhost.localdomain (109-252-192-83.dynamic.spd-mgts.ru.
 [109.252.192.83])
 by smtp.gmail.com with ESMTPSA id m6sm640725ljc.112.2020.11.04.15.44.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 15:44:55 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Alan Stern <stern@rowland.harvard.edu>, Peter Chen <Peter.Chen@nxp.com>,
 Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Peter Geis <pgwipeout@gmail.com>, Nicolas Chauvet <kwizart@gmail.com>
Subject: [PATCH v1 00/30] Introduce core voltage scaling for NVIDIA Tegra20/30
 SoCs
Date: Thu,  5 Nov 2020 02:43:57 +0300
Message-Id: <20201104234427.26477-1-digetx@gmail.com>
X-Mailer: git-send-email 2.27.0
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
Cc: devel@driverdev.osuosl.org, linux-pwm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Introduce core voltage scaling for NVIDIA Tegra20/30 SoCs, which reduces
power consumption and heating of the Tegra chips. Tegra SoC has multiple
hardware units which belong to a core power domain of the SoC and share
the core voltage. The voltage must be selected in accordance to a minimum
requirement of every core hardware unit.

The minimum core voltage requirement depends on:

  1. Clock enable state of a hardware unit.
  2. Clock frequency.
  3. Unit's internal idling/active state.

This series is tested on Acer A500 (T20), AC100 (T20), Nexus 7 (T30) and
Ouya (T30) devices. I also added voltage scaling to the Ventana (T20) and
Cardhu (T30) boards which are tested by NVIDIA's CI farm. Tegra30 is now up
to 5C cooler on Nexus 7 and stays cool on Ouya (instead of becoming burning
hot) while system is idling. It should be possible to improve this further
by implementing a more advanced power management features for the kernel
drivers.

The DVFS support is opt-in for all boards, meaning that older DTBs will
continue to work like they did it before this series. It should be possible
to easily add the core voltage scaling support for Tegra114+ SoCs based on
this grounding work later on, if anyone will want to implement it.

WARNING(!) This series is made on top of the memory interconnect patches
           which are currently under review [1]. The Tegra EMC driver
           and devicetree-related patches need to be applied on top of
           the ICC series.

[1] https://patchwork.ozlabs.org/project/linux-tegra/list/?series=212196

Dmitry Osipenko (30):
  dt-bindings: host1x: Document OPP and voltage regulator properties
  dt-bindings: mmc: tegra: Document OPP and voltage regulator properties
  dt-bindings: pwm: tegra: Document OPP and voltage regulator properties
  media: dt: bindings: tegra-vde: Document OPP and voltage regulator
    properties
  dt-binding: usb: ci-hdrc-usb2:  Document OPP and voltage regulator
    properties
  dt-bindings: usb: tegra-ehci: Document OPP and voltage regulator
    properties
  soc/tegra: Add sync state API
  soc/tegra: regulators: Support Tegra SoC device sync state API
  soc/tegra: regulators: Fix lockup when voltage-spread is out of range
  regulator: Allow skipping disabled regulators in
    regulator_check_consumers()
  drm/tegra: dc: Support OPP and SoC core voltage scaling
  drm/tegra: gr2d: Correct swapped device-tree compatibles
  drm/tegra: gr2d: Support OPP and SoC core voltage scaling
  drm/tegra: gr3d: Support OPP and SoC core voltage scaling
  drm/tegra: hdmi: Support OPP and SoC core voltage scaling
  gpu: host1x: Support OPP and SoC core voltage scaling
  mmc: sdhci-tegra: Support OPP and core voltage scaling
  pwm: tegra: Support OPP and core voltage scaling
  media: staging: tegra-vde: Support OPP and SoC core voltage scaling
  usb: chipidea: tegra: Support OPP and SoC core voltage scaling
  usb: host: ehci-tegra: Support OPP and SoC core voltage scaling
  memory: tegra20-emc: Support Tegra SoC device state syncing
  memory: tegra30-emc: Support Tegra SoC device state syncing
  ARM: tegra: Add OPP tables for Tegra20 peripheral devices
  ARM: tegra: Add OPP tables for Tegra30 peripheral devices
  ARM: tegra: ventana: Add voltage supplies to DVFS-capable devices
  ARM: tegra: paz00: Add voltage supplies to DVFS-capable devices
  ARM: tegra: acer-a500: Add voltage supplies to DVFS-capable devices
  ARM: tegra: cardhu-a04: Add voltage supplies to DVFS-capable devices
  ARM: tegra: nexus7: Add voltage supplies to DVFS-capable devices

 .../display/tegra/nvidia,tegra20-host1x.txt   |  56 +++
 .../bindings/media/nvidia,tegra-vde.txt       |  12 +
 .../bindings/mmc/nvidia,tegra20-sdhci.txt     |  12 +
 .../bindings/pwm/nvidia,tegra20-pwm.txt       |  13 +
 .../devicetree/bindings/usb/ci-hdrc-usb2.txt  |   4 +
 .../bindings/usb/nvidia,tegra20-ehci.txt      |   2 +
 .../boot/dts/tegra20-acer-a500-picasso.dts    |  30 +-
 arch/arm/boot/dts/tegra20-paz00.dts           |  40 +-
 .../arm/boot/dts/tegra20-peripherals-opp.dtsi | 386 ++++++++++++++++
 arch/arm/boot/dts/tegra20-ventana.dts         |  65 ++-
 arch/arm/boot/dts/tegra20.dtsi                |  14 +
 .../tegra30-asus-nexus7-grouper-common.dtsi   |  23 +
 arch/arm/boot/dts/tegra30-cardhu-a04.dts      |  44 ++
 .../arm/boot/dts/tegra30-peripherals-opp.dtsi | 415 ++++++++++++++++++
 arch/arm/boot/dts/tegra30.dtsi                |  13 +
 drivers/gpu/drm/tegra/Kconfig                 |   1 +
 drivers/gpu/drm/tegra/dc.c                    | 138 +++++-
 drivers/gpu/drm/tegra/dc.h                    |   5 +
 drivers/gpu/drm/tegra/gr2d.c                  | 140 +++++-
 drivers/gpu/drm/tegra/gr3d.c                  | 136 ++++++
 drivers/gpu/drm/tegra/hdmi.c                  |  63 ++-
 drivers/gpu/host1x/Kconfig                    |   1 +
 drivers/gpu/host1x/dev.c                      |  87 ++++
 drivers/memory/tegra/tegra20-emc.c            |   8 +-
 drivers/memory/tegra/tegra30-emc.c            |   8 +-
 drivers/mmc/host/Kconfig                      |   1 +
 drivers/mmc/host/sdhci-tegra.c                |  70 ++-
 drivers/pwm/Kconfig                           |   1 +
 drivers/pwm/pwm-tegra.c                       |  84 +++-
 drivers/regulator/core.c                      |  12 +-
 .../soc/samsung/exynos-regulator-coupler.c    |   2 +-
 drivers/soc/tegra/common.c                    | 152 ++++++-
 drivers/soc/tegra/regulators-tegra20.c        |  25 +-
 drivers/soc/tegra/regulators-tegra30.c        |  30 +-
 drivers/staging/media/tegra-vde/Kconfig       |   1 +
 drivers/staging/media/tegra-vde/vde.c         | 127 ++++++
 drivers/staging/media/tegra-vde/vde.h         |   1 +
 drivers/usb/chipidea/Kconfig                  |   1 +
 drivers/usb/chipidea/ci_hdrc_tegra.c          |  79 ++++
 drivers/usb/host/Kconfig                      |   1 +
 drivers/usb/host/ehci-tegra.c                 |  79 ++++
 include/linux/regulator/coupler.h             |   6 +-
 include/soc/tegra/common.h                    |  22 +
 43 files changed, 2360 insertions(+), 50 deletions(-)

-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
