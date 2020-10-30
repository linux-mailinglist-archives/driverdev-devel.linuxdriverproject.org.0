Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2EA29FA20
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Oct 2020 02:00:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 9735686C32;
	Fri, 30 Oct 2020 01:00:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 04-a-VQeTsEb; Fri, 30 Oct 2020 01:00:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3E70586AB7;
	Fri, 30 Oct 2020 01:00:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 01A881BF9B9
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 01:00:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id F016787434
 for <devel@linuxdriverproject.org>; Fri, 30 Oct 2020 01:00:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id npFKc1zmivoZ for <devel@linuxdriverproject.org>;
 Fri, 30 Oct 2020 01:00:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 22204873A4
 for <devel@driverdev.osuosl.org>; Fri, 30 Oct 2020 01:00:33 +0000 (UTC)
IronPort-SDR: 5AJoG0QsKx1/XKfOYpRxX+BteFOO4UWD/E+w/GtpkBE/Lgpv58jHpE9fC+Uh7+rFy8zBDyfyE/
 uxDBp2O3FnNA==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="253247656"
X-IronPort-AV: E=Sophos;i="5.77,431,1596524400"; d="scan'208";a="253247656"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2020 18:00:32 -0700
IronPort-SDR: LIOLFtuyWC7Xxwc+NVnwrn7WeZWZHvultaJjGJ39ZgTRtWj2kgHaxKLMlbGOC89fJXVWgRgcjV
 KW6rXAVK1TnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,431,1596524400"; d="scan'208";a="319155564"
Received: from lkp-server01.sh.intel.com (HELO c01187be935a) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 29 Oct 2020 18:00:31 -0700
Received: from kbuild by c01187be935a with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kYImM-0000Jl-BF; Fri, 30 Oct 2020 01:00:30 +0000
Date: Fri, 30 Oct 2020 09:00:11 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 eb27f3832891c8db753d3acb3a2a02d9930ef911
Message-ID: <5f9b659b.FAEl+9Ddq95y1/AI%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  debugfs_cleanup
branch HEAD: eb27f3832891c8db753d3acb3a2a02d9930ef911  debugfs: remove return value of debugfs_create_devm_seqfile()

elapsed time: 780m

configs tested: 102
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                     mpc5200_defconfig
powerpc                       maple_defconfig
c6x                        evmc6678_defconfig
powerpc                      arches_defconfig
sh                        apsh4ad0a_defconfig
mips                          rb532_defconfig
arm                         hackkit_defconfig
arm                          gemini_defconfig
powerpc                 mpc8313_rdb_defconfig
sparc                       sparc64_defconfig
sh                        dreamcast_defconfig
sh                        edosk7705_defconfig
powerpc                  mpc885_ads_defconfig
sh                          rsk7264_defconfig
sh                             sh03_defconfig
arm                          prima2_defconfig
mips                       capcella_defconfig
c6x                              alldefconfig
mips                malta_kvm_guest_defconfig
sh                          sdk7780_defconfig
arm                              zx_defconfig
ia64                          tiger_defconfig
mips                       rbtx49xx_defconfig
arm                         ebsa110_defconfig
ia64                        generic_defconfig
arm                         assabet_defconfig
arm                          simpad_defconfig
arm                      jornada720_defconfig
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
x86_64               randconfig-a001-20201029
x86_64               randconfig-a002-20201029
x86_64               randconfig-a003-20201029
x86_64               randconfig-a006-20201029
x86_64               randconfig-a005-20201029
x86_64               randconfig-a004-20201029
i386                 randconfig-a002-20201029
i386                 randconfig-a005-20201029
i386                 randconfig-a003-20201029
i386                 randconfig-a001-20201029
i386                 randconfig-a004-20201029
i386                 randconfig-a006-20201029
i386                 randconfig-a016-20201029
i386                 randconfig-a014-20201029
i386                 randconfig-a015-20201029
i386                 randconfig-a013-20201029
i386                 randconfig-a012-20201029
i386                 randconfig-a011-20201029
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
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a011-20201029
x86_64               randconfig-a013-20201029
x86_64               randconfig-a016-20201029
x86_64               randconfig-a015-20201029
x86_64               randconfig-a012-20201029
x86_64               randconfig-a014-20201029

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
