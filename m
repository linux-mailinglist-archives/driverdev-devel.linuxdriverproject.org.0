Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 825A1375D49
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 May 2021 00:57:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF66B83CD9;
	Thu,  6 May 2021 22:57:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hCX16Qp4Luqu; Thu,  6 May 2021 22:57:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0C8D483CBC;
	Thu,  6 May 2021 22:57:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C08CC1BF8A8
 for <devel@linuxdriverproject.org>; Thu,  6 May 2021 22:57:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AE69983CBC
 for <devel@linuxdriverproject.org>; Thu,  6 May 2021 22:57:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gKDuFVWcHAdX for <devel@linuxdriverproject.org>;
 Thu,  6 May 2021 22:57:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A237483CB9
 for <devel@driverdev.osuosl.org>; Thu,  6 May 2021 22:57:16 +0000 (UTC)
IronPort-SDR: qRQYP7AcIjJ4iPkhmdi1CPl6FGjDHYnwQLX0Lw87LBNQ5QR71OpOu1UvoVI7WSEGDU1t4S5N3r
 5S/eibp2wqMg==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="198682207"
X-IronPort-AV: E=Sophos;i="5.82,279,1613462400"; d="scan'208";a="198682207"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 15:57:15 -0700
IronPort-SDR: YJBkSwWURYF8sV1+LjshYx2eCMQDrikKL98+FkXbeUupfM4b7Vr1YgvcUVQSmgQOObC/ne6sFt
 pSiQAwSY9nnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,279,1613462400"; d="scan'208";a="533152202"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 06 May 2021 15:57:14 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lemvg-000Auw-T6; Thu, 06 May 2021 22:57:12 +0000
Date: Fri, 07 May 2021 06:56:12 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 e120332923e13d8d9386594a83dc7cbf327e3edf
Message-ID: <6094740c.1PNo1mdfVwij/7hA%lkp@intel.com>
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
branch HEAD: e120332923e13d8d9386594a83dc7cbf327e3edf  staging: rtl8188eu: remove padapter from struct mlme_ext_priv

elapsed time: 724m

configs tested: 142
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
riscv                            allmodconfig
x86_64                           allyesconfig
i386                             allyesconfig
riscv                            allyesconfig
mips                     cu1830-neo_defconfig
x86_64                           alldefconfig
mips                        jmr3927_defconfig
sparc                       sparc64_defconfig
arm                       mainstone_defconfig
powerpc                     pq2fads_defconfig
arm                        keystone_defconfig
um                               alldefconfig
s390                                defconfig
powerpc                    ge_imp3a_defconfig
sh                          rsk7203_defconfig
sh                          polaris_defconfig
arm                        shmobile_defconfig
mips                        nlm_xlr_defconfig
arm                          lpd270_defconfig
mips                        omega2p_defconfig
sh                     sh7710voipgw_defconfig
m68k                          multi_defconfig
sh                          lboxre2_defconfig
sh                           se7751_defconfig
riscv                            alldefconfig
powerpc                      ppc40x_defconfig
mips                          ath25_defconfig
sh                                  defconfig
arm                         at91_dt_defconfig
xtensa                    smp_lx200_defconfig
powerpc                     tqm8560_defconfig
mips                           ip22_defconfig
powerpc                     redwood_defconfig
mips                      malta_kvm_defconfig
arm                       cns3420vb_defconfig
arm                         mv78xx0_defconfig
arm                          exynos_defconfig
sparc                       sparc32_defconfig
sh                ecovec24-romimage_defconfig
arm                          pcm027_defconfig
microblaze                          defconfig
mips                        bcm63xx_defconfig
powerpc                     tqm8541_defconfig
powerpc                       ebony_defconfig
powerpc                     taishan_defconfig
powerpc                     ksi8560_defconfig
powerpc                     powernv_defconfig
powerpc                     asp8347_defconfig
mips                      loongson3_defconfig
mips                       rbtx49xx_defconfig
sh                           se7343_defconfig
powerpc                 mpc834x_mds_defconfig
arm                            mps2_defconfig
mips                         tb0219_defconfig
mips                malta_qemu_32r6_defconfig
mips                        bcm47xx_defconfig
mips                       lemote2f_defconfig
sh                   rts7751r2dplus_defconfig
arm                  colibri_pxa300_defconfig
powerpc               mpc834x_itxgp_defconfig
arm                        mvebu_v5_defconfig
mips                    maltaup_xpa_defconfig
xtensa                  audio_kc705_defconfig
arm                          pxa168_defconfig
powerpc                    sam440ep_defconfig
sh                 kfr2r09-romimage_defconfig
mips                         cobalt_defconfig
arm                              alldefconfig
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
s390                             allmodconfig
parisc                           allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210506
i386                 randconfig-a006-20210506
i386                 randconfig-a001-20210506
i386                 randconfig-a005-20210506
i386                 randconfig-a004-20210506
i386                 randconfig-a002-20210506
x86_64               randconfig-a014-20210506
x86_64               randconfig-a015-20210506
x86_64               randconfig-a012-20210506
x86_64               randconfig-a013-20210506
x86_64               randconfig-a011-20210506
x86_64               randconfig-a016-20210506
i386                 randconfig-a015-20210506
i386                 randconfig-a013-20210506
i386                 randconfig-a016-20210506
i386                 randconfig-a014-20210506
i386                 randconfig-a012-20210506
i386                 randconfig-a011-20210506
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
x86_64               randconfig-a001-20210506
x86_64               randconfig-a003-20210506
x86_64               randconfig-a005-20210506
x86_64               randconfig-a002-20210506
x86_64               randconfig-a006-20210506
x86_64               randconfig-a004-20210506

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
