Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7057064694A
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Dec 2022 07:34:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DA3EC81F3F;
	Thu,  8 Dec 2022 06:34:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DA3EC81F3F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d1wIJjjcKXJG; Thu,  8 Dec 2022 06:34:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 92A4781F3A;
	Thu,  8 Dec 2022 06:33:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 92A4781F3A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1C62E1BF44C
 for <devel@linuxdriverproject.org>; Thu,  8 Dec 2022 06:33:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EB691408D3
 for <devel@linuxdriverproject.org>; Thu,  8 Dec 2022 06:33:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EB691408D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x42DFkSn91lw for <devel@linuxdriverproject.org>;
 Thu,  8 Dec 2022 06:33:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BE841400D3
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BE841400D3
 for <devel@driverdev.osuosl.org>; Thu,  8 Dec 2022 06:33:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="317098912"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="317098912"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 22:33:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="821225000"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="821225000"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 07 Dec 2022 22:33:35 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p3ATO-0000v9-1c;
 Thu, 08 Dec 2022 06:33:34 +0000
Date: Thu, 08 Dec 2022 14:32:56 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const2] BUILD SUCCESS
 c79f17163bd10a3a64a84654e9ef2c5d063e5346
Message-ID: <63918518.8MWpMlf8voykUpUf%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670481236; x=1702017236;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=lhqKiKu6nO96glcc30lBqG4mFBRCZL6kuuLAZTcXZT4=;
 b=OqJa5j+6JqiRZCNJDzMrv/VKTBweM1GA/M3g1Qndc/Yg0jCpx94VpedU
 sWoLVUecJUfXRSlgCyhJ+M6UcbnsdGhY6NADxm5PRA00L1oU0phuApMFx
 WrjMGTjj/yM/hKJPEoFv9R0lzqxHv5EhFdE17TEZOzvSHq0O0mgTtYD16
 TQaVgqYywxdDlOQCRJJo2GWK4++iYwomHUcxloDWO2qzwqx765utQI6js
 +jAwnpagYvWiDdF+esDTtlALJqrVQpet96vRwcxEjlzeV4oaMeGg3maIk
 8Sy/QAWE8HxK3fPu/DRWgEYto8h7EFUlu4hr2kHDNSmFBvwqoeDFousi2
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OqJa5j+6
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
branch HEAD: c79f17163bd10a3a64a84654e9ef2c5d063e5346  driver core: make struct device_type.uevent() take a const *

elapsed time: 726m

configs tested: 61
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
powerpc                           allnoconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
sh                               allmodconfig
x86_64                        randconfig-a004
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a002
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
ia64                             allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
x86_64                              defconfig
arc                              allyesconfig
arc                  randconfig-r043-20221207
x86_64                               rhel-8.3
alpha                            allyesconfig
x86_64                           allyesconfig
i386                          randconfig-a014
riscv                randconfig-r042-20221207
i386                          randconfig-a012
s390                 randconfig-r044-20221207
i386                          randconfig-a016
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a005
x86_64                        randconfig-a015
arm                                 defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
i386                             allyesconfig
arm64                            allyesconfig
arm                              allyesconfig
x86_64                            allnoconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
arm                  randconfig-r046-20221207
hexagon              randconfig-r041-20221207
i386                          randconfig-a013
hexagon              randconfig-r045-20221207
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
