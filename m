Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B08234B5AF0
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Feb 2022 21:25:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1F55181801;
	Mon, 14 Feb 2022 20:25:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JBoBl6hfF7ui; Mon, 14 Feb 2022 20:25:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B00E181301;
	Mon, 14 Feb 2022 20:25:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2E0A51BF348
 for <devel@linuxdriverproject.org>; Mon, 14 Feb 2022 20:25:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1C679605A5
 for <devel@linuxdriverproject.org>; Mon, 14 Feb 2022 20:25:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OG09slJmAbHy for <devel@linuxdriverproject.org>;
 Mon, 14 Feb 2022 20:25:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BCBBB60035
 for <devel@driverdev.osuosl.org>; Mon, 14 Feb 2022 20:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644870320; x=1676406320;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=aqE8i487GPvRNukbMPChHLnIt+Ysk2qDThnAZXEWj6c=;
 b=nDXfGh3jyCTsMw8tAgMd19nccyBjyC7fGyVe80swUe8WfF035qKFRMy4
 dZK/suDAzbExjrWbEoCFVwoX2lJxIu0gSrE6zsMeVzHcapfV0b4me7sJ4
 DgheBvvxWcnMZyPLafQsVM6YZVKRH+r5v9Ac+dhxSz60Zyegni7KLbDSB
 RC8k7aUQ/E7O4Rg7u+h/pfWCbhcpD1SbPQBA56ZYouMjehrYDVB3YsodF
 YoTaqfcbdGVOMG4NSQINDJQK5THAnn404u/5QSRLtoSSqGnprcG5zmb8s
 UfWn1jKHPZFQtJus2t1vVmBgSzhtWrQJdkjavYqCKo82qFzpUW/03LSxw w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="230142015"
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="230142015"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 12:25:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="773216681"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 14 Feb 2022 12:25:18 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nJhuQ-0008uW-0v; Mon, 14 Feb 2022 20:25:18 +0000
Date: Tue, 15 Feb 2022 04:24:59 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 1e7f32f776089af32b6ec9b801fe976778c8448b
Message-ID: <620aba9b.ladKFYlrjbbxHJn3%lkp@intel.com>
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
branch HEAD: 1e7f32f776089af32b6ec9b801fe976778c8448b  Merge 5.17-rc4 into staging-testing

elapsed time: 733m

