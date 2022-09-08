Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77E315B170D
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Sep 2022 10:32:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E92D1411A6;
	Thu,  8 Sep 2022 08:32:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E92D1411A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ii_j9evkqlAv; Thu,  8 Sep 2022 08:32:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8009A400F6;
	Thu,  8 Sep 2022 08:32:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8009A400F6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 541231BF5A9
 for <devel@linuxdriverproject.org>; Thu,  8 Sep 2022 08:32:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2F73184046
 for <devel@linuxdriverproject.org>; Thu,  8 Sep 2022 08:32:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F73184046
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 18TZ9DWOdAy6 for <devel@linuxdriverproject.org>;
 Thu,  8 Sep 2022 08:31:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0AF8D83E9F
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0AF8D83E9F
 for <devel@driverdev.osuosl.org>; Thu,  8 Sep 2022 08:31:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="284127553"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="284127553"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 01:31:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="565855520"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 08 Sep 2022 01:31:57 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oWCx2-0007Xl-1c;
 Thu, 08 Sep 2022 08:31:56 +0000
Date: Thu, 08 Sep 2022 16:31:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 5ac251c8a05ce074e5efac779debf82a15d870a3
Message-ID: <6319a844.tUV/37nim2c9iVad%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662625919; x=1694161919;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=DyxAKdjgDCnqUJ0q9IfdFE6Ftr3X8rAF5FHv4O8IPOg=;
 b=aYmrPXFBAhsjJxoa4BpUM3LTCy/az/7sQDyeZ8Wx3ZWYg5QdFp4DbCL0
 RG+rJrUQH/blKk97UfregHZ0+1l5GZ2KOcbsQqFyZD96eCafIBdxHEeD2
 ZSqXREhdGxDw5ON/NpAD18LZjRG8xZsvXwLWIFs35CQC4/Of2p7DKXswM
 ITnKgi7bqlux2c83+ceNvailn+Hie9nw6DaRWjGt0bnHzGK4EN888yJyG
 54Cyd5kJU4ao5U6Xi7oAqn5qsKGKy37uaU8FjB+VxAVfOpHasFThN7dGT
 jz8t7EcBnJAweuYBdY4KyYXbbsvervKjn9h/dPi0DvE2VSUHFGxvEIZTl
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aYmrPXFB
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-linus
branch HEAD: 5ac251c8a05ce074e5efac779debf82a15d870a3  arch_topology: Make cluster topology span at least SMT CPUs

elapsed time: 980m

configs tested: 132
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
x86_64                              defconfig
um                           x86_64_defconfig
x86_64                        randconfig-a013
powerpc                           allnoconfig
x86_64                        randconfig-a011
arc                  randconfig-r043-20220907
x86_64                               rhel-8.3
x86_64                        randconfig-a015
arm                                 defconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                           allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
i386                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
m68k                             allyesconfig
arm                              allyesconfig
arm64                            allyesconfig
csky                                defconfig
sparc                            alldefconfig
sparc                               defconfig
um                                  defconfig
sh                            titan_defconfig
arm                            mps2_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
sparc                             allnoconfig
arm                        cerfcube_defconfig
powerpc                      arches_defconfig
openrisc                 simple_smp_defconfig
powerpc                     asp8347_defconfig
sh                     sh7710voipgw_defconfig
i386                             alldefconfig
powerpc                     ep8248e_defconfig
m68k                          hp300_defconfig
m68k                        m5272c3_defconfig
arm                          exynos_defconfig
i386                          randconfig-c001
ia64                          tiger_defconfig
arc                              alldefconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sh                          r7785rp_defconfig
arm                          iop32x_defconfig
powerpc                     mpc83xx_defconfig
xtensa                generic_kc705_defconfig
sh                             sh03_defconfig
sh                           se7750_defconfig
s390                             allmodconfig
xtensa                       common_defconfig
arm                        clps711x_defconfig
arc                           tb10x_defconfig
powerpc                       eiger_defconfig
sh                          r7780mp_defconfig
arm                            qcom_defconfig
arm                          pxa3xx_defconfig
arm                         s3c6400_defconfig
powerpc                     stx_gp3_defconfig
arm64                            alldefconfig
sh                           se7722_defconfig
riscv                randconfig-r042-20220908
arc                  randconfig-r043-20220908
s390                 randconfig-r044-20220908
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
powerpc                         wii_defconfig
xtensa                  cadence_csp_defconfig
m68k                       m5275evb_defconfig
sh                         ap325rxa_defconfig
xtensa                           allyesconfig
sparc                            allyesconfig
x86_64                                  kexec
microblaze                          defconfig
powerpc                        cell_defconfig
parisc64                         alldefconfig
arm                        realview_defconfig
xtensa                              defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r041-20220907
hexagon              randconfig-r045-20220907
s390                 randconfig-r044-20220907
riscv                randconfig-r042-20220907
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a013
x86_64                        randconfig-a014
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
powerpc                 mpc8315_rdb_defconfig
mips                           ip22_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
powerpc                     tqm8540_defconfig
arm                           spitz_defconfig
x86_64                        randconfig-k001
powerpc                     akebono_defconfig
mips                      malta_kvm_defconfig
arm                    vt8500_v6_v7_defconfig
arm                      pxa255-idp_defconfig
s390                             alldefconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
