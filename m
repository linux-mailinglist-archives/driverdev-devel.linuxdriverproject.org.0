Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EAED935B6B5
	for <lists+driverdev-devel@lfdr.de>; Sun, 11 Apr 2021 21:15:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 36A0A606E8;
	Sun, 11 Apr 2021 19:15:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hXd889ouLLbq; Sun, 11 Apr 2021 19:15:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 48131605DC;
	Sun, 11 Apr 2021 19:15:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F80A1BF2BC
 for <devel@linuxdriverproject.org>; Sun, 11 Apr 2021 19:15:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1DA4640352
 for <devel@linuxdriverproject.org>; Sun, 11 Apr 2021 19:15:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DHyjOM2rNNFa for <devel@linuxdriverproject.org>;
 Sun, 11 Apr 2021 19:15:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B465340348
 for <devel@driverdev.osuosl.org>; Sun, 11 Apr 2021 19:15:41 +0000 (UTC)
IronPort-SDR: ji1MkM3nNXI060LT9P6Ithy+ISzfpHvrBjS6pnWu2JssI6+TrOaxBEMulAI+aFAbdBfNVWkLTu
 5LMZ7t5SAMag==
X-IronPort-AV: E=McAfee;i="6000,8403,9951"; a="181585656"
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; d="scan'208";a="181585656"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2021 12:15:39 -0700
IronPort-SDR: Joc3Bd9+ZD35c146Z/eBMCNddXgYESGQCfEMX2pxauLECTBKy8aZQspMG68Y6au8V5PiV+laom
 /HgbQrh7umHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,214,1613462400"; d="scan'208";a="382717282"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 11 Apr 2021 12:15:38 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lVfYY-000J51-1Z; Sun, 11 Apr 2021 19:15:38 +0000
Date: Mon, 12 Apr 2021 03:14:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 1b9e18de8d43bf798622cc365f99b41f180b446f
Message-ID: <60734aac.yU1pMnii9neCNE2C%lkp@intel.com>
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
branch HEAD: 1b9e18de8d43bf798622cc365f99b41f180b446f  staging: rtl8723bs: remove more empty if blocks after DBG_8192C deletion

elapsed time: 720m

configs tested: 106
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
x86_64                           allyesconfig
riscv                            allyesconfig
sh                   sh7724_generic_defconfig
xtensa                    xip_kc705_defconfig
powerpc                      ppc64e_defconfig
arm                            hisi_defconfig
xtensa                          iss_defconfig
sh                           se7705_defconfig
mips                     loongson1b_defconfig
sh                        sh7763rdp_defconfig
sh                           se7712_defconfig
mips                     loongson1c_defconfig
mips                            e55_defconfig
mips                  cavium_octeon_defconfig
m68k                        m5307c3_defconfig
mips                        omega2p_defconfig
parisc                generic-64bit_defconfig
powerpc                      katmai_defconfig
mips                          ath79_defconfig
sparc                               defconfig
sh                            titan_defconfig
alpha                               defconfig
arm                         cm_x300_defconfig
sh                        edosk7760_defconfig
sparc                       sparc64_defconfig
sh                           se7343_defconfig
mips                         tb0219_defconfig
powerpc                    klondike_defconfig
m68k                          atari_defconfig
arm                             mxs_defconfig
mips                           jazz_defconfig
openrisc                            defconfig
ia64                             allmodconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210411
i386                 randconfig-a001-20210411
i386                 randconfig-a006-20210411
i386                 randconfig-a005-20210411
i386                 randconfig-a004-20210411
i386                 randconfig-a002-20210411
x86_64               randconfig-a003-20210411
x86_64               randconfig-a002-20210411
x86_64               randconfig-a001-20210411
x86_64               randconfig-a005-20210411
x86_64               randconfig-a006-20210411
x86_64               randconfig-a004-20210411
i386                 randconfig-a015-20210411
i386                 randconfig-a014-20210411
i386                 randconfig-a013-20210411
i386                 randconfig-a012-20210411
i386                 randconfig-a016-20210411
i386                 randconfig-a011-20210411
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a014-20210411
x86_64               randconfig-a015-20210411
x86_64               randconfig-a011-20210411
x86_64               randconfig-a013-20210411
x86_64               randconfig-a012-20210411
x86_64               randconfig-a016-20210411

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
