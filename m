Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D162D545D
	for <lists+driverdev-devel@lfdr.de>; Thu, 10 Dec 2020 08:14:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3B0D586E82;
	Thu, 10 Dec 2020 07:14:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gmtAVDiytVri; Thu, 10 Dec 2020 07:14:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id B3C2E86D8B;
	Thu, 10 Dec 2020 07:14:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C469D1BF335
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 07:14:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BDA9787888
 for <devel@linuxdriverproject.org>; Thu, 10 Dec 2020 07:14:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nam2ipEoGZ7H for <devel@linuxdriverproject.org>;
 Thu, 10 Dec 2020 07:14:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id D7A1A87871
 for <devel@driverdev.osuosl.org>; Thu, 10 Dec 2020 07:14:33 +0000 (UTC)
IronPort-SDR: n+TBLtAmPdw88fyPFfet3TZxT9Lp8AY89U46r8GCJ5hm5QYoE42Pw3Fj3b8KB5BJCejnbOdxXB
 WKmX9ndHXiwQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9830"; a="174325368"
X-IronPort-AV: E=Sophos;i="5.78,407,1599548400"; d="scan'208";a="174325368"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2020 23:14:33 -0800
IronPort-SDR: 3binSYEg/q8AqPvckoRGGCueeIxdiSdZ82Jpdckg3W2PhZ/V1nsueffisrFwYMZzMp7xZJBADO
 9kFaFOF48Mzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,407,1599548400"; d="scan'208";a="333213708"
Received: from lkp-server01.sh.intel.com (HELO ecc0cebe68d1) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 09 Dec 2020 23:14:31 -0800
Received: from kbuild by ecc0cebe68d1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1knG9n-00007x-6C; Thu, 10 Dec 2020 07:14:31 +0000
Date: Thu, 10 Dec 2020 15:14:10 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS WITH WARNING
 3577afb0052fca65e67efdfc8e0859bb7bac87a6
