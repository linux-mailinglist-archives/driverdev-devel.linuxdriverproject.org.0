Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C42A765DDE7
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Jan 2023 21:56:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BB308400E2;
	Wed,  4 Jan 2023 20:56:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BB308400E2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G5dQ9uhKK6Md; Wed,  4 Jan 2023 20:56:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 793AE400DC;
	Wed,  4 Jan 2023 20:56:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 793AE400DC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 248161BF82C
 for <devel@linuxdriverproject.org>; Wed,  4 Jan 2023 20:56:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0634D81D0C
 for <devel@linuxdriverproject.org>; Wed,  4 Jan 2023 20:56:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0634D81D0C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ohqZwg9siKn5 for <devel@linuxdriverproject.org>;
 Wed,  4 Jan 2023 20:56:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E679181AF6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E679181AF6
 for <devel@driverdev.osuosl.org>; Wed,  4 Jan 2023 20:56:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="319743112"
X-IronPort-AV: E=Sophos;i="5.96,301,1665471600"; d="scan'208";a="319743112"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 12:56:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="605299829"
X-IronPort-AV: E=Sophos;i="5.96,301,1665471600"; d="scan'208";a="605299829"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 04 Jan 2023 12:56:10 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pDAny-0000lw-0I;
 Wed, 04 Jan 2023 20:56:10 +0000
Date: Thu, 05 Jan 2023 04:56:01 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 ba464f08e1c38c92dd57abb875540f2c740f3c19
Message-ID: <63b5e7e1.8/cwq7h4Xz9wwRf+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672865773; x=1704401773;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=hn/WoSbs267SETEHqdogDPloh68PKF714FqZByVm5Ms=;
 b=Ch904oemVUZCSWaOO5WNQvVdAFJTxXmmtg1DcyBK+6AAOpdffzFb5Tmj
 EMFS/ci0AJH4Aa1TbXvq7m1ucuxYiB3E2U5CzhysauWfrbbg7uF3NAJz5
 JnLbUivl4/ZgMTzvUooNT5xHcIwTHpxXFOmT9+gxodxv8uV34br19OHjU
 F9CEId+2XbkiPvwpZk6UfHlcDZ9KtbMQHtwASwYy4ATA+mpqSGn6kR4ZZ
 r+OsxPU9OiC0/LoMY9uYCC89VfEoJxrCOqjOLrekgiLyXs6hJQWe2qeKS
 qp3E4lGfYgBZl1CFepm4M5/i3t6kDBBlK+XcsVjEO4Li9Whg20UqIdGIl
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ch904oem
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: ba464f08e1c38c92dd57abb875540f2c740f3c19  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 721m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
x86_64                            allnoconfig
s390                                defconfig
s390                             allmodconfig
x86_64                              defconfig
sh                               allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
powerpc                          allmodconfig
i386                          randconfig-a005
x86_64                           rhel-8.3-bpf
mips                             allyesconfig
s390                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3
x86_64                           rhel-8.3-kvm
i386                                defconfig
arc                  randconfig-r043-20230103
riscv                randconfig-r042-20230103
arm                                 defconfig
alpha                            allyesconfig
ia64                             allmodconfig
x86_64                           allyesconfig
s390                 randconfig-r044-20230103
m68k                             allyesconfig
m68k                             allmodconfig
x86_64                          rhel-8.3-func
arc                              allyesconfig
x86_64                    rhel-8.3-kselftests
arm64                            allyesconfig
i386                             allyesconfig
x86_64               randconfig-a003-20230102
x86_64               randconfig-a001-20230102
x86_64               randconfig-a004-20230102
arm                              allyesconfig
x86_64               randconfig-a002-20230102
x86_64               randconfig-a005-20230102
x86_64               randconfig-a006-20230102

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
i386                 randconfig-a011-20230102
x86_64               randconfig-a011-20230102
x86_64               randconfig-a014-20230102
i386                 randconfig-a014-20230102
arm                  randconfig-r046-20230103
x86_64               randconfig-a012-20230102
i386                 randconfig-a013-20230102
i386                 randconfig-a012-20230102
hexagon              randconfig-r045-20230103
x86_64               randconfig-a013-20230102
i386                          randconfig-a006
i386                 randconfig-a016-20230102
hexagon              randconfig-r041-20230103
i386                 randconfig-a015-20230102
x86_64               randconfig-a015-20230102
x86_64                          rhel-8.3-rust
x86_64               randconfig-a016-20230102

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
