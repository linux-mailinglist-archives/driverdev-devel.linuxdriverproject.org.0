Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E318451696E
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 May 2022 04:34:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 347BC40185;
	Mon,  2 May 2022 02:34:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3o0a2iQtCg53; Mon,  2 May 2022 02:34:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 710BC4014A;
	Mon,  2 May 2022 02:34:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4520C1BF426
 for <devel@linuxdriverproject.org>; Mon,  2 May 2022 02:34:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 32F5460E76
 for <devel@linuxdriverproject.org>; Mon,  2 May 2022 02:34:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yf8NviiXPfx1 for <devel@linuxdriverproject.org>;
 Mon,  2 May 2022 02:34:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1C41360E74
 for <devel@driverdev.osuosl.org>; Mon,  2 May 2022 02:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651458889; x=1682994889;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=uADjEJqtYkc+U4YMg7rFPJS+z6cSdfGcTo/n/FOxP0Q=;
 b=c60n4H1cJXbKZz4pAcEhd98tlUH1q4jYJoVYsKBTJL7MENOUnTAgniuX
 YqFR4TrAoXyfqa/vkK3ktZVkJEOIF17VWJedvDUeGe1aDxupc0c5iS3A/
 6vaEfPrpKzrP+Xaa411WbeiMp+xz6IRf/8q+BHj2U+2G3INWBVsD1Xutc
 Bd7pdaeNVEJOGSD0JTH0Klgk2bV+p++XAp0yKZ5y8fUQrMHtTkQnaOoV7
 7PswY9wU2O57fCf8FWT3xSedEYsQICS0em0eKtCV33akksIa7lHzTfg1x
 3HmydGPnXkS2EzLi8wxwX+jyWydayfgzsWuW9wPrSvZZ/7O0t5VoLF98s g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10334"; a="327639230"
X-IronPort-AV: E=Sophos;i="5.91,190,1647327600"; d="scan'208";a="327639230"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2022 19:34:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,190,1647327600"; d="scan'208";a="663334268"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 01 May 2022 19:34:46 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nlLte-0009Dn-1y;
 Mon, 02 May 2022 02:34:46 +0000
Date: Mon, 02 May 2022 10:34:33 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 5fe7856ad59afc56a6ff35d091bfaddd1d4f4bce
Message-ID: <626f4339.iCczlF8rZWo1btSm%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: 5fe7856ad59afc56a6ff35d091bfaddd1d4f4bce  staging: vt6655: Replace MACvReadISR with VNSvInPortD

elapsed time: 6857m

