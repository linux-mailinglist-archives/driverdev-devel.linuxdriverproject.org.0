Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C435A071A
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Aug 2022 04:06:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4E5D44183C;
	Thu, 25 Aug 2022 02:06:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E5D44183C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CAYwyZZsKolw; Thu, 25 Aug 2022 02:06:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3CE6A41829;
	Thu, 25 Aug 2022 02:06:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3CE6A41829
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2B5C91BF368
 for <devel@linuxdriverproject.org>; Thu, 25 Aug 2022 02:06:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0070C61042
 for <devel@linuxdriverproject.org>; Thu, 25 Aug 2022 02:06:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0070C61042
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CjLHXfqm7183 for <devel@linuxdriverproject.org>;
 Thu, 25 Aug 2022 02:06:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26C0C61039
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 26C0C61039
 for <devel@driverdev.osuosl.org>; Thu, 25 Aug 2022 02:06:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="274512996"
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="274512996"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 19:06:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="639382895"
Received: from lkp-server02.sh.intel.com (HELO 34e741d32628) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 24 Aug 2022 19:06:05 -0700
Received: from kbuild by 34e741d32628 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oR2Fx-0001bS-0Y;
 Thu, 25 Aug 2022 02:06:05 +0000
Date: Thu, 25 Aug 2022 10:05:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 a4f124908617553ea3929a17293cea4960c92ba3
Message-ID: <6306d8f6.5ddrf0BDX09NuTsT%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661393168; x=1692929168;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=6yCq3aXw/RuDmx/Ft1s4JomVmApB6MNA4nE2JbumN3g=;
 b=LShQyHyYTEPDIcD0W81Gm1dASzQJe/vib86Td9gAX9tCw8NzVaMGDhEm
 8DDWh5BHDzSQcRc4jEZ6cN7g9fMlLrBBIsT94PejH4Bjf4aFQyJvZtJS0
 hPrdc57POTML2o4a2vAGQ5DEUxPLaPLM6XgqhOmobPAYOL7OMyRyMXBLu
 OGDO6oqqDFuASi/sbb/OBowUBVm3I4uYZUAm2MUc2c4cezHVEjCDokxTq
 B7RJSukx4W3diHb3ZUksks7RS+p1LM21Wqq+twTebm4XgqMyAHpwyqA15
 BZmY7usxO7l9TUtt5izdD4O3Iid74SLOSP/UistkLo9ItQo9VtVq5JFqD
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LShQyHyY
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
branch HEAD: a4f124908617553ea3929a17293cea4960c92ba3  Revert "iommu/of: Delete usage of driver_deferred_probe_check_state()"

elapsed time: 2304m

configs tested: 192
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220823
x86_64                              defconfig
m68k                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a004
x86_64                               rhel-8.3
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                           allyesconfig
arm                                 defconfig
ia64                             allmodconfig
i386                             allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
loongarch                           defconfig
loongarch                         allnoconfig
i386                          randconfig-a016
arm64                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
arm                              allyesconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
arm                       omap2plus_defconfig
arc                          axs101_defconfig
arc                         haps_hs_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
powerpc                          allyesconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                            allyesconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
ia64                         bigsur_defconfig
m68k                        m5272c3_defconfig
parisc                           alldefconfig
powerpc                     tqm8555_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
sh                               j2_defconfig
sh                           se7721_defconfig
m68k                          amiga_defconfig
sh                             shx3_defconfig
powerpc                      tqm8xx_defconfig
ia64                                defconfig
m68k                        stmark2_defconfig
i386                          randconfig-c001
sh                           se7724_defconfig
arm                         lubbock_defconfig
powerpc                   currituck_defconfig
arc                        nsim_700_defconfig
sh                   sh7770_generic_defconfig
arm                          gemini_defconfig
m68k                          atari_defconfig
sh                          sdk7786_defconfig
powerpc                    klondike_defconfig
sparc                             allnoconfig
microblaze                          defconfig
m68k                        mvme16x_defconfig
m68k                            mac_defconfig
sh                        sh7763rdp_defconfig
m68k                          multi_defconfig
arc                      axs103_smp_defconfig
arm                            hisi_defconfig
um                                  defconfig
sh                     sh7710voipgw_defconfig
parisc64                         alldefconfig
sh                          kfr2r09_defconfig
xtensa                          iss_defconfig
arm                           h5000_defconfig
arm64                               defconfig
arm                              allmodconfig
m68k                                defconfig
mips                             allmodconfig
m68k                            q40_defconfig
ia64                        generic_defconfig
arc                     nsimosci_hs_defconfig
m68k                         apollo_defconfig
arm                        shmobile_defconfig
ia64                          tiger_defconfig
mips                      loongson3_defconfig
arm                             rpc_defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
arm                            lart_defconfig
m68k                       m5249evb_defconfig
sh                             espt_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220824
microblaze                      mmu_defconfig
arm                        realview_defconfig
sh                          r7780mp_defconfig
sh                        edosk7760_defconfig
sh                           se7751_defconfig
powerpc                      arches_defconfig
arm                            zeus_defconfig
s390                          debug_defconfig
ia64                            zx1_defconfig
powerpc                      pcm030_defconfig
arc                    vdk_hs38_smp_defconfig
sh                          rsk7269_defconfig
xtensa                         virt_defconfig
sh                   sh7724_generic_defconfig
powerpc                      makalu_defconfig
arm                            pleb_defconfig
mips                        bcm47xx_defconfig
csky                             alldefconfig
ia64                      gensparse_defconfig
arm                      integrator_defconfig
sh                         apsh4a3a_defconfig
sh                           se7722_defconfig
arm                           viper_defconfig
riscv                randconfig-r042-20220824
s390                 randconfig-r044-20220824
arc                  randconfig-r043-20220824
sh                   secureedge5410_defconfig
sh                         ap325rxa_defconfig
xtensa                    smp_lx200_defconfig
sh                      rts7751r2d1_defconfig
sh                            titan_defconfig
mips                         cobalt_defconfig

clang tested configs:
hexagon              randconfig-r041-20220823
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
hexagon              randconfig-r045-20220823
riscv                randconfig-r042-20220823
s390                 randconfig-r044-20220823
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
mips                     cu1000-neo_defconfig
powerpc                    gamecube_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
arm                            mmp2_defconfig
powerpc                     powernv_defconfig
x86_64                        randconfig-k001
mips                     loongson1c_defconfig
powerpc                     ppa8548_defconfig
powerpc                  mpc866_ads_defconfig
hexagon              randconfig-r045-20220824
hexagon              randconfig-r041-20220824
mips                        omega2p_defconfig
powerpc                 xes_mpc85xx_defconfig
arm                        neponset_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                          g5_defconfig
mips                     decstation_defconfig
mips                           ci20_defconfig
riscv                            alldefconfig
powerpc                      ppc64e_defconfig
powerpc                 mpc8560_ads_defconfig
powerpc                    ge_imp3a_defconfig
powerpc                     tqm8540_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
