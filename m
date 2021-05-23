Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 0881D38D7E4
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 May 2021 02:08:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 045E983AB2;
	Sun, 23 May 2021 00:08:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id B4-QT8227dDW; Sun, 23 May 2021 00:08:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 06EBF83A5C;
	Sun, 23 May 2021 00:08:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5D011BF865
 for <devel@linuxdriverproject.org>; Sun, 23 May 2021 00:08:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C573440112
 for <devel@linuxdriverproject.org>; Sun, 23 May 2021 00:08:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1_TWm5uT0MPQ for <devel@linuxdriverproject.org>;
 Sun, 23 May 2021 00:08:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8BA6B400AC
 for <devel@driverdev.osuosl.org>; Sun, 23 May 2021 00:08:24 +0000 (UTC)
IronPort-SDR: 9lztTIC+co+1v8fPbmgeLv2uMnwjVO+J62zUa3noEl0KVt8mK/FgsxZTMxck/5Y2P84mvjs5bA
 Vv43uSoq4DhA==
X-IronPort-AV: E=McAfee;i="6200,9189,9992"; a="189099993"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="189099993"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2021 17:08:23 -0700
IronPort-SDR: 6ZbwrPlKI4fQolk1t4jThkPvyQZUI9yNCZSHcLlZI401bVZUeJcVX53mcuZt4EOaJ4sHnBbjkV
 6+HXWrcv3ezQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="477491748"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 22 May 2021 17:08:22 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lkbfJ-0000Ya-I9; Sun, 23 May 2021 00:08:21 +0000
Date: Sun, 23 May 2021 08:07:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 fd03c075e362edc2ad637dfb5b945d304f80efe5
Message-ID: <60a99cce.4XrsFVurtcFsIa7M%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: fd03c075e362edc2ad637dfb5b945d304f80efe5  drivers/base/node.c: make CACHE_ATTR define static DEVICE_ATTR_RO

elapsed time: 756m

configs tested: 201
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
openrisc                         alldefconfig
powerpc                 xes_mpc85xx_defconfig
i386                                defconfig
mips                          ath79_defconfig
sh                        sh7785lcr_defconfig
mips                     cu1830-neo_defconfig
mips                       bmips_be_defconfig
powerpc                     tqm8560_defconfig
arm                       mainstone_defconfig
sh                   sh7724_generic_defconfig
sparc                       sparc64_defconfig
mips                           ci20_defconfig
sh                        edosk7705_defconfig
arc                        vdk_hs38_defconfig
sh                          polaris_defconfig
powerpc                    adder875_defconfig
m68k                        m5307c3_defconfig
powerpc                 mpc832x_mds_defconfig
mips                        nlm_xlr_defconfig
sh                          rsk7264_defconfig
x86_64                           alldefconfig
powerpc                     pseries_defconfig
ia64                            zx1_defconfig
ia64                      gensparse_defconfig
powerpc                     mpc512x_defconfig
arm                          pxa3xx_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                          g5_defconfig
powerpc                     sbc8548_defconfig
mips                  decstation_64_defconfig
sh                        sh7757lcr_defconfig
powerpc                       ebony_defconfig
sh                        edosk7760_defconfig
powerpc                      cm5200_defconfig
s390                             allmodconfig
powerpc                        cell_defconfig
xtensa                generic_kc705_defconfig
ia64                          tiger_defconfig
arm                             ezx_defconfig
arm                         lpc32xx_defconfig
powerpc                 mpc85xx_cds_defconfig
arc                          axs101_defconfig
sh                          urquell_defconfig
sparc64                             defconfig
mips                          rb532_defconfig
mips                           ip27_defconfig
sh                          kfr2r09_defconfig
mips                malta_qemu_32r6_defconfig
arm64                            alldefconfig
powerpc                     mpc5200_defconfig
powerpc                    amigaone_defconfig
m68k                       m5208evb_defconfig
powerpc                 mpc8560_ads_defconfig
arm                           u8500_defconfig
m68k                        m5272c3_defconfig
mips                        qi_lb60_defconfig
arm                          pxa910_defconfig
sh                          rsk7203_defconfig
sh                         apsh4a3a_defconfig
arm                             rpc_defconfig
arm                           sunxi_defconfig
powerpc                         ps3_defconfig
m68k                            q40_defconfig
mips                      bmips_stb_defconfig
ia64                        generic_defconfig
ia64                         bigsur_defconfig
arm                     davinci_all_defconfig
m68k                        m5407c3_defconfig
arm                         assabet_defconfig
arm                         nhk8815_defconfig
um                             i386_defconfig
arm                         palmz72_defconfig
sh                  sh7785lcr_32bit_defconfig
mips                 decstation_r4k_defconfig
mips                      maltaaprp_defconfig
m68k                          sun3x_defconfig
m68k                           sun3_defconfig
arm                        neponset_defconfig
powerpc                      pasemi_defconfig
powerpc                      obs600_defconfig
powerpc                mpc7448_hpc2_defconfig
arc                     haps_hs_smp_defconfig
arm                         vf610m4_defconfig
h8300                               defconfig
nds32                            alldefconfig
sh                      rts7751r2d1_defconfig
powerpc                     tqm5200_defconfig
microblaze                          defconfig
mips                         tb0219_defconfig
arm                          gemini_defconfig
sh                ecovec24-romimage_defconfig
mips                            gpr_defconfig
arc                          axs103_defconfig
mips                           gcw0_defconfig
sh                        sh7763rdp_defconfig
powerpc                      katmai_defconfig
powerpc                     stx_gp3_defconfig
sh                     magicpanelr2_defconfig
x86_64                            allnoconfig
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
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20210522
x86_64               randconfig-a006-20210522
x86_64               randconfig-a005-20210522
x86_64               randconfig-a003-20210522
x86_64               randconfig-a004-20210522
x86_64               randconfig-a002-20210522
i386                 randconfig-a001-20210523
i386                 randconfig-a005-20210523
i386                 randconfig-a002-20210523
i386                 randconfig-a003-20210523
i386                 randconfig-a004-20210523
i386                 randconfig-a006-20210523
i386                 randconfig-a001-20210522
i386                 randconfig-a005-20210522
i386                 randconfig-a002-20210522
i386                 randconfig-a004-20210522
i386                 randconfig-a003-20210522
i386                 randconfig-a006-20210522
x86_64               randconfig-a013-20210523
x86_64               randconfig-a014-20210523
x86_64               randconfig-a012-20210523
x86_64               randconfig-a016-20210523
x86_64               randconfig-a015-20210523
x86_64               randconfig-a011-20210523
i386                 randconfig-a016-20210523
i386                 randconfig-a011-20210523
i386                 randconfig-a015-20210523
i386                 randconfig-a012-20210523
i386                 randconfig-a014-20210523
i386                 randconfig-a013-20210523
i386                 randconfig-a016-20210522
i386                 randconfig-a011-20210522
i386                 randconfig-a015-20210522
i386                 randconfig-a012-20210522
i386                 randconfig-a014-20210522
i386                 randconfig-a013-20210522
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
um                                  defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210522
x86_64               randconfig-b001-20210523
x86_64               randconfig-a013-20210522
x86_64               randconfig-a014-20210522
x86_64               randconfig-a012-20210522
x86_64               randconfig-a016-20210522
x86_64               randconfig-a015-20210522
x86_64               randconfig-a011-20210522
x86_64               randconfig-a006-20210523
x86_64               randconfig-a001-20210523
x86_64               randconfig-a005-20210523
x86_64               randconfig-a003-20210523
x86_64               randconfig-a004-20210523
x86_64               randconfig-a002-20210523

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
