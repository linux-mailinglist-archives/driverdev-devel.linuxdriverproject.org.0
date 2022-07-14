Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 312525744CA
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Jul 2022 08:02:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED63681092;
	Thu, 14 Jul 2022 06:02:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ED63681092
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zA49FlKndF53; Thu, 14 Jul 2022 06:02:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 49EC3812ED;
	Thu, 14 Jul 2022 06:02:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 49EC3812ED
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 041731BF395
 for <devel@linuxdriverproject.org>; Thu, 14 Jul 2022 06:02:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D6EDC84719
 for <devel@linuxdriverproject.org>; Thu, 14 Jul 2022 06:02:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D6EDC84719
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9ILznDLz4y8K for <devel@linuxdriverproject.org>;
 Thu, 14 Jul 2022 06:02:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 286AA84718
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 286AA84718
 for <devel@driverdev.osuosl.org>; Thu, 14 Jul 2022 06:02:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10407"; a="285448974"
X-IronPort-AV: E=Sophos;i="5.92,269,1650956400"; d="scan'208";a="285448974"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2022 23:02:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,269,1650956400"; d="scan'208";a="772511261"
Received: from lkp-server01.sh.intel.com (HELO fd2c14d642b4) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 13 Jul 2022 23:02:01 -0700
Received: from kbuild by fd2c14d642b4 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oBrvE-0000Gm-Gw;
 Thu, 14 Jul 2022 06:02:00 +0000
Date: Thu, 14 Jul 2022 14:01:51 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 6c3c267e5fbc637c8fc4b1d075e3c43e328550a6
Message-ID: <62cfb14f.m257NH48uKqI0Zvr%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657778523; x=1689314523;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=wZSLKRIxvKYF5kqj/nv9zPRJD5jYc2DS9wYJIZwgYE4=;
 b=AAm7Jg9PjWxLxfpucKZ4KsziYRkKde7KOHeioUmVA0n9gI5G2YSTs1Gb
 hzbPdyOSM9wA1yLK3DTLL5d2Y+akBzST7WoLYI/2p+4URzk1M5sLGOA6g
 1GuxJDVRlcC2yXQ3mMkB6nhWLDkjIt8u7ymRHJ1Jfo7HWG9ZUsUalfh77
 kc5fa7/1k0AFoayvinJNY+ZugxbQ5VAIvYOP9YkRfLkwSBtqLr66h9P9Z
 vhX2dx0mHVnxE7SbY0rko3EGbD1LKP9whfkbJVRz6EAXSzHxKlcTnxy9B
 bfqDLmZrBCLgzhPjAGiYd30y7//inMhT25/PzGV0wvUQxncQTVRFXkHvL
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AAm7Jg9P
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 6c3c267e5fbc637c8fc4b1d075e3c43e328550a6  Documentation/process: Add embargoed HW contact for LLVM

elapsed time: 2569m

configs tested: 39
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                          allmodconfig
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
i386                                defconfig
i386                             allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220710
arc                  randconfig-r043-20220710
s390                 randconfig-r044-20220710
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           allyesconfig

clang tested configs:
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r041-20220710
hexagon              randconfig-r045-20220710

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
