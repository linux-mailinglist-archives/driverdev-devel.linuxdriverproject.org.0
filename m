Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4364F19E2
	for <lists+driverdev-devel@lfdr.de>; Mon,  4 Apr 2022 21:12:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8DF3C60BAF;
	Mon,  4 Apr 2022 19:12:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kumQDzgUUHxA; Mon,  4 Apr 2022 19:12:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 26F1E60B8D;
	Mon,  4 Apr 2022 19:12:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 769181BF27E
 for <devel@linuxdriverproject.org>; Mon,  4 Apr 2022 19:12:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 748C28284B
 for <devel@linuxdriverproject.org>; Mon,  4 Apr 2022 19:12:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uowjQH9LBcuC for <devel@linuxdriverproject.org>;
 Mon,  4 Apr 2022 19:12:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 343DC82835
 for <devel@driverdev.osuosl.org>; Mon,  4 Apr 2022 19:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649099553; x=1680635553;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=GXZcbn/gNoIK/kq4FTv1/Tz2DNKfmd2LWUISPCwE268=;
 b=T4n2yifHPFKcc5eAVN25oDMEaNx2eTusLhjBWD56ZqZcnqknyuQZ2w8I
 VwpIQq8kYxZuzEOfW6LABVxi2jfs4Nni2LKC7k+gUCxoSoeb0JH3HY1Ng
 3R+Rrp9UG/2L25ej84iRWX50a8nea2A2JXQorV5xFUTF+vGYkW84XAUK8
 C+8d+Moc2ZPVBhC6n3VwtS/umQzyUC9mGaLTEEgFLHTc1VGs+FiZ4nNoU
 a/PSt0tq/TCgqsVLds78vszyYRS66/SGqJkRANlEyZMGHVG4ZHJZIDdeE
 ywIYUEcwXCwPKc1VsNr2y+88kY/2YqvXnbDuHl5Cu9ACTZH2x4LM+DqeZ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="259421482"
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="259421482"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 12:12:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="505010934"
Received: from lkp-server02.sh.intel.com (HELO a44fdfb70b94) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 04 Apr 2022 12:12:31 -0700
Received: from kbuild by a44fdfb70b94 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nbS7q-0002IB-Cs;
 Mon, 04 Apr 2022 19:12:30 +0000
Date: Tue, 05 Apr 2022 03:11:32 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 62df9c3ee8e096a4835cadae2edaf126fe46d650
Message-ID: <624b42e4.bHuSv8L44z3+qrfo%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: 62df9c3ee8e096a4835cadae2edaf126fe46d650  kobject: kobj_type: remove default_attrs

elapsed time: 727m

configs tested: 166
configs skipped: 5

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
m68k                            q40_defconfig
nios2                         3c120_defconfig
arm                         vf610m4_defconfig
arm                     eseries_pxa_defconfig
arm                        realview_defconfig
ia64                            zx1_defconfig
powerpc                      ppc40x_defconfig
sh                           se7722_defconfig
xtensa                  nommu_kc705_defconfig
openrisc                 simple_smp_defconfig
parisc64                         alldefconfig
h8300                               defconfig
sh                           se7619_defconfig
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
arc                        nsim_700_defconfig
powerpc                     ep8248e_defconfig
mips                            gpr_defconfig
powerpc                      cm5200_defconfig
sh                           se7780_defconfig
sh                             espt_defconfig
xtensa                generic_kc705_defconfig
m68k                          sun3x_defconfig
powerpc                      ppc6xx_defconfig
h8300                    h8300h-sim_defconfig
arm                         nhk8815_defconfig
powerpc                     tqm8548_defconfig
s390                       zfcpdump_defconfig
sh                           se7721_defconfig
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
ia64                                defconfig
ia64                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
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
parisc                              defconfig
parisc64                            defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64               randconfig-a015-20220404
x86_64               randconfig-a011-20220404
x86_64               randconfig-a014-20220404
x86_64               randconfig-a016-20220404
x86_64               randconfig-a012-20220404
x86_64               randconfig-a013-20220404
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
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit

clang tested configs:
i386                 randconfig-c001-20220404
x86_64               randconfig-c007-20220404
powerpc              randconfig-c003-20220404
riscv                randconfig-c006-20220404
mips                 randconfig-c004-20220404
arm                  randconfig-c002-20220404
powerpc                      obs600_defconfig
arm                         palmz72_defconfig
arm                       imx_v4_v5_defconfig
mips                      pic32mzda_defconfig
powerpc                      katmai_defconfig
mips                     loongson1c_defconfig
arm                           sama7_defconfig
mips                        workpad_defconfig
arm                          pcm027_defconfig
riscv                             allnoconfig
mips                  cavium_octeon_defconfig
arm                       netwinder_defconfig
powerpc                   bluestone_defconfig
arm                        multi_v5_defconfig
arm                       cns3420vb_defconfig
arm                          collie_defconfig
powerpc                 mpc8315_rdb_defconfig
powerpc                      ppc44x_defconfig
arm                             mxs_defconfig
x86_64               randconfig-a006-20220404
x86_64               randconfig-a002-20220404
x86_64               randconfig-a001-20220404
x86_64               randconfig-a005-20220404
x86_64               randconfig-a003-20220404
x86_64               randconfig-a004-20220404
i386                 randconfig-a006-20220404
i386                 randconfig-a002-20220404
i386                 randconfig-a001-20220404
i386                 randconfig-a004-20220404
i386                 randconfig-a003-20220404
i386                 randconfig-a005-20220404
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
hexagon              randconfig-r041-20220404
hexagon              randconfig-r045-20220404

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
