Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BDC7F25CE
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Nov 2023 07:35:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0654A40182;
	Tue, 21 Nov 2023 06:34:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0654A40182
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Vm8nKH8jVToZ; Tue, 21 Nov 2023 06:34:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9B30E40207;
	Tue, 21 Nov 2023 06:34:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B30E40207
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 39CE61BF3D7
 for <devel@linuxdriverproject.org>; Tue, 21 Nov 2023 06:34:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1B1BA80C15
 for <devel@linuxdriverproject.org>; Tue, 21 Nov 2023 06:34:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1B1BA80C15
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4aJUL3wecIWO for <devel@linuxdriverproject.org>;
 Tue, 21 Nov 2023 06:34:54 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D43ED80BC7
 for <devel@driverdev.osuosl.org>; Tue, 21 Nov 2023 06:34:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D43ED80BC7
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="13323496"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="13323496"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 22:34:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="890161706"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="890161706"
Received: from lkp-server02.sh.intel.com (HELO b8de5498638e) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 20 Nov 2023 22:34:50 -0800
Received: from kbuild by b8de5498638e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1r5KKf-0007QT-2H;
 Tue, 21 Nov 2023 06:34:19 +0000
Date: Tue, 21 Nov 2023 14:25:12 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD REGRESSION
 a260586a7ea6421f743308ef55f7ee80ef3488ac
Message-ID: <202311211409.fcNXWvvu-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700548494; x=1732084494;
 h=date:from:to:cc:subject:message-id;
 bh=gW20I0lmvBExg/S+0fbyKwb/q15Gu7l19dLVs+s8lzw=;
 b=dozReNr0Xd2YD8IEqkjiGb44HL7gH/3N0BYpiVKBOaZrMRCMYHnjlL7A
 nbBthgkxJZ+HBjBDdMqiOPzdwds5Bzls4VOwGae+PNEYWfSrT3IG8QYHF
 qsfutigYaS15s1dmS9vUbn732YE3pUiwYEslwoitKf2eytW5nPB5LQWjS
 LAEu8ES5Xi2ttzPxOL4idm5ksohFEXv33IggztT/YlBaLY1c7U55IB1dj
 S7oS517DvI+ggGfDAlGm1Tm/5rQ3hn9tacWZD/v0431S2uz4t17id1GJk
 veIg4aPpPJA9YfTQr0IIFUy9eZQchMR0QQD5DjCLwoR9lCi7wTNjTteaV
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dozReNr0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: a260586a7ea6421f743308ef55f7ee80ef3488ac  sysfs: do not create empty directories if no attributes are present

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202311050113.QCp9Dss3-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202311201751.eHNoBaoW-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/platform/x86/amd/hsmp.c:474:16: error: implicit declaration of function 'devm_device_add_groups'; did you mean 'devm_device_add_group'? [-Werror=implicit-function-declaration]
drivers/platform/x86/amd/hsmp.c:474:9: error: call to undeclared function 'devm_device_add_groups'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- i386-randconfig-141-20231121
|   |-- drivers-net-ethernet-intel-igb-igb_ethtool.c-igb_loopback_cleanup()-error:uninitialized-symbol-phy_reg-.
|   |-- drivers-net-ethernet-intel-igb-igb_main.c-igb_clean_rx_irq()-error:skb-dereferencing-possible-ERR_PTR()
|   |-- drivers-net-ethernet-intel-igc-igc_main.c-igc_clean_rx_irq()-error:skb-dereferencing-possible-ERR_PTR()
|   |-- drivers-net-ethernet-intel-igc-igc_main.c-igc_xdp_run_prog()-warn:passing-zero-to-ERR_PTR
|   |-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c-ixgbe_clean_rx_irq()-error:skb-dereferencing-possible-ERR_PTR()
|   |-- drivers-net-ethernet-intel-ixgbe-ixgbe_main.c-ixgbe_request_msix_irqs()-warn:entry-vector-from-request_irq()-not-released-on-lines:.
|   |-- drivers-net-ethernet-intel-ixgbe-ixgbe_phy.c-ixgbe_get_sfp_init_sequence_offsets()-warn:missing-unwind-goto
|   |-- drivers-net-ethernet-intel-ixgbe-ixgbe_phy.c-ixgbe_identify_qsfp_module_generic()-warn:missing-unwind-goto
|   |-- drivers-net-ethernet-intel-ixgbe-ixgbe_phy.c-ixgbe_identify_sfp_module_generic()-warn:missing-unwind-goto
|   |-- drivers-net-ethernet-intel-ixgbe-ixgbe_x540.c-ixgbe_release_swfw_sync_semaphore()-warn:inconsistent-indenting
|   `-- drivers-net-ethernet-microchip-lan743x_main.c-lan743x_pci_init()-warn:missing-error-code-ret
`-- x86_64-randconfig-005-20231120
    `-- drivers-platform-x86-amd-hsmp.c:error:implicit-declaration-of-function-devm_device_add_groups
clang_recent_errors
|-- x86_64-allyesconfig
|   `-- drivers-platform-x86-amd-hsmp.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations
`-- x86_64-buildonly-randconfig-006-20231120
    `-- drivers-platform-x86-amd-hsmp.c:error:call-to-undeclared-function-devm_device_add_groups-ISO-C99-and-later-do-not-support-implicit-function-declarations

