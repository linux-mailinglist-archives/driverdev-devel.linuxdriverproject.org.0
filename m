Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7276548E34A
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jan 2022 05:30:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B91D160AFD;
	Fri, 14 Jan 2022 04:30:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AEf_d4sTgxWn; Fri, 14 Jan 2022 04:30:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CD9AA60AF2;
	Fri, 14 Jan 2022 04:30:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4D7551BF2B7
 for <devel@linuxdriverproject.org>; Fri, 14 Jan 2022 04:30:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4551940183
 for <devel@linuxdriverproject.org>; Fri, 14 Jan 2022 04:30:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gn3RPi00IFWu for <devel@linuxdriverproject.org>;
 Fri, 14 Jan 2022 04:30:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 00F3740177
 for <devel@driverdev.osuosl.org>; Fri, 14 Jan 2022 04:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642134625; x=1673670625;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=O4wou2GTtBk8BbEXBxlSaMLxaMLT9P2JjMq6zyjDCfE=;
 b=Ldw93M8UzvU69pH1SlcORaHidOG90Q7u2gV2//RcR0Q6ffLYxxqxRDNr
 psu39JIVcR1k6pOQLXm/91RwEiFLXEJcaQWFwbJ8OthYnPevjsha3Ehjg
 DywXcbk2XFwMd4kehTUFk5baoXSNtfqtoX/THAQFoL4KEabcWmi8+y74Z
 KoMZPwvjObVDlGH9mBGNCUslBBVRMhABGaHnX3PiYvIIPbAkzEQchRcLR
 3CHDQHoDAiQ9MOx7P0LjyCVNCLYAPEYF9DqurAfzMiIYXcHzEpMidCyZh
 CeHsGrTxexeZ6oNW0o5nP0ZyCvz398C7invUPGtrBVa4jh+PAIK6EAa1a w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10226"; a="307524738"
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="307524738"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2022 20:30:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,287,1635231600"; d="scan'208";a="491370847"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 13 Jan 2022 20:30:24 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n8EEJ-00085d-9b; Fri, 14 Jan 2022 04:30:23 +0000
Date: Fri, 14 Jan 2022 12:29:22 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:module_ns] BUILD SUCCESS
 deb840fd0e26842a054ac319ead15c6ba3eb3d76
Message-ID: <61e0fc22.Vn7UZ7U9rWiI/uZ/%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git module_ns
branch HEAD: deb840fd0e26842a054ac319ead15c6ba3eb3d76  module.h: allow #define strings to work with MODULE_IMPORT_NS

elapsed time: 1144m

configs tested: 113
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
mips                       capcella_defconfig
arm                         axm55xx_defconfig
arm                           h5000_defconfig
sh                          landisk_defconfig
csky                             alldefconfig
xtensa                          iss_defconfig
arm                           sunxi_defconfig
powerpc                      pasemi_defconfig
sh                               j2_defconfig
arc                              alldefconfig
mips                           ci20_defconfig
arm                            qcom_defconfig
arm                            pleb_defconfig
ia64                        generic_defconfig
sh                   rts7751r2dplus_defconfig
sh                      rts7751r2d1_defconfig
sh                          kfr2r09_defconfig
um                           x86_64_defconfig
mips                        jmr3927_defconfig
sh                                  defconfig
i386                             alldefconfig
sh                          sdk7786_defconfig
arm                           tegra_defconfig
sh                         microdev_defconfig
powerpc                       ppc64_defconfig
arm                  randconfig-c002-20220113
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
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
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
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20220113
arc                  randconfig-r043-20220113
s390                 randconfig-r044-20220113
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20220113
x86_64                        randconfig-c007
riscv                randconfig-c006-20220113
powerpc              randconfig-c003-20220113
i386                          randconfig-c001
mips                 randconfig-c004-20220113
mips                           ip28_defconfig
arm                          pxa168_defconfig
powerpc                     ppa8548_defconfig
powerpc                     mpc5200_defconfig
mips                            e55_defconfig
powerpc                 mpc836x_mds_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220113
hexagon              randconfig-r041-20220113

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
