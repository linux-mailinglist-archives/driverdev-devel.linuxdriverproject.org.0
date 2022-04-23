Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CC150C87A
	for <lists+driverdev-devel@lfdr.de>; Sat, 23 Apr 2022 11:04:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C78FD81456;
	Sat, 23 Apr 2022 09:04:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XS7Z3HWTkoEd; Sat, 23 Apr 2022 09:04:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 855C48144C;
	Sat, 23 Apr 2022 09:04:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 747F91BF956
 for <devel@linuxdriverproject.org>; Sat, 23 Apr 2022 09:04:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5BD8040520
 for <devel@linuxdriverproject.org>; Sat, 23 Apr 2022 09:04:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xXBo2i4MQ-VH for <devel@linuxdriverproject.org>;
 Sat, 23 Apr 2022 09:04:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6BAF240469
 for <devel@driverdev.osuosl.org>; Sat, 23 Apr 2022 09:04:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650704655; x=1682240655;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Zf7jQeJ914xPlMPooQWjZN7iFE0z4J47S7oirz8Sz2I=;
 b=Skjh8nz+jp9Wdf7hDILiFaGKxsPtroat5I0um3dFmQqfGPEeOgAEQUvw
 61RXY1mzN6/xVVccNHBVK9pxrTo8Sa6FLANGF+msNLJmqXQms0jQdn3ko
 GKjBS2PSh3+FZed2XOEyjAHYfXedyEx7VcnQcWiJ7D8ziiYcvdFefqGnF
 KRezK0D7DVuMQu3CCmdgVyjUyAUbBZ6J8O+UohAaahc1ZmE17PmVMCnct
 ELPJQrPQQQw56+pOba3eZVoIUnViNX6yhk8bCkWtHMQrZKsOoeizXDO9k
 eD1l+yx/AkuYiV8YltqbDKwsF5Cc5udiPfqkmviOZQgBC8nzgNGukqaAF w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="245442692"
X-IronPort-AV: E=Sophos;i="5.90,284,1643702400"; d="scan'208";a="245442692"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2022 02:04:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,284,1643702400"; d="scan'208";a="531234716"
Received: from lkp-server01.sh.intel.com (HELO dd58949a6e39) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 23 Apr 2022 02:04:13 -0700
Received: from kbuild by dd58949a6e39 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1niBga-00005v-Kx;
 Sat, 23 Apr 2022 09:04:12 +0000
Date: Sat, 23 Apr 2022 17:03:53 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 4e224719f5d9b92abf1e0edfb2a83053208f3026
Message-ID: <6263c0f9.bL6SbwfuLrcjy/Ip%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 4e224719f5d9b92abf1e0edfb2a83053208f3026  drivers/base/memory: Fix an unlikely reference counting issue in __add_memory_block()

elapsed time: 1039m

configs tested: 135
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
arm                       aspeed_g5_defconfig
sh                          rsk7201_defconfig
sparc                               defconfig
m68k                        m5407c3_defconfig
um                                  defconfig
arm                          simpad_defconfig
powerpc                      pcm030_defconfig
powerpc                   currituck_defconfig
powerpc                       ppc64_defconfig
powerpc                        cell_defconfig
powerpc                    sam440ep_defconfig
openrisc                 simple_smp_defconfig
sh                               alldefconfig
arm                        shmobile_defconfig
powerpc                       holly_defconfig
powerpc                      ppc40x_defconfig
sh                        edosk7760_defconfig
arc                          axs103_defconfig
mips                     decstation_defconfig
ia64                         bigsur_defconfig
powerpc                      pasemi_defconfig
sh                              ul2_defconfig
ia64                             allyesconfig
mips                     loongson1b_defconfig
arc                         haps_hs_defconfig
m68k                         apollo_defconfig
arm                           sunxi_defconfig
arm                           h3600_defconfig
sh                        apsh4ad0a_defconfig
sh                           se7705_defconfig
sh                           se7722_defconfig
arm                            xcep_defconfig
sh                           se7619_defconfig
m68k                       m5475evb_defconfig
powerpc                 canyonlands_defconfig
arm                        trizeps4_defconfig
sh                           se7751_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220422
ia64                             allmodconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220422
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
riscv                randconfig-c006-20220422
mips                 randconfig-c004-20220422
x86_64                        randconfig-c007
i386                          randconfig-c001
arm                  randconfig-c002-20220422
powerpc              randconfig-c003-20220422
arm                        magician_defconfig
riscv                            alldefconfig
arm                    vt8500_v6_v7_defconfig
powerpc                     ksi8560_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                 mpc836x_mds_defconfig
mips                          ath25_defconfig
powerpc                     tqm8540_defconfig
arm                         orion5x_defconfig
mips                     cu1830-neo_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220422
s390                 randconfig-r044-20220422
riscv                randconfig-r042-20220422
hexagon              randconfig-r045-20220422

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
