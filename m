Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4B35F1CBF
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 Oct 2022 16:27:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1FA2483FC6;
	Sat,  1 Oct 2022 14:27:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1FA2483FC6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YN9O3RRyFebu; Sat,  1 Oct 2022 14:27:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A57CA83FC1;
	Sat,  1 Oct 2022 14:27:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A57CA83FC1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E4F21BF44C
 for <devel@linuxdriverproject.org>; Sat,  1 Oct 2022 14:27:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 09B2783FC6
 for <devel@linuxdriverproject.org>; Sat,  1 Oct 2022 14:27:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 09B2783FC6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RksUQfK2BrAT for <devel@linuxdriverproject.org>;
 Sat,  1 Oct 2022 14:27:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DD74883FC1
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DD74883FC1
 for <devel@driverdev.osuosl.org>; Sat,  1 Oct 2022 14:27:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="282755345"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="282755345"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2022 07:27:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="951873707"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="951873707"
Received: from lkp-server01.sh.intel.com (HELO 14cc182da2d0) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 01 Oct 2022 07:27:35 -0700
Received: from kbuild by 14cc182da2d0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oedSp-0002LX-09;
 Sat, 01 Oct 2022 14:27:35 +0000
Date: Sat, 01 Oct 2022 22:27:32 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 fda8c908bc2d523c0770ded667dcdad29c06ff52
Message-ID: <63384e54.7IZ6aoPtffwmV8U1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664634461; x=1696170461;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=fzcCIOfmqZlBOYwTu8uUUveeF+TjiEsrAjiN0n9GKZQ=;
 b=bMR1JhWCQ95M5mXY7r2t0zmahMiJOLebH2KxFmSU4DmIt9AjYexaddrb
 KDjI2UFqK1XD6FlMvMRyseOIUFzdVIQMAbQ7u9nayaVFvrFFE9m2k9Q1u
 8RQurJl+6lc+Th7l6AWYQIKtEU8I0wCStKEe9GClAlpSg5NArMUD2SAkd
 nlYcWr6NHFVZ69mncOMJfEXL232YYv7MrpKlrMwRQowzZyaFhLlF/9uPG
 GbGiT+sXqyxVeqNW1kwdAEsksexrxlGBdOPPvZRPX35FD97/Y93rjFZBy
 Px2pS49XX5ofkegIjYdAw+2mQ06C+RmYT56nlRT60V/s7819xS+yLBOWf
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bMR1JhWC
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
branch HEAD: fda8c908bc2d523c0770ded667dcdad29c06ff52  docs: filesystems: sysfs: Make text and code for ->show() consistent

elapsed time: 1522m

configs tested: 135
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
mips                             allyesconfig
x86_64                        randconfig-a013
i386                                defconfig
x86_64                        randconfig-a011
powerpc                          allmodconfig
x86_64                        randconfig-a015
x86_64                              defconfig
arc                                 defconfig
alpha                               defconfig
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
x86_64                    rhel-8.3-kselftests
x86_64                           allyesconfig
s390                                defconfig
arc                  randconfig-r043-20220925
m68k                             allmodconfig
i386                             allyesconfig
arc                              allyesconfig
s390                             allmodconfig
arc                  randconfig-r043-20220928
alpha                            allyesconfig
x86_64                        randconfig-a004
m68k                             allyesconfig
x86_64                        randconfig-a002
riscv                randconfig-r042-20220925
s390                             allyesconfig
arm                                 defconfig
x86_64                        randconfig-a006
arc                  randconfig-r043-20220926
i386                          randconfig-a003
i386                          randconfig-a005
s390                 randconfig-r044-20220925
i386                          randconfig-a001
x86_64               randconfig-a004-20220926
x86_64               randconfig-a001-20220926
x86_64               randconfig-a003-20220926
x86_64               randconfig-a002-20220926
x86_64               randconfig-a005-20220926
x86_64               randconfig-a006-20220926
arm64                            allyesconfig
arm                              allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
i386                 randconfig-a003-20220926
i386                 randconfig-a001-20220926
i386                 randconfig-a006-20220926
i386                 randconfig-a004-20220926
i386                 randconfig-a005-20220926
i386                 randconfig-a002-20220926
i386                          randconfig-c001
arm                         lpc18xx_defconfig
arm                       aspeed_g5_defconfig
mips                  maltasmvp_eva_defconfig
arm                           h5000_defconfig
m68k                          atari_defconfig
powerpc                      chrp32_defconfig
sh                        edosk7705_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
riscv                randconfig-r042-20220927
arc                  randconfig-r043-20220927
s390                 randconfig-r044-20220927
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
powerpc                       ppc64_defconfig
arm                           sunxi_defconfig
powerpc                     rainier_defconfig
sh                 kfr2r09-romimage_defconfig
powerpc                        warp_defconfig
arc                      axs103_smp_defconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220925
nios2                            allyesconfig
parisc                           allyesconfig
ia64                             allmodconfig

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
riscv                randconfig-r042-20220928
i386                 randconfig-a016-20220926
hexagon              randconfig-r045-20220925
hexagon              randconfig-r045-20220928
hexagon              randconfig-r041-20220926
s390                 randconfig-r044-20220928
hexagon              randconfig-r041-20220928
i386                 randconfig-a015-20220926
i386                 randconfig-a013-20220926
hexagon              randconfig-r045-20220926
x86_64                        randconfig-a005
x86_64               randconfig-a015-20220926
i386                 randconfig-a012-20220926
i386                 randconfig-a011-20220926
x86_64                        randconfig-a001
hexagon              randconfig-r041-20220925
x86_64               randconfig-a012-20220926
riscv                randconfig-r042-20220926
x86_64               randconfig-a014-20220926
x86_64               randconfig-a016-20220926
x86_64                        randconfig-a003
i386                 randconfig-a014-20220926
s390                 randconfig-r044-20220926
i386                          randconfig-a002
x86_64               randconfig-a013-20220926
i386                          randconfig-a006
i386                          randconfig-a004
x86_64               randconfig-a011-20220926
x86_64                        randconfig-k001
riscv                    nommu_virt_defconfig
powerpc                        icon_defconfig
arm                          pxa168_defconfig
powerpc                 mpc832x_mds_defconfig
arm                          moxart_defconfig
arm                         mv78xx0_defconfig
powerpc                          allyesconfig
mips                     loongson1c_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
