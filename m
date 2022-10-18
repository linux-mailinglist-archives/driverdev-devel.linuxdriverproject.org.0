Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DC5603623
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Oct 2022 00:43:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DA89361136;
	Tue, 18 Oct 2022 22:43:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DA89361136
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lilJrBtwas8C; Tue, 18 Oct 2022 22:43:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C22D61130;
	Tue, 18 Oct 2022 22:43:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C22D61130
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 243BC1BF355
 for <devel@linuxdriverproject.org>; Tue, 18 Oct 2022 22:43:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F056141A29
 for <devel@linuxdriverproject.org>; Tue, 18 Oct 2022 22:43:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F056141A29
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HX8uxXJfrGUx for <devel@linuxdriverproject.org>;
 Tue, 18 Oct 2022 22:43:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 732D541A22
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 732D541A22
 for <devel@driverdev.osuosl.org>; Tue, 18 Oct 2022 22:43:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="332798192"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="332798192"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 15:43:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="771453384"
X-IronPort-AV: E=Sophos;i="5.95,194,1661842800"; d="scan'208";a="771453384"
Received: from lkp-server01.sh.intel.com (HELO 8381f64adc98) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 18 Oct 2022 15:43:05 -0700
Received: from kbuild by 8381f64adc98 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1okvIf-00028s-0I;
 Tue, 18 Oct 2022 22:43:05 +0000
Date: Wed, 19 Oct 2022 06:42:14 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 19c9dae9c0559971bab1744d3ed6a925d6829795
Message-ID: <634f2bc6.uWpr5xep9bBVy5Bq%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666132987; x=1697668987;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=mu0FD5A8t73F3gfaypLZiu68FH7nvjScLl/zUjSx0Tk=;
 b=PfCaogX32yCp6yCbSmVGNaVRyqdT1uya9k/6BYzkprW43VDDILdPenE0
 fHCv29Be5BIevLBy5PMOITTn6gSirNGlGjNGSS1G2Sk/ghjSUrEY1cYpJ
 92gH/nCdJz/TTpciRLPoufJwN53y/t4rECdTZdW/r4HUc1vV2KI1SSFdm
 DUp/GITAXRhX9BS8FWc4VKmtwC6MaSUhx1wqLDhm1SyWWqs0G58sDHNar
 Qx0dVdWuWcAf6lCoE8SQdjRHA0vKlRwBkC/16UVK9hb3D3J5mhcs3MYsn
 76vbXNFJtXjUGs4RjBmavpBaOpx72wD6iuDXKW22QPECzfZtY28vpNrMM
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PfCaogX3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: 19c9dae9c0559971bab1744d3ed6a925d6829795  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 2441m

