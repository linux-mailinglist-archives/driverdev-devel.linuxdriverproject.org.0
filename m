Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC8532682F
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Feb 2021 21:21:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 514C94341E;
	Fri, 26 Feb 2021 20:21:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ij1CV8et_Zda; Fri, 26 Feb 2021 20:21:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A8D5C4331B;
	Fri, 26 Feb 2021 20:21:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 73AE21BF3E5
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 20:21:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6DA24433EF
 for <devel@linuxdriverproject.org>; Fri, 26 Feb 2021 20:21:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5xa3Hke6_mD9 for <devel@linuxdriverproject.org>;
 Fri, 26 Feb 2021 20:21:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9D531433D4
 for <devel@driverdev.osuosl.org>; Fri, 26 Feb 2021 20:21:09 +0000 (UTC)
IronPort-SDR: 9IMt1/FqQbG/focysuRNC9RcxokJTMn50s2lhk+MJWhYLRBFhaD5gxJ5ELQF8JFfFrL7pf3r/j
 idsYvUSXF0Pg==
X-IronPort-AV: E=McAfee;i="6000,8403,9907"; a="165205277"
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="165205277"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2021 12:21:09 -0800
IronPort-SDR: 9xlspMfHx1hCgEaJp7AJ0ZN+MCNow5x7kxK2rH9MUqFkIClDvX3+ayi3tF1fKW6n8toq6w59pB
 aLwmKQJd6tPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,209,1610438400"; d="scan'208";a="404987988"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 26 Feb 2021 12:21:07 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lFjbm-0003Pb-Ue; Fri, 26 Feb 2021 20:21:06 +0000
Date: Sat, 27 Feb 2021 04:20:44 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 4866d49608322127f73c50802b398ee5433ef776
Message-ID: <6039581c.GWqeGENg/l77jIXu%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 4866d49608322127f73c50802b398ee5433ef776  staging: clocking-wizard: Remove the hardcoding of the clock outputs

elapsed time: 726m

configs tested: 88
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                        clps711x_defconfig
arm                         socfpga_defconfig
mips                      bmips_stb_defconfig
m68k                         amcore_defconfig
powerpc                      ppc64e_defconfig
powerpc                  iss476-smp_defconfig
m68k                          hp300_defconfig
openrisc                         alldefconfig
arm                      pxa255-idp_defconfig
sh                             shx3_defconfig
arm                        multi_v7_defconfig
powerpc64                           defconfig
sh                        sh7763rdp_defconfig
powerpc                         wii_defconfig
openrisc                 simple_smp_defconfig
arm                           sunxi_defconfig
sh                      rts7751r2d1_defconfig
arm                         axm55xx_defconfig
powerpc                   bluestone_defconfig
powerpc                      ppc6xx_defconfig
arm                        multi_v5_defconfig
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
nios2                            allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20210226
x86_64               randconfig-a002-20210226
x86_64               randconfig-a003-20210226
x86_64               randconfig-a005-20210226
x86_64               randconfig-a004-20210226
x86_64               randconfig-a006-20210226
i386                 randconfig-a005-20210226
i386                 randconfig-a006-20210226
i386                 randconfig-a004-20210226
i386                 randconfig-a001-20210226
i386                 randconfig-a003-20210226
i386                 randconfig-a002-20210226
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a015-20210226
x86_64               randconfig-a016-20210226
x86_64               randconfig-a014-20210226

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
