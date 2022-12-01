Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C45E63E640
	for <lists+driverdev-devel@lfdr.de>; Thu,  1 Dec 2022 01:15:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B2E8360ACD;
	Thu,  1 Dec 2022 00:15:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B2E8360ACD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MSr56xoLuBY3; Thu,  1 Dec 2022 00:15:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6999C60AAC;
	Thu,  1 Dec 2022 00:15:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6999C60AAC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D8EA21BF359
 for <devel@linuxdriverproject.org>; Thu,  1 Dec 2022 00:14:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B397F60AB9
 for <devel@linuxdriverproject.org>; Thu,  1 Dec 2022 00:14:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B397F60AB9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K_eJW4zioWV4 for <devel@linuxdriverproject.org>;
 Thu,  1 Dec 2022 00:14:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3592C60AAC
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3592C60AAC
 for <devel@driverdev.osuosl.org>; Thu,  1 Dec 2022 00:14:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="313172087"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="313172087"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2022 16:14:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10547"; a="818828206"
X-IronPort-AV: E=Sophos;i="5.96,207,1665471600"; d="scan'208";a="818828206"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 30 Nov 2022 16:14:53 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p0XE5-000Bwf-0t;
 Thu, 01 Dec 2022 00:14:53 +0000
Date: Thu, 01 Dec 2022 08:13:53 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 50dc8d18f62d58a2330f08fddc069f263d191c90
Message-ID: <6387f1c1.BrtwjljiCO09YSbz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669853696; x=1701389696;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=8foZpLy44ikmgyIbbTQE6PQP7efeOcz8sxq81dcN5fQ=;
 b=LVKd1IXaJfSF0j+Yu0wv7BmVWL3VL3XIcL74CngJPufSbHHTi5G8LWC3
 IJeE/Ma348QCcJm13+Fpaa1O2zqbWhsBuWz0kEU1pUb0wiHlHYbk8q2z7
 6a9QOj0pM0D5OK/3853Vvy7Bl+K0yBfeFehC4A5aJFoM7ggX2TCAp+2Tu
 VQ0c5NKRcbqbldDDhM0mgJURM7qiJID9ufwk98Z0dMuU2JrX3j9s6VDk6
 5G09vx87SgSKU5kJ8dym2Sn3P8Xqh5tuTKq3t2Pj8F7y7g/V2L28T5xyL
 bbP8TbzcRhRmmIP5PNHMGY2EST9XVVDzU8gi66X+p7qwMJmyMRh0DxAi8
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LVKd1IXa
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
branch HEAD: 50dc8d18f62d58a2330f08fddc069f263d191c90  driver core: fix up missed drivers/s390/char/hmcdrv_dev.c class.devnode() conversion.

elapsed time: 728m

configs tested: 90
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                                defconfig
s390                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
powerpc                           allnoconfig
arc                  randconfig-r043-20221128
ia64                             allmodconfig
sh                               allmodconfig
mips                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
i386                 randconfig-a002-20221128
i386                 randconfig-a003-20221128
x86_64                              defconfig
i386                 randconfig-a001-20221128
i386                 randconfig-a005-20221128
x86_64                               rhel-8.3
i386                 randconfig-a004-20221128
i386                 randconfig-a006-20221128
x86_64                           allyesconfig
x86_64               randconfig-a006-20221128
i386                          randconfig-a001
i386                          randconfig-a014
i386                                defconfig
x86_64                        randconfig-a013
i386                          randconfig-a012
x86_64                        randconfig-a011
i386                          randconfig-a003
i386                          randconfig-a016
x86_64               randconfig-a002-20221128
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64               randconfig-a003-20221128
x86_64               randconfig-a004-20221128
x86_64               randconfig-a001-20221128
x86_64               randconfig-a005-20221128
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
powerpc                          allmodconfig
i386                             allyesconfig
x86_64                            allnoconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig

clang tested configs:
s390                 randconfig-r044-20221128
hexagon              randconfig-r045-20221128
riscv                randconfig-r042-20221128
hexagon              randconfig-r041-20221128
i386                          randconfig-a013
x86_64               randconfig-a012-20221128
x86_64               randconfig-a014-20221128
i386                          randconfig-a002
x86_64                        randconfig-a012
i386                          randconfig-a011
x86_64                        randconfig-a016
i386                          randconfig-a015
x86_64                        randconfig-a014
i386                          randconfig-a006
x86_64               randconfig-a011-20221128
i386                          randconfig-a004
x86_64               randconfig-a016-20221128
x86_64               randconfig-a015-20221128
x86_64               randconfig-a013-20221128
i386                 randconfig-a016-20221128
i386                 randconfig-a012-20221128
i386                 randconfig-a011-20221128
i386                 randconfig-a013-20221128
i386                 randconfig-a015-20221128
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                 randconfig-a014-20221128
x86_64               randconfig-k001-20221128

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
