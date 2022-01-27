Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BD0F49EDA1
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Jan 2022 22:44:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3C510400E5;
	Thu, 27 Jan 2022 21:44:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id my13Vnbt8pMZ; Thu, 27 Jan 2022 21:44:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44CDB40145;
	Thu, 27 Jan 2022 21:44:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 140D21BF369
 for <devel@linuxdriverproject.org>; Thu, 27 Jan 2022 21:44:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 01C7241B4B
 for <devel@linuxdriverproject.org>; Thu, 27 Jan 2022 21:44:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F7S7xjf7senB for <devel@linuxdriverproject.org>;
 Thu, 27 Jan 2022 21:44:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EE55341B43
 for <devel@driverdev.osuosl.org>; Thu, 27 Jan 2022 21:44:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643319860; x=1674855860;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=XJDwRxEkz3lhctg8bwUaH6rF3K9rc4Ote16sC18IveI=;
 b=D+OU+hpxL9qHB/QkQg94QJV+tWXlhPN8pakFt2IJ4dAE5GxFnrBn202r
 0ATdVFSVIc0BFpGmqwz7rOGd7WcgcgqK+rP8dkLV3DyzsYv9mI93APUqc
 uO4KGdbWJYuB+GhJQrjtVZj1+CoB0fIG9LXylbR2uQu949eomhvPmYMq1
 2n7p5AufjMo2V1lzJ0HhuDUsIM8k9kXkVAJS4etP6Cs9tZ0tqPoKOmwZ4
 9h8RO1E3dQIsM7bFWmi12rc2hCQuHFAuMtHgvvdHyW6BfelhhsOUQzIj9
 IShigzOHfpxGdWhhayLf86F98J9tj8fbu4AakZqErLDqvpSESYPBGMxi5 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="226948183"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="226948183"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2022 13:44:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; d="scan'208";a="696819751"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 27 Jan 2022 13:44:18 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nDCYz-000N4N-Md; Thu, 27 Jan 2022 21:44:17 +0000
Date: Fri, 28 Jan 2022 05:43:23 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 3165b089f8738dd893935faa24a9876d34e397e6
Message-ID: <61f311fb.B9HB1ICbYU+ZeOgd%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: 3165b089f8738dd893935faa24a9876d34e397e6  moxart: fix potential use-after-free on remove path

elapsed time: 722m

configs tested: 193
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220124
i386                          randconfig-c001
powerpc              randconfig-c003-20220124
m68k                         apollo_defconfig
arc                    vdk_hs38_smp_defconfig
mips                  decstation_64_defconfig
sh                         ecovec24_defconfig
powerpc                 mpc834x_itx_defconfig
arm                         at91_dt_defconfig
mips                         mpc30x_defconfig
xtensa                              defconfig
mips                        vocore2_defconfig
um                             i386_defconfig
h8300                    h8300h-sim_defconfig
m68k                            q40_defconfig
powerpc                 linkstation_defconfig
arm                         s3c6400_defconfig
m68k                           sun3_defconfig
arm                        oxnas_v6_defconfig
m68k                          multi_defconfig
nios2                         10m50_defconfig
xtensa                  audio_kc705_defconfig
powerpc                      ppc40x_defconfig
powerpc                 mpc837x_mds_defconfig
sparc                            allyesconfig
powerpc                       ppc64_defconfig
m68k                        stmark2_defconfig
xtensa                  nommu_kc705_defconfig
mips                         rt305x_defconfig
arm                            zeus_defconfig
arc                        vdk_hs38_defconfig
sh                          rsk7269_defconfig
ia64                        generic_defconfig
sh                           sh2007_defconfig
um                                  defconfig
parisc                generic-64bit_defconfig
mips                        bcm47xx_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
sparc                       sparc64_defconfig
m68k                          hp300_defconfig
nds32                               defconfig
sh                ecovec24-romimage_defconfig
m68k                       m5249evb_defconfig
arm                             rpc_defconfig
sh                               allmodconfig
powerpc                  storcenter_defconfig
arm                        keystone_defconfig
sh                     sh7710voipgw_defconfig
sh                 kfr2r09-romimage_defconfig
parisc                generic-32bit_defconfig
arm                           viper_defconfig
arm                            xcep_defconfig
sh                            shmin_defconfig
ia64                      gensparse_defconfig
arm                         lubbock_defconfig
riscv                            allyesconfig
powerpc                     rainier_defconfig
mips                    maltaup_xpa_defconfig
sh                   sh7724_generic_defconfig
arc                            hsdk_defconfig
arm                            hisi_defconfig
powerpc                      ppc6xx_defconfig
arc                              alldefconfig
arc                        nsimosci_defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                      tqm8xx_defconfig
h8300                            alldefconfig
h8300                     edosk2674_defconfig
powerpc                     pq2fads_defconfig
sh                             shx3_defconfig
sh                             espt_defconfig
arm                           corgi_defconfig
arm                          pxa910_defconfig
powerpc                  iss476-smp_defconfig
arm                  randconfig-c002-20220127
arm                  randconfig-c002-20220124
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20220124
x86_64               randconfig-a003-20220124
x86_64               randconfig-a001-20220124
x86_64               randconfig-a004-20220124
x86_64               randconfig-a005-20220124
x86_64               randconfig-a006-20220124
i386                 randconfig-a002-20220124
i386                 randconfig-a005-20220124
i386                 randconfig-a003-20220124
i386                 randconfig-a004-20220124
i386                 randconfig-a001-20220124
i386                 randconfig-a006-20220124
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220127
arc                  randconfig-r043-20220127
arc                  randconfig-r043-20220124
s390                 randconfig-r044-20220127
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20220124
riscv                randconfig-c006-20220124
i386                 randconfig-c001-20220124
powerpc              randconfig-c003-20220124
mips                 randconfig-c004-20220124
x86_64               randconfig-c007-20220124
mips                         tb0219_defconfig
mips                          malta_defconfig
powerpc                 mpc836x_mds_defconfig
powerpc                   bluestone_defconfig
mips                           ip27_defconfig
powerpc                      ppc44x_defconfig
arm                     davinci_all_defconfig
arm                   milbeaut_m10v_defconfig
powerpc                          allmodconfig
arm                    vt8500_v6_v7_defconfig
powerpc                          g5_defconfig
powerpc                      acadia_defconfig
arm                        magician_defconfig
mips                     cu1830-neo_defconfig
mips                        omega2p_defconfig
i386                             allyesconfig
powerpc                      walnut_defconfig
powerpc                     kilauea_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a011-20220124
x86_64               randconfig-a013-20220124
x86_64               randconfig-a015-20220124
x86_64               randconfig-a016-20220124
x86_64               randconfig-a014-20220124
x86_64               randconfig-a012-20220124
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                 randconfig-a011-20220124
i386                 randconfig-a016-20220124
i386                 randconfig-a013-20220124
i386                 randconfig-a014-20220124
i386                 randconfig-a015-20220124
i386                 randconfig-a012-20220124
riscv                randconfig-r042-20220124
s390                 randconfig-r044-20220124
hexagon              randconfig-r045-20220124
hexagon              randconfig-r045-20220127
hexagon              randconfig-r041-20220124
hexagon              randconfig-r041-20220127
hexagon              randconfig-r045-20220125
hexagon              randconfig-r041-20220125

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
