Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88EDF7E3805
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Nov 2023 10:43:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 064B5417CB;
	Tue,  7 Nov 2023 09:43:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 064B5417CB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bDZED-U9N1TD; Tue,  7 Nov 2023 09:43:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AC8F4417AB;
	Tue,  7 Nov 2023 09:43:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AC8F4417AB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5236C1BF3C3
 for <devel@linuxdriverproject.org>; Tue,  7 Nov 2023 09:43:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A62A421C3
 for <devel@linuxdriverproject.org>; Tue,  7 Nov 2023 09:43:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2A62A421C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PEAb36zRgnvy for <devel@linuxdriverproject.org>;
 Tue,  7 Nov 2023 09:43:40 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6F314421C1
 for <devel@driverdev.osuosl.org>; Tue,  7 Nov 2023 09:43:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F314421C1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="379859829"
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; d="scan'208";a="379859829"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 01:43:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="853312795"
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; d="scan'208";a="853312795"
Received: from lkp-server01.sh.intel.com (HELO 17d9e85e5079) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 07 Nov 2023 01:43:31 -0800
Received: from kbuild by 17d9e85e5079 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r0IcM-00070u-10;
 Tue, 07 Nov 2023 09:43:30 +0000
Date: Tue, 07 Nov 2023 17:42:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 a8287f754ed44cf2e8040439b1a8e3b6e24f3588
Message-ID: <202311071710.DneP63ct-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699350220; x=1730886220;
 h=date:from:to:cc:subject:message-id;
 bh=UE6hMT7Om01rDfMDgsx+BVmkXDo/WPnOGPM9DsbhmY4=;
 b=MXb6y/kd5ML9rmLKFVEcpZHUr5vULAmRUol3VTnXUP/WRk72/j06nxPl
 4opnKdoA3429pegPjq7kksj1WGXiEZCBzrh/xFm/fQDSzCKgEkkdaR6ZA
 G+BQjrZtI1zlgFEDljiOE0wp9PTtvBoXEnrBJsGCGKdjB1vxPHcJsErPX
 nhuq5MGzp/vFQvZi1Xh+lamyIhJ4rPp/73KdJ+4ryJWUi+p+xgLTCnTOt
 LtcWTpqEGi2+46wF9uvEtwrfJe0L5uP++5HrT9DH8XTw4hRfAQHCM4byB
 VBrxg5IKj4a2muPXWhb9pYmpL2qyk5OQQMvrp9B5z9wbAEXOrJQI+5Y+r
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MXb6y/kd
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
branch HEAD: a8287f754ed44cf2e8040439b1a8e3b6e24f3588  crypto: qat: make adf_ctl_class constant

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
|-- arc-randconfig-001-20231106
|   `-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|-- arc-randconfig-001-20231107
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- arc-randconfig-002-20231107
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- arm-defconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|-- i386-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- i386-allyesconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- i386-randconfig-002-20231107
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- i386-randconfig-003-20231107
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- i386-randconfig-006-20231107
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- loongarch-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- m68k-allmodconfig
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- m68k-allyesconfig
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
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
|-- parisc-defconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|-- parisc-randconfig-001-20231107
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|-- parisc64-defconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
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
|-- riscv-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- riscv-allyesconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- riscv-defconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|-- riscv-rv32_defconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
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
|-- sh-allyesconfig
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
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
`-- x86_64-allyesconfig
    |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
    |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
    |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
    |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
    |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
    |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
    |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
    |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
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

elapsed time: 1610m

configs tested: 76
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                               allnoconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20231106   gcc  
arc                   randconfig-001-20231107   gcc  
arc                   randconfig-002-20231107   gcc  
arm                                 defconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231107   gcc  
i386                  randconfig-002-20231107   gcc  
i386                  randconfig-003-20231107   gcc  
i386                  randconfig-004-20231107   gcc  
i386                  randconfig-005-20231107   gcc  
i386                  randconfig-006-20231107   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                          defconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-002-20231107   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231107   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                          rhel-8.3-rust   clang

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

