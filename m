Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 69A127FB7ED
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Nov 2023 11:33:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 478D681B36;
	Tue, 28 Nov 2023 10:33:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 478D681B36
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JTPPCIQXhLkY; Tue, 28 Nov 2023 10:33:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BBF681BF4;
	Tue, 28 Nov 2023 10:33:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BBF681BF4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CC09A1BF2F6
 for <devel@linuxdriverproject.org>; Tue, 28 Nov 2023 10:33:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A8588402DA
 for <devel@linuxdriverproject.org>; Tue, 28 Nov 2023 10:33:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8588402DA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EWntLOXIMDsz for <devel@linuxdriverproject.org>;
 Tue, 28 Nov 2023 10:33:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BA5304031F
 for <devel@driverdev.osuosl.org>; Tue, 28 Nov 2023 10:33:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA5304031F
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="373066037"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="373066037"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 02:33:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="912388235"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="912388235"
Received: from lkp-server01.sh.intel.com (HELO d584ee6ebdcc) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 28 Nov 2023 02:33:21 -0800
Received: from kbuild by d584ee6ebdcc with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r7vP4-0007Q4-2S;
 Tue, 28 Nov 2023 10:33:18 +0000
Date: Tue, 28 Nov 2023 18:29:10 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 8ef7a56c42b091428fb13c11f3860b46504ddf49
Message-ID: <202311281805.aRuHvUuw-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701167603; x=1732703603;
 h=date:from:to:cc:subject:message-id;
 bh=eCeOaGKl88txqWAT2kFvT9XDnzah6g/3hDIeIq2tQDM=;
 b=JJ9x2z+lYyWr0YOhRToPI/6OvsdHPMYFm/vvlU1nJmIqiOh9DiDJmYMR
 PaJvHggthdqNS5aINvj98S3v6/5/G+/79iZSTMXGIZocDMqdBSY73ehYh
 awyl81Q/8Y5xccFh3Czgq0bca2AymtwpKmChWcTDtlZCOYCYjcrxRYjVD
 qk/D+fLdJcvEm0d8SsuAXdNieYZDJDH/I9oajHjr7djNN74X3UEMhcy8U
 O65/cMwlv2RP/ynvrMDRAb4a9cEocbfRCUXF/sWMUrox0nanYSip/f39G
 tnx2yucgXBYyoy+OevBDaLMCeVWXd1W110acv2srtNUXIgUNAlLxai/d4
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JJ9x2z+l
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
branch HEAD: 8ef7a56c42b091428fb13c11f3860b46504ddf49  crypto: qat: make adf_ctl_class constant

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
|-- arc-allyesconfig
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
|-- arc-randconfig-001-20231127
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- arc-randconfig-002-20231127
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- arc-randconfig-002-20231128
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- arm-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- arm-allyesconfig
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
|-- arm-randconfig-002-20231127
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- arm-randconfig-004-20231127
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- arm64-defconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|-- arm64-randconfig-001-20231127
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
|-- arm64-randconfig-002-20231127
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- arm64-randconfig-003-20231127
|   `-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|-- arm64-randconfig-004-20231127
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
|-- csky-randconfig-002-20231127
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|-- csky-randconfig-002-20231128
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
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
|-- loongarch-randconfig-001-20231127
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|-- loongarch-randconfig-002-20231128
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
|-- nios2-randconfig-001-20231127
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- nios2-randconfig-001-20231128
|   `-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|-- nios2-randconfig-002-20231127
|   `-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
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
|-- parisc-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- parisc-allyesconfig
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
|-- parisc-randconfig-001-20231127
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- parisc-randconfig-001-20231128
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- parisc-randconfig-002-20231128
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- parisc64-defconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|-- powerpc-randconfig-001-20231127
|   |-- drivers-dma-fsl_raid.c:warning:ordered-comparison-of-pointer-with-integer-zero
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- powerpc-randconfig-002-20231127
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- powerpc-randconfig-003-20231127
|   |-- arch-powerpc-platforms-amigaone-setup.c:warning:no-previous-prototype-for-amigaone_init_IRQ
|   |-- arch-powerpc-platforms-amigaone-setup.c:warning:no-previous-prototype-for-amigaone_restart
|   |-- arch-powerpc-platforms-amigaone-setup.c:warning:no-previous-prototype-for-amigaone_setup_arch
|   |-- arch-powerpc-platforms-amigaone-setup.c:warning:no-previous-prototype-for-amigaone_show_cpuinfo
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   |-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|   |-- drivers-video-fbdev-fsl-diu-fb.c:warning:Function-parameter-or-member-ad-not-described-in-fsl_diu_data
|   |-- drivers-video-fbdev-fsl-diu-fb.c:warning:Function-parameter-or-member-dummy_ad-not-described-in-fsl_diu_data
|   `-- drivers-video-fbdev-fsl-diu-fb.c:warning:Function-parameter-or-member-s-not-described-in-fsl_diu_name_to_port
|-- powerpc64-randconfig-001-20231127
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- powerpc64-randconfig-002-20231127
|   |-- arch-powerpc-mm-book3s64-pgtable.c:warning:no-previous-prototype-for-pmd_move_must_withdraw
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
|-- powerpc64-randconfig-003-20231127
|   |-- arch-powerpc-mm-book3s64-pgtable.c:warning:no-previous-prototype-for-pmd_move_must_withdraw
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
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
|-- s390-randconfig-001-20231128
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- sh-allmodconfig
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- sh-allyesconfig
|   |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- sh-randconfig-001-20231128
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- sh-randconfig-002-20231128
|   `-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
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
|-- sparc-randconfig-001-20231128
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- sparc-randconfig-002-20231128
|   `-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
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
|-- sparc64-randconfig-001-20231128
|   `-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
|-- sparc64-randconfig-002-20231128
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- xtensa-randconfig-001-20231128
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
`-- xtensa-randconfig-002-20231128
    |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
    |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
    |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
    |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
    |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
    |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
    |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
    |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
    |-- drivers-iio-gyro-bmg160_i2c.c:warning:bmg160_acpi_match-defined-but-not-used
    `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
clang_recent_errors
|-- arm-defconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|-- arm-randconfig-001-20231128
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- arm-randconfig-002-20231128
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- arm-randconfig-003-20231128
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- arm-randconfig-004-20231128
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- arm64-randconfig-001-20231128
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- hexagon-randconfig-002-20231127
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
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
|-- powerpc-randconfig-001-20231128
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- powerpc-randconfig-002-20231128
|   |-- arch-powerpc-platforms-52xx-mpc52xx_common.c:warning:Function-parameter-or-member-psc_number-not-described-in-mpc5200_psc_ac97_gpio_reset
|   |-- arch-powerpc-platforms-52xx-mpc52xx_gpt.c:warning:expecting-prototype-for-struct-mpc52xx_gpt.-Prototype-was-for-struct-mpc52xx_gpt_priv-instead
|   |-- arch-powerpc-platforms-52xx-mpc52xx_pic.c:warning:Function-parameter-or-member-ct-not-described-in-mpc52xx_irqhost_xlate
|   |-- arch-powerpc-platforms-52xx-mpc52xx_pic.c:warning:Function-parameter-or-member-intspec-not-described-in-mpc52xx_irqhost_xlate
|   |-- arch-powerpc-platforms-52xx-mpc52xx_pic.c:warning:Function-parameter-or-member-out_flags-not-described-in-mpc52xx_irqhost_xlate
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- powerpc-randconfig-003-20231128
|   |-- arch-powerpc-platforms-52xx-mpc52xx_common.c:warning:Function-parameter-or-member-psc_number-not-described-in-mpc5200_psc_ac97_gpio_reset
|   |-- arch-powerpc-platforms-52xx-mpc52xx_gpt.c:warning:expecting-prototype-for-struct-mpc52xx_gpt.-Prototype-was-for-struct-mpc52xx_gpt_priv-instead
|   |-- arch-powerpc-platforms-52xx-mpc52xx_pic.c:warning:Function-parameter-or-member-ct-not-described-in-mpc52xx_irqhost_xlate
|   |-- arch-powerpc-platforms-52xx-mpc52xx_pic.c:warning:Function-parameter-or-member-intspec-not-described-in-mpc52xx_irqhost_xlate
|   |-- arch-powerpc-platforms-52xx-mpc52xx_pic.c:warning:Function-parameter-or-member-out_flags-not-described-in-mpc52xx_irqhost_xlate
|   |-- drivers-dma-fsldma.c:warning:Function-parameter-or-member-cookie-not-described-in-fsl_tx_status
|   |-- drivers-dma-fsldma.c:warning:Function-parameter-or-member-dchan-not-described-in-fsl_tx_status
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- powerpc64-randconfig-001-20231128
|   |-- arch-powerpc-mm-book3s64-hash_native.c:warning:variable-index-set-but-not-used
|   |-- arch-powerpc-mm-book3s64-hash_tlb.c:warning:variable-offset-set-but-not-used
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- powerpc64-randconfig-002-20231128
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
|-- powerpc64-randconfig-003-20231128
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
|-- riscv-randconfig-001-20231128
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- riscv-randconfig-002-20231128
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- riscv-rv32_defconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|-- um-allmodconfig
|   |-- arch-x86-um-shared-sysdep-kernel-offsets.h:warning:no-previous-prototype-for-function-foo
|   |-- arch-x86-um-vdso-um_vdso.c:warning:no-previous-prototype-for-function-__vdso_getcpu
|   `-- arch-x86-um-vdso-um_vdso.c:warning:no-previous-prototype-for-function-__vdso_gettimeofday
|-- um-allnoconfig
|   |-- arch-x86-um-shared-sysdep-kernel-offsets.h:warning:no-previous-prototype-for-function-foo
|   |-- arch-x86-um-vdso-um_vdso.c:warning:no-previous-prototype-for-function-__vdso_getcpu
|   `-- arch-x86-um-vdso-um_vdso.c:warning:no-previous-prototype-for-function-__vdso_gettimeofday
|-- um-allyesconfig
|   |-- arch-x86-um-shared-sysdep-kernel-offsets.h:warning:no-previous-prototype-for-function-foo
|   |-- arch-x86-um-vdso-um_vdso.c:warning:no-previous-prototype-for-function-__vdso_getcpu
|   `-- arch-x86-um-vdso-um_vdso.c:warning:no-previous-prototype-for-function-__vdso_gettimeofday
|-- um-randconfig-001-20231128
|   |-- arch-x86-um-shared-sysdep-kernel-offsets.h:warning:no-previous-prototype-for-function-foo
|   |-- arch-x86-um-vdso-um_vdso.c:warning:no-previous-prototype-for-function-__vdso_getcpu
|   `-- arch-x86-um-vdso-um_vdso.c:warning:no-previous-prototype-for-function-__vdso_gettimeofday
`-- um-randconfig-002-20231128
    |-- arch-x86-um-shared-sysdep-kernel-offsets.h:warning:no-previous-prototype-for-function-foo
    |-- arch-x86-um-vdso-um_vdso.c:warning:no-previous-prototype-for-function-__vdso_getcpu
    `-- arch-x86-um-vdso-um_vdso.c:warning:no-previous-prototype-for-function-__vdso_gettimeofday

elapsed time: 1484m

configs tested: 168
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
arc                   randconfig-001-20231127   gcc  
arc                   randconfig-001-20231128   gcc  
arc                   randconfig-002-20231127   gcc  
arc                   randconfig-002-20231128   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                      integrator_defconfig   gcc  
arm                   randconfig-001-20231127   gcc  
arm                   randconfig-001-20231128   clang
arm                   randconfig-002-20231127   gcc  
arm                   randconfig-002-20231128   clang
arm                   randconfig-003-20231127   gcc  
arm                   randconfig-003-20231128   clang
arm                   randconfig-004-20231127   gcc  
arm                   randconfig-004-20231128   clang
arm                        shmobile_defconfig   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231127   gcc  
arm64                 randconfig-001-20231128   clang
arm64                 randconfig-002-20231127   gcc  
arm64                 randconfig-002-20231128   clang
arm64                 randconfig-003-20231127   gcc  
arm64                 randconfig-003-20231128   clang
arm64                 randconfig-004-20231127   gcc  
arm64                 randconfig-004-20231128   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231127   gcc  
csky                  randconfig-001-20231128   gcc  
csky                  randconfig-002-20231127   gcc  
csky                  randconfig-002-20231128   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
hexagon               randconfig-001-20231127   clang
hexagon               randconfig-001-20231128   clang
hexagon               randconfig-002-20231127   clang
hexagon               randconfig-002-20231128   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386                                defconfig   gcc  
i386                  randconfig-011-20231127   clang
i386                  randconfig-012-20231127   clang
i386                  randconfig-013-20231127   clang
i386                  randconfig-014-20231127   clang
i386                  randconfig-015-20231127   clang
i386                  randconfig-016-20231127   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231127   gcc  
loongarch             randconfig-001-20231128   gcc  
loongarch             randconfig-002-20231127   gcc  
loongarch             randconfig-002-20231128   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                        mvme16x_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   clang
mips                             allyesconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                 randconfig-001-20231127   gcc  
nios2                 randconfig-001-20231128   gcc  
nios2                 randconfig-002-20231127   gcc  
nios2                 randconfig-002-20231128   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231127   gcc  
parisc                randconfig-001-20231128   gcc  
parisc                randconfig-002-20231127   gcc  
parisc                randconfig-002-20231128   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20231127   gcc  
powerpc               randconfig-001-20231128   clang
powerpc               randconfig-002-20231127   gcc  
powerpc               randconfig-002-20231128   clang
powerpc               randconfig-003-20231127   gcc  
powerpc               randconfig-003-20231128   clang
powerpc64                        alldefconfig   gcc  
powerpc64             randconfig-001-20231127   gcc  
powerpc64             randconfig-001-20231128   clang
powerpc64             randconfig-002-20231127   gcc  
powerpc64             randconfig-002-20231128   clang
powerpc64             randconfig-003-20231127   gcc  
powerpc64             randconfig-003-20231128   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231128   clang
riscv                 randconfig-002-20231128   clang
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231128   gcc  
s390                  randconfig-002-20231128   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                    randconfig-001-20231128   gcc  
sh                    randconfig-002-20231128   gcc  
sh                          sdk7786_defconfig   gcc  
sh                            shmin_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                            allyesconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231128   gcc  
sparc64               randconfig-002-20231128   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231128   clang
um                    randconfig-002-20231128   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                          iss_defconfig   gcc  
xtensa                randconfig-001-20231128   gcc  
xtensa                randconfig-002-20231128   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

