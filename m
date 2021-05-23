Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CCE38D7F3
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 May 2021 02:09:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B213340449;
	Sun, 23 May 2021 00:09:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0UXeP-HKS_ws; Sun, 23 May 2021 00:09:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 547C94043E;
	Sun, 23 May 2021 00:09:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 70D3C1BF865
 for <devel@linuxdriverproject.org>; Sun, 23 May 2021 00:09:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5FD38403A4
 for <devel@linuxdriverproject.org>; Sun, 23 May 2021 00:09:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6vsakXJNKWkM for <devel@linuxdriverproject.org>;
 Sun, 23 May 2021 00:09:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1816C4039E
 for <devel@driverdev.osuosl.org>; Sun, 23 May 2021 00:09:27 +0000 (UTC)
IronPort-SDR: IDdRJu235wI8g+aE+UOfQetn4Cv4b461KpbvpD/SAy1f8hIehgJk6xgywgWL8lxBJO+OixmEuh
 zvUkYrptUcSQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9992"; a="181332764"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="181332764"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2021 17:09:27 -0700
IronPort-SDR: dARSPphHChjPDeIZfYwGWRL2sd2RTDQ8t6prYsntgQt5t5p3uVra/vDYeFaxUjKQoyUhwsOlU7
 8mla2q+xKflQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="475177473"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 22 May 2021 17:09:23 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lkbgI-0000ZZ-3z; Sun, 23 May 2021 00:09:22 +0000
Date: Sun, 23 May 2021 08:08:54 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 0c8713153fbf7ba4e45172e139d501c86006dc03
Message-ID: <60a99d16.IM046qGErc0e61Rc%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-linus
branch HEAD: 0c8713153fbf7ba4e45172e139d501c86006dc03  drivers: base: Reduce device link removal code duplication

elapsed time: 757m

configs tested: 218
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
arm                  colibri_pxa300_defconfig
mips                         tb0287_defconfig
openrisc                  or1klitex_defconfig
openrisc                            defconfig
arm                     am200epdkit_defconfig
arc                        vdk_hs38_defconfig
sh                          polaris_defconfig
powerpc                    adder875_defconfig
m68k                        m5307c3_defconfig
powerpc                 mpc832x_mds_defconfig
mips                        nlm_xlr_defconfig
xtensa                    xip_kc705_defconfig
mips                           rs90_defconfig
powerpc                     sbc8548_defconfig
mips                            e55_defconfig
arm                          collie_defconfig
powerpc                      makalu_defconfig
sh                          rsk7264_defconfig
x86_64                           alldefconfig
powerpc                     pseries_defconfig
ia64                            zx1_defconfig
ia64                      gensparse_defconfig
powerpc                     mpc512x_defconfig
arm                          pxa3xx_defconfig
powerpc                 mpc8272_ads_defconfig
powerpc                          g5_defconfig
arc                    vdk_hs38_smp_defconfig
powerpc                      ppc6xx_defconfig
arm                           h5000_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                     skiroot_defconfig
um                           x86_64_defconfig
arc                 nsimosci_hs_smp_defconfig
ia64                         bigsur_defconfig
mips                          ath25_defconfig
arm                              alldefconfig
sh                ecovec24-romimage_defconfig
xtensa                       common_defconfig
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
mips                           ip27_defconfig
sh                          kfr2r09_defconfig
mips                malta_qemu_32r6_defconfig
arm64                            alldefconfig
sh                          r7785rp_defconfig
mips                      pistachio_defconfig
mips                            gpr_defconfig
powerpc                  iss476-smp_defconfig
xtensa                  nommu_kc705_defconfig
mips                        qi_lb60_defconfig
arm                          pxa910_defconfig
sh                        sh7757lcr_defconfig
powerpc                      obs600_defconfig
arm                      pxa255-idp_defconfig
m68k                            mac_defconfig
powerpc                          allmodconfig
m68k                        m5272c3_defconfig
powerpc                     tqm8541_defconfig
mips                      bmips_stb_defconfig
riscv                               defconfig
mips                        bcm63xx_defconfig
sh                          rsk7203_defconfig
sh                         apsh4a3a_defconfig
arm                             rpc_defconfig
arm                           sunxi_defconfig
powerpc                    ge_imp3a_defconfig
arm                            lart_defconfig
mips                          rm200_defconfig
powerpc                     tqm8555_defconfig
sh                           se7705_defconfig
powerpc                       holly_defconfig
powerpc                     taishan_defconfig
powerpc                         wii_defconfig
sh                              ul2_defconfig
ia64                             allmodconfig
arm                           u8500_defconfig
riscv                    nommu_virt_defconfig
arm                         s5pv210_defconfig
xtensa                              defconfig
m68k                          sun3x_defconfig
m68k                           sun3_defconfig
arm                        neponset_defconfig
powerpc                      pasemi_defconfig
um                             i386_defconfig
powerpc                mpc7448_hpc2_defconfig
mips                 decstation_r4k_defconfig
powerpc                     akebono_defconfig
arm                         palmz72_defconfig
m68k                        mvme147_defconfig
arm                           tegra_defconfig
mips                  decstation_64_defconfig
arc                     haps_hs_smp_defconfig
arm                         vf610m4_defconfig
h8300                               defconfig
mips                     loongson2k_defconfig
mips                      loongson3_defconfig
sh                      rts7751r2d1_defconfig
mips                         tb0219_defconfig
arm                          gemini_defconfig
arc                          axs103_defconfig
x86_64                            allnoconfig
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
riscv                             allnoconfig
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
x86_64               randconfig-b001-20210523
x86_64               randconfig-b001-20210522
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
