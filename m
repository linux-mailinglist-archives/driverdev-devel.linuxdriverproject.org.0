Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C136AD31C
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Mar 2023 01:03:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44D7860F56;
	Tue,  7 Mar 2023 00:03:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44D7860F56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QyFBAJHaTkQg; Tue,  7 Mar 2023 00:03:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DECA261001;
	Tue,  7 Mar 2023 00:03:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DECA261001
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 030F91BF947
 for <devel@linuxdriverproject.org>; Tue,  7 Mar 2023 00:03:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D113040650
 for <devel@linuxdriverproject.org>; Tue,  7 Mar 2023 00:03:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D113040650
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4TCa4slEJDoj for <devel@linuxdriverproject.org>;
 Tue,  7 Mar 2023 00:03:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9D19740283
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D19740283
 for <devel@driverdev.osuosl.org>; Tue,  7 Mar 2023 00:03:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="334428702"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="334428702"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 16:03:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="706615585"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="706615585"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 06 Mar 2023 16:03:39 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pZKnr-0000k5-0X;
 Tue, 07 Mar 2023 00:03:39 +0000
Date: Tue, 07 Mar 2023 08:03:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 e4031aab512cdba785c49fe8dc125b5fb2adaf5d
Message-ID: <64067f43.1+HkNfxuoKdOrTpP%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678147423; x=1709683423;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=aTReSGpCirawAJneycNcVUnUHLiL5Snpe4WRARMFvkY=;
 b=Q4XiDnFbUZawDrl5Gts/DPi+fVdzObaA1zxe1wInDFLELy8nwht7Ew5s
 8i2N7vUG5xkXPE6NW+hMrVYJ+h0wg4QyJxxsc9SWPw9vLqfvKIt9vOTca
 6S31OGKAM2cGSO88+A8coYMw9Ism4Tb4MuzarmxnN/wgCnVPw3XrFWH8u
 loFLOvpMSNqA6hgEW9W7b+KzFLaY85+3JzzOmm1g+8q3rjf7M8S7XkVFW
 8zorojNjOGGsNcErUx+vG+L+3tRft2wlgGWK0AH3B7NWM/QltoaBrTkZH
 NiPuSTSkPkOcqUF96XR3W+aUREpgb15mBM+z18ZKYDd7UJpIzM/4kADG4
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q4XiDnFb
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
branch HEAD: e4031aab512cdba785c49fe8dc125b5fb2adaf5d  FIXME: driver core: platform: make platform_bus_type constant

elapsed time: 1032m

configs tested: 132
configs skipped: 10

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r001-20230305   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r015-20230306   gcc  
alpha                randconfig-r023-20230305   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r012-20230306   gcc  
arc                  randconfig-r022-20230305   gcc  
arc                  randconfig-r043-20230305   gcc  
arc                  randconfig-r043-20230306   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r025-20230305   clang
arm                  randconfig-r035-20230305   gcc  
arm                  randconfig-r036-20230305   gcc  
arm                  randconfig-r046-20230305   clang
arm                  randconfig-r046-20230306   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r002-20230305   clang
arm64                               defconfig   gcc  
arm64                randconfig-r023-20230306   clang
csky                                defconfig   gcc  
csky                 randconfig-r011-20230305   gcc  
csky                 randconfig-r016-20230305   gcc  
csky                 randconfig-r026-20230305   gcc  
hexagon              randconfig-r003-20230305   clang
hexagon              randconfig-r031-20230306   clang
hexagon              randconfig-r041-20230305   clang
hexagon              randconfig-r041-20230306   clang
hexagon              randconfig-r045-20230305   clang
hexagon              randconfig-r045-20230306   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230306   gcc  
i386                 randconfig-a002-20230306   gcc  
i386                 randconfig-a003-20230306   gcc  
i386                 randconfig-a004-20230306   gcc  
i386                 randconfig-a005-20230306   gcc  
i386                 randconfig-a006-20230306   gcc  
i386                 randconfig-a011-20230306   clang
i386                 randconfig-a012-20230306   clang
i386                 randconfig-a013-20230306   clang
i386                 randconfig-a014-20230306   clang
i386                 randconfig-a015-20230306   clang
i386                 randconfig-a016-20230306   clang
i386                 randconfig-r003-20230306   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r003-20230306   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r004-20230305   gcc  
ia64                 randconfig-r033-20230306   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r005-20230306   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r016-20230306   gcc  
loongarch            randconfig-r035-20230306   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230306   gcc  
m68k                 randconfig-r005-20230305   gcc  
m68k                 randconfig-r006-20230305   gcc  
m68k                 randconfig-r034-20230306   gcc  
microblaze   buildonly-randconfig-r005-20230305   gcc  
microblaze   buildonly-randconfig-r006-20230306   gcc  
microblaze           randconfig-r033-20230305   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r005-20230306   clang
mips                 randconfig-r014-20230305   clang
nios2        buildonly-randconfig-r003-20230305   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r021-20230305   gcc  
openrisc             randconfig-r032-20230306   gcc  
parisc       buildonly-randconfig-r006-20230305   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r011-20230306   gcc  
parisc               randconfig-r021-20230306   gcc  
parisc               randconfig-r032-20230305   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r002-20230306   clang
powerpc              randconfig-r004-20230306   gcc  
powerpc              randconfig-r015-20230305   gcc  
powerpc              randconfig-r024-20230305   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r012-20230305   gcc  
riscv                randconfig-r013-20230305   gcc  
riscv                randconfig-r013-20230306   clang
riscv                randconfig-r042-20230305   gcc  
riscv                randconfig-r042-20230306   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r014-20230306   clang
s390                 randconfig-r034-20230305   clang
s390                 randconfig-r044-20230305   gcc  
s390                 randconfig-r044-20230306   clang
sh                               allmodconfig   gcc  
sparc        buildonly-randconfig-r004-20230306   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r001-20230306   gcc  
sparc64              randconfig-r026-20230306   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230306   gcc  
x86_64               randconfig-a002-20230306   gcc  
x86_64               randconfig-a003-20230306   gcc  
x86_64               randconfig-a004-20230306   gcc  
x86_64               randconfig-a005-20230306   gcc  
x86_64               randconfig-a006-20230306   gcc  
x86_64               randconfig-a011-20230306   clang
x86_64               randconfig-a012-20230306   clang
x86_64               randconfig-a013-20230306   clang
x86_64               randconfig-a014-20230306   clang
x86_64               randconfig-a015-20230306   clang
x86_64               randconfig-a016-20230306   clang
x86_64               randconfig-r006-20230306   gcc  
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r004-20230305   gcc  
xtensa               randconfig-r036-20230306   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
