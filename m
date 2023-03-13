Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EEF6B81DE
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Mar 2023 20:52:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 68B7160A98;
	Mon, 13 Mar 2023 19:51:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 68B7160A98
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C6lhL0VJ6UAh; Mon, 13 Mar 2023 19:51:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0868560FA7;
	Mon, 13 Mar 2023 19:51:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0868560FA7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D43E61BF30B
 for <devel@linuxdriverproject.org>; Mon, 13 Mar 2023 19:51:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id ADC4E80AC1
 for <devel@linuxdriverproject.org>; Mon, 13 Mar 2023 19:51:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADC4E80AC1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2jkwT8GSaJPo for <devel@linuxdriverproject.org>;
 Mon, 13 Mar 2023 19:51:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74C3180AC0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 74C3180AC0
 for <devel@driverdev.osuosl.org>; Mon, 13 Mar 2023 19:51:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="402116888"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="402116888"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 12:51:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="789045486"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="789045486"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 13 Mar 2023 12:51:42 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pboCs-00064Q-0K;
 Mon, 13 Mar 2023 19:51:42 +0000
Date: Tue, 14 Mar 2023 03:51:06 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 458219ca9246076971961d695eef9eb56e05fcf7
Message-ID: <640f7eaa.vhDaijvzpKLVPbjm%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678737113; x=1710273113;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ZU3imckZrLTQzmAPulKau6Y4FfKgii7SqabfzxTwwwY=;
 b=RCoOz5c9TsQtwKwaj0y6r8xwNIYB/j1qI6CFG7lLqKIOsHPqzrNYlO21
 wXAs1tcztjjkrMz4WbNVKqLItqu5NpAbKne4Z8cHX/q2BTbb44uhQNR1n
 QBBYkpDFw40rYfH6D8lRlEZIkK26Jc6SL28zLjSjvlrOj42W7PlPy3p1h
 T7aTF4l3slg14t/5QpWtIExvv5yovJ636WF6YzAQuGEjwFD1IDuH0Gz5z
 iguPhPq0u/+8VtG+iBqqxf6m8QJn2y+eS9YCR418v8JRwm/cBrTJdO9xe
 nH1lJgtCd453eXJmRtGWhRgljUfdxmpvJISj5FAJ85J8lhz0t6k11DTxB
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RCoOz5c9
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: 458219ca9246076971961d695eef9eb56e05fcf7  Merge 6.3-rc2 into staging-next

elapsed time: 725m

