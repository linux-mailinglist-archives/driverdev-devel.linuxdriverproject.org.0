Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 925FD6466AC
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Dec 2022 02:52:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0B28681F83;
	Thu,  8 Dec 2022 01:52:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0B28681F83
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CpBZ_Xm06HLi; Thu,  8 Dec 2022 01:52:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B767481F7C;
	Thu,  8 Dec 2022 01:52:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B767481F7C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 701391BF95D
 for <devel@linuxdriverproject.org>; Thu,  8 Dec 2022 01:52:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 50581408DB
 for <devel@linuxdriverproject.org>; Thu,  8 Dec 2022 01:52:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50581408DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BxCq8w4dUHFl for <devel@linuxdriverproject.org>;
 Thu,  8 Dec 2022 01:52:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3A060408D8
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3A060408D8
 for <devel@driverdev.osuosl.org>; Thu,  8 Dec 2022 01:52:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="381339712"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; d="scan'208";a="381339712"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 17:52:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="710280114"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; d="scan'208";a="710280114"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 07 Dec 2022 17:52:26 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p365J-0000jr-27;
 Thu, 08 Dec 2022 01:52:25 +0000
Date: Thu, 08 Dec 2022 09:51:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const3] BUILD REGRESSION
 d7b8026c4bf8e730b19ebbaa117383804bb01bdb
Message-ID: <6391433b.w7gqv+28FJCemr7Q%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670464348; x=1702000348;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=F63vODkBmbOuv2R9zz2uiQA1YZG63RA0iDM5bisQVjA=;
 b=i1JjaeVQa2PSLLzP+Kmhgc11Y7xmuWS7i0OKrFCnruJlmOFeQGlnlfik
 6pta9dpqRg9BV7AqvZrDtRt5Y0Lwz+cHZGv1ddMLPi84rDhnvI+dy3H0l
 /83FtUOlEa+bA2g/8uJJyvtL+87XjhArTp4J4mdtovU/7c93xVr0RJdsh
 hAWEJzNjb7v5HZE9nRmtykhMoCQ1u3krnFJRBoJbwD3LXcsWZHBRr8wrJ
 1CenQGkRCO5xkDk5QcoVYMVs5+u2lH0Wpd6Xvx8f66m5eSJ88qV4VvHC9
 AD/AIrJfBCvUZ/29oWLFxJTr5dOIB0XPsgQ67hWr4rwZSf5J17cR1s1at
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=i1JjaeVQ
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const3
branch HEAD: d7b8026c4bf8e730b19ebbaa117383804bb01bdb  driver core: make struct device_type.uevent() take a const *

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202212072303.zoG5acy7-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/bus/sunxi-rsb.c:180:13: error: incompatible function pointer types initializing 'int (*)(struct device *, struct kobj_uevent_env *)' with an expression of type 'int (const struct device *, struct kobj_uevent_env *)' [-Wincompatible-function-pointer-types]

Error/Warning ids grouped by kconfigs:

clang_recent_errors
`-- arm64-randconfig-r035-20221207
    `-- drivers-bus-sunxi-rsb.c:error:incompatible-function-pointer-types-initializing-int-(-)(struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(const-struct-device-struct-kobj_uevent_env

elapsed time: 806m

configs tested: 67
configs skipped: 2

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
arc                                 defconfig
s390                             allmodconfig
x86_64                           rhel-8.3-syz
alpha                               defconfig
x86_64                         rhel-8.3-kunit
powerpc                           allnoconfig
arc                  randconfig-r043-20221207
x86_64                        randconfig-a004
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a002
s390                                defconfig
s390                             allyesconfig
riscv                randconfig-r042-20221207
ia64                             allmodconfig
x86_64                              defconfig
s390                 randconfig-r044-20221207
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a006
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
i386                          randconfig-a001
x86_64                        randconfig-a013
m68k                             allyesconfig
x86_64                        randconfig-a011
arm                                 defconfig
i386                          randconfig-a014
x86_64                               rhel-8.3
x86_64                        randconfig-a015
i386                          randconfig-a003
arc                              allyesconfig
x86_64                           allyesconfig
i386                          randconfig-a012
alpha                            allyesconfig
i386                          randconfig-a016
arm                              allyesconfig
i386                          randconfig-a005
i386                             allyesconfig
arm64                            allyesconfig
sh                               allmodconfig
x86_64                            allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                     redwood_defconfig
powerpc                     asp8347_defconfig
mips                    maltaup_xpa_defconfig
powerpc                     sequoia_defconfig
powerpc                        warp_defconfig
m68k                             allmodconfig

clang tested configs:
arm                  randconfig-r046-20221207
hexagon              randconfig-r041-20221207
x86_64                        randconfig-a001
hexagon              randconfig-r045-20221207
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
i386                          randconfig-a011
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
arm                          pcm027_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
