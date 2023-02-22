Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DE169FDD2
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Feb 2023 22:41:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 59AA160AD4;
	Wed, 22 Feb 2023 21:41:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59AA160AD4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rP6ZEgPsZiLw; Wed, 22 Feb 2023 21:41:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0D65161391;
	Wed, 22 Feb 2023 21:41:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0D65161391
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 199801BF400
 for <devel@linuxdriverproject.org>; Wed, 22 Feb 2023 21:41:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E5B9681306
 for <devel@linuxdriverproject.org>; Wed, 22 Feb 2023 21:41:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E5B9681306
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kDpkrt3QaaTx for <devel@linuxdriverproject.org>;
 Wed, 22 Feb 2023 21:41:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D3A5681302
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D3A5681302
 for <devel@driverdev.osuosl.org>; Wed, 22 Feb 2023 21:41:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="419272236"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="419272236"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 13:41:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="649701747"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="649701747"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 22 Feb 2023 13:41:33 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pUwrk-0000kb-2F;
 Wed, 22 Feb 2023 21:41:32 +0000
Date: Thu, 23 Feb 2023 05:40:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD REGRESSION
 d695b889adbebf45a6187dccd33173dc9e58f356
Message-ID: <63f68bda.86dkislciDOc8bTv%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677102095; x=1708638095;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=lTVV9oxzWMxTHb2URkSBC7M8ThCzwNZTSHPtOIAaQUw=;
 b=C2l10eUaNwOMFFZ/AuP4KxJ2Npr4fd2uPpIhgVI/ItBHyaz8paaBRqdJ
 OX3eUezO2Fs8hP58VedUqKMvyjv+qItKwMQ/YeYxaSO3CGYS45K4NTfIY
 VuVmRC6YQ02iWFchmnCAjYiARext3eECgOqEMZGXwQBsAGlYh3M95jGVq
 0z0ir4/3g6UcZDVKTfZZf6I/XBorHzfxbGzPyd0oso7kvFvKxQPTD2VD4
 dlU2CiJyoo+avSun/tVvMqLgVwKpoGzU9tXvOKtfh2jgMspCET3D7qAbC
 jLV2X+I17Tu/GngIIWYHzmD1TbbzUzisgJ8PhgVyUEwlURtoyXzWu5wYZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C2l10eUa
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git class_cleanup
branch HEAD: d695b889adbebf45a6187dccd33173dc9e58f356  driver core: device: make device_create*() take a const struct class *

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202302230206.Ty3AABtm-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

arch/mips/kernel/vpe-mt.c:320:3: error: field designator 'owner' does not refer to any field in type 'struct class'
drivers/soc/qcom/rmtfs_mem.c:128:10: error: 'struct class' has no member named 'owner'
include/linux/export.h:27:21: error: initialization of 'const char *' from incompatible pointer type 'struct module *' [-Werror=incompatible-pointer-types]
include/linux/export.h:29:21: error: initialization of 'const char *' from incompatible pointer type 'struct module *' [-Werror=incompatible-pointer-types]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm-allmodconfig
|   |-- drivers-soc-qcom-rmtfs_mem.c:error:struct-class-has-no-member-named-owner
|   `-- include-linux-export.h:error:initialization-of-const-char-from-incompatible-pointer-type-struct-module
|-- arm-allyesconfig
|   |-- drivers-soc-qcom-rmtfs_mem.c:error:struct-class-has-no-member-named-owner
|   `-- include-linux-export.h:error:initialization-of-const-char-from-incompatible-pointer-type-struct-module
|-- arm-defconfig
|   |-- drivers-soc-qcom-rmtfs_mem.c:error:struct-class-has-no-member-named-owner
|   `-- include-linux-export.h:error:initialization-of-const-char-from-incompatible-pointer-type-struct-module
|-- arm64-allyesconfig
|   |-- drivers-soc-qcom-rmtfs_mem.c:error:struct-class-has-no-member-named-owner
|   `-- include-linux-export.h:error:initialization-of-const-char-from-incompatible-pointer-type-struct-module
`-- arm64-defconfig
    |-- drivers-soc-qcom-rmtfs_mem.c:error:struct-class-has-no-member-named-owner
    `-- include-linux-export.h:error:initialization-of-const-char-from-incompatible-pointer-type-struct-module
clang_recent_errors
`-- mips-maltaaprp_defconfig
    `-- arch-mips-kernel-vpe-mt.c:error:field-designator-owner-does-not-refer-to-any-field-in-type-struct-class

elapsed time: 722m

configs tested: 92
configs skipped: 3

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                     nsimosci_hs_defconfig
arc                  randconfig-r043-20230222
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                  randconfig-r046-20230222
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                       bvme6000_defconfig
m68k                                defconfig
m68k                        m5272c3_defconfig
mips                             allmodconfig
mips                             allyesconfig
mips                         db1xxx_defconfig
mips                      maltasmvp_defconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                      pasemi_defconfig
powerpc                    sam440ep_defconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
sh                               allmodconfig
sh                               j2_defconfig
sh                   sh7770_generic_defconfig
sh                          urquell_defconfig
sparc                               defconfig
sparc64                          alldefconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                               rhel-8.3

clang tested configs:
arm                          moxart_defconfig
hexagon                          alldefconfig
hexagon              randconfig-r041-20230222
hexagon              randconfig-r045-20230222
i386                              allnoconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
mips                malta_qemu_32r6_defconfig
mips                      maltaaprp_defconfig
powerpc                     ksi8560_defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                  mpc885_ads_defconfig
riscv                randconfig-r042-20230222
s390                 randconfig-r044-20230222
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
