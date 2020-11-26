Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B912C5CE7
	for <lists+driverdev-devel@lfdr.de>; Thu, 26 Nov 2020 21:16:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 25D998798E;
	Thu, 26 Nov 2020 20:16:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3jiE-uIUiPVl; Thu, 26 Nov 2020 20:16:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 622D98796F;
	Thu, 26 Nov 2020 20:16:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D3FD51BF29A
 for <devel@linuxdriverproject.org>; Thu, 26 Nov 2020 20:16:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D0B0587557
 for <devel@linuxdriverproject.org>; Thu, 26 Nov 2020 20:16:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id i-fRL6O4ceWs for <devel@linuxdriverproject.org>;
 Thu, 26 Nov 2020 20:16:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 078C9874F7
 for <devel@driverdev.osuosl.org>; Thu, 26 Nov 2020 20:16:33 +0000 (UTC)
IronPort-SDR: o5UcYz79pJM/2boxxugPdUo/IK7pIMl21ipn0oIjLCPGZynh+AuYifz3W3sv2FhmVxdHh12KHJ
 /95DjJUBVf9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="233926799"
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="233926799"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2020 12:16:32 -0800
IronPort-SDR: n3+yR3jieuasdSbHPyzNLUd3KAmDsqEJzpPQytQJM7Wz+84MXJYQqdydWTfmygVKNI1wOmLtuf
 ddp5nKYyAR7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,373,1599548400"; d="scan'208";a="479456960"
Received: from lkp-server02.sh.intel.com (HELO e51121f5de4e) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 26 Nov 2020 12:16:31 -0800
Received: from kbuild by e51121f5de4e with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kiNgs-000015-W2; Thu, 26 Nov 2020 20:16:30 +0000
Date: Fri, 27 Nov 2020 04:16:07 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 1de16e38f1fdbfd9d842a06919098813ed93abf7
Message-ID: <5fc00d07.XoHW/0VlsbumXNYL%lkp@intel.com>
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
branch HEAD: 1de16e38f1fdbfd9d842a06919098813ed93abf7  staging: mt7621-pci: remove 'RALINK_PCI_IMBASEBAR0_ADDR' register

elapsed time: 721m

configs tested: 114
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
arm                        shmobile_defconfig
arm                           u8500_defconfig
xtensa                          iss_defconfig
sh                           se7619_defconfig
arc                     haps_hs_smp_defconfig
arm                        mini2440_defconfig
sh                           se7343_defconfig
powerpc                 canyonlands_defconfig
powerpc                   currituck_defconfig
arm                        mvebu_v7_defconfig
arm                         vf610m4_defconfig
arm                          tango4_defconfig
mips                        nlm_xlr_defconfig
arm                       multi_v4t_defconfig
ia64                             allmodconfig
sh                             espt_defconfig
arm                        cerfcube_defconfig
arm                        trizeps4_defconfig
s390                                defconfig
arm                           efm32_defconfig
xtensa                         virt_defconfig
s390                             allyesconfig
sh                  sh7785lcr_32bit_defconfig
mips                      maltasmvp_defconfig
m68k                          multi_defconfig
mips                        workpad_defconfig
arm                         at91_dt_defconfig
powerpc                     tqm8555_defconfig
s390                             alldefconfig
powerpc                     mpc512x_defconfig
arm                         orion5x_defconfig
sh                ecovec24-romimage_defconfig
riscv                            alldefconfig
powerpc                     taishan_defconfig
i386                                defconfig
sh                           se7705_defconfig
m68k                             alldefconfig
arm                           corgi_defconfig
mips                        nlm_xlp_defconfig
arm                         nhk8815_defconfig
arm                         ebsa110_defconfig
powerpc                    amigaone_defconfig
powerpc               mpc834x_itxgp_defconfig
arc                     nsimosci_hs_defconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
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
parisc                           allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20201126
x86_64               randconfig-a003-20201126
x86_64               randconfig-a004-20201126
x86_64               randconfig-a005-20201126
x86_64               randconfig-a001-20201126
x86_64               randconfig-a002-20201126
i386                 randconfig-a004-20201126
i386                 randconfig-a003-20201126
i386                 randconfig-a002-20201126
i386                 randconfig-a005-20201126
i386                 randconfig-a001-20201126
i386                 randconfig-a006-20201126
i386                 randconfig-a012-20201126
i386                 randconfig-a013-20201126
i386                 randconfig-a011-20201126
i386                 randconfig-a016-20201126
i386                 randconfig-a014-20201126
i386                 randconfig-a015-20201126
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20201126
x86_64               randconfig-a011-20201126
x86_64               randconfig-a014-20201126
x86_64               randconfig-a016-20201126
x86_64               randconfig-a012-20201126
x86_64               randconfig-a013-20201126

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