configs tested: 221
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                            allyesconfig
i386                 randconfig-c001-20220214
i386                          randconfig-c001
sh                          rsk7264_defconfig
arm                           h3600_defconfig
openrisc                            defconfig
nios2                            alldefconfig
sh                          r7780mp_defconfig
sh                            titan_defconfig
ia64                         bigsur_defconfig
m68k                        mvme147_defconfig
sh                            hp6xx_defconfig
powerpc64                        alldefconfig
sh                               alldefconfig
arm                           tegra_defconfig
powerpc                     stx_gp3_defconfig
mips                        vocore2_defconfig
i386                             alldefconfig
sh                          sdk7780_defconfig
powerpc                    klondike_defconfig
powerpc                       ppc64_defconfig
arm                        trizeps4_defconfig
xtensa                         virt_defconfig
arc                     haps_hs_smp_defconfig
xtensa                              defconfig
arm                          lpd270_defconfig
csky                                defconfig
powerpc                     mpc83xx_defconfig
arm                          pxa910_defconfig
arm                           corgi_defconfig
mips                     decstation_defconfig
sh                ecovec24-romimage_defconfig
sh                              ul2_defconfig
mips                         rt305x_defconfig
sh                        edosk7705_defconfig
powerpc                      cm5200_defconfig
powerpc                       eiger_defconfig
arm                        shmobile_defconfig
m68k                         apollo_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                         lubbock_defconfig
parisc                           allyesconfig
arm                      integrator_defconfig
mips                          rb532_defconfig
m68k                       m5475evb_defconfig
mips                     loongson1b_defconfig
sparc64                             defconfig
sh                             shx3_defconfig
powerpc                      chrp32_defconfig
h8300                            alldefconfig
sh                         apsh4a3a_defconfig
m68k                            mac_defconfig
mips                         tb0226_defconfig
sparc                               defconfig
arm64                            alldefconfig
arm                        mvebu_v7_defconfig
sparc64                          alldefconfig
mips                            gpr_defconfig
arm                         axm55xx_defconfig
sh                           se7721_defconfig
powerpc                     rainier_defconfig
s390                                defconfig
powerpc                 linkstation_defconfig
m68k                        stmark2_defconfig
sh                           se7722_defconfig
mips                         db1xxx_defconfig
powerpc                      ppc40x_defconfig
h8300                               defconfig
arm                         lpc18xx_defconfig
powerpc                      bamboo_defconfig
arc                        nsimosci_defconfig
powerpc                      tqm8xx_defconfig
sh                         ap325rxa_defconfig
powerpc                    adder875_defconfig
m68k                       bvme6000_defconfig
arm                      jornada720_defconfig
mips                            ar7_defconfig
sparc                       sparc64_defconfig
xtensa                           alldefconfig
mips                 decstation_r4k_defconfig
powerpc                  iss476-smp_defconfig
arm                  randconfig-c002-20220214
arm                  randconfig-c002-20220213
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
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a013-20220214
x86_64               randconfig-a014-20220214
x86_64               randconfig-a012-20220214
x86_64               randconfig-a015-20220214
x86_64               randconfig-a011-20220214
x86_64               randconfig-a016-20220214
i386                 randconfig-a013-20220214
i386                 randconfig-a016-20220214
i386                 randconfig-a012-20220214
i386                 randconfig-a015-20220214
i386                 randconfig-a011-20220214
i386                 randconfig-a014-20220214
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
riscv                randconfig-r042-20220214
arc                  randconfig-r043-20220214
s390                 randconfig-r044-20220214
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
riscv                randconfig-c006-20220214
i386                 randconfig-c001-20220214
x86_64               randconfig-c007-20220214
powerpc              randconfig-c003-20220214
arm                  randconfig-c002-20220214
mips                 randconfig-c004-20220214
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220213
arm                  randconfig-c002-20220213
i386                          randconfig-c001
mips                 randconfig-c004-20220213
riscv                randconfig-c006-20220213
arm                       aspeed_g4_defconfig
hexagon                             defconfig
mips                        workpad_defconfig
arm                         s3c2410_defconfig
powerpc                     ppa8548_defconfig
powerpc                     pseries_defconfig
powerpc                      ppc64e_defconfig
arm                        spear3xx_defconfig
powerpc                     tqm8560_defconfig
powerpc                     kmeter1_defconfig
mips                          ath25_defconfig
powerpc                        icon_defconfig
powerpc                     mpc5200_defconfig
arm                  colibri_pxa300_defconfig
arm                         bcm2835_defconfig
powerpc                 mpc836x_mds_defconfig
arm                              alldefconfig
powerpc                  mpc885_ads_defconfig
mips                     loongson1c_defconfig
arm                        magician_defconfig
mips                         tb0287_defconfig
powerpc                     tqm8540_defconfig
powerpc                    gamecube_defconfig
powerpc                 mpc832x_rdb_defconfig
mips                           rs90_defconfig
mips                          ath79_defconfig
mips                     cu1000-neo_defconfig
arm                            dove_defconfig
mips                            e55_defconfig
x86_64               randconfig-a002-20220214
x86_64               randconfig-a006-20220214
x86_64               randconfig-a005-20220214
x86_64               randconfig-a004-20220214
x86_64               randconfig-a003-20220214
x86_64               randconfig-a001-20220214
i386                 randconfig-a004-20220214
i386                 randconfig-a005-20220214
i386                 randconfig-a006-20220214
i386                 randconfig-a002-20220214
i386                 randconfig-a003-20220214
i386                 randconfig-a001-20220214
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a015
i386                          randconfig-a013
i386                          randconfig-a011
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
hexagon              randconfig-r045-20220213
hexagon              randconfig-r045-20220214
hexagon              randconfig-r041-20220214
hexagon              randconfig-r041-20220213
riscv                randconfig-r042-20220213
s390                 randconfig-r044-20220213

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
