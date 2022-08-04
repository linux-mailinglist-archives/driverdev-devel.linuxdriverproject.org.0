Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BFA158A3FE
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Aug 2022 01:46:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 756E740545;
	Thu,  4 Aug 2022 23:46:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 756E740545
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Zw20dq3fwLb4; Thu,  4 Aug 2022 23:46:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1BC5B40104;
	Thu,  4 Aug 2022 23:46:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1BC5B40104
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A5761BF3D4
 for <devel@linuxdriverproject.org>; Thu,  4 Aug 2022 23:45:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6165C40545
 for <devel@linuxdriverproject.org>; Thu,  4 Aug 2022 23:45:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6165C40545
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aQ-qE0wwgDlY for <devel@linuxdriverproject.org>;
 Thu,  4 Aug 2022 23:45:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 80CDC40104
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 80CDC40104
 for <devel@driverdev.osuosl.org>; Thu,  4 Aug 2022 23:45:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="269853138"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="269853138"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 16:45:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="579285185"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 04 Aug 2022 16:45:50 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oJkXF-000IxC-2O;
 Thu, 04 Aug 2022 23:45:49 +0000
Date: Fri, 05 Aug 2022 07:45:46 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 4b0e7e55cc1e6f1b0bfd8eaaa853b879b80172cf
Message-ID: <62ec5a2a.03L1/uCys8YNOUqd%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659656758; x=1691192758;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=zxj02AheXteYkhV0Stk2cYlM7P26KQZY2fIifZh1u5Q=;
 b=YQE5SGJ+uRW+6DcXIuwsE5+iOXPR6Ic12f32/kr1J80nzDHJnA2fhow1
 KbtvyrKwgqYx306PwmD6UgPVeytexJadjSfIStcDzARvvFs+OmLmaAB0K
 AHL2GGiWsMSXJH74EViKobsqvsEsec/RYy4JUWlbo2M6L4CqWCbLLWPi7
 UvrhUswGgWpFGh3WMsVXmHYS0tByZILL0r4hMyrQJDECSrnXPEPXrOIkg
 qvxm7wD5/ygtMWvltCsvHtvrup405nDhvD2l2UT5cKLjPm6QpYvIstOz1
 EHwPnggdrKQWTayDeMBxvji2NwlFH4cu7wVGjZ3Ld3V9iQr0ZBTbddDQc
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YQE5SGJ+
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
branch HEAD: 4b0e7e55cc1e6f1b0bfd8eaaa853b879b80172cf  HID: vivaldi: convert to use dev_groups

elapsed time: 720m

configs tested: 60
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
i386                                defconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
x86_64                        randconfig-a015
x86_64                        randconfig-a013
x86_64                        randconfig-a011
m68k                             allyesconfig
i386                             allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
arc                  randconfig-r043-20220804
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
powerpc                          allmodconfig
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-kvm
i386                          randconfig-a001
mips                             allyesconfig
i386                          randconfig-a003
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a004
i386                          randconfig-a005
x86_64                        randconfig-a002
i386                          randconfig-a014
arm                                 defconfig
powerpc                           allnoconfig
i386                          randconfig-a012
sh                               allmodconfig
x86_64                        randconfig-a006
i386                          randconfig-a016
arm                              allyesconfig
arm64                            allyesconfig
ia64                             allmodconfig
loongarch                           defconfig
loongarch                         allnoconfig
arm                             pxa_defconfig
sparc                       sparc32_defconfig
arc                               allnoconfig
m68k                        m5307c3_defconfig
mips                      fuloong2e_defconfig

clang tested configs:
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220804
hexagon              randconfig-r045-20220804
riscv                randconfig-r042-20220804
s390                 randconfig-r044-20220804
i386                          randconfig-a002
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a005
i386                          randconfig-a011
x86_64                        randconfig-a001
x86_64                        randconfig-a003

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
