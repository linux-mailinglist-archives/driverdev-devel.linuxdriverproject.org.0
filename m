Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4510A6C9324
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Mar 2023 10:50:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3318760A62;
	Sun, 26 Mar 2023 08:50:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3318760A62
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RQ-A6GLRww3I; Sun, 26 Mar 2023 08:50:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ED4C860806;
	Sun, 26 Mar 2023 08:50:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ED4C860806
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 387691BF405
 for <devel@linuxdriverproject.org>; Sun, 26 Mar 2023 08:50:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1F6FC60A62
 for <devel@linuxdriverproject.org>; Sun, 26 Mar 2023 08:50:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F6FC60A62
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EYLjY6dI2jfR for <devel@linuxdriverproject.org>;
 Sun, 26 Mar 2023 08:50:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8CA6B60806
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8CA6B60806
 for <devel@driverdev.osuosl.org>; Sun, 26 Mar 2023 08:50:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10660"; a="404987334"
X-IronPort-AV: E=Sophos;i="5.98,292,1673942400"; d="scan'208";a="404987334"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2023 01:49:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10660"; a="752350734"
X-IronPort-AV: E=Sophos;i="5.98,292,1673942400"; d="scan'208";a="752350734"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 26 Mar 2023 01:49:34 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pgM4D-000Gzb-2i;
 Sun, 26 Mar 2023 08:49:33 +0000
Date: Sun, 26 Mar 2023 16:48:58 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 c4ca4f5e0460a8cf9c7864f813f64726caf2bf4c
Message-ID: <642006fa.AwghL43QmYfkFPxC%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679820606; x=1711356606;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=OJr9EssrnH3HdRcljD0MP1DbbcTyBBN9+WA5BqW3Q8s=;
 b=PMHrwJkKegp5vEsosNA4V5hIUL7Xvy64DbXEvnNaEHMd+F1+HzjTMUCL
 mgI1Fh0IjMoD2CItj0Mb3PJ7ior/66fzumI34P5UQMqXdfjhfkoxMmsYw
 ao0bwZ4Mmcc/yiupzMC9mSDObVGscDB6NEUiL8obY8m5ZSyWuc+CtvbsI
 +SOQHBPpopJrIVMNe+ztGAeDu1wsR2CMo3X/JqkeGmPrk6qaFoTutrc/C
 +y/Ko7uWTOtmS6I44LwUfXfk3PhGAoUi8CJLmKUsFbNgNGNP2HaxzlDkf
 uibLBtT9cWiVwXLwRSdHQTupCaETn8uC0CvHaZVLL5pg7w4YsBPK3F09T
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PMHrwJkK
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
branch HEAD: c4ca4f5e0460a8cf9c7864f813f64726caf2bf4c  driver core: core: class_to_subsys()

elapsed time: 762m

configs tested: 96
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r003-20230326   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r012-20230326   gcc  
arc                  randconfig-r024-20230326   gcc  
arc                  randconfig-r043-20230326   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r031-20230326   gcc  
arm                  randconfig-r046-20230326   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky         buildonly-randconfig-r002-20230326   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r021-20230326   clang
hexagon              randconfig-r041-20230326   clang
hexagon              randconfig-r045-20230326   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r035-20230326   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r023-20230326   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r006-20230326   gcc  
microblaze           randconfig-r001-20230326   gcc  
microblaze           randconfig-r022-20230326   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r001-20230326   gcc  
mips                 randconfig-r033-20230326   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r025-20230326   gcc  
parisc       buildonly-randconfig-r005-20230326   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r034-20230326   clang
powerpc              randconfig-r036-20230326   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230326   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r005-20230326   clang
s390                 randconfig-r015-20230326   gcc  
s390                 randconfig-r044-20230326   gcc  
sh                               allmodconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r016-20230326   gcc  
sparc                randconfig-r032-20230326   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r003-20230326   gcc  
xtensa               randconfig-r004-20230326   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
