Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E976ACD51
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Mar 2023 19:57:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9CBB5408D3;
	Mon,  6 Mar 2023 18:57:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9CBB5408D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zSyN8DnGP3zt; Mon,  6 Mar 2023 18:57:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 55D464067B;
	Mon,  6 Mar 2023 18:57:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55D464067B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 74FDF1BF34D
 for <devel@linuxdriverproject.org>; Mon,  6 Mar 2023 18:57:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5BAE360A98
 for <devel@linuxdriverproject.org>; Mon,  6 Mar 2023 18:57:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5BAE360A98
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mTuxtFViCk7J for <devel@linuxdriverproject.org>;
 Mon,  6 Mar 2023 18:57:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C567D60E9D
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C567D60E9D
 for <devel@driverdev.osuosl.org>; Mon,  6 Mar 2023 18:57:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="337162965"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="337162965"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 10:57:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="786368935"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="786368935"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 06 Mar 2023 10:57:31 -0800
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pZG1a-0000YM-0P;
 Mon, 06 Mar 2023 18:57:30 +0000
Date: Tue, 07 Mar 2023 02:57:07 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 5f5ea1e430edab307318cd55f472f0a6910079ba
Message-ID: <64063783.wGBlUvndR2/pPjVF%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678129053; x=1709665053;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=uug7/tXFUmXlNM1X6trRcjCsSuESZULkeC97CyKc+xI=;
 b=LXz/Aq2kw5NBACJ74LWmVEo/nDRt+742lkwqvne1AbgP2dKHBuBySDSK
 Ufxxz0bNAsOCVUnvAOW5Z8SZuuNP/egm1CFLzBWO+NO7PZaTuX6o61FEA
 wTZuVQql4H8+G/cU4CbiX64mRJnzczR8o3dQ1JZ4bB+IIflECnVNpvfSu
 /c4wVQ6HXB6CKyuMyaEoQaCjKZxcJ2oZrp0/ExUY0o9lLzpPuZsuWyM3J
 p1+LAkLwu0Y9gBThO4p97+bmHN/k4YtFitAQiLdSU2Sp92fO3Y+ksomst
 xKNk1+r/K8PtJYK9G21es2NrAoNMmUrGDKV1Y0UepDLHBLr+l6PUQNp+8
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LXz/Aq2k
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: 5f5ea1e430edab307318cd55f472f0a6910079ba  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 725m

configs tested: 129
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r006-20230306   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230305   gcc  
alpha                randconfig-r015-20230306   gcc  
alpha                randconfig-r016-20230305   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r004-20230306   gcc  
arc                  randconfig-r031-20230305   gcc  
arc                  randconfig-r035-20230306   gcc  
arc                  randconfig-r043-20230305   gcc  
arc                  randconfig-r043-20230306   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r002-20230305   clang
arm                                 defconfig   gcc  
arm                  randconfig-r031-20230306   clang
arm                  randconfig-r033-20230306   clang
arm                  randconfig-r046-20230305   clang
arm                  randconfig-r046-20230306   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r013-20230306   clang
csky                                defconfig   gcc  
csky                 randconfig-r033-20230305   gcc  
hexagon      buildonly-randconfig-r001-20230305   clang
hexagon              randconfig-r041-20230305   clang
hexagon              randconfig-r041-20230306   clang
hexagon              randconfig-r045-20230305   clang
hexagon              randconfig-r045-20230306   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230306   gcc  
i386                 randconfig-a002-20230306   gcc  
i386                 randconfig-a003-20230306   gcc  
i386                 randconfig-a004-20230306   gcc  
i386                 randconfig-a005-20230306   gcc  
i386                 randconfig-a006-20230306   gcc  
i386                 randconfig-a011-20230306   clang
i386                 randconfig-a012-20230306   clang
i386                 randconfig-a013-20230306   clang
i386                 randconfig-a014-20230306   clang
i386                 randconfig-a015-20230306   clang
i386                 randconfig-a016-20230306   clang
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r013-20230305   gcc  
ia64                 randconfig-r021-20230305   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r005-20230305   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r014-20230305   gcc  
loongarch            randconfig-r016-20230306   gcc  
loongarch            randconfig-r036-20230305   gcc  
m68k                             allmodconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r002-20230305   gcc  
m68k                 randconfig-r035-20230305   gcc  
microblaze           randconfig-r001-20230306   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r005-20230306   clang
mips                 randconfig-r024-20230305   clang
nios2                               defconfig   gcc  
nios2                randconfig-r001-20230305   gcc  
nios2                randconfig-r036-20230306   gcc  
openrisc     buildonly-randconfig-r005-20230306   gcc  
openrisc     buildonly-randconfig-r006-20230305   gcc  
openrisc             randconfig-r003-20230305   gcc  
openrisc             randconfig-r015-20230305   gcc  
parisc       buildonly-randconfig-r003-20230306   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r032-20230306   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r006-20230306   gcc  
powerpc              randconfig-r025-20230305   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r003-20230305   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r023-20230305   gcc  
riscv                randconfig-r032-20230305   clang
riscv                randconfig-r042-20230305   gcc  
riscv                randconfig-r042-20230306   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230306   clang
s390         buildonly-randconfig-r004-20230306   clang
s390                                defconfig   gcc  
s390                 randconfig-r044-20230305   gcc  
s390                 randconfig-r044-20230306   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r006-20230305   gcc  
sh                   randconfig-r022-20230305   gcc  
sh                   randconfig-r034-20230306   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r002-20230306   gcc  
sparc                randconfig-r011-20230306   gcc  
sparc                randconfig-r014-20230306   gcc  
sparc64      buildonly-randconfig-r004-20230305   gcc  
sparc64              randconfig-r012-20230306   gcc  
sparc64              randconfig-r026-20230305   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230306   gcc  
x86_64               randconfig-a002-20230306   gcc  
x86_64               randconfig-a003-20230306   gcc  
x86_64               randconfig-a004-20230306   gcc  
x86_64               randconfig-a005-20230306   gcc  
x86_64               randconfig-a006-20230306   gcc  
x86_64               randconfig-a011-20230306   clang
x86_64               randconfig-a012-20230306   clang
x86_64               randconfig-a013-20230306   clang
x86_64               randconfig-a014-20230306   clang
x86_64               randconfig-a015-20230306   clang
x86_64               randconfig-a016-20230306   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r003-20230306   gcc  
xtensa               randconfig-r034-20230305   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
