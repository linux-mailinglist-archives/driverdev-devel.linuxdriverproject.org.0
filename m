Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DC63224D0
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Feb 2021 05:05:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0B3CC870CF;
	Tue, 23 Feb 2021 04:05:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pXoB+blvIFT0; Tue, 23 Feb 2021 04:05:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5BB1987030;
	Tue, 23 Feb 2021 04:05:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2C30F1BF34F
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 04:05:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1B30B60087
 for <devel@linuxdriverproject.org>; Tue, 23 Feb 2021 04:05:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FX1-deKTwXdd for <devel@linuxdriverproject.org>;
 Tue, 23 Feb 2021 04:05:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 02BDB605C7
 for <devel@driverdev.osuosl.org>; Tue, 23 Feb 2021 04:05:35 +0000 (UTC)
IronPort-SDR: ihKjsY1tzgkzevqOCyKF83nvD/qqMc+Md1KOR9WC4XsBrtXZ11fXMHeU+wAqFLHK9Sf7jCu0x2
 NNvmL6d3zinw==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="181242198"
X-IronPort-AV: E=Sophos;i="5.81,199,1610438400"; d="scan'208";a="181242198"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 20:05:34 -0800
IronPort-SDR: 7QjF/KZipQLOI/XtxJRdnj/GCPgs/NsU2ICeQvFtBm7xWSj0E0XOWFNf8I7wgA6+uqSfb2K559
 tR09jC7tZ9hg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,199,1610438400"; d="scan'208";a="430514843"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Feb 2021 20:05:33 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lEOx2-0000tV-Ch; Tue, 23 Feb 2021 04:05:32 +0000
Date: Tue, 23 Feb 2021 12:04:47 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 425d1dc163eedbfd92f108736cfaad67676af1a5
Message-ID: <60347edf.d9t6DDA4MbB9qE4z%lkp@intel.com>
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
branch HEAD: 425d1dc163eedbfd92f108736cfaad67676af1a5  staging: wimax: Fix block comment style issue in stack.c

elapsed time: 725m

configs tested: 108
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                     akebono_defconfig
x86_64                           alldefconfig
mips                            gpr_defconfig
s390                                defconfig
powerpc                 mpc836x_mds_defconfig
h8300                     edosk2674_defconfig
mips                malta_qemu_32r6_defconfig
m68k                          multi_defconfig
alpha                            alldefconfig
powerpc                      ppc64e_defconfig
arm                           tegra_defconfig
powerpc                     ksi8560_defconfig
openrisc                    or1ksim_defconfig
m68k                       m5475evb_defconfig
powerpc                      mgcoge_defconfig
m68k                          sun3x_defconfig
arm                        multi_v5_defconfig
arm                          simpad_defconfig
powerpc                 mpc837x_rdb_defconfig
sh                        sh7763rdp_defconfig
sh                   secureedge5410_defconfig
sparc                       sparc64_defconfig
arm                     am200epdkit_defconfig
powerpc                      bamboo_defconfig
powerpc                mpc7448_hpc2_defconfig
mips                         tb0226_defconfig
arm                       multi_v4t_defconfig
openrisc                 simple_smp_defconfig
powerpc                   motionpro_defconfig
s390                          debug_defconfig
arm                            lart_defconfig
powerpc                          g5_defconfig
sh                        sh7785lcr_defconfig
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
x86_64               randconfig-a001-20210222
x86_64               randconfig-a002-20210222
x86_64               randconfig-a003-20210222
x86_64               randconfig-a005-20210222
x86_64               randconfig-a006-20210222
x86_64               randconfig-a004-20210222
i386                 randconfig-a005-20210222
i386                 randconfig-a006-20210222
i386                 randconfig-a004-20210222
i386                 randconfig-a003-20210222
i386                 randconfig-a001-20210222
i386                 randconfig-a002-20210222
i386                 randconfig-a013-20210222
i386                 randconfig-a012-20210222
i386                 randconfig-a011-20210222
i386                 randconfig-a014-20210222
i386                 randconfig-a016-20210222
i386                 randconfig-a015-20210222
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210222
x86_64               randconfig-a011-20210222
x86_64               randconfig-a012-20210222
x86_64               randconfig-a016-20210222
x86_64               randconfig-a014-20210222
x86_64               randconfig-a013-20210222

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
