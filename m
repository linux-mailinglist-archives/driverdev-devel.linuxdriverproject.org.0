Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 90B14676AF8
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Jan 2023 04:34:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6E35281E3C;
	Sun, 22 Jan 2023 03:34:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6E35281E3C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UOkiTeYefP9L; Sun, 22 Jan 2023 03:34:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 40ABB81E6F;
	Sun, 22 Jan 2023 03:34:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 40ABB81E6F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1FE461BF2C6
 for <devel@linuxdriverproject.org>; Sun, 22 Jan 2023 03:34:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 44F01408C9
 for <devel@linuxdriverproject.org>; Sun, 22 Jan 2023 03:34:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44F01408C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tJckMqorc2Mj for <devel@linuxdriverproject.org>;
 Sun, 22 Jan 2023 03:34:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9AB8040569
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9AB8040569
 for <devel@driverdev.osuosl.org>; Sun, 22 Jan 2023 03:34:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10597"; a="323553491"
X-IronPort-AV: E=Sophos;i="5.97,235,1669104000"; d="scan'208";a="323553491"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2023 19:34:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10597"; a="729559343"
X-IronPort-AV: E=Sophos;i="5.97,235,1669104000"; d="scan'208";a="729559343"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 21 Jan 2023 19:34:12 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pJR7T-0004ie-1I;
 Sun, 22 Jan 2023 03:34:11 +0000
Date: Sun, 22 Jan 2023 11:33:13 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 739790605705ddcf18f21782b9c99ad7d53a8c11
Message-ID: <63ccae79.S5mbNOm8w1+I6tfh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674358454; x=1705894454;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=w6K4MMnKGz51rGsc6VUFyzPC+8J4KjtBuZRx17Udofc=;
 b=HJi5PIjXf9iqyTnVi1rvJKiiP44PWE9x9GCxJcLHsQE41MKUmCgdgNiM
 9lc14ROY3lk0mQIbS5+aK4O624JC42WSKSrPUZ9LLkzfkik6wZJiZpOIl
 hLUfs56PwN+Fr7bKdj7gF2SrpIBSbRgpLyCUyIpQTPseqIKuT6gpp1gAW
 kykMJnR2qtplLJ39+tGhqrjkSl3vC0devqN4VLkxu//YJl4RfWf121PDM
 O8uIB++dfD9HRUkRDx632wlyxoaKERmN1rkRmPKYW26wdpsOU+1y+zD7M
 chTxlwWhiH8P9Zzd3/0W7hsx6pFGq31mNd+kSiHKF/nSQX38m8eakURGe
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HJi5PIjX
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
branch HEAD: 739790605705ddcf18f21782b9c99ad7d53a8c11  prlimit: do_prlimit needs to have a speculation check

elapsed time: 724m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
um                             i386_defconfig
x86_64                            allnoconfig
um                           x86_64_defconfig
s390                                defconfig
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a014
x86_64                          rhel-8.3-func
i386                          randconfig-a012
s390                             allyesconfig
i386                                defconfig
i386                          randconfig-a001
x86_64                              defconfig
sh                               allmodconfig
arm                                 defconfig
x86_64                           rhel-8.3-syz
ia64                             allmodconfig
x86_64                        randconfig-a013
i386                          randconfig-a003
x86_64                               rhel-8.3
x86_64                        randconfig-a004
i386                             allyesconfig
x86_64                        randconfig-a011
x86_64                         rhel-8.3-kunit
i386                          randconfig-a016
m68k                             allmodconfig
arc                  randconfig-r043-20230121
x86_64                           rhel-8.3-kvm
arm                  randconfig-r046-20230121
x86_64                        randconfig-a002
arc                              allyesconfig
x86_64                           rhel-8.3-bpf
mips                             allyesconfig
x86_64                        randconfig-a006
alpha                            allyesconfig
powerpc                          allmodconfig
i386                          randconfig-a005
x86_64                           allyesconfig
x86_64                        randconfig-a015
m68k                             allyesconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust
i386                          randconfig-a013
i386                          randconfig-a002
i386                          randconfig-a011
i386                          randconfig-a004
x86_64                        randconfig-a016
i386                          randconfig-a015
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a006
x86_64                        randconfig-a012
riscv                randconfig-r042-20230121
hexagon              randconfig-r041-20230121
x86_64                        randconfig-a014
hexagon              randconfig-r045-20230121
s390                 randconfig-r044-20230121

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
