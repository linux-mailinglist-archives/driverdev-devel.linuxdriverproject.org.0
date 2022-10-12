Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B63C5FCF0F
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Oct 2022 01:54:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1E33B610B8;
	Wed, 12 Oct 2022 23:54:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E33B610B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZqJfgXIEJl2s; Wed, 12 Oct 2022 23:54:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C681D610B2;
	Wed, 12 Oct 2022 23:54:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C681D610B2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id AADEF1BF59B
 for <devel@linuxdriverproject.org>; Wed, 12 Oct 2022 23:54:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9144C610B4
 for <devel@linuxdriverproject.org>; Wed, 12 Oct 2022 23:54:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9144C610B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cvQEyLwunEsH for <devel@linuxdriverproject.org>;
 Wed, 12 Oct 2022 23:54:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B199D610B0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B199D610B0
 for <devel@driverdev.osuosl.org>; Wed, 12 Oct 2022 23:54:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="303675642"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="303675642"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 16:54:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10498"; a="695667839"
X-IronPort-AV: E=Sophos;i="5.95,180,1661842800"; d="scan'208";a="695667839"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 12 Oct 2022 16:54:13 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oilYC-0004Ke-1U;
 Wed, 12 Oct 2022 23:54:12 +0000
Date: Thu, 13 Oct 2022 07:53:24 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const2] BUILD SUCCESS
 9bbba27df3011928c052fea2b9c8c1a0c7aa6114
Message-ID: <63475374.7l+zK3bkpq0g9tTE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665618854; x=1697154854;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=GYZqPYFc53Ny8Imh+TAWmnsadvJV+41DQd51DK1kIuo=;
 b=Df1l9DFGPpAN6vRZmTqlhYEAbu7Ss6wTIgAS3VSeMRl5qCseGDMIHR2Y
 HEc4pjLM2CsnEvb2F8yWzLVk6jUt42eJGMlLsYAcmUgOK7Gxdivyflx2c
 f4lQDHR2v78uIqsj8MIKjDytZMMYYJ7WqJagthV7QZrGQm7dAhRSeXawF
 NzMrHrXlKBA8RT2mbbuBzNTiBuDEeCZH2f808TBIKOnB6PVvYWYBoXOsh
 yyd36y0vbU3EqbPMFy6gWLGUrpyjVqB/O2xUrA74ThVEeMcCi6lZ/BRkl
 NGU8Vl7WcN5Dzc3VCZ8eANNLl+zrH93X4+T/NTLMbq5MKtXNLqUlz/Dzb
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Df1l9DFG
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const2
branch HEAD: 9bbba27df3011928c052fea2b9c8c1a0c7aa6114  USB: allow some usb functions to take a const pointer.

elapsed time: 724m

configs tested: 75
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                          rhel-8.3-func
i386                                defconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
s390                                defconfig
x86_64                        randconfig-a015
s390                             allyesconfig
i386                          randconfig-a001
arm                                 defconfig
riscv                randconfig-r042-20221012
x86_64                               rhel-8.3
i386                          randconfig-a003
x86_64                           rhel-8.3-syz
arc                  randconfig-r043-20221012
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
s390                 randconfig-r044-20221012
powerpc                           allnoconfig
i386                          randconfig-a005
x86_64                           allyesconfig
i386                             allyesconfig
arm                              allyesconfig
i386                          randconfig-a014
arm64                            allyesconfig
m68k                             allmodconfig
i386                          randconfig-a012
arc                              allyesconfig
i386                          randconfig-a016
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
sh                               allmodconfig
mips                             allyesconfig
ia64                             allmodconfig
powerpc                          allmodconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
arm                        mini2440_defconfig
powerpc                     stx_gp3_defconfig
arm                         lpc18xx_defconfig
powerpc                  storcenter_defconfig
powerpc                 linkstation_defconfig
arc                        nsimosci_defconfig
sh                            hp6xx_defconfig
powerpc                      cm5200_defconfig
mips                         bigsur_defconfig
sh                           se7780_defconfig
arm                             ezx_defconfig
i386                          randconfig-c001

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a014
i386                          randconfig-a002
hexagon              randconfig-r041-20221012
hexagon              randconfig-r045-20221012
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
