Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A192681BA
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Sep 2020 00:43:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AD045867B5;
	Sun, 13 Sep 2020 22:43:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1m8hiXfSTKcF; Sun, 13 Sep 2020 22:43:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7D596867BF;
	Sun, 13 Sep 2020 22:43:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 36ED21BF951
 for <devel@linuxdriverproject.org>; Sun, 13 Sep 2020 22:42:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 30D97870BF
 for <devel@linuxdriverproject.org>; Sun, 13 Sep 2020 22:42:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RNeJaN6eaysn for <devel@linuxdriverproject.org>;
 Sun, 13 Sep 2020 22:42:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C95F2870BC
 for <devel@driverdev.osuosl.org>; Sun, 13 Sep 2020 22:42:55 +0000 (UTC)
IronPort-SDR: hajwvc6bzKmqOnjgtkML1H1XeYv+0IYCFUcxYVCYDQ/BKA9kSOH5y5sS59sJabN8RWIjlowf1S
 9mqc0E6eZDbQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9743"; a="159042190"
X-IronPort-AV: E=Sophos;i="5.76,423,1592895600"; d="scan'208";a="159042190"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2020 15:42:55 -0700
IronPort-SDR: ckjMzgE0fzqf8Bm0X6/l0kXXLexAhGB5XT8Ad6LT8/TkgLqd9L77vN3cwh8mjWxQzDwwvTey3o
 Q1DnFmRcfk4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,423,1592895600"; d="scan'208";a="338087960"
Received: from lkp-server01.sh.intel.com (HELO a75722977aa5) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 13 Sep 2020 15:42:53 -0700
Received: from kbuild by a75722977aa5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kHahx-0000vJ-4q; Sun, 13 Sep 2020 22:42:53 +0000
Date: Mon, 14 Sep 2020 06:42:04 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:ion_removal] BUILD SUCCESS
 8102532061da82d1d938f4634ba8e14b75de64f3
Message-ID: <5f5ea03c.MnFAW734SN8wMdjq%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  ion_removal
branch HEAD: 8102532061da82d1d938f4634ba8e14b75de64f3  staging: ion: remove from the tree

elapsed time: 724m

configs tested: 162
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                          moxart_defconfig
sh                          r7780mp_defconfig
ia64                                defconfig
powerpc                     kmeter1_defconfig
arm                  colibri_pxa300_defconfig
nds32                               defconfig
parisc                generic-64bit_defconfig
powerpc                     tqm8555_defconfig
powerpc                 mpc85xx_cds_defconfig
arm                              alldefconfig
arm                     eseries_pxa_defconfig
arc                 nsimosci_hs_smp_defconfig
ia64                             alldefconfig
s390                          debug_defconfig
arm                          gemini_defconfig
mips                          malta_defconfig
arm                         s3c2410_defconfig
powerpc                      ppc44x_defconfig
alpha                            alldefconfig
mips                      malta_kvm_defconfig
sh                             espt_defconfig
arm                   milbeaut_m10v_defconfig
riscv                               defconfig
h8300                               defconfig
arm                            zeus_defconfig
um                           x86_64_defconfig
m68k                       m5208evb_defconfig
arc                           tb10x_defconfig
riscv                             allnoconfig
mips                        nlm_xlp_defconfig
arm                         hackkit_defconfig
powerpc                 mpc834x_itx_defconfig
mips                     cu1000-neo_defconfig
arm                        neponset_defconfig
microblaze                          defconfig
arc                          axs101_defconfig
powerpc                      pasemi_defconfig
arc                    vdk_hs38_smp_defconfig
mips                           rs90_defconfig
sparc                       sparc32_defconfig
arc                                 defconfig
arm                        shmobile_defconfig
parisc                              defconfig
arm                          tango4_defconfig
h8300                            alldefconfig
arc                          axs103_defconfig
powerpc                 xes_mpc85xx_defconfig
x86_64                              defconfig
powerpc                       eiger_defconfig
mips                        nlm_xlr_defconfig
xtensa                    xip_kc705_defconfig
mips                        jmr3927_defconfig
mips                         tb0226_defconfig
mips                         cobalt_defconfig
powerpc                  mpc866_ads_defconfig
powerpc                      ppc40x_defconfig
xtensa                              defconfig
parisc                           allyesconfig
i386                             alldefconfig
sh                           se7712_defconfig
mips                           ip32_defconfig
powerpc                 mpc836x_mds_defconfig
parisc                           alldefconfig
mips                  maltasmvp_eva_defconfig
powerpc                 linkstation_defconfig
mips                          rb532_defconfig
arm                            u300_defconfig
arm                          pxa3xx_defconfig
mips                          rm200_defconfig
arm                          iop32x_defconfig
arm                         cm_x300_defconfig
xtensa                generic_kc705_defconfig
arm                         lpc18xx_defconfig
c6x                              allyesconfig
mips                      loongson3_defconfig
sh                      rts7751r2d1_defconfig
powerpc                 mpc8313_rdb_defconfig
arm                       cns3420vb_defconfig
arm                         assabet_defconfig
mips                       bmips_be_defconfig
sh                           se7705_defconfig
mips                       capcella_defconfig
arm                         lpc32xx_defconfig
nds32                             allnoconfig
mips                malta_kvm_guest_defconfig
powerpc                    amigaone_defconfig
mips                 pnx8335_stb225_defconfig
sh                          r7785rp_defconfig
powerpc                      arches_defconfig
m68k                          atari_defconfig
powerpc                        fsp2_defconfig
arm                        spear3xx_defconfig
sh                           se7750_defconfig
sh                           se7751_defconfig
arm                            xcep_defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
sh                               allmodconfig
s390                             allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20200913
i386                 randconfig-a006-20200913
i386                 randconfig-a003-20200913
i386                 randconfig-a001-20200913
i386                 randconfig-a002-20200913
i386                 randconfig-a005-20200913
x86_64               randconfig-a014-20200913
x86_64               randconfig-a011-20200913
x86_64               randconfig-a012-20200913
x86_64               randconfig-a016-20200913
x86_64               randconfig-a015-20200913
x86_64               randconfig-a013-20200913
i386                 randconfig-a015-20200913
i386                 randconfig-a014-20200913
i386                 randconfig-a011-20200913
i386                 randconfig-a013-20200913
i386                 randconfig-a016-20200913
i386                 randconfig-a012-20200913
i386                 randconfig-a015-20200914
i386                 randconfig-a014-20200914
i386                 randconfig-a011-20200914
i386                 randconfig-a013-20200914
i386                 randconfig-a016-20200914
i386                 randconfig-a012-20200914
riscv                            allyesconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20200913
x86_64               randconfig-a004-20200913
x86_64               randconfig-a003-20200913
x86_64               randconfig-a002-20200913
x86_64               randconfig-a005-20200913
x86_64               randconfig-a001-20200913

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
