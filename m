Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0893F5966E2
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Aug 2022 03:40:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9A99960F53;
	Wed, 17 Aug 2022 01:40:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9A99960F53
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1jECDGPMazyI; Wed, 17 Aug 2022 01:40:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 315AB60EDB;
	Wed, 17 Aug 2022 01:40:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 315AB60EDB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 18A561BF2FE
 for <devel@linuxdriverproject.org>; Wed, 17 Aug 2022 01:40:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E865140136
 for <devel@linuxdriverproject.org>; Wed, 17 Aug 2022 01:40:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E865140136
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id az6WNs2IvTIM for <devel@linuxdriverproject.org>;
 Wed, 17 Aug 2022 01:40:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E6520402E2
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E6520402E2
 for <devel@driverdev.osuosl.org>; Wed, 17 Aug 2022 01:40:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="292371021"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="292371021"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 18:40:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="696590845"
Received: from lkp-server02.sh.intel.com (HELO 81d7e1ade3ba) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2022 18:40:07 -0700
Received: from kbuild by 81d7e1ade3ba with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oO82Q-0000RS-2O;
 Wed, 17 Aug 2022 01:40:06 +0000
Date: Wed, 17 Aug 2022 09:39:13 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 654d1855bc40c6b0c1f2802ff0dc6a5b8b744034
Message-ID: <62fc46c1.PhqAT3NrHnTXO3hE%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660700408; x=1692236408;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=G5SVg5p8S30dujMkppikj+hDXUEBsbWbvFbfwqrJ/Cg=;
 b=iiE0W+32HUPYbG5EJ1XpY7I+kA5rAogyiIcEtwD60c/1/4tPEvv15Ipx
 mzv1Zx0+42k0OTrBmj8CqsSlxYpIzBjlU9EcKOQkUEmilcyJPZ2DxukS3
 P95+hudlNOCGP3KDpFpv5HP4k6uO0BxYeAEOC15ndI4JgE9LbEWwPQXa+
 xfm4pD3kIlijO157O/H88CCgYqMAOmjAMwW+T8fD79GyIanJoD/z72391
 NoiIM4ZNKYS0OryqVhycXH3LtRqwBgpRSD+oUzyBFq8izDRKP0MW8A8NP
 FBsdQoex2Sni4YdSckLCgOoFLwvXExDqcX0/AoSNKeUHiidiWfJ2gP2eE
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iiE0W+32
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
branch HEAD: 654d1855bc40c6b0c1f2802ff0dc6a5b8b744034  staging: r8188eu: make rtw_init_recv_timer() static

elapsed time: 721m

configs tested: 96
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220815
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
arm                                 defconfig
i386                                defconfig
i386                 randconfig-a003-20220815
i386                 randconfig-a004-20220815
i386                 randconfig-a006-20220815
arm                              allyesconfig
i386                 randconfig-a005-20220815
i386                 randconfig-a002-20220815
i386                 randconfig-a001-20220815
x86_64               randconfig-a001-20220815
i386                             allyesconfig
x86_64               randconfig-a003-20220815
arm64                            allyesconfig
x86_64               randconfig-a004-20220815
x86_64               randconfig-a002-20220815
x86_64                           rhel-8.3-kvm
x86_64               randconfig-a005-20220815
x86_64                          rhel-8.3-func
x86_64               randconfig-a006-20220815
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
alpha                            allyesconfig
arc                              allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
ia64                             allmodconfig
arc                        nsimosci_defconfig
m68k                          atari_defconfig
sh                        dreamcast_defconfig
sh                            migor_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
powerpc              randconfig-c003-20220815
i386                 randconfig-c001-20220815
sh                           se7343_defconfig
m68k                                defconfig
powerpc                 mpc837x_rdb_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
arm                         lubbock_defconfig
csky                                defconfig
arm                         vf610m4_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
powerpc                      cm5200_defconfig
ia64                            zx1_defconfig
xtensa                  audio_kc705_defconfig
um                                  defconfig
xtensa                generic_kc705_defconfig
mips                  maltasmvp_eva_defconfig
sh                        sh7757lcr_defconfig
mips                            gpr_defconfig
m68k                        m5407c3_defconfig
sparc                       sparc32_defconfig
m68k                       m5275evb_defconfig
sh                   sh7770_generic_defconfig
parisc                           allyesconfig

clang tested configs:
hexagon              randconfig-r045-20220815
hexagon              randconfig-r041-20220815
riscv                randconfig-r042-20220815
s390                 randconfig-r044-20220815
i386                 randconfig-a012-20220815
i386                 randconfig-a011-20220815
x86_64               randconfig-a013-20220815
x86_64               randconfig-a012-20220815
x86_64               randconfig-a011-20220815
i386                 randconfig-a013-20220815
x86_64               randconfig-a015-20220815
x86_64               randconfig-a014-20220815
x86_64               randconfig-a016-20220815
i386                 randconfig-a015-20220815
i386                 randconfig-a016-20220815
i386                 randconfig-a014-20220815
powerpc                      ppc64e_defconfig
powerpc                 mpc832x_mds_defconfig
arm                       imx_v4_v5_defconfig
mips                           mtx1_defconfig
powerpc                     kilauea_defconfig
s390                             alldefconfig
mips                          ath79_defconfig
arm                    vt8500_v6_v7_defconfig
arm64                            allyesconfig
powerpc                      pmac32_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
