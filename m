Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 567CA6AADC6
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Mar 2023 02:57:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 179E781EE8;
	Sun,  5 Mar 2023 01:57:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 179E781EE8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q2kap7fL-83R; Sun,  5 Mar 2023 01:57:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C4F9C81EB0;
	Sun,  5 Mar 2023 01:57:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C4F9C81EB0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AE39F1BF3DB
 for <devel@linuxdriverproject.org>; Sun,  5 Mar 2023 01:57:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8865541583
 for <devel@linuxdriverproject.org>; Sun,  5 Mar 2023 01:57:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8865541583
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zkMp2e1wX_QN for <devel@linuxdriverproject.org>;
 Sun,  5 Mar 2023 01:57:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B9544157D
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2B9544157D
 for <devel@driverdev.osuosl.org>; Sun,  5 Mar 2023 01:57:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10639"; a="336850188"
X-IronPort-AV: E=Sophos;i="5.98,234,1673942400"; d="scan'208";a="336850188"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2023 17:57:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10639"; a="1004999323"
X-IronPort-AV: E=Sophos;i="5.98,234,1673942400"; d="scan'208";a="1004999323"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 04 Mar 2023 17:57:12 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pYdcd-0002UX-2W;
 Sun, 05 Mar 2023 01:57:11 +0000
Date: Sun, 05 Mar 2023 09:57:04 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 a6dabb99ad462cfee67a9807ae804dcb20d7bb28
Message-ID: <6403f6f0.HYhrWNW93qG5QGXD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677981435; x=1709517435;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=LajMNlzXhM52cxlH2ZlLAKImQeQQVkj+6xhjK1WYV0w=;
 b=XyVvBKgEn8+FTnw+M92k8HLPlr+9L/ksnjAD20/SiT7BUrP75RAo9DeE
 nu/4Cmsi3gOlW//l46JKdmqTXu/AZswD4/wsiShW0ubzQqN+Jjs2uUVCr
 /3Vu0Z+sWlnk06b8/Yi9d7gwwTV0dkepBYec8F3t+655ry08BFCJwtmz1
 jQn5aqT9VyYR7H8RvziJW8zYGc2iaZQOmPwGaufoH+6rlzSS12ebr6MRA
 0w+phzMjcaz2eJtrtqqMiIWb56kxrT3428IEpmJkxxa4c/dn38QyF6k5L
 wylrvRjV88Y3mS1OsNd73CfDMR9Rev985KODG4nogntRBJ038GAjP+chd
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XyVvBKgE
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
branch HEAD: a6dabb99ad462cfee67a9807ae804dcb20d7bb28  readfile.2: new page describing readfile(2)

elapsed time: 756m

configs tested: 116
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r006-20230302   gcc  
alpha                randconfig-r021-20230304   gcc  
alpha                randconfig-r025-20230302   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r014-20230302   gcc  
arc                  randconfig-r026-20230302   gcc  
arc                  randconfig-r034-20230303   gcc  
arc                  randconfig-r043-20230302   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r046-20230302   gcc  
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230302   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230302   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r022-20230304   gcc  
hexagon      buildonly-randconfig-r005-20230302   clang
hexagon              randconfig-r036-20230302   clang
hexagon              randconfig-r041-20230302   clang
hexagon              randconfig-r045-20230302   clang
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
ia64                 randconfig-r013-20230302   gcc  
ia64                 randconfig-r024-20230304   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r012-20230302   gcc  
loongarch            randconfig-r023-20230302   gcc  
loongarch            randconfig-r023-20230304   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230304   gcc  
m68k                 randconfig-r026-20230304   gcc  
microblaze           randconfig-r011-20230302   gcc  
microblaze           randconfig-r015-20230302   gcc  
microblaze           randconfig-r022-20230302   gcc  
microblaze           randconfig-r035-20230303   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r003-20230302   clang
mips                 randconfig-r003-20230304   clang
mips                 randconfig-r033-20230303   gcc  
mips                 randconfig-r036-20230303   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r006-20230304   gcc  
openrisc             randconfig-r004-20230302   gcc  
openrisc             randconfig-r033-20230302   gcc  
openrisc             randconfig-r034-20230302   gcc  
parisc       buildonly-randconfig-r003-20230302   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r005-20230302   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r002-20230302   clang
powerpc              randconfig-r002-20230304   gcc  
powerpc              randconfig-r004-20230304   gcc  
powerpc              randconfig-r031-20230303   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r006-20230302   clang
riscv                               defconfig   gcc  
riscv                randconfig-r032-20230303   clang
riscv                randconfig-r042-20230302   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230302   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r002-20230302   gcc  
sh                   randconfig-r021-20230302   gcc  
sh                   randconfig-r025-20230304   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r005-20230304   gcc  
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
xtensa               randconfig-r031-20230302   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
