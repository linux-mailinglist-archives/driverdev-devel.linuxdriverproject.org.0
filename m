Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBAB7F3AA2
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Nov 2023 01:19:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DE55961038;
	Wed, 22 Nov 2023 00:19:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DE55961038
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tMJewHHi9LVC; Wed, 22 Nov 2023 00:19:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DAA7060F91;
	Wed, 22 Nov 2023 00:19:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DAA7060F91
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AADEE1BF285
 for <devel@linuxdriverproject.org>; Wed, 22 Nov 2023 00:19:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 82548408A0
 for <devel@linuxdriverproject.org>; Wed, 22 Nov 2023 00:19:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82548408A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5MZuwELBIY-c for <devel@linuxdriverproject.org>;
 Wed, 22 Nov 2023 00:19:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B7CF340896
 for <devel@driverdev.osuosl.org>; Wed, 22 Nov 2023 00:19:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7CF340896
X-IronPort-AV: E=McAfee;i="6600,9927,10901"; a="423041009"
X-IronPort-AV: E=Sophos;i="6.04,217,1695711600"; d="scan'208";a="423041009"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 16:19:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,217,1695711600"; 
   d="scan'208";a="8261234"
Received: from lkp-server02.sh.intel.com (HELO b8de5498638e) ([10.239.97.151])
 by fmviesa002.fm.intel.com with ESMTP; 21 Nov 2023 16:19:43 -0800
Received: from kbuild by b8de5498638e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r5axw-0008RA-0F;
 Wed, 22 Nov 2023 00:19:40 +0000
Date: Wed, 22 Nov 2023 08:19:03 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 131d8d42e1e17856946a3ddf78cf02839799ac6a
Message-ID: <202311220800.hePP2NIR-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700612385; x=1732148385;
 h=date:from:to:cc:subject:message-id;
 bh=AqR8kWaeljw9WmNXgLfjqAvPZzLGvIY7Nxf1tcQQSUA=;
 b=Pd6YQWcU9G1WMjsfEV4dTEMTL238ADEYlQUx8PN9sZMzhCMOebN+dDSZ
 9/U6dcJxMEt8EpjFatp3ElpJvx6FtKBwXPDY49paS6X27aO83bjhaQr6i
 aPl0eMVmQ2QMGhpSPSXqkw+LI68SHV8Jhe7CcAs5Pv9V8/ZL95W6ULZN4
 QhA8qvJcu43LanksBqWJ59Y4VowX4to5A36S73hnqEt4mQc04VNUyB2yP
 vqpaAxmIYUCVKDkaDkkljlPO6J7WsMKO875Ykt+KR7gkb9LQpkmiu1YtI
 ixDu6Z4KVkoNQCauHHKk1BsnOyTixQDx9ouoe9jhgcpGyBgF1wdtAjmNw
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Pd6YQWcU
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
branch HEAD: 131d8d42e1e17856946a3ddf78cf02839799ac6a  crypto: qat: make adf_ctl_class constant

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
|-- arm64-defconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
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
|-- i386-randconfig-011-20231120
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- i386-randconfig-012-20231120
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- i386-randconfig-013-20231120
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- i386-randconfig-015-20231120
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|-- i386-randconfig-016-20231120
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
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
|-- loongarch-allyesconfig
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
|-- parisc-defconfig
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
|-- x86_64-randconfig-001-20231120
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- x86_64-randconfig-003-20231120
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- x86_64-randconfig-004-20231120
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
`-- x86_64-randconfig-006-20231120
    `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
clang_recent_errors
|-- arm64-allmodconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- arm64-allyesconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- hexagon-allmodconfig
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
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
|-- i386-buildonly-randconfig-001-20231120
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|-- i386-buildonly-randconfig-005-20231120
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- i386-randconfig-003-20231120
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- i386-randconfig-004-20231120
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- i386-randconfig-005-20231120
|   `-- drivers-pinctrl-pinctrl-cy8c95x0.c:warning:Function-parameter-or-member-gpio_reset-not-described-in-cy8c95x0_pinctrl
|-- i386-randconfig-006-20231120
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
|-- riscv-rv32_defconfig
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_index_io
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_io_condition
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:Function-parameter-or-member-init-not-described-in-init_zm_reg
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_INDEX_IO().-Prototype-was-for-init_index_io()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_IO_CONDITION().-Prototype-was-for-init_io_condition()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_RAM_RESTRICT_PLL().-Prototype-was-for-init_ram_restrict_pll()-instead
|   |-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG().-Prototype-was-for-init_zm_reg()-instead
|   `-- drivers-gpu-drm-nouveau-nvkm-subdev-bios-init.c:warning:expecting-prototype-for-INIT_ZM_REG16().-Prototype-was-for-init_zm_reg16()-instead
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

elapsed time: 2515m