configs tested: 237
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
powerpc              randconfig-c003-20220428
i386                          randconfig-c001
sh                           se7724_defconfig
parisc                generic-32bit_defconfig
arc                        nsim_700_defconfig
powerpc                     tqm8541_defconfig
powerpc                 mpc837x_rdb_defconfig
sh                          lboxre2_defconfig
mips                  decstation_64_defconfig
arm                            zeus_defconfig
s390                             allmodconfig
sh                          rsk7264_defconfig
mips                  maltasmvp_eva_defconfig
mips                      maltasmvp_defconfig
sh                        sh7763rdp_defconfig
mips                           ci20_defconfig
arm                         lubbock_defconfig
m68k                                defconfig
sh                          sdk7780_defconfig
powerpc                     tqm8555_defconfig
powerpc                     ep8248e_defconfig
s390                                defconfig
mips                         tb0226_defconfig
sh                        edosk7760_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                      ppc6xx_defconfig
arm                       multi_v4t_defconfig
arm                      jornada720_defconfig
sh                           se7619_defconfig
sh                   secureedge5410_defconfig
sh                            shmin_defconfig
sh                          r7780mp_defconfig
sh                     magicpanelr2_defconfig
nios2                               defconfig
powerpc                     taishan_defconfig
sparc                       sparc64_defconfig
powerpc                        cell_defconfig
parisc                generic-64bit_defconfig
arm                         cm_x300_defconfig
ia64                         bigsur_defconfig
m68k                          sun3x_defconfig
arm                         nhk8815_defconfig
arm                            lart_defconfig
powerpc                         ps3_defconfig
sh                          r7785rp_defconfig
powerpc                 mpc8540_ads_defconfig
m68k                        m5272c3_defconfig
sh                             shx3_defconfig
sh                           se7780_defconfig
arc                     nsimosci_hs_defconfig
m68k                       m5249evb_defconfig
xtensa                           alldefconfig
arm                          gemini_defconfig
sh                          kfr2r09_defconfig
m68k                       bvme6000_defconfig
sh                          landisk_defconfig
arm                         lpc18xx_defconfig
arc                         haps_hs_defconfig
m68k                       m5208evb_defconfig
xtensa                  cadence_csp_defconfig
arm                         assabet_defconfig
parisc                              defconfig
powerpc                     tqm8548_defconfig
sh                         ecovec24_defconfig
xtensa                         virt_defconfig
powerpc                      mgcoge_defconfig
powerpc                   motionpro_defconfig
m68k                       m5475evb_defconfig
powerpc                 mpc837x_mds_defconfig
arc                            hsdk_defconfig
arm                            qcom_defconfig
sh                   sh7724_generic_defconfig
mips                     loongson1b_defconfig
m68k                        m5307c3_defconfig
powerpc                    adder875_defconfig
mips                            ar7_defconfig
arm                          lpd270_defconfig
openrisc                  or1klitex_defconfig
ia64                            zx1_defconfig
arm                          simpad_defconfig
sh                           se7206_defconfig
nios2                            allyesconfig
arm                        cerfcube_defconfig
sh                        edosk7705_defconfig
m68k                          multi_defconfig
arm                        multi_v7_defconfig
sh                ecovec24-romimage_defconfig
microblaze                          defconfig
powerpc                     pq2fads_defconfig
ia64                             alldefconfig
mips                         cobalt_defconfig
mips                       capcella_defconfig
sh                             sh03_defconfig
sparc64                          alldefconfig
sh                           se7750_defconfig
sh                  sh7785lcr_32bit_defconfig
arm                       aspeed_g5_defconfig
sh                      rts7751r2d1_defconfig
powerpc                    amigaone_defconfig
sh                           se7721_defconfig
powerpc                           allnoconfig
powerpc                   currituck_defconfig
powerpc                      cm5200_defconfig
i386                             alldefconfig
m68k                        mvme16x_defconfig
arm                      integrator_defconfig
i386                                defconfig
mips                           jazz_defconfig
powerpc                      makalu_defconfig
powerpc                      chrp32_defconfig
powerpc                 mpc85xx_cds_defconfig
sh                         ap325rxa_defconfig
arm                        keystone_defconfig
powerpc                  storcenter_defconfig
x86_64                           alldefconfig
m68k                         amcore_defconfig
powerpc                    sam440ep_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220428
arm                  randconfig-c002-20220429
arm                  randconfig-c002-20220501
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
sparc                            allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                             allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a016
i386                          randconfig-a014
x86_64                        randconfig-a002
arc                  randconfig-r043-20220428
arc                  randconfig-r043-20220429
s390                 randconfig-r044-20220429
riscv                randconfig-r042-20220429
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                                  kexec
x86_64                              defconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3
x86_64                           allyesconfig

clang tested configs:
riscv                randconfig-c006-20220428
mips                 randconfig-c004-20220428
x86_64                        randconfig-c007
i386                          randconfig-c001
arm                  randconfig-c002-20220428
powerpc              randconfig-c003-20220428
powerpc              randconfig-c003-20220501
riscv                randconfig-c006-20220501
mips                 randconfig-c004-20220501
arm                  randconfig-c002-20220501
riscv                randconfig-c006-20220429
mips                 randconfig-c004-20220429
arm                  randconfig-c002-20220429
powerpc              randconfig-c003-20220429
arm                       spear13xx_defconfig
mips                   sb1250_swarm_defconfig
arm                         shannon_defconfig
arm                        vexpress_defconfig
arm                         palmz72_defconfig
arm                       cns3420vb_defconfig
powerpc                     tqm5200_defconfig
powerpc                 mpc832x_rdb_defconfig
mips                     cu1830-neo_defconfig
powerpc                    mvme5100_defconfig
powerpc                      ppc44x_defconfig
arm                         s3c2410_defconfig
arm                            mmp2_defconfig
powerpc                      katmai_defconfig
arm                      pxa255-idp_defconfig
powerpc                 mpc8315_rdb_defconfig
arm                       aspeed_g4_defconfig
powerpc                      walnut_defconfig
arm                              alldefconfig
mips                            e55_defconfig
arm                          moxart_defconfig
mips                           mtx1_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                    socrates_defconfig
arm                         bcm2835_defconfig
arm                       netwinder_defconfig
mips                          ath25_defconfig
powerpc                          allyesconfig
powerpc                     pseries_defconfig
x86_64                           allyesconfig
mips                           ip28_defconfig
mips                      maltaaprp_defconfig
mips                       rbtx49xx_defconfig
powerpc                          allmodconfig
riscv                          rv32_defconfig
mips                     cu1000-neo_defconfig
arm                             mxs_defconfig
powerpc                 linkstation_defconfig
mips                      bmips_stb_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                      pmac32_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220428
riscv                randconfig-r042-20220428
hexagon              randconfig-r045-20220428

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