configs tested: 187
configs skipped: 13

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r006-20230312   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r006-20230313   gcc  
alpha                randconfig-r013-20230312   gcc  
alpha                randconfig-r025-20230312   gcc  
alpha                randconfig-r026-20230313   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r002-20230313   gcc  
arc          buildonly-randconfig-r004-20230313   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r001-20230313   gcc  
arc                  randconfig-r026-20230312   gcc  
arc                  randconfig-r031-20230312   gcc  
arc                  randconfig-r034-20230312   gcc  
arc                  randconfig-r043-20230312   gcc  
arc                  randconfig-r043-20230313   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r004-20230312   gcc  
arm                  randconfig-r005-20230312   gcc  
arm                  randconfig-r014-20230312   clang
arm                  randconfig-r014-20230313   gcc  
arm                  randconfig-r021-20230312   clang
arm                  randconfig-r046-20230312   clang
arm                  randconfig-r046-20230313   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230312   clang
arm64                randconfig-r003-20230312   clang
arm64                randconfig-r012-20230313   clang
arm64                randconfig-r013-20230312   gcc  
arm64                randconfig-r016-20230313   clang
arm64                randconfig-r034-20230313   gcc  
csky         buildonly-randconfig-r003-20230312   gcc  
csky         buildonly-randconfig-r004-20230312   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230313   gcc  
csky                 randconfig-r015-20230312   gcc  
csky                 randconfig-r026-20230312   gcc  
csky                 randconfig-r031-20230313   gcc  
csky                 randconfig-r035-20230312   gcc  
hexagon              randconfig-r002-20230312   clang
hexagon              randconfig-r003-20230313   clang
hexagon              randconfig-r012-20230313   clang
hexagon              randconfig-r013-20230313   clang
hexagon              randconfig-r016-20230313   clang
hexagon              randconfig-r033-20230312   clang
hexagon              randconfig-r035-20230313   clang
hexagon              randconfig-r041-20230312   clang
hexagon              randconfig-r041-20230313   clang
hexagon              randconfig-r045-20230312   clang
hexagon              randconfig-r045-20230313   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r003-20230313   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230313   gcc  
i386                 randconfig-a002-20230313   gcc  
i386                 randconfig-a003-20230313   gcc  
i386                 randconfig-a004-20230313   gcc  
i386                 randconfig-a005-20230313   gcc  
i386                 randconfig-a006-20230313   gcc  
i386                 randconfig-a011-20230313   clang
i386                 randconfig-a012-20230313   clang
i386                 randconfig-a013-20230313   clang
i386                 randconfig-a014-20230313   clang
i386                 randconfig-a015-20230313   clang
i386                 randconfig-a016-20230313   clang
i386                 randconfig-r002-20230313   gcc  
i386                 randconfig-r003-20230313   gcc  
i386                 randconfig-r005-20230313   gcc  
i386                 randconfig-r024-20230313   clang
i386                 randconfig-r026-20230313   clang
i386                 randconfig-r032-20230313   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r006-20230312   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r001-20230313   gcc  
ia64                 randconfig-r006-20230313   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r021-20230312   gcc  
loongarch            randconfig-r036-20230313   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230312   gcc  
m68k                 randconfig-r004-20230312   gcc  
m68k                 randconfig-r004-20230313   gcc  
m68k                 randconfig-r006-20230312   gcc  
m68k                 randconfig-r025-20230313   gcc  
microblaze   buildonly-randconfig-r002-20230312   gcc  
microblaze           randconfig-r006-20230312   gcc  
microblaze           randconfig-r012-20230312   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r001-20230312   gcc  
mips         buildonly-randconfig-r004-20230312   gcc  
mips                 randconfig-r011-20230313   gcc  
mips                 randconfig-r021-20230313   gcc  
mips                 randconfig-r022-20230312   clang
mips                 randconfig-r024-20230312   clang
mips                 randconfig-r031-20230313   clang
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230312   gcc  
nios2                randconfig-r012-20230312   gcc  
nios2                randconfig-r014-20230312   gcc  
nios2                randconfig-r023-20230313   gcc  
nios2                randconfig-r036-20230313   gcc  
openrisc     buildonly-randconfig-r003-20230313   gcc  
openrisc     buildonly-randconfig-r006-20230313   gcc  
openrisc             randconfig-r023-20230312   gcc  
openrisc             randconfig-r032-20230312   gcc  
openrisc             randconfig-r036-20230312   gcc  
parisc       buildonly-randconfig-r005-20230313   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r005-20230312   gcc  
parisc               randconfig-r015-20230313   gcc  
parisc               randconfig-r022-20230312   gcc  
parisc               randconfig-r033-20230313   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r005-20230312   gcc  
powerpc              randconfig-r016-20230312   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r001-20230312   gcc  
riscv        buildonly-randconfig-r005-20230313   clang
riscv                               defconfig   gcc  
riscv                randconfig-r011-20230313   clang
riscv                randconfig-r042-20230312   gcc  
riscv                randconfig-r042-20230313   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r006-20230313   clang
s390                                defconfig   gcc  
s390                 randconfig-r013-20230313   clang
s390                 randconfig-r025-20230312   gcc  
s390                 randconfig-r044-20230312   gcc  
s390                 randconfig-r044-20230313   clang
sh                               allmodconfig   gcc  
sh           buildonly-randconfig-r005-20230312   gcc  
sh                   randconfig-r021-20230313   gcc  
sparc        buildonly-randconfig-r001-20230313   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r014-20230313   gcc  
sparc                randconfig-r024-20230312   gcc  
sparc                randconfig-r033-20230313   gcc  
sparc                randconfig-r035-20230313   gcc  
sparc64              randconfig-r001-20230312   gcc  
sparc64              randconfig-r023-20230313   gcc  
sparc64              randconfig-r025-20230313   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230313   gcc  
x86_64               randconfig-a002-20230313   gcc  
x86_64               randconfig-a003-20230313   gcc  
x86_64               randconfig-a004-20230313   gcc  
x86_64               randconfig-a005-20230313   gcc  
x86_64               randconfig-a006-20230313   gcc  
x86_64               randconfig-a011-20230313   clang
x86_64                        randconfig-a011   gcc  
x86_64               randconfig-a012-20230313   clang
x86_64                        randconfig-a012   clang
x86_64               randconfig-a013-20230313   clang
x86_64                        randconfig-a013   gcc  
x86_64               randconfig-a014-20230313   clang
x86_64                        randconfig-a014   clang
x86_64               randconfig-a015-20230313   clang
x86_64                        randconfig-a015   gcc  
x86_64               randconfig-a016-20230313   clang
x86_64                        randconfig-a016   clang
x86_64               randconfig-r022-20230313   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r002-20230313   gcc  
xtensa               randconfig-r005-20230313   gcc  
xtensa               randconfig-r015-20230312   gcc  
xtensa               randconfig-r024-20230313   gcc  
xtensa               randconfig-r032-20230313   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
