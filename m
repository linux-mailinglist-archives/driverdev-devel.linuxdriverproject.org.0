Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FCF648D06
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Dec 2022 04:58:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1827A60806;
	Sat, 10 Dec 2022 03:58:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1827A60806
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PQEd-E2UXhYZ; Sat, 10 Dec 2022 03:58:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D48C2607FF;
	Sat, 10 Dec 2022 03:58:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D48C2607FF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B86781BF955
 for <devel@linuxdriverproject.org>; Sat, 10 Dec 2022 03:58:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 98F7A60A6A
 for <devel@linuxdriverproject.org>; Sat, 10 Dec 2022 03:58:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 98F7A60A6A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NFH4gn7Agq8O for <devel@linuxdriverproject.org>;
 Sat, 10 Dec 2022 03:58:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8884C607FF
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8884C607FF
 for <devel@driverdev.osuosl.org>; Sat, 10 Dec 2022 03:58:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="297941614"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="297941614"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 19:58:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="821933460"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="821933460"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 09 Dec 2022 19:58:39 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p3r0Y-0002Fd-38;
 Sat, 10 Dec 2022 03:58:38 +0000
Date: Sat, 10 Dec 2022 11:58:34 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const3] BUILD REGRESSION
 ecf4f5cab214d7ad99becb2114295e9f6528d49c
Message-ID: <639403ea.PzTte7yLLtJQidsE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670644722; x=1702180722;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=mHDFJTOfqAoyen4EZtno5vzaBF8ogE6hCK7znEdY7B4=;
 b=WNG+d0lk0thmM6594m8DwYiodovotSe+9obqWrhdsbjDNzcRgZ+fzBru
 p8/LTnJwbdFvjLqgIdMbreJIYk+5TQG3cN3t7e3pdzv3rxiQqdB/TaLgZ
 2qHwHIwzXh5uTOsxAIHW8OvRjnI1DMykkuiNPnKGKEDb3LW7lh8VJ6nZu
 nkDQ54eOemxPDiNQ+w8vrzXQv+cNlhqhfAsY1yN7St/oM7KHnrYaSEs0M
 usgZmhpcP2FrtzSJtIWqPy+v12spa9ceZCCO+hAvvmCwEmV2MP04vjNfR
 SxFiQhg0rlf5IM4Q4pt2XL4nIbunc42ehV9YKGHtZyiY/l43cczWyYuSc
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WNG+d0lk
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
branch HEAD: ecf4f5cab214d7ad99becb2114295e9f6528d49c  driver core: make struct device_type.uevent() take a const *

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202212100710.BqGGLY61-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/bus/sunxi-rsb.c:180:27: error: initialization of 'int (*)(struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(const struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- arm64-randconfig-r021-20221209
    `-- drivers-bus-sunxi-rsb.c:error:initialization-of-int-(-)(struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(const-struct-device-struct-kobj_uevent_env-)

elapsed time: 720m

configs tested: 61
configs skipped: 2

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20221209
s390                 randconfig-r044-20221209
x86_64                           rhel-8.3-bpf
powerpc                           allnoconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
riscv                randconfig-r042-20221209
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                          rhel-8.3-rust
i386                          randconfig-a001
x86_64                        randconfig-a015
sh                               allmodconfig
i386                          randconfig-a003
x86_64                          rhel-8.3-func
x86_64                        randconfig-a004
i386                          randconfig-a005
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a002
powerpc                          allmodconfig
mips                             allyesconfig
x86_64                        randconfig-a006
x86_64                              defconfig
i386                                defconfig
x86_64                               rhel-8.3
arm                                 defconfig
x86_64                           allyesconfig
ia64                             allmodconfig
arm                              allyesconfig
arm64                            allyesconfig
i386                             allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016

clang tested configs:
hexagon              randconfig-r041-20221209
arm                  randconfig-r046-20221209
hexagon              randconfig-r045-20221209
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a001
i386                          randconfig-a006
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
