Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AF579F7EB
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 Sep 2023 04:23:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B265840A4D;
	Thu, 14 Sep 2023 02:23:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B265840A4D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AuHyCd3Aswhn; Thu, 14 Sep 2023 02:23:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0557140A59;
	Thu, 14 Sep 2023 02:23:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0557140A59
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 98EBA1BF859
 for <devel@linuxdriverproject.org>; Thu, 14 Sep 2023 02:23:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 72B0260EFC
 for <devel@linuxdriverproject.org>; Thu, 14 Sep 2023 02:23:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72B0260EFC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZWXLef634Npr for <devel@linuxdriverproject.org>;
 Thu, 14 Sep 2023 02:23:42 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 286FC60EEB
 for <devel@driverdev.osuosl.org>; Thu, 14 Sep 2023 02:23:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 286FC60EEB
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="377741993"
X-IronPort-AV: E=Sophos;i="6.02,144,1688454000"; d="scan'208";a="377741993"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 19:23:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="694062703"
X-IronPort-AV: E=Sophos;i="6.02,144,1688454000"; d="scan'208";a="694062703"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 13 Sep 2023 19:23:39 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qgc13-00010M-2Y;
 Thu, 14 Sep 2023 02:23:37 +0000
Date: Thu, 14 Sep 2023 10:23:23 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 4c5ba1d7a93e098aececbf93afbdd7add98ec6f3
Message-ID: <202309141020.kT1yZaAy-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694658222; x=1726194222;
 h=date:from:to:cc:subject:message-id;
 bh=JviPXVgyY8pa99X9HRAVUGhriGzZUzogxAnKzagt0L8=;
 b=k9b7YynohoEZTyRSRcfqwc9sYDKo2n9O4KnIfDbAl7ERIBy7ZRFiVFnn
 s4ohVdxDaol2wC8Xbjkig/s9ZzbXMq9HkOe/1pEu3h1pKS11eyX1rV9ot
 A6JgOc0IP8uEQyWDyEnjZ3q2cL7Ur1G3xXD9F9XES+iG4HJ1VbEcuv3m6
 4YC+UfhJip7QnILNgKv6xrw82o9weIvgYS8NjYir9Ckt2Lh7Q8y906Owp
 ly+8vv4sDDKFY4RTgLWSErF7kCk0DEVWmOx1z3fBUoDlayZDMBnyrGwdT
 prGNlaqcrtTffZhKWa/mtEgvfXZPxGmPrkwnj/wLmoWW5P+FdrySolIh8
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=k9b7Yyno
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 4c5ba1d7a93e098aececbf93afbdd7add98ec6f3  staging: vme_user: Use list_for_each_entry() helper

Unverified Warning (likely false positive, please contact us if interested):

