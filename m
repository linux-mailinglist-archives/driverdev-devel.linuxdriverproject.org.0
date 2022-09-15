Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F115BA304
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Sep 2022 01:03:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 423CE83F23;
	Thu, 15 Sep 2022 23:03:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 423CE83F23
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X2t6a-BEN8Ln; Thu, 15 Sep 2022 23:03:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC9B883F03;
	Thu, 15 Sep 2022 23:03:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC9B883F03
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 846D91BF287
 for <devel@linuxdriverproject.org>; Thu, 15 Sep 2022 23:03:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C3BC610D5
 for <devel@linuxdriverproject.org>; Thu, 15 Sep 2022 23:03:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C3BC610D5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XSj3lY29vczW for <devel@linuxdriverproject.org>;
 Thu, 15 Sep 2022 23:03:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F362D610BD
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F362D610BD
 for <devel@driverdev.osuosl.org>; Thu, 15 Sep 2022 23:03:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="300223348"
X-IronPort-AV: E=Sophos;i="5.93,319,1654585200"; d="scan'208";a="300223348"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 16:02:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,319,1654585200"; d="scan'208";a="568617950"
Received: from lkp-server02.sh.intel.com (HELO 41300c7200ea) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 15 Sep 2022 16:02:53 -0700
Received: from kbuild by 41300c7200ea with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oYxsi-00018Z-1B;
 Thu, 15 Sep 2022 23:02:52 +0000
Date: Fri, 16 Sep 2022 07:02:11 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 d8ab4685adc1f78aef5ece1334a47ca1a8181745
Message-ID: <6323aef3.nPCiBjzxdZqCkjMx%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663282982; x=1694818982;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=um2Sx99us2NBBNCXjex+SYZvfyuV9Ky+GmGemC6wDso=;
 b=i9EQHELAUgFAYQwB7dv7qNj3zVOYAPV1aWiY7h14KjxTSK6+6+ByFXbr
 3aWmP6L3gmQopBXIeL8FvyqV10afV4AN+PrBFgArqhS9J2RuvupspYiXC
 2tPHoDTU/lLdnm91pGAJVvLEDJe/waCfq0g6IFGuVqUUko/JTWyuLb230
 JYaXzEMhEVdyqTWLOzmWtP0jPa2Ya3Vay2ZFtxM7lAQKvoIs+aXTu3zF+
 +083zurHJ9Jq9tJUrM+MVx+h+Yuxu1rZphzfH6EQK0b94h8D7IeIMxupY
 s8BPAlYvjccbgQWjc9CKZZ+8W93k3VQRwokS1mJ1S9kPnuhX5e+y/XX+v
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i9EQHELA
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
branch HEAD: d8ab4685adc1f78aef5ece1334a47ca1a8181745  Revert "driver core: Set fw_devlink.strict=1 by default"

elapsed time: 729m

configs tested: 113
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                             allyesconfig
i386                                defconfig
ia64                             allmodconfig
s390                 randconfig-r044-20220915
arc                  randconfig-r043-20220915
riscv                randconfig-r042-20220915
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
powerpc                          allyesconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                            allyesconfig
mips                     decstation_defconfig
m68k                        m5272c3_defconfig
m68k                       m5275evb_defconfig
powerpc                     asp8347_defconfig
i386                          randconfig-c001
arm64                               defconfig
ia64                             allyesconfig
arm                              allmodconfig
m68k                                defconfig
ia64                                defconfig
mips                             allmodconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
powerpc                        warp_defconfig
xtensa                           alldefconfig
powerpc                      mgcoge_defconfig
m68k                        m5307c3_defconfig
arm                           viper_defconfig
sh                         ap325rxa_defconfig
arc                          axs103_defconfig
mips                            gpr_defconfig
sh                             sh03_defconfig
powerpc                         wii_defconfig
openrisc                       virt_defconfig
powerpc                        cell_defconfig
powerpc                      ep88xc_defconfig
sparc                       sparc32_defconfig
powerpc                      arches_defconfig
sh                          rsk7203_defconfig
arm                         vf610m4_defconfig
nios2                               defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
loongarch                           defconfig
loongarch                         allnoconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
x86_64                        randconfig-c001
arm                  randconfig-c002-20220916
nios2                            allyesconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig

clang tested configs:
hexagon              randconfig-r045-20220915
hexagon              randconfig-r041-20220915
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
powerpc                      acadia_defconfig
x86_64                        randconfig-k001
powerpc                     kmeter1_defconfig
powerpc                 xes_mpc85xx_defconfig
mips                           ip28_defconfig
powerpc                    socrates_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
