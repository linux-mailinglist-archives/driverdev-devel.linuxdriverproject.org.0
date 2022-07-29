Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12657584933
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jul 2022 02:48:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3409E40432;
	Fri, 29 Jul 2022 00:48:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3409E40432
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a-YZBi7-SGUU; Fri, 29 Jul 2022 00:48:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id BCCA54014A;
	Fri, 29 Jul 2022 00:48:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BCCA54014A
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6F0431C11A5
 for <devel@linuxdriverproject.org>; Fri, 29 Jul 2022 00:48:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4906A60A73
 for <devel@linuxdriverproject.org>; Fri, 29 Jul 2022 00:48:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4906A60A73
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wpm9S2Oo_-jW for <devel@linuxdriverproject.org>;
 Fri, 29 Jul 2022 00:48:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 11E99605B2
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 11E99605B2
 for <devel@driverdev.osuosl.org>; Fri, 29 Jul 2022 00:48:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="289856747"
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; d="scan'208";a="289856747"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 17:48:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; d="scan'208";a="576740327"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 28 Jul 2022 17:48:01 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oHEAa-000AnS-2V;
 Fri, 29 Jul 2022 00:48:00 +0000
Date: Fri, 29 Jul 2022 08:47:32 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 c528bbb7dc062c707f6064eec1bccafb8490758f
Message-ID: <62e32e24.8nGdo7JEpWJ/tRLd%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659055699; x=1690591699;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=kn3tm6HH3QH0MX9eAjiNhiuvu8hrFYt9eCApcem/m0M=;
 b=GBoxzuHKF2wmsIcx1AJ1OpNVLpyK4lDY3lM5uEz3c5M5Ka0foDeI3fXf
 mgEZhCPjV1guzcr4kPp8ZSCCv6ZsXiPBBPO81xG+9lkChgtUN+XAPzZsr
 MRUx2Q16gFyPZoQjSBbXT9F5nJFTrBFiy06k7ASASsS7yX5Uz5NApiT2e
 yirCqdmSiFJuWeV9ZXDHJHDBgC6jdhVDxkw6j69FuQEYhVZ1aHUo3ADbS
 GOXOP+8cyDtv1KVMLFuIJtdwDCloJI3T6c5LnnY+bRkFPiE9c25i/BAlP
 qAMy4lfwaw3ibdWudM+6GLtxKEHUmmk9lTnPVoyUUwSKmEk+V8ShkVduf
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GBoxzuHK
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: c528bbb7dc062c707f6064eec1bccafb8490758f  staging: vt6655: Convert macro vt6655_mac_clear_stck_ds to function

elapsed time: 956m

configs tested: 53
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
x86_64                        randconfig-a015
powerpc                          allmodconfig
x86_64                        randconfig-a013
sh                               allmodconfig
i386                             allyesconfig
x86_64                        randconfig-a004
mips                             allyesconfig
x86_64                        randconfig-a011
ia64                             allmodconfig
powerpc                           allnoconfig
i386                          randconfig-a001
x86_64                        randconfig-a002
x86_64                          rhel-8.3-func
i386                          randconfig-a003
x86_64                         rhel-8.3-kunit
arm                                 defconfig
i386                          randconfig-a005
arc                  randconfig-r043-20220728
i386                          randconfig-a014
x86_64                           rhel-8.3-kvm
riscv                randconfig-r042-20220728
i386                          randconfig-a012
x86_64                        randconfig-a006
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a016
x86_64                           rhel-8.3-syz
s390                 randconfig-r044-20220728
arm64                            allyesconfig
arm                              allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig

clang tested configs:
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220728
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220728
x86_64                        randconfig-a012
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
i386                          randconfig-a011
x86_64                        randconfig-a001
x86_64                        randconfig-a003

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
