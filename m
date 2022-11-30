Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AE97863D2E9
	for <lists+driverdev-devel@lfdr.de>; Wed, 30 Nov 2022 11:12:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4FD6660D4C;
	Wed, 30 Nov 2022 10:12:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4FD6660D4C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0tTlk7logOQV; Wed, 30 Nov 2022 10:12:07 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EE00260A70;
	Wed, 30 Nov 2022 10:12:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EE00260A70
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7D2881BF574
 for <devel@linuxdriverproject.org>; Wed, 30 Nov 2022 10:12:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 58C6E404DB
 for <devel@linuxdriverproject.org>; Wed, 30 Nov 2022 10:12:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 58C6E404DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u9xgaP4aHela for <devel@linuxdriverproject.org>;
 Wed, 30 Nov 2022 10:12:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B4945400A4
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B4945400A4
 for <devel@driverdev.osuosl.org>; Wed, 30 Nov 2022 10:12:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="316511196"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="316511196"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 02:12:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10546"; a="818575859"
X-IronPort-AV: E=Sophos;i="5.96,206,1665471600"; d="scan'208";a="818575859"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 30 Nov 2022 02:12:00 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p0K4N-000AyL-2Y;
 Wed, 30 Nov 2022 10:11:59 +0000
Date: Wed, 30 Nov 2022 18:11:43 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 fb12940f51d96ead10f9c0fd578e69b8de10ca81
Message-ID: <63872c5f.yAWHPevGWMUuR8lL%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669803122; x=1701339122;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=v9CAxzswZ3yed2D6mlwX/lCKY5ZqQZjme8EkBoP2HUU=;
 b=UeYcoJD2XZHfURFvd1Wpp9z4Gpl7U+XoKGF/wgu8OPf4B0eyw9lUefgH
 JjgyhqlwWZgoZdxukwYJJc4UwBAr9xBM9icKIcp2v4p6YSCLQWP27q25A
 cCJN52RcI15VKEiuDDt+1IWMSjcj6VaZS/ERD5kIrKzRK2vmdp94ZOqx2
 p+IH0JzhfEqCPdKNi4U8UMNtx87HZfhl/VKp+QZILl/dsZY1TIjyplko9
 KjhaHpYD4YBH2WG5HWyv3rrVebYriUnGK8c41q57sQVCbs36KKcgshLVk
 XwWdtWa9GLnZg7E1NuTqIkDFTocF1YhTw7aU2pcsK8rRkO8IeK039raCn
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UeYcoJD2
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
branch HEAD: fb12940f51d96ead10f9c0fd578e69b8de10ca81  driver core: fix up some missing class.devnode() conversions.

elapsed time: 1537m

configs tested: 65
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
x86_64                          rhel-8.3-func
x86_64                              defconfig
i386                 randconfig-a003-20221128
alpha                               defconfig
x86_64                               rhel-8.3
i386                 randconfig-a006-20221128
s390                                defconfig
i386                 randconfig-a001-20221128
s390                             allmodconfig
i386                 randconfig-a004-20221128
x86_64                        randconfig-a004
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a002
x86_64                         rhel-8.3-kunit
s390                             allyesconfig
m68k                             allyesconfig
i386                 randconfig-a002-20221128
arc                  randconfig-r043-20221128
i386                                defconfig
x86_64                           allyesconfig
ia64                             allmodconfig
m68k                             allmodconfig
arc                              allyesconfig
i386                 randconfig-a005-20221128
x86_64                        randconfig-a006
x86_64               randconfig-a001-20221128
x86_64                           rhel-8.3-kvm
alpha                            allyesconfig
x86_64               randconfig-a003-20221128
x86_64               randconfig-a004-20221128
x86_64               randconfig-a002-20221128
x86_64               randconfig-a005-20221128
powerpc                           allnoconfig
x86_64               randconfig-a006-20221128
i386                             allyesconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
x86_64                            allnoconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig

clang tested configs:
i386                 randconfig-a016-20221128
x86_64               randconfig-a013-20221128
x86_64               randconfig-a012-20221128
x86_64               randconfig-a014-20221128
i386                 randconfig-a012-20221128
x86_64               randconfig-a011-20221128
i386                 randconfig-a011-20221128
s390                 randconfig-r044-20221128
i386                 randconfig-a013-20221128
x86_64               randconfig-a016-20221128
i386                 randconfig-a014-20221128
i386                 randconfig-a015-20221128
x86_64                        randconfig-a001
hexagon              randconfig-r045-20221128
x86_64               randconfig-a015-20221128
x86_64                        randconfig-a003
hexagon              randconfig-r041-20221128
x86_64                        randconfig-a005
riscv                randconfig-r042-20221128

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
