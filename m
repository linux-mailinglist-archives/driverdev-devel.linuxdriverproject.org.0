Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E408A1A6DCC
	for <lists+driverdev-devel@lfdr.de>; Mon, 13 Apr 2020 23:10:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E8CD2204B6;
	Mon, 13 Apr 2020 21:10:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CnET5akEPg4O; Mon, 13 Apr 2020 21:10:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C38ED20492;
	Mon, 13 Apr 2020 21:10:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2D1101BF3CE
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 21:10:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2947187B5B
 for <devel@linuxdriverproject.org>; Mon, 13 Apr 2020 21:10:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k79wlQ5Qdgcv for <devel@linuxdriverproject.org>;
 Mon, 13 Apr 2020 21:10:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4992687A30
 for <devel@driverdev.osuosl.org>; Mon, 13 Apr 2020 21:10:21 +0000 (UTC)
IronPort-SDR: U/vOJqWcLkDo9rkSnUMGjH5OVNfkT0xBp3DCJqmbrvrqq1OLnU0H+EkHGl+0p9ssCzM2OX/QH2
 +ua3I2BGfKEA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 14:10:20 -0700
IronPort-SDR: p4JlYY64a+TuLdFLnlwZRL10Clh+CMQj5ACfg/UbDwt5vWgoSE50AnpeIG8HukxPwgMyQkIN37
 /3d6S/xPrQ8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,380,1580803200"; d="scan'208";a="256296613"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 13 Apr 2020 14:10:19 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jO6LS-000CLh-Nw; Tue, 14 Apr 2020 05:10:18 +0800
Date: Tue, 14 Apr 2020 05:10:16 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 ce920326663b3df22c94ade99a8b234baa6ccaa5
Message-ID: <5e94d538.ZoSL8f/cZnxhHBBs%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-testing
branch HEAD: ce920326663b3df22c94ade99a8b234baa6ccaa5  staging: vt6656: formulate rspinf values into tables

elapsed time: 480m

configs tested: 166
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                              allmodconfig
arm                               allnoconfig
arm                              allyesconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm64                            allyesconfig
arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm64                               defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
sparc                            allyesconfig
ia64                              allnoconfig
parisc                generic-32bit_defconfig
sparc                               defconfig
i386                             allyesconfig
ia64                                defconfig
powerpc                             defconfig
sh                               allmodconfig
i386                              allnoconfig
i386                             alldefconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                             allyesconfig
ia64                             alldefconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         10m50_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                       common_defconfig
xtensa                          iss_defconfig
nds32                               defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                       m5475evb_defconfig
m68k                             allmodconfig
h8300                    h8300h-sim_defconfig
m68k                           sun3_defconfig
m68k                          multi_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                           32r2_defconfig
mips                         64r6el_defconfig
mips                             allmodconfig
mips                              allnoconfig
mips                             allyesconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                generic-64bit_defconfig
parisc                           allyesconfig
x86_64               randconfig-a001-20200413
x86_64               randconfig-a002-20200413
x86_64               randconfig-a003-20200413
i386                 randconfig-a001-20200413
i386                 randconfig-a002-20200413
i386                 randconfig-a003-20200413
alpha                randconfig-a001-20200413
m68k                 randconfig-a001-20200413
mips                 randconfig-a001-20200413
nds32                randconfig-a001-20200413
parisc               randconfig-a001-20200413
riscv                randconfig-a001-20200413
c6x                  randconfig-a001-20200413
h8300                randconfig-a001-20200413
microblaze           randconfig-a001-20200413
nios2                randconfig-a001-20200413
sparc64              randconfig-a001-20200413
s390                 randconfig-a001-20200413
xtensa               randconfig-a001-20200413
sh                   randconfig-a001-20200413
openrisc             randconfig-a001-20200413
csky                 randconfig-a001-20200413
x86_64               randconfig-b002-20200413
i386                 randconfig-b001-20200413
x86_64               randconfig-b001-20200413
x86_64               randconfig-b003-20200413
i386                 randconfig-b003-20200413
i386                 randconfig-b002-20200413
x86_64               randconfig-c003-20200413
i386                 randconfig-c003-20200413
i386                 randconfig-c002-20200413
x86_64               randconfig-c002-20200413
i386                 randconfig-c001-20200413
x86_64               randconfig-c001-20200413
i386                 randconfig-d002-20200413
x86_64               randconfig-d003-20200413
x86_64               randconfig-d001-20200413
i386                 randconfig-d003-20200413
i386                 randconfig-d001-20200413
x86_64               randconfig-d002-20200413
x86_64               randconfig-e001-20200413
x86_64               randconfig-e002-20200413
x86_64               randconfig-e003-20200413
i386                 randconfig-e001-20200413
i386                 randconfig-e002-20200413
i386                 randconfig-e003-20200413
i386                 randconfig-f003-20200413
i386                 randconfig-f002-20200413
x86_64               randconfig-f003-20200413
x86_64               randconfig-f001-20200413
x86_64               randconfig-f002-20200413
i386                 randconfig-f001-20200413
x86_64               randconfig-g001-20200413
x86_64               randconfig-g002-20200413
x86_64               randconfig-g003-20200413
i386                 randconfig-g001-20200413
i386                 randconfig-g002-20200413
i386                 randconfig-g003-20200413
x86_64               randconfig-h001-20200413
x86_64               randconfig-h002-20200413
x86_64               randconfig-h003-20200413
i386                 randconfig-h001-20200413
i386                 randconfig-h002-20200413
i386                 randconfig-h003-20200413
arc                  randconfig-a001-20200413
arm                  randconfig-a001-20200413
arm64                randconfig-a001-20200413
ia64                 randconfig-a001-20200413
powerpc              randconfig-a001-20200413
sparc                randconfig-a001-20200413
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                                allnoconfig
sh                          rsk7269_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                            titan_defconfig
sparc64                          allmodconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                             defconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
