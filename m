Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF66F36CFB5
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Apr 2021 01:48:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1D1F83DF8;
	Tue, 27 Apr 2021 23:48:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bUVlUyj9sVnP; Tue, 27 Apr 2021 23:48:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1165083DC0;
	Tue, 27 Apr 2021 23:48:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A12661C11AC
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 23:47:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 90AA84026A
 for <devel@linuxdriverproject.org>; Tue, 27 Apr 2021 23:47:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XaDKEfVi6pwg for <devel@linuxdriverproject.org>;
 Tue, 27 Apr 2021 23:47:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 97CB8404E1
 for <devel@driverdev.osuosl.org>; Tue, 27 Apr 2021 23:47:26 +0000 (UTC)
IronPort-SDR: fFjIybesiSawHNodHVXFlt9KzJSi/y/ljYXuaHBRYN0oF6VzhIAMo9AFRtwN0yiVA7QBYAzIwW
 vY5z0QRCemFA==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="196725060"
X-IronPort-AV: E=Sophos;i="5.82,256,1613462400"; d="scan'208";a="196725060"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 16:47:25 -0700
IronPort-SDR: EnXlTgeKUCtwgk/4MXhDTN/CHRna8iSj8dRTNAw107lk0vXNlkkC4+VWXpgad9CKOG5tOQk078
 zMIwqaBmKexg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,256,1613462400"; d="scan'208";a="403452291"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 27 Apr 2021 16:47:24 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lbXQJ-0006lp-Ab; Tue, 27 Apr 2021 23:47:23 +0000
Date: Wed, 28 Apr 2021 07:47:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 8846c621aaf370c1798bc2e5bd10ef9a313cd594
Message-ID: <6088a284.moNKN0SYZa18+xBe%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
branch HEAD: 8846c621aaf370c1798bc2e5bd10ef9a313cd594  readfile.2: new page describing readfile(2)

elapsed time: 723m

configs tested: 130
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

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
mips                         tb0287_defconfig
sh                          rsk7264_defconfig
mips                     decstation_defconfig
powerpc                   currituck_defconfig
powerpc                     tqm8548_defconfig
m68k                            q40_defconfig
mips                     loongson1c_defconfig
arm                       spear13xx_defconfig
mips                        maltaup_defconfig
mips                           rs90_defconfig
powerpc                     mpc83xx_defconfig
microblaze                          defconfig
openrisc                 simple_smp_defconfig
arm                  colibri_pxa300_defconfig
xtensa                    xip_kc705_defconfig
sh                         apsh4a3a_defconfig
arm                           stm32_defconfig
s390                             alldefconfig
mips                      maltaaprp_defconfig
arm                      tct_hammer_defconfig
arm                      pxa255-idp_defconfig
sh                           sh2007_defconfig
powerpc                      makalu_defconfig
powerpc                    amigaone_defconfig
sh                   sh7724_generic_defconfig
ia64                          tiger_defconfig
mips                        jmr3927_defconfig
arm                            xcep_defconfig
arc                                 defconfig
mips                            ar7_defconfig
mips                       capcella_defconfig
powerpc                   bluestone_defconfig
arm                       mainstone_defconfig
arm                   milbeaut_m10v_defconfig
mips                     loongson1b_defconfig
arm                             mxs_defconfig
sh                          r7785rp_defconfig
arm                          ep93xx_defconfig
sh                          rsk7201_defconfig
sh                               alldefconfig
m68k                       m5475evb_defconfig
mips                      fuloong2e_defconfig
sh                          sdk7780_defconfig
arm                        keystone_defconfig
h8300                     edosk2674_defconfig
xtensa                         virt_defconfig
sh                          rsk7203_defconfig
mips                        bcm47xx_defconfig
microblaze                      mmu_defconfig
riscv                            alldefconfig
m68k                         amcore_defconfig
sh                  sh7785lcr_32bit_defconfig
arc                          axs103_defconfig
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
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
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
i386                 randconfig-a005-20210426
i386                 randconfig-a002-20210426
i386                 randconfig-a001-20210426
i386                 randconfig-a006-20210426
i386                 randconfig-a004-20210426
i386                 randconfig-a003-20210426
x86_64               randconfig-a015-20210426
x86_64               randconfig-a016-20210426
x86_64               randconfig-a011-20210426
x86_64               randconfig-a014-20210426
x86_64               randconfig-a012-20210426
x86_64               randconfig-a013-20210426
i386                 randconfig-a014-20210426
i386                 randconfig-a012-20210426
i386                 randconfig-a011-20210426
i386                 randconfig-a013-20210426
i386                 randconfig-a015-20210426
i386                 randconfig-a016-20210426
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
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
x86_64               randconfig-a002-20210426
x86_64               randconfig-a004-20210426
x86_64               randconfig-a001-20210426
x86_64               randconfig-a006-20210426
x86_64               randconfig-a005-20210426
x86_64               randconfig-a003-20210426

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
