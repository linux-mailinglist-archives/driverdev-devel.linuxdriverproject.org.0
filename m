Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 641F4625459
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Nov 2022 08:15:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 98A57402FE;
	Fri, 11 Nov 2022 07:15:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 98A57402FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jcN-CnTYfDWz; Fri, 11 Nov 2022 07:15:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 319AF4011A;
	Fri, 11 Nov 2022 07:15:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 319AF4011A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4A6941BF85D
 for <devel@linuxdriverproject.org>; Fri, 11 Nov 2022 07:15:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 21A9B4011C
 for <devel@linuxdriverproject.org>; Fri, 11 Nov 2022 07:15:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21A9B4011C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zPOZ1wFXNSbH for <devel@linuxdriverproject.org>;
 Fri, 11 Nov 2022 07:15:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C273B4011A
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C273B4011A
 for <devel@driverdev.osuosl.org>; Fri, 11 Nov 2022 07:15:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="309168203"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="309168203"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 23:14:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="588475488"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="588475488"
Received: from lkp-server01.sh.intel.com (HELO e783503266e8) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 10 Nov 2022 23:14:57 -0800
Received: from kbuild by e783503266e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1otOFc-0003h7-1x;
 Fri, 11 Nov 2022 07:14:56 +0000
Date: Fri, 11 Nov 2022 15:14:44 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 2f465b921bb8ff97025017e05f6c7a7a1f6a5749
Message-ID: <636df664.CZTkhGVsR8zvaHnc%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668150923; x=1699686923;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=LKMEmuRlHmefr3crYnpDvS9/imtGE62umVmydgoznOY=;
 b=eXFCFuDbB6o+95tDSaSJPb9D7C3sfEuWoowDYO1N1xFDcbGr51RPABfd
 lIyWqOZEMv+vM/gZHz+/HGBGw75eNQBB7zZ/NLEb8Z/+UVB9BG0j7FDGv
 h40fFf9IDcyOW/W4/ck8Cqi1dk2QImSLYqtJubNcIURMOxelF9zJp4wYu
 DXiYnFFupz1P/DDzyRCv8iCc5TdhBo3Vq7yzO4uLalcVM7wGu1A9vqDst
 WeKXWHftU6b4EXG0KI+vXJI/+bLTgAk9tu6hBSJpZ0HP6k8CEmKj++S8X
 cQYb2UIxQYkAca8aCTXsugeV9y3d5CAKh2aMfKyRpPGWGW+jmN5NRSk7C
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eXFCFuDb
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 2f465b921bb8ff97025017e05f6c7a7a1f6a5749  vmlinux.lds.h: place optional header space in BOUNDED_SECTION

elapsed time: 726m

configs tested: 78
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
sh                   secureedge5410_defconfig
parisc                generic-64bit_defconfig
powerpc                 mpc837x_rdb_defconfig
xtensa                    xip_kc705_defconfig
xtensa                          iss_defconfig
powerpc                 mpc834x_mds_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
i386                             allyesconfig
i386                                defconfig
arc                        nsimosci_defconfig
xtensa                           alldefconfig
parisc                generic-32bit_defconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
powerpc                       ppc64_defconfig
arm                          pxa910_defconfig
i386                          randconfig-c001
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
s390                 randconfig-r044-20221111
sh                           se7724_defconfig
parisc                           alldefconfig
powerpc                    amigaone_defconfig
arm                           viper_defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
microblaze                          defconfig
powerpc              randconfig-c003-20221110
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func

clang tested configs:
hexagon              randconfig-r041-20221111
hexagon              randconfig-r045-20221111
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
mips                malta_qemu_32r6_defconfig
s390                 randconfig-r044-20221110
riscv                randconfig-r042-20221110
hexagon              randconfig-r041-20221110
hexagon              randconfig-r045-20221110
arm                       aspeed_g4_defconfig
mips                      pic32mzda_defconfig
arm                         lpc32xx_defconfig
powerpc                      obs600_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
