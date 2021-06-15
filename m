Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA643A79F9
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Jun 2021 11:18:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BAF67414B2;
	Tue, 15 Jun 2021 09:18:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oFwk1yN572YM; Tue, 15 Jun 2021 09:18:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0AECB403AF;
	Tue, 15 Jun 2021 09:18:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3E73F1BF44C
 for <devel@linuxdriverproject.org>; Tue, 15 Jun 2021 09:17:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2E2428275A
 for <devel@linuxdriverproject.org>; Tue, 15 Jun 2021 09:17:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hjvtNmOYPr00 for <devel@linuxdriverproject.org>;
 Tue, 15 Jun 2021 09:17:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7D8AC826E5
 for <devel@driverdev.osuosl.org>; Tue, 15 Jun 2021 09:17:43 +0000 (UTC)
IronPort-SDR: hNo8hMDAH6Y/xCV+scAH8Ys/VzA/Uf6Eeup8fWLeyth31aMeaoDmKKJXl70sg+ZNA2PQT0aTFF
 KOxTngTAIIfQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="186327628"
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="186327628"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 02:17:41 -0700
IronPort-SDR: F9C72x3UheInMVMPptNjRovF+jmtDRNGhz/q03/ESL8jAYfsxFaddXuFw6QmSvrFhKOqfbWE71
 kvIQPDY7FH+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="639614091"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 15 Jun 2021 02:17:40 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lt5CW-0000JN-14; Tue, 15 Jun 2021 09:17:40 +0000
Date: Tue, 15 Jun 2021 17:16:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:greybus] BUILD SUCCESS WITH WARNING
 cab4d7cd1ee96333007cb5d539286cd41ee99dde
Message-ID: <60c87001.goy3jHQmH4WmWljx%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git greybus
branch HEAD: cab4d7cd1ee96333007cb5d539286cd41ee99dde  staging: greybus: vibrator: rip out custom sysfs api

Warning ids grouped by kconfigs:

clang_recent_errors
`-- x86_64-randconfig-b001-20210614
    |-- drivers-staging-greybus-vibrator.c:iwyu:warning:superfluous-include-linux-idr.h
    `-- drivers-staging-greybus-vibrator.c:iwyu:warning:superfluous-include-linux-kdev_t.h

elapsed time: 2737m

configs tested: 129
configs skipped: 2

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
sh                          landisk_defconfig
powerpc                     redwood_defconfig
arc                           tb10x_defconfig
h8300                    h8300h-sim_defconfig
powerpc                    amigaone_defconfig
mips                      malta_kvm_defconfig
um                             i386_defconfig
powerpc                        fsp2_defconfig
powerpc                      ppc64e_defconfig
powerpc                      katmai_defconfig
arc                              allyesconfig
sh                          kfr2r09_defconfig
powerpc                 mpc85xx_cds_defconfig
arm                        spear3xx_defconfig
powerpc                    klondike_defconfig
csky                             alldefconfig
powerpc                 mpc837x_mds_defconfig
arm                       spear13xx_defconfig
arm                          pxa910_defconfig
powerpc                 mpc8315_rdb_defconfig
powerpc                      chrp32_defconfig
nios2                         10m50_defconfig
arm                           omap1_defconfig
csky                                defconfig
sh                     magicpanelr2_defconfig
arm                             mxs_defconfig
sh                        sh7763rdp_defconfig
sh                          r7785rp_defconfig
arm                            mmp2_defconfig
powerpc                       eiger_defconfig
um                                  defconfig
x86_64                           alldefconfig
powerpc                       ppc64_defconfig
mips                        bcm47xx_defconfig
sh                           se7619_defconfig
powerpc                     ppa8548_defconfig
arm                          pcm027_defconfig
powerpc                      ppc40x_defconfig
arm                          simpad_defconfig
sh                          rsk7201_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a002-20210613
i386                 randconfig-a006-20210613
i386                 randconfig-a001-20210613
i386                 randconfig-a004-20210613
i386                 randconfig-a005-20210613
i386                 randconfig-a003-20210613
i386                 randconfig-a002-20210614
i386                 randconfig-a006-20210614
i386                 randconfig-a004-20210614
i386                 randconfig-a001-20210614
i386                 randconfig-a005-20210614
i386                 randconfig-a003-20210614
i386                 randconfig-a015-20210613
i386                 randconfig-a013-20210613
i386                 randconfig-a016-20210613
i386                 randconfig-a014-20210613
i386                 randconfig-a012-20210613
i386                 randconfig-a011-20210613
x86_64               randconfig-a002-20210613
x86_64               randconfig-a004-20210613
x86_64               randconfig-a001-20210613
x86_64               randconfig-a003-20210613
x86_64               randconfig-a006-20210613
x86_64               randconfig-a005-20210613
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210613
x86_64               randconfig-b001-20210614
x86_64               randconfig-a001-20210614
x86_64               randconfig-a004-20210614
x86_64               randconfig-a002-20210614
x86_64               randconfig-a003-20210614
x86_64               randconfig-a006-20210614
x86_64               randconfig-a005-20210614
x86_64               randconfig-a015-20210613
x86_64               randconfig-a011-20210613
x86_64               randconfig-a014-20210613
x86_64               randconfig-a012-20210613
x86_64               randconfig-a013-20210613
x86_64               randconfig-a016-20210613

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
