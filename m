Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D407E1259
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Nov 2023 07:00:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2B0ED8131D;
	Sun,  5 Nov 2023 06:00:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B0ED8131D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nm9yKddE8idy; Sun,  5 Nov 2023 06:00:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0BA4A8148E;
	Sun,  5 Nov 2023 06:00:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0BA4A8148E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 319EB1BF21A
 for <devel@linuxdriverproject.org>; Sun,  5 Nov 2023 05:59:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0303B80EC5
 for <devel@linuxdriverproject.org>; Sun,  5 Nov 2023 05:59:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0303B80EC5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2x3iHyp8PMqk for <devel@linuxdriverproject.org>;
 Sun,  5 Nov 2023 05:59:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DD71680E7E
 for <devel@driverdev.osuosl.org>; Sun,  5 Nov 2023 05:59:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD71680E7E
X-IronPort-AV: E=McAfee;i="6600,9927,10884"; a="453430786"
X-IronPort-AV: E=Sophos;i="6.03,278,1694761200"; d="scan'208";a="453430786"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2023 22:59:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10884"; a="755543172"
X-IronPort-AV: E=Sophos;i="6.03,278,1694761200"; d="scan'208";a="755543172"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 04 Nov 2023 22:59:50 -0700
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qzWAm-00055s-03;
 Sun, 05 Nov 2023 05:59:48 +0000
