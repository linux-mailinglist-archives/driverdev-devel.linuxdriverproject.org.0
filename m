Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 28E1F2DD6C8
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Dec 2020 19:07:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 30A5487638;
	Thu, 17 Dec 2020 18:07:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r14iqlizyybd; Thu, 17 Dec 2020 18:07:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4316C87629;
	Thu, 17 Dec 2020 18:07:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7AFC71BF477
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 76AA687943
 for <devel@linuxdriverproject.org>; Thu, 17 Dec 2020 18:07:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H8jqaxKjAiKZ for <devel@linuxdriverproject.org>;
 Thu, 17 Dec 2020 18:07:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C048F878D1
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 18:07:19 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id y19so59725621lfa.13
 for <devel@driverdev.osuosl.org>; Thu, 17 Dec 2020 10:07:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y8fr1iHSIZhCvTc7010qLcNSLREPpbF8f3eo0rKyUiU=;
 b=OaXN2R81hy3iauGi3nHDiXjgf+YsKLP5HbTi040iz+cN2JulD/8v6eeKOpKCmL1q9b
 zA0HXFIEx5FBsVWD96u4eEulgD8AYcHPrEIbvVjT+/WyO0Ta+TJ52ij8PzVE2NxcK6In
 QsO7EV6ABGHpzV9omz3gxY/F1fEkltnETk7GBxgWuvfE9gdp1usS8SMy9cscMuvYP6ih
 DykfzpZeekjpJmF7Yzu3jYMZFmQBG+CReKpfwwWc72QaKHEdThV6cDxY57Jgx36Jgx9/
 MOinM18AY2cDlHIVZCA72FaxD5rXIyH00j6MWNRmpvl4bx84qqyIfp2dExndpCl9zJBC
 bJhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y8fr1iHSIZhCvTc7010qLcNSLREPpbF8f3eo0rKyUiU=;
 b=PWB3fIs/2a1SHCV4bFzn02KuOb65IB0JW5v0aQfhQxBVUrTxH99qoGuSRDJqYCryDr
 +LSerokrxoffHjYOj/IfHiC2kNPRDYp0VrxUOukjyNNaeqt89hlZSmdIXk8tT+WR7jCr
 O+sqstoDFh3UuAbPursofqBxDFWhlNfhVSM9EG4VQf0Jh6LxTMlJnFer6YyWj/Rx1HM3
 5dW3ANx95rwOcxxc2bGk6SbzqMpTzwEd6Kkc6mhF3zFq4BxsnaW2AVcHnfopqxC8wnox
 pFfI2VXxcAGqTb1yNKpMqsGQfKlQB5FuhUEDElxl2U0McScsTGGKMuiOJRqXp44cHPhQ
 NEbQ==
X-Gm-Message-State: AOAM532WkaeP3WrIk4pfCobB4eDasx1rNQyG5dhwQfj5BFOdDmm2jniM
 7+FHndRN6Ej+1zmcOgcvx0E=
X-Google-Smtp-Source: ABdhPJxAsRAMbIzHHj/Ed3LvJkZlf4FF0RfKH5Dp1keOWfcgnzWXvG4XMG7H/toqjj/UbYurNiU/KA==
X-Received: by 2002:a2e:9ad7:: with SMTP id p23mr190619ljj.465.1608228437792; 
 Thu, 17 Dec 2020 10:07:17 -0800 (PST)
Received: from localhost.localdomain (109-252-192-57.dynamic.spd-mgts.ru.
 [109.252.192.57])
 by smtp.gmail.com with ESMTPSA id u5sm655596lff.78.2020.12.17.10.07.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Dec 2020 10:07:17 -0800 (PST)
From: Dmitry Osipenko <digetx@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Mark Brown <broonie@kernel.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Nicolas Chauvet <kwizart@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, Kevin Hilman <khilman@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>,
 Viresh Kumar <vireshk@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH v2 00/48] Introduce core voltage scaling for NVIDIA Tegra20/30
 SoCs
Date: Thu, 17 Dec 2020 21:05:50 +0300
Message-Id: <20201217180638.22748-1-digetx@gmail.com>
X-Mailer: git-send-email 2.29.2
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
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-media@vger.kernel.org
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

This series is tested on Acer A500 (T20), AC100 (T20), Nexus 7 (T30),
Ouya (T30), TK1 (T124) and some others. I also added voltage scaling to
the Ventana (T20) and Cardhu (T30) boards which are tested by NVIDIA's CI
farm. Tegra30 is now couple degrees cooler on Nexus 7 and stays cool on
Ouya (instead of becoming burning hot) while system is idling. It should
be possible to improve this further by implementing a more advanced power
management features for the kernel drivers.

