Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F52A672962
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Jan 2023 21:32:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7D4182185;
	Wed, 18 Jan 2023 20:32:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E7D4182185
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XZLxQPAKRwuR; Wed, 18 Jan 2023 20:32:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 726FB82162;
	Wed, 18 Jan 2023 20:32:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 726FB82162
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A7BFC1BF28B
 for <devel@linuxdriverproject.org>; Wed, 18 Jan 2023 20:32:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9152C401F8
 for <devel@linuxdriverproject.org>; Wed, 18 Jan 2023 20:32:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9152C401F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id m1POoMls0LDw for <devel@linuxdriverproject.org>;
 Wed, 18 Jan 2023 20:32:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DCEC4400CB
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DCEC4400CB
 for <devel@driverdev.osuosl.org>; Wed, 18 Jan 2023 20:32:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="323779252"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="323779252"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 12:32:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="905260583"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="905260583"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 18 Jan 2023 12:32:13 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pIF6S-0000gu-1x;
 Wed, 18 Jan 2023 20:32:12 +0000
Date: Thu, 19 Jan 2023 04:31:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 ed9f918174cb35ba51d2fc86a613305dd8bc4cfe
Message-ID: <63c8571f.W3tIOxlph768IJjU%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674073934; x=1705609934;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=9QE2RBX60AtcrkkYx1gsGY2n5eUpufkkOON0Hhrpgz4=;
 b=FAv+CMyuZ+0kh0EqMLzudiqWQpqgkEVzQTs89ODLhs+2bE2M8UjvFNdD
 E9S0Ag7sH1vNIGmMj2z/UlkL9RMZuIcvqHDmNjkVAhRV7Gk4BNrYplms9
 69FiMFkIXWOhum/ixzqI4hX7BnhQScFNZdosAn2ptf+7ceAQnH1Pjaz2c
 bk1F1dudhPQJHyeNLPoQRzeqSaNWpr3YX41/GHbpVeVtEW+R6alIYi1ho
 JOs9O9fxCb9c2hcW4CkNM91/karaZkAlG5xN7nc/MyO8wJYiPFTZDWFQn
 36ht6cgJ7vutd5Hwzgd8Bddqrmv9TeZFMIluvD9kJ+aLFO3zn/7SEMI4E
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FAv+CMyu
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git bus_cleanup
branch HEAD: ed9f918174cb35ba51d2fc86a613305dd8bc4cfe  driver core: bus: move bus notifier logic into bus.c

elapsed time: 721m

configs tested: 97
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
sh                               allmodconfig
powerpc                          allmodconfig
mips                             allyesconfig
i386                 randconfig-a014-20230116
x86_64                              defconfig
i386                 randconfig-a013-20230116
i386                 randconfig-a012-20230116
i386                 randconfig-a011-20230116
i386                 randconfig-a015-20230116
arm                                 defconfig
x86_64                               rhel-8.3
i386                 randconfig-a016-20230116
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           allyesconfig
arm64                            allyesconfig
arm                              allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
riscv                randconfig-r042-20230118
s390                 randconfig-r044-20230118
arc                  randconfig-r043-20230118
ia64                             allmodconfig
x86_64               randconfig-a011-20230116
x86_64               randconfig-a016-20230116
x86_64               randconfig-a014-20230116
x86_64               randconfig-a013-20230116
x86_64               randconfig-a015-20230116
x86_64               randconfig-a012-20230116
i386                             allyesconfig
i386                                defconfig
i386                          randconfig-c001
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
m68k                       m5208evb_defconfig
arm                         s3c6400_defconfig
sh                        dreamcast_defconfig
xtensa                              defconfig
mips                       bmips_be_defconfig
arm64                            alldefconfig
sh                 kfr2r09-romimage_defconfig
sh                             sh03_defconfig
powerpc                     ep8248e_defconfig
powerpc                      ppc6xx_defconfig
m68k                        m5307c3_defconfig
powerpc                      cm5200_defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
sh                                  defconfig
powerpc                mpc7448_hpc2_defconfig
parisc                           allyesconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
mips                          ath25_defconfig
mips                     loongson2k_defconfig
powerpc                     ppa8548_defconfig
x86_64               randconfig-a003-20230116
x86_64               randconfig-a004-20230116
x86_64               randconfig-a006-20230116
x86_64               randconfig-a005-20230116
x86_64               randconfig-a001-20230116
x86_64               randconfig-a002-20230116
mips                          rm200_defconfig
powerpc                     skiroot_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                          rhel-8.3-rust
powerpc                    socrates_defconfig
arm                          ep93xx_defconfig
arm                      tct_hammer_defconfig
powerpc                 xes_mpc85xx_defconfig
arm                              alldefconfig
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
