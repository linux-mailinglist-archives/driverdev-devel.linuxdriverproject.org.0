Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6481F377498
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 May 2021 01:45:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D4C9640460;
	Sat,  8 May 2021 23:45:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id odGMGkox9OZP; Sat,  8 May 2021 23:45:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ECD00400A8;
	Sat,  8 May 2021 23:45:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8070A1BF3C6
 for <devel@linuxdriverproject.org>; Sat,  8 May 2021 23:45:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6F8E383B69
 for <devel@linuxdriverproject.org>; Sat,  8 May 2021 23:45:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vsdLSJz5enLp for <devel@linuxdriverproject.org>;
 Sat,  8 May 2021 23:45:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F75683B56
 for <devel@driverdev.osuosl.org>; Sat,  8 May 2021 23:45:10 +0000 (UTC)
IronPort-SDR: wFMrizGWvPI7oGCn7nAHFLhmmOW0u1I4Lzs5rIZzERvJhKgphShk5cXvVplZq7RAFIsjGGCTet
 a3VvgEw8hdkg==
X-IronPort-AV: E=McAfee;i="6200,9189,9978"; a="178540952"
X-IronPort-AV: E=Sophos;i="5.82,284,1613462400"; d="scan'208";a="178540952"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2021 16:45:09 -0700
IronPort-SDR: j2zILRR31weGn4/BiDtAM/Qmy4Uzb7QU3VtTDSCvSFCpAFl4sMrnefxiSzWIsiE8E0N77oFW5c
 HuyQf/1xAksg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,284,1613462400"; d="scan'208";a="453761858"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 08 May 2021 16:45:08 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lfWd9-000Bqn-N6; Sat, 08 May 2021 23:45:07 +0000
Date: Sun, 09 May 2021 07:45:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:umn.edu-reverts] BUILD SUCCESS
 2ddb3673b9caa7f385a7de21e32fd0f226e6f53c
Message-ID: <6097227c.yxcXQJ1OJOYnxair%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git umn.edu-reverts
branch HEAD: 2ddb3673b9caa7f385a7de21e32fd0f226e6f53c  cdrom: gdrom: initialize global variable at init time

elapsed time: 726m

configs tested: 156
configs skipped: 2

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
riscv                            allyesconfig
i386                             allyesconfig
arc                          axs101_defconfig
arm                         at91_dt_defconfig
arm                         vf610m4_defconfig
powerpc                      acadia_defconfig
mips                            e55_defconfig
arm                              alldefconfig
m68k                             alldefconfig
powerpc                    adder875_defconfig
xtensa                              defconfig
sh                              ul2_defconfig
m68k                       m5475evb_defconfig
powerpc                    mvme5100_defconfig
powerpc                     taishan_defconfig
arm                            hisi_defconfig
sh                   rts7751r2dplus_defconfig
arm                      jornada720_defconfig
powerpc                  mpc866_ads_defconfig
arm                            qcom_defconfig
mips                        qi_lb60_defconfig
sh                          rsk7203_defconfig
mips                           ip27_defconfig
mips                      pic32mzda_defconfig
powerpc                 mpc832x_mds_defconfig
i386                             alldefconfig
powerpc                 xes_mpc85xx_defconfig
arm                           sama5_defconfig
powerpc                     ep8248e_defconfig
mips                         tb0226_defconfig
sh                          lboxre2_defconfig
powerpc                         ps3_defconfig
m68k                          hp300_defconfig
parisc                              defconfig
powerpc                          g5_defconfig
riscv                             allnoconfig
powerpc                 mpc837x_rdb_defconfig
arm                        mini2440_defconfig
s390                                defconfig
mips                      maltaaprp_defconfig
arm                  colibri_pxa300_defconfig
mips                         tb0219_defconfig
sh                        dreamcast_defconfig
h8300                     edosk2674_defconfig
m68k                         apollo_defconfig
powerpc                mpc7448_hpc2_defconfig
powerpc                      pmac32_defconfig
arm                       imx_v6_v7_defconfig
mips                     cu1000-neo_defconfig
um                               allyesconfig
arc                     nsimosci_hs_defconfig
sh                           se7751_defconfig
nios2                            allyesconfig
powerpc                 mpc834x_mds_defconfig
arm                        spear3xx_defconfig
mips                     cu1830-neo_defconfig
arm                         s3c6400_defconfig
sh                             espt_defconfig
mips                          rb532_defconfig
arm                         nhk8815_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210508
i386                 randconfig-a006-20210508
i386                 randconfig-a001-20210508
i386                 randconfig-a005-20210508
i386                 randconfig-a004-20210508
i386                 randconfig-a002-20210508
i386                 randconfig-a003-20210509
i386                 randconfig-a006-20210509
i386                 randconfig-a001-20210509
i386                 randconfig-a005-20210509
i386                 randconfig-a004-20210509
i386                 randconfig-a002-20210509
x86_64               randconfig-a014-20210508
x86_64               randconfig-a015-20210508
x86_64               randconfig-a011-20210508
x86_64               randconfig-a013-20210508
x86_64               randconfig-a012-20210508
x86_64               randconfig-a016-20210508
i386                 randconfig-a013-20210508
i386                 randconfig-a015-20210508
i386                 randconfig-a014-20210508
i386                 randconfig-a016-20210508
i386                 randconfig-a011-20210508
i386                 randconfig-a012-20210508
i386                 randconfig-a013-20210509
i386                 randconfig-a015-20210509
i386                 randconfig-a014-20210509
i386                 randconfig-a016-20210509
i386                 randconfig-a011-20210509
i386                 randconfig-a012-20210509
x86_64               randconfig-a005-20210509
x86_64               randconfig-a003-20210509
x86_64               randconfig-a001-20210509
x86_64               randconfig-a002-20210509
x86_64               randconfig-a006-20210509
x86_64               randconfig-a004-20210509
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                               allmodconfig
um                                allnoconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a014-20210509
x86_64               randconfig-a015-20210509
x86_64               randconfig-a011-20210509
x86_64               randconfig-a013-20210509
x86_64               randconfig-a012-20210509
x86_64               randconfig-a016-20210509
x86_64               randconfig-a005-20210508
x86_64               randconfig-a003-20210508
x86_64               randconfig-a001-20210508
x86_64               randconfig-a002-20210508
x86_64               randconfig-a006-20210508
x86_64               randconfig-a004-20210508

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
