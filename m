Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CB3636FEB
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Nov 2022 02:39:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9390A610A6;
	Thu, 24 Nov 2022 01:39:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9390A610A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ye3TKW7eKO04; Thu, 24 Nov 2022 01:39:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 42A7C60BF4;
	Thu, 24 Nov 2022 01:39:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 42A7C60BF4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ADDC71BF59C
 for <devel@linuxdriverproject.org>; Thu, 24 Nov 2022 01:39:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8936B404A0
 for <devel@linuxdriverproject.org>; Thu, 24 Nov 2022 01:39:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8936B404A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NwJa38FQ-tY8 for <devel@linuxdriverproject.org>;
 Thu, 24 Nov 2022 01:39:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A04B840116
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A04B840116
 for <devel@driverdev.osuosl.org>; Thu, 24 Nov 2022 01:39:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="297552861"
X-IronPort-AV: E=Sophos;i="5.96,189,1665471600"; d="scan'208";a="297552861"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 17:39:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="766919411"
X-IronPort-AV: E=Sophos;i="5.96,189,1665471600"; d="scan'208";a="766919411"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 23 Nov 2022 17:39:46 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oy1DO-0003Kn-0L;
 Thu, 24 Nov 2022 01:39:46 +0000
Date: Thu, 24 Nov 2022 09:38:53 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const2] BUILD REGRESSION
 a24f87696c63e8564c4e04b8715daaca5e2144c9
Message-ID: <637ecb2d.pJ4Ya1H1yDEAJlTU%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669253988; x=1700789988;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=CEvA2yjA4h35ITOX8UG1zYkC658KUll1tLDy2MJFOIA=;
 b=Tcu82pxyfccVVQ8cVMgN9goVB2yD0feY8xHz1l2p8IEEcc9avsiGxv+d
 Mx1TTrfQ11fhHuOMxed5onQlfh7hQyrAstoARUpM044cxbx483Fblwgr3
 ndu5TMjK8cUtYEI/MnHoDUxZxDzngdYgM6aD3R7u0+ZL7AHvUpLKXqzR2
 an2GOdN+Dgjgc6M9XH2jTDi1iPNqJG7/yGyWhyCqXpSpoftdu7p6rzJZU
 8rBMHL1AcdFH1QHh8pCZ/1qxq82d0NWft0xBm0dEML6uj76gh/srHBQ/J
 IfH3+3CLDy+8t9DUoRlZoW90rSCXSr4T10dmOYxmzIoC33hu2EDoTAWvf
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Tcu82pxy
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
branch HEAD: a24f87696c63e8564c4e04b8715daaca5e2144c9  driver core: device_get_devnode() should take a const *

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202211240329.4Vy3QrMn-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/macintosh/macio_asic.c:136:18: error: initialization of 'int (*)(struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(const struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- powerpc-allmodconfig
    `-- drivers-macintosh-macio_asic.c:error:initialization-of-int-(-)(struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(const-struct-device-struct-kobj_uevent_env-)

elapsed time: 779m

configs tested: 79
configs skipped: 2

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                                defconfig
s390                             allmodconfig
powerpc                           allnoconfig
s390                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
sh                               allmodconfig
powerpc                          allmodconfig
mips                             allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
ia64                             allmodconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
x86_64               randconfig-a011-20221121
x86_64               randconfig-a014-20221121
x86_64               randconfig-a012-20221121
x86_64               randconfig-a013-20221121
x86_64               randconfig-a016-20221121
x86_64               randconfig-a015-20221121
x86_64                            allnoconfig
i386                             allyesconfig
i386                                defconfig
x86_64                              defconfig
s390                 randconfig-r044-20221121
riscv                randconfig-r042-20221121
arc                  randconfig-r043-20221120
arc                  randconfig-r043-20221121
x86_64                               rhel-8.3
sparc                             allnoconfig
m68k                          hp300_defconfig
riscv                               defconfig
microblaze                          defconfig
sh                           se7780_defconfig
mips                           gcw0_defconfig
x86_64                           allyesconfig
arc                        nsim_700_defconfig
sh                           se7722_defconfig
arc                     haps_hs_smp_defconfig
openrisc                       virt_defconfig
powerpc                    klondike_defconfig
arm                           viper_defconfig
i386                 randconfig-a014-20221121
i386                 randconfig-a011-20221121
i386                 randconfig-a013-20221121
i386                 randconfig-a016-20221121
i386                 randconfig-a012-20221121
i386                 randconfig-a015-20221121
i386                          randconfig-c001
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig

clang tested configs:
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64               randconfig-a002-20221121
x86_64               randconfig-a001-20221121
x86_64               randconfig-a004-20221121
x86_64               randconfig-a006-20221121
x86_64               randconfig-a005-20221121
x86_64               randconfig-a003-20221121
x86_64                        randconfig-k001
i386                 randconfig-a001-20221121
i386                 randconfig-a005-20221121
i386                 randconfig-a006-20221121
i386                 randconfig-a004-20221121
i386                 randconfig-a003-20221121
i386                 randconfig-a002-20221121
mips                      malta_kvm_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
