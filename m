Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A62E36E3EB
	for <lists+driverdev-devel@lfdr.de>; Thu, 29 Apr 2021 06:01:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DC149419D2;
	Thu, 29 Apr 2021 04:01:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 62fjDbihsy1W; Thu, 29 Apr 2021 04:01:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 70117419B2;
	Thu, 29 Apr 2021 04:01:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DDD3B1BF9D1
 for <devel@linuxdriverproject.org>; Thu, 29 Apr 2021 04:00:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C3B5440111
 for <devel@linuxdriverproject.org>; Thu, 29 Apr 2021 04:00:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8r-6A95zfF6h for <devel@linuxdriverproject.org>;
 Thu, 29 Apr 2021 04:00:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DC38840119
 for <devel@driverdev.osuosl.org>; Thu, 29 Apr 2021 04:00:52 +0000 (UTC)
IronPort-SDR: CROhTVuoJeVczpsk+PRf5emdq/OWw/TJn8uUuP94aKsrFYP8zp6pQm3R6AuKfjlccJQEAzDdEN
 X0T29duUy+Ow==
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="177026053"
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="177026053"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2021 21:00:52 -0700
IronPort-SDR: Kgr1qNz5Mu2B1pzzto6CKYoLIqz10ejrS/CP0XAwVD3uBLKPuk8EhQevy/vdRnWJAqGZgNjNV4
 fP2Zxnm80XaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,258,1613462400"; d="scan'208";a="387981343"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 28 Apr 2021 21:00:49 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lbxr7-0007T9-25; Thu, 29 Apr 2021 04:00:49 +0000
Date: Thu, 29 Apr 2021 12:00:03 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:umn.edu-reverts] BUILD SUCCESS
 73d201b5c3bcd9af293eb8b5f8010f479b96a590
Message-ID: <608a2f43.pCih3/osFzvysUr8%lkp@intel.com>
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
branch HEAD: 73d201b5c3bcd9af293eb8b5f8010f479b96a590  Revert "crypto: cavium/nitrox - add an error message to explain the failure of pci_request_mem_regions"

elapsed time: 721m

configs tested: 142
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
riscv                            allyesconfig
i386                             allyesconfig
arm                         hackkit_defconfig
arm                        shmobile_defconfig
mips                           mtx1_defconfig
arm                       netwinder_defconfig
arm                          ep93xx_defconfig
sh                          kfr2r09_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                        fsp2_defconfig
arm                           u8500_defconfig
arm                         bcm2835_defconfig
mips                            ar7_defconfig
powerpc                  storcenter_defconfig
arm                        keystone_defconfig
sh                            shmin_defconfig
mips                          ath25_defconfig
powerpc                    adder875_defconfig
sh                        dreamcast_defconfig
mips                      loongson3_defconfig
xtensa                  cadence_csp_defconfig
s390                          debug_defconfig
sh                         ap325rxa_defconfig
mips                        qi_lb60_defconfig
mips                             allmodconfig
alpha                               defconfig
mips                  maltasmvp_eva_defconfig
arc                           tb10x_defconfig
arm                      jornada720_defconfig
powerpc                 mpc837x_rdb_defconfig
sparc                            alldefconfig
powerpc                      katmai_defconfig
powerpc                    gamecube_defconfig
arm                        mini2440_defconfig
i386                                defconfig
arm                          iop32x_defconfig
mips                  decstation_64_defconfig
arm                       cns3420vb_defconfig
powerpc                      bamboo_defconfig
um                               allyesconfig
arm                       multi_v4t_defconfig
mips                   sb1250_swarm_defconfig
arm                         nhk8815_defconfig
arm                       omap2plus_defconfig
i386                             alldefconfig
m68k                         apollo_defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                      makalu_defconfig
sh                           se7722_defconfig
m68k                             alldefconfig
powerpc                     tqm5200_defconfig
powerpc                 linkstation_defconfig
arm                        realview_defconfig
powerpc                     sbc8548_defconfig
mips                           ip27_defconfig
arc                      axs103_smp_defconfig
powerpc                      arches_defconfig
powerpc                     taishan_defconfig
arm                          imote2_defconfig
ia64                          tiger_defconfig
arm                           omap1_defconfig
riscv                    nommu_virt_defconfig
powerpc                         wii_defconfig
arm                        spear3xx_defconfig
arm                       mainstone_defconfig
mips                      pic32mzda_defconfig
arc                    vdk_hs38_smp_defconfig
arm                        multi_v7_defconfig
m68k                             allyesconfig
mips                       rbtx49xx_defconfig
mips                          ath79_defconfig
powerpc                 mpc8315_rdb_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
csky                                defconfig
alpha                            allyesconfig
nios2                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20210428
i386                 randconfig-a002-20210428
i386                 randconfig-a001-20210428
i386                 randconfig-a006-20210428
i386                 randconfig-a003-20210428
i386                 randconfig-a004-20210428
x86_64               randconfig-a015-20210428
x86_64               randconfig-a016-20210428
x86_64               randconfig-a011-20210428
x86_64               randconfig-a014-20210428
x86_64               randconfig-a013-20210428
x86_64               randconfig-a012-20210428
i386                 randconfig-a012-20210428
i386                 randconfig-a014-20210428
i386                 randconfig-a013-20210428
i386                 randconfig-a011-20210428
i386                 randconfig-a015-20210428
i386                 randconfig-a016-20210428
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20210428
x86_64               randconfig-a002-20210428
x86_64               randconfig-a005-20210428
x86_64               randconfig-a001-20210428
x86_64               randconfig-a003-20210428
x86_64               randconfig-a006-20210428

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
