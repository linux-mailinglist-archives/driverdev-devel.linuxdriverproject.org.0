Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B205908E2
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Aug 2022 01:04:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC35460F69;
	Thu, 11 Aug 2022 23:04:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC35460F69
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yq_ZlaUewOpE; Thu, 11 Aug 2022 23:04:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B44E60B8B;
	Thu, 11 Aug 2022 23:04:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B44E60B8B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 72A7E1BF396
 for <devel@linuxdriverproject.org>; Thu, 11 Aug 2022 23:04:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4D44260BB9
 for <devel@linuxdriverproject.org>; Thu, 11 Aug 2022 23:04:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4D44260BB9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id an5ZaaBKycHF for <devel@linuxdriverproject.org>;
 Thu, 11 Aug 2022 23:04:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0316A60B8B
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0316A60B8B
 for <devel@driverdev.osuosl.org>; Thu, 11 Aug 2022 23:04:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="274535559"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="274535559"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 16:04:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="556318048"
Received: from lkp-server02.sh.intel.com (HELO cfab306db114) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 11 Aug 2022 16:04:12 -0700
Received: from kbuild by cfab306db114 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oMHDn-0000ln-1W;
 Thu, 11 Aug 2022 23:04:11 +0000
Date: Fri, 12 Aug 2022 07:03:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 24d532e0a2d04e4700507b4a00761422fda2fd8c
Message-ID: <62f58ad5.aZhlat8j+TB5U1Fv%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660259054; x=1691795054;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=mfgZo8F8OMJroiDBdw2XBWTxb11WJ5dh/QQm4NQCrZY=;
 b=nwEwfy9KE2wHN2UpknZ8Cpu5bsZYQ7tWMeXe3+uyChyhP3kW9nyDPXQ6
 82arLmhwZCnZGvyW1vJSeNFWsZTJrLFVf9GgTz0xQaf07/pDo7IiC8Gdo
 G5u/N7uqzy/eJLInkid9idL7LgYIO/oTQlL9QVh8D6x0I/pOuNp8xSFRb
 MKY2MDAb4tqrcuQ4MIMJx6NR5OWW8+1sDx2xw50jZfKu4NLqpVMRivukV
 fXM7RXY9pUNi5Nw5YR8DyW0cpitr9uU1LhAlfjC4Gr57p7V8fCs9QxRIF
 +ZhgJRwKzo7bwlu0u+4rBnGdZb6w5sv3yMk+intEQrdcLNDJbONENguPB
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nwEwfy9K
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
branch HEAD: 24d532e0a2d04e4700507b4a00761422fda2fd8c  readfile.2: new page describing readfile(2)

elapsed time: 722m

configs tested: 53
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220811
i386                                defconfig
x86_64                              defconfig
i386                             allyesconfig
x86_64                        randconfig-a013
powerpc                           allnoconfig
x86_64                        randconfig-a011
powerpc                          allmodconfig
mips                             allyesconfig
x86_64                               rhel-8.3
sh                               allmodconfig
m68k                             allmodconfig
x86_64                        randconfig-a015
x86_64                           allyesconfig
arc                              allyesconfig
x86_64                         rhel-8.3-kunit
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a014
x86_64                           rhel-8.3-kvm
alpha                            allyesconfig
m68k                             allyesconfig
i386                          randconfig-a012
i386                          randconfig-a005
x86_64                    rhel-8.3-kselftests
arm                                 defconfig
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
i386                          randconfig-a016
arm                              allyesconfig
ia64                             allmodconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arm64                            allyesconfig
x86_64                        randconfig-a006

clang tested configs:
hexagon              randconfig-r045-20220811
hexagon              randconfig-r041-20220811
riscv                randconfig-r042-20220811
s390                 randconfig-r044-20220811
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a002
i386                          randconfig-a011
x86_64                        randconfig-a016
i386                          randconfig-a006
i386                          randconfig-a004
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
