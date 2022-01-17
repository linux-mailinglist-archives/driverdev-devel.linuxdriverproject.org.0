Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BF71D491185
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jan 2022 23:01:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4641813F5;
	Mon, 17 Jan 2022 22:01:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oT3MfsHAo2ej; Mon, 17 Jan 2022 22:01:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBF2981385;
	Mon, 17 Jan 2022 22:01:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D28AC1BF3C2
 for <devel@linuxdriverproject.org>; Mon, 17 Jan 2022 22:00:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CEDC54030F
 for <devel@linuxdriverproject.org>; Mon, 17 Jan 2022 22:00:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id la257pQCR2HP for <devel@linuxdriverproject.org>;
 Mon, 17 Jan 2022 22:00:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 314034030C
 for <devel@driverdev.osuosl.org>; Mon, 17 Jan 2022 22:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642456852; x=1673992852;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=95JA67k+f1C9RlNQXt36LvtHYmQkOnjtPALYw3YVK9w=;
 b=D8Xwm+4iZEGwHdDV2nlE8x6UynZZqGewC0XQ2LmLpwzWE3fXGb9xTUEl
 h+S0QsxRhjAQGLSWeevrl4BVos9U1IPOGb/xXcD24ikYkjXxK4mfoiXBy
 qmhdar6dCQRqrkG19fuxz1sfdXrBEikvbbB94+vjT/esb2bw69F/iME/R
 O9rjSMQaF5Gx97Z3OCnAzVxVcXfb80BMgSiig21cr+WsMOTxwOpuXfWWZ
 mC70y72x/Amnroi62bb4Dda8tLSnCZJFcRTo4Zxjs+pbQFf20pMhAjdl6
 xvx8QEwxq1Usbvwz6FlN9QwGDCkUDHm9pMGtzBkFCq1dopAbNBqCPy/9Q w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10230"; a="243522657"
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="243522657"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2022 14:00:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,296,1635231600"; d="scan'208";a="492473903"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 17 Jan 2022 14:00:50 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n9a3V-000Btx-Fd; Mon, 17 Jan 2022 22:00:49 +0000
Date: Tue, 18 Jan 2022 06:00:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 b0b2ffd4144c98894af1792dbc94e1c47239ec5c
Message-ID: <61e5e706.ylfIlMR14b5h4yRU%lkp@intel.com>
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
branch HEAD: b0b2ffd4144c98894af1792dbc94e1c47239ec5c  moxart: fix potential use-after-free on remove path

elapsed time: 724m

configs tested: 131
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
sh                           se7712_defconfig
csky                             alldefconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                     taishan_defconfig
xtensa                  cadence_csp_defconfig
sparc64                             defconfig
arc                        nsim_700_defconfig
powerpc                         wii_defconfig
sh                  sh7785lcr_32bit_defconfig
openrisc                         alldefconfig
mips                     decstation_defconfig
mips                          rb532_defconfig
m68k                           sun3_defconfig
xtensa                  nommu_kc705_defconfig
sh                             sh03_defconfig
powerpc                      ppc40x_defconfig
xtensa                           alldefconfig
s390                          debug_defconfig
sh                          polaris_defconfig
sh                         ap325rxa_defconfig
sh                             shx3_defconfig
sh                          r7785rp_defconfig
powerpc                  storcenter_defconfig
m68k                            mac_defconfig
xtensa                    smp_lx200_defconfig
h8300                            allyesconfig
nds32                             allnoconfig
sh                           se7343_defconfig
arm                          lpd270_defconfig
arm                  randconfig-c002-20220116
arm                  randconfig-c002-20220117
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
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
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a012-20220117
x86_64               randconfig-a013-20220117
x86_64               randconfig-a011-20220117
x86_64               randconfig-a014-20220117
x86_64               randconfig-a016-20220117
x86_64               randconfig-a015-20220117
i386                 randconfig-a012-20220117
i386                 randconfig-a016-20220117
i386                 randconfig-a014-20220117
i386                 randconfig-a015-20220117
i386                 randconfig-a011-20220117
i386                 randconfig-a013-20220117
riscv                randconfig-r042-20220117
arc                  randconfig-r043-20220116
arc                  randconfig-r043-20220117
s390                 randconfig-r044-20220117
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
arm                  randconfig-c002-20220116
x86_64                        randconfig-c007
riscv                randconfig-c006-20220116
powerpc              randconfig-c003-20220116
i386                          randconfig-c001
mips                 randconfig-c004-20220116
s390                 randconfig-c005-20220116
mips                     cu1830-neo_defconfig
arm                         lpc32xx_defconfig
mips                       lemote2f_defconfig
arm                  colibri_pxa270_defconfig
riscv                    nommu_virt_defconfig
i386                             allyesconfig
hexagon                          alldefconfig
x86_64               randconfig-a004-20220117
x86_64               randconfig-a001-20220117
x86_64               randconfig-a002-20220117
x86_64               randconfig-a003-20220117
x86_64               randconfig-a005-20220117
x86_64               randconfig-a006-20220117
i386                 randconfig-a005-20220117
i386                 randconfig-a001-20220117
i386                 randconfig-a006-20220117
i386                 randconfig-a004-20220117
i386                 randconfig-a002-20220117
i386                 randconfig-a003-20220117
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220116
hexagon              randconfig-r045-20220117
riscv                randconfig-r042-20220116
s390                 randconfig-r044-20220116
hexagon              randconfig-r041-20220116
hexagon              randconfig-r041-20220117

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