The DVFS support is opt-in for all boards, meaning that older DTBs will
continue to work like they did it before this series. It should be possible
to easily add the core voltage scaling support for Tegra114+ SoCs based on
this grounding work later on, if anyone will want to implement it.

Changelog:

v2: - Replaced Core voltage regulator with a Core power domain. The voltage
      control is now done using GENPD API. This was suggested by Ulf Hansson.

    - Added basic runtime PM and GENPD support to 2d, 3d, host1x and clk
      drivers.

    - Added new core-power-domain and clk-device drivers. Some high-freq
      PLLs and clocks require a higher minimum core voltage and the new
      clk-device driver manages the voltage for these clocks based on
      the clock state.

    - Moved voltage scaling entirely to the new clk-device driver for devices
      which don't require advanced power management, like PWM for example.

    - Added devm_tegra_core_dev_init_opp_table() common helper which sets up
      OPP table for Tegra drivers.

    - Added resource-managed version for OPP API functions, as it was
      discussed previously in the comments to v1.

    - Added new APIs, features and fixed various bugs related to voltage
      scaling and power management done via GENPD API.

Dmitry Osipenko (48):
  dt-bindings: memory: tegra20: emc: Replace core regulator with power
    domain
  dt-bindings: memory: tegra30: emc: Replace core regulator with power
    domain
  dt-bindings: memory: tegra124: emc: Replace core regulator with power
    domain
  dt-bindings: host1x: Document OPP and power domain properties
  media: dt: bindings: tegra-vde: Document OPP and power domain
    properties
  dt-bindings: clock: tegra: Document clocks sub-node
  dt-bindings: arm: tegra: Add binding for core power domain
  regulator: Make regulator_sync_voltage() usable by coupled regulators
  opp: Add dev_pm_opp_sync_regulators()
  opp: Add dev_pm_opp_set_voltage()
  opp: Add dev_pm_opp_find_level_ceil()
  opp: Add dev_pm_opp_get_required_pstate()
  opp: Add resource-managed versions of OPP API functions
  opp: Filter out OPPs based on availability of a required-OPP
  opp: Support set_opp() customization without requiring to use
    regulators
  opp: Handle missing OPP table in dev_pm_opp_xlate_performance_state()
  opp: Correct debug message in _opp_add_static_v2()
  opp: Print OPP level in debug message of _opp_add_static_v2()
  opp: Fix adding OPP entries in a wrong order if rate is unavailable
  PM: domains: Make set_performance_state() callback optional
  PM: domains: Add "performance" column to debug summary
  soc/tegra: pmc: Fix imbalanced clock disabling in error code path
  soc/tegra: pmc: Pulse resets after removing power clamp
  soc/tegra: pmc: Ensure that clock rates aren't too high
  soc/tegra: pmc: Print out domain name when reset fails to acquire
  soc/tegra: Add devm_tegra_core_dev_init_opp_table()
  soc/tegra: Add CONFIG_SOC_TEGRA_COMMON and select PM_OPP by default
  soc/tegra: Introduce core power domain driver
  soc/tegra: pmc: Link domains to the parent Core domain
  soc/tegra: regulators: Fix locking up when voltage-spread is out of
    range
  soc/tegra: regulators: Support Core domain state syncing
  clk: tegra: Support runtime PM, power domain and OPP
  gpu: host1x: Add host1x_channel_stop()
  gpu: host1x: Support power management
  drm/tegra: dc: Support OPP and SoC core voltage scaling
  drm/tegra: gr2d: Correct swapped device-tree compatibles
  drm/tegra: gr2d: Support OPP and power management
  drm/tegra: g3d: Support OPP and power management
  drm/tegra: vic: Stop channel before suspending
  media: staging: tegra-vde: Support OPP and generic power domain
  memory: tegra20-emc: Use devm_tegra_core_dev_init_opp_table()
  memory: tegra30-emc: Use devm_tegra_core_dev_init_opp_table()
  ARM: tegra: Add OPP tables and power domains to Tegra20 device-tree
  ARM: tegra: Add OPP tables and power domains to Tegra30 device-tree
  ARM: tegra: acer-a500: Enable core voltage scaling
  ARM: tegra: ventana: Enable core voltage scaling
  ARM: tegra: ventana: Support CPU voltage scaling and thermal
    throttling
  ARM: tegra: cardhu: Support CPU voltage scaling and thermal throttling

 .../arm/tegra/nvidia,tegra20-core-domain.yaml |   48 +
 .../bindings/clock/nvidia,tegra20-car.txt     |   26 +
 .../bindings/clock/nvidia,tegra30-car.txt     |   26 +
 .../display/tegra/nvidia,tegra20-host1x.txt   |   49 +
 .../bindings/media/nvidia,tegra-vde.txt       |   12 +
 .../nvidia,tegra124-emc.yaml                  |    6 +-
 .../memory-controllers/nvidia,tegra20-emc.txt |    4 +-
 .../nvidia,tegra30-emc.yaml                   |    6 +-
 .../boot/dts/tegra20-acer-a500-picasso.dts    |    8 +-
 arch/arm/boot/dts/tegra20-colibri.dtsi        |    6 +-
 arch/arm/boot/dts/tegra20-harmony.dts         |    6 +-
 arch/arm/boot/dts/tegra20-paz00.dts           |   46 +-
 .../arm/boot/dts/tegra20-peripherals-opp.dtsi |  941 +++++++++++
 arch/arm/boot/dts/tegra20-seaboard.dts        |    6 +-
 arch/arm/boot/dts/tegra20-tamonten.dtsi       |    6 +-
 arch/arm/boot/dts/tegra20-trimslice.dts       |   12 +
 arch/arm/boot/dts/tegra20-ventana.dts         |   78 +-
 arch/arm/boot/dts/tegra20.dtsi                |  220 +++
 .../tegra30-asus-nexus7-grouper-common.dtsi   |    4 +
 arch/arm/boot/dts/tegra30-beaver.dts          |    4 +
 arch/arm/boot/dts/tegra30-cardhu.dtsi         |   81 +-
 arch/arm/boot/dts/tegra30-colibri.dtsi        |   20 +-
 arch/arm/boot/dts/tegra30-ouya.dts            |    4 +
 .../arm/boot/dts/tegra30-peripherals-opp.dtsi | 1412 +++++++++++++++++
 arch/arm/boot/dts/tegra30.dtsi                |  358 +++++
 drivers/base/power/domain.c                   |   33 +-
 drivers/clk/tegra/Makefile                    |    1 +
 drivers/clk/tegra/clk-device.c                |  222 +++
 drivers/clk/tegra/clk-divider.c               |    2 +-
 drivers/clk/tegra/clk-periph-gate.c           |    2 +-
 drivers/clk/tegra/clk-periph.c                |    2 +-
 drivers/clk/tegra/clk-pll.c                   |    2 +-
 drivers/clk/tegra/clk-super.c                 |    4 +-
 drivers/clk/tegra/clk-tegra-periph.c          |  140 +-
 drivers/clk/tegra/clk-tegra114.c              |    1 +
 drivers/clk/tegra/clk-tegra124.c              |    1 +
 drivers/clk/tegra/clk-tegra20-emc.c           |    2 +-
 drivers/clk/tegra/clk-tegra20.c               |  123 +-
 drivers/clk/tegra/clk-tegra210.c              |    1 +
 drivers/clk/tegra/clk-tegra30.c               |  133 +-
 drivers/clk/tegra/clk.c                       |   89 ++
 drivers/clk/tegra/clk.h                       |    7 +
 drivers/gpu/drm/tegra/dc.c                    |   66 +-
 drivers/gpu/drm/tegra/gr2d.c                  |   77 +-
 drivers/gpu/drm/tegra/gr3d.c                  |  264 ++-
 drivers/gpu/drm/tegra/vic.c                   |   15 +
 drivers/gpu/host1x/channel.c                  |    8 +
 drivers/gpu/host1x/dev.c                      |  102 +-
 drivers/memory/tegra/tegra20-emc.c            |   57 +-
 drivers/memory/tegra/tegra30-emc.c            |   57 +-
 drivers/opp/core.c                            |  390 ++++-
 drivers/opp/of.c                              |   34 +-
 drivers/opp/opp.h                             |    2 +-
 drivers/regulator/core.c                      |    6 +
 drivers/soc/tegra/Kconfig                     |   19 +
 drivers/soc/tegra/Makefile                    |    1 +
 drivers/soc/tegra/common.c                    |  137 ++
 drivers/soc/tegra/core-power-domain.c         |  125 ++
 drivers/soc/tegra/pmc.c                       |  122 +-
 drivers/soc/tegra/regulators-tegra20.c        |   19 +-
 drivers/soc/tegra/regulators-tegra30.c        |   20 +-
 drivers/staging/media/tegra-vde/vde.c         |   63 +-
 include/linux/host1x.h                        |    1 +
 include/linux/pm_opp.h                        |   81 +
 include/soc/tegra/common.h                    |   41 +
 65 files changed, 5458 insertions(+), 403 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/arm/tegra/nvidia,tegra20-core-domain.yaml
 create mode 100644 drivers/clk/tegra/clk-device.c
 create mode 100644 drivers/soc/tegra/core-power-domain.c

-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
