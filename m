Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7B349333E
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Jan 2022 03:57:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19217408DA;
	Wed, 19 Jan 2022 02:57:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mdWFVaIOJEyR; Wed, 19 Jan 2022 02:57:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2520E408F4;
	Wed, 19 Jan 2022 02:57:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9CA071BF376
 for <devel@linuxdriverproject.org>; Wed, 19 Jan 2022 02:57:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8981340283
 for <devel@linuxdriverproject.org>; Wed, 19 Jan 2022 02:57:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7IOtuu7DX6q6 for <devel@linuxdriverproject.org>;
 Wed, 19 Jan 2022 02:57:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BE7E540632
 for <devel@driverdev.osuosl.org>; Wed, 19 Jan 2022 02:57:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642561036; x=1674097036;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=7t9DQ0JT3XJR8SbxQSWJ29ibH3RwvCxDJE8DxdmSWjQ=;
 b=TP2lqhVW2lRZPX7IEPrK8cF9KI/gzLNZRCa8Q2tOnkm4zYH2EyH/DldW
 2GknTPVrIEzM5iTqSv8kNInv0LOGfI6JOuObnLo7q/67YqVB0jwwJw+9t
 w/0J2MZUs52VHhDBUNuwmRZd4E+yI7Ta9zfkIe2VwOBIg72TF249Srmas
 074Pv6QY3P8qrkzZVBVoIbnwaFvYHkiUkgxTicpx9/XOw/0fSjkEngCkB
 MmNE3gKE9JQaJlpKEvmelyLexeiPZMo0PdqnirkuHj0tOM5+ECTsGlOdH
 XQWBRSeTbaRjNXeG1kies6I14hD7S5F4rDq0l8tace5GWqkn/du/ioEJG Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="245165566"
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="245165566"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2022 18:57:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,298,1635231600"; d="scan'208";a="477212675"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 18 Jan 2022 18:57:14 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1nA19u-000DAk-9F; Wed, 19 Jan 2022 02:57:14 +0000
Date: Wed, 19 Jan 2022 10:56:11 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:module_ns] BUILD SUCCESS
 bb0c845b25ed7e3653c81cd00bb8fe8ede74d871
Message-ID: <61e77dcb.6REXEj/QSvFRva53%lkp@intel.com>
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
branch HEAD: bb0c845b25ed7e3653c81cd00bb8fe8ede74d871  export: fix string handling of namespace in EXPORT_SYMBOL_NS

elapsed time: 723m

configs tested: 142
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20220117
mips                 randconfig-c004-20220117
sh                                  defconfig
mips                            ar7_defconfig
sh                ecovec24-romimage_defconfig
powerpc                     asp8347_defconfig
powerpc                 mpc834x_mds_defconfig
sh                           se7721_defconfig
m68k                          atari_defconfig
mips                  decstation_64_defconfig
arm64                            alldefconfig
mips                       bmips_be_defconfig
mips                           ci20_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                      ppc40x_defconfig
mips                      loongson3_defconfig
mips                        bcm47xx_defconfig
sh                            shmin_defconfig
h8300                    h8300h-sim_defconfig
sh                          rsk7201_defconfig
arm                         cm_x300_defconfig
sh                          polaris_defconfig
openrisc                  or1klitex_defconfig
powerpc                      ep88xc_defconfig
powerpc                     rainier_defconfig
powerpc                   currituck_defconfig
arm                            qcom_defconfig
arm                            hisi_defconfig
riscv                               defconfig
sh                      rts7751r2d1_defconfig
arm                         vf610m4_defconfig
alpha                            allyesconfig
arm                       imx_v6_v7_defconfig
arm                           tegra_defconfig
xtensa                    smp_lx200_defconfig
csky                                defconfig
powerpc                           allnoconfig
powerpc                       eiger_defconfig
sh                     magicpanelr2_defconfig
arm                  randconfig-c002-20220116
arm                  randconfig-c002-20220117
arm                  randconfig-c002-20220118
arm                  randconfig-c002-20220119
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                               defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
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
x86_64               randconfig-a016-20220117
x86_64               randconfig-a012-20220117
x86_64               randconfig-a013-20220117
x86_64               randconfig-a011-20220117
x86_64               randconfig-a014-20220117
x86_64               randconfig-a015-20220117
i386                 randconfig-a012-20220117
i386                 randconfig-a016-20220117
i386                 randconfig-a014-20220117
i386                 randconfig-a015-20220117
i386                 randconfig-a011-20220117
i386                 randconfig-a013-20220117
riscv                randconfig-r042-20220117
arc                  randconfig-r043-20220116
arc                  randconfig-r043-20220117
s390                 randconfig-r044-20220117
arc                  randconfig-r043-20220118
riscv                randconfig-r042-20220119
s390                 randconfig-r044-20220119
arc                  randconfig-r043-20220119
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20220116
x86_64                        randconfig-c007
arm                  randconfig-c002-20220118
riscv                randconfig-c006-20220116
powerpc              randconfig-c003-20220116
powerpc              randconfig-c003-20220118
i386                          randconfig-c001
s390                 randconfig-c005-20220118
mips                 randconfig-c004-20220118
mips                 randconfig-c004-20220116
s390                 randconfig-c005-20220116
riscv                randconfig-c006-20220118
powerpc                     kilauea_defconfig
i386                             allyesconfig
powerpc               mpc834x_itxgp_defconfig
mips                      pic32mzda_defconfig
mips                        omega2p_defconfig
mips                        bcm63xx_defconfig
x86_64               randconfig-a005-20220117
x86_64               randconfig-a004-20220117
x86_64               randconfig-a001-20220117
x86_64               randconfig-a006-20220117
x86_64               randconfig-a002-20220117
x86_64               randconfig-a003-20220117
i386                 randconfig-a005-20220117
i386                 randconfig-a001-20220117
i386                 randconfig-a006-20220117
i386                 randconfig-a004-20220117
i386                 randconfig-a002-20220117
i386                 randconfig-a003-20220117
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
