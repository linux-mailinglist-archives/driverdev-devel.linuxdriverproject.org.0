Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C48B6C09D2
	for <lists+driverdev-devel@lfdr.de>; Mon, 20 Mar 2023 05:53:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2E4640576;
	Mon, 20 Mar 2023 04:53:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2E4640576
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y5Kcj177X64m; Mon, 20 Mar 2023 04:53:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1878B404ED;
	Mon, 20 Mar 2023 04:53:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1878B404ED
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B82291BF48D
 for <devel@linuxdriverproject.org>; Mon, 20 Mar 2023 04:53:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 90CE5404B9
 for <devel@linuxdriverproject.org>; Mon, 20 Mar 2023 04:53:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 90CE5404B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tsB_4YC5Bsgc for <devel@linuxdriverproject.org>;
 Mon, 20 Mar 2023 04:53:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE712403B4
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EE712403B4
 for <devel@driverdev.osuosl.org>; Mon, 20 Mar 2023 04:53:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="318224436"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="318224436"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2023 21:53:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="926826614"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="926826614"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 19 Mar 2023 21:53:30 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pe7WT-000ApU-2U;
 Mon, 20 Mar 2023 04:53:29 +0000
Date: Mon, 20 Mar 2023 12:53:06 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 e3d785337bafe082897389e22a3d9489720b64f5
Message-ID: <6417e6b2.qccw7CJST9kn1jr2%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679288012; x=1710824012;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=p/VXrMnlS/g+QafqAs9A6dtmFoirbF3+1PqcMEy9ToY=;
 b=layh2Rv0zDD4QpMdWG5Qci/ObbtuOrhRqOiPi2T9n6txqgJ3ZlKbEqI7
 F130Iq6lflPHHw43DD1DAZhoAq2hMdiIFeeyjXlMEl4/m/N0bjYLAeM8n
 3c5IuAqVP6wv0W9fI5/MpomArPd4p1+BWvSZdT9cPm6IsUFLvJc4ZPiS+
 0NUSZag87zYZ1zetPhxVw6rk6FXeaurUL1xOePwa6RqUluySbNR8XQ0+9
 p4n8MwFJeXOsCfGtzWtTlC/R8ivb105KRIazdQSTZXrYIUMrKXdGmxaaE
 kUEVjAycC/YCU77IIo0eB1yFJ20RMcfMrMeDjV9AIt7aIjSKVxdUmmDAE
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=layh2Rv0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git bus_cleanup
branch HEAD: e3d785337bafe082897389e22a3d9489720b64f5  FIXME: driver core: platform: make platform_bus_type constant

elapsed time: 832m

