Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D07BA6C90E2
	for <lists+driverdev-devel@lfdr.de>; Sat, 25 Mar 2023 22:06:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E25F581E56;
	Sat, 25 Mar 2023 21:06:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E25F581E56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H9ILOu9sOZ0y; Sat, 25 Mar 2023 21:06:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BDAC581DED;
	Sat, 25 Mar 2023 21:06:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BDAC581DED
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2802F1BF39A
 for <devel@linuxdriverproject.org>; Sat, 25 Mar 2023 21:06:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 01B9C81E56
 for <devel@linuxdriverproject.org>; Sat, 25 Mar 2023 21:06:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 01B9C81E56
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lGZj7C57u8eG for <devel@linuxdriverproject.org>;
 Sat, 25 Mar 2023 21:06:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 14A7181DED
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 14A7181DED
 for <devel@driverdev.osuosl.org>; Sat, 25 Mar 2023 21:06:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10660"; a="367748928"
X-IronPort-AV: E=Sophos;i="5.98,291,1673942400"; d="scan'208";a="367748928"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2023 14:06:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10660"; a="772246770"
X-IronPort-AV: E=Sophos;i="5.98,291,1673942400"; d="scan'208";a="772246770"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Mar 2023 14:06:19 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pgB5e-000GfH-2Q;
 Sat, 25 Mar 2023 21:06:18 +0000
Date: Sun, 26 Mar 2023 05:06:05 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 009455205e68ef017a429dc818b92c4a84b867c4
Message-ID: <641f623d.6+DjmxkJi8P+Eecw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679778381; x=1711314381;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=dtesF9m1m8CigJNc5JnG4b++KZvh4czeZbW+6IQnXCs=;
 b=cfxUkSQ/KCPonHkddFp18nKtKagFniwjkukxV36fyqFe5lW79oJhRv1P
 cFMAR5SuPhLezxVZ/9BqeFn2c4Fq3Liz4V5sBDzsS7PJD4assWAjpmnZ6
 G2m0WonWEXAr8FePPyBCkfxSTwsgyuEaRPWCfg41WGiwWvxMnx2XaWDln
 KXX3aoIn0cxe9sk1QkNNI46TbYe7/BwJnJXNWcesdn2Tdo4xqTufs/+vs
 1iOEoE6MMESBvfunD1L95cFEyvEtp5xgnm6mpbXhoaflolpCTeKJLwCOA
 dkHX7ekRJh5uvDb5mtpmhjJDBXcbBADWjXtyvYqCy0rPfutnMeR5XNHGB
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cfxUkSQ/
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
branch HEAD: 009455205e68ef017a429dc818b92c4a84b867c4  driver core: bus: move documentation for lock_key to proper location.

elapsed time: 721m

configs tested: 96
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230322   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                       aspeed_g4_defconfig   clang
arm                                 defconfig   gcc  
arm                  randconfig-r014-20230323   gcc  
arm                        spear3xx_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r026-20230324   gcc  
arm64                randconfig-r035-20230324   clang
csky                                defconfig   gcc  
hexagon              randconfig-r004-20230322   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a004   clang
i386                          randconfig-a006   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a014   gcc  
i386                          randconfig-a016   gcc  
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230322   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r003-20230322   gcc  
m68k                                defconfig   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r005-20230322   gcc  
mips                        omega2p_defconfig   clang
mips                 randconfig-r012-20230323   gcc  
nios2        buildonly-randconfig-r002-20230322   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r016-20230323   gcc  
openrisc             randconfig-r014-20230322   gcc  
openrisc             randconfig-r021-20230324   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r013-20230323   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                        fsp2_defconfig   clang
powerpc                   lite5200b_defconfig   clang
powerpc                 mpc832x_mds_defconfig   clang
powerpc                      obs600_defconfig   clang
powerpc              randconfig-c003-20230322   gcc  
powerpc              randconfig-r013-20230322   gcc  
powerpc              randconfig-r015-20230322   gcc  
powerpc              randconfig-r034-20230324   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r024-20230324   gcc  
riscv                randconfig-r042-20230322   gcc  
riscv                          rv32_defconfig   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230322   clang
s390                 randconfig-r003-20230322   clang
s390                 randconfig-r044-20230322   gcc  
sh                               allmodconfig   gcc  
sh                         microdev_defconfig   gcc  
sh                        sh7785lcr_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r016-20230322   gcc  
sparc64              randconfig-r022-20230324   gcc  
sparc64              randconfig-r025-20230324   gcc  
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
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a016   clang
x86_64                        randconfig-k001   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r012-20230322   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
