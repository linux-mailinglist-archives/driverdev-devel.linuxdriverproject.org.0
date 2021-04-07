Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89676357766
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Apr 2021 00:11:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1AE1F4068D;
	Wed,  7 Apr 2021 22:11:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4XsuqW4jkwBk; Wed,  7 Apr 2021 22:11:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 471C34020F;
	Wed,  7 Apr 2021 22:11:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 057441BF48D
 for <devel@linuxdriverproject.org>; Wed,  7 Apr 2021 22:10:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DEDE3405B5
 for <devel@linuxdriverproject.org>; Wed,  7 Apr 2021 22:10:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id du9PWI2ciXjK for <devel@linuxdriverproject.org>;
 Wed,  7 Apr 2021 22:10:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B170A405AF
 for <devel@driverdev.osuosl.org>; Wed,  7 Apr 2021 22:10:49 +0000 (UTC)
IronPort-SDR: e8RBVeOr+Ah1EBZ3ScDAVLTFpB5JsCo66mK0L+N5htb/AZtdYlE3KPjs6YhEvT6Xnm7FGEVCT1
 aOMV42LIlqnw==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="213805440"
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="213805440"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 15:10:48 -0700
IronPort-SDR: rmsJ9famxbxCIkD9tfX3rXIQRyv0yo5hS7Sgh4euhXri5xgGXtZ1zb8gY0IUz7j52SyYxpkwjG
 7142UMlM8wyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,204,1613462400"; d="scan'208";a="441490002"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 07 Apr 2021 15:10:47 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lUGNr-000Dq2-2w; Wed, 07 Apr 2021 22:10:47 +0000
Date: Thu, 08 Apr 2021 06:10:24 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 c2f3f755f5c717f3621b33ef06d974b9cec4a104
Message-ID: <606e2dd0.WH4buK1i6ovQDQyH%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: c2f3f755f5c717f3621b33ef06d974b9cec4a104  Revert "driver core: platform: Make platform_get_irq_optional() optional"

elapsed time: 720m

configs tested: 116
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
x86_64                           allyesconfig
riscv                            allmodconfig
i386                             allyesconfig
riscv                            allyesconfig
nios2                               defconfig
arc                          axs101_defconfig
alpha                            alldefconfig
s390                                defconfig
mips                        nlm_xlp_defconfig
m68k                                defconfig
powerpc                 mpc834x_itx_defconfig
mips                  maltasmvp_eva_defconfig
arm                       netwinder_defconfig
arm                     am200epdkit_defconfig
mips                          rb532_defconfig
powerpc                   currituck_defconfig
powerpc                      chrp32_defconfig
arm                        keystone_defconfig
alpha                            allyesconfig
sh                            shmin_defconfig
mips                           ci20_defconfig
s390                       zfcpdump_defconfig
nios2                         3c120_defconfig
m68k                        m5407c3_defconfig
powerpc                    klondike_defconfig
powerpc                      ppc44x_defconfig
sh                          sdk7780_defconfig
powerpc                      arches_defconfig
csky                             alldefconfig
arc                     nsimosci_hs_defconfig
powerpc                           allnoconfig
h8300                     edosk2674_defconfig
arm                       versatile_defconfig
mips                      pistachio_defconfig
parisc                           allyesconfig
sh                          rsk7201_defconfig
arc                      axs103_smp_defconfig
sh                               j2_defconfig
sh                            titan_defconfig
arm                           omap1_defconfig
powerpc                   motionpro_defconfig
powerpc                     powernv_defconfig
powerpc                 mpc8313_rdb_defconfig
sh                              ul2_defconfig
arm                             rpc_defconfig
arm                        vexpress_defconfig
powerpc                 mpc834x_mds_defconfig
sh                           se7721_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                  mpc866_ads_defconfig
mips                     cu1830-neo_defconfig
mips                           ip32_defconfig
i386                                defconfig
arc                        nsim_700_defconfig
sh                  sh7785lcr_32bit_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
i386                 randconfig-a006-20210407
i386                 randconfig-a003-20210407
i386                 randconfig-a001-20210407
i386                 randconfig-a004-20210407
i386                 randconfig-a002-20210407
i386                 randconfig-a005-20210407
x86_64               randconfig-a014-20210407
x86_64               randconfig-a015-20210407
x86_64               randconfig-a013-20210407
x86_64               randconfig-a011-20210407
x86_64               randconfig-a012-20210407
x86_64               randconfig-a016-20210407
i386                 randconfig-a014-20210407
i386                 randconfig-a011-20210407
i386                 randconfig-a016-20210407
i386                 randconfig-a012-20210407
i386                 randconfig-a015-20210407
i386                 randconfig-a013-20210407
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                             allnoconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                              defconfig
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
