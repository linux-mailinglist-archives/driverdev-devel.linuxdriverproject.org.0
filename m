Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F54410E14
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Sep 2021 02:57:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2341B40336;
	Mon, 20 Sep 2021 00:57:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XZ4ibDVSgHBB; Mon, 20 Sep 2021 00:57:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C218F40147;
	Mon, 20 Sep 2021 00:56:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 551801BF97A
 for <devel@linuxdriverproject.org>; Mon, 20 Sep 2021 00:56:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 45F4F40147
 for <devel@linuxdriverproject.org>; Mon, 20 Sep 2021 00:56:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6IRW7WIf2F53 for <devel@linuxdriverproject.org>;
 Mon, 20 Sep 2021 00:56:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 58205400DF
 for <devel@driverdev.osuosl.org>; Mon, 20 Sep 2021 00:56:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10112"; a="221169281"
X-IronPort-AV: E=Sophos;i="5.85,305,1624345200"; d="scan'208";a="221169281"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2021 17:56:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,305,1624345200"; d="scan'208";a="473382977"
Received: from lkp-server01.sh.intel.com (HELO 285e7b116627) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 19 Sep 2021 17:56:45 -0700
Received: from kbuild by 285e7b116627 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mS7bw-0005iW-MJ; Mon, 20 Sep 2021 00:56:44 +0000
Date: Mon, 20 Sep 2021 08:56:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 7b228bdf87c20f6240714a1d3a32d74001715adc
Message-ID: <6147dc2f.yEdHD1AuB44e7jQo%lkp@intel.com>
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
branch HEAD: 7b228bdf87c20f6240714a1d3a32d74001715adc  staging: rts5208: remove unnecessary parentheses in ms.c

elapsed time: 2044m

configs tested: 131
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
s390                       zfcpdump_defconfig
powerpc                       ebony_defconfig
mips                           jazz_defconfig
powerpc                        fsp2_defconfig
arm                             rpc_defconfig
s390                          debug_defconfig
arc                     haps_hs_smp_defconfig
arm                           omap1_defconfig
powerpc                         wii_defconfig
powerpc                 mpc837x_mds_defconfig
arm                         orion5x_defconfig
arc                            hsdk_defconfig
arm                        neponset_defconfig
powerpc                      pmac32_defconfig
powerpc                      mgcoge_defconfig
mips                     cu1000-neo_defconfig
arm                       cns3420vb_defconfig
sh                          landisk_defconfig
arm                        realview_defconfig
powerpc                      makalu_defconfig
sh                        edosk7705_defconfig
arc                          axs103_defconfig
powerpc                    ge_imp3a_defconfig
sh                               alldefconfig
powerpc                   microwatt_defconfig
riscv             nommu_k210_sdcard_defconfig
arm                             pxa_defconfig
arm                         palmz72_defconfig
powerpc                  mpc866_ads_defconfig
arm                         at91_dt_defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                     asp8347_defconfig
mips                       lemote2f_defconfig
arm                           h3600_defconfig
sh                          r7785rp_defconfig
powerpc                     tqm8540_defconfig
powerpc                        cell_defconfig
arm                          pxa168_defconfig
mips                   sb1250_swarm_defconfig
x86_64               randconfig-c001-20210919
i386                 randconfig-c001-20210919
arm                  randconfig-c002-20210919
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
parisc                              defconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                             allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a002-20210919
x86_64               randconfig-a004-20210919
x86_64               randconfig-a006-20210919
x86_64               randconfig-a003-20210919
x86_64               randconfig-a001-20210919
x86_64               randconfig-a005-20210919
i386                 randconfig-a004-20210919
i386                 randconfig-a005-20210919
i386                 randconfig-a002-20210919
i386                 randconfig-a006-20210919
i386                 randconfig-a001-20210919
i386                 randconfig-a003-20210919
riscv                randconfig-r042-20210918
s390                 randconfig-r044-20210918
arc                  randconfig-r043-20210918
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
riscv                randconfig-c006-20210919
x86_64               randconfig-c007-20210919
powerpc              randconfig-c003-20210919
mips                 randconfig-c004-20210919
i386                 randconfig-c001-20210919
arm                  randconfig-c002-20210919
s390                 randconfig-c005-20210919
x86_64               randconfig-a013-20210919
x86_64               randconfig-a016-20210919
x86_64               randconfig-a012-20210919
x86_64               randconfig-a011-20210919
x86_64               randconfig-a014-20210919
x86_64               randconfig-a015-20210919
i386                 randconfig-a016-20210919
i386                 randconfig-a012-20210919
i386                 randconfig-a011-20210919
i386                 randconfig-a015-20210919
i386                 randconfig-a013-20210919
i386                 randconfig-a014-20210919
hexagon              randconfig-r045-20210918
hexagon              randconfig-r041-20210918
riscv                randconfig-r042-20210919
hexagon              randconfig-r045-20210919
s390                 randconfig-r044-20210919
hexagon              randconfig-r041-20210919

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
