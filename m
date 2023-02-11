Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2AA69343F
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Feb 2023 23:56:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5ED9060BC4;
	Sat, 11 Feb 2023 22:56:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5ED9060BC4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2e_T_Kcr6o2X; Sat, 11 Feb 2023 22:56:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2360860BBB;
	Sat, 11 Feb 2023 22:56:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2360860BBB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 149F81BF588
 for <devel@linuxdriverproject.org>; Sat, 11 Feb 2023 22:56:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E2FD560A63
 for <devel@linuxdriverproject.org>; Sat, 11 Feb 2023 22:56:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E2FD560A63
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5HePiIt5WMPR for <devel@linuxdriverproject.org>;
 Sat, 11 Feb 2023 22:56:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7CC5360BB0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7CC5360BB0
 for <devel@driverdev.osuosl.org>; Sat, 11 Feb 2023 22:56:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10618"; a="330677352"
X-IronPort-AV: E=Sophos;i="5.97,290,1669104000"; d="scan'208";a="330677352"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2023 14:56:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10618"; a="757150674"
X-IronPort-AV: E=Sophos;i="5.97,290,1669104000"; d="scan'208";a="757150674"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Feb 2023 14:56:28 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQynC-0006qT-3C;
 Sat, 11 Feb 2023 22:56:26 +0000
Date: Sun, 12 Feb 2023 06:56:23 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS WITH WARNING
 ea0d1202075c08b9df42d18f14813c740cf5440a
Message-ID: <63e81d17.jpE7B91CztHn8BGG%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676156190; x=1707692190;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=6cAJpDN9DQp3fX5vQ6YZC4CUynJ9NoU+v4F3WPJB3sM=;
 b=kkH2T+dGs3nNMWUt53dCvjbjZILre3qfm+2C1FFqNZWlHlsjvNkAjABY
 4KKrXxSDI/g2nNqqA8hwrbFr4GmpTDtV0HTh1yG1jYkuBtfdFlZfpeU/l
 J/BI8u3rMn/ZAfSYBKD7O41gch6zpm8ZMeImW0Z8zzc09yBiIlTnjBQhP
 YC1aXXnbkzCM6TBjNHIaLjvLuZGckglPKort5Ytu5SnRTwBgnzDlHndvv
 KaCk+HDGXzWiIfjpr3LKeAQXeXgC92YsPCn9e7LA9kAacgGpNi0kEmSlI
 aOI+igrGkRYOEvLGTCL2dHbAa4vooh4gidypHsvLvVAfW+D1QBzKVQH1A
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kkH2T+dG
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: ea0d1202075c08b9df42d18f14813c740cf5440a  driver core: mark struct device's bus_type as const.

Warning reports:

https://lore.kernel.org/oe-kbuild-all/202302010222.N9SSmGUP-lkp@intel.com

Warning: (recently discovered and may have been fixed)

drivers/dma/idxd/compat.c:35:32: warning: initialization discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- x86_64-allmodconfig
|   `-- drivers-dma-idxd-compat.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
|-- x86_64-allyesconfig
|   `-- drivers-dma-idxd-compat.c:warning:initialization-discards-const-qualifier-from-pointer-target-type
`-- x86_64-randconfig-a002
    `-- drivers-dma-idxd-compat.c:warning:initialization-discards-const-qualifier-from-pointer-target-type

elapsed time: 721m

configs tested: 78
configs skipped: 3

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                  randconfig-r043-20230210
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                  randconfig-r046-20230210
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
mips                             allmodconfig
mips                             allyesconfig
mips                      maltasmvp_defconfig
nios2                               defconfig
openrisc                            defconfig
parisc                              defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv             nommu_k210_sdcard_defconfig
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
sh                               allmodconfig
sh                             shx3_defconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                               rhel-8.3

clang tested configs:
arm                          pxa168_defconfig
hexagon              randconfig-r041-20230210
hexagon              randconfig-r045-20230210
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
riscv                randconfig-r042-20230210
s390                 randconfig-r044-20230210
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