elapsed time: 1441m

configs tested: 124
configs skipped: 2

tested configs:
arc                   randconfig-001-20231120   gcc  
arc                   randconfig-002-20231120   gcc  
arm                   randconfig-001-20231120   clang
arm                   randconfig-002-20231120   clang
arm                   randconfig-003-20231120   clang
arm                   randconfig-004-20231120   clang
arm64                 randconfig-001-20231120   clang
arm64                 randconfig-002-20231120   clang
arm64                 randconfig-003-20231120   clang
arm64                 randconfig-004-20231120   clang
csky                  randconfig-001-20231120   gcc  
csky                  randconfig-002-20231120   gcc  
hexagon               randconfig-001-20231120   clang
hexagon               randconfig-002-20231120   clang
i386                             allmodconfig   clang
i386                              allnoconfig   clang
i386                             allyesconfig   clang
i386         buildonly-randconfig-001-20231120   clang
i386         buildonly-randconfig-002-20231120   clang
i386         buildonly-randconfig-003-20231120   clang
i386         buildonly-randconfig-004-20231120   clang
i386         buildonly-randconfig-005-20231120   clang
i386         buildonly-randconfig-006-20231120   clang
i386                                defconfig   gcc  
i386                  randconfig-001-20231120   clang
i386                  randconfig-002-20231120   clang
i386                  randconfig-003-20231120   clang
i386                  randconfig-004-20231120   clang
i386                  randconfig-005-20231120   clang
i386                  randconfig-006-20231120   clang
i386                  randconfig-011-20231120   gcc  
i386                  randconfig-012-20231120   gcc  
i386                  randconfig-013-20231120   gcc  
i386                  randconfig-014-20231120   gcc  
i386                  randconfig-015-20231120   gcc  
i386                  randconfig-016-20231120   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231120   gcc  
loongarch             randconfig-002-20231120   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
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
nios2                 randconfig-001-20231120   gcc  
nios2                 randconfig-002-20231120   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                randconfig-001-20231120   gcc  
parisc                randconfig-002-20231120   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   clang
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   clang
powerpc               randconfig-001-20231120   clang
powerpc               randconfig-002-20231120   clang
powerpc               randconfig-003-20231120   clang
powerpc64             randconfig-001-20231120   clang
powerpc64             randconfig-002-20231120   clang
powerpc64             randconfig-003-20231120   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   clang
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231120   clang
riscv                 randconfig-002-20231120   clang
riscv                          rv32_defconfig   clang
s390                  randconfig-001-20231120   gcc  
s390                  randconfig-002-20231120   gcc  
sh                    randconfig-001-20231120   gcc  
sh                    randconfig-002-20231120   gcc  
sparc64               randconfig-001-20231120   gcc  
sparc64               randconfig-002-20231120   gcc  
um                    randconfig-001-20231120   clang
um                    randconfig-002-20231120   clang
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   clang
x86_64       buildonly-randconfig-001-20231120   clang
x86_64       buildonly-randconfig-002-20231120   clang
x86_64       buildonly-randconfig-003-20231120   clang
x86_64       buildonly-randconfig-004-20231120   clang
x86_64       buildonly-randconfig-005-20231120   clang
x86_64       buildonly-randconfig-006-20231120   clang
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20231120   gcc  
x86_64                randconfig-002-20231120   gcc  
x86_64                randconfig-003-20231120   gcc  
x86_64                randconfig-004-20231120   gcc  
x86_64                randconfig-005-20231120   gcc  
x86_64                randconfig-006-20231120   gcc  
x86_64                randconfig-011-20231120   clang
x86_64                randconfig-012-20231120   clang
x86_64                randconfig-013-20231120   clang
x86_64                randconfig-014-20231120   clang
x86_64                randconfig-015-20231120   clang
x86_64                randconfig-016-20231120   clang
x86_64                randconfig-071-20231120   clang
x86_64                randconfig-072-20231120   clang
x86_64                randconfig-073-20231120   clang
x86_64                randconfig-074-20231120   clang
x86_64                randconfig-075-20231120   clang
x86_64                randconfig-076-20231120   clang
x86_64                          rhel-8.3-rust   clang
xtensa                randconfig-001-20231120   gcc  
xtensa                randconfig-002-20231120   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
