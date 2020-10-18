Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF0129160C
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Oct 2020 07:35:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 819DE87779;
	Sun, 18 Oct 2020 05:35:13 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r+p1ZunCP5m6; Sun, 18 Oct 2020 05:35:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E5F5087735;
	Sun, 18 Oct 2020 05:35:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2CCE51BF5DD
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 05:35:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1A8F487720
 for <devel@linuxdriverproject.org>; Sun, 18 Oct 2020 05:35:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zQaPglg0uFQX for <devel@linuxdriverproject.org>;
 Sun, 18 Oct 2020 05:35:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 1516E87715
 for <devel@driverdev.osuosl.org>; Sun, 18 Oct 2020 05:35:08 +0000 (UTC)
IronPort-SDR: 5yRNK/vbdMU+zKF4b1iM8XcQxiyFuuNRDHYwBs6hrpiiXWHBhNWzvf/LLtahb2Wae3NQMICIcq
 MY/DA/oEL+Cw==
X-IronPort-AV: E=McAfee;i="6000,8403,9777"; a="231053342"
X-IronPort-AV: E=Sophos;i="5.77,388,1596524400"; d="scan'208";a="231053342"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2020 22:35:03 -0700
IronPort-SDR: /iOIZ3G0tGB//ugbSHXVwIZj2n5R+v1qQDYOBU3blPGVExg9gFz2hkBuLfDL35xkEcSIUdzii5
 NSC7k4y6ZPsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,388,1596524400"; d="scan'208";a="301077026"
Received: from lkp-server02.sh.intel.com (HELO c383df7b95ee) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 17 Oct 2020 22:35:01 -0700
Received: from kbuild by c383df7b95ee with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kU1LQ-0000Ep-KZ; Sun, 18 Oct 2020 05:35:00 +0000
Date: Sun, 18 Oct 2020 13:34:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 5d422cd4fc8e5853cb3dc8d7c648a9eb8a04bee9
Message-ID: <5f8bd3d7.L4V4GYOBUjDsQv7A%lkp@intel.com>
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
branch HEAD: 5d422cd4fc8e5853cb3dc8d7c648a9eb8a04bee9  staging: qlge: remove extra blank lines

elapsed time: 721m

configs tested: 94
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                       imx_v4_v5_defconfig
mips                        workpad_defconfig
xtensa                    smp_lx200_defconfig
xtensa                  audio_kc705_defconfig
mips                 decstation_r4k_defconfig
arm                          collie_defconfig
m68k                        mvme16x_defconfig
sparc64                             defconfig
mips                       capcella_defconfig
arm                         assabet_defconfig
mips                  decstation_64_defconfig
arm                          pxa168_defconfig
arm                        clps711x_defconfig
sh                 kfr2r09-romimage_defconfig
arm                      tct_hammer_defconfig
arm                   milbeaut_m10v_defconfig
arm                         lubbock_defconfig
m68k                            mac_defconfig
arm                           sunxi_defconfig
arc                          axs103_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
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
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a006-20201018
i386                 randconfig-a005-20201018
i386                 randconfig-a001-20201018
i386                 randconfig-a003-20201018
i386                 randconfig-a004-20201018
i386                 randconfig-a002-20201018
x86_64               randconfig-a016-20201018
x86_64               randconfig-a015-20201018
x86_64               randconfig-a012-20201018
x86_64               randconfig-a013-20201018
x86_64               randconfig-a011-20201018
x86_64               randconfig-a014-20201018
i386                 randconfig-a015-20201018
i386                 randconfig-a013-20201018
i386                 randconfig-a016-20201018
i386                 randconfig-a012-20201018
i386                 randconfig-a011-20201018
i386                 randconfig-a014-20201018
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20201018
x86_64               randconfig-a002-20201018
x86_64               randconfig-a006-20201018
x86_64               randconfig-a003-20201018
x86_64               randconfig-a005-20201018
x86_64               randconfig-a001-20201018

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
