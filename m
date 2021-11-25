Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 313E345D377
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Nov 2021 04:10:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5D0408268F;
	Thu, 25 Nov 2021 03:10:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 164QozoiLRMF; Thu, 25 Nov 2021 03:10:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7556282605;
	Thu, 25 Nov 2021 03:10:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0A7FF1BF3E9
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 03:10:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EE679403F8
 for <devel@linuxdriverproject.org>; Thu, 25 Nov 2021 03:10:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JSdmdeLbJzoo for <devel@linuxdriverproject.org>;
 Thu, 25 Nov 2021 03:10:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BEC3B403F7
 for <devel@driverdev.osuosl.org>; Thu, 25 Nov 2021 03:10:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10178"; a="296236897"
X-IronPort-AV: E=Sophos;i="5.87,261,1631602800"; d="scan'208";a="296236897"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 19:10:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,261,1631602800"; d="scan'208";a="457693995"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 24 Nov 2021 19:10:16 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mq59L-0005gE-Gr; Thu, 25 Nov 2021 03:10:15 +0000
Date: Thu, 25 Nov 2021 11:09:12 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 393c3714081a53795bbff0e985d24146def6f57f
Message-ID: <619efe58.qk1FByNHQIQ+K0ce%lkp@intel.com>
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
branch HEAD: 393c3714081a53795bbff0e985d24146def6f57f  kernfs: switch global kernfs_rwsem lock to per-fs lock

elapsed time: 781m

configs tested: 151
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211124
i386                 randconfig-c001-20211125
m68k                          hp300_defconfig
mips                      pic32mzda_defconfig
arm                       cns3420vb_defconfig
m68k                          sun3x_defconfig
arm                          simpad_defconfig
sparc                               defconfig
arm                            qcom_defconfig
m68k                       m5275evb_defconfig
powerpc                   currituck_defconfig
ia64                             alldefconfig
sh                           se7721_defconfig
arm                        spear3xx_defconfig
s390                       zfcpdump_defconfig
arm                  colibri_pxa300_defconfig
mips                         bigsur_defconfig
sh                             espt_defconfig
um                                  defconfig
sh                          lboxre2_defconfig
powerpc                     tqm8541_defconfig
powerpc                    socrates_defconfig
arm                        realview_defconfig
powerpc                      chrp32_defconfig
mips                           gcw0_defconfig
xtensa                         virt_defconfig
powerpc                 mpc8315_rdb_defconfig
mips                  cavium_octeon_defconfig
mips                      bmips_stb_defconfig
arm                            mmp2_defconfig
powerpc                      mgcoge_defconfig
powerpc                       ebony_defconfig
mips                      malta_kvm_defconfig
mips                        qi_lb60_defconfig
arm                        magician_defconfig
arm                        multi_v7_defconfig
powerpc               mpc834x_itxgp_defconfig
nios2                            allyesconfig
sh                          sdk7786_defconfig
mips                         tb0226_defconfig
mips                           ip22_defconfig
sh                          rsk7264_defconfig
powerpc64                           defconfig
sh                            shmin_defconfig
arm                          lpd270_defconfig
arm                          collie_defconfig
x86_64                           allyesconfig
sh                           se7724_defconfig
mips                      loongson3_defconfig
arm                            mps2_defconfig
arm                      jornada720_defconfig
arm                           omap1_defconfig
mips                    maltaup_xpa_defconfig
sh                        dreamcast_defconfig
arm                         socfpga_defconfig
mips                  maltasmvp_eva_defconfig
sparc64                             defconfig
powerpc                 canyonlands_defconfig
sh                 kfr2r09-romimage_defconfig
m68k                            mac_defconfig
powerpc                     mpc83xx_defconfig
nios2                               defconfig
m68k                        m5307c3_defconfig
mips                     loongson1b_defconfig
powerpc                   microwatt_defconfig
m68k                        stmark2_defconfig
arm                  randconfig-c002-20211124
arm                  randconfig-c002-20211125
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
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
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a011-20211124
x86_64               randconfig-a014-20211124
x86_64               randconfig-a012-20211124
x86_64               randconfig-a016-20211124
x86_64               randconfig-a013-20211124
x86_64               randconfig-a015-20211124
i386                 randconfig-a016-20211124
i386                 randconfig-a015-20211124
i386                 randconfig-a012-20211124
i386                 randconfig-a013-20211124
i386                 randconfig-a014-20211124
i386                 randconfig-a011-20211124
arc                  randconfig-r043-20211124
s390                 randconfig-r044-20211124
riscv                randconfig-r042-20211124
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

clang tested configs:
s390                 randconfig-c005-20211124
i386                 randconfig-c001-20211124
powerpc              randconfig-c003-20211124
riscv                randconfig-c006-20211124
arm                  randconfig-c002-20211124
x86_64               randconfig-c007-20211124
mips                 randconfig-c004-20211124
x86_64               randconfig-a001-20211124
x86_64               randconfig-a006-20211124
x86_64               randconfig-a003-20211124
x86_64               randconfig-a004-20211124
x86_64               randconfig-a005-20211124
x86_64               randconfig-a002-20211124
i386                 randconfig-a002-20211124
i386                 randconfig-a001-20211124
i386                 randconfig-a005-20211124
i386                 randconfig-a006-20211124
i386                 randconfig-a004-20211124
i386                 randconfig-a003-20211124
hexagon              randconfig-r045-20211124
hexagon              randconfig-r041-20211124

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
