Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51BEB672973
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Jan 2023 21:32:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E596740146;
	Wed, 18 Jan 2023 20:32:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E596740146
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EQdaLABtcaAK; Wed, 18 Jan 2023 20:32:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BAF36400CB;
	Wed, 18 Jan 2023 20:32:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BAF36400CB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1A0641BF28B
 for <devel@linuxdriverproject.org>; Wed, 18 Jan 2023 20:32:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E7D08418AE
 for <devel@linuxdriverproject.org>; Wed, 18 Jan 2023 20:32:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E7D08418AE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id st-VRYMKlbUO for <devel@linuxdriverproject.org>;
 Wed, 18 Jan 2023 20:32:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C9310418B0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C9310418B0
 for <devel@driverdev.osuosl.org>; Wed, 18 Jan 2023 20:32:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="389590394"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="389590394"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 12:32:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="661871250"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="661871250"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 18 Jan 2023 12:32:13 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pIF6S-0000gx-21;
 Wed, 18 Jan 2023 20:32:12 +0000
Date: Thu, 19 Jan 2023 04:31:31 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 67d22ef5009edd8195d6e128bf17c2a6ba94f890
Message-ID: <63c85723.G1DUrpCmCsXjByaE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674073957; x=1705609957;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=s+jxsa+lPdwfEXpPr1IcrHG7UPSOXO4IazRUn3Jy2ng=;
 b=SH+f4my1p3C5LCMoSU+BQQc8b/BDZDc4cXCn+NvvyKm0Zjx337a5DTuq
 M3ylY4M7s0vrICqTTkTLvlJUZ39Q1bhMEIc4cl9yVT5JW2RbKeaoBDEPf
 4SI+IPfu5bcjGrlLvnlTNopA+jX8jC2ZWqOMrmXwM2QXGgKiN3haM5Oxm
 cpobaxLqNG/lOzZWDB/DvLDdzhaEuiC+vDQUWAGvGFMv0uaC5HhaYoe8Z
 TwJcL7uhYSXb68Nx2zip7E/kOH5mdQJGjJR5FKWJ6BBvIll/2cZR/JvlI
 lshI7jLDkWAI2JiGPgwrS/M7bJVpmJBzAhDZVK8Y9gpQefnEf5//nrTek
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SH+f4my1
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: 67d22ef5009edd8195d6e128bf17c2a6ba94f890  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 720m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
x86_64                              defconfig
x86_64                               rhel-8.3
powerpc                           allnoconfig
x86_64                           allyesconfig
i386                                defconfig
arc                  randconfig-r043-20230118
s390                 randconfig-r044-20230118
riscv                randconfig-r042-20230118
sh                               allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a002
x86_64                        randconfig-a011
mips                             allyesconfig
i386                 randconfig-a014-20230116
i386                 randconfig-a013-20230116
powerpc                          allmodconfig
x86_64                        randconfig-a004
ia64                             allmodconfig
i386                 randconfig-a012-20230116
m68k                             allyesconfig
i386                 randconfig-a015-20230116
m68k                             allmodconfig
x86_64                        randconfig-a015
i386                 randconfig-a011-20230116
arc                              allyesconfig
alpha                            allyesconfig
i386                 randconfig-a016-20230116
x86_64                        randconfig-a006
i386                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
arm                                 defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
arm                              allyesconfig
arm64                            allyesconfig
s390                             allyesconfig

clang tested configs:
hexagon              randconfig-r045-20230118
hexagon              randconfig-r041-20230118
arm                  randconfig-r046-20230118
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a012
x86_64                        randconfig-a005
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
