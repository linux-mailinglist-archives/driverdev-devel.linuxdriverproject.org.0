Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 596496F1DDB
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Apr 2023 20:13:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9E589821C8;
	Fri, 28 Apr 2023 18:13:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9E589821C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id as1vclXGBGtZ; Fri, 28 Apr 2023 18:13:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5625981FA7;
	Fri, 28 Apr 2023 18:13:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5625981FA7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6D9031BF578
 for <devel@linuxdriverproject.org>; Fri, 28 Apr 2023 18:13:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F374042A74
 for <devel@linuxdriverproject.org>; Fri, 28 Apr 2023 18:13:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F374042A74
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n2KhZPGHfsqb for <devel@linuxdriverproject.org>;
 Fri, 28 Apr 2023 18:13:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CF77442A7B
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF77442A7B
 for <devel@driverdev.osuosl.org>; Fri, 28 Apr 2023 18:13:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="349847675"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="349847675"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 11:13:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10694"; a="838940654"
X-IronPort-AV: E=Sophos;i="5.99,235,1677571200"; d="scan'208";a="838940654"
Received: from lkp-server01.sh.intel.com (HELO 5bad9d2b7fcb) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 28 Apr 2023 11:13:40 -0700
Received: from kbuild by 5bad9d2b7fcb with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1psSbD-0000b3-1k;
 Fri, 28 Apr 2023 18:13:39 +0000
Date: Sat, 29 Apr 2023 02:13:11 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 5a6cc0cdb3b7a49e06d8bfc586719ef42238cf9c
Message-ID: <20230428181311.iRfiu%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682705623; x=1714241623;
 h=date:from:to:cc:subject:message-id;
 bh=1C0/ywnhRGo2M+dot2I+/EkOPv5x1qpWAVelzdeJMmI=;
 b=CxSx82g8fRqaxxsAEGosd+cymoNYvZOwGiBxYcPHikKIyiJjYyRgsanB
 DS4a9jCgy1a6I63Lp4cab47R4Fe2QualwmwFB+QbYdIz4wCAwbQpw/52A
 8AmcXk5k/YZT8O/pTl7tDEywD2AZ3RLwRdvSgstN1OpzxqbAaRdIVLx56
 GJEQZD4z+IpCKb1Q8PIV+XXqiehLGJK3ZRig0LGAXFBJfCuyO0SELVlfc
 sA0hEvyi0lHKZXk39kQ6/o44GlQpE+RBXTt/lVikLdWd9Ajgnt1POSPrv
 Th/I6tsvDVpLAGFWck8T1VxeFfJWQnR7slUSPBIhw6ypPk/cUutpSmWg9
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CxSx82g8
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
branch HEAD: 5a6cc0cdb3b7a49e06d8bfc586719ef42238cf9c  readfile.2: new page describing readfile(2)

elapsed time: 720m

configs tested: 102
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r021-20230427   gcc  
arc                  randconfig-r033-20230428   gcc  
arc                  randconfig-r043-20230427   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                        mvebu_v7_defconfig   gcc  
arm                  randconfig-r046-20230427   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky         buildonly-randconfig-r003-20230427   gcc  
csky         buildonly-randconfig-r004-20230427   gcc  
csky                                defconfig   gcc  
hexagon              randconfig-r002-20230428   clang
hexagon              randconfig-r031-20230428   clang
hexagon              randconfig-r041-20230427   clang
hexagon              randconfig-r045-20230427   clang
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
ia64                 randconfig-r014-20230428   gcc  
ia64                 randconfig-r034-20230428   gcc  
ia64                 randconfig-r035-20230428   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r006-20230428   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
microblaze   buildonly-randconfig-r002-20230427   gcc  
microblaze           randconfig-r013-20230428   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                        omega2p_defconfig   clang
mips                 randconfig-r001-20230428   gcc  
mips                 randconfig-r003-20230428   gcc  
mips                 randconfig-r015-20230428   clang
nios2                               defconfig   gcc  
nios2                randconfig-r026-20230427   gcc  
openrisc     buildonly-randconfig-r005-20230427   gcc  
openrisc             randconfig-r025-20230427   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                   motionpro_defconfig   gcc  
powerpc              randconfig-r004-20230428   clang
powerpc              randconfig-r024-20230427   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230427   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230427   clang
sh                               allmodconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r012-20230428   gcc  
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
xtensa       buildonly-randconfig-r006-20230427   gcc  
xtensa               randconfig-r023-20230427   gcc  
xtensa               randconfig-r032-20230428   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
