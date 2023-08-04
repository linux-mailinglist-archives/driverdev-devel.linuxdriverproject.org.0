Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A4976FA9B
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Aug 2023 09:02:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F3CC40436;
	Fri,  4 Aug 2023 07:02:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F3CC40436
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XjwA12Qe3nra; Fri,  4 Aug 2023 07:02:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 16B8F40151;
	Fri,  4 Aug 2023 07:02:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16B8F40151
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 322331BF388
 for <devel@linuxdriverproject.org>; Fri,  4 Aug 2023 07:02:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9ED5141C52
 for <devel@linuxdriverproject.org>; Fri,  4 Aug 2023 07:02:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9ED5141C52
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wAlnhIcRQ9XT for <devel@linuxdriverproject.org>;
 Fri,  4 Aug 2023 07:02:10 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 968A340436
 for <devel@driverdev.osuosl.org>; Fri,  4 Aug 2023 07:02:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 968A340436
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="350387360"
X-IronPort-AV: E=Sophos;i="6.01,254,1684825200"; d="scan'208";a="350387360"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2023 00:02:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10791"; a="706859953"
X-IronPort-AV: E=Sophos;i="6.01,254,1684825200"; d="scan'208";a="706859953"
Received: from lkp-server01.sh.intel.com (HELO d1ccc7e87e8f) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 04 Aug 2023 00:02:08 -0700
Received: from kbuild by d1ccc7e87e8f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qRop5-0002hP-0s;
 Fri, 04 Aug 2023 07:02:07 +0000
Date: Fri, 04 Aug 2023 15:01:53 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 be8a40fb9269af6cb3190b0599abdacf9dbf68b9
Message-ID: <202308041551.7TSi609X-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691132530; x=1722668530;
 h=date:from:to:cc:subject:message-id;
 bh=itpsm1vx/RfDJDpDAop8SpWWXTjJkEH6wk1UnCu8/to=;
 b=bmGxqBP3BSmS8fMxyd5PojyLQRNuTWhEQWg3BpVugaLyMCEv4MuD8ALB
 T1urMD9p72+p/9pevIZjJwdwBZMFzk0+QzcfuOQE6D1EDi6skl4nbhiiN
 /hlJy5JFCVfwjaYEYLREa+cH2i96bTRY/JIc261G+RQzBRVQHlppQCTPd
 7p1S34xOpGrrTxWxzGAA3F7yoyVm3QzqFmGjWXr0bD5sObvlNQ5jfPNFR
 f74JfVN+r69DalOGzws+xymqfAodBhXqh+o/OtAy98RDhCDtSyxJvhVUN
 nqPjqoYktWufB9H4cyW4MKTtzwzqka0sF5VBV2v6u0l6Ksh0epj8pQYsN
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bmGxqBP3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: be8a40fb9269af6cb3190b0599abdacf9dbf68b9  driver core: remove devm_device_add_groups()

elapsed time: 725m

configs tested: 116
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230731   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r003-20230731   gcc  
arc                  randconfig-r043-20230731   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                       imx_v6_v7_defconfig   gcc  
arm                  randconfig-r004-20230731   clang
arm                  randconfig-r046-20230731   gcc  
arm                        shmobile_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r012-20230801   gcc  
hexagon              randconfig-r016-20230801   clang
hexagon              randconfig-r021-20230731   clang
hexagon              randconfig-r041-20230731   clang
hexagon              randconfig-r045-20230731   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230731   gcc  
i386         buildonly-randconfig-r005-20230731   gcc  
i386         buildonly-randconfig-r006-20230731   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230731   gcc  
i386                 randconfig-i002-20230731   gcc  
i386                 randconfig-i003-20230731   gcc  
i386                 randconfig-i004-20230731   gcc  
i386                 randconfig-i005-20230731   gcc  
i386                 randconfig-i006-20230731   gcc  
i386                 randconfig-i011-20230731   clang
i386                 randconfig-i012-20230731   clang
i386                 randconfig-i013-20230731   clang
i386                 randconfig-i014-20230731   clang
i386                 randconfig-i015-20230731   clang
i386                 randconfig-i016-20230731   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                        m5307c3_defconfig   gcc  
m68k                 randconfig-r033-20230731   gcc  
microblaze           randconfig-r013-20230801   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r002-20230731   clang
mips                 randconfig-r011-20230801   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r032-20230731   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r023-20230731   gcc  
parisc               randconfig-r024-20230731   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                      katmai_defconfig   clang
powerpc                      ppc44x_defconfig   clang
powerpc              randconfig-r001-20230731   gcc  
powerpc              randconfig-r014-20230801   clang
powerpc                    sam440ep_defconfig   gcc  
powerpc                      tqm8xx_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r034-20230731   gcc  
riscv                randconfig-r042-20230731   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r015-20230801   clang
s390                 randconfig-r044-20230731   clang
sh                               allmodconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r006-20230731   gcc  
sparc64              randconfig-r035-20230731   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r031-20230731   clang
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230731   gcc  
x86_64       buildonly-randconfig-r002-20230731   gcc  
x86_64       buildonly-randconfig-r003-20230731   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230731   clang
x86_64               randconfig-x002-20230731   clang
x86_64               randconfig-x003-20230731   clang
x86_64               randconfig-x004-20230731   clang
x86_64               randconfig-x005-20230731   clang
x86_64               randconfig-x006-20230731   clang
x86_64               randconfig-x011-20230731   gcc  
x86_64               randconfig-x012-20230731   gcc  
x86_64               randconfig-x013-20230731   gcc  
x86_64               randconfig-x014-20230731   gcc  
x86_64               randconfig-x015-20230731   gcc  
x86_64               randconfig-x016-20230731   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                              defconfig   gcc  
xtensa               randconfig-r022-20230731   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
