Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A90125A534
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Sep 2020 07:53:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 732EA859D2;
	Wed,  2 Sep 2020 05:53:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Og41WiIpv8tb; Wed,  2 Sep 2020 05:53:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B67A18453D;
	Wed,  2 Sep 2020 05:53:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 71A4B1BF4E3
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 05:53:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6E56E8453D
 for <devel@linuxdriverproject.org>; Wed,  2 Sep 2020 05:53:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k13WZ49_x-xf for <devel@linuxdriverproject.org>;
 Wed,  2 Sep 2020 05:53:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 91CF684537
 for <devel@driverdev.osuosl.org>; Wed,  2 Sep 2020 05:53:45 +0000 (UTC)
IronPort-SDR: NKC3MDsAsrazvhD0t0upGUvW0xwBnBl3GAE741EgMsQadRsdU34e+s7210AOZPNUVK78hPtNH0
 DMuPiFwmVV9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9731"; a="158321106"
X-IronPort-AV: E=Sophos;i="5.76,381,1592895600"; d="scan'208";a="158321106"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2020 22:53:33 -0700
IronPort-SDR: em2qvA8aK9u9FozlD8iaPagp6YCwwEeUiL4ha+K84IGg3kp9Z1ftlaJy0QqdJwl2pCVdMnRjPM
 YU4t6JG438Ag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,381,1592895600"; d="scan'208";a="297562860"
Received: from lkp-server02.sh.intel.com (HELO f0c22d07a430) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 01 Sep 2020 22:53:22 -0700
Received: from kbuild by f0c22d07a430 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kDLhx-00000h-Sq; Wed, 02 Sep 2020 05:53:21 +0000
Date: Wed, 02 Sep 2020 13:53:12 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS WITH WARNING
 4c6491a343e91a5a2a699b0b545f8ba1ec1e8c65
Message-ID: <5f4f3348.EXVDbsybiPvTFAWx%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-testing
branch HEAD: 4c6491a343e91a5a2a699b0b545f8ba1ec1e8c65  staging: spmi: hisi-spmi-controller: Use proper format in call to dev_err()

Warning in current branch:

drivers/staging/emxx_udc/emxx_udc.c:1307:16: warning: Variable 'ep->stalled' is reassigned a value before the old one has been used. [redundantAssignment]
drivers/staging/emxx_udc/emxx_udc.c:2095:48: warning: Uninitialized variable: ep [uninitvar]
drivers/staging/emxx_udc/emxx_udc.c:3094:9: warning: Variable 'status' is reassigned a value before the old one has been used. [redundantAssignment]
drivers/staging/emxx_udc/emxx_udc.c:839:9: warning: Variable 'result' is reassigned a value before the old one has been used. [redundantAssignment]

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- riscv-randconfig-p002-20200901
    |-- drivers-staging-emxx_udc-emxx_udc.c:warning:Uninitialized-variable:ep-uninitvar
    |-- drivers-staging-emxx_udc-emxx_udc.c:warning:Variable-ep-stalled-is-reassigned-a-value-before-the-old-one-has-been-used.-redundantAssignment
    |-- drivers-staging-emxx_udc-emxx_udc.c:warning:Variable-result-is-reassigned-a-value-before-the-old-one-has-been-used.-redundantAssignment
    `-- drivers-staging-emxx_udc-emxx_udc.c:warning:Variable-status-is-reassigned-a-value-before-the-old-one-has-been-used.-redundantAssignment

elapsed time: 721m

configs tested: 136
configs skipped: 8

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                           se7206_defconfig
mips                 pnx8335_stb225_defconfig
arm                            mmp2_defconfig
sh                           sh2007_defconfig
sh                        edosk7705_defconfig
mips                      bmips_stb_defconfig
sh                             espt_defconfig
mips                           rs90_defconfig
c6x                        evmc6474_defconfig
powerpc                           allnoconfig
arm                         shannon_defconfig
arm                     eseries_pxa_defconfig
arm                      footbridge_defconfig
riscv                             allnoconfig
sh                            migor_defconfig
h8300                       h8s-sim_defconfig
powerpc                  storcenter_defconfig
arm                   milbeaut_m10v_defconfig
mips                            e55_defconfig
arm                        clps711x_defconfig
powerpc                    mvme5100_defconfig
sh                   sh7770_generic_defconfig
sh                           se7343_defconfig
arm                           efm32_defconfig
powerpc                             defconfig
arm                        shmobile_defconfig
sh                         microdev_defconfig
arm                             rpc_defconfig
powerpc                      ppc40x_defconfig
sh                          rsk7269_defconfig
ia64                                defconfig
sh                  sh7785lcr_32bit_defconfig
arm                            lart_defconfig
arm                      pxa255-idp_defconfig
arm                         mv78xx0_defconfig
arm                         s3c2410_defconfig
arm                              alldefconfig
riscv                    nommu_k210_defconfig
nios2                         3c120_defconfig
m68k                             alldefconfig
m68k                       m5475evb_defconfig
sh                ecovec24-romimage_defconfig
mips                         tb0287_defconfig
mips                     cu1000-neo_defconfig
mips                          malta_defconfig
powerpc                    gamecube_defconfig
mips                      malta_kvm_defconfig
m68k                       m5249evb_defconfig
x86_64                              defconfig
sh                          kfr2r09_defconfig
c6x                                 defconfig
arm                       aspeed_g5_defconfig
m68k                        stmark2_defconfig
nds32                            alldefconfig
mips                    maltaup_xpa_defconfig
arm                            qcom_defconfig
mips                          rm200_defconfig
arc                         haps_hs_defconfig
powerpc                      ppc64e_defconfig
arm                          ixp4xx_defconfig
mips                         cobalt_defconfig
arm                             pxa_defconfig
mips                         bigsur_defconfig
arm                        realview_defconfig
arm                        magician_defconfig
mips                           ip28_defconfig
sh                          polaris_defconfig
m68k                            q40_defconfig
sparc                            allyesconfig
mips                 decstation_r4k_defconfig
ia64                             allmodconfig
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
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
x86_64               randconfig-a004-20200901
x86_64               randconfig-a006-20200901
x86_64               randconfig-a003-20200901
x86_64               randconfig-a005-20200901
x86_64               randconfig-a001-20200901
x86_64               randconfig-a002-20200901
i386                 randconfig-a004-20200901
i386                 randconfig-a005-20200901
i386                 randconfig-a006-20200901
i386                 randconfig-a002-20200901
i386                 randconfig-a001-20200901
i386                 randconfig-a003-20200901
i386                 randconfig-a016-20200901
i386                 randconfig-a015-20200901
i386                 randconfig-a011-20200901
i386                 randconfig-a013-20200901
i386                 randconfig-a014-20200901
i386                 randconfig-a012-20200901
riscv                            allyesconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a013-20200901
x86_64               randconfig-a016-20200901
x86_64               randconfig-a011-20200901
x86_64               randconfig-a012-20200901
x86_64               randconfig-a015-20200901
x86_64               randconfig-a014-20200901

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
