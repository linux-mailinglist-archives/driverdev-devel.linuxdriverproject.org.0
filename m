Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2933A5AC095
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Sep 2022 20:20:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7CB45408A5;
	Sat,  3 Sep 2022 18:20:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CB45408A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JnMrBnhVHmbc; Sat,  3 Sep 2022 18:20:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EBB28415C9;
	Sat,  3 Sep 2022 18:20:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EBB28415C9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B78251BF599
 for <devel@linuxdriverproject.org>; Sat,  3 Sep 2022 18:20:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 9260F8183D
 for <devel@linuxdriverproject.org>; Sat,  3 Sep 2022 18:20:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9260F8183D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oPB1fZstpkS0 for <devel@linuxdriverproject.org>;
 Sat,  3 Sep 2022 18:20:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4E03C81842
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4E03C81842
 for <devel@driverdev.osuosl.org>; Sat,  3 Sep 2022 18:20:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10459"; a="275922039"
X-IronPort-AV: E=Sophos;i="5.93,287,1654585200"; d="scan'208";a="275922039"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2022 11:20:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,287,1654585200"; d="scan'208";a="564302554"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 03 Sep 2022 11:20:03 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oUXkL-00020h-2S;
 Sat, 03 Sep 2022 18:19:57 +0000
Date: Sun, 04 Sep 2022 02:18:58 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 c749b275056d4d1023af125b320c91a24d6856b8
Message-ID: <63139a92.sdXU0I/bHJpCoCDi%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662229206; x=1693765206;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=V3Ni2OBh87r03VXNKdCC2fQqlVJ4PG6R7LeS+6oZXgU=;
 b=nc+qFtucfUKBGCAvV/KUI9ovrK69NGCAJFzokUvIiuSUtOhJFTITGC84
 GIDR+KbtZZH9N1Z5RckqJiGdwlC7gdQJFe5d51Y5Ifd8+qIUbpUD0dmYD
 ZhqJBqb6D8XMO1yES7S6YBVKsIm/V3jciXbMMR4ZbIEnxAtoQF9TPxhfJ
 Gdz9Kle3glNcHDvu6D43cMTIdCZTjh1YODw+5g5u0FJkYrdvenFLlNg14
 OhwmLgBhe3a+7fRxagk9vvLZT3J3T/v9fglBbn/ooh8XB+YDQPArF7wbt
 73Q9T4ORAJiV+eNwXKILiHBgMbs6S93uCFhBiGpt4LqlDLDetaItOJ1zA
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nc+qFtuc
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
branch HEAD: c749b275056d4d1023af125b320c91a24d6856b8  Revert "arch_topology: Make cluster topology span at least SMT CPUs"

elapsed time: 725m

configs tested: 79
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                          randconfig-a001
i386                          randconfig-a003
arc                  randconfig-r043-20220901
i386                          randconfig-a005
i386                          randconfig-a014
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                        randconfig-a004
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a002
x86_64                              defconfig
x86_64                           rhel-8.3-kvm
i386                                defconfig
x86_64                               rhel-8.3
i386                          randconfig-a012
x86_64                           rhel-8.3-syz
i386                          randconfig-a016
x86_64                           allyesconfig
x86_64                        randconfig-a006
alpha                             allnoconfig
m68k                             allmodconfig
riscv                             allnoconfig
arc                              allyesconfig
csky                              allnoconfig
arc                               allnoconfig
alpha                            allyesconfig
powerpc                 mpc85xx_cds_defconfig
x86_64                        randconfig-a013
m68k                             allyesconfig
x86_64                        randconfig-a011
i386                             allyesconfig
xtensa                  nommu_kc705_defconfig
arm                        multi_v7_defconfig
parisc64                            defconfig
x86_64                        randconfig-a015
loongarch                 loongson3_defconfig
sh                      rts7751r2d1_defconfig
sh                        dreamcast_defconfig
powerpc                mpc7448_hpc2_defconfig
arm                                 defconfig
arm                            mps2_defconfig
mips                             allyesconfig
xtensa                          iss_defconfig
powerpc                           allnoconfig
arm                       multi_v4t_defconfig
xtensa                       common_defconfig
sh                     magicpanelr2_defconfig
powerpc                          allmodconfig
sh                               allmodconfig
arm                              allyesconfig
arm64                            allyesconfig
ia64                             allmodconfig
i386                          randconfig-c001
mips                 randconfig-c004-20220901
arm                              allmodconfig
loongarch                         allnoconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a013
hexagon              randconfig-r045-20220901
i386                          randconfig-a011
i386                          randconfig-a006
hexagon              randconfig-r041-20220901
riscv                randconfig-r042-20220901
s390                 randconfig-r044-20220901
x86_64                        randconfig-a005
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a003
arm                         mv78xx0_defconfig
powerpc                   microwatt_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
mips                           ip22_defconfig
x86_64                        randconfig-a016
powerpc                       ebony_defconfig
riscv                            alldefconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
