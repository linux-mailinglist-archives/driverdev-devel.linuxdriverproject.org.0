Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14FCE2F1FA6
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 Jan 2021 20:41:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B6AEC8681C;
	Mon, 11 Jan 2021 19:41:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KlAh9rYRLzCL; Mon, 11 Jan 2021 19:41:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D7951867D9;
	Mon, 11 Jan 2021 19:41:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6867B1BF356
 for <devel@linuxdriverproject.org>; Mon, 11 Jan 2021 19:41:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 64AD3867D9
 for <devel@linuxdriverproject.org>; Mon, 11 Jan 2021 19:41:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U6sRSwUw04B2 for <devel@linuxdriverproject.org>;
 Mon, 11 Jan 2021 19:41:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id AB57886657
 for <devel@driverdev.osuosl.org>; Mon, 11 Jan 2021 19:41:06 +0000 (UTC)
IronPort-SDR: w2uWXpx9rHY/eKvCGoB7wyC3R/bzDFL4LCDF6JLyCV69V+yYI22MbMDfzgPKASyDHp2kV1Iq8M
 O0lTJEZKJuUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9861"; a="178018367"
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="178018367"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2021 11:41:03 -0800
IronPort-SDR: ohednFWnHJziOghibA5uVuXcgkf5d5/qU3WwW4OizH73k8hx/88Ajid5vlyyJXZzzEFWJGkRi1
 35oNhd3+H3SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,339,1602572400"; d="scan'208";a="397131750"
Received: from lkp-server01.sh.intel.com (HELO 3cff8e4c45aa) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 11 Jan 2021 11:41:02 -0800
Received: from kbuild by 3cff8e4c45aa with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kz33l-0000Ik-DQ; Mon, 11 Jan 2021 19:41:01 +0000
Date: Tue, 12 Jan 2021 03:40:28 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 3dba1da360da5071d013fd0fb8839124104390fa
Message-ID: <5ffca9ac.GsDFWz4ohkdV3VP2%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-next
branch HEAD: 3dba1da360da5071d013fd0fb8839124104390fa  Merge 5.11-rc3 into staging-next

elapsed time: 722m

configs tested: 105
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
nios2                            allyesconfig
powerpc                 mpc8560_ads_defconfig
sh                        dreamcast_defconfig
powerpc                      makalu_defconfig
powerpc                           allnoconfig
powerpc                       maple_defconfig
powerpc                     powernv_defconfig
arm                        shmobile_defconfig
mips                      pic32mzda_defconfig
mips                       bmips_be_defconfig
mips                  decstation_64_defconfig
h8300                     edosk2674_defconfig
um                             i386_defconfig
arc                            hsdk_defconfig
powerpc                     tqm8540_defconfig
mips                      maltaaprp_defconfig
sh                          polaris_defconfig
arc                     haps_hs_smp_defconfig
arm                             mxs_defconfig
parisc                generic-32bit_defconfig
xtensa                       common_defconfig
mips                      fuloong2e_defconfig
arm                           h3600_defconfig
sparc64                          alldefconfig
mips                        vocore2_defconfig
powerpc                 mpc836x_mds_defconfig
arm                    vt8500_v6_v7_defconfig
sh                           se7705_defconfig
mips                      malta_kvm_defconfig
powerpc                      acadia_defconfig
powerpc                 mpc85xx_cds_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
i386                 randconfig-a002-20210111
i386                 randconfig-a005-20210111
i386                 randconfig-a006-20210111
i386                 randconfig-a001-20210111
i386                 randconfig-a003-20210111
i386                 randconfig-a004-20210111
i386                 randconfig-a012-20210111
i386                 randconfig-a011-20210111
i386                 randconfig-a016-20210111
i386                 randconfig-a015-20210111
i386                 randconfig-a013-20210111
i386                 randconfig-a014-20210111
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20210110
x86_64               randconfig-a006-20210110
x86_64               randconfig-a001-20210110
x86_64               randconfig-a003-20210110
x86_64               randconfig-a005-20210110
x86_64               randconfig-a002-20210110
x86_64               randconfig-a012-20210111
x86_64               randconfig-a013-20210111
x86_64               randconfig-a014-20210111
x86_64               randconfig-a011-20210111
x86_64               randconfig-a015-20210111
x86_64               randconfig-a016-20210111

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
