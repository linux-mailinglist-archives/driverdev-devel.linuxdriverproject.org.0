Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D91F2674914
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Jan 2023 02:55:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 67BF6827AA;
	Fri, 20 Jan 2023 01:55:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67BF6827AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aSyAsH6F1Ngv; Fri, 20 Jan 2023 01:55:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2F24A827A8;
	Fri, 20 Jan 2023 01:55:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2F24A827A8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AC7211BF831
 for <devel@linuxdriverproject.org>; Fri, 20 Jan 2023 01:55:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 885E740580
 for <devel@linuxdriverproject.org>; Fri, 20 Jan 2023 01:55:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 885E740580
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NvybHMFbpE_X for <devel@linuxdriverproject.org>;
 Fri, 20 Jan 2023 01:55:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2A9AE400DC
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2A9AE400DC
 for <devel@driverdev.osuosl.org>; Fri, 20 Jan 2023 01:55:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="325525490"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="325525490"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 17:55:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="749203476"
X-IronPort-AV: E=Sophos;i="5.97,230,1669104000"; d="scan'208";a="749203476"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Jan 2023 17:55:33 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pIgcu-00024C-2C;
 Fri, 20 Jan 2023 01:55:32 +0000
Date: Fri, 20 Jan 2023 09:54:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 2636455b28cb477a1b74c570023ac505ff1a3890
Message-ID: <63c9f45c.aRt+Oojo7ggkl4xo%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674179735; x=1705715735;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=fA6omKk5xftJkUADuvCuH88jY2iMPHNq0P72Eky6K2w=;
 b=Ck/fnuhfgntqu+kC4fnpGqd41ApTuM0Fh6ttnPulmYHMc1JtqxLxt+S0
 089HyXGmaxm4EcdwJCzFd1g0NStxNLdtu1EHhcFluugNPPhTeh7y5JQ5M
 Utotp9JLitGL/dZhe3W9MkPfMi597V//RLO8XOfGs9Ue39xgSwTeUAB7a
 b8Wz5bPaM9lAqNnCOyAowQpGJzUJ64L5I65Va41qlGjUlLTwF7zvXNn7Y
 JypPYxe22iW9kWd5qJ8C4gI4wadcSbbmtasBa80e4sEcKeXs0tiRtHq4/
 0uqO4O/Z5JEyzSj/i1uYOLtPEjqbr3tUuQV71ao6qlVrzDY1oLkP6Rgu+
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ck/fnuhf
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 2636455b28cb477a1b74c570023ac505ff1a3890  staging: rtl8192e: Remove unused variable DM_Type

elapsed time: 721m

configs tested: 84
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
x86_64                            allnoconfig
s390                                defconfig
s390                             allmodconfig
s390                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arm                  randconfig-r046-20230119
x86_64                              defconfig
arc                  randconfig-r043-20230119
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
arm                                 defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
x86_64                               rhel-8.3
sh                               allmodconfig
x86_64                           allyesconfig
mips                             allyesconfig
i386                                defconfig
arm64                            allyesconfig
ia64                             allmodconfig
powerpc                          allmodconfig
i386                          randconfig-a014
i386                          randconfig-a012
arm                              allyesconfig
x86_64                        randconfig-a004
i386                          randconfig-a001
x86_64                        randconfig-a002
i386                          randconfig-a003
i386                          randconfig-a016
x86_64                        randconfig-a013
i386                          randconfig-a005
x86_64                        randconfig-a011
m68k                             allyesconfig
x86_64                        randconfig-a006
m68k                             allmodconfig
arc                              allyesconfig
x86_64                        randconfig-a015
alpha                            allyesconfig
i386                             allyesconfig
m68k                          hp300_defconfig
sparc                       sparc32_defconfig
sparc64                          alldefconfig
sh                          sdk7786_defconfig
parisc                              defconfig
xtensa                          iss_defconfig
sh                         ecovec24_defconfig
i386                          randconfig-c001
sh                          rsk7264_defconfig
m68k                          multi_defconfig
nios2                               defconfig
arm                           corgi_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
x86_64                        randconfig-c001
arm                  randconfig-c002-20230119

clang tested configs:
x86_64                          rhel-8.3-rust
hexagon              randconfig-r045-20230119
hexagon              randconfig-r041-20230119
s390                 randconfig-r044-20230119
riscv                randconfig-r042-20230119
i386                          randconfig-a013
x86_64                        randconfig-a001
i386                          randconfig-a011
i386                          randconfig-a002
x86_64                        randconfig-a003
i386                          randconfig-a004
x86_64                        randconfig-a014
i386                          randconfig-a015
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a005
i386                          randconfig-a006
x86_64                        randconfig-k001
powerpc                 mpc8315_rdb_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
