Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 33452768927
	for <lists+driverdev-devel@lfdr.de>; Mon, 31 Jul 2023 00:41:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65BBC409EA;
	Sun, 30 Jul 2023 22:41:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65BBC409EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zjuiC3jP-g4o; Sun, 30 Jul 2023 22:41:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B218E409F3;
	Sun, 30 Jul 2023 22:41:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B218E409F3
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 021201BF3BF
 for <devel@linuxdriverproject.org>; Sun, 30 Jul 2023 22:41:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CEF9161032
 for <devel@linuxdriverproject.org>; Sun, 30 Jul 2023 22:41:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CEF9161032
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ju_ZuKo_pQ4R for <devel@linuxdriverproject.org>;
 Sun, 30 Jul 2023 22:41:48 +0000 (UTC)
Received: from mgamail.intel.com (unknown [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8462161021
 for <devel@driverdev.osuosl.org>; Sun, 30 Jul 2023 22:41:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8462161021
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="353794442"
X-IronPort-AV: E=Sophos;i="6.01,243,1684825200"; d="scan'208";a="353794442"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2023 15:41:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="1058734927"
X-IronPort-AV: E=Sophos;i="6.01,243,1684825200"; d="scan'208";a="1058734927"
Received: from lkp-server02.sh.intel.com (HELO 953e8cd98f7d) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 30 Jul 2023 15:41:45 -0700
Received: from kbuild by 953e8cd98f7d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qQF6f-0004o9-0E;
 Sun, 30 Jul 2023 22:41:45 +0000
Date: Mon, 31 Jul 2023 06:41:30 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 f5c9676e48770454a19a5deb5d06dfe484037a79
Message-ID: <202307310628.GulKcVCr-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690756908; x=1722292908;
 h=date:from:to:cc:subject:message-id;
 bh=zIZpqatS2OM4/7wPuBmqsWb/42oy8rLvjYWMTVdz+XI=;
 b=awCJKkpIOPxFVSFdESrwztX4xOgY+RWz8MsKgT/Hr37c6GbPqhYSVMr4
 aVIr+3s6y63ryKIMFARsBbnrLks4QRUYcbY+obynvuUxrRq1arZbr1Kw4
 ZwVLXglgCHQs6E9gMU2DoMVs1RgJGoM3ueriTL8PvkIYxG1bBh3ocGmAg
 CujFQ/Zb4RRmEValjuyOuFtKcjw8FKrHPK399vPBf8wZ95oNppfWQVuim
 A3od8uyFxr+EvZrZUGS03/Mxz2sDDvXhY5rFd0mVzmvXp+YYsWqiQThru
 MQTAbuGslXclDcBSk3E3mugkTs0dcdyvCoUXX1Y5A+4Bx70GNXUnELNpJ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=awCJKkpI
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
branch HEAD: f5c9676e48770454a19a5deb5d06dfe484037a79  staging: rtl8192e: Remove DefaultKey from rtl92e_set_swcam

elapsed time: 723m

configs tested: 106
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r024-20230730   gcc  
arc                  randconfig-r043-20230730   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r025-20230730   clang
arm                  randconfig-r046-20230730   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r004-20230730   clang
arm64                randconfig-r011-20230730   gcc  
arm64                randconfig-r012-20230730   gcc  
arm64                randconfig-r022-20230730   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r035-20230730   gcc  
hexagon              randconfig-r041-20230730   clang
hexagon              randconfig-r045-20230730   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230730   clang
i386         buildonly-randconfig-r005-20230730   clang
i386         buildonly-randconfig-r006-20230730   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230730   clang
i386                 randconfig-i002-20230730   clang
i386                 randconfig-i003-20230730   clang
i386                 randconfig-i004-20230730   clang
i386                 randconfig-i005-20230730   clang
i386                 randconfig-i006-20230730   clang
i386                 randconfig-i011-20230730   gcc  
i386                 randconfig-i012-20230730   gcc  
i386                 randconfig-i013-20230730   gcc  
i386                 randconfig-i014-20230730   gcc  
i386                 randconfig-i015-20230730   gcc  
i386                 randconfig-i016-20230730   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r006-20230730   gcc  
loongarch            randconfig-r023-20230730   gcc  
loongarch            randconfig-r026-20230730   gcc  
loongarch            randconfig-r032-20230730   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r034-20230730   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r031-20230730   gcc  
openrisc             randconfig-r013-20230730   gcc  
openrisc             randconfig-r036-20230730   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r014-20230730   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r015-20230730   gcc  
riscv                randconfig-r042-20230730   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r016-20230730   gcc  
s390                 randconfig-r044-20230730   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r005-20230730   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc64              randconfig-r001-20230730   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r002-20230730   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230730   clang
x86_64       buildonly-randconfig-r002-20230730   clang
x86_64       buildonly-randconfig-r003-20230730   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230730   gcc  
x86_64               randconfig-x002-20230730   gcc  
x86_64               randconfig-x003-20230730   gcc  
x86_64               randconfig-x004-20230730   gcc  
x86_64               randconfig-x005-20230730   gcc  
x86_64               randconfig-x006-20230730   gcc  
x86_64               randconfig-x011-20230730   clang
x86_64               randconfig-x012-20230730   clang
x86_64               randconfig-x013-20230730   clang
x86_64               randconfig-x014-20230730   clang
x86_64               randconfig-x015-20230730   clang
x86_64               randconfig-x016-20230730   clang
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
