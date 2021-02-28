Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AB932747A
	for <lists+driverdev-devel@lfdr.de>; Sun, 28 Feb 2021 21:51:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 736FF83C55;
	Sun, 28 Feb 2021 20:51:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CV2JmBe-ZYy3; Sun, 28 Feb 2021 20:51:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6B69E83490;
	Sun, 28 Feb 2021 20:51:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0C1121BF340
 for <devel@linuxdriverproject.org>; Sun, 28 Feb 2021 20:51:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EFAB54300D
 for <devel@linuxdriverproject.org>; Sun, 28 Feb 2021 20:51:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DfzBHbyHJM-d for <devel@linuxdriverproject.org>;
 Sun, 28 Feb 2021 20:51:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF1E543006
 for <devel@driverdev.osuosl.org>; Sun, 28 Feb 2021 20:51:33 +0000 (UTC)
IronPort-SDR: jLWzjcpUKpEiBeQ0d22NtCLmrFsViEUC4deoQTIzJaBaYt+i3KCb+ZLj1Iywd5gMyFej7QSFf+
 0T0OxlsOz/qw==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="166167642"
X-IronPort-AV: E=Sophos;i="5.81,214,1610438400"; d="scan'208";a="166167642"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2021 12:51:32 -0800
IronPort-SDR: 3lSz1nFsVBJeT7Aw56zmNF5bF09HwjJwlFrS/wbp9TkzdKCM/ZLqXZgRFpe4eLZujRzZ6asnFa
 a4uFPP/uv54g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,214,1610438400"; d="scan'208";a="585279658"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 28 Feb 2021 12:51:31 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lGT2I-0004H8-HR; Sun, 28 Feb 2021 20:51:30 +0000
Date: Mon, 01 Mar 2021 04:50:48 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_remove_return_value] BUILD SUCCESS
 b53e86bd9e06252f937108e7a5f5dfa3a5fa0626
Message-ID: <603c0228.hL6QQ+DYZC00LfBe%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_remove_return_value
branch HEAD: b53e86bd9e06252f937108e7a5f5dfa3a5fa0626  x86/tools/relocs: add __printf attribute to die()

elapsed time: 720m

configs tested: 96
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                       omap2plus_defconfig
powerpc                      walnut_defconfig
mips                        bcm47xx_defconfig
powerpc                      ppc44x_defconfig
powerpc                     akebono_defconfig
arm                  colibri_pxa300_defconfig
arm                       mainstone_defconfig
arm                       aspeed_g5_defconfig
sh                          sdk7786_defconfig
arm                      integrator_defconfig
m68k                         apollo_defconfig
arm                            lart_defconfig
powerpc                        warp_defconfig
arm                        trizeps4_defconfig
powerpc                     redwood_defconfig
powerpc                    adder875_defconfig
m68k                        m5307c3_defconfig
powerpc                  storcenter_defconfig
sh                              ul2_defconfig
xtensa                  nommu_kc705_defconfig
ia64                             allmodconfig
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
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20210228
i386                 randconfig-a005-20210228
i386                 randconfig-a004-20210228
i386                 randconfig-a003-20210228
i386                 randconfig-a001-20210228
i386                 randconfig-a002-20210228
i386                 randconfig-a013-20210228
i386                 randconfig-a012-20210228
i386                 randconfig-a014-20210228
i386                 randconfig-a011-20210228
i386                 randconfig-a015-20210228
i386                 randconfig-a016-20210228
x86_64               randconfig-a002-20210228
x86_64               randconfig-a001-20210228
x86_64               randconfig-a003-20210228
x86_64               randconfig-a005-20210228
x86_64               randconfig-a006-20210228
x86_64               randconfig-a004-20210228
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210228
x86_64               randconfig-a011-20210228
x86_64               randconfig-a012-20210228
x86_64               randconfig-a016-20210228
x86_64               randconfig-a014-20210228
x86_64               randconfig-a013-20210228

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
