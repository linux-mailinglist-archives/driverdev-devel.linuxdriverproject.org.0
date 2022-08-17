Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 62CA75966D2
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Aug 2022 03:37:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E55C382660;
	Wed, 17 Aug 2022 01:37:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E55C382660
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J9uw80SItxis; Wed, 17 Aug 2022 01:37:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A240182542;
	Wed, 17 Aug 2022 01:37:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A240182542
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9655F1BF2FE
 for <devel@linuxdriverproject.org>; Wed, 17 Aug 2022 01:37:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7849460F53
 for <devel@linuxdriverproject.org>; Wed, 17 Aug 2022 01:37:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7849460F53
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vO4tDKoVhBQm for <devel@linuxdriverproject.org>;
 Wed, 17 Aug 2022 01:37:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6E61560EDB
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6E61560EDB
 for <devel@driverdev.osuosl.org>; Wed, 17 Aug 2022 01:37:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="275429460"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="275429460"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 18:37:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="935151115"
Received: from lkp-server02.sh.intel.com (HELO 81d7e1ade3ba) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 16 Aug 2022 18:37:07 -0700
Received: from kbuild by 81d7e1ade3ba with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oO7zW-0000R9-2A;
 Wed, 17 Aug 2022 01:37:06 +0000
Date: Wed, 17 Aug 2022 09:36:59 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 e01f5c8d6af231b3b09e23c1fe8a4057cdcc4e42
Message-ID: <62fc463b.TMtwoYepVzbSzNTk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660700230; x=1692236230;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=eBRLPuhllkofRxX8jEx7wKJQy+FE/ja9bBKdFM/YDhw=;
 b=lcRmgWa39W66MkG79ga3xLcSv0gXbGhKvRP/xBlXIIZccW7AdP7fukVn
 5wOYjF2ei8SH2Su62jJVR0u7Sevd+HhUBjcuCsYdzD75ThnHgzzC2KHeZ
 k/gy7M5f4h8Xb8KF9Rk6u2e6UN+pfZPxo+32tPmEtn9TBMkw5rsWbPRAH
 ZP5FtT88LYtubpaOfCwWBNj9xa+8btNhKAXpPunVNzSknYFf2u9+mUZrD
 bfDtAKEo/3RmPOJLT+h7NMRADYvpN8dO2vkx6Lqmp81ELMwGxGE9XSaen
 h35UFGbRp6hR7rUJm/+VVL481srICMh3tG9zvJ2oqPX5pPxghLCKH7T3L
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lcRmgWa3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-linus
branch HEAD: e01f5c8d6af231b3b09e23c1fe8a4057cdcc4e42  staging: r8188eu: Add Rosewill USB-N150 Nano to device tables

elapsed time: 718m

configs tested: 118
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220815
powerpc                           allnoconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
i386                 randconfig-a003-20220815
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64               randconfig-a003-20220815
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                     redwood_defconfig
powerpc                     sequoia_defconfig
ia64                      gensparse_defconfig
arm                           corgi_defconfig
sh                        sh7785lcr_defconfig
powerpc                     stx_gp3_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
arc                        nsimosci_defconfig
m68k                          atari_defconfig
sh                        dreamcast_defconfig
sh                            migor_defconfig
i386                 randconfig-a001-20220815
i386                 randconfig-a005-20220815
i386                 randconfig-a004-20220815
i386                 randconfig-a006-20220815
i386                 randconfig-a002-20220815
i386                             allyesconfig
i386                                defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
x86_64               randconfig-a006-20220815
x86_64               randconfig-a005-20220815
x86_64               randconfig-a004-20220815
x86_64               randconfig-a001-20220815
x86_64               randconfig-a002-20220815
powerpc              randconfig-c003-20220815
i386                 randconfig-c001-20220815
sh                           se7343_defconfig
m68k                                defconfig
powerpc                 mpc837x_rdb_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
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
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig

clang tested configs:
hexagon              randconfig-r041-20220815
hexagon              randconfig-r045-20220815
riscv                randconfig-r042-20220815
s390                 randconfig-r044-20220815
i386                 randconfig-a015-20220815
arm                       versatile_defconfig
arm                        multi_v5_defconfig
arm                       mainstone_defconfig
arm                       aspeed_g4_defconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                      ppc64e_defconfig
powerpc                 mpc832x_mds_defconfig
x86_64               randconfig-a016-20220815
x86_64               randconfig-a013-20220815
x86_64               randconfig-a015-20220815
x86_64               randconfig-a014-20220815
x86_64               randconfig-a012-20220815
i386                 randconfig-a011-20220815
i386                 randconfig-a012-20220815
i386                 randconfig-a014-20220815
i386                 randconfig-a016-20220815
i386                 randconfig-a013-20220815
arm                       imx_v4_v5_defconfig
mips                           mtx1_defconfig
powerpc                     kilauea_defconfig
x86_64               randconfig-a011-20220815
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
