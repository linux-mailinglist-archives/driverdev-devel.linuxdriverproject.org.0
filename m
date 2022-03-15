Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4508E4D9B96
	for <lists+driverdev-devel@lfdr.de>; Tue, 15 Mar 2022 13:49:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ACFE94094C;
	Tue, 15 Mar 2022 12:49:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0rlSIHoq9YWy; Tue, 15 Mar 2022 12:49:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 325C040935;
	Tue, 15 Mar 2022 12:49:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 272F61BF20F
 for <devel@linuxdriverproject.org>; Tue, 15 Mar 2022 12:49:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 132F360FAA
 for <devel@linuxdriverproject.org>; Tue, 15 Mar 2022 12:49:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SkbuUlVT9Avb for <devel@linuxdriverproject.org>;
 Tue, 15 Mar 2022 12:49:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id F37FC607EC
 for <devel@driverdev.osuosl.org>; Tue, 15 Mar 2022 12:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647348592; x=1678884592;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=HdiMhPXg7FYKxJlwYNbypwnRNvZTPdOH7rHikWayxWU=;
 b=m9uPsCYyHY5rDG2JCEJnmPv7c/e1+I4vrjKxDDxKZUTzTEO89PZpxU4/
 iS6rcxu0MzsA/6U/n0Hl9Hc/PNn0KTRdRTBfN/XMHzRpVc/Uma76FNOam
 1E9CR2sfHgOAufFiHXQfhld8QXzPps6waYqMIOQ3dW/9QAns9I4NP3fTS
 hBINIH//8mP5HvIB12rbxuav0SqiiXf43gTQgqFeQ4soXqVlrnuljtabK
 aKvBc48BC1azLWge2cA3rescierODNVHS4a+xZgP1mTU1X+1onoVFBCAn
 UMdhOXhn1OgZUxIfNln5iLDFzFBurFtk/rgaYyhaobYrRgalVqCsAJIBL g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="317010353"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="317010353"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 05:49:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="515852955"
Received: from lkp-server02.sh.intel.com (HELO 89b41b6ae01c) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 15 Mar 2022 05:49:49 -0700
Received: from kbuild by 89b41b6ae01c with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nU6cX-000AyK-4S; Tue, 15 Mar 2022 12:49:49 +0000
Date: Tue, 15 Mar 2022 20:48:59 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 78b33c600486e97c9b61c25a37b283c211be8560
Message-ID: <62308b3b.H7cm5vr+65dl0JJe%lkp@intel.com>
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
branch HEAD: 78b33c600486e97c9b61c25a37b283c211be8560  staging: vt6656: Remove unused rf_type in card.c

elapsed time: 725m

configs tested: 127
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc              randconfig-c003-20220313
i386                          randconfig-c001
i386                 randconfig-c001-20220314
powerpc                      pasemi_defconfig
arm                       imx_v6_v7_defconfig
xtensa                              defconfig
arm                         nhk8815_defconfig
arc                          axs101_defconfig
openrisc                  or1klitex_defconfig
arm                            xcep_defconfig
riscv             nommu_k210_sdcard_defconfig
sh                            migor_defconfig
sh                             sh03_defconfig
m68k                           sun3_defconfig
m68k                        m5272c3_defconfig
powerpc                        cell_defconfig
sh                           se7705_defconfig
powerpc                      bamboo_defconfig
csky                             alldefconfig
parisc                generic-32bit_defconfig
powerpc                 mpc837x_mds_defconfig
h8300                     edosk2674_defconfig
m68k                         apollo_defconfig
powerpc                      arches_defconfig
m68k                                defconfig
arm                       aspeed_g5_defconfig
parisc                generic-64bit_defconfig
powerpc                 mpc834x_mds_defconfig
sh                         microdev_defconfig
sh                     sh7710voipgw_defconfig
arm                  randconfig-c002-20220313
arm                  randconfig-c002-20220314
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
arc                                 defconfig
h8300                            allyesconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc64                            defconfig
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
i386                 randconfig-a003-20220314
i386                 randconfig-a004-20220314
i386                 randconfig-a001-20220314
i386                 randconfig-a006-20220314
i386                 randconfig-a002-20220314
i386                 randconfig-a005-20220314
x86_64               randconfig-a004-20220314
x86_64               randconfig-a005-20220314
x86_64               randconfig-a003-20220314
x86_64               randconfig-a002-20220314
x86_64               randconfig-a006-20220314
x86_64               randconfig-a001-20220314
arc                  randconfig-r043-20220313
arc                  randconfig-r043-20220314
riscv                randconfig-r042-20220313
s390                 randconfig-r044-20220313
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20220313
x86_64                        randconfig-c007
powerpc              randconfig-c003-20220313
riscv                randconfig-c006-20220313
mips                 randconfig-c004-20220313
i386                          randconfig-c001
powerpc                       ebony_defconfig
powerpc                 mpc8315_rdb_defconfig
arm                          imote2_defconfig
powerpc                      pmac32_defconfig
x86_64               randconfig-a014-20220314
x86_64               randconfig-a015-20220314
x86_64               randconfig-a016-20220314
x86_64               randconfig-a012-20220314
x86_64               randconfig-a013-20220314
x86_64               randconfig-a011-20220314
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
hexagon              randconfig-r045-20220314
hexagon              randconfig-r045-20220313
riscv                randconfig-r042-20220314
hexagon              randconfig-r041-20220313
hexagon              randconfig-r041-20220314

---
0-DAY CI Kernel Test Service
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