Message-ID: <5fd1cac2.rC4SBHMym7utwUZC%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-testing
branch HEAD: 3577afb0052fca65e67efdfc8e0859bb7bac87a6  dyndbg: fix use before null check

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- arc-randconfig-c004-20201209
    `-- drivers-of-property.c:Unneeded-variable:ret-Return-on-line


i386-tinyconfig vmlinux size:

+-------+------------------------------------------+------------------------------------------+
| DELTA |                  SYMBOL                  |                  COMMIT                  |
+-------+------------------------------------------+------------------------------------------+
|  +481 | TOTAL                                    | f8394f232b1e..3577afb0052f (ALL COMMITS) |
|  +546 | TEXT                                     | f8394f232b1e..3577afb0052f (ALL COMMITS) |
|  +218 | __fw_devlink_link_to_suppliers()         | f8394f232b1e..3577afb0052f (ALL COMMITS) |
|  +140 | fwnode_link_add()                        | f8394f232b1e..3577afb0052f (ALL COMMITS) |
|  +106 | fw_devlink_create_devlink()              | f8394f232b1e..3577afb0052f (ALL COMMITS) |
|   +84 | fwnode_links_purge()                     | f8394f232b1e..3577afb0052f (ALL COMMITS) |
|   +83 | fwnode_links_purge_suppliers()           | f8394f232b1e..3577afb0052f (ALL COMMITS) |
|   +69 | fw_devlink_parse_fwtree()                | f8394f232b1e..3577afb0052f (ALL COMMITS) |
|   +68 | driver_probe_device()                    | f8394f232b1e..3577afb0052f (ALL COMMITS) |
|   -68 | driver_probe_device()                    | f8394f232b1e..3577afb0052f (ALL COMMITS) |
|  -124 | device_link_add_missing_supplier_links() | f8394f232b1e..3577afb0052f (ALL COMMITS) |
|  -172 | fw_devlink_resume()                      | f8394f232b1e..3577afb0052f (ALL COMMITS) |
+-------+------------------------------------------+------------------------------------------+

elapsed time: 724m

configs tested: 145
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                 mpc837x_mds_defconfig
h8300                               defconfig
xtensa                           alldefconfig
mips                      loongson3_defconfig
powerpc                     ppa8548_defconfig
sh                        edosk7705_defconfig
xtensa                generic_kc705_defconfig
s390                             allyesconfig
mips                         mpc30x_defconfig
openrisc                 simple_smp_defconfig
m68k                        stmark2_defconfig
powerpc                    ge_imp3a_defconfig
arc                     haps_hs_smp_defconfig
powerpc                 mpc832x_mds_defconfig
mips                          malta_defconfig
powerpc                       eiger_defconfig
m68k                        mvme147_defconfig
powerpc                      tqm8xx_defconfig
arc                        vdk_hs38_defconfig
powerpc                      walnut_defconfig
ia64                         bigsur_defconfig
m68k                         apollo_defconfig
powerpc                     tqm8555_defconfig
riscv                            allmodconfig
mips                           gcw0_defconfig
sh                          kfr2r09_defconfig
sh                           se7724_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                           viper_defconfig
arm                         socfpga_defconfig
alpha                            alldefconfig
arm                        vexpress_defconfig
powerpc                      makalu_defconfig
mips                         tb0219_defconfig
mips                  maltasmvp_eva_defconfig
mips                     cu1000-neo_defconfig
powerpc                     rainier_defconfig
arm                          pcm027_defconfig
mips                          ath25_defconfig
powerpc                 mpc834x_mds_defconfig
arm                        oxnas_v6_defconfig
s390                                defconfig
arm                        spear6xx_defconfig
arm                         s3c6400_defconfig
mips                         db1xxx_defconfig
mips                            ar7_defconfig
arm                       versatile_defconfig
powerpc                        icon_defconfig
powerpc                     tqm8541_defconfig
m68k                             alldefconfig
arm                          ep93xx_defconfig
arm                        cerfcube_defconfig
arm                       multi_v4t_defconfig
nios2                            alldefconfig
arm                       aspeed_g5_defconfig
powerpc                 canyonlands_defconfig
sh                      rts7751r2d1_defconfig
mips                         bigsur_defconfig
mips                           xway_defconfig
mips                         cobalt_defconfig
mips                        nlm_xlp_defconfig
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
parisc                           allyesconfig
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
i386                 randconfig-a004-20201209
i386                 randconfig-a005-20201209
i386                 randconfig-a001-20201209
i386                 randconfig-a002-20201209
i386                 randconfig-a006-20201209
i386                 randconfig-a003-20201209
i386                 randconfig-a001-20201210
i386                 randconfig-a004-20201210
i386                 randconfig-a003-20201210
i386                 randconfig-a002-20201210
i386                 randconfig-a005-20201210
i386                 randconfig-a006-20201210
x86_64               randconfig-a016-20201209
x86_64               randconfig-a012-20201209
x86_64               randconfig-a013-20201209
x86_64               randconfig-a014-20201209
x86_64               randconfig-a015-20201209
x86_64               randconfig-a011-20201209
i386                 randconfig-a013-20201209
i386                 randconfig-a014-20201209
i386                 randconfig-a011-20201209
i386                 randconfig-a015-20201209
i386                 randconfig-a012-20201209
i386                 randconfig-a016-20201209
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20201209
x86_64               randconfig-a006-20201209
x86_64               randconfig-a005-20201209
x86_64               randconfig-a001-20201209
x86_64               randconfig-a002-20201209
x86_64               randconfig-a003-20201209
x86_64               randconfig-a003-20201210
x86_64               randconfig-a006-20201210
x86_64               randconfig-a002-20201210
x86_64               randconfig-a005-20201210
x86_64               randconfig-a004-20201210
x86_64               randconfig-a001-20201210

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
