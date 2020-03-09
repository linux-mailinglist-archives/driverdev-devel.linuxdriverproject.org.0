Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7955017D79B
	for <lists+driverdev-devel@lfdr.de>; Mon,  9 Mar 2020 01:57:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D97F88880D;
	Mon,  9 Mar 2020 00:57:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id heXGhM-RP5fO; Mon,  9 Mar 2020 00:57:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC46F87934;
	Mon,  9 Mar 2020 00:57:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 37FE91BF95C
 for <devel@linuxdriverproject.org>; Mon,  9 Mar 2020 00:57:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 29AE187D87
 for <devel@linuxdriverproject.org>; Mon,  9 Mar 2020 00:57:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xFDahuQ2mBnf for <devel@linuxdriverproject.org>;
 Mon,  9 Mar 2020 00:57:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 23D408795E
 for <devel@driverdev.osuosl.org>; Mon,  9 Mar 2020 00:57:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Mar 2020 17:57:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,530,1574150400"; d="scan'208";a="241808161"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 08 Mar 2020 17:57:37 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jB6jh-000CFW-1E; Mon, 09 Mar 2020 08:57:37 +0800
Date: Mon, 09 Mar 2020 08:57:22 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 00a461de5a900888731c46ccd4b0f66d64851f1d
Message-ID: <5e659472.EydRbBALGzam/Vl5%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  debugfs_cleanup
branch HEAD: 00a461de5a900888731c46ccd4b0f66d64851f1d  powerpc: powernv: no need to check return value of debugfs_create functions

elapsed time: 954m

configs tested: 136
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allyesconfig
arm64                            allmodconfig
arm                              allmodconfig
arm64                             allnoconfig
arm                               allnoconfig
sparc                            allyesconfig
mips                             allyesconfig
s390                              allnoconfig
i386                              allnoconfig
i386                             allyesconfig
i386                             alldefconfig
i386                                defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                             alldefconfig
nios2                         3c120_defconfig
nios2                         10m50_defconfig
c6x                        evmc6678_defconfig
xtensa                          iss_defconfig
c6x                              allyesconfig
xtensa                       common_defconfig
openrisc                 simple_smp_defconfig
openrisc                    or1ksim_defconfig
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
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                generic-64bit_defconfig
parisc                generic-32bit_defconfig
parisc                           allyesconfig
x86_64               randconfig-a001-20200308
x86_64               randconfig-a002-20200308
x86_64               randconfig-a003-20200308
i386                 randconfig-a001-20200308
i386                 randconfig-a002-20200308
i386                 randconfig-a003-20200308
alpha                randconfig-a001-20200308
m68k                 randconfig-a001-20200308
mips                 randconfig-a001-20200308
nds32                randconfig-a001-20200308
parisc               randconfig-a001-20200308
riscv                randconfig-a001-20200308
sparc64              randconfig-a001-20200308
microblaze           randconfig-a001-20200308
c6x                  randconfig-a001-20200308
nios2                randconfig-a001-20200308
h8300                randconfig-a001-20200308
openrisc             randconfig-a001-20200308
sh                   randconfig-a001-20200308
csky                 randconfig-a001-20200308
s390                 randconfig-a001-20200308
xtensa               randconfig-a001-20200308
x86_64               randconfig-b001-20200308
x86_64               randconfig-b002-20200308
x86_64               randconfig-b003-20200308
i386                 randconfig-b001-20200308
i386                 randconfig-b002-20200308
i386                 randconfig-b003-20200308
i386                 randconfig-c001-20200308
x86_64               randconfig-c003-20200308
i386                 randconfig-c002-20200308
x86_64               randconfig-c002-20200308
i386                 randconfig-c003-20200308
x86_64               randconfig-c001-20200308
x86_64               randconfig-e001-20200308
x86_64               randconfig-e002-20200308
x86_64               randconfig-e003-20200308
i386                 randconfig-e001-20200308
i386                 randconfig-e002-20200308
i386                 randconfig-e003-20200308
i386                 randconfig-f003-20200308
x86_64               randconfig-f001-20200308
i386                 randconfig-f002-20200308
i386                 randconfig-f001-20200308
x86_64               randconfig-f002-20200308
x86_64               randconfig-f003-20200308
i386                 randconfig-g001-20200308
x86_64               randconfig-g003-20200308
i386                 randconfig-g003-20200308
x86_64               randconfig-g001-20200308
x86_64               randconfig-g002-20200308
i386                 randconfig-g002-20200308
i386                 randconfig-h001-20200308
x86_64               randconfig-h001-20200308
x86_64               randconfig-h002-20200308
x86_64               randconfig-h003-20200308
i386                 randconfig-h003-20200308
i386                 randconfig-h002-20200308
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                       zfcpdump_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                             allmodconfig
s390                             alldefconfig
s390                                defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
um                                  defconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
