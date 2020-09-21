Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E692719A6
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 05:48:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4E1E485319;
	Mon, 21 Sep 2020 03:48:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LpsKJ5Te7cgN; Mon, 21 Sep 2020 03:48:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0D59B84E97;
	Mon, 21 Sep 2020 03:48:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1DA511BF359
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 03:48:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1A785871A4
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 03:48:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ap9ZVBw3BpL5 for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 03:48:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D7DEA87190
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:48:31 +0000 (UTC)
IronPort-SDR: MKTc7iNN70H/a4+y+aO1UG55mq7ha7Q6FgmbPuTVrJEsB0V/jhUHuQTd/G1tZvl78/2zVds7K+
 u+1X8BBEetRw==
X-IronPort-AV: E=McAfee;i="6000,8403,9750"; a="245137517"
X-IronPort-AV: E=Sophos;i="5.77,285,1596524400"; d="scan'208";a="245137517"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2020 20:48:31 -0700
IronPort-SDR: z5EGIdeaiVBC3PMvEtnwf7uH0oPiV2w1pAGDMITS8wzavZdIJhNAQA9SdUlNroHvUQxMdL1vUS
 YqqDmLgF1eRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,285,1596524400"; d="scan'208";a="308827905"
Received: from lkp-server01.sh.intel.com (HELO 674716e234df) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 20 Sep 2020 20:48:30 -0700
Received: from kbuild by 674716e234df with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kKCoX-0000Dr-CH; Mon, 21 Sep 2020 03:48:29 +0000
Date: Mon, 21 Sep 2020 11:48:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 93b61540dfa56b2385ec188a29615e062cd571be
Message-ID: <5f682270.V1uURtuMqs+7gZxx%lkp@intel.com>
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
branch HEAD: 93b61540dfa56b2385ec188a29615e062cd571be  Revert "staging: rtl8192e: fix kconfig dependency warning for RTLLIB_CRYPTO_WEP"

elapsed time: 720m

configs tested: 127
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                           corgi_defconfig
arm                          pcm027_defconfig
powerpc                      bamboo_defconfig
c6x                              alldefconfig
arc                          axs103_defconfig
sh                          sdk7780_defconfig
mips                           rs90_defconfig
sparc64                             defconfig
arm                          lpd270_defconfig
arm                         orion5x_defconfig
mips                   sb1250_swarm_defconfig
xtensa                         virt_defconfig
m68k                             alldefconfig
sh                 kfr2r09-romimage_defconfig
sh                        sh7757lcr_defconfig
powerpc                     akebono_defconfig
powerpc                      chrp32_defconfig
arm                          pxa3xx_defconfig
riscv                            alldefconfig
arm                        mvebu_v5_defconfig
arm                     am200epdkit_defconfig
arm                           sama5_defconfig
riscv                    nommu_virt_defconfig
powerpc                   currituck_defconfig
mips                           ip32_defconfig
powerpc                     tqm8540_defconfig
arm                       aspeed_g4_defconfig
sh                          urquell_defconfig
arm                             mxs_defconfig
powerpc                mpc7448_hpc2_defconfig
ia64                      gensparse_defconfig
mips                        nlm_xlp_defconfig
mips                           gcw0_defconfig
powerpc                    socrates_defconfig
powerpc                     ep8248e_defconfig
h8300                               defconfig
powerpc                    klondike_defconfig
arc                    vdk_hs38_smp_defconfig
sh                            shmin_defconfig
c6x                        evmc6474_defconfig
arm                         nhk8815_defconfig
m68k                          atari_defconfig
sh                          sdk7786_defconfig
arm                         palmz72_defconfig
mips                          ath79_defconfig
mips                           ip28_defconfig
sh                ecovec24-romimage_defconfig
sh                         ecovec24_defconfig
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
parisc                           allyesconfig
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
x86_64               randconfig-a005-20200920
x86_64               randconfig-a003-20200920
x86_64               randconfig-a004-20200920
x86_64               randconfig-a002-20200920
x86_64               randconfig-a006-20200920
x86_64               randconfig-a001-20200920
i386                 randconfig-a002-20200920
i386                 randconfig-a006-20200920
i386                 randconfig-a003-20200920
i386                 randconfig-a004-20200920
i386                 randconfig-a005-20200920
i386                 randconfig-a001-20200920
i386                 randconfig-a002-20200921
i386                 randconfig-a006-20200921
i386                 randconfig-a003-20200921
i386                 randconfig-a004-20200921
i386                 randconfig-a005-20200921
i386                 randconfig-a001-20200921
i386                 randconfig-a012-20200920
i386                 randconfig-a014-20200920
i386                 randconfig-a016-20200920
i386                 randconfig-a013-20200920
i386                 randconfig-a011-20200920
i386                 randconfig-a015-20200920
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a011-20200920
x86_64               randconfig-a013-20200920
x86_64               randconfig-a014-20200920
x86_64               randconfig-a015-20200920
x86_64               randconfig-a012-20200920
x86_64               randconfig-a016-20200920

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
