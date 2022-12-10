Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE81648D07
	for <lists+driverdev-devel@lfdr.de>; Sat, 10 Dec 2022 04:58:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8614141A6C;
	Sat, 10 Dec 2022 03:58:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8614141A6C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8J01KB2_TJDu; Sat, 10 Dec 2022 03:58:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id ED69A41B2C;
	Sat, 10 Dec 2022 03:58:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ED69A41B2C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id F220D1BF955
 for <devel@linuxdriverproject.org>; Sat, 10 Dec 2022 03:58:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C936C607FF
 for <devel@linuxdriverproject.org>; Sat, 10 Dec 2022 03:58:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C936C607FF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CxukwKshyThS for <devel@linuxdriverproject.org>;
 Sat, 10 Dec 2022 03:58:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D81C660806
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D81C660806
 for <devel@driverdev.osuosl.org>; Sat, 10 Dec 2022 03:58:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="297941617"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="297941617"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 19:58:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="647603335"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="647603335"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 09 Dec 2022 19:58:39 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p3r0Y-0002Fb-33;
 Sat, 10 Dec 2022 03:58:38 +0000
Date: Sat, 10 Dec 2022 11:58:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 54263dfda0cf67c6747dfcdd3783c0eaa81109d6
Message-ID: <639403ec.NGk45rJ/T1yxT9OJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670644722; x=1702180722;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=FgmYrjIS0XG3mmHS66kyXFKFE7YjIXLg5IhEw2X6OzU=;
 b=ACmxswrNu59Yn1lV+ceyF7Lw/nvjZifbwtJvwwc/akCRV0U4PHCqHC0F
 HKj23NMju1qKZBNldk5y4Xu3nBk6sfAFdk1vgvrL15MqgYFOItk3SN/ol
 RBAfgUgom1i3JLn/mw19fu98iptyIaMnnF1WGgDG1QtZofiKssxea+Nod
 rDHIsCCE7DvCSudEilhM4Bsbr2YRsBejMhCujUuufkRA+mhiylyhMcCM2
 KbxVMtn5sfBUdLRJMXlbGPBiIQZBQ+/Ilh9InunLw3HPiTIIm+eI80Rwl
 mMHjlqPHBgmF/7kLaioiQl2qwRBN0ozFHkt/99/3ZBllMW8KVjrqhvS45
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ACmxswrN
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: 54263dfda0cf67c6747dfcdd3783c0eaa81109d6  kobject: kset_uevent_ops: make uevent() callback take a const *

elapsed time: 721m

configs tested: 61
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
alpha                            allyesconfig
m68k                             allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
m68k                             allmodconfig
powerpc                           allnoconfig
arc                              allyesconfig
s390                                defconfig
s390                             allmodconfig
arc                  randconfig-r043-20221209
s390                 randconfig-r044-20221209
riscv                randconfig-r042-20221209
s390                             allyesconfig
x86_64                           rhel-8.3-bpf
x86_64                              defconfig
sh                               allmodconfig
x86_64                           rhel-8.3-syz
i386                                defconfig
x86_64                         rhel-8.3-kunit
i386                          randconfig-a014
x86_64                          rhel-8.3-rust
x86_64                           rhel-8.3-kvm
x86_64                               rhel-8.3
mips                             allyesconfig
x86_64                        randconfig-a004
i386                          randconfig-a012
x86_64                          rhel-8.3-func
powerpc                          allmodconfig
x86_64                    rhel-8.3-kselftests
x86_64                           allyesconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a013
i386                          randconfig-a016
x86_64                        randconfig-a006
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r041-20221209
arm                  randconfig-r046-20221209
hexagon              randconfig-r045-20221209
i386                          randconfig-a013
i386                          randconfig-a011
x86_64                        randconfig-a014
x86_64                        randconfig-a001
x86_64                        randconfig-a012
i386                          randconfig-a015
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