configs tested: 226
configs skipped: 13

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r002-20230319   gcc  
alpha        buildonly-randconfig-r005-20230319   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r005-20230319   gcc  
alpha                randconfig-r023-20230319   gcc  
alpha                randconfig-r024-20230319   gcc  
alpha                randconfig-r033-20230319   gcc  
alpha                randconfig-r036-20230319   gcc  
arc                              allyesconfig   gcc  
arc                          axs103_defconfig   gcc  
arc                                 defconfig   gcc  
arc                        nsimosci_defconfig   gcc  
arc                  randconfig-r003-20230319   gcc  
arc                  randconfig-r003-20230320   gcc  
arc                  randconfig-r004-20230319   gcc  
arc                  randconfig-r006-20230319   gcc  
arc                  randconfig-r024-20230319   gcc  
arc                  randconfig-r043-20230319   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         assabet_defconfig   gcc  
arm                                 defconfig   gcc  
arm                       multi_v4t_defconfig   gcc  
arm                         nhk8815_defconfig   gcc  
arm                        oxnas_v6_defconfig   gcc  
arm                  randconfig-r012-20230319   gcc  
arm                  randconfig-r016-20230319   gcc  
arm                  randconfig-r025-20230319   gcc  
arm                  randconfig-r036-20230319   clang
arm                  randconfig-r046-20230319   gcc  
arm                  randconfig-r046-20230320   clang
arm                         s3c6400_defconfig   gcc  
arm                           stm32_defconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             alldefconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r001-20230319   gcc  
csky                 randconfig-r022-20230319   gcc  
csky                 randconfig-r031-20230319   gcc  
hexagon      buildonly-randconfig-r001-20230319   clang
hexagon      buildonly-randconfig-r006-20230320   clang
hexagon              randconfig-r003-20230319   clang
hexagon              randconfig-r006-20230319   clang
hexagon              randconfig-r016-20230319   clang
hexagon              randconfig-r041-20230319   clang
hexagon              randconfig-r041-20230320   clang
hexagon              randconfig-r045-20230319   clang
hexagon              randconfig-r045-20230320   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r005-20230320   clang
i386                         debian-10.3-func   gcc  
i386                   debian-10.3-kselftests   gcc  
i386                        debian-10.3-kunit   gcc  
i386                          debian-10.3-kvm   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
i386                          randconfig-c001   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r003-20230319   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r011-20230319   gcc  
ia64                 randconfig-r014-20230319   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r005-20230319   gcc  
loongarch            randconfig-r014-20230319   gcc  
loongarch            randconfig-r022-20230319   gcc  
loongarch            randconfig-r032-20230319   gcc  
m68k                             allmodconfig   gcc  
m68k                          amiga_defconfig   gcc  
m68k                         apollo_defconfig   gcc  
m68k         buildonly-randconfig-r001-20230319   gcc  
m68k         buildonly-randconfig-r005-20230319   gcc  
m68k                                defconfig   gcc  
m68k                            mac_defconfig   gcc  
m68k                        mvme16x_defconfig   gcc  
m68k                 randconfig-r001-20230319   gcc  
m68k                 randconfig-r006-20230319   gcc  
m68k                 randconfig-r026-20230319   gcc  
m68k                 randconfig-r031-20230319   gcc  
m68k                           virt_defconfig   gcc  
microblaze   buildonly-randconfig-r004-20230319   gcc  
microblaze           randconfig-r005-20230319   gcc  
microblaze           randconfig-r011-20230319   gcc  
microblaze           randconfig-r013-20230319   gcc  
microblaze           randconfig-r014-20230319   gcc  
microblaze           randconfig-r026-20230319   gcc  
microblaze           randconfig-r032-20230319   gcc  
microblaze           randconfig-r034-20230319   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                         bigsur_defconfig   gcc  
mips                            gpr_defconfig   gcc  
mips                      maltasmvp_defconfig   gcc  
mips                 randconfig-r002-20230319   clang
mips                 randconfig-r023-20230319   gcc  
nios2                         3c120_defconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r011-20230319   gcc  
nios2                randconfig-r015-20230319   gcc  
nios2                randconfig-r031-20230319   gcc  
nios2                randconfig-r034-20230319   gcc  
openrisc             randconfig-r002-20230319   gcc  
openrisc             randconfig-r021-20230319   gcc  
openrisc             randconfig-r022-20230319   gcc  
openrisc             randconfig-r034-20230319   gcc  
openrisc             randconfig-r035-20230319   gcc  
parisc       buildonly-randconfig-r004-20230319   gcc  
parisc       buildonly-randconfig-r006-20230319   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r024-20230319   gcc  
parisc               randconfig-r025-20230319   gcc  
parisc               randconfig-r033-20230319   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r001-20230319   clang
powerpc                 canyonlands_defconfig   gcc  
powerpc                      ep88xc_defconfig   gcc  
powerpc                    klondike_defconfig   gcc  
powerpc                      mgcoge_defconfig   gcc  
powerpc                 mpc85xx_cds_defconfig   gcc  
powerpc                     pq2fads_defconfig   gcc  
powerpc                         ps3_defconfig   gcc  
powerpc              randconfig-r004-20230319   gcc  
powerpc              randconfig-r033-20230319   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r003-20230319   clang
riscv        buildonly-randconfig-r004-20230319   clang
riscv        buildonly-randconfig-r005-20230319   clang
riscv                               defconfig   gcc  
riscv                    nommu_k210_defconfig   gcc  
riscv                randconfig-r002-20230319   gcc  
riscv                randconfig-r004-20230319   gcc  
riscv                randconfig-r014-20230319   clang
riscv                randconfig-r016-20230319   clang
riscv                randconfig-r025-20230319   clang
riscv                randconfig-r032-20230319   gcc  
riscv                randconfig-r036-20230319   gcc  
riscv                randconfig-r042-20230319   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r003-20230319   clang
s390                                defconfig   gcc  
s390                 randconfig-r012-20230319   clang
s390                 randconfig-r015-20230319   clang
s390                 randconfig-r044-20230319   clang
sh                               allmodconfig   gcc  
sh                         ap325rxa_defconfig   gcc  
sh                        apsh4ad0a_defconfig   gcc  
sh           buildonly-randconfig-r003-20230319   gcc  
sh           buildonly-randconfig-r004-20230319   gcc  
sh                         ecovec24_defconfig   gcc  
sh                          r7785rp_defconfig   gcc  
sh                   randconfig-r011-20230319   gcc  
sh                   randconfig-r025-20230319   gcc  
sh                   randconfig-r032-20230319   gcc  
sh                          rsk7269_defconfig   gcc  
sh                           se7721_defconfig   gcc  
sh                           se7722_defconfig   gcc  
sh                   secureedge5410_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                     sh7710voipgw_defconfig   gcc  
sh                        sh7757lcr_defconfig   gcc  
sh                        sh7785lcr_defconfig   gcc  
sparc        buildonly-randconfig-r006-20230319   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r012-20230319   gcc  
sparc                randconfig-r021-20230319   gcc  
sparc                randconfig-r035-20230319   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r004-20230320   gcc  
sparc64              randconfig-r013-20230319   gcc  
sparc64              randconfig-r033-20230319   gcc  
sparc64              randconfig-r035-20230319   gcc  
um                               alldefconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                        randconfig-k001   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-kvm   gcc  
x86_64                           rhel-8.3-syz   gcc  
x86_64                               rhel-8.3   gcc  
xtensa                  cadence_csp_defconfig   gcc  
xtensa                       common_defconfig   gcc  
xtensa                              defconfig   gcc  
xtensa                          iss_defconfig   gcc  
xtensa               randconfig-r003-20230319   gcc  
xtensa               randconfig-r022-20230319   gcc  
xtensa               randconfig-r031-20230319   gcc  
xtensa               randconfig-r034-20230319   gcc  
xtensa                    xip_kc705_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
