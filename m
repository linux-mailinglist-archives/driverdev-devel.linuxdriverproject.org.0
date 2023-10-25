Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AC67D5F2D
	for <lists+driverdev-devel@lfdr.de>; Wed, 25 Oct 2023 02:49:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E8B870700;
	Wed, 25 Oct 2023 00:49:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0E8B870700
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ld1L-A65klhX; Wed, 25 Oct 2023 00:49:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C5C5770703;
	Wed, 25 Oct 2023 00:49:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C5C5770703
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AF82B1BF23B
 for <devel@linuxdriverproject.org>; Wed, 25 Oct 2023 00:49:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 881784343E
 for <devel@linuxdriverproject.org>; Wed, 25 Oct 2023 00:49:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 881784343E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id n6bTkwhR7Zhe for <devel@linuxdriverproject.org>;
 Wed, 25 Oct 2023 00:49:39 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A1D7543422
 for <devel@driverdev.osuosl.org>; Wed, 25 Oct 2023 00:49:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1D7543422
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="391075730"
X-IronPort-AV: E=Sophos;i="6.03,249,1694761200"; d="scan'208";a="391075730"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 17:49:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="932206637"
X-IronPort-AV: E=Sophos;i="6.03,249,1694761200"; d="scan'208";a="932206637"
Received: from lkp-server01.sh.intel.com (HELO 8917679a5d3e) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 24 Oct 2023 17:49:36 -0700
Received: from kbuild by 8917679a5d3e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qvS5W-0008Rb-1g;
 Wed, 25 Oct 2023 00:49:34 +0000
Date: Wed, 25 Oct 2023 08:49:05 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 5d9f6f26ec6656b43bf90f12705dbe88ce77f8d5
Message-ID: <202310250802.Dap26yuF-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698194979; x=1729730979;
 h=date:from:to:cc:subject:message-id;
 bh=F0Cv3gzZqJq+f2dIPLWSmfxUONsG5jb6KwYOkmXZFIQ=;
 b=P2h3bqml4yktPLc2UHXH/ynhe3vU/dz6duWcpj7S05qO0884FFjcs5kL
 4Zd42zGY51vn2wjcI8nJkhX8AWLkMC5+JHl237Wl+OYDXQ4ze5zBai2Uw
 Hqc3ufbNuTbZLuPiRj+58zKUr6uiRxI+SJ5AdAcIyphUW14GHf8YPDTmP
 axAtkY0IHo+kO7GFQgV/vtv3nxUL/mvHwFDiE8AcJmTDYvKZwpJL5e9M4
 nzqUReYYiiKYATCCNhXZWwsuoNqGxJIbf5y67JAI76eKq9jzsvD/VSbdj
 Vz5VMOLz7mCJvvSZTYyEZbYlTEjN2lOkoXyF55z/71EcNl+nkiZ5ssoqS
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P2h3bqml
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: 5d9f6f26ec6656b43bf90f12705dbe88ce77f8d5  staging: vt6655: Rename variable byEIFS

elapsed time: 3735m