configs tested: 215
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                             allyesconfig
i386                                defconfig
um                           x86_64_defconfig
um                             i386_defconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
i386                 randconfig-a005-20221017
i386                 randconfig-a003-20221017
i386                 randconfig-a004-20221017
i386                 randconfig-a001-20221017
i386                 randconfig-a006-20221017
arm64                            allyesconfig
arm                              allyesconfig
x86_64               randconfig-a004-20221017
x86_64               randconfig-a001-20221017
x86_64               randconfig-a002-20221017
x86_64               randconfig-a006-20221017
x86_64               randconfig-a005-20221017
sh                   secureedge5410_defconfig
arc                        nsimosci_defconfig
m68k                          multi_defconfig
csky                             alldefconfig
sh                   sh7724_generic_defconfig
sh                          rsk7264_defconfig
mips                 decstation_r4k_defconfig
loongarch                         allnoconfig
m68k                          amiga_defconfig
m68k                             allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
arm                        spear6xx_defconfig
i386                 randconfig-c001-20221017
arc                  randconfig-r043-20221017
i386                             alldefconfig
xtensa                  audio_kc705_defconfig
microblaze                          defconfig
arm                          pxa910_defconfig
arc                      axs103_smp_defconfig
m68k                            mac_defconfig
arm                                 defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
m68k                             allmodconfig
m68k                        m5407c3_defconfig
powerpc                  iss476-smp_defconfig
sh                   rts7751r2dplus_defconfig
m68k                        mvme16x_defconfig
arc                        nsim_700_defconfig
riscv                               defconfig
powerpc                 mpc837x_mds_defconfig
sh                           se7721_defconfig
arc                          axs103_defconfig
powerpc                     asp8347_defconfig
arm                          gemini_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                 mpc8540_ads_defconfig
sh                          kfr2r09_defconfig
powerpc                 linkstation_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
m68k                         amcore_defconfig
mips                           ci20_defconfig
powerpc                      makalu_defconfig
m68k                             alldefconfig
loongarch                           defconfig
powerpc                      arches_defconfig
arm                          iop32x_defconfig
openrisc                  or1klitex_defconfig
sh                          rsk7203_defconfig
arm                             ezx_defconfig
powerpc                     mpc83xx_defconfig
m68k                          hp300_defconfig
sh                           se7751_defconfig
arm                        keystone_defconfig
powerpc                        cell_defconfig
parisc                generic-32bit_defconfig
riscv             nommu_k210_sdcard_defconfig
sh                             sh03_defconfig
m68k                            q40_defconfig
arc                           tb10x_defconfig
i386                 randconfig-a002-20221017
loongarch                        allmodconfig
arc                        vdk_hs38_defconfig
powerpc                      chrp32_defconfig
x86_64               randconfig-c001-20221017
arm                  randconfig-c002-20221017
x86_64               randconfig-a003-20221017
sh                              ul2_defconfig
powerpc                  storcenter_defconfig
mips                             allmodconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
arm64                            alldefconfig
sh                            hp6xx_defconfig
sh                           se7724_defconfig
arm                         lpc18xx_defconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                      ppc6xx_defconfig
csky                              allnoconfig
ia64                                defconfig
powerpc                          allyesconfig
i386                          randconfig-c001
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
ia64                          tiger_defconfig
alpha                            alldefconfig
mips                     loongson1b_defconfig
m68k                        m5307c3_defconfig
m68k                           sun3_defconfig
mips                           gcw0_defconfig
mips                      fuloong2e_defconfig
m68k                          atari_defconfig
openrisc                       virt_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
m68k                                defconfig
sparc64                             defconfig
powerpc                     taishan_defconfig
sh                        sh7757lcr_defconfig
m68k                       m5208evb_defconfig
powerpc                      pcm030_defconfig
arm                         at91_dt_defconfig
microblaze                      mmu_defconfig
openrisc                 simple_smp_defconfig
mips                            gpr_defconfig
arc                  randconfig-r043-20221018
s390                 randconfig-r044-20221018
riscv                randconfig-r042-20221018
arm                        cerfcube_defconfig
sh                  sh7785lcr_32bit_defconfig
powerpc                     stx_gp3_defconfig
powerpc                   currituck_defconfig
powerpc                 mpc834x_mds_defconfig
ia64                             allmodconfig

clang tested configs:
s390                 randconfig-r044-20221017
hexagon              randconfig-r045-20221017
riscv                randconfig-r042-20221017
hexagon              randconfig-r041-20221017
x86_64               randconfig-a014-20221017
x86_64               randconfig-a015-20221017
x86_64               randconfig-a012-20221017
x86_64               randconfig-a011-20221017
x86_64               randconfig-a013-20221017
x86_64               randconfig-a016-20221017
i386                 randconfig-a013-20221017
i386                 randconfig-a015-20221017
i386                 randconfig-a016-20221017
i386                 randconfig-a011-20221017
i386                 randconfig-a014-20221017
i386                 randconfig-a012-20221017
mips                 randconfig-c004-20221017
i386                 randconfig-c001-20221017
s390                 randconfig-c005-20221017
arm                  randconfig-c002-20221017
riscv                randconfig-c006-20221017
x86_64               randconfig-c007-20221017
powerpc              randconfig-c003-20221017
riscv                          rv32_defconfig
arm                         palmz72_defconfig
arm                             mxs_defconfig
x86_64               randconfig-k001-20221017
x86_64                        randconfig-c007
mips                 randconfig-c004-20221018
i386                          randconfig-c001
s390                 randconfig-c005-20221018
arm                  randconfig-c002-20221018
riscv                randconfig-c006-20221018
powerpc              randconfig-c003-20221018
arm                        mvebu_v5_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
mips                          rm200_defconfig
powerpc                      ppc44x_defconfig
riscv                             allnoconfig
powerpc                  mpc866_ads_defconfig
powerpc                 mpc832x_mds_defconfig
arm                         socfpga_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
arm                      pxa255-idp_defconfig
x86_64                        randconfig-k001
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
arm                      tct_hammer_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
