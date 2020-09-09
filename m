Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABBD2623DD
	for <lists+driverdev-devel@lfdr.de>; Wed,  9 Sep 2020 02:18:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8EBAC2E129;
	Wed,  9 Sep 2020 00:18:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id h+UE2imjbkm0; Wed,  9 Sep 2020 00:18:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5C51920433;
	Wed,  9 Sep 2020 00:18:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 109C71BF866
 for <devel@linuxdriverproject.org>; Wed,  9 Sep 2020 00:18:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 049A586DCB
 for <devel@linuxdriverproject.org>; Wed,  9 Sep 2020 00:18:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wt65dcsSXml8 for <devel@linuxdriverproject.org>;
 Wed,  9 Sep 2020 00:18:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A803E86D8A
 for <devel@driverdev.osuosl.org>; Wed,  9 Sep 2020 00:18:00 +0000 (UTC)
IronPort-SDR: jUh/CDGDi3o6FghatFR0IsJ6JFN9YYcxz0ny5gJH/VgKsr4e297lwi+MXIwDxT8lpKe1GOJgeu
 kRwaakMuZkuQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="155729103"
X-IronPort-AV: E=Sophos;i="5.76,407,1592895600"; d="scan'208";a="155729103"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 17:18:00 -0700
IronPort-SDR: XqMzZdO/MNop0NbAY3hrYvi4fNzo8bkbdI7Ltcuh/YTllgD8hz3eNsX068FvWV3xogrVUV7Kku
 Hojf2K8osZTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,407,1592895600"; d="scan'208";a="336592721"
Received: from lkp-server01.sh.intel.com (HELO fc0154cbc871) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 08 Sep 2020 17:17:59 -0700
Received: from kbuild by fc0154cbc871 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kFnoE-0000H9-FM; Wed, 09 Sep 2020 00:17:58 +0000
Date: Wed, 09 Sep 2020 08:17:31 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-next] BUILD SUCCESS
 750628c79bb10ada3d404f576d476c3cef2da6fb
Message-ID: <5f581f1b.xMIbyddzW3WVYNQf%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-next
branch HEAD: 750628c79bb10ada3d404f576d476c3cef2da6fb  iio: adc: xilinx-xadc: use devm_krealloc()

elapsed time: 722m

configs tested: 128
configs skipped: 9

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                           ip27_defconfig
arm                   milbeaut_m10v_defconfig
alpha                               defconfig
arc                              alldefconfig
m68k                        m5272c3_defconfig
mips                 decstation_r4k_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                     ep8248e_defconfig
xtensa                              defconfig
arm                          pxa910_defconfig
arm                        spear3xx_defconfig
c6x                        evmc6457_defconfig
arc                              allyesconfig
sh                   sh7724_generic_defconfig
mips                          ath79_defconfig
sh                          lboxre2_defconfig
arc                     haps_hs_smp_defconfig
m68k                       m5275evb_defconfig
h8300                               defconfig
c6x                        evmc6474_defconfig
mips                   sb1250_swarm_defconfig
arm                            hisi_defconfig
arm                       spear13xx_defconfig
arm                          pxa168_defconfig
arm                         hackkit_defconfig
powerpc                 linkstation_defconfig
arm                      footbridge_defconfig
arm                         cm_x300_defconfig
arm                         lpc32xx_defconfig
riscv                             allnoconfig
sh                            hp6xx_defconfig
openrisc                    or1ksim_defconfig
c6x                         dsk6455_defconfig
h8300                            alldefconfig
sh                        sh7785lcr_defconfig
arc                          axs103_defconfig
mips                malta_kvm_guest_defconfig
s390                          debug_defconfig
c6x                        evmc6678_defconfig
mips                         tb0287_defconfig
arc                          axs101_defconfig
nios2                            allyesconfig
sh                        apsh4ad0a_defconfig
s390                       zfcpdump_defconfig
arm                       mainstone_defconfig
powerpc                      ppc64e_defconfig
sh                            shmin_defconfig
mips                           ci20_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
csky                                defconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20200907
x86_64               randconfig-a004-20200907
x86_64               randconfig-a003-20200907
x86_64               randconfig-a005-20200907
x86_64               randconfig-a001-20200907
x86_64               randconfig-a002-20200907
i386                 randconfig-a004-20200908
i386                 randconfig-a005-20200908
i386                 randconfig-a006-20200908
i386                 randconfig-a002-20200908
i386                 randconfig-a001-20200908
i386                 randconfig-a003-20200908
x86_64               randconfig-a013-20200908
x86_64               randconfig-a016-20200908
x86_64               randconfig-a011-20200908
x86_64               randconfig-a012-20200908
x86_64               randconfig-a015-20200908
x86_64               randconfig-a014-20200908
i386                 randconfig-a016-20200907
i386                 randconfig-a015-20200907
i386                 randconfig-a011-20200907
i386                 randconfig-a013-20200907
i386                 randconfig-a014-20200907
i386                 randconfig-a012-20200907
i386                 randconfig-a016-20200908
i386                 randconfig-a015-20200908
i386                 randconfig-a011-20200908
i386                 randconfig-a013-20200908
i386                 randconfig-a014-20200908
i386                 randconfig-a012-20200908
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
x86_64               randconfig-a004-20200908
x86_64               randconfig-a006-20200908
x86_64               randconfig-a003-20200908
x86_64               randconfig-a001-20200908
x86_64               randconfig-a005-20200908
x86_64               randconfig-a002-20200908

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
