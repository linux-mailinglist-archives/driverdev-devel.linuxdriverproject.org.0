Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E228488396
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jan 2022 13:45:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C1F5817A8;
	Sat,  8 Jan 2022 12:45:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GoAGr0sZOUdY; Sat,  8 Jan 2022 12:45:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8DF7781763;
	Sat,  8 Jan 2022 12:45:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 54BF21BF957
 for <devel@linuxdriverproject.org>; Sat,  8 Jan 2022 12:44:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 429DD81757
 for <devel@linuxdriverproject.org>; Sat,  8 Jan 2022 12:44:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q2dEXJgXaxnt for <devel@linuxdriverproject.org>;
 Sat,  8 Jan 2022 12:44:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6577881756
 for <devel@driverdev.osuosl.org>; Sat,  8 Jan 2022 12:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641645896; x=1673181896;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=fwHnA8ceOGcGkHuwtqH9qIKp/3pEgC/7g3C0fEud/7s=;
 b=VoOSIrSoTCBJnKMtrggnRW3Mz5qB88BvOHzrbxVPwzt9CrJeobQomvSC
 JAwp4KSrX5hOX7k0eu5OPuRg3nf0TWkv2Ccxcyqq0P1L9rcD3P5R1jClr
 S43Vk/yV5x6dUJxgcZo0inXxyDCumcFCgd4b/IdWnDdJspOHxyy7STUPX
 GcHSteEwm4Tdwz01WV95f8Z05LS9oYQgTMMdub9SQOiZUZdp1T4J7P53E
 KMEcSgojqZWM1VEPy6/d9SmNsPiyl03FL7N+dyUKizgF660dsJlFUCnUQ
 ztcFvU4wSV9BjQsmv5LGQumLbOKV644xMjQVHfVq9Dgq43KiNS30YLufN w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10220"; a="241825673"
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="241825673"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2022 04:44:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="514138705"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 08 Jan 2022 04:44:54 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n6B5Z-0000d0-Cz; Sat, 08 Jan 2022 12:44:53 +0000
Date: Sat, 08 Jan 2022 20:44:30 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 c9512fd032acfe6f5198c30b6e7e52e0a7df5d31
Message-ID: <61d9872e.5byjmFTZrNQL7EEi%lkp@intel.com>
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
branch HEAD: c9512fd032acfe6f5198c30b6e7e52e0a7df5d31  kobject documentation: remove default_attrs information

elapsed time: 1544m

configs tested: 105
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
sh                           se7750_defconfig
arm                          iop32x_defconfig
powerpc                 canyonlands_defconfig
sh                        edosk7760_defconfig
powerpc                     mpc83xx_defconfig
ia64                         bigsur_defconfig
powerpc                      tqm8xx_defconfig
arm                       aspeed_g5_defconfig
powerpc                       eiger_defconfig
sparc                       sparc32_defconfig
sh                     magicpanelr2_defconfig
mips                  maltasmvp_eva_defconfig
mips                           jazz_defconfig
parisc                generic-64bit_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                     pq2fads_defconfig
mips                          rb532_defconfig
riscv             nommu_k210_sdcard_defconfig
sh                             shx3_defconfig
ia64                      gensparse_defconfig
arm                  randconfig-c002-20220107
arm                  randconfig-c002-20220108
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
x86_64               randconfig-a005-20220107
x86_64               randconfig-a001-20220107
x86_64               randconfig-a004-20220107
x86_64               randconfig-a006-20220107
x86_64               randconfig-a002-20220107
x86_64               randconfig-a003-20220107
i386                 randconfig-a003-20220107
i386                 randconfig-a005-20220107
i386                 randconfig-a004-20220107
i386                 randconfig-a006-20220107
i386                 randconfig-a002-20220107
i386                 randconfig-a001-20220107
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
powerpc                     skiroot_defconfig
x86_64               randconfig-a012-20220107
x86_64               randconfig-a015-20220107
x86_64               randconfig-a014-20220107
x86_64               randconfig-a013-20220107
x86_64               randconfig-a011-20220107
x86_64               randconfig-a016-20220107
i386                 randconfig-a012-20220107
i386                 randconfig-a016-20220107
i386                 randconfig-a014-20220107
i386                 randconfig-a015-20220107
i386                 randconfig-a011-20220107
i386                 randconfig-a013-20220107
hexagon              randconfig-r041-20220107
hexagon              randconfig-r045-20220107
riscv                randconfig-r042-20220107
s390                 randconfig-r044-20220107

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
