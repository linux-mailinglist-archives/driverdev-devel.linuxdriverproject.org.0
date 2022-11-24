Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A610637149
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Nov 2022 04:54:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6B8DC4109B;
	Thu, 24 Nov 2022 03:54:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B8DC4109B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id trWWetF5MQzR; Thu, 24 Nov 2022 03:53:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 167C5410A4;
	Thu, 24 Nov 2022 03:53:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 167C5410A4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3D9D91BF86D
 for <devel@linuxdriverproject.org>; Thu, 24 Nov 2022 03:53:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 18FA881321
 for <devel@linuxdriverproject.org>; Thu, 24 Nov 2022 03:53:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 18FA881321
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FD0lxWDWosR3 for <devel@linuxdriverproject.org>;
 Thu, 24 Nov 2022 03:53:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2B3348130D
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2B3348130D
 for <devel@driverdev.osuosl.org>; Thu, 24 Nov 2022 03:53:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="378468937"
X-IronPort-AV: E=Sophos;i="5.96,189,1665471600"; d="scan'208";a="378468937"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 19:53:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="816705520"
X-IronPort-AV: E=Sophos;i="5.96,189,1665471600"; d="scan'208";a="816705520"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 23 Nov 2022 19:53:53 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oy3JA-0003TT-2g;
 Thu, 24 Nov 2022 03:53:52 +0000
Date: Thu, 24 Nov 2022 11:53:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 d07be11e5af511b121ca7fb623a356fab1349c65
Message-ID: <637eeac2.ZkygGPovgCyf/zv6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669262035; x=1700798035;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=mh5AHC8d6xWyvQhz/KGf0M85Ile+T9BVj7SFf2OZvBw=;
 b=Rf/io9WiTsJqw2yhsekPZETZJylXy/AIsWGnVJeox8eYNvT3EdpMmkhC
 C4PZP8jly7CQrvdeLNcweJTxFkoZHtmclqyWnRsU2utxUMdPeWga+j3YK
 2ziImJDWj+FPaSJS5Pbb/+TNk4kAql8Fx9bH39p8DNUlMQAL/+xqtiGwb
 rHviKWSYiEnleu3lIbcyXE5/Jh0ZaAcZxKBTy2WB/LOlH82mGctEV4okK
 KFowQKX16AksJI9HHuEupBOfJBzJLSKyc3m80zOCqNRUX2USe/W1xGryo
 CnZSChJVpYdCRdM8DGTRFetJ1beAeHNFv0+O00L/vmiLG32RvvjaRE2YD
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Rf/io9Wi
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
branch HEAD: d07be11e5af511b121ca7fb623a356fab1349c65  kobject: kset_uevent_ops: make uevent() callback take a const *

elapsed time: 914m

configs tested: 79
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-kvm
x86_64                         rhel-8.3-kunit
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                           rhel-8.3-syz
m68k                             allyesconfig
ia64                             allmodconfig
i386                 randconfig-a011-20221121
i386                 randconfig-a013-20221121
i386                 randconfig-a012-20221121
i386                 randconfig-a016-20221121
i386                 randconfig-a014-20221121
i386                 randconfig-a015-20221121
x86_64               randconfig-a011-20221121
x86_64               randconfig-a014-20221121
x86_64               randconfig-a012-20221121
x86_64               randconfig-a013-20221121
x86_64               randconfig-a016-20221121
x86_64               randconfig-a015-20221121
x86_64                            allnoconfig
i386                             allyesconfig
i386                                defconfig
x86_64                              defconfig
s390                 randconfig-r044-20221121
riscv                randconfig-r042-20221121
arc                  randconfig-r043-20221120
arc                  randconfig-r043-20221121
arc                        nsim_700_defconfig
sh                           se7722_defconfig
arc                     haps_hs_smp_defconfig
openrisc                       virt_defconfig
powerpc                    klondike_defconfig
arm                           viper_defconfig
sparc                             allnoconfig
m68k                          hp300_defconfig
riscv                               defconfig
microblaze                          defconfig
sh                           se7780_defconfig
mips                           gcw0_defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                          randconfig-c001
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func

clang tested configs:
x86_64               randconfig-a002-20221121
x86_64               randconfig-a001-20221121
x86_64               randconfig-a004-20221121
x86_64               randconfig-a006-20221121
x86_64               randconfig-a005-20221121
x86_64               randconfig-a003-20221121
x86_64                        randconfig-k001
i386                 randconfig-a001-20221121
i386                 randconfig-a005-20221121
i386                 randconfig-a006-20221121
i386                 randconfig-a004-20221121
i386                 randconfig-a003-20221121
i386                 randconfig-a002-20221121
mips                      malta_kvm_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
