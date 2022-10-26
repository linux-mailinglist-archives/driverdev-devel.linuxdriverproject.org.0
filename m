Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3029760DAAB
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Oct 2022 07:39:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8304C607C1;
	Wed, 26 Oct 2022 05:39:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8304C607C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id I2MDC9SGqhxv; Wed, 26 Oct 2022 05:39:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 049A4600B6;
	Wed, 26 Oct 2022 05:39:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 049A4600B6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D39EE1BF57B
 for <devel@linuxdriverproject.org>; Wed, 26 Oct 2022 05:39:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id AB7DA607C1
 for <devel@linuxdriverproject.org>; Wed, 26 Oct 2022 05:39:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AB7DA607C1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 97CYdxsP55kc for <devel@linuxdriverproject.org>;
 Wed, 26 Oct 2022 05:39:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A2526600B6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A2526600B6
 for <devel@driverdev.osuosl.org>; Wed, 26 Oct 2022 05:39:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="288259685"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="288259685"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 22:38:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="665167855"
X-IronPort-AV: E=Sophos;i="5.95,213,1661842800"; d="scan'208";a="665167855"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 25 Oct 2022 22:38:41 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1onZ7g-00074D-1E;
 Wed, 26 Oct 2022 05:38:40 +0000
Date: Wed, 26 Oct 2022 13:38:14 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 8cd75652300f957066b86e4ede5525c756fe7a42
Message-ID: <6358c7c6.YSPbBdTkZTuqaL3r%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666762768; x=1698298768;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=T9K1qpDdsGP7pvs2m2yziTtYPcQ1fPnlNj0ZxzAlFiY=;
 b=S+odgOBDbTgS/q1RI1nwwAGFxT1UcTrNUtF5ZmDT1dt02mu7FFd9iWDA
 1Ks8vGZUTihU87Pudtar1lSbtd7ZEkV9YQY55e9uVgOkEjMeKsjS2YfZp
 ZvA9W6CZaMB4OnnrcIgqyfd8jrSCDHVYoad9uCpL72JfA4H23Vkyq8L/F
 D1vVqWx4tlatrjnfaYsoydiNZm994ZvwfBdJx0VLZvCoyDHlflukL15AE
 UV+nCUqfp0zoi+L0MNrAPsASrGA1zUBtKMs5omrsb7jy6W98/PHc5Dk7h
 vA1T+aXcb3rLELvoRKXWvcTAIqkMzWooIDCC1qdng4f+6b2z4WmtO2Kew
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S+odgOBD
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
branch HEAD: 8cd75652300f957066b86e4ede5525c756fe7a42  staging: r8188eu: remove unused macros from wifi.h

elapsed time: 724m

configs tested: 69
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
powerpc                           allnoconfig
um                           x86_64_defconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
i386                                defconfig
x86_64                              defconfig
ia64                             allmodconfig
arm                                 defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
arm64                            allyesconfig
i386                 randconfig-a011-20221024
x86_64                          rhel-8.3-func
s390                                defconfig
x86_64                    rhel-8.3-kselftests
arm                              allyesconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-syz
i386                 randconfig-a014-20221024
alpha                            allyesconfig
i386                 randconfig-a013-20221024
i386                             allyesconfig
s390                             allyesconfig
x86_64                           allyesconfig
i386                 randconfig-a012-20221024
arc                              allyesconfig
i386                 randconfig-a016-20221024
m68k                             allyesconfig
i386                 randconfig-a015-20221024
m68k                             allmodconfig
arc                  randconfig-r043-20221023
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a015
arc                  randconfig-r043-20221025
x86_64               randconfig-a014-20221024
x86_64               randconfig-a015-20221024
x86_64               randconfig-a016-20221024
x86_64               randconfig-a013-20221024
x86_64               randconfig-a012-20221024
x86_64               randconfig-a011-20221024
m68k                        mvme147_defconfig
powerpc                   motionpro_defconfig
mips                         cobalt_defconfig
mips                    maltaup_xpa_defconfig

clang tested configs:
x86_64               randconfig-a001-20221024
x86_64               randconfig-a003-20221024
x86_64               randconfig-a002-20221024
x86_64               randconfig-a004-20221024
x86_64               randconfig-a005-20221024
x86_64               randconfig-a006-20221024
i386                 randconfig-a001-20221024
i386                 randconfig-a002-20221024
i386                 randconfig-a005-20221024
i386                 randconfig-a003-20221024
i386                 randconfig-a004-20221024
i386                 randconfig-a006-20221024
riscv                randconfig-r042-20221023
hexagon              randconfig-r041-20221023
x86_64                        randconfig-a012
hexagon              randconfig-r045-20221023
s390                 randconfig-r044-20221023
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
