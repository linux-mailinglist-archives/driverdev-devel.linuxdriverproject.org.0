Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id EF917625316
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Nov 2022 06:34:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5D6E260A6B;
	Fri, 11 Nov 2022 05:34:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5D6E260A6B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iohDRNhSZy2t; Fri, 11 Nov 2022 05:34:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D7FD5607F0;
	Fri, 11 Nov 2022 05:34:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D7FD5607F0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 29DDC1BF2B8
 for <devel@linuxdriverproject.org>; Fri, 11 Nov 2022 05:33:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 056C14018F
 for <devel@linuxdriverproject.org>; Fri, 11 Nov 2022 05:33:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 056C14018F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Lolyqc51Uehe for <devel@linuxdriverproject.org>;
 Fri, 11 Nov 2022 05:33:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3753940273
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3753940273
 for <devel@driverdev.osuosl.org>; Fri, 11 Nov 2022 05:33:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="291250923"
X-IronPort-AV: E=Sophos;i="5.96,155,1665471600"; d="scan'208";a="291250923"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 21:33:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="588455670"
X-IronPort-AV: E=Sophos;i="5.96,155,1665471600"; d="scan'208";a="588455670"
Received: from lkp-server01.sh.intel.com (HELO e783503266e8) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 10 Nov 2022 21:33:54 -0800
Received: from kbuild by e783503266e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1otMfq-0003cH-0q;
 Fri, 11 Nov 2022 05:33:54 +0000
Date: Fri, 11 Nov 2022 13:33:35 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-next] BUILD SUCCESS
 fa627348cfc7fb174468d88756b83c2d97890b07
Message-ID: <636ddeaf.VM92yIXSqZexk0ur%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668144837; x=1699680837;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Ax3wbY5g5nbkuetvAuVc6TDsoXiX5SvbD/1ey4vvjaQ=;
 b=jnXMNMTRNNhoojamONTQ2Jb0vlviuTeKeTTqYsIIwvar5+8TUMpY8RLa
 IkDvalN96/qGMEehx5YT9UH1IE6gtmfxbLyFy0Vaq9VTvPR3W3TiB5J1y
 DCYyp5CfY7Lxox/2cexyN3eYI9dQfAeeVv4cDzd2VcpJPRy02qRIh+gHo
 hgd1ksG8Q769vn33dlKRjIOGuhOIhpQKmHdUNnR+7ztbLupPZsWkYr17P
 +YAlhtnQOZ8sy46TQeN5dwSfJw08rJiaq22ipF4A5hR2UEKPaBpeLaXCo
 xnBBddXIiqABYicfOZvp3hNruHeiyzj/3KolBddIePLL0p0yphP+sTsN0
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=jnXMNMTR
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-next
branch HEAD: fa627348cfc7fb174468d88756b83c2d97890b07  driver core: class: make namespace and get_ownership take const *

elapsed time: 2317m

configs tested: 140
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                            allnoconfig
i386                             allyesconfig
i386                                defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
ia64                             allmodconfig
arc                                 defconfig
powerpc                           allnoconfig
arm                        cerfcube_defconfig
sh                               alldefconfig
sh                        sh7757lcr_defconfig
arm                                 defconfig
x86_64                              defconfig
s390                       zfcpdump_defconfig
powerpc                      arches_defconfig
powerpc                     sequoia_defconfig
mips                         cobalt_defconfig
arm                      footbridge_defconfig
xtensa                  cadence_csp_defconfig
mips                         db1xxx_defconfig
arm                        spear6xx_defconfig
powerpc                      pasemi_defconfig
sh                           se7722_defconfig
arm                         cm_x300_defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
powerpc              randconfig-c003-20221110
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
s390                                defconfig
s390                             allmodconfig
s390                             allyesconfig
alpha                               defconfig
sh                   secureedge5410_defconfig
powerpc                 mpc837x_rdb_defconfig
xtensa                    xip_kc705_defconfig
xtensa                          iss_defconfig
powerpc                 mpc834x_mds_defconfig
arm                         lpc18xx_defconfig
nios2                         10m50_defconfig
sh                      rts7751r2d1_defconfig
sh                           se7724_defconfig
microblaze                          defconfig
parisc                           alldefconfig
arm                          pxa910_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arm64                               defconfig
powerpc                 linkstation_defconfig
parisc                generic-64bit_defconfig
loongarch                           defconfig
arm64                            allyesconfig
arm                              allyesconfig
powerpc                    amigaone_defconfig
arm                             rpc_defconfig
m68k                          multi_defconfig
arc                         haps_hs_defconfig
arc                        nsimosci_defconfig
powerpc                       ppc64_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
i386                          randconfig-c001
loongarch                         allnoconfig
loongarch                        allmodconfig
xtensa                           alldefconfig
parisc                generic-32bit_defconfig
ia64                        generic_defconfig
openrisc                         alldefconfig
sparc                               defconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
powerpc                     taishan_defconfig
powerpc                 mpc85xx_cds_defconfig
arm                         vf610m4_defconfig
xtensa                           allyesconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                 randconfig-r044-20221111
arm                           viper_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20221110

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a004
s390                 randconfig-r044-20221110
riscv                randconfig-r042-20221110
hexagon              randconfig-r041-20221110
hexagon              randconfig-r045-20221110
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a006
x86_64                        randconfig-a005
x86_64                        randconfig-a001
powerpc                        fsp2_defconfig
powerpc                    gamecube_defconfig
mips                malta_qemu_32r6_defconfig
mips                     loongson2k_defconfig
riscv                             allnoconfig
x86_64                        randconfig-k001
hexagon              randconfig-r041-20221111
hexagon              randconfig-r045-20221111
arm                        vexpress_defconfig
powerpc                    mvme5100_defconfig
arm                       versatile_defconfig
riscv                randconfig-c006-20221110
x86_64                        randconfig-c007
mips                 randconfig-c004-20221110
i386                          randconfig-c001
arm                  randconfig-c002-20221110
powerpc              randconfig-c003-20221110
s390                 randconfig-c005-20221110
arm                       aspeed_g4_defconfig
mips                      pic32mzda_defconfig
arm                         lpc32xx_defconfig
powerpc                      obs600_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
