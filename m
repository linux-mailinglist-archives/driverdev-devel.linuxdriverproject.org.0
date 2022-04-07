Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A7D4F7580
	for <lists+driverdev-devel@lfdr.de>; Thu,  7 Apr 2022 07:52:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E05541966;
	Thu,  7 Apr 2022 05:52:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IH1iF1sTZS5n; Thu,  7 Apr 2022 05:52:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D162241961;
	Thu,  7 Apr 2022 05:52:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5D1211BF95E
 for <devel@linuxdriverproject.org>; Thu,  7 Apr 2022 05:52:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4472560DE5
 for <devel@linuxdriverproject.org>; Thu,  7 Apr 2022 05:52:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KBjCu-9aTTNR for <devel@linuxdriverproject.org>;
 Thu,  7 Apr 2022 05:52:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F28096061B
 for <devel@driverdev.osuosl.org>; Thu,  7 Apr 2022 05:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649310750; x=1680846750;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=GLYI4dQ8sOnKVUy1he9ywyL3YpELrKVE0Yzdr9i0z50=;
 b=crjr5arxqtYPjU60mSuef/dT7d6MG4xw00wlLdqKluqwUgXaZmVAVsao
 N1P146j2KZjPW+c2JQcYvgBgJN9aoTuHZ3ZaPER+LlCq9rDyY43QgrCUk
 RTHnmZ0/6C+ltXxevmHN0uOvFdf7FhYXzTKb9qmJDl26YfpiydsaydbTG
 bee5nxxbS/ZPJgA2QN2trfhU3kFbwrzMmF0qN3jWMTM9rqFHaBGJ+TjJ7
 Dhi3OAt9Zb/H5TBJbavoEHlM2pykEaEEw4sUtJISXkTGSEQXWuh8iAA9K
 OlO/JsfJZYuBhB6+beiSY2MHE17w/A6/GZTvPzVfAR5KYq/fNMouZaJg3 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="258827823"
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="258827823"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 22:52:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,241,1643702400"; d="scan'208";a="588677991"
Received: from lkp-server02.sh.intel.com (HELO a44fdfb70b94) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 06 Apr 2022 22:52:28 -0700
Received: from kbuild by a44fdfb70b94 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1ncL4G-00057U-2A;
 Thu, 07 Apr 2022 05:52:28 +0000
Date: Thu, 07 Apr 2022 13:51:43 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 7288ff561de650d4139fab80e9cb0da9b5b32434
Message-ID: <624e7bef.XPi3W8PAHpWT6T9n%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
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
branch HEAD: 7288ff561de650d4139fab80e9cb0da9b5b32434  staging: rtl8712: fix a potential memory leak in r871xu_drv_init()

elapsed time: 2282m

configs tested: 103
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                              allyesconfig
i386                          randconfig-c001
arm                        realview_defconfig
m68k                        mvme147_defconfig
ia64                          tiger_defconfig
sh                        dreamcast_defconfig
arc                         haps_hs_defconfig
m68k                        stmark2_defconfig
m68k                            mac_defconfig
arm                         s3c6400_defconfig
m68k                       m5475evb_defconfig
arc                 nsimosci_hs_smp_defconfig
xtensa                  nommu_kc705_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220406
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
alpha                               defconfig
csky                                defconfig
nios2                            allyesconfig
alpha                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
s390                                defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
sparc                               defconfig
sparc                            allyesconfig
nios2                               defconfig
arc                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220405
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                          rv32_defconfig
riscv                            allyesconfig
riscv                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
powerpc                     ksi8560_defconfig
powerpc                     powernv_defconfig
arm                          collie_defconfig
riscv                          rv32_defconfig
mips                           rs90_defconfig
mips                           mtx1_defconfig
mips                           ip28_defconfig
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20220405
hexagon              randconfig-r045-20220405
s390                 randconfig-r044-20220405
riscv                randconfig-r042-20220405

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
