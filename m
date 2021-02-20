Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D3D320459
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 08:41:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DAF8B6F645
	for <lists+driverdev-devel@lfdr.de>; Sat, 20 Feb 2021 07:41:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id enAQjfBPe_Dm for <lists+driverdev-devel@lfdr.de>;
	Sat, 20 Feb 2021 07:41:22 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 338486F638; Sat, 20 Feb 2021 07:41:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 026EC6F492;
	Sat, 20 Feb 2021 07:41:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8F8991BF31F
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 07:40:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8BBB683AEA
 for <devel@linuxdriverproject.org>; Sat, 20 Feb 2021 07:40:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J7W7uvbcpHgn for <devel@linuxdriverproject.org>;
 Sat, 20 Feb 2021 07:40:52 +0000 (UTC)
Received: by smtp1.osuosl.org (Postfix, from userid 1001)
 id 7528E83B4D; Sat, 20 Feb 2021 07:40:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5A8A583AEA
 for <devel@driverdev.osuosl.org>; Sat, 20 Feb 2021 07:40:51 +0000 (UTC)
IronPort-SDR: I1GeTq1/RkSPrMkDko5fcWQnn3ToINii7UtmoNshSD8PAUrD6csF4JCFFgaemPwoAEsKriaLGt
 4LiB8+W5iu6Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9900"; a="268925830"
X-IronPort-AV: E=Sophos;i="5.81,192,1610438400"; d="scan'208";a="268925830"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 23:40:46 -0800
IronPort-SDR: yDBqjqpSDmOHyx1NTeHGqrO4DX7PjbtSZY9a43zMsO9c4ZzO67XcZ4qUoeVjfj9y1KVoJyysE7
 4KRHKSrMA4XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,192,1610438400"; d="scan'208";a="402306586"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 19 Feb 2021 23:40:45 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lDMse-000Au8-Oo; Sat, 20 Feb 2021 07:40:44 +0000
Date: Sat, 20 Feb 2021 15:40:23 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_remove_return_value] BUILD SUCCESS
 636a3ba6ba05515c6a8627ab7d0009af118d0d51
Message-ID: <6030bce7.3uyDK/lxCjK37grz%lkp@intel.com>
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
branch HEAD: 636a3ba6ba05515c6a8627ab7d0009af118d0d51  debugfs: remove return value of debugfs_create_bool()

elapsed time: 724m

configs tested: 123
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc64                           defconfig
mips                      pic32mzda_defconfig
mips                     loongson1c_defconfig
arm                      tct_hammer_defconfig
arm                        mvebu_v5_defconfig
powerpc                        fsp2_defconfig
arm                             ezx_defconfig
sh                          landisk_defconfig
powerpc                     tqm5200_defconfig
xtensa                       common_defconfig
h8300                               defconfig
sh                           se7619_defconfig
powerpc                 mpc834x_mds_defconfig
arm                        spear6xx_defconfig
parisc                generic-32bit_defconfig
arm                            hisi_defconfig
sparc64                          alldefconfig
powerpc                     asp8347_defconfig
arm                        realview_defconfig
arm                           h5000_defconfig
ia64                         bigsur_defconfig
h8300                       h8s-sim_defconfig
mips                         tb0219_defconfig
arm                          badge4_defconfig
mips                 decstation_r4k_defconfig
arm                          lpd270_defconfig
powerpc                      tqm8xx_defconfig
sh                             sh03_defconfig
powerpc                      arches_defconfig
arm                          tango4_defconfig
powerpc                  mpc866_ads_defconfig
arc                                 defconfig
arm                          gemini_defconfig
m68k                        mvme147_defconfig
mips                            gpr_defconfig
powerpc                    amigaone_defconfig
sh                          sdk7786_defconfig
sh                        dreamcast_defconfig
arm                           u8500_defconfig
arm                         assabet_defconfig
c6x                        evmc6472_defconfig
xtensa                           alldefconfig
microblaze                          defconfig
sh                           se7705_defconfig
mips                     cu1830-neo_defconfig
arm                       imx_v6_v7_defconfig
powerpc                     pseries_defconfig
arm                        multi_v7_defconfig
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
i386                 randconfig-a005-20210219
i386                 randconfig-a003-20210219
i386                 randconfig-a002-20210219
i386                 randconfig-a004-20210219
i386                 randconfig-a001-20210219
i386                 randconfig-a006-20210219
x86_64               randconfig-a012-20210219
x86_64               randconfig-a016-20210219
x86_64               randconfig-a013-20210219
x86_64               randconfig-a015-20210219
x86_64               randconfig-a011-20210219
x86_64               randconfig-a014-20210219
i386                 randconfig-a016-20210219
i386                 randconfig-a012-20210219
i386                 randconfig-a014-20210219
i386                 randconfig-a013-20210219
i386                 randconfig-a011-20210219
i386                 randconfig-a015-20210219
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
x86_64               randconfig-a003-20210219
x86_64               randconfig-a001-20210219
x86_64               randconfig-a004-20210219
x86_64               randconfig-a002-20210219
x86_64               randconfig-a005-20210219
x86_64               randconfig-a006-20210219

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
