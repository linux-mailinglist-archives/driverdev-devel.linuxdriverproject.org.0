Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CCD6AA7EA
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Mar 2023 05:02:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A431F401CA;
	Sat,  4 Mar 2023 04:02:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A431F401CA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b_zDmHL_EpoC; Sat,  4 Mar 2023 04:02:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E5EB400A6;
	Sat,  4 Mar 2023 04:02:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E5EB400A6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 029F01BF852
 for <devel@linuxdriverproject.org>; Sat,  4 Mar 2023 04:02:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C4E7F41D55
 for <devel@linuxdriverproject.org>; Sat,  4 Mar 2023 04:02:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4E7F41D55
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cb6XqZ_-v3rS for <devel@linuxdriverproject.org>;
 Sat,  4 Mar 2023 04:02:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83ABE41D48
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 83ABE41D48
 for <devel@driverdev.osuosl.org>; Sat,  4 Mar 2023 04:02:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="333940359"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400"; d="scan'208";a="333940359"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2023 20:02:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="675585087"
X-IronPort-AV: E=Sophos;i="5.98,232,1673942400"; d="scan'208";a="675585087"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 03 Mar 2023 20:02:33 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pYJ6P-0001qU-0W;
 Sat, 04 Mar 2023 04:02:33 +0000
Date: Sat, 04 Mar 2023 12:02:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:sysfs_deprecation_removal] BUILD SUCCESS
 672a68efe88065f2eef4d01352ca36a1608a15d5
Message-ID: <6402c2c8.WztIzCUl/Yo/GTLb%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677902556; x=1709438556;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=+AIt3H7rDAadqSH6J3TsXkw1jLuvM5dDG7OWpLf47JM=;
 b=Vek+wj0UvSynbB6KNirko1ipWRY9nG9OHeAyOoTgUVp9OnQpMClvwd/P
 Xvb4HKlp9gICZMOMPRaUMZqRCZDrDKdrvqwUcasfaT/VZ68eKSGFHLdxr
 iMZJoJ/8BLcpvx3r11ow8o/1hH+4JGYs/qh4sGD489vEuh1jEQYRIFQrz
 Mz9XxsW/Lydp/24uKjctnGvOV/xnxoFfG0OXc6MnVf/UP51d4iQQBaG5u
 g0TBw/szy4Fy2c4dFuTCywwhcFsggFTUTE15FW/VloKWdnc9FV+fJr9Ff
 KCHSuygMlV/dKMgYbKoUw8FvcJR2pm5NnEgJ/mePEwRM6wFThd6RqSOUC
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vek+wj0U
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git sysfs_deprecation_removal
branch HEAD: 672a68efe88065f2eef4d01352ca36a1608a15d5  driver core: remove CONFIG_SYSFS_DEPRECATED and CONFIG_SYSFS_DEPRECATED_V2

elapsed time: 725m

configs tested: 113
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230302   gcc  
alpha                randconfig-r015-20230302   gcc  
alpha                randconfig-r015-20230303   gcc  
alpha                randconfig-r021-20230302   gcc  
alpha                randconfig-r023-20230302   gcc  
alpha                randconfig-r034-20230302   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230302   gcc  
arc                  randconfig-r043-20230303   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r004-20230302   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r013-20230303   clang
arm                  randconfig-r033-20230302   clang
arm                  randconfig-r036-20230302   clang
arm                  randconfig-r046-20230302   gcc  
arm                  randconfig-r046-20230303   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r032-20230302   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r014-20230302   gcc  
csky                 randconfig-r022-20230302   gcc  
csky                 randconfig-r024-20230302   gcc  
hexagon              randconfig-r025-20230302   clang
hexagon              randconfig-r035-20230302   clang
hexagon              randconfig-r041-20230302   clang
hexagon              randconfig-r041-20230303   clang
hexagon              randconfig-r045-20230302   clang
hexagon              randconfig-r045-20230303   clang
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
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230302   gcc  
loongarch            randconfig-r016-20230303   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r011-20230303   gcc  
m68k                 randconfig-r016-20230302   gcc  
microblaze   buildonly-randconfig-r001-20230302   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r005-20230302   clang
nios2                               defconfig   gcc  
openrisc             randconfig-r012-20230302   gcc  
openrisc             randconfig-r013-20230302   gcc  
openrisc             randconfig-r014-20230303   gcc  
parisc       buildonly-randconfig-r003-20230302   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r031-20230302   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r001-20230302   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230302   clang
riscv                randconfig-r042-20230303   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230302   clang
s390                                defconfig   gcc  
s390                 randconfig-r026-20230302   clang
s390                 randconfig-r044-20230302   clang
s390                 randconfig-r044-20230303   gcc  
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r006-20230302   gcc  
sh                   randconfig-r006-20230302   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r011-20230302   gcc  
sparc64              randconfig-r004-20230302   gcc  
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

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
