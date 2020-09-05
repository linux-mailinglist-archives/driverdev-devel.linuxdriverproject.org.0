Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3828625E872
	for <lists+driverdev-devel@lfdr.de>; Sat,  5 Sep 2020 16:46:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6268E872BD;
	Sat,  5 Sep 2020 14:46:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q2874jaWFfHx; Sat,  5 Sep 2020 14:46:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D7C03871F0;
	Sat,  5 Sep 2020 14:46:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 666AB1BF3DE
 for <devel@linuxdriverproject.org>; Sat,  5 Sep 2020 14:46:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 602E0868A8
 for <devel@linuxdriverproject.org>; Sat,  5 Sep 2020 14:46:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vlkqQpgYB6q4 for <devel@linuxdriverproject.org>;
 Sat,  5 Sep 2020 14:46:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 88B498698F
 for <devel@driverdev.osuosl.org>; Sat,  5 Sep 2020 14:46:37 +0000 (UTC)
IronPort-SDR: 6J3nujpyuKqG/9Bkg1KxnjSevVMzaKQCFAs9RoWDUjibTlRzVRq4hPdONTOwPjuZ+t/o2+9euW
 jLix8VQxOfDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9734"; a="137913970"
X-IronPort-AV: E=Sophos;i="5.76,394,1592895600"; d="scan'208";a="137913970"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2020 07:46:37 -0700
IronPort-SDR: RwHnsZQ1cTcqIxbZijXYOLmMBowZCD9DoVcWsC2LpW5DYB6FCrfxqQxfP8XMpQ1sO3voKz4qgt
 oMdV0PdsMU/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,394,1592895600"; d="scan'208";a="503327542"
Received: from lkp-server02.sh.intel.com (HELO c089623da072) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 05 Sep 2020 07:46:35 -0700
Received: from kbuild by c089623da072 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kEZSd-0000FX-DD; Sat, 05 Sep 2020 14:46:35 +0000
Date: Sat, 05 Sep 2020 22:45:35 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 6b57b15abe11aa334ebf726e02c0deaf123ba040
Message-ID: <5f53a48f.G/c4kgAZ+1t2BGSZ%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-linus
branch HEAD: 6b57b15abe11aa334ebf726e02c0deaf123ba040  driver core: Fix device_pm_lock() locking for device links

elapsed time: 1276m

configs tested: 142
configs skipped: 12

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arc                     haps_hs_smp_defconfig
m68k                            q40_defconfig
m68k                       m5208evb_defconfig
m68k                       m5249evb_defconfig
arm                         mv78xx0_defconfig
sh                        edosk7705_defconfig
arc                 nsimosci_hs_smp_defconfig
m68k                          atari_defconfig
mips                     loongson1c_defconfig
mips                       bmips_be_defconfig
xtensa                              defconfig
mips                      maltaaprp_defconfig
arm                         axm55xx_defconfig
xtensa                    xip_kc705_defconfig
m68k                                defconfig
powerpc                          allmodconfig
s390                                defconfig
openrisc                         alldefconfig
mips                        vocore2_defconfig
arm                          simpad_defconfig
arm                          collie_defconfig
arm                        multi_v7_defconfig
arc                         haps_hs_defconfig
arm                              zx_defconfig
powerpc                      ppc64e_defconfig
arm                        mvebu_v5_defconfig
mips                          malta_defconfig
openrisc                 simple_smp_defconfig
arm                         nhk8815_defconfig
sh                          rsk7264_defconfig
powerpc                          allyesconfig
sh                           se7751_defconfig
m68k                          amiga_defconfig
sh                          r7785rp_defconfig
arm                      tct_hammer_defconfig
sh                             sh03_defconfig
mips                      loongson3_defconfig
powerpc                           allnoconfig
powerpc                     ep8248e_defconfig
sh                        sh7763rdp_defconfig
sh                     sh7710voipgw_defconfig
arm                        trizeps4_defconfig
arm                          imote2_defconfig
alpha                            alldefconfig
mips                        qi_lb60_defconfig
arm                     am200epdkit_defconfig
nios2                            alldefconfig
sh                          landisk_defconfig
mips                            ar7_defconfig
sh                           se7619_defconfig
arc                              allyesconfig
sh                   sh7724_generic_defconfig
ia64                         bigsur_defconfig
arc                     nsimosci_hs_defconfig
riscv                             allnoconfig
powerpc                          g5_defconfig
arm                            hisi_defconfig
powerpc                     skiroot_defconfig
sh                         ecovec24_defconfig
arm                            qcom_defconfig
powerpc                  storcenter_defconfig
arm                          iop32x_defconfig
xtensa                generic_kc705_defconfig
ia64                          tiger_defconfig
mips                           xway_defconfig
m68k                       m5275evb_defconfig
xtensa                           allyesconfig
m68k                          sun3x_defconfig
mips                      pistachio_defconfig
arm                            mps2_defconfig
openrisc                    or1ksim_defconfig
m68k                        stmark2_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
x86_64               randconfig-a006-20200905
x86_64               randconfig-a004-20200905
x86_64               randconfig-a003-20200905
x86_64               randconfig-a005-20200905
x86_64               randconfig-a001-20200905
x86_64               randconfig-a002-20200905
i386                 randconfig-a004-20200904
i386                 randconfig-a005-20200904
i386                 randconfig-a006-20200904
i386                 randconfig-a002-20200904
i386                 randconfig-a003-20200904
i386                 randconfig-a001-20200904
x86_64               randconfig-a013-20200904
x86_64               randconfig-a011-20200904
x86_64               randconfig-a016-20200904
x86_64               randconfig-a012-20200904
x86_64               randconfig-a015-20200904
x86_64               randconfig-a014-20200904
i386                 randconfig-a016-20200905
i386                 randconfig-a015-20200905
i386                 randconfig-a011-20200905
i386                 randconfig-a013-20200905
i386                 randconfig-a014-20200905
i386                 randconfig-a012-20200905
riscv                            allyesconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20200904
x86_64               randconfig-a004-20200904
x86_64               randconfig-a003-20200904
x86_64               randconfig-a005-20200904
x86_64               randconfig-a001-20200904
x86_64               randconfig-a002-20200904

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
