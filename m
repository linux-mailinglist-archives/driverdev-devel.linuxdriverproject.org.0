Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BACE5AB99F
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Sep 2022 22:52:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E20C94016C;
	Fri,  2 Sep 2022 20:52:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E20C94016C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l1CdWQGxmeKu; Fri,  2 Sep 2022 20:52:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7EAA0400EF;
	Fri,  2 Sep 2022 20:52:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7EAA0400EF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6A3B31BF3BE
 for <devel@linuxdriverproject.org>; Fri,  2 Sep 2022 20:52:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4348B415C0
 for <devel@linuxdriverproject.org>; Fri,  2 Sep 2022 20:52:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4348B415C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id seogJxGy0jcJ for <devel@linuxdriverproject.org>;
 Fri,  2 Sep 2022 20:52:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22922415BF
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 22922415BF
 for <devel@driverdev.osuosl.org>; Fri,  2 Sep 2022 20:52:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="357801937"
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="357801937"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 13:52:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="590211925"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 02 Sep 2022 13:52:22 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oUDeH-0000af-0y;
 Fri, 02 Sep 2022 20:52:21 +0000
Date: Sat, 03 Sep 2022 04:51:48 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 61742a7cd5b194d2cc52d78de8ec6967634a4cd6
Message-ID: <63126ce4.16l+b5bpcQsZjoG3%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662151952; x=1693687952;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Y5AVCUQVfobVVA9O/8Yr28/rzYGrPHPMbapcUhrXvfc=;
 b=I71ENrdrhkjaaKG8v4fZ/jKFEuyO4AmCnhAFB8VWhpYxU5NUJ2dVOtfK
 XeGaNkJKgu3nJAfLivK0dzXPTCeVVXApdIZi7ii0VvnLQ/Dnonf6Be/Tz
 8EQINv3d1JEDXtJ4YN9iIUujUFbR8se2Vkha7vNnzxh/R82Y7w1cc3NnY
 Z7novckiqaSKmmV0HHTdGJFhopyMQXSGEuZOSWVOj5bo/6hLVF/bdWs/K
 xL/hLmrmOE83RiHemSgpGvX9h8ROEONkG1lXmfEPodCnnPxn9/5B5gQmz
 F5/dN/yAUlPwApG1hdBsim6JAzMLvQ3eXqMs56ONeOa7Q2c8YU3I2gKgt
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I71ENrdr
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
branch HEAD: 61742a7cd5b194d2cc52d78de8ec6967634a4cd6  devres: Slightly optimize alloc_dr()

elapsed time: 1697m

configs tested: 116
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
sh                               allmodconfig
m68k                             allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
arc                  randconfig-r043-20220901
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                              defconfig
i386                          randconfig-a014
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                        randconfig-a015
i386                          randconfig-a005
x86_64                               rhel-8.3
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                           allyesconfig
x86_64                        randconfig-a006
i386                                defconfig
i386                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
arm                          pxa3xx_defconfig
mips                           ci20_defconfig
sh                          lboxre2_defconfig
powerpc                     ep8248e_defconfig
sh                   sh7724_generic_defconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
loongarch                           defconfig
loongarch                         allnoconfig
sparc                       sparc64_defconfig
mips                           ip32_defconfig
mips                            gpr_defconfig
s390                       zfcpdump_defconfig
powerpc                     tqm8541_defconfig
sh                          r7785rp_defconfig
mips                     loongson1b_defconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm64                            allyesconfig
arm                         lubbock_defconfig
sh                           se7750_defconfig
m68k                          amiga_defconfig
powerpc                     mpc83xx_defconfig
mips                     decstation_defconfig
mips                            ar7_defconfig
powerpc                      tqm8xx_defconfig
alpha                            alldefconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
sh                            shmin_defconfig
sh                             espt_defconfig
sparc                            alldefconfig
microblaze                      mmu_defconfig
powerpc                     sequoia_defconfig
openrisc                 simple_smp_defconfig
arm                            mps2_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220902
arm                            hisi_defconfig
sh                         apsh4a3a_defconfig
powerpc                  storcenter_defconfig
powerpc                      cm5200_defconfig
sparc                               defconfig
csky                                defconfig
x86_64                                  kexec
ia64                             allmodconfig

clang tested configs:
riscv                randconfig-r042-20220901
hexagon              randconfig-r045-20220901
hexagon              randconfig-r041-20220901
s390                 randconfig-r044-20220901
x86_64                        randconfig-a012
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a002
i386                          randconfig-a015
x86_64                        randconfig-a016
i386                          randconfig-a004
x86_64                        randconfig-a014
i386                          randconfig-a006
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
powerpc                     mpc512x_defconfig
arm                        neponset_defconfig
x86_64                        randconfig-k001
powerpc                      walnut_defconfig
arm                       spear13xx_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