configs tested: 200
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
arc                                 defconfig   gcc  
arc                            hsdk_defconfig   gcc  
arc                   randconfig-001-20231022   gcc  
arc                   randconfig-001-20231024   gcc  
arc                   randconfig-001-20231025   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20231024   gcc  
arm                   randconfig-001-20231025   gcc  
arm                           u8500_defconfig   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             alldefconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20231023   gcc  
i386         buildonly-randconfig-001-20231025   gcc  
i386         buildonly-randconfig-002-20231023   gcc  
i386         buildonly-randconfig-002-20231025   gcc  
i386         buildonly-randconfig-003-20231023   gcc  
i386         buildonly-randconfig-003-20231025   gcc  
i386         buildonly-randconfig-004-20231023   gcc  
i386         buildonly-randconfig-004-20231025   gcc  
i386         buildonly-randconfig-005-20231023   gcc  
i386         buildonly-randconfig-005-20231025   gcc  
i386         buildonly-randconfig-006-20231023   gcc  
i386         buildonly-randconfig-006-20231025   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20231023   gcc  
i386                  randconfig-001-20231025   gcc  
i386                  randconfig-002-20231023   gcc  
i386                  randconfig-002-20231025   gcc  
i386                  randconfig-003-20231023   gcc  
i386                  randconfig-003-20231025   gcc  
i386                  randconfig-004-20231023   gcc  
i386                  randconfig-004-20231025   gcc  
i386                  randconfig-005-20231023   gcc  
i386                  randconfig-005-20231025   gcc  
i386                  randconfig-006-20231023   gcc  
i386                  randconfig-006-20231025   gcc  
i386                  randconfig-011-20231023   gcc  
i386                  randconfig-011-20231025   gcc  
i386                  randconfig-012-20231023   gcc  
i386                  randconfig-012-20231025   gcc  
i386                  randconfig-013-20231023   gcc  
i386                  randconfig-013-20231025   gcc  
i386                  randconfig-014-20231023   gcc  
i386                  randconfig-014-20231025   gcc  
i386                  randconfig-015-20231023   gcc  
i386                  randconfig-015-20231025   gcc  
i386                  randconfig-016-20231023   gcc  
i386                  randconfig-016-20231025   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20231022   gcc  
loongarch             randconfig-001-20231024   gcc  
loongarch             randconfig-001-20231025   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                     cu1000-neo_defconfig   clang
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                       holly_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20231023   gcc  
riscv                 randconfig-001-20231025   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20231023   gcc  
s390                  randconfig-001-20231025   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20231023   gcc  
sparc                 randconfig-001-20231024   gcc  
sparc                 randconfig-001-20231025   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20231023   gcc  
x86_64       buildonly-randconfig-001-20231025   gcc  
x86_64       buildonly-randconfig-002-20231023   gcc  
x86_64       buildonly-randconfig-002-20231025   gcc  
x86_64       buildonly-randconfig-003-20231023   gcc  
x86_64       buildonly-randconfig-003-20231025   gcc  
x86_64       buildonly-randconfig-004-20231023   gcc  
x86_64       buildonly-randconfig-004-20231025   gcc  
x86_64       buildonly-randconfig-005-20231023   gcc  
x86_64       buildonly-randconfig-005-20231025   gcc  
x86_64       buildonly-randconfig-006-20231023   gcc  
x86_64       buildonly-randconfig-006-20231025   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                randconfig-001-20231023   gcc  
x86_64                randconfig-001-20231025   gcc  
x86_64                randconfig-002-20231023   gcc  
x86_64                randconfig-002-20231025   gcc  
x86_64                randconfig-003-20231023   gcc  
x86_64                randconfig-003-20231025   gcc  
x86_64                randconfig-004-20231023   gcc  
x86_64                randconfig-004-20231025   gcc  
x86_64                randconfig-005-20231023   gcc  
x86_64                randconfig-005-20231025   gcc  
x86_64                randconfig-006-20231023   gcc  
x86_64                randconfig-006-20231025   gcc  
x86_64                randconfig-011-20231024   gcc  
x86_64                randconfig-011-20231025   gcc  
x86_64                randconfig-012-20231024   gcc  
x86_64                randconfig-012-20231025   gcc  
x86_64                randconfig-013-20231024   gcc  
x86_64                randconfig-013-20231025   gcc  
x86_64                randconfig-014-20231024   gcc  
x86_64                randconfig-014-20231025   gcc  
x86_64                randconfig-015-20231024   gcc  
x86_64                randconfig-015-20231025   gcc  
x86_64                randconfig-016-20231024   gcc  
x86_64                randconfig-016-20231025   gcc  
x86_64                randconfig-071-20231024   gcc  
x86_64                randconfig-071-20231025   gcc  
x86_64                randconfig-072-20231024   gcc  
x86_64                randconfig-072-20231025   gcc  
x86_64                randconfig-073-20231024   gcc  
x86_64                randconfig-073-20231025   gcc  
x86_64                randconfig-074-20231024   gcc  
x86_64                randconfig-074-20231025   gcc  
x86_64                randconfig-075-20231024   gcc  
x86_64                randconfig-075-20231025   gcc  
x86_64                randconfig-076-20231024   gcc  
x86_64                randconfig-076-20231025   gcc  
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

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
