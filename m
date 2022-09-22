Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 67DB45E7051
	for <lists+driverdev-devel@lfdr.de>; Fri, 23 Sep 2022 01:47:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0073F41682;
	Thu, 22 Sep 2022 23:47:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0073F41682
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1PCnA2u76-aH; Thu, 22 Sep 2022 23:47:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 41C654163E;
	Thu, 22 Sep 2022 23:47:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 41C654163E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 68F0B1BF293
 for <devel@linuxdriverproject.org>; Thu, 22 Sep 2022 23:47:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 51F7E40239
 for <devel@linuxdriverproject.org>; Thu, 22 Sep 2022 23:47:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 51F7E40239
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F-GT5yQzRu9n for <devel@linuxdriverproject.org>;
 Thu, 22 Sep 2022 23:47:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F6A0401A0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5F6A0401A0
 for <devel@driverdev.osuosl.org>; Thu, 22 Sep 2022 23:47:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="280832180"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="280832180"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2022 16:46:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="948814525"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 22 Sep 2022 16:46:47 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1obVu3-00055c-02;
 Thu, 22 Sep 2022 23:46:47 +0000
Date: Fri, 23 Sep 2022 07:45:53 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 d7f06bdd6ee87fbefa05af5f57361d85e7715b11
Message-ID: <632cf3b1.Fttb0myNhr5ipZQ4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663890440; x=1695426440;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=WXj1POwsyk79gkBY/vHwCv4uLK8dsgbcMY8Y8VBA84o=;
 b=kyFpkM7RJcsh/PdsXxu0kIWcvXXCey5GwU4RgksNXLo2bWBdq/bGZcW4
 jktdBIGCOL0abAiJqEDW3X8JnGqiM/LuWxI2vBwcJTVpzBYR1TZjdxaty
 O3Wnb5NdABuKMG2GWREJ9j6jxu7/ZmiltgPGSRSsrbLiT+vU/a1YoUX9S
 A/swvHhNgSQ/BjF871Oz7b6YdrBl5X612UU5Nn4kWVajU6pn2paydbDJ6
 +IEuhq3cuM3tsWbirJZr5+Da4gsH8o94gwYaz0D/QZdvMIjPvVtupOAue
 DQopM93lt+6vs2dylZl6UP4EU1fSoB68Y4XkcfrhHCCvXU/3dg9gY3sLj
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kyFpkM7R
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-linus
branch HEAD: d7f06bdd6ee87fbefa05af5f57361d85e7715b11  drivers/base: Fix unsigned comparison to -1 in CPUMAP_FILE_MAX_BYTES

elapsed time: 721m

configs tested: 71
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
arc                  randconfig-r043-20220922
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
x86_64                        randconfig-a015
i386                                defconfig
x86_64                              defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
s390                             allyesconfig
x86_64                               rhel-8.3
arm                                 defconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                        randconfig-a004
i386                          randconfig-a001
x86_64                        randconfig-a002
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a006
arc                               allnoconfig
i386                             allyesconfig
x86_64                           allyesconfig
m68k                             allyesconfig
alpha                             allnoconfig
x86_64                           rhel-8.3-kvm
riscv                             allnoconfig
x86_64                    rhel-8.3-kselftests
csky                              allnoconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz
i386                          randconfig-a014
arm                              allyesconfig
i386                          randconfig-a012
arm64                            allyesconfig
i386                          randconfig-a016
microblaze                          defconfig
ia64                             allmodconfig
m68k                        stmark2_defconfig
sparc                               defconfig
xtensa                       common_defconfig
loongarch                        alldefconfig
i386                          randconfig-c001

clang tested configs:
x86_64                        randconfig-a012
hexagon              randconfig-r041-20220922
riscv                randconfig-r042-20220922
hexagon              randconfig-r045-20220922
x86_64                        randconfig-a014
x86_64                        randconfig-a016
s390                 randconfig-r044-20220922
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
powerpc                      obs600_defconfig
arm                         palmz72_defconfig
powerpc                      walnut_defconfig
riscv                             allnoconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
