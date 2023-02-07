Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 460F468D598
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Feb 2023 12:35:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AAF6060B95;
	Tue,  7 Feb 2023 11:35:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AAF6060B95
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hur91ldPLkDH; Tue,  7 Feb 2023 11:35:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5293E60B96;
	Tue,  7 Feb 2023 11:35:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5293E60B96
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id EEC951BF2AF
 for <devel@linuxdriverproject.org>; Tue,  7 Feb 2023 11:34:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C80CA81346
 for <devel@linuxdriverproject.org>; Tue,  7 Feb 2023 11:34:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C80CA81346
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id deEgo-f45iJH for <devel@linuxdriverproject.org>;
 Tue,  7 Feb 2023 11:34:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B952C8124F
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B952C8124F
 for <devel@driverdev.osuosl.org>; Tue,  7 Feb 2023 11:34:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="329501257"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="329501257"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 03:34:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="995697872"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="995697872"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 07 Feb 2023 03:33:59 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pPMEY-0003VL-1f;
 Tue, 07 Feb 2023 11:33:58 +0000
Date: Tue, 07 Feb 2023 19:33:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const-2] BUILD SUCCESS
 2132d1815ac189c357a816f54526ac68879d6c58
Message-ID: <63e23707.Plp2lAgpnew3XbGt%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675769695; x=1707305695;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=bXJe4NJv4eCKgccjMepRlX+WKQgLH1f64iPW9AQB6bE=;
 b=d2gN40od1SS7vVCs0Ts7dS/mFLYXXmtm+JCL0C08cYhvfF5W/34iDVhj
 j0dqMUBRtL8ueQ0B4AHr9AGDkhZTjdpAEKqRrg8y63+sO8Hl4uG8TD6jO
 uq7eNk9oiYFfQHiR16RBjmkiTqDOFlC7rYJqATtZ4nJP2YysOYn2mLqGX
 hYhBISSbVVNT58KPxTCmMECvb9ZyoijEgFQFajveqbE2NaDe0mUmdxjEP
 m7DTMqRECptADQ+CnO4synjpu2EnmD5Hw2qT3MBF5gS1+V6rplIN6SIBX
 t+ZpDviaAe1XUsHrzPrtqEltz62CGbDtj+RWeE2mhr0YdqWXKPVtSTDE1
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=d2gN40od
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const-2
branch HEAD: 2132d1815ac189c357a816f54526ac68879d6c58  driver core: bus: clean up bus_sort_breadthfirst()

elapsed time: 1012m

configs tested: 92
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
ia64                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                              defconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64               randconfig-a014-20230206
x86_64               randconfig-a013-20230206
x86_64               randconfig-a011-20230206
x86_64               randconfig-a015-20230206
x86_64                               rhel-8.3
x86_64               randconfig-a012-20230206
x86_64               randconfig-a016-20230206
i386                 randconfig-a013-20230206
i386                 randconfig-a011-20230206
s390                 randconfig-r044-20230206
i386                 randconfig-a014-20230206
arc                  randconfig-r043-20230205
arm                  randconfig-r046-20230205
i386                 randconfig-a012-20230206
arc                  randconfig-r043-20230206
i386                 randconfig-a016-20230206
i386                 randconfig-a015-20230206
riscv                randconfig-r042-20230206
x86_64                           allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
arm                       multi_v4t_defconfig
i386                                defconfig
arm                                 defconfig
arm                     eseries_pxa_defconfig
sh                          rsk7203_defconfig
m68k                          amiga_defconfig
xtensa                           alldefconfig
arm64                            allyesconfig
i386                             allyesconfig
arm                              allyesconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
i386                          randconfig-c001
x86_64                        randconfig-c001
arm                  randconfig-c002-20230205
um                             i386_defconfig
um                           x86_64_defconfig

clang tested configs:
hexagon              randconfig-r041-20230205
riscv                randconfig-r042-20230205
hexagon              randconfig-r045-20230206
hexagon              randconfig-r041-20230206
x86_64               randconfig-a001-20230206
x86_64               randconfig-a002-20230206
arm                  randconfig-r046-20230206
s390                 randconfig-r044-20230205
x86_64               randconfig-a004-20230206
x86_64               randconfig-a003-20230206
hexagon              randconfig-r045-20230205
i386                 randconfig-a002-20230206
i386                 randconfig-a004-20230206
i386                 randconfig-a003-20230206
x86_64               randconfig-a005-20230206
i386                 randconfig-a001-20230206
i386                 randconfig-a005-20230206
x86_64               randconfig-a006-20230206
i386                 randconfig-a006-20230206
powerpc                      obs600_defconfig
powerpc                      ppc44x_defconfig
mips                        maltaup_defconfig
arm                         mv78xx0_defconfig
x86_64                        randconfig-k001
x86_64                          rhel-8.3-rust
powerpc                 mpc8272_ads_defconfig

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
