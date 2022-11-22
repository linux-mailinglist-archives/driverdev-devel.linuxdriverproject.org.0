Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A967163368C
	for <lists+driverdev-devel@lfdr.de>; Tue, 22 Nov 2022 09:04:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 146C260FD1;
	Tue, 22 Nov 2022 08:04:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 146C260FD1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ezfeBQsvOTTi; Tue, 22 Nov 2022 08:04:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AE9A760F95;
	Tue, 22 Nov 2022 08:04:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AE9A760F95
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 63EA41BF31A
 for <devel@linuxdriverproject.org>; Tue, 22 Nov 2022 08:04:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3696E408A6
 for <devel@linuxdriverproject.org>; Tue, 22 Nov 2022 08:04:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3696E408A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f6xf8CL6dn0f for <devel@linuxdriverproject.org>;
 Tue, 22 Nov 2022 08:04:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD622403AC
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id CD622403AC
 for <devel@driverdev.osuosl.org>; Tue, 22 Nov 2022 08:04:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="294149379"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="294149379"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 00:04:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="730309560"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="730309560"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Nov 2022 00:04:02 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oxOGA-0001EF-0h;
 Tue, 22 Nov 2022 08:04:02 +0000
Date: Tue, 22 Nov 2022 16:03:18 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 1740a270aa0863237618462355499eab1d95d0ee
Message-ID: <637c8246.yuFyJ0w6epEiN7Y4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669104244; x=1700640244;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=GuEq7c/hXzIJIDwHIX9ejVozBRF/xWzWmaNxFWsk6ks=;
 b=KktDq6HGlWwzXqTcrrS8kd+Xqmoem7ys6UvR+SoXQO5UzymQwGWx4B1b
 n7eHVVLiFo+lEGH34JgRyuzt/oPtbo+MGMqzQ68sMFriZ6gf/bZE1QF/V
 /1HXZfN/TGYnS20ESMMQNs9MuUs+pvMDpaGandM6zqaOUn+iPoe7U4j3H
 SJKDIpNJ+0GZo2+UPb35+mq8SQ5YIwzyhUGo0deEG9jl5rCE2bbZ9UpJn
 JMUJmrkePI/ZgrW+3dBG+1RySsLzlP+9Hwga75ziDDS11q8mLXQnGsEEJ
 JVBMlWY0Z1uF58eWUhlKUVdo/CY1og6Abb6SPCyP6JSg5Hx8NcggdAZtX
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KktDq6HG
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_lookup_fix
branch HEAD: 1740a270aa0863237618462355499eab1d95d0ee  kernel/time/test_udelay.c: debugfs_lookup() fix

elapsed time: 1315m

configs tested: 143
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                            allnoconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                          randconfig-c001
powerpc                      bamboo_defconfig
sh                          r7780mp_defconfig
arm                        cerfcube_defconfig
xtensa                           alldefconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
powerpc                           allnoconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                             allyesconfig
i386                                defconfig
s390                 randconfig-r044-20221121
riscv                randconfig-r042-20221121
arc                  randconfig-r043-20221121
x86_64               randconfig-a011-20221121
x86_64               randconfig-a014-20221121
x86_64               randconfig-a012-20221121
x86_64               randconfig-a013-20221121
x86_64               randconfig-a016-20221121
x86_64               randconfig-a015-20221121
arc                              allyesconfig
i386                 randconfig-a014-20221121
i386                 randconfig-a011-20221121
i386                 randconfig-a013-20221121
i386                 randconfig-a016-20221121
i386                 randconfig-a012-20221121
i386                 randconfig-a015-20221121
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
mips                      loongson3_defconfig
csky                                defconfig
powerpc                      ppc6xx_defconfig
sh                             espt_defconfig
arm                              allmodconfig
arm                           corgi_defconfig
arm                          simpad_defconfig
sh                          rsk7264_defconfig
mips                 decstation_r4k_defconfig
loongarch                           defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm                                 defconfig
arm                             pxa_defconfig
mips                        bcm47xx_defconfig
powerpc                    adder875_defconfig
mips                           ip32_defconfig
xtensa                       common_defconfig
arc                  randconfig-r043-20221120
powerpc                     sequoia_defconfig
arm                        shmobile_defconfig
sh                        sh7763rdp_defconfig
m68k                            q40_defconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                 mpc837x_mds_defconfig
ia64                             allmodconfig
arm                      footbridge_defconfig
powerpc                       eiger_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
m68k                          hp300_defconfig
arm                        realview_defconfig
powerpc                    sam440ep_defconfig
sh                         ap325rxa_defconfig
s390                             allyesconfig
mips                             allyesconfig
arm                            hisi_defconfig
sh                          sdk7786_defconfig
sparc                       sparc64_defconfig
sh                           se7712_defconfig
m68k                        m5272c3_defconfig
arm                         nhk8815_defconfig
loongarch                         allnoconfig
sparc                               defconfig
x86_64                                  kexec
x86_64                        randconfig-c001
arm                  randconfig-c002-20221120
mips                           jazz_defconfig
powerpc                      ep88xc_defconfig
m68k                       m5249evb_defconfig
sh                  sh7785lcr_32bit_defconfig
arm                           sama5_defconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
arc                           tb10x_defconfig
mips                          rb532_defconfig
m68k                             allyesconfig
m68k                             allmodconfig
alpha                            allyesconfig
sh                               alldefconfig
m68k                        m5307c3_defconfig
powerpc                     tqm8541_defconfig
powerpc                     asp8347_defconfig
xtensa                    xip_kc705_defconfig
powerpc                      pasemi_defconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64                        randconfig-k001
arm                                 defconfig
x86_64               randconfig-a002-20221121
x86_64               randconfig-a001-20221121
x86_64               randconfig-a004-20221121
x86_64               randconfig-a006-20221121
x86_64               randconfig-a005-20221121
x86_64               randconfig-a003-20221121
i386                 randconfig-a001-20221121
i386                 randconfig-a005-20221121
i386                 randconfig-a006-20221121
i386                 randconfig-a004-20221121
i386                 randconfig-a003-20221121
i386                 randconfig-a002-20221121
powerpc                    mvme5100_defconfig
arm                         bcm2835_defconfig
arm                         lpc32xx_defconfig
arm                          pxa168_defconfig
riscv                          rv32_defconfig
powerpc                 mpc8272_ads_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
powerpc                    gamecube_defconfig
powerpc                  mpc866_ads_defconfig
arm                        neponset_defconfig
powerpc                     ksi8560_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
powerpc                  mpc885_ads_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
