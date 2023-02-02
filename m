Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EBD6872F7
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Feb 2023 02:26:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4866360BEE;
	Thu,  2 Feb 2023 01:26:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4866360BEE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EjUX88R972bS; Thu,  2 Feb 2023 01:26:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1AB4860B9E;
	Thu,  2 Feb 2023 01:26:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1AB4860B9E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4FDA41BF2C0
 for <devel@linuxdriverproject.org>; Thu,  2 Feb 2023 01:26:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2968C60BA7
 for <devel@linuxdriverproject.org>; Thu,  2 Feb 2023 01:26:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2968C60BA7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oz_yjyTrUpS2 for <devel@linuxdriverproject.org>;
 Thu,  2 Feb 2023 01:26:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D181760B9E
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D181760B9E
 for <devel@driverdev.osuosl.org>; Thu,  2 Feb 2023 01:26:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="307977072"
X-IronPort-AV: E=Sophos;i="5.97,266,1669104000"; d="scan'208";a="307977072"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 17:26:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="993889449"
X-IronPort-AV: E=Sophos;i="5.97,266,1669104000"; d="scan'208";a="993889449"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 01 Feb 2023 17:26:05 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pNOMS-0005z8-1F;
 Thu, 02 Feb 2023 01:26:00 +0000
Date: Thu, 02 Feb 2023 09:25:35 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 3c0eee8be59d8fbd2b794443bbe787c35c2e2076
Message-ID: <63db110f.lGlX4LHmc7GJF7ku%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675301168; x=1706837168;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vS8tgO59yymGqytWOHu5Nq3ySuWdmXDjO8pGY2eIRkE=;
 b=aslJFcKzRy6IMRz1o18dAzCIiblhsQGUIzXbV+0hZ7Ok0pOkrWcCh/DD
 Q0uG6y/qQ5N6rBd6a6kTLCtvvYVMuSkMcMgkETr0alMnldBhYEJZd1XoN
 kyr1IxKUHSOD4WqFxKDOYqZvf/4GUAOlYHPZ1GtK+t2mQGcQV09P9wCy/
 bNVf7ewR3cjmPr+TaWfYBmfh4kwFMjaH7T7lFlXeUB4EinGtgQqE3IBCk
 lb8i/NaxJGZ3wcgRSOHXHHhU74zq7eVn28bpsn222FINiRfinAbioMU/e
 N8KgNu809hVUe/P6/+kfH0uabUxIhRq+lY3T6ElvXpvCtXY0vImJxV/En
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aslJFcKz
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
branch HEAD: 3c0eee8be59d8fbd2b794443bbe787c35c2e2076  bus: remove the "p" pointer in struct bus_type

elapsed time: 723m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
i386                 randconfig-a002-20230130
i386                 randconfig-a001-20230130
arc                              allyesconfig
i386                 randconfig-a004-20230130
alpha                            allyesconfig
i386                 randconfig-a003-20230130
s390                             allyesconfig
i386                 randconfig-a005-20230130
i386                 randconfig-a006-20230130
x86_64               randconfig-a001-20230130
x86_64               randconfig-a003-20230130
um                             i386_defconfig
x86_64               randconfig-a004-20230130
um                           x86_64_defconfig
x86_64               randconfig-a002-20230130
x86_64               randconfig-a006-20230130
x86_64               randconfig-a005-20230130
ia64                             allmodconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
arc                  randconfig-r043-20230129
arm                  randconfig-r046-20230129
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
arm                  randconfig-r046-20230130
x86_64                           rhel-8.3-bpf
arc                  randconfig-r043-20230130
x86_64                           rhel-8.3-kvm
i386                                defconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                             allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64               randconfig-a012-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a016-20230130
x86_64               randconfig-a014-20230130
hexagon              randconfig-r041-20230129
hexagon              randconfig-r045-20230130
hexagon              randconfig-r041-20230130
hexagon              randconfig-r045-20230129
s390                 randconfig-r044-20230129
s390                 randconfig-r044-20230130
riscv                randconfig-r042-20230129
riscv                randconfig-r042-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a014-20230130
i386                 randconfig-a013-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a016-20230130
i386                 randconfig-a011-20230130

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
