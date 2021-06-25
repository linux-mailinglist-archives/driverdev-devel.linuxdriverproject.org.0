Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 305DF3B3B07
	for <lists+driverdev-devel@lfdr.de>; Fri, 25 Jun 2021 05:05:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E50D83C98;
	Fri, 25 Jun 2021 03:05:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PkEvxxusv7Va; Fri, 25 Jun 2021 03:05:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3D4C83C8C;
	Fri, 25 Jun 2021 03:05:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 359681BF23C
 for <devel@linuxdriverproject.org>; Fri, 25 Jun 2021 03:05:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2555683C8B
 for <devel@linuxdriverproject.org>; Fri, 25 Jun 2021 03:05:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rBz-IRaCmqGg for <devel@linuxdriverproject.org>;
 Fri, 25 Jun 2021 03:05:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AC7A083C8C
 for <devel@driverdev.osuosl.org>; Fri, 25 Jun 2021 03:05:28 +0000 (UTC)
IronPort-SDR: r7IC+RDsTkEYYumFgSyZQbRd4GO7jqsM6j7YOG6e71fRXz6TMqeQYwKnLVAsOr73gQpZiqHjEj
 80gQURuTQxzQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10025"; a="204589261"
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="204589261"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2021 20:05:27 -0700
IronPort-SDR: M0V66h8mYNuP2+ofFd3E6/HXq9ZAyQOsWkQHEg26Y14pPawQ7QQJEbQJYAbCYQ4XiRf/F9/jr/
 c1keFvV76owA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,298,1616482800"; d="scan'208";a="474734039"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 24 Jun 2021 20:05:25 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lwc9l-0006rl-9t; Fri, 25 Jun 2021 03:05:25 +0000
Date: Fri, 25 Jun 2021 11:04:58 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 fcc84fe12fd8271ea0d94cbac4ae02f9162f56fd
Message-ID: <60d547da.e468irgaSa5UTTF8%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
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
branch HEAD: fcc84fe12fd8271ea0d94cbac4ae02f9162f56fd  staging: hisi-spmi-controller: rename spmi-channel property

elapsed time: 725m

configs tested: 122
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                     decstation_defconfig
arm                       aspeed_g5_defconfig
mips                     loongson1c_defconfig
sh                        dreamcast_defconfig
sh                        sh7785lcr_defconfig
powerpc                     akebono_defconfig
ia64                             allmodconfig
xtensa                generic_kc705_defconfig
openrisc                    or1ksim_defconfig
mips                         rt305x_defconfig
sh                           se7206_defconfig
nios2                            alldefconfig
powerpc                 mpc8540_ads_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                        fsp2_defconfig
powerpc                     tqm8555_defconfig
xtensa                       common_defconfig
powerpc                     stx_gp3_defconfig
xtensa                  cadence_csp_defconfig
sh                        edosk7760_defconfig
powerpc                      katmai_defconfig
powerpc                 mpc834x_mds_defconfig
arc                        nsimosci_defconfig
m68k                        m5307c3_defconfig
m68k                         amcore_defconfig
xtensa                          iss_defconfig
arm                       multi_v4t_defconfig
arm                        clps711x_defconfig
sh                           se7343_defconfig
m68k                        m5272c3_defconfig
arm                           sunxi_defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                 mpc8313_rdb_defconfig
arm                   milbeaut_m10v_defconfig
arm                           tegra_defconfig
s390                          debug_defconfig
powerpc                       ebony_defconfig
powerpc                       holly_defconfig
powerpc                     sbc8548_defconfig
arm                         palmz72_defconfig
m68k                        mvme147_defconfig
arm                          ixp4xx_defconfig
arm                          pxa910_defconfig
powerpc                     ppa8548_defconfig
x86_64                            allnoconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20210622
i386                 randconfig-a002-20210622
i386                 randconfig-a003-20210622
i386                 randconfig-a006-20210622
i386                 randconfig-a005-20210622
i386                 randconfig-a004-20210622
x86_64               randconfig-a012-20210622
x86_64               randconfig-a016-20210622
x86_64               randconfig-a015-20210622
x86_64               randconfig-a014-20210622
x86_64               randconfig-a013-20210622
x86_64               randconfig-a011-20210622
i386                 randconfig-a011-20210622
i386                 randconfig-a014-20210622
i386                 randconfig-a013-20210622
i386                 randconfig-a015-20210622
i386                 randconfig-a012-20210622
i386                 randconfig-a016-20210622
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210622
x86_64               randconfig-a002-20210622
x86_64               randconfig-a001-20210622
x86_64               randconfig-a005-20210622
x86_64               randconfig-a003-20210622
x86_64               randconfig-a004-20210622
x86_64               randconfig-a006-20210622

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
