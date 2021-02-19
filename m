Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA4E320040
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 22:20:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2F8A60720
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Feb 2021 21:20:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id emmGNkloCxHC for <lists+driverdev-devel@lfdr.de>;
	Fri, 19 Feb 2021 21:20:42 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 0358A6070B; Fri, 19 Feb 2021 21:20:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 16DB060690;
	Fri, 19 Feb 2021 21:20:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 48F391BF32E
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 21:20:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 36FBD60690
 for <devel@linuxdriverproject.org>; Fri, 19 Feb 2021 21:20:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kPlksenAJ7tz for <devel@linuxdriverproject.org>;
 Fri, 19 Feb 2021 21:20:09 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 05F1B606F4; Fri, 19 Feb 2021 21:20:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2A18260690
 for <devel@driverdev.osuosl.org>; Fri, 19 Feb 2021 21:20:07 +0000 (UTC)
IronPort-SDR: xLeG8EEfVHvfdxdoaSGkmfVQYWhWnQ3MmzG8hcrUSuHMr2ZILbu+ZoRQNBLESSvH20bj7M8UE1
 0j/qh1a+0QFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9900"; a="171635667"
X-IronPort-AV: E=Sophos;i="5.81,191,1610438400"; d="scan'208";a="171635667"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 13:20:06 -0800
IronPort-SDR: GNNRlFrWfcggxp9aS7pIUFt5DgMO0tKwiSXJpWPs8iT88SSNYN1OqS/+BV6YvFdrj/opvnDMiJ
 t2soHgJxH6YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,191,1610438400"; d="scan'208";a="363101045"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 19 Feb 2021 13:20:04 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lDDC0-000AdX-65; Fri, 19 Feb 2021 21:20:04 +0000
Date: Sat, 20 Feb 2021 05:19:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 5fdd46f1d75e5d6f740faf26aa798fbd08a79029
Message-ID: <60302b58.hwbBRwoMRZ7NIihU%lkp@intel.com>
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
branch HEAD: 5fdd46f1d75e5d6f740faf26aa798fbd08a79029  staging: wimax/i2400m: don't change the endianness of one byte variable

elapsed time: 727m

configs tested: 137
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                      cm5200_defconfig
mips                       rbtx49xx_defconfig
powerpc                     stx_gp3_defconfig
sh                           se7780_defconfig
arm                        mvebu_v5_defconfig
powerpc                     sequoia_defconfig
ia64                             alldefconfig
sh                             espt_defconfig
arm                          pcm027_defconfig
mips                      pistachio_defconfig
arm                  colibri_pxa270_defconfig
sh                            migor_defconfig
arm                          pxa910_defconfig
arc                    vdk_hs38_smp_defconfig
powerpc                  storcenter_defconfig
mips                       bmips_be_defconfig
arm                            u300_defconfig
powerpc                  iss476-smp_defconfig
arm                        spear3xx_defconfig
powerpc                   motionpro_defconfig
arm                             pxa_defconfig
sh                          polaris_defconfig
arm                         at91_dt_defconfig
sh                        edosk7760_defconfig
powerpc                 mpc834x_mds_defconfig
arm                         bcm2835_defconfig
arm                         s5pv210_defconfig
powerpc                 canyonlands_defconfig
sh                     sh7710voipgw_defconfig
powerpc                      ppc44x_defconfig
riscv                    nommu_k210_defconfig
x86_64                           alldefconfig
arm                        mini2440_defconfig
riscv                               defconfig
sh                           se7721_defconfig
mips                         rt305x_defconfig
arm                       omap2plus_defconfig
powerpc                    amigaone_defconfig
sparc64                          alldefconfig
mips                          rb532_defconfig
mips                           jazz_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                     sbc8548_defconfig
arm                         hackkit_defconfig
powerpc                    adder875_defconfig
sh                           se7724_defconfig
arm                           stm32_defconfig
arm                          imote2_defconfig
s390                       zfcpdump_defconfig
sh                          rsk7264_defconfig
powerpc                 mpc8540_ads_defconfig
mips                          rm200_defconfig
xtensa                         virt_defconfig
arm                           corgi_defconfig
m68k                        mvme16x_defconfig
sh                   sh7770_generic_defconfig
arm                            hisi_defconfig
ia64                            zx1_defconfig
powerpc                  mpc866_ads_defconfig
arm                            qcom_defconfig
sh                               j2_defconfig
powerpc                mpc7448_hpc2_defconfig
xtensa                  nommu_kc705_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
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
s390                             allmodconfig
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
powerpc                           allnoconfig
i386                 randconfig-a005-20210219
i386                 randconfig-a003-20210219
i386                 randconfig-a002-20210219
i386                 randconfig-a004-20210219
i386                 randconfig-a001-20210219
i386                 randconfig-a006-20210219
x86_64               randconfig-a012-20210219
x86_64               randconfig-a016-20210219
x86_64               randconfig-a013-20210219
x86_64               randconfig-a015-20210219
x86_64               randconfig-a011-20210219
x86_64               randconfig-a014-20210219
i386                 randconfig-a016-20210219
i386                 randconfig-a012-20210219
i386                 randconfig-a014-20210219
i386                 randconfig-a013-20210219
i386                 randconfig-a011-20210219
i386                 randconfig-a015-20210219
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20210219
x86_64               randconfig-a001-20210219
x86_64               randconfig-a004-20210219
x86_64               randconfig-a002-20210219
x86_64               randconfig-a005-20210219
x86_64               randconfig-a006-20210219

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
