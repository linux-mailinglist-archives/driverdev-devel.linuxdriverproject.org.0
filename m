Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D228639970
	for <lists+driverdev-devel@lfdr.de>; Sun, 27 Nov 2022 06:53:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7659A404F4;
	Sun, 27 Nov 2022 05:53:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7659A404F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4gze7347MIzG; Sun, 27 Nov 2022 05:53:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C316400FC;
	Sun, 27 Nov 2022 05:53:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C316400FC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AA0201BF361
 for <devel@linuxdriverproject.org>; Sun, 27 Nov 2022 05:53:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7E22D81D67
 for <devel@linuxdriverproject.org>; Sun, 27 Nov 2022 05:53:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E22D81D67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cQaF0M15E5K3 for <devel@linuxdriverproject.org>;
 Sun, 27 Nov 2022 05:53:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5054881D4D
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5054881D4D
 for <devel@driverdev.osuosl.org>; Sun, 27 Nov 2022 05:53:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10543"; a="295031751"
X-IronPort-AV: E=Sophos;i="5.96,197,1665471600"; d="scan'208";a="295031751"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2022 21:53:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10543"; a="620693537"
X-IronPort-AV: E=Sophos;i="5.96,197,1665471600"; d="scan'208";a="620693537"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 26 Nov 2022 21:53:21 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ozAbR-0006o9-0v;
 Sun, 27 Nov 2022 05:53:21 +0000
Date: Sun, 27 Nov 2022 13:53:18 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const2] BUILD REGRESSION
 1ef3e0142e621ceb4aa1e4e779363ba3e8729b2f
Message-ID: <6382fb4e.t01RSJiy8UC2B1Ox%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669528404; x=1701064404;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=8K8pzakcDSaa1Z424Jo4+ZhYdT8gBoUhSFtoxlh/isg=;
 b=f4EYbYESJcNnldCYMCQHxJ3tlvBcMgZT/TmkaiEwOdvol0oVsaRqULgN
 AP8zr5iNztdNqD9cvNcHw5ZfJX9wIY4PIWExje/fxQawXgMV7A93wjOuv
 Ju/Kequj91iRKUPL+E/vpP8n8xzUTeEFl8cch7voGo3EU/D77/nDUu5r7
 68bauCXDfQ9eF+sZP7XEog8A7m9dx43OEpVFVHe1hcKxRXG2+7chfI6Fe
 /v84hRTKuB+6qbMunszv6dUCTGafIDueILXUDGcj0TBbdRq9E0cfA/BmL
 CuwxOhjpRF3ANOaVOqOFBaUBS5cWh2/3GOvceWJvPmIQWDuk/SBOJXaM9
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f4EYbYES
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
branch HEAD: 1ef3e0142e621ceb4aa1e4e779363ba3e8729b2f  driver core: device_get_devnode() should take a const *

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202211240329.4Vy3QrMn-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202211261619.mmllniqJ-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/bus/sunxi-rsb.c:180:27: error: initialization of 'int (*)(struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(const struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]
drivers/macintosh/macio_asic.c:136:18: error: initialization of 'int (*)(struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(const struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arm-defconfig
|   `-- drivers-bus-sunxi-rsb.c:error:initialization-of-int-(-)(struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(const-struct-device-struct-kobj_uevent_env-)
|-- arm64-randconfig-r034-20221124
|   `-- drivers-bus-sunxi-rsb.c:error:initialization-of-int-(-)(struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(const-struct-device-struct-kobj_uevent_env-)
`-- powerpc-allmodconfig
    `-- drivers-macintosh-macio_asic.c:error:initialization-of-int-(-)(struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(const-struct-device-struct-kobj_uevent_env-)

elapsed time: 2122m

configs tested: 56
configs skipped: 2

gcc tested configs:
arc                  randconfig-r043-20221124
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
um                             i386_defconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
um                           x86_64_defconfig
mips                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
s390                             allyesconfig
sh                               allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
ia64                             allmodconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                              defconfig
x86_64                        randconfig-a015
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                                defconfig
i386                             allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arm                                 defconfig

clang tested configs:
riscv                randconfig-r042-20221124
hexagon              randconfig-r041-20221124
hexagon              randconfig-r045-20221124
s390                 randconfig-r044-20221124
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
