Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC04648D25
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Dec 2022 05:46:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F2EA40160;
	Sat, 10 Dec 2022 04:46:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F2EA40160
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id K4fTTo9hkNE0; Sat, 10 Dec 2022 04:46:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1B8DA4015E;
	Sat, 10 Dec 2022 04:46:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1B8DA4015E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EB8181BF291
 for <devel@linuxdriverproject.org>; Sat, 10 Dec 2022 04:46:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D2B5960A6F
 for <devel@linuxdriverproject.org>; Sat, 10 Dec 2022 04:46:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D2B5960A6F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a58dAxxphvDF for <devel@linuxdriverproject.org>;
 Sat, 10 Dec 2022 04:46:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A06C960687
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A06C960687
 for <devel@driverdev.osuosl.org>; Sat, 10 Dec 2022 04:46:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="379806331"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="379806331"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 20:46:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="892895806"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="892895806"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 09 Dec 2022 20:46:40 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p3rl1-0002Gp-2m;
 Sat, 10 Dec 2022 04:46:39 +0000
Date: Sat, 10 Dec 2022 12:46:03 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const2] BUILD REGRESSION
 71d86d6fecf6d38c7eaf557d6eecce352c550f0d
Message-ID: <63940f0b.BDL4PzbugNIjhpWt%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670647602; x=1702183602;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=XGD5nHrjgK6sy4dw6qI6QC24Y/KKkCtQp7bTrVs62JA=;
 b=ELvdeakR/dhDwly/4DXtssT0vIbhtY4dNQViHLcaPQSoLagbHp8rbe7d
 XeQp6Cd7B+6mkkfW0sDBxtZtmI/r8OZ18GQeTiYwL6HBUj4gJcqoLpYRb
 cG26n/4Ilrg7T9UVoOdT/LMrNRZ/9lu4nYjNc5ztvTmYGp1tiWk8NA6MY
 Kj7Z2KSYWCmOJgFMpasp42KQqktlVASJABuvFM9EoCwVSINQPaFhUTed7
 TQbCHSHzGb1mbaMrS6A0PCeDTsBU2/w9afohnI8w8Q3ghzn459d8/GX+K
 xVpNit+a77HjnUY+Q4zqFMeypmTZfbB7WW9xXTaloWJrL3mu4Xu/4HDa1
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ELvdeakR
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const2
branch HEAD: 71d86d6fecf6d38c7eaf557d6eecce352c550f0d  kobject: kset_uevent_ops: make uevent() callback take a const *

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202212100322.YpsM5N4C-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/bus/sunxi-rsb.c:185:13: error: incompatible function pointer types initializing 'int (*)(const struct device *, struct kobj_uevent_env *)' with an expression of type 'int (struct device *, struct kobj_uevent_env *)' [-Wincompatible-function-pointer-types]

Error/Warning ids grouped by kconfigs:

clang_recent_errors
`-- arm-randconfig-r023-20221209
    `-- drivers-bus-sunxi-rsb.c:error:incompatible-function-pointer-types-initializing-int-(-)(const-struct-device-struct-kobj_uevent_env-)-with-an-expression-of-type-int-(struct-device-struct-kobj_uevent_env

elapsed time: 727m

configs tested: 61
configs skipped: 2

gcc tested configs:
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
arc                  randconfig-r043-20221209
sh                               allmodconfig
s390                 randconfig-r044-20221209
riscv                randconfig-r042-20221209
m68k                             allyesconfig
powerpc                          allmodconfig
m68k                             allmodconfig
mips                             allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                        randconfig-a013
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a011
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a015
i386                                defconfig
x86_64                              defconfig
i386                             allyesconfig
x86_64                           rhel-8.3-bpf
arm                                 defconfig
i386                          randconfig-a001
x86_64                           rhel-8.3-syz
i386                          randconfig-a003
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
ia64                             allmodconfig
i386                          randconfig-a014
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a016
arm                              allyesconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
arm64                            allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006

clang tested configs:
hexagon              randconfig-r041-20221209
arm                  randconfig-r046-20221209
hexagon              randconfig-r045-20221209
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a006
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
