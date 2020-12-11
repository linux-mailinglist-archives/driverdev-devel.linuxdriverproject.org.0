Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E21E02D6EBD
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Dec 2020 04:38:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 02646871C6;
	Fri, 11 Dec 2020 03:38:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PxNkzOUoF8mY; Fri, 11 Dec 2020 03:38:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id DA12087150;
	Fri, 11 Dec 2020 03:38:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 498F31BF9C8
 for <devel@linuxdriverproject.org>; Fri, 11 Dec 2020 03:38:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4684587150
 for <devel@linuxdriverproject.org>; Fri, 11 Dec 2020 03:38:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7dZwFxv74j11 for <devel@linuxdriverproject.org>;
 Fri, 11 Dec 2020 03:38:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 617AA8714F
 for <devel@driverdev.osuosl.org>; Fri, 11 Dec 2020 03:38:19 +0000 (UTC)
IronPort-SDR: hiDfR+Ydm2qYYKYwdXZS1BiRFA+OjZnurTaa2QR2AZiJnUPsPBmjanlm36aWDxAnB/Ijv/D9fz
 feB2d2DsGQyg==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="238476468"
X-IronPort-AV: E=Sophos;i="5.78,410,1599548400"; d="scan'208";a="238476468"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 19:38:07 -0800
IronPort-SDR: TKalpaEzYDJkzSkPKP6skO7EgMJnC8gcYK9wgcjVNsz31DTTYykVl8Lqkyv/l4/DZZ55Lc28bX
 Ktmmwh2GrAXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,410,1599548400"; d="scan'208";a="338883756"
Received: from lkp-server01.sh.intel.com (HELO ecc0cebe68d1) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 10 Dec 2020 19:38:05 -0800
Received: from kbuild by ecc0cebe68d1 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1knZFt-0000jR-5F; Fri, 11 Dec 2020 03:38:05 +0000
Date: Fri, 11 Dec 2020 11:37:54 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS WITH WARNING
 2a0387e8128ae0c3de9ff976bc25afaae3d4a916
Message-ID: <5fd2e992.vzlxvXdHhn1tXN0X%lkp@intel.com>
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
branch HEAD: 2a0387e8128ae0c3de9ff976bc25afaae3d4a916  misc: pvpanic: Replace OF headers by mod_devicetable.h

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- h8300-randconfig-c004-20201209
|   `-- drivers-of-property.c:Unneeded-variable:ret-Return-on-line
`-- i386-randconfig-c001-20201209
    `-- drivers-of-property.c:Unneeded-variable:ret-Return-on-line


i386-tinyconfig vmlinux size:

+-------+------------------------------------------+------------------------------------------+
| DELTA |                  SYMBOL                  |                  COMMIT                  |
+-------+------------------------------------------+------------------------------------------+
|  +536 | TOTAL                                    | f8394f232b1e..2a0387e8128a (ALL COMMITS) |
|  +601 | TEXT                                     | f8394f232b1e..2a0387e8128a (ALL COMMITS) |
|  +218 | __fw_devlink_link_to_suppliers()         | f8394f232b1e..2a0387e8128a (ALL COMMITS) |
|  +140 | fwnode_link_add()                        | f8394f232b1e..2a0387e8128a (ALL COMMITS) |
|  +106 | fw_devlink_create_devlink()              | f8394f232b1e..2a0387e8128a (ALL COMMITS) |
|   +84 | fwnode_links_purge()                     | f8394f232b1e..2a0387e8128a (ALL COMMITS) |
|   +83 | fwnode_links_purge_suppliers()           | f8394f232b1e..2a0387e8128a (ALL COMMITS) |
|   +69 | fw_devlink_parse_fwtree()                | f8394f232b1e..2a0387e8128a (ALL COMMITS) |
|   +68 | driver_probe_device()                    | f8394f232b1e..2a0387e8128a (ALL COMMITS) |
|   -68 | driver_probe_device()                    | f8394f232b1e..2a0387e8128a (ALL COMMITS) |
|  -124 | device_link_add_missing_supplier_links() | f8394f232b1e..2a0387e8128a (ALL COMMITS) |
|  -172 | fw_devlink_resume()                      | f8394f232b1e..2a0387e8128a (ALL COMMITS) |
+-------+------------------------------------------+------------------------------------------+

elapsed time: 723m

configs tested: 165
configs skipped: 2

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arc                         haps_hs_defconfig
sh                             shx3_defconfig
arm                          ixp4xx_defconfig
arm                          moxart_defconfig
powerpc                      walnut_defconfig
mips                     cu1000-neo_defconfig
sh                 kfr2r09-romimage_defconfig
um                             i386_defconfig
arc                            hsdk_defconfig
mips                    maltaup_xpa_defconfig
arm                          ep93xx_defconfig
arm                            zeus_defconfig
sh                           se7343_defconfig
sh                            migor_defconfig
mips                        vocore2_defconfig
arm                         orion5x_defconfig
powerpc                 mpc836x_mds_defconfig
xtensa                    xip_kc705_defconfig
sh                          kfr2r09_defconfig
sparc                            alldefconfig
mips                        bcm47xx_defconfig
microblaze                      mmu_defconfig
arc                          axs103_defconfig
arm                     eseries_pxa_defconfig
arm                      tct_hammer_defconfig
powerpc                    mvme5100_defconfig
powerpc                      acadia_defconfig
arm                          imote2_defconfig
mips                malta_kvm_guest_defconfig
sh                          sdk7780_defconfig
powerpc                 mpc8560_ads_defconfig
arm                         lubbock_defconfig
arm                          tango4_defconfig
mips                           gcw0_defconfig
powerpc                     asp8347_defconfig
arm                          simpad_defconfig
powerpc                         ps3_defconfig
sh                           se7705_defconfig
sh                        sh7763rdp_defconfig
sparc64                          alldefconfig
h8300                               defconfig
sh                          rsk7201_defconfig
mips                           rs90_defconfig
arm                          collie_defconfig
openrisc                    or1ksim_defconfig
mips                        bcm63xx_defconfig
alpha                            alldefconfig
sh                         microdev_defconfig
arm                           u8500_defconfig
powerpc                        icon_defconfig
m68k                             alldefconfig
sh                          r7785rp_defconfig
sh                   secureedge5410_defconfig
ia64                          tiger_defconfig
arm                        mini2440_defconfig
sh                              ul2_defconfig
c6x                                 defconfig
mips                             allyesconfig
mips                          rb532_defconfig
sh                          urquell_defconfig
sh                          sdk7786_defconfig
powerpc                      ppc64e_defconfig
arm                         palmz72_defconfig
sh                  sh7785lcr_32bit_defconfig
arm                         shannon_defconfig
sh                               j2_defconfig
m68k                       m5249evb_defconfig
arm                       versatile_defconfig
sh                   rts7751r2dplus_defconfig
powerpc                 mpc834x_itx_defconfig
sh                               alldefconfig
powerpc                      cm5200_defconfig
powerpc                      ppc40x_defconfig
mips                          rm200_defconfig
arm                             mxs_defconfig
riscv                            alldefconfig
powerpc                      arches_defconfig
m68k                        m5272c3_defconfig
powerpc                 mpc837x_rdb_defconfig
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
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
sparc                            allyesconfig
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
riscv                            allmodconfig
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
