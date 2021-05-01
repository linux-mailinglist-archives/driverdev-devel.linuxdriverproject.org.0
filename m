Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0699370508
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 May 2021 04:36:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CF6A843286;
	Sat,  1 May 2021 02:36:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4LV3QqpUTDdP; Sat,  1 May 2021 02:36:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E1D7B40175;
	Sat,  1 May 2021 02:36:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 640F41C11CE
 for <devel@linuxdriverproject.org>; Sat,  1 May 2021 02:36:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5376B40175
 for <devel@linuxdriverproject.org>; Sat,  1 May 2021 02:36:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DXcNsZ5eQCuw for <devel@linuxdriverproject.org>;
 Sat,  1 May 2021 02:36:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2E2844014E
 for <devel@driverdev.osuosl.org>; Sat,  1 May 2021 02:36:40 +0000 (UTC)
IronPort-SDR: hdJ61PYbQmXo/iIKEnKc6XpLb1saimd6TLJq76pKyT2uXR8ivqH3cE3P4oltvbaiSi4vmVLZ4J
 cetul3yR4J2w==
X-IronPort-AV: E=McAfee;i="6200,9189,9970"; a="282762062"
X-IronPort-AV: E=Sophos;i="5.82,264,1613462400"; d="scan'208";a="282762062"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 19:36:38 -0700
IronPort-SDR: mTmtK+IgxPEaYbshALYy+YTLT7327/zAw5SmPTimeOR6vNzKVm0XVReUjSjAPx1s85RnGmoGMO
 i3zP+yrOhBDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,264,1613462400"; d="scan'208";a="426669965"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 30 Apr 2021 19:36:36 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lcfUh-0008OG-E7; Sat, 01 May 2021 02:36:35 +0000
Date: Sat, 01 May 2021 10:35:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:umn.edu-reverts] BUILD SUCCESS
 1c218105914cc336997fa930205e94fa2add65d7
Message-ID: <608cbe7a.zHf1Wc16kK9YDXXc%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git umn.edu-reverts
branch HEAD: 1c218105914cc336997fa930205e94fa2add65d7  cdrom: gdrom: deallocate struct gdrom_unit fields in remove_gdrom

elapsed time: 720m

configs tested: 133
configs skipped: 2

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
m68k                          hp300_defconfig
arc                              allyesconfig
arm                            hisi_defconfig
sh                           se7343_defconfig
arc                        nsimosci_defconfig
sh                           se7780_defconfig
m68k                        m5407c3_defconfig
sh                           se7712_defconfig
powerpc                      ppc40x_defconfig
powerpc                   bluestone_defconfig
nios2                         3c120_defconfig
powerpc                 mpc832x_rdb_defconfig
mips                        omega2p_defconfig
arm                           corgi_defconfig
sh                   sh7770_generic_defconfig
mips                        bcm47xx_defconfig
powerpc                 mpc834x_mds_defconfig
arm                        clps711x_defconfig
sh                           se7724_defconfig
arm                            mmp2_defconfig
arm                     am200epdkit_defconfig
arm                       versatile_defconfig
arm                        shmobile_defconfig
powerpc                     pseries_defconfig
mips                      loongson3_defconfig
powerpc                 mpc8315_rdb_defconfig
parisc                              defconfig
mips                        jmr3927_defconfig
s390                             alldefconfig
mips                          ath79_defconfig
m68k                        stmark2_defconfig
powerpc                     tqm5200_defconfig
arm                             mxs_defconfig
arm                             rpc_defconfig
m68k                       bvme6000_defconfig
mips                          ath25_defconfig
ia64                                defconfig
mips                           jazz_defconfig
openrisc                            defconfig
sh                             shx3_defconfig
sh                  sh7785lcr_32bit_defconfig
nds32                            alldefconfig
arm                       mainstone_defconfig
powerpc                     mpc83xx_defconfig
h8300                               defconfig
sh                           se7619_defconfig
arm                       spear13xx_defconfig
h8300                       h8s-sim_defconfig
mips                           ip27_defconfig
sh                        edosk7760_defconfig
sh                   secureedge5410_defconfig
arm                         mv78xx0_defconfig
parisc                           alldefconfig
powerpc                      mgcoge_defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                        fsp2_defconfig
h8300                    h8300h-sim_defconfig
sh                     magicpanelr2_defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
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
x86_64               randconfig-a003-20210430
x86_64               randconfig-a004-20210430
x86_64               randconfig-a002-20210430
x86_64               randconfig-a006-20210430
x86_64               randconfig-a001-20210430
x86_64               randconfig-a005-20210430
i386                 randconfig-a004-20210430
i386                 randconfig-a001-20210430
i386                 randconfig-a003-20210430
i386                 randconfig-a002-20210430
i386                 randconfig-a005-20210430
i386                 randconfig-a006-20210430
i386                 randconfig-a013-20210430
i386                 randconfig-a011-20210430
i386                 randconfig-a016-20210430
i386                 randconfig-a015-20210430
i386                 randconfig-a012-20210430
i386                 randconfig-a014-20210430
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
x86_64               randconfig-a011-20210430
x86_64               randconfig-a016-20210430
x86_64               randconfig-a013-20210430
x86_64               randconfig-a014-20210430
x86_64               randconfig-a012-20210430
x86_64               randconfig-a015-20210430

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