Date: Sun, 05 Nov 2023 13:58:47 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 b78132381fad225ac71e44dc1d40d020ebf92e7b
Message-ID: <202311051343.2GGMPFZl-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699163993; x=1730699993;
 h=date:from:to:cc:subject:message-id;
 bh=Tstz6XhvpAKeyutQ4+WDhGP0k7tsGvd3Yo6Xx6hdtKQ=;
 b=B6Mzb9Ak3Me9JV5x688lyMs6H2eBA4ZSpsy5nQkHFuj15gcv5VofR88y
 tkFKEJO33YYSIoYkzch30OVWsXfM48FEZWQVPjKNIHt8fBtopnu+JP2bp
 SW36j0+MXrUlIPbgaWo7ql03HHuZB3w8FfNHtjx3yUu1f61rIbxcpq24E
 lT3XyYxSTzaJBLWqYUgraCv1dukX1XTWTT0h4aOCJ1ugK1hositSoC3d+
 VAAUuC5Td3F8saeZVHrpbDLd+5Lfxzax1LxrqtIk7nbfQu6u5aXSc5GCe
 +6+jCdeg1l5kEPrEzpPbMp6b1H0zmQV5SMwdk9S7xP9WWeSWqWkUGMnG6
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B6Mzb9Ak
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
Cc: devel@driverdev.osuosl.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git class_cleanup
branch HEAD: b78132381fad225ac71e44dc1d40d020ebf92e7b  crypto: qat: make adf_ctl_class constant

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- arc-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- arc-randconfig-001-20231104
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- arc-randconfig-002-20231104
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- arm-randconfig-001-20231105
|   `-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|-- arm-randconfig-002-20231105
|   `-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|-- arm-randconfig-004-20231105
|   `-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|-- arm64-randconfig-002-20231105
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|-- arm64-randconfig-003-20231105
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|-- arm64-randconfig-004-20231105
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- csky-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- csky-allyesconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- csky-randconfig-001-20231104
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|-- csky-randconfig-002-20231104
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- i386-buildonly-randconfig-001-20231104
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- i386-buildonly-randconfig-002-20231104
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- i386-buildonly-randconfig-004-20231104
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- i386-buildonly-randconfig-005-20231104
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- i386-buildonly-randconfig-006-20231104
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- i386-randconfig-006-20231105
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|-- loongarch-randconfig-001-20231104
|   `-- drivers-scsi-scsi_devinfo.c:warning:strncpy-specified-bound-equals-destination-size
|-- loongarch-randconfig-002-20231104
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|-- m68k-allmodconfig
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- m68k-allyesconfig
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- microblaze-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- microblaze-allyesconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- mips-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- mips-allyesconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- nios2-allmodconfig
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- nios2-allyesconfig
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- nios2-randconfig-001-20231104
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- openrisc-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- openrisc-allyesconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- parisc-randconfig-001-20231104
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- parisc-randconfig-002-20231104
|   |-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|   `-- drivers-scsi-scsi_devinfo.c:warning:strncpy-specified-bound-equals-destination-size
|-- powerpc-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   |-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-cpu-not-described-in-ps3_disable_pm_interrupts
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-cpu-not-described-in-ps3_enable_pm_interrupts
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-cpu-not-described-in-ps3_read_ctr
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-cpu-not-described-in-ps3_set_ctr_size
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-cpu-not-described-in-ps3_write_phys_ctr
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-cpu-not-described-in-ps3_write_pm
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-ctr-not-described-in-ps3_read_ctr
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-ctr-not-described-in-ps3_write_pm07_control
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-mask-not-described-in-ps3_enable_pm_interrupts
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-phys_ctr-not-described-in-ps3_get_ctr_size
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-phys_ctr-not-described-in-ps3_read_phys_ctr
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-phys_ctr-not-described-in-ps3_set_ctr_size
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-phys_ctr-not-described-in-ps3_write_phys_ctr
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-val-not-described-in-ps3_write_ctr
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-val-not-described-in-ps3_write_pm07_control
|   |-- drivers-ps3-ps3-lpm.c:warning:cannot-understand-function-prototype:struct-ps3_lpm_priv-lpm_priv
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Enum-value-PS3_SM_CMD_SHUTDOWN-not-described-in-enum-ps3_sys_manager_cmd
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Function-parameter-or-member-attr-not-described-in-ps3_sys_manager_send_attr
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Function-parameter-or-member-dev-not-described-in-ps3_sys_manager_final_power_off
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Function-parameter-or-member-dev-not-described-in-ps3_sys_manager_handle_cmd
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Function-parameter-or-member-dev-not-described-in-ps3_sys_manager_send_next_op
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Function-parameter-or-member-dev-not-described-in-ps3_sys_manager_send_request_shutdown
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Function-parameter-or-member-dev-not-described-in-ps3_sys_manager_send_response
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Function-parameter-or-member-dev-not-described-in-ps3_sys_manager_write
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Function-parameter-or-member-payload-not-described-in-ps3_sys_manager_write
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Incorrect-use-of-kernel-doc-format:struct-ps3_sys_manager_header-System-manager-message-header.
|   |-- drivers-ps3-ps3-sys-manager.c:warning:cannot-understand-function-prototype:u32-user_wake_sources-PS3_SM_WAKE_DEFAULT
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-_private-not-described-in-ps3_vuart_irq_handler
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-buf-not-described-in-ps3_vuart_raw_write
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-buf-not-described-in-ps3_vuart_write
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-bytes-not-described-in-ps3_vuart_raw_read
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-bytes-not-described-in-ps3_vuart_read
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-bytes-not-described-in-ps3_vuart_write
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-bytes_written-not-described-in-ps3_vuart_raw_write
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-dev-not-described-in-ps3_vuart_handle_interrupt_rx
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-drv-not-described-in-ps3_vuart_port_driver_register
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-irq-not-described-in-ps3_vuart_irq_handler
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-link-not-described-in-list_buffer
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-rx_list-not-described-in-ps3_vuart_port_priv
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-stats-not-described-in-ps3_vuart_port_priv
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-status-not-described-in-ports_bmp
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-tail-not-described-in-list_buffer
|   `-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-unused-not-described-in-ports_bmp
|-- powerpc-allyesconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|   |-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-cpu-not-described-in-ps3_disable_pm_interrupts
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-cpu-not-described-in-ps3_enable_pm_interrupts
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-cpu-not-described-in-ps3_read_ctr
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-cpu-not-described-in-ps3_set_ctr_size
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-cpu-not-described-in-ps3_write_phys_ctr
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-cpu-not-described-in-ps3_write_pm
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-ctr-not-described-in-ps3_read_ctr
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-ctr-not-described-in-ps3_write_pm07_control
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-mask-not-described-in-ps3_enable_pm_interrupts
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-phys_ctr-not-described-in-ps3_get_ctr_size
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-phys_ctr-not-described-in-ps3_read_phys_ctr
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-phys_ctr-not-described-in-ps3_set_ctr_size
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-phys_ctr-not-described-in-ps3_write_phys_ctr
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-val-not-described-in-ps3_write_ctr
|   |-- drivers-ps3-ps3-lpm.c:warning:Function-parameter-or-member-val-not-described-in-ps3_write_pm07_control
|   |-- drivers-ps3-ps3-lpm.c:warning:cannot-understand-function-prototype:struct-ps3_lpm_priv-lpm_priv
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Enum-value-PS3_SM_CMD_SHUTDOWN-not-described-in-enum-ps3_sys_manager_cmd
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Function-parameter-or-member-attr-not-described-in-ps3_sys_manager_send_attr
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Function-parameter-or-member-dev-not-described-in-ps3_sys_manager_final_power_off
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Function-parameter-or-member-dev-not-described-in-ps3_sys_manager_handle_cmd
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Function-parameter-or-member-dev-not-described-in-ps3_sys_manager_send_next_op
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Function-parameter-or-member-dev-not-described-in-ps3_sys_manager_send_request_shutdown
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Function-parameter-or-member-dev-not-described-in-ps3_sys_manager_send_response
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Function-parameter-or-member-dev-not-described-in-ps3_sys_manager_write
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Function-parameter-or-member-payload-not-described-in-ps3_sys_manager_write
|   |-- drivers-ps3-ps3-sys-manager.c:warning:Incorrect-use-of-kernel-doc-format:struct-ps3_sys_manager_header-System-manager-message-header.
|   |-- drivers-ps3-ps3-sys-manager.c:warning:cannot-understand-function-prototype:u32-user_wake_sources-PS3_SM_WAKE_DEFAULT
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-_private-not-described-in-ps3_vuart_irq_handler
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-buf-not-described-in-ps3_vuart_raw_write
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-buf-not-described-in-ps3_vuart_write
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-bytes-not-described-in-ps3_vuart_raw_read
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-bytes-not-described-in-ps3_vuart_read
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-bytes-not-described-in-ps3_vuart_write
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-bytes_written-not-described-in-ps3_vuart_raw_write
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-dev-not-described-in-ps3_vuart_handle_interrupt_rx
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-drv-not-described-in-ps3_vuart_port_driver_register
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-irq-not-described-in-ps3_vuart_irq_handler
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-link-not-described-in-list_buffer
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-rx_list-not-described-in-ps3_vuart_port_priv
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-stats-not-described-in-ps3_vuart_port_priv
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-status-not-described-in-ports_bmp
|   |-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-tail-not-described-in-list_buffer
|   `-- drivers-ps3-ps3-vuart.c:warning:Function-parameter-or-member-unused-not-described-in-ports_bmp
|-- powerpc-randconfig-001-20231104
|   |-- arch-powerpc-platforms-52xx-mpc52xx_common.c:warning:Function-parameter-or-member-psc_number-not-described-in-mpc5200_psc_ac97_gpio_reset
|   |-- arch-powerpc-platforms-52xx-mpc52xx_gpt.c:warning:expecting-prototype-for-struct-mpc52xx_gpt.-Prototype-was-for-struct-mpc52xx_gpt_priv-instead
|   |-- arch-powerpc-platforms-52xx-mpc52xx_pic.c:warning:Function-parameter-or-member-ct-not-described-in-mpc52xx_irqhost_xlate
|   |-- arch-powerpc-platforms-52xx-mpc52xx_pic.c:warning:Function-parameter-or-member-intspec-not-described-in-mpc52xx_irqhost_xlate
|   |-- arch-powerpc-platforms-52xx-mpc52xx_pic.c:warning:Function-parameter-or-member-out_flags-not-described-in-mpc52xx_irqhost_xlate
|   |-- drivers-dma-fsldma.c:warning:Function-parameter-or-member-cookie-not-described-in-fsl_tx_status
|   |-- drivers-dma-fsldma.c:warning:Function-parameter-or-member-dchan-not-described-in-fsl_tx_status
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   |-- drivers-macintosh-mediabay.c:warning:variable-ofnode-set-but-not-used
|   |-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|   |-- drivers-video-fbdev-fsl-diu-fb.c:warning:Function-parameter-or-member-ad-not-described-in-fsl_diu_data
|   |-- drivers-video-fbdev-fsl-diu-fb.c:warning:Function-parameter-or-member-dummy_ad-not-described-in-fsl_diu_data
|   `-- drivers-video-fbdev-fsl-diu-fb.c:warning:Function-parameter-or-member-s-not-described-in-fsl_diu_name_to_port
|-- powerpc-randconfig-003-20231104
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- powerpc64-randconfig-001-20231104
|   |-- arch-powerpc-mm-book3s64-hash_native.c:warning:variable-index-set-but-not-used
|   |-- arch-powerpc-mm-book3s64-hash_tlb.c:warning:variable-offset-set-but-not-used
|   |-- arch-powerpc-mm-book3s64-pgtable.c:warning:no-previous-prototype-for-pmd_move_must_withdraw
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|-- powerpc64-randconfig-002-20231104
|   |-- arch-powerpc-mm-book3s64-pgtable.c:warning:no-previous-prototype-for-pmd_move_must_withdraw
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- powerpc64-randconfig-003-20231104
|   |-- arch-powerpc-mm-book3s64-hash_native.c:warning:variable-index-set-but-not-used
|   |-- arch-powerpc-mm-book3s64-hash_tlb.c:warning:variable-offset-set-but-not-used
|   `-- arch-powerpc-mm-book3s64-pgtable.c:warning:no-previous-prototype-for-pmd_move_must_withdraw
|-- s390-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- s390-allyesconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- s390-randconfig-001-20231104
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- s390-randconfig-002-20231104
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- sh-allmodconfig
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- sh-allyesconfig
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- sh-randconfig-001-20231104
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- sparc-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- sparc-allyesconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- sparc-randconfig-001-20231104
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|-- sparc-randconfig-002-20231104
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- sparc64-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- sparc64-allyesconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- x86_64-buildonly-randconfig-001-20231104
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- x86_64-buildonly-randconfig-003-20231104
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- x86_64-buildonly-randconfig-005-20231104
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- x86_64-randconfig-002-20231105
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- x86_64-randconfig-003-20231105
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- x86_64-randconfig-004-20231105
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- x86_64-randconfig-005-20231105
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- x86_64-randconfig-006-20231105
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- x86_64-randconfig-011-20231104
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- x86_64-randconfig-013-20231104
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- x86_64-randconfig-071-20231105
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- x86_64-randconfig-072-20231105
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
`-- x86_64-randconfig-074-20231105
    `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
clang_recent_errors
|-- um-allmodconfig
|   |-- arch-x86-um-shared-sysdep-kernel-offsets.h:warning:no-previous-prototype-for-function-foo
|   |-- arch-x86-um-vdso-um_vdso.c:warning:no-previous-prototype-for-function-__vdso_getcpu
|   `-- arch-x86-um-vdso-um_vdso.c:warning:no-previous-prototype-for-function-__vdso_gettimeofday
|-- um-allnoconfig
|   |-- arch-x86-um-shared-sysdep-kernel-offsets.h:warning:no-previous-prototype-for-function-foo
|   |-- arch-x86-um-vdso-um_vdso.c:warning:no-previous-prototype-for-function-__vdso_getcpu
|   `-- arch-x86-um-vdso-um_vdso.c:warning:no-previous-prototype-for-function-__vdso_gettimeofday
`-- um-allyesconfig
    |-- arch-x86-um-shared-sysdep-kernel-offsets.h:warning:no-previous-prototype-for-function-foo
    |-- arch-x86-um-vdso-um_vdso.c:warning:no-previous-prototype-for-function-__vdso_getcpu
    `-- arch-x86-um-vdso-um_vdso.c:warning:no-previous-prototype-for-function-__vdso_gettimeofday

elapsed time: 1243m

configs tested: 233
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231104   gcc  
arc                   randconfig-001-20231105   gcc  
arc                   randconfig-002-20231104   gcc  
arc                   randconfig-002-20231105   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                         at91_dt_defconfig   gcc  
arm                                 defconfig   gcc  
arm                        mvebu_v7_defconfig   gcc  
arm                       omap2plus_defconfig   gcc  
arm                   randconfig-001-20231105   gcc  
arm                   randconfig-002-20231105   gcc  
arm                   randconfig-003-20231105   gcc  
arm                   randconfig-004-20231105   gcc  
arm                             rpc_defconfig   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231105   gcc  
arm64                 randconfig-002-20231105   gcc  
arm64                 randconfig-003-20231105   gcc  
arm64                 randconfig-004-20231105   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231104   gcc  
csky                  randconfig-001-20231105   gcc  
csky                  randconfig-002-20231104   gcc  
csky                  randconfig-002-20231105   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20231104   gcc  
i386         buildonly-randconfig-001-20231105   gcc  
i386         buildonly-randconfig-002-20231104   gcc  
i386         buildonly-randconfig-002-20231105   gcc  
i386         buildonly-randconfig-003-20231104   gcc  
i386         buildonly-randconfig-003-20231105   gcc  
i386         buildonly-randconfig-004-20231104   gcc  
i386         buildonly-randconfig-004-20231105   gcc  
i386         buildonly-randconfig-005-20231104   gcc  
i386         buildonly-randconfig-005-20231105   gcc  
i386         buildonly-randconfig-006-20231104   gcc  
i386         buildonly-randconfig-006-20231105   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231105   gcc  
i386                  randconfig-002-20231105   gcc  
i386                  randconfig-003-20231105   gcc  
i386                  randconfig-004-20231105   gcc  
i386                  randconfig-005-20231105   gcc  
i386                  randconfig-006-20231105   gcc  
i386                  randconfig-011-20231104   gcc  
i386                  randconfig-011-20231105   gcc  
i386                  randconfig-012-20231104   gcc  
i386                  randconfig-012-20231105   gcc  
i386                  randconfig-013-20231104   gcc  
i386                  randconfig-013-20231105   gcc  
i386                  randconfig-014-20231104   gcc  
i386                  randconfig-014-20231105   gcc  
i386                  randconfig-015-20231104   gcc  
i386                  randconfig-015-20231105   gcc  
i386                  randconfig-016-20231104   gcc  
i386                  randconfig-016-20231105   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231104   gcc  
loongarch             randconfig-001-20231105   gcc  
loongarch             randconfig-002-20231104   gcc  
loongarch             randconfig-002-20231105   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                            q40_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                            ar7_defconfig   gcc  
mips                    maltaup_xpa_defconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231104   gcc  
nios2                 randconfig-001-20231105   gcc  
nios2                 randconfig-002-20231104   gcc  
nios2                 randconfig-002-20231105   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc                  or1klitex_defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231104   gcc  
parisc                randconfig-001-20231105   gcc  
parisc                randconfig-002-20231104   gcc  
parisc                randconfig-002-20231105   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                    gamecube_defconfig   clang
powerpc               randconfig-001-20231104   gcc  
powerpc               randconfig-001-20231105   gcc  
powerpc               randconfig-002-20231104   gcc  
powerpc               randconfig-002-20231105   gcc  
powerpc               randconfig-003-20231104   gcc  
powerpc               randconfig-003-20231105   gcc  
powerpc64             randconfig-001-20231104   gcc  
powerpc64             randconfig-001-20231105   gcc  
powerpc64             randconfig-002-20231104   gcc  
powerpc64             randconfig-002-20231105   gcc  
powerpc64             randconfig-003-20231104   gcc  
powerpc64             randconfig-003-20231105   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231104   gcc  
riscv                 randconfig-001-20231105   gcc  
riscv                 randconfig-002-20231104   gcc  
riscv                 randconfig-002-20231105   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231104   gcc  
s390                  randconfig-001-20231105   gcc  
s390                  randconfig-002-20231104   gcc  
s390                  randconfig-002-20231105   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7760_defconfig   gcc  
sh                    randconfig-001-20231104   gcc  
sh                    randconfig-001-20231105   gcc  
sh                    randconfig-002-20231104   gcc  
sh                    randconfig-002-20231105   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20231104   gcc  
sparc                 randconfig-001-20231105   gcc  
sparc                 randconfig-002-20231104   gcc  
sparc                 randconfig-002-20231105   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231104   gcc  
sparc64               randconfig-001-20231105   gcc  
sparc64               randconfig-002-20231104   gcc  
sparc64               randconfig-002-20231105   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231104   gcc  
um                    randconfig-001-20231105   gcc  
um                    randconfig-002-20231104   gcc  
um                    randconfig-002-20231105   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20231104   gcc  
x86_64       buildonly-randconfig-001-20231105   gcc  
x86_64       buildonly-randconfig-002-20231104   gcc  
x86_64       buildonly-randconfig-002-20231105   gcc  
x86_64       buildonly-randconfig-003-20231104   gcc  
x86_64       buildonly-randconfig-003-20231105   gcc  
x86_64       buildonly-randconfig-004-20231104   gcc  
x86_64       buildonly-randconfig-004-20231105   gcc  
x86_64       buildonly-randconfig-005-20231104   gcc  
x86_64       buildonly-randconfig-005-20231105   gcc  
x86_64       buildonly-randconfig-006-20231104   gcc  
x86_64       buildonly-randconfig-006-20231105   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231105   gcc  
x86_64                randconfig-002-20231105   gcc  
x86_64                randconfig-003-20231105   gcc  
x86_64                randconfig-004-20231105   gcc  
x86_64                randconfig-005-20231105   gcc  
x86_64                randconfig-006-20231105   gcc  
x86_64                randconfig-011-20231104   gcc  
x86_64                randconfig-011-20231105   gcc  
x86_64                randconfig-012-20231104   gcc  
x86_64                randconfig-012-20231105   gcc  
x86_64                randconfig-013-20231104   gcc  
x86_64                randconfig-013-20231105   gcc  
x86_64                randconfig-014-20231104   gcc  
x86_64                randconfig-014-20231105   gcc  
x86_64                randconfig-015-20231104   gcc  
x86_64                randconfig-015-20231105   gcc  
x86_64                randconfig-016-20231104   gcc  
x86_64                randconfig-016-20231105   gcc  
x86_64                randconfig-071-20231105   gcc  
x86_64                randconfig-072-20231105   gcc  
x86_64                randconfig-073-20231105   gcc  
x86_64                randconfig-074-20231105   gcc  
x86_64                randconfig-075-20231105   gcc  
x86_64                randconfig-076-20231105   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                randconfig-001-20231104   gcc  
xtensa                randconfig-001-20231105   gcc  
xtensa                randconfig-002-20231104   gcc  
xtensa                randconfig-002-20231105   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