configs tested: 199
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
arc                   randconfig-001-20231121   gcc  
arc                   randconfig-002-20231121   gcc  
arc                    vdk_hs38_smp_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   clang
arm                       multi_v4t_defconfig   gcc  
arm                   randconfig-001-20231121   gcc  
arm                   randconfig-002-20231121   gcc  
arm                   randconfig-003-20231121   gcc  
arm                   randconfig-004-20231121   gcc  
arm64                            allmodconfig   clang
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   clang
arm64                               defconfig   gcc  
arm64                 randconfig-001-20231121   gcc  
arm64                 randconfig-002-20231121   gcc  
arm64                 randconfig-003-20231121   gcc  
arm64                 randconfig-004-20231121   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                  randconfig-001-20231121   gcc  
csky                  randconfig-002-20231121   gcc  
hexagon                          allmodconfig   clang
hexagon                           allnoconfig   clang
hexagon                          allyesconfig   clang
hexagon                             defconfig   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231120   clang
i386         buildonly-randconfig-002-20231120   clang
i386         buildonly-randconfig-003-20231120   clang
i386         buildonly-randconfig-004-20231120   clang
i386         buildonly-randconfig-005-20231120   clang
i386         buildonly-randconfig-006-20231120   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231120   clang
i386                  randconfig-002-20231120   clang
i386                  randconfig-003-20231120   clang
i386                  randconfig-004-20231120   clang
i386                  randconfig-005-20231120   clang
i386                  randconfig-006-20231120   clang
i386                  randconfig-011-20231120   gcc  
i386                  randconfig-011-20231121   clang
i386                  randconfig-012-20231120   gcc  
i386                  randconfig-012-20231121   clang
i386                  randconfig-013-20231120   gcc  
i386                  randconfig-013-20231121   clang
i386                  randconfig-014-20231120   gcc  
i386                  randconfig-014-20231121   clang
i386                  randconfig-015-20231120   gcc  
i386                  randconfig-015-20231121   clang
i386                  randconfig-016-20231120   gcc  
i386                  randconfig-016-20231121   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231121   gcc  
loongarch             randconfig-002-20231121   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                            mac_defconfig   gcc  
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
nios2                 randconfig-001-20231121   gcc  
nios2                 randconfig-002-20231121   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231121   gcc  
parisc                randconfig-002-20231121   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc                     ep8248e_defconfig   gcc  
powerpc                    klondike_defconfig   gcc  
powerpc                   motionpro_defconfig   gcc  
powerpc               randconfig-001-20231121   gcc  
powerpc               randconfig-002-20231121   gcc  
powerpc               randconfig-003-20231121   gcc  
powerpc64             randconfig-001-20231121   gcc  
powerpc64             randconfig-002-20231121   gcc  
powerpc64             randconfig-003-20231121   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                    nommu_k210_defconfig   gcc  
riscv                 randconfig-001-20231121   gcc  
riscv                 randconfig-002-20231121   gcc  
riscv                          rv32_defconfig   clang
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                    randconfig-001-20231121   gcc  
sh                    randconfig-002-20231121   gcc  
sh                          rsk7264_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64               randconfig-001-20231121   gcc  
sparc64               randconfig-002-20231121   gcc  
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                    randconfig-001-20231121   gcc  
um                    randconfig-002-20231121   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231120   clang
x86_64       buildonly-randconfig-001-20231121   gcc  
x86_64       buildonly-randconfig-002-20231120   clang
x86_64       buildonly-randconfig-002-20231121   gcc  
x86_64       buildonly-randconfig-003-20231120   clang
x86_64       buildonly-randconfig-003-20231121   gcc  
x86_64       buildonly-randconfig-004-20231120   clang
x86_64       buildonly-randconfig-004-20231121   gcc  
x86_64       buildonly-randconfig-005-20231120   clang
x86_64       buildonly-randconfig-005-20231121   gcc  
x86_64       buildonly-randconfig-006-20231120   clang
x86_64       buildonly-randconfig-006-20231121   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20231120   gcc  
x86_64                randconfig-002-20231120   gcc  
x86_64                randconfig-003-20231120   gcc  
x86_64                randconfig-004-20231120   gcc  
x86_64                randconfig-005-20231120   gcc  
x86_64                randconfig-006-20231120   gcc  
x86_64                randconfig-011-20231120   clang
x86_64                randconfig-011-20231121   gcc  
x86_64                randconfig-012-20231120   clang
x86_64                randconfig-012-20231121   gcc  
x86_64                randconfig-013-20231120   clang
x86_64                randconfig-013-20231121   gcc  
x86_64                randconfig-014-20231120   clang
x86_64                randconfig-014-20231121   gcc  
x86_64                randconfig-015-20231120   clang
x86_64                randconfig-015-20231121   gcc  
x86_64                randconfig-016-20231120   clang
x86_64                randconfig-016-20231121   gcc  
x86_64                randconfig-071-20231120   clang
x86_64                randconfig-071-20231121   gcc  
x86_64                randconfig-072-20231120   clang
x86_64                randconfig-072-20231121   gcc  
x86_64                randconfig-073-20231120   clang
x86_64                randconfig-073-20231121   gcc  
x86_64                randconfig-074-20231120   clang
x86_64                randconfig-074-20231121   gcc  
x86_64                randconfig-075-20231120   clang
x86_64                randconfig-075-20231121   gcc  
x86_64                randconfig-076-20231120   clang
x86_64                randconfig-076-20231121   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                randconfig-001-20231121   gcc  
xtensa                randconfig-002-20231121   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
