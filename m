Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A9C386B10
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 May 2021 22:13:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 52AC140516;
	Mon, 17 May 2021 20:13:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8EIOVI5pO3sV; Mon, 17 May 2021 20:13:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7952D401F0;
	Mon, 17 May 2021 20:13:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4DB8F1BF348
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 20:13:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3C7C183ED0
 for <devel@linuxdriverproject.org>; Mon, 17 May 2021 20:13:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oJhOdIdcYGsH for <devel@linuxdriverproject.org>;
 Mon, 17 May 2021 20:13:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2ECD983EE0
 for <devel@driverdev.osuosl.org>; Mon, 17 May 2021 20:13:13 +0000 (UTC)
IronPort-SDR: FVgjfp594M84lm8pQIS9frQsuvPDPyyyXhaWxibzmUkx+BVR5B9Xi1qx59DOZW8DK9iR86T4Ti
 YludgxaWLq5A==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="200609250"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="200609250"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 13:13:12 -0700
IronPort-SDR: 8wcNYA71unToydfbABaguSB7a4/Xi/cood1YUTHjgHVLQEL/yplL5IYHYaGh8gLtImptlU+7Dr
 Ztd0O5hCzhIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="466035029"
Received: from lkp-server01.sh.intel.com (HELO ddd90b05c979) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 17 May 2021 13:13:10 -0700
Received: from kbuild by ddd90b05c979 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lijby-0001sY-8x; Mon, 17 May 2021 20:13:10 +0000
Date: Tue, 18 May 2021 04:13:01 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kbuild] BUILD SUCCESS
 a09f3f9e3536c80bc02dbfb7883d91cc2a5c4621
Message-ID: <60a2ce4d.Mx4iySPTANywEsZr%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kbuild
branch HEAD: a09f3f9e3536c80bc02dbfb7883d91cc2a5c4621  kbuild: allow arches to have their own "bootloader.sh"

elapsed time: 723m

configs tested: 152
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                           stm32_defconfig
mips                        nlm_xlr_defconfig
mips                      loongson3_defconfig
sh                        edosk7705_defconfig
m68k                                defconfig
sh                        edosk7760_defconfig
m68k                       m5249evb_defconfig
x86_64                           alldefconfig
powerpc                    ge_imp3a_defconfig
mips                     cu1000-neo_defconfig
mips                           ip22_defconfig
sh                          rsk7201_defconfig
arm                       aspeed_g5_defconfig
mips                           rs90_defconfig
mips                          rb532_defconfig
s390                             alldefconfig
nds32                             allnoconfig
arm                       cns3420vb_defconfig
powerpc                        warp_defconfig
arm                          badge4_defconfig
arc                    vdk_hs38_smp_defconfig
m68k                         amcore_defconfig
arm                        keystone_defconfig
um                                  defconfig
sh                      rts7751r2d1_defconfig
powerpc                      pasemi_defconfig
nios2                         10m50_defconfig
arm                      pxa255-idp_defconfig
sh                           se7619_defconfig
arm                         cm_x300_defconfig
sh                           se7750_defconfig
sh                                  defconfig
sh                           se7712_defconfig
mips                           ip32_defconfig
arm                           u8500_defconfig
arm                          iop32x_defconfig
powerpc                 mpc85xx_cds_defconfig
nios2                         3c120_defconfig
arm                         socfpga_defconfig
powerpc                 mpc8560_ads_defconfig
ia64                        generic_defconfig
xtensa                              defconfig
mips                         rt305x_defconfig
arc                          axs101_defconfig
arm                         lpc18xx_defconfig
sh                         apsh4a3a_defconfig
sh                           sh2007_defconfig
i386                             allyesconfig
m68k                       bvme6000_defconfig
arm                          ixp4xx_defconfig
arm                          collie_defconfig
powerpc                    amigaone_defconfig
arc                      axs103_smp_defconfig
riscv                            alldefconfig
ia64                      gensparse_defconfig
mips                     decstation_defconfig
mips                       lemote2f_defconfig
s390                       zfcpdump_defconfig
arm                            zeus_defconfig
ia64                          tiger_defconfig
csky                             alldefconfig
xtensa                       common_defconfig
arc                         haps_hs_defconfig
alpha                               defconfig
openrisc                    or1ksim_defconfig
arc                                 defconfig
arm                            qcom_defconfig
arc                 nsimosci_hs_smp_defconfig
sparc64                             defconfig
m68k                          amiga_defconfig
sh                            titan_defconfig
m68k                            mac_defconfig
arm                            mps2_defconfig
mips                         cobalt_defconfig
arm                            lart_defconfig
mips                          malta_defconfig
m68k                       m5275evb_defconfig
powerpc                     tqm8548_defconfig
sh                          lboxre2_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
nios2                               defconfig
arc                              allyesconfig
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
i386                 randconfig-a003-20210517
i386                 randconfig-a001-20210517
i386                 randconfig-a004-20210517
i386                 randconfig-a005-20210517
i386                 randconfig-a002-20210517
i386                 randconfig-a006-20210517
x86_64               randconfig-a012-20210517
x86_64               randconfig-a015-20210517
x86_64               randconfig-a011-20210517
x86_64               randconfig-a013-20210517
x86_64               randconfig-a016-20210517
x86_64               randconfig-a014-20210517
i386                 randconfig-a016-20210517
i386                 randconfig-a014-20210517
i386                 randconfig-a011-20210517
i386                 randconfig-a012-20210517
i386                 randconfig-a015-20210517
i386                 randconfig-a013-20210517
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20210517
x86_64               randconfig-a003-20210517
x86_64               randconfig-a001-20210517
x86_64               randconfig-a005-20210517
x86_64               randconfig-a002-20210517
x86_64               randconfig-a006-20210517

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
