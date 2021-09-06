Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B694015FE
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Sep 2021 07:43:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8D1B40387;
	Mon,  6 Sep 2021 05:43:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uWoJYpS-Drul; Mon,  6 Sep 2021 05:43:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EAEC14035E;
	Mon,  6 Sep 2021 05:43:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6676F1BF3BD
 for <devel@linuxdriverproject.org>; Mon,  6 Sep 2021 05:42:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 61A9C60689
 for <devel@linuxdriverproject.org>; Mon,  6 Sep 2021 05:42:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yhMp762G9jBE for <devel@linuxdriverproject.org>;
 Mon,  6 Sep 2021 05:42:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5192160675
 for <devel@driverdev.osuosl.org>; Mon,  6 Sep 2021 05:42:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10098"; a="283599278"
X-IronPort-AV: E=Sophos;i="5.85,271,1624345200"; d="scan'208";a="283599278"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2021 22:42:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,271,1624345200"; d="scan'208";a="694005112"
Received: from lkp-server01.sh.intel.com (HELO 53c23d017ad5) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 05 Sep 2021 22:42:52 -0700
Received: from kbuild by 53c23d017ad5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mN7PA-0000Qu-1K; Mon, 06 Sep 2021 05:42:52 +0000
Date: Mon, 06 Sep 2021 13:41:59 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 ae796989d2ab020530bf0f90f61c1330433f0c2e
Message-ID: <6135aa27.wQhFfhCDfmVnSLPh%lkp@intel.com>
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
branch HEAD: ae796989d2ab020530bf0f90f61c1330433f0c2e  staging: r8188eu: remove useless memset

elapsed time: 725m

configs tested: 133
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                         cm_x300_defconfig
powerpc                     pq2fads_defconfig
arm                      pxa255-idp_defconfig
xtensa                  audio_kc705_defconfig
sh                           se7619_defconfig
arm                          imote2_defconfig
arc                    vdk_hs38_smp_defconfig
arm                     am200epdkit_defconfig
alpha                               defconfig
sh                           sh2007_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                         ecovec24_defconfig
sh                   sh7724_generic_defconfig
powerpc                      mgcoge_defconfig
sparc64                          alldefconfig
arm                     davinci_all_defconfig
sh                           se7750_defconfig
arm                           corgi_defconfig
arm                          pcm027_defconfig
arm                        mini2440_defconfig
mips                     cu1830-neo_defconfig
s390                             allyesconfig
mips                      loongson3_defconfig
sh                              ul2_defconfig
arm                      jornada720_defconfig
powerpc                     mpc5200_defconfig
m68k                             alldefconfig
powerpc                 linkstation_defconfig
arm                            zeus_defconfig
powerpc                     mpc83xx_defconfig
mips                      maltasmvp_defconfig
riscv                          rv32_defconfig
powerpc                 mpc8272_ads_defconfig
alpha                            allyesconfig
arm                         s3c2410_defconfig
arm                          ixp4xx_defconfig
h8300                     edosk2674_defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                   lite5200b_defconfig
sh                     sh7710voipgw_defconfig
openrisc                         alldefconfig
powerpc                 mpc832x_rdb_defconfig
sh                        apsh4ad0a_defconfig
arm                        magician_defconfig
sh                                  defconfig
arm                       mainstone_defconfig
arm                         lubbock_defconfig
powerpc                     ksi8560_defconfig
arm                          collie_defconfig
i386                 randconfig-c001-20210905
arm                  randconfig-c002-20210905
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a011-20210905
x86_64               randconfig-a016-20210905
x86_64               randconfig-a012-20210905
x86_64               randconfig-a015-20210905
x86_64               randconfig-a014-20210905
x86_64               randconfig-a013-20210905
i386                 randconfig-a012-20210905
i386                 randconfig-a015-20210905
i386                 randconfig-a011-20210905
i386                 randconfig-a013-20210905
i386                 randconfig-a014-20210905
i386                 randconfig-a016-20210905
riscv                randconfig-r042-20210905
s390                 randconfig-r044-20210905
arc                  randconfig-r043-20210905
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
s390                 randconfig-c005-20210905
mips                 randconfig-c004-20210905
powerpc              randconfig-c003-20210905
x86_64               randconfig-c007-20210905
i386                 randconfig-c001-20210905
arm                  randconfig-c002-20210905
riscv                randconfig-c006-20210905
x86_64               randconfig-a006-20210905
x86_64               randconfig-a004-20210905
x86_64               randconfig-a003-20210905
x86_64               randconfig-a005-20210905
x86_64               randconfig-a001-20210905
x86_64               randconfig-a002-20210905
i386                 randconfig-a005-20210905
i386                 randconfig-a004-20210905
i386                 randconfig-a006-20210905
i386                 randconfig-a002-20210905
i386                 randconfig-a003-20210905
i386                 randconfig-a001-20210905
hexagon              randconfig-r045-20210905
hexagon              randconfig-r041-20210905

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
