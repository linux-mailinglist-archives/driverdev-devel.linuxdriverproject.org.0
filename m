Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F38F1A0145
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Apr 2020 00:48:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0FDD586879;
	Mon,  6 Apr 2020 22:48:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cybqfrAxV30l; Mon,  6 Apr 2020 22:48:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 81F1E86582;
	Mon,  6 Apr 2020 22:48:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 440281BF278
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 22:48:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3FD6E8679B
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 22:48:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B4yZIH3DO1dw for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 22:48:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 18F8286582
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 22:48:35 +0000 (UTC)
IronPort-SDR: QCcLzfamcbjQeEgWC0NnBMnIU28ZsKMlL8qYRDhfjdcMKt+lc0jotFFxhzByo8sT34ZsLuukW9
 PjfArhXjglHA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 15:48:34 -0700
IronPort-SDR: 0jSStnLJJxwVjRQK9Xphn9nev3fuf2tLUKXRNG6TvY8Gp+IwNq22iZ9TiA3XQ0pWIEOMp4V2G9
 9acDOVCqh2dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,352,1580803200"; d="scan'208";a="254261433"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 06 Apr 2020 15:48:32 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jLaXg-000Fe4-58; Tue, 07 Apr 2020 06:48:32 +0800
Date: Tue, 07 Apr 2020 06:47:51 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 28910cbdc813ef8d7fa14b78d220457388c05c61
Message-ID: <5e8bb197.FZbTt3MBcm3w6I5R%lkp@intel.com>
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
branch HEAD: 28910cbdc813ef8d7fa14b78d220457388c05c61  staging: wfx: remove hack about tx_rate policies

Error/Warning in current branch:

drivers/staging/vt6655/baseband.c:1711:15: warning: The scope of the variable 'preamble' can be reduced. [variableScope]
drivers/staging/vt6655/baseband.c:1912:16: warning: The scope of the variable 'by_value' can be reduced. [variableScope]
drivers/staging/wfx/queue.c:349:18: warning: The scope of the variable 'skb' can be reduced. [variableScope]
drivers/staging/wfx/queue.c:92:18: warning: The scope of the variable 'hif_msg' can be reduced. [variableScope]
struct hif_msg *hif_msg;
unsigned char by_value;

Error/Warning ids grouped by kconfigs:

recent_errors
|-- i386-allmodconfig
|   |-- drivers-staging-vt6655-baseband.c:warning:The-scope-of-the-variable-by_value-can-be-reduced.-variableScope
|   |-- drivers-staging-vt6655-baseband.c:warning:The-scope-of-the-variable-preamble-can-be-reduced.-variableScope
|   `-- unsigned-char-by_value
`-- x86_64-allyesconfig
    |-- drivers-staging-vt6655-baseband.c:warning:The-scope-of-the-variable-by_value-can-be-reduced.-variableScope
    |-- drivers-staging-vt6655-baseband.c:warning:The-scope-of-the-variable-preamble-can-be-reduced.-variableScope
    |-- drivers-staging-wfx-queue.c:warning:The-scope-of-the-variable-hif_msg-can-be-reduced.-variableScope
    |-- drivers-staging-wfx-queue.c:warning:The-scope-of-the-variable-skb-can-be-reduced.-variableScope
    |-- struct-hif_msg-hif_msg
    `-- unsigned-char-by_value

elapsed time: 483m

configs tested: 157
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm                              allyesconfig
arm64                            allmodconfig
arm                              allmodconfig
arm64                             allnoconfig
arm                               allnoconfig
arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                        multi_v7_defconfig
arm                           sunxi_defconfig
arm64                               defconfig
sparc                            allyesconfig
ia64                                defconfig
openrisc                 simple_smp_defconfig
nios2                         10m50_defconfig
riscv                          rv32_defconfig
m68k                          multi_defconfig
powerpc                             defconfig
m68k                       m5475evb_defconfig
um                           x86_64_defconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
ia64                             alldefconfig
nios2                         3c120_defconfig
c6x                        evmc6678_defconfig
xtensa                          iss_defconfig
c6x                              allyesconfig
xtensa                       common_defconfig
openrisc                    or1ksim_defconfig
nds32                               defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                       h8s-sim_defconfig
h8300                     edosk2674_defconfig
m68k                             allmodconfig
h8300                    h8300h-sim_defconfig
m68k                           sun3_defconfig
arc                              allyesconfig
arc                                 defconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
mips                             allyesconfig
mips                         64r6el_defconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a003-20200406
i386                 randconfig-a002-20200406
x86_64               randconfig-a002-20200406
x86_64               randconfig-a001-20200406
i386                 randconfig-a001-20200406
i386                 randconfig-a003-20200406
mips                 randconfig-a001-20200406
nds32                randconfig-a001-20200406
m68k                 randconfig-a001-20200406
parisc               randconfig-a001-20200406
alpha                randconfig-a001-20200406
riscv                randconfig-a001-20200406
c6x                  randconfig-a001-20200406
h8300                randconfig-a001-20200406
microblaze           randconfig-a001-20200406
nios2                randconfig-a001-20200406
sparc64              randconfig-a001-20200406
s390                 randconfig-a001-20200406
xtensa               randconfig-a001-20200406
csky                 randconfig-a001-20200406
openrisc             randconfig-a001-20200406
sh                   randconfig-a001-20200406
x86_64               randconfig-b001-20200406
x86_64               randconfig-b002-20200406
x86_64               randconfig-b003-20200406
i386                 randconfig-b001-20200406
i386                 randconfig-b002-20200406
i386                 randconfig-b003-20200406
x86_64               randconfig-c001-20200406
x86_64               randconfig-c002-20200406
x86_64               randconfig-c003-20200406
i386                 randconfig-c001-20200406
i386                 randconfig-c002-20200406
i386                 randconfig-c003-20200406
i386                 randconfig-e001-20200406
i386                 randconfig-e003-20200406
x86_64               randconfig-e002-20200406
x86_64               randconfig-e001-20200406
i386                 randconfig-e002-20200406
x86_64               randconfig-e003-20200406
i386                 randconfig-f001-20200406
x86_64               randconfig-f003-20200406
i386                 randconfig-f003-20200406
x86_64               randconfig-f001-20200406
i386                 randconfig-f002-20200406
x86_64               randconfig-h002-20200406
i386                 randconfig-h002-20200406
i386                 randconfig-h003-20200406
i386                 randconfig-h001-20200406
x86_64               randconfig-h003-20200406
x86_64               randconfig-h001-20200406
arc                  randconfig-a001-20200407
arm                  randconfig-a001-20200407
arm64                randconfig-a001-20200407
ia64                 randconfig-a001-20200407
powerpc              randconfig-a001-20200407
sparc                randconfig-a001-20200407
arm64                randconfig-a001-20200406
sparc                randconfig-a001-20200406
ia64                 randconfig-a001-20200406
arc                  randconfig-a001-20200406
arm                  randconfig-a001-20200406
riscv                            allmodconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
s390                       zfcpdump_defconfig
s390                          debug_defconfig
s390                             allyesconfig
s390                              allnoconfig
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
um                                  defconfig
um                             i386_defconfig
x86_64                              fedora-25
x86_64                                  kexec
x86_64                                    lkp
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                               rhel-7.6

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
