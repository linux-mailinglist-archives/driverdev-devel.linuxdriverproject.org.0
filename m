Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 159814AE613
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Feb 2022 01:34:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D6946404AA;
	Wed,  9 Feb 2022 00:34:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l-ot0hwu3sZ1; Wed,  9 Feb 2022 00:34:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4026740139;
	Wed,  9 Feb 2022 00:34:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 491001BF9AD
 for <devel@linuxdriverproject.org>; Wed,  9 Feb 2022 00:34:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45AF1408DF
 for <devel@linuxdriverproject.org>; Wed,  9 Feb 2022 00:34:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MqIsWenMI7hh for <devel@linuxdriverproject.org>;
 Wed,  9 Feb 2022 00:34:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 504E4402B2
 for <devel@driverdev.osuosl.org>; Wed,  9 Feb 2022 00:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644366883; x=1675902883;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=86Vj5DvUt7362VZJVy4/KjhtuBNZjpy1Slz51RrtF5U=;
 b=jMoscUzr9IzPT8qbOSlInNv07hjg+7OECvJVA8qPTKZXmje0j6JW7ZnV
 W7PgzK2d7xoK5PoX7qK754Ycrq10IS7quQTP+5e1K0G0/tBa4D8Fz2wGG
 ldVknsJcnCJPaBaWyDvbeytin0jITjlQJFZNtDUBJr3ixNsCNKPq5DTK+
 6r50MknP5XpF9P/hji4mWTvSAymn4EeV09jhLepDb0fjSKuSNwnh0W6jK
 QN75idvoq7p6nDRFAAwKFzwoaYwf5AGZNOvdllikC+ZpTrwaIqaX/Zd4E
 q22iGNkwaHFQGn8eA26APrCphLyoAWylofi6EtHJTZLSjthJXaqP6lrsh A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="335486504"
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="335486504"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 16:34:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,354,1635231600"; d="scan'208";a="485010534"
Received: from lkp-server01.sh.intel.com (HELO d95dc2dabeb1) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 08 Feb 2022 16:34:19 -0800
Received: from kbuild by d95dc2dabeb1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nHaw6-00010E-Ab; Wed, 09 Feb 2022 00:34:18 +0000
Date: Wed, 09 Feb 2022 08:33:43 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 27446562a1d9946a89231504a3c64eff2e7ca41d
Message-ID: <62030be7.sg2e2arwx6M0z1JJ%lkp@intel.com>
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
branch HEAD: 27446562a1d9946a89231504a3c64eff2e7ca41d  platform: use dev_err_probe() in platform_get_irq_byname()

elapsed time: 731m

configs tested: 122
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
powerpc                    sam440ep_defconfig
arm                         cm_x300_defconfig
h8300                            alldefconfig
sh                          sdk7780_defconfig
sh                         apsh4a3a_defconfig
ia64                             alldefconfig
powerpc                 mpc837x_rdb_defconfig
sh                          rsk7264_defconfig
mips                  decstation_64_defconfig
sh                           se7750_defconfig
openrisc                         alldefconfig
sparc                       sparc64_defconfig
m68k                        m5272c3_defconfig
mips                     decstation_defconfig
sh                               j2_defconfig
sh                           se7712_defconfig
arm                        mini2440_defconfig
nios2                            allyesconfig
powerpc                     taishan_defconfig
xtensa                  audio_kc705_defconfig
arm                          iop32x_defconfig
arm                      jornada720_defconfig
powerpc                     tqm8541_defconfig
mips                      fuloong2e_defconfig
mips                        bcm47xx_defconfig
xtensa                  nommu_kc705_defconfig
parisc                           alldefconfig
m68k                        m5407c3_defconfig
powerpc                     tqm8548_defconfig
sh                           se7780_defconfig
powerpc                       maple_defconfig
riscv                    nommu_k210_defconfig
sh                           se7619_defconfig
arc                          axs103_defconfig
arm                  randconfig-c002-20220208
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
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
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                        randconfig-a004
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig

clang tested configs:
riscv                randconfig-c006-20220208
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220208
mips                 randconfig-c004-20220208
arm                  randconfig-c002-20220208
i386                          randconfig-c001
mips                        qi_lb60_defconfig
arm                          ixp4xx_defconfig
powerpc                   bluestone_defconfig
powerpc                          allyesconfig
arm                          ep93xx_defconfig
mips                      malta_kvm_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                 mpc836x_mds_defconfig
mips                      bmips_stb_defconfig
arm                        spear3xx_defconfig
arm                         hackkit_defconfig
powerpc                     mpc512x_defconfig
i386                          randconfig-a004
i386                          randconfig-a002
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a003
hexagon              randconfig-r045-20220208
hexagon              randconfig-r041-20220208
riscv                randconfig-r042-20220208

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
