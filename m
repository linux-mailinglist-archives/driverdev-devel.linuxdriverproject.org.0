Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61110374CE8
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 May 2021 03:36:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E329D40646;
	Thu,  6 May 2021 01:35:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LiCXG9oZWmpf; Thu,  6 May 2021 01:35:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 21DB340261;
	Thu,  6 May 2021 01:35:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 45C051BF421
 for <devel@linuxdriverproject.org>; Thu,  6 May 2021 01:35:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 34F0840261
 for <devel@linuxdriverproject.org>; Thu,  6 May 2021 01:35:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9ftkSKkg_Pjb for <devel@linuxdriverproject.org>;
 Thu,  6 May 2021 01:35:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 4964E40239
 for <devel@driverdev.osuosl.org>; Thu,  6 May 2021 01:35:48 +0000 (UTC)
IronPort-SDR: BzCNMwoMA3BN9KuP0Nxo14zEvRuqFbDMY+Xw/qL9gQWUMA9OPUNXT5EdzqCksZQFDo+5/5mZvC
 g/qpSnCRktrw==
X-IronPort-AV: E=McAfee;i="6200,9189,9975"; a="283782940"
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="283782940"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2021 18:35:47 -0700
IronPort-SDR: ilCHNc/AtfUkO6YdM60WvYP8W4qbmGVfF/Vmnug72WBIXSJ2jAOGNsvEpy1iSyFo48HOsodmfQ
 LiENfgpwi+mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,276,1613462400"; d="scan'208";a="469219159"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 05 May 2021 18:35:45 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1leSvZ-000AGQ-3i; Thu, 06 May 2021 01:35:45 +0000
Date: Thu, 06 May 2021 09:35:17 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS WITH WARNING
 0e3136771b58dda2bec0a0bfedab119e77a88c9b
Message-ID: <609347d5.cz51Z6FlWV38EILT%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 0e3136771b58dda2bec0a0bfedab119e77a88c9b  staging: mt7621-dts: properly organize pcie node

Warning in current branch:

drivers/comedi/drivers/jr3_pci.c:507:22: warning: variable 'min_full_scale' set but not used [-Wunused-but-set-variable]

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
|-- ia64-allmodconfig
|   `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used
`-- sparc-allyesconfig
    `-- drivers-comedi-drivers-jr3_pci.c:warning:variable-min_full_scale-set-but-not-used

elapsed time: 724m

configs tested: 117
configs skipped: 2

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
sh                           se7705_defconfig
sh                             sh03_defconfig
sh                         ecovec24_defconfig
mips                            ar7_defconfig
powerpc                     asp8347_defconfig
sparc64                          alldefconfig
mips                            e55_defconfig
mips                        vocore2_defconfig
powerpc                        icon_defconfig
powerpc                    socrates_defconfig
powerpc                     tqm5200_defconfig
sh                          sdk7780_defconfig
m68k                          atari_defconfig
m68k                        mvme147_defconfig
arm                      integrator_defconfig
ia64                          tiger_defconfig
m68k                       bvme6000_defconfig
powerpc                     tqm8548_defconfig
m68k                        m5272c3_defconfig
mips                           ip22_defconfig
powerpc                      makalu_defconfig
m68k                            q40_defconfig
powerpc                     sbc8548_defconfig
arm                         s5pv210_defconfig
arm                         lpc32xx_defconfig
arm                            zeus_defconfig
s390                             allyesconfig
arm                          pcm027_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                     ppa8548_defconfig
arm                       imx_v4_v5_defconfig
arm                      footbridge_defconfig
riscv                             allnoconfig
powerpc                     mpc83xx_defconfig
arm                          pxa910_defconfig
powerpc                 mpc836x_mds_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                 mpc836x_rdk_defconfig
arc                            hsdk_defconfig
mips                       rbtx49xx_defconfig
sh                        sh7785lcr_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20210505
x86_64               randconfig-a003-20210505
x86_64               randconfig-a005-20210505
x86_64               randconfig-a002-20210505
x86_64               randconfig-a006-20210505
x86_64               randconfig-a004-20210505
i386                 randconfig-a003-20210505
i386                 randconfig-a006-20210505
i386                 randconfig-a001-20210505
i386                 randconfig-a005-20210505
i386                 randconfig-a004-20210505
i386                 randconfig-a002-20210505
i386                 randconfig-a015-20210505
i386                 randconfig-a013-20210505
i386                 randconfig-a016-20210505
i386                 randconfig-a014-20210505
i386                 randconfig-a012-20210505
i386                 randconfig-a011-20210505
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a014-20210505
x86_64               randconfig-a015-20210505
x86_64               randconfig-a012-20210505
x86_64               randconfig-a013-20210505
x86_64               randconfig-a011-20210505
x86_64               randconfig-a016-20210505

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
