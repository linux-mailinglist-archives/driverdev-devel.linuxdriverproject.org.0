Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F2648707A
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jan 2022 03:34:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 576014247B;
	Fri,  7 Jan 2022 02:34:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KH3mMj57Xwid; Fri,  7 Jan 2022 02:34:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DE29F42260;
	Fri,  7 Jan 2022 02:34:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7382D1BF356
 for <devel@linuxdriverproject.org>; Fri,  7 Jan 2022 02:34:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C1036FC37
 for <devel@linuxdriverproject.org>; Fri,  7 Jan 2022 02:34:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Q793-Y35Vctn for <devel@linuxdriverproject.org>;
 Fri,  7 Jan 2022 02:34:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 746BF60AFB
 for <devel@driverdev.osuosl.org>; Fri,  7 Jan 2022 02:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641522880; x=1673058880;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=XdOaJ0p6RwlQUlBMQ+zvoua3gh86PeRySEDfQ8ot9HM=;
 b=GYAiypA5uyCfCT1aGRfd+Pm/51tkew/Nzs355GvP8Kas++6mYFQQ3t/t
 ErV9ZujJwAAqoh54W8qPbZlos1uOyWAC1nUTk0WCBJU3KAiEo6G976nuN
 J8PRP4Wzp2Rib+tyFe35iiFZ3CEDgxo9P/Ib1rzqvyit+OukDNtw5Ajuh
 xqFlD6SmxzxQfI6q4WLHTkRtqr+JxEFwLn+FEz6EHC2gI1YcrKw26CZr7
 LmBXypQvA/537IyN8Fbi33IYw6vRwsXDipezKvbBRKDtrv9gZeNWliIY1
 h+Y7uysSaanq/hYCT5XXf3F2q4Q0d04JBN5d+rCjfRCNmjJ1gxnynR7VC g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="229604107"
X-IronPort-AV: E=Sophos;i="5.88,268,1635231600"; d="scan'208";a="229604107"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 18:34:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,268,1635231600"; d="scan'208";a="557131329"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 06 Jan 2022 18:34:38 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n5f5R-000IBX-U5; Fri, 07 Jan 2022 02:34:37 +0000
Date: Fri, 07 Jan 2022 10:33:46 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 fa783154524a71ab74e293cd8251155e5971952b
Message-ID: <61d7a68a.gUeYDHjvxBH4QOfF%lkp@intel.com>
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
branch HEAD: fa783154524a71ab74e293cd8251155e5971952b  staging: r8188eu: rename camelcase variable uintPeerChannel

elapsed time: 722m

configs tested: 100
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
i386                 randconfig-c001-20220106
powerpc                    klondike_defconfig
m68k                          atari_defconfig
m68k                          multi_defconfig
arc                          axs101_defconfig
powerpc                     taishan_defconfig
sh                        edosk7705_defconfig
powerpc                      ep88xc_defconfig
m68k                        m5407c3_defconfig
sh                            shmin_defconfig
mips                         cobalt_defconfig
sh                           se7721_defconfig
arm                  randconfig-c002-20220106
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
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
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
powerpc                           allnoconfig
x86_64               randconfig-a012-20220106
x86_64               randconfig-a015-20220106
x86_64               randconfig-a014-20220106
x86_64               randconfig-a013-20220106
x86_64               randconfig-a011-20220106
x86_64               randconfig-a016-20220106
i386                 randconfig-a012-20220106
i386                 randconfig-a016-20220106
i386                 randconfig-a014-20220106
i386                 randconfig-a015-20220106
i386                 randconfig-a011-20220106
i386                 randconfig-a013-20220106
s390                 randconfig-r044-20220106
arc                  randconfig-r043-20220106
riscv                randconfig-r042-20220106
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                           allyesconfig

clang tested configs:
mips                 randconfig-c004-20220106
arm                  randconfig-c002-20220106
i386                 randconfig-c001-20220106
riscv                randconfig-c006-20220106
powerpc              randconfig-c003-20220106
x86_64               randconfig-c007-20220106
mips                         tb0219_defconfig
powerpc                 xes_mpc85xx_defconfig
i386                 randconfig-a003-20220106
i386                 randconfig-a005-20220106
i386                 randconfig-a004-20220106
i386                 randconfig-a006-20220106
i386                 randconfig-a002-20220106
i386                 randconfig-a001-20220106
x86_64               randconfig-a005-20220106
x86_64               randconfig-a001-20220106
x86_64               randconfig-a004-20220106
x86_64               randconfig-a006-20220106
x86_64               randconfig-a002-20220106
x86_64               randconfig-a003-20220106

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
