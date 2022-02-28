Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 309224C7D99
	for <lists+driverdev-devel@lfdr.de>; Mon, 28 Feb 2022 23:40:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 61018410D5;
	Mon, 28 Feb 2022 22:40:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fe0v44AlNBGq; Mon, 28 Feb 2022 22:40:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 112ED410D3;
	Mon, 28 Feb 2022 22:40:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 70B7B1BF304
 for <devel@linuxdriverproject.org>; Mon, 28 Feb 2022 22:40:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5F27682538
 for <devel@linuxdriverproject.org>; Mon, 28 Feb 2022 22:40:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RdU0PydKP_fb for <devel@linuxdriverproject.org>;
 Mon, 28 Feb 2022 22:40:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C57C58254D
 for <devel@driverdev.osuosl.org>; Mon, 28 Feb 2022 22:40:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646088032; x=1677624032;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=/IW4pi/ObnXZAx3Pv/p7fGx1QTupHBCIIiKDYtem2q8=;
 b=V5Akm+6/GSY7G/wQMs+h+DWxXMnYDldy6RThUyV2OEdSQhRxxBYE15O6
 BN5bNijtX/0RNXUyFTn7rqP48iJ59vxWyhYZoREd13xlojhmUZXd15IHY
 pR1toZs0pXzoHJpOSSp6f+QBKERF9U8RcY0BOammYsM7D9QKteS/3DmvL
 V9SCvqOzNREAkdaTiUi4UytDQoKeix4GtRV+POuT9yrpeQ1zeNTSbp0Lz
 3V4ZJ+Ucadt+lvSIS0QeHZFteq0caZdqlbFDevXqQllo2AASpY7YRakzU
 KpxgpP+s0YOytBYKStgR0t1/ie6xtk4WppfEg1gIad392etLSD6ZQdHmi w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10272"; a="339437713"
X-IronPort-AV: E=Sophos;i="5.90,144,1643702400"; d="scan'208";a="339437713"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 14:40:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,144,1643702400"; d="scan'208";a="708828180"
Received: from lkp-server01.sh.intel.com (HELO 788b1cd46f0d) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 28 Feb 2022 14:40:30 -0800
Received: from kbuild by 788b1cd46f0d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nOogv-0007qL-Ju; Mon, 28 Feb 2022 22:40:29 +0000
Date: Tue, 01 Mar 2022 06:40:11 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 9b166123d295cb50f047601e80c6862d42b5d2be
Message-ID: <621d4f4b.TE1N10jazR8jHpne%lkp@intel.com>
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
branch HEAD: 9b166123d295cb50f047601e80c6862d42b5d2be  kobject: kobj_type: remove default_attrs

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
i386                          randconfig-c001
i386                 randconfig-c001-20220228
arc                    vdk_hs38_smp_defconfig
xtensa                  nommu_kc705_defconfig
openrisc                  or1klitex_defconfig
arm                             rpc_defconfig
powerpc                    sam440ep_defconfig
sparc                            allyesconfig
mips                           xway_defconfig
sh                        sh7785lcr_defconfig
powerpc                      pcm030_defconfig
m68k                       m5208evb_defconfig
openrisc                    or1ksim_defconfig
arm                        trizeps4_defconfig
arc                         haps_hs_defconfig
powerpc                      cm5200_defconfig
arc                        nsim_700_defconfig
xtensa                           alldefconfig
powerpc                    amigaone_defconfig
powerpc                     sequoia_defconfig
alpha                               defconfig
arc                           tb10x_defconfig
arm                           stm32_defconfig
powerpc                       maple_defconfig
powerpc                   currituck_defconfig
m68k                             allyesconfig
mips                      fuloong2e_defconfig
mips                           ci20_defconfig
powerpc                    adder875_defconfig
sh                          lboxre2_defconfig
sh                         microdev_defconfig
sh                          polaris_defconfig
sh                             sh03_defconfig
xtensa                    smp_lx200_defconfig
sh                      rts7751r2d1_defconfig
mips                            ar7_defconfig
sh                             espt_defconfig
sh                           se7206_defconfig
arc                        vdk_hs38_defconfig
nds32                               defconfig
arm                             ezx_defconfig
arc                          axs101_defconfig
powerpc                      chrp32_defconfig
powerpc                      mgcoge_defconfig
m68k                         amcore_defconfig
powerpc                     taishan_defconfig
sh                     sh7710voipgw_defconfig
sh                          urquell_defconfig
m68k                        mvme16x_defconfig
powerpc                     rainier_defconfig
arm                          pxa910_defconfig
arm                  randconfig-c002-20220227
arm                  randconfig-c002-20220228
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
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
x86_64               randconfig-a011-20220228
x86_64               randconfig-a015-20220228
x86_64               randconfig-a014-20220228
x86_64               randconfig-a013-20220228
x86_64               randconfig-a016-20220228
x86_64               randconfig-a012-20220228
i386                 randconfig-a016-20220228
i386                 randconfig-a012-20220228
i386                 randconfig-a015-20220228
i386                 randconfig-a011-20220228
i386                 randconfig-a013-20220228
i386                 randconfig-a014-20220228
s390                 randconfig-r044-20220228
arc                  randconfig-r043-20220228
arc                  randconfig-r043-20220227
riscv                randconfig-r042-20220228
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
powerpc              randconfig-c003-20220227
x86_64                        randconfig-c007
arm                  randconfig-c002-20220227
mips                 randconfig-c004-20220227
s390                 randconfig-c005-20220227
i386                          randconfig-c001
riscv                randconfig-c006-20220227
arm                          imote2_defconfig
riscv                    nommu_virt_defconfig
powerpc                     ksi8560_defconfig
powerpc                        icon_defconfig
mips                      maltaaprp_defconfig
arm                         s5pv210_defconfig
powerpc                      pmac32_defconfig
powerpc                   lite5200b_defconfig
i386                 randconfig-a002-20220228
i386                 randconfig-a001-20220228
i386                 randconfig-a005-20220228
i386                 randconfig-a003-20220228
i386                 randconfig-a006-20220228
i386                 randconfig-a004-20220228
x86_64               randconfig-a003-20220228
x86_64               randconfig-a005-20220228
x86_64               randconfig-a002-20220228
x86_64               randconfig-a006-20220228
x86_64               randconfig-a001-20220228
x86_64               randconfig-a004-20220228
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220227
hexagon              randconfig-r041-20220227
riscv                randconfig-r042-20220227
s390                 randconfig-r044-20220227

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
