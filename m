Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A19D640140
	for <lists+driverdev-devel@lfdr.de>; Fri,  2 Dec 2022 08:51:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 71E8382130;
	Fri,  2 Dec 2022 07:51:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 71E8382130
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0JwwPy4B7jzw; Fri,  2 Dec 2022 07:51:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 259578210A;
	Fri,  2 Dec 2022 07:51:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 259578210A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2845C1BF836
 for <devel@linuxdriverproject.org>; Fri,  2 Dec 2022 07:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 111654054B
 for <devel@linuxdriverproject.org>; Fri,  2 Dec 2022 07:51:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 111654054B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0qzufyQ5Eo_z for <devel@linuxdriverproject.org>;
 Fri,  2 Dec 2022 07:51:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 677054045C
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 677054045C
 for <devel@driverdev.osuosl.org>; Fri,  2 Dec 2022 07:51:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="295592609"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="295592609"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 23:51:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="647069576"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="647069576"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 01 Dec 2022 23:51:02 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p10p3-000DOu-2W;
 Fri, 02 Dec 2022 07:51:01 +0000
Date: Fri, 02 Dec 2022 15:50:19 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const3] BUILD SUCCESS
 ee2cf7cea44aff3ad2e787dd0eb6549da4ba5fd9
Message-ID: <6389ae3b.fX6dOewbSRWBNR4w%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669967464; x=1701503464;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=tzxmsmw2UX8Fea1+yHRbP5in8m6ylBzSa9y/wZndvtE=;
 b=Rs7lwZfrdQHn87eBJ1diWUo/6SqvPni5HglwYp9iAv3/mUvvuJCuDV0R
 ne3hApK1QtHDl2jeYFFqK8AbtZn7MNT7naKchfuvwxFAGbQXp739Bstkm
 ZXZR2vPoNvLeDusCAZcxxIY9NSnYU6lnyDqBXEvPk2iZiKa631r+6fXsC
 pYp8I0te7TeS/I4QPErclm9tlcoluFp6Ja4FL1IPMdjxCskkUAnmNLCcu
 /j4fQB6h2S7YGMSzXC6JyVBkCQv95vo1nJ8jt1Czuzm44PhtTTP79pkAt
 gyITRG5w5IHoQyDqGZm3w5OEZbkay2O58zDOioVRyPR2Cpja4niYfEZad
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rs7lwZfr
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
branch HEAD: ee2cf7cea44aff3ad2e787dd0eb6549da4ba5fd9  firmware_loader: fix up to_fw_sysfs() to preserve const

elapsed time: 728m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
x86_64                          rhel-8.3-func
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
powerpc                           allnoconfig
s390                             allyesconfig
sh                               allmodconfig
x86_64                         rhel-8.3-kunit
ia64                             allmodconfig
m68k                             allyesconfig
x86_64                           rhel-8.3-kvm
m68k                             allmodconfig
x86_64                           rhel-8.3-syz
arc                              allyesconfig
mips                             allyesconfig
alpha                            allyesconfig
powerpc                          allmodconfig
arc                  randconfig-r043-20221201
s390                 randconfig-r044-20221201
riscv                randconfig-r042-20221201
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
x86_64                              defconfig
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                               rhel-8.3
i386                          randconfig-a005
x86_64                           allyesconfig
x86_64                            allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
xtensa                           alldefconfig
microblaze                          defconfig
powerpc                      arches_defconfig
powerpc                      tqm8xx_defconfig

clang tested configs:
hexagon              randconfig-r045-20221201
hexagon              randconfig-r041-20221201
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
