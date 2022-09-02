Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D39A25AB86E
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Sep 2022 20:40:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9FD1C60D75;
	Fri,  2 Sep 2022 18:40:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9FD1C60D75
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QHZGKT73yLdn; Fri,  2 Sep 2022 18:40:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A77B60BB5;
	Fri,  2 Sep 2022 18:40:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A77B60BB5
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 7887D1BF5DA
 for <devel@linuxdriverproject.org>; Fri,  2 Sep 2022 18:40:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60AFC82446
 for <devel@linuxdriverproject.org>; Fri,  2 Sep 2022 18:40:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60AFC82446
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HfDgftTRL_Vh for <devel@linuxdriverproject.org>;
 Fri,  2 Sep 2022 18:40:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 07DEC82438
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 07DEC82438
 for <devel@driverdev.osuosl.org>; Fri,  2 Sep 2022 18:40:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="297342307"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="297342307"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 11:40:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="590171420"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 02 Sep 2022 11:40:14 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oUBaP-0000RP-2q;
 Fri, 02 Sep 2022 18:40:13 +0000
Date: Sat, 03 Sep 2022 02:39:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 7bd581f3c26354f5d5dc6536fcfbbe14f4f5b2b7
Message-ID: <63124dd4.mwsh7ZhKff23LGY0%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662144017; x=1693680017;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=mxHkI/cai0ez1NR1xo3K2n5uAv7o6OzszgixU5t3tv4=;
 b=YEt0GUVVSyAlo9u8PKdbj9XkyAy9emfLxKPH+VUUYVRt+b4sEOaTOh/K
 u3ZG6gPweWAtKekc0KXFn0HvAFfOQ+W7bhZl58LhxUmQId8iXmTkMg67O
 ZjnqsbiPrZev2RCAd/J3KUUvJkyvGziAU5ImnQnVUKgCvF6KXi7jI9JkF
 rXdw8HbfgEH6Ta2Yok8Y2OzQ2y+fKc2YM39bvTimLJysdExLYdzaXZhZy
 +o6vbN3bYyrDiII64XJlH2t097Gz9xQoTLLpFxOwYcNxYfWqSjc3Y7IsI
 9tdkMBCFWNCBlrp31awPlztsBgbU7/3oMQby4A71/5sb47kKUORZsfh9M
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YEt0GUVV
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
branch HEAD: 7bd581f3c26354f5d5dc6536fcfbbe14f4f5b2b7  staging: r8188eu: remove os_dep/mlme_linux.c

elapsed time: 1610m

configs tested: 116
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
powerpc                           allnoconfig
powerpc                          allmodconfig
arc                  randconfig-r043-20220901
mips                             allyesconfig
i386                          randconfig-a016
sh                               allmodconfig
x86_64                              defconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                               rhel-8.3
i386                          randconfig-a001
x86_64                        randconfig-a015
i386                          randconfig-a003
i386                                defconfig
x86_64                           allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
i386                          randconfig-a005
x86_64                           rhel-8.3-syz
i386                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
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
sparc                       sparc64_defconfig
mips                           ip32_defconfig
mips                            gpr_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
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
arm64                            allyesconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
x86_64                        randconfig-c001
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
i386                          randconfig-a013
i386                          randconfig-a011
hexagon              randconfig-r041-20220901
i386                          randconfig-a015
hexagon              randconfig-r045-20220901
riscv                randconfig-r042-20220901
s390                 randconfig-r044-20220901
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a002
x86_64                        randconfig-a016
i386                          randconfig-a004
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