drivers/staging/vme_user/vme.c:1460 vme_lm_request() error: we previously assumed 'lm' could be null (see line 1461)
drivers/staging/vme_user/vme.c:296 vme_slave_request() error: we previously assumed 'slave_image' could be null (see line 297)
drivers/staging/vme_user/vme.c:492 vme_master_request() error: we previously assumed 'master_image' could be null (see line 493)
drivers/staging/vme_user/vme.c:866 vme_dma_request() error: we previously assumed 'dma_ctrlr' could be null (see line 867)

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- x86_64-randconfig-161-20230913
    |-- drivers-staging-vme_user-vme.c-vme_dma_request()-error:we-previously-assumed-dma_ctrlr-could-be-null-(see-line-)
    |-- drivers-staging-vme_user-vme.c-vme_lm_request()-error:we-previously-assumed-lm-could-be-null-(see-line-)
    |-- drivers-staging-vme_user-vme.c-vme_master_request()-error:we-previously-assumed-master_image-could-be-null-(see-line-)
    `-- drivers-staging-vme_user-vme.c-vme_slave_request()-error:we-previously-assumed-slave_image-could-be-null-(see-line-)

elapsed time: 1049m

configs tested: 240
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                          axs103_defconfig   gcc  
arc                                 defconfig   gcc  
arc                            hsdk_defconfig   gcc  
arc                   randconfig-001-20230914   gcc  
arc                  randconfig-r004-20230913   gcc  
arc                  randconfig-r033-20230913   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                        clps711x_defconfig   gcc  
arm                                 defconfig   gcc  
arm                      integrator_defconfig   gcc  
arm                        keystone_defconfig   gcc  
arm                            mps2_defconfig   gcc  
arm                   randconfig-001-20230914   gcc  
arm                           sunxi_defconfig   gcc  
arm                        vexpress_defconfig   clang
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r012-20230913   clang
arm64                randconfig-r014-20230913   clang
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r032-20230913   gcc  
hexagon                             defconfig   clang
hexagon               randconfig-001-20230913   clang
hexagon               randconfig-002-20230913   clang
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230913   gcc  
i386         buildonly-randconfig-001-20230914   gcc  
i386         buildonly-randconfig-002-20230913   gcc  
i386         buildonly-randconfig-002-20230914   gcc  
i386         buildonly-randconfig-003-20230913   gcc  
i386         buildonly-randconfig-003-20230914   gcc  
i386         buildonly-randconfig-004-20230913   gcc  
i386         buildonly-randconfig-004-20230914   gcc  
i386         buildonly-randconfig-005-20230913   gcc  
i386         buildonly-randconfig-005-20230914   gcc  
i386         buildonly-randconfig-006-20230913   gcc  
i386         buildonly-randconfig-006-20230914   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230914   gcc  
i386                  randconfig-002-20230914   gcc  
i386                  randconfig-003-20230914   gcc  
i386                  randconfig-004-20230914   gcc  
i386                  randconfig-005-20230913   gcc  
i386                  randconfig-005-20230914   gcc  
i386                  randconfig-006-20230913   gcc  
i386                  randconfig-006-20230914   gcc  
i386                  randconfig-011-20230913   clang
i386                  randconfig-011-20230913   gcc  
i386                  randconfig-011-20230914   gcc  
i386                  randconfig-012-20230913   clang
i386                  randconfig-012-20230913   gcc  
i386                  randconfig-012-20230914   gcc  
i386                  randconfig-013-20230913   clang
i386                  randconfig-013-20230913   gcc  
i386                  randconfig-013-20230914   gcc  
i386                  randconfig-014-20230913   clang
i386                  randconfig-014-20230913   gcc  
i386                  randconfig-014-20230914   gcc  
i386                  randconfig-015-20230913   clang
i386                  randconfig-015-20230913   gcc  
i386                  randconfig-015-20230914   gcc  
i386                  randconfig-016-20230913   clang
i386                  randconfig-016-20230913   gcc  
i386                  randconfig-016-20230914   gcc  
i386                 randconfig-r016-20230913   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230913   gcc  
loongarch             randconfig-001-20230914   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                       bvme6000_defconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
microblaze           randconfig-r015-20230913   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                           ci20_defconfig   gcc  
mips                 randconfig-r012-20230913   gcc  
mips                 randconfig-r015-20230913   gcc  
mips                 randconfig-r016-20230913   gcc  
mips                 randconfig-r031-20230913   clang
mips                         rt305x_defconfig   gcc  
nios2                            alldefconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r011-20230913   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
openrisc             randconfig-r006-20230913   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc                generic-64bit_defconfig   gcc  
parisc               randconfig-r014-20230913   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                      bamboo_defconfig   gcc  
powerpc                       holly_defconfig   gcc  
powerpc                      obs600_defconfig   clang
powerpc                      pcm030_defconfig   gcc  
powerpc                     powernv_defconfig   clang
powerpc              randconfig-r013-20230913   clang
powerpc              randconfig-r036-20230913   gcc  
powerpc                     stx_gp3_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230914   gcc  
riscv                randconfig-r001-20230913   gcc  
riscv                randconfig-r005-20230913   gcc  
riscv                randconfig-r031-20230913   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230913   clang
s390                  randconfig-001-20230914   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                        edosk7705_defconfig   gcc  
sh                          sdk7786_defconfig   gcc  
sh                           se7724_defconfig   gcc  
sh                   secureedge5410_defconfig   gcc  
sh                             sh03_defconfig   gcc  
sh                            titan_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20230914   gcc  
sparc                randconfig-r035-20230913   gcc  
sparc64                          alldefconfig   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
sparc64              randconfig-r003-20230913   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r011-20230913   gcc  
um                   randconfig-r032-20230913   clang
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230913   gcc  
x86_64       buildonly-randconfig-001-20230914   gcc  
x86_64       buildonly-randconfig-002-20230913   gcc  
x86_64       buildonly-randconfig-002-20230914   gcc  
x86_64       buildonly-randconfig-003-20230913   gcc  
x86_64       buildonly-randconfig-003-20230914   gcc  
x86_64       buildonly-randconfig-004-20230913   gcc  
x86_64       buildonly-randconfig-004-20230914   gcc  
x86_64       buildonly-randconfig-005-20230913   gcc  
x86_64       buildonly-randconfig-005-20230914   gcc  
x86_64       buildonly-randconfig-006-20230913   gcc  
x86_64       buildonly-randconfig-006-20230914   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20230913   clang
x86_64                randconfig-001-20230913   gcc  
x86_64                randconfig-001-20230914   gcc  
x86_64                randconfig-002-20230913   clang
x86_64                randconfig-002-20230913   gcc  
x86_64                randconfig-002-20230914   gcc  
x86_64                randconfig-003-20230913   clang
x86_64                randconfig-003-20230913   gcc  
x86_64                randconfig-003-20230914   gcc  
x86_64                randconfig-004-20230913   clang
x86_64                randconfig-004-20230913   gcc  
x86_64                randconfig-004-20230914   gcc  
x86_64                randconfig-005-20230913   clang
x86_64                randconfig-005-20230913   gcc  
x86_64                randconfig-005-20230914   gcc  
x86_64                randconfig-006-20230913   clang
x86_64                randconfig-006-20230913   gcc  
x86_64                randconfig-006-20230914   gcc  
x86_64                randconfig-011-20230913   gcc  
x86_64                randconfig-011-20230914   gcc  
x86_64                randconfig-012-20230913   gcc  
x86_64                randconfig-012-20230914   gcc  
x86_64                randconfig-013-20230913   gcc  
x86_64                randconfig-013-20230914   gcc  
x86_64                randconfig-014-20230913   gcc  
x86_64                randconfig-014-20230914   gcc  
x86_64                randconfig-015-20230913   gcc  
x86_64                randconfig-015-20230914   gcc  
x86_64                randconfig-016-20230914   gcc  
x86_64                randconfig-071-20230913   gcc  
x86_64                randconfig-071-20230914   gcc  
x86_64                randconfig-072-20230913   gcc  
x86_64                randconfig-072-20230914   gcc  
x86_64                randconfig-073-20230913   gcc  
x86_64                randconfig-073-20230914   gcc  
x86_64                randconfig-074-20230913   gcc  
x86_64                randconfig-074-20230914   gcc  
x86_64                randconfig-075-20230913   gcc  
x86_64                randconfig-075-20230914   gcc  
x86_64                randconfig-076-20230914   gcc  
x86_64               randconfig-r025-20230913   clang
x86_64               randconfig-r034-20230913   gcc  
x86_64                           rhel-8.3-bpf   gcc  
x86_64                          rhel-8.3-func   gcc  
x86_64                    rhel-8.3-kselftests   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                           rhel-8.3-ltp   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  
xtensa                  cadence_csp_defconfig   gcc  
xtensa                       common_defconfig   gcc  
xtensa                              defconfig   gcc  
xtensa                    smp_lx200_defconfig   gcc  
xtensa                         virt_defconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
