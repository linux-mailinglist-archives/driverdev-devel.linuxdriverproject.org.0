Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2FB280BC8
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Oct 2020 02:54:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9F1C7863F2;
	Fri,  2 Oct 2020 00:54:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JcoIdfoFXaoC; Fri,  2 Oct 2020 00:54:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id F1C63858C9;
	Fri,  2 Oct 2020 00:54:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 669701BF9B9
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 00:54:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 62D568734B
 for <devel@linuxdriverproject.org>; Fri,  2 Oct 2020 00:54:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 76ENuw4SPQVO for <devel@linuxdriverproject.org>;
 Fri,  2 Oct 2020 00:54:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2339387340
 for <devel@driverdev.osuosl.org>; Fri,  2 Oct 2020 00:54:26 +0000 (UTC)
IronPort-SDR: mekp5yGWbjNdtFt6jvOCRnT3dWPS36cHYCtwhV/vlyMReoCmYPblQFpF0vTqs1vSWc7n0D8oMx
 /DChxH9nj9Mg==
X-IronPort-AV: E=McAfee;i="6000,8403,9761"; a="162958302"
X-IronPort-AV: E=Sophos;i="5.77,325,1596524400"; d="scan'208";a="162958302"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2020 17:54:23 -0700
IronPort-SDR: 9qAGhmCpPiA68yn/ffGrlFo0mOlotQd5ts/8qY0//tkp5LpSv35dBLkJWM+SgfxMpSmGYGwsZ8
 6VFPcpXLjkXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,325,1596524400"; d="scan'208";a="308851855"
Received: from lkp-server02.sh.intel.com (HELO de448af6ea1b) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 01 Oct 2020 17:54:21 -0700
Received: from kbuild by de448af6ea1b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kO9L3-0000nm-6A; Fri, 02 Oct 2020 00:54:21 +0000
Date: Fri, 02 Oct 2020 08:53:34 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 c95e48b275c9a26dbf9bd351d2e2ebf5e3dfe40d
Message-ID: <5f767a0e.jDD2mKrMsnVKCzL3%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-testing
branch HEAD: c95e48b275c9a26dbf9bd351d2e2ebf5e3dfe40d  staging: rtl8188eu: clean up indent style issue

elapsed time: 721m

configs tested: 154
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                          landisk_defconfig
sh                             sh03_defconfig
arm64                            alldefconfig
powerpc                 mpc832x_mds_defconfig
powerpc                     rainier_defconfig
m68k                        mvme147_defconfig
mips                malta_qemu_32r6_defconfig
mips                          malta_defconfig
arm                              alldefconfig
arm                          gemini_defconfig
riscv                             allnoconfig
mips                malta_kvm_guest_defconfig
um                           x86_64_defconfig
sh                           se7724_defconfig
xtensa                    smp_lx200_defconfig
arm                     am200epdkit_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                      pcm030_defconfig
ia64                        generic_defconfig
arc                            hsdk_defconfig
arm                             ezx_defconfig
sh                             shx3_defconfig
nds32                            alldefconfig
nios2                         10m50_defconfig
xtensa                       common_defconfig
sh                           sh2007_defconfig
powerpc                  iss476-smp_defconfig
mips                     cu1830-neo_defconfig
arm                            mmp2_defconfig
powerpc                    gamecube_defconfig
mips                          ath79_defconfig
arm                          simpad_defconfig
powerpc                 mpc832x_rdb_defconfig
sparc                            allyesconfig
microblaze                    nommu_defconfig
mips                  cavium_octeon_defconfig
arm                             mxs_defconfig
mips                             allyesconfig
microblaze                          defconfig
powerpc                   motionpro_defconfig
powerpc                 mpc837x_mds_defconfig
xtensa                           alldefconfig
arm                         nhk8815_defconfig
s390                       zfcpdump_defconfig
powerpc                       ppc64_defconfig
powerpc                     taishan_defconfig
arm                           spitz_defconfig
h8300                               defconfig
powerpc                      ppc6xx_defconfig
powerpc                    mvme5100_defconfig
m68k                           sun3_defconfig
arm                          pxa910_defconfig
sh                     magicpanelr2_defconfig
arm                           efm32_defconfig
arm                   milbeaut_m10v_defconfig
h8300                            alldefconfig
arm                           viper_defconfig
arm                         axm55xx_defconfig
m68k                        m5307c3_defconfig
xtensa                  audio_kc705_defconfig
powerpc                          allmodconfig
microblaze                      mmu_defconfig
nios2                               defconfig
riscv                            alldefconfig
arm                         palmz72_defconfig
powerpc                     ksi8560_defconfig
sh                        sh7785lcr_defconfig
powerpc                 mpc8313_rdb_defconfig
s390                             alldefconfig
sh                      rts7751r2d1_defconfig
arc                        nsim_700_defconfig
arm                          iop32x_defconfig
c6x                        evmc6474_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
sparc                               defconfig
i386                                defconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20200930
i386                 randconfig-a002-20200930
i386                 randconfig-a006-20200930
i386                 randconfig-a005-20200930
i386                 randconfig-a004-20200930
i386                 randconfig-a001-20200930
x86_64               randconfig-a015-20200930
x86_64               randconfig-a013-20200930
x86_64               randconfig-a012-20200930
x86_64               randconfig-a016-20200930
x86_64               randconfig-a014-20200930
x86_64               randconfig-a011-20200930
x86_64               randconfig-a012-20201001
x86_64               randconfig-a015-20201001
x86_64               randconfig-a014-20201001
x86_64               randconfig-a013-20201001
x86_64               randconfig-a011-20201001
x86_64               randconfig-a016-20201001
i386                 randconfig-a011-20200930
i386                 randconfig-a015-20200930
i386                 randconfig-a012-20200930
i386                 randconfig-a014-20200930
i386                 randconfig-a016-20200930
i386                 randconfig-a013-20200930
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a001-20200930
x86_64               randconfig-a005-20200930
x86_64               randconfig-a003-20200930
x86_64               randconfig-a004-20200930
x86_64               randconfig-a002-20200930
x86_64               randconfig-a006-20200930
x86_64               randconfig-a004-20201001
x86_64               randconfig-a001-20201001
x86_64               randconfig-a002-20201001
x86_64               randconfig-a003-20201001
x86_64               randconfig-a005-20201001
x86_64               randconfig-a006-20201001

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
