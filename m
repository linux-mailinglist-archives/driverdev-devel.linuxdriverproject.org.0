Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF7E4F19E1
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Apr 2022 21:11:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1A88D410D1;
	Mon,  4 Apr 2022 19:11:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VwKn8VmKdcxn; Mon,  4 Apr 2022 19:11:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6860410E1;
	Mon,  4 Apr 2022 19:11:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 03A071BF27E
 for <devel@linuxdriverproject.org>; Mon,  4 Apr 2022 19:11:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E275D40146
 for <devel@linuxdriverproject.org>; Mon,  4 Apr 2022 19:11:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f1OJfHwTYXLJ for <devel@linuxdriverproject.org>;
 Mon,  4 Apr 2022 19:11:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F02FE4013E
 for <devel@driverdev.osuosl.org>; Mon,  4 Apr 2022 19:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649099496; x=1680635496;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=8jz2j7iMj03TWtldxUNlxSDYMy7zOkbPETuTODJpUhM=;
 b=GWRdVD6JLwh/MoAo61BBTzo8N1e5wMRDDbqVKeFpUQbdthOe8YB0qW9U
 6hM4AEORZveDSdSLTf7E/tWkl2Mmi0jUHenP16rS9xWneCeGrLJt2jrOT
 OFmLRooLfOVY9iSizSEPkHbEEzPM49vfDrPqAqr2n2kN+3VhIgQJwLHRN
 BEc2n96iQqhD3NiNi5Zb7DvHcNof+aKAeAqZwy2TznukoiCOpVEw97S1T
 XBGlFMOQHCWx2S0KRJSKEV4h0xNTZI5YrvFLzo8Koz71Nevs9gtsIoSzi
 0JTY8vTOGfjJ1jY6cId5Wi8cqlw0i+/zB7govT4IKV7BEmpiQESsGgeBf g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="242733442"
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="242733442"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 12:11:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="721763577"
Received: from lkp-server02.sh.intel.com (HELO a44fdfb70b94) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 04 Apr 2022 12:11:31 -0700
Received: from kbuild by a44fdfb70b94 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nbS6s-0002I5-CP;
 Mon, 04 Apr 2022 19:11:30 +0000
Date: Tue, 05 Apr 2022 03:11:28 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 57c27d38ff937976afd207c1eaf1264d086d855c
Message-ID: <624b42e0.bd77Qn1JRXF7WbOW%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: 57c27d38ff937976afd207c1eaf1264d086d855c  staging: r8188eu: clean up comment for rtw_pwr_wakeup()

elapsed time: 727m

configs tested: 172
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                 randconfig-c001-20220404
arm                      integrator_defconfig
nios2                         3c120_defconfig
arm                         vf610m4_defconfig
m68k                            q40_defconfig
arm                     eseries_pxa_defconfig
arm                        realview_defconfig
ia64                            zx1_defconfig
powerpc                      ppc40x_defconfig
sh                           se7722_defconfig
xtensa                  nommu_kc705_defconfig
openrisc                 simple_smp_defconfig
parisc64                         alldefconfig
arm                        oxnas_v6_defconfig
powerpc                 mpc8540_ads_defconfig
arc                    vdk_hs38_smp_defconfig
sh                               alldefconfig
mips                           gcw0_defconfig
h8300                               defconfig
sh                  sh7785lcr_32bit_defconfig
mips                            ar7_defconfig
mips                  maltasmvp_eva_defconfig
arm                        mvebu_v7_defconfig
sh                            hp6xx_defconfig
powerpc                 mpc834x_itx_defconfig
um                             i386_defconfig
mips                           jazz_defconfig
sh                          polaris_defconfig
powerpc                        cell_defconfig
sh                          rsk7203_defconfig
powerpc                 linkstation_defconfig
sh                         apsh4a3a_defconfig
powerpc                     ep8248e_defconfig
arc                        nsim_700_defconfig
powerpc                      cm5200_defconfig
mips                            gpr_defconfig
mips                     decstation_defconfig
arm                          lpd270_defconfig
arm                         s3c6400_defconfig
sh                           se7780_defconfig
sh                             espt_defconfig
xtensa                generic_kc705_defconfig
m68k                          sun3x_defconfig
powerpc                      ppc6xx_defconfig
h8300                    h8300h-sim_defconfig
arm                         nhk8815_defconfig
powerpc                  iss476-smp_defconfig
mips                         db1xxx_defconfig
arm                           viper_defconfig
sh                           se7206_defconfig
ia64                      gensparse_defconfig
sh                        sh7785lcr_defconfig
m68k                         apollo_defconfig
sh                         ap325rxa_defconfig
m68k                          amiga_defconfig
sh                           se7705_defconfig
arm                            lart_defconfig
mips                  decstation_64_defconfig
sh                      rts7751r2d1_defconfig
arm                            qcom_defconfig
x86_64               randconfig-c001-20220404
arm                  randconfig-c002-20220404
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
sparc                               defconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64               randconfig-a015-20220404
x86_64               randconfig-a011-20220404
x86_64               randconfig-a013-20220404
x86_64               randconfig-a014-20220404
x86_64               randconfig-a016-20220404
x86_64               randconfig-a012-20220404
i386                 randconfig-a014-20220404
i386                 randconfig-a013-20220404
i386                 randconfig-a016-20220404
i386                 randconfig-a015-20220404
i386                 randconfig-a011-20220404
i386                 randconfig-a012-20220404
arc                  randconfig-r043-20220404
s390                 randconfig-r044-20220404
riscv                randconfig-r042-20220404
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
riscv                            allyesconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
i386                 randconfig-c001-20220404
x86_64               randconfig-c007-20220404
powerpc              randconfig-c003-20220404
riscv                randconfig-c006-20220404
mips                 randconfig-c004-20220404
arm                  randconfig-c002-20220404
arm                         lpc32xx_defconfig
powerpc                       ebony_defconfig
arm                           omap1_defconfig
arm                       versatile_defconfig
mips                      pic32mzda_defconfig
powerpc                      katmai_defconfig
mips                     loongson1c_defconfig
arm                           sama7_defconfig
mips                        workpad_defconfig
arm                          pcm027_defconfig
riscv                             allnoconfig
mips                  cavium_octeon_defconfig
arm                          ixp4xx_defconfig
powerpc                     mpc512x_defconfig
mips                      malta_kvm_defconfig
arm                        magician_defconfig
powerpc                   bluestone_defconfig
arm                       cns3420vb_defconfig
arm                          collie_defconfig
powerpc                 mpc8315_rdb_defconfig
powerpc                      ppc44x_defconfig
arm                             mxs_defconfig
x86_64               randconfig-a004-20220404
x86_64               randconfig-a003-20220404
x86_64               randconfig-a002-20220404
x86_64               randconfig-a005-20220404
x86_64               randconfig-a006-20220404
x86_64               randconfig-a001-20220404
i386                 randconfig-a006-20220404
i386                 randconfig-a002-20220404
i386                 randconfig-a001-20220404
i386                 randconfig-a004-20220404
i386                 randconfig-a003-20220404
i386                 randconfig-a005-20220404
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
hexagon              randconfig-r045-20220404
hexagon              randconfig-r041-20220404

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
