Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D08E2719A5
	for <lists+driverdev-devel@lfdr.de>; Mon, 21 Sep 2020 05:48:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0861484EA3;
	Mon, 21 Sep 2020 03:48:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yo9XEw0KWDWW; Mon, 21 Sep 2020 03:48:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2E63684E88;
	Mon, 21 Sep 2020 03:48:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 388ED1BF359
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 03:48:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0580384EEB
 for <devel@linuxdriverproject.org>; Mon, 21 Sep 2020 03:48:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1UztpsufnGu2 for <devel@linuxdriverproject.org>;
 Mon, 21 Sep 2020 03:48:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 45D8B85DC0
 for <devel@driverdev.osuosl.org>; Mon, 21 Sep 2020 03:48:27 +0000 (UTC)
IronPort-SDR: doLg+6J7MHAWI9bmGn+9ebeHD2xmQP8bajjB9atFsUSq88zwi/0BY9n66JqPBmKevhTZF5s9AZ
 jWKoAuBfQTsA==
X-IronPort-AV: E=McAfee;i="6000,8403,9750"; a="160356272"
X-IronPort-AV: E=Sophos;i="5.77,285,1596524400"; d="scan'208";a="160356272"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2020 20:48:26 -0700
IronPort-SDR: Ai4OncGk5u1u58Wm6oRLTI8xKBnxf7WtjMTTIn64YdEcxr3vFyLpRpOUjrFzKDYL94SllBoG2n
 eRylxfSlSIYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,285,1596524400"; d="scan'208";a="334185207"
Received: from lkp-server01.sh.intel.com (HELO 674716e234df) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 20 Sep 2020 20:48:24 -0700
Received: from kbuild by 674716e234df with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kKCoS-0000Do-9M; Mon, 21 Sep 2020 03:48:24 +0000
Date: Mon, 21 Sep 2020 11:48:02 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:ion_removal] BUILD SUCCESS
 44da7f5d432a87fa9fec549d298b410fc7915a35
Message-ID: <5f682272.mTWXhCydcPO/Ej+b%lkp@intel.com>
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
branch HEAD: 44da7f5d432a87fa9fec549d298b410fc7915a35  staging: ion: remove from the tree

elapsed time: 720m

configs tested: 148
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
h8300                     edosk2674_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                      arches_defconfig
powerpc                     pseries_defconfig
powerpc                      acadia_defconfig
xtensa                  cadence_csp_defconfig
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
mips                     cu1830-neo_defconfig
c6x                        evmc6678_defconfig
powerpc                  iss476-smp_defconfig
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
x86_64               randconfig-a011-20200921
x86_64               randconfig-a013-20200921
x86_64               randconfig-a014-20200921
x86_64               randconfig-a015-20200921
x86_64               randconfig-a012-20200921
x86_64               randconfig-a016-20200921
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
x86_64               randconfig-a005-20200921
x86_64               randconfig-a003-20200921
x86_64               randconfig-a004-20200921
x86_64               randconfig-a002-20200921
x86_64               randconfig-a006-20200921
x86_64               randconfig-a001-20200921

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
