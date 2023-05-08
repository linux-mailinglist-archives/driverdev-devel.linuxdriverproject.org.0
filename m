Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C77F76FB429
	for <lists+driverdev-devel@lfdr.de>; Mon,  8 May 2023 17:47:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3493C84400;
	Mon,  8 May 2023 15:47:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3493C84400
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t05_atgtMkG9; Mon,  8 May 2023 15:47:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E4F6784406;
	Mon,  8 May 2023 15:47:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E4F6784406
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EE7561BF360
 for <devel@linuxdriverproject.org>; Mon,  8 May 2023 15:46:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D4F98843FF
 for <devel@linuxdriverproject.org>; Mon,  8 May 2023 15:46:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4F98843FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ym-l8euzPk8u for <devel@linuxdriverproject.org>;
 Mon,  8 May 2023 15:46:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA196843FE
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DA196843FE
 for <devel@driverdev.osuosl.org>; Mon,  8 May 2023 15:46:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="347148632"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="347148632"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2023 08:46:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10704"; a="872846014"
X-IronPort-AV: E=Sophos;i="5.99,259,1677571200"; d="scan'208";a="872846014"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 08 May 2023 08:46:35 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pw34M-0001I1-2s;
 Mon, 08 May 2023 15:46:34 +0000
Date: Mon, 08 May 2023 23:45:51 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 d664fa0097d6ec61596af0e328aadabc64b2cf18
Message-ID: <20230508154551.xxyhQ%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683560816; x=1715096816;
 h=date:from:to:cc:subject:message-id;
 bh=V+kb/t2DbBSFxKHR5cjJWHJOD3bUaJ9xkndhiwMdW7E=;
 b=dDyYnltixB7Rw83q8dmr83hm/eCx5Rw2j8ijEGm5A7ReoE2ivcP1Mlvo
 hUj8oOd4HEe2LGiXu9I3nA0ZSkpREY11orXQJofodi5lpM5B85j1kxKBT
 yzhWZegBSkyKgnsmlcQZHwQ4nQO7TR/B70GW6NTiYURN2mH5Tzdd9+yns
 LKKAqhhFS6dTbIxWLZkk5HTZvbfVFYFRfzcCOe+JRg+eMOZ0NnQZU9+d3
 RjVg6eQJAOgSRH9ZYtiJBfX8LHV30P44LeJTJoGkvtmw0woXgxjnR8BQU
 tblyvLlhG8b02V3zUXNx0ViFcHZLJ41HctARjBveYci+D0OgDYtJoCFm+
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dDyYnlti
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
branch HEAD: d664fa0097d6ec61596af0e328aadabc64b2cf18  readfile.2: new page describing readfile(2)

elapsed time: 726m

configs tested: 130
configs skipped: 6

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r006-20230507   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r016-20230507   gcc  
alpha                randconfig-r016-20230508   gcc  
alpha                randconfig-r035-20230507   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230507   gcc  
arc                  randconfig-r043-20230508   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r004-20230508   gcc  
arm                  randconfig-r046-20230507   gcc  
arm                  randconfig-r046-20230508   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r001-20230507   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r024-20230507   clang
arm64                randconfig-r033-20230507   gcc  
csky         buildonly-randconfig-r005-20230507   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r005-20230508   clang
hexagon              randconfig-r013-20230507   clang
hexagon              randconfig-r015-20230508   clang
hexagon              randconfig-r022-20230508   clang
hexagon              randconfig-r041-20230507   clang
hexagon              randconfig-r041-20230508   clang
hexagon              randconfig-r045-20230507   clang
hexagon              randconfig-r045-20230508   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230508   clang
i386                 randconfig-a002-20230508   clang
i386                 randconfig-a003-20230508   clang
i386                 randconfig-a004-20230508   clang
i386                 randconfig-a005-20230508   clang
i386                 randconfig-a006-20230508   clang
i386                 randconfig-a011-20230508   gcc  
i386                 randconfig-a012-20230508   gcc  
i386                 randconfig-a013-20230508   gcc  
i386                 randconfig-a014-20230508   gcc  
i386                 randconfig-a015-20230508   gcc  
i386                 randconfig-a016-20230508   gcc  
i386                 randconfig-r011-20230508   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r002-20230507   gcc  
ia64                 randconfig-r025-20230508   gcc  
ia64                 randconfig-r026-20230507   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r003-20230507   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r003-20230507   gcc  
loongarch            randconfig-r013-20230508   gcc  
loongarch            randconfig-r014-20230508   gcc  
loongarch            randconfig-r031-20230508   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r002-20230507   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r001-20230507   gcc  
microblaze           randconfig-r021-20230507   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r011-20230507   gcc  
nios2                randconfig-r012-20230507   gcc  
nios2                randconfig-r032-20230507   gcc  
openrisc             randconfig-r025-20230507   gcc  
openrisc             randconfig-r034-20230508   gcc  
parisc       buildonly-randconfig-r004-20230507   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r002-20230508   clang
powerpc              randconfig-r033-20230508   clang
powerpc              randconfig-r036-20230507   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230507   clang
riscv                randconfig-r042-20230508   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230508   clang
s390                 randconfig-r006-20230508   clang
s390                 randconfig-r026-20230508   gcc  
s390                 randconfig-r036-20230508   clang
s390                 randconfig-r044-20230507   clang
s390                 randconfig-r044-20230508   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r004-20230507   gcc  
sh                   randconfig-r012-20230508   gcc  
sh                   randconfig-r014-20230507   gcc  
sh                   randconfig-r034-20230507   gcc  
sh                   randconfig-r035-20230508   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r015-20230507   gcc  
sparc64              randconfig-r022-20230507   gcc  
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
x86_64               randconfig-r021-20230508   gcc  
x86_64               randconfig-r023-20230508   gcc  
x86_64               randconfig-r024-20230508   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r005-20230507   gcc  
xtensa               randconfig-r006-20230507   gcc  
xtensa               randconfig-r032-20230508   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
