Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77F912E8230
	for <lists+driverdev-devel@lfdr.de>; Thu, 31 Dec 2020 23:14:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 04E4C87500;
	Thu, 31 Dec 2020 22:14:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9f6AkA7w8-HE; Thu, 31 Dec 2020 22:14:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 23500874F4;
	Thu, 31 Dec 2020 22:14:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A8B571BF29E
 for <devel@linuxdriverproject.org>; Thu, 31 Dec 2020 22:14:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A563786AB3
 for <devel@linuxdriverproject.org>; Thu, 31 Dec 2020 22:14:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UjuPTPabF7jn for <devel@linuxdriverproject.org>;
 Thu, 31 Dec 2020 22:14:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 582DF858B6
 for <devel@driverdev.osuosl.org>; Thu, 31 Dec 2020 22:14:05 +0000 (UTC)
IronPort-SDR: jpN2HI6fF7iOKkjEAiNSEItOxLHyepM2rO5uRdeVL5Z/hGzfQUGtk5kFhsPHVJ75AabNvMMWG0
 NHPfEM5qICzQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9851"; a="238298011"
X-IronPort-AV: E=Sophos;i="5.78,464,1599548400"; d="scan'208";a="238298011"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2020 14:14:04 -0800
IronPort-SDR: ON3VaBUjSpbIfKJncFjTLy9TBS3BM++JUtKh8duzHMs83XDkTWwbv6ucjVfeVSUrwAO7HK56uk
 /pGKvfJU6Abg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,464,1599548400"; d="scan'208";a="396385731"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 31 Dec 2020 14:14:03 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kv6Co-0005C1-FQ; Thu, 31 Dec 2020 22:14:02 +0000
Date: Fri, 01 Jan 2021 06:13:19 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 9ed3954fe8fed889adf643c7c83c1140fc117c59
Message-ID: <5fee4cff.bH9deutSeHRDK51x%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  readfile
branch HEAD: 9ed3954fe8fed889adf643c7c83c1140fc117c59  readfile.2: new page describing readfile(2)

elapsed time: 725m

configs tested: 150
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
xtensa                         virt_defconfig
mips                            ar7_defconfig
powerpc                      ppc6xx_defconfig
c6x                        evmc6474_defconfig
s390                          debug_defconfig
sh                        apsh4ad0a_defconfig
m68k                        mvme147_defconfig
arm                           viper_defconfig
sh                          rsk7201_defconfig
sh                          urquell_defconfig
arc                      axs103_smp_defconfig
arm                        realview_defconfig
mips                         mpc30x_defconfig
sh                           se7343_defconfig
xtensa                  cadence_csp_defconfig
m68k                         apollo_defconfig
powerpc                    mvme5100_defconfig
sh                             shx3_defconfig
powerpc                 mpc837x_mds_defconfig
openrisc                         alldefconfig
powerpc                        fsp2_defconfig
sparc64                             defconfig
arm                        neponset_defconfig
powerpc                     mpc5200_defconfig
arm                     davinci_all_defconfig
powerpc                 mpc8272_ads_defconfig
arm                         lubbock_defconfig
riscv                          rv32_defconfig
c6x                        evmc6457_defconfig
powerpc                      pcm030_defconfig
x86_64                           alldefconfig
powerpc                     taishan_defconfig
arm                     am200epdkit_defconfig
powerpc                      makalu_defconfig
s390                       zfcpdump_defconfig
xtensa                    xip_kc705_defconfig
powerpc                 mpc832x_rdb_defconfig
sh                        edosk7760_defconfig
powerpc                  iss476-smp_defconfig
sh                   sh7724_generic_defconfig
mips                      pic32mzda_defconfig
arm                       aspeed_g5_defconfig
arm                           spitz_defconfig
powerpc                     tqm8540_defconfig
m68k                                defconfig
mips                     loongson1b_defconfig
mips                     loongson1c_defconfig
m68k                           sun3_defconfig
mips                           ip22_defconfig
powerpc                      ppc44x_defconfig
powerpc                  mpc866_ads_defconfig
arm                          iop32x_defconfig
powerpc                     mpc512x_defconfig
mips                          ath79_defconfig
sh                         microdev_defconfig
powerpc                      acadia_defconfig
arm                          ixp4xx_defconfig
microblaze                      mmu_defconfig
powerpc                      pmac32_defconfig
powerpc                     tqm8541_defconfig
arm                      tct_hammer_defconfig
powerpc                      walnut_defconfig
arm                        mvebu_v5_defconfig
arm                           sunxi_defconfig
m68k                       m5208evb_defconfig
arm                       cns3420vb_defconfig
arc                            hsdk_defconfig
mips                       capcella_defconfig
sh                            hp6xx_defconfig
arc                          axs103_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
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
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20201231
i386                 randconfig-a006-20201231
i386                 randconfig-a003-20201231
i386                 randconfig-a004-20201231
i386                 randconfig-a002-20201231
i386                 randconfig-a001-20201231
x86_64               randconfig-a015-20201231
x86_64               randconfig-a014-20201231
x86_64               randconfig-a011-20201231
x86_64               randconfig-a016-20201231
x86_64               randconfig-a013-20201231
x86_64               randconfig-a012-20201231
i386                 randconfig-a016-20201231
i386                 randconfig-a015-20201231
i386                 randconfig-a016-20210101
i386                 randconfig-a011-20210101
i386                 randconfig-a014-20210101
i386                 randconfig-a015-20210101
i386                 randconfig-a013-20210101
i386                 randconfig-a012-20210101
i386                 randconfig-a014-20201231
i386                 randconfig-a012-20201231
i386                 randconfig-a011-20201231
i386                 randconfig-a013-20201231
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a005-20201231
x86_64               randconfig-a006-20201231
x86_64               randconfig-a001-20201231
x86_64               randconfig-a002-20201231
x86_64               randconfig-a004-20201231
x86_64               randconfig-a003-20201231

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
