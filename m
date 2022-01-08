Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6484882FB
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jan 2022 10:58:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 206AA8177C;
	Sat,  8 Jan 2022 09:58:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bhjpBZS6dAph; Sat,  8 Jan 2022 09:58:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7EDFA8144B;
	Sat,  8 Jan 2022 09:58:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 807B21BF343
 for <devel@linuxdriverproject.org>; Sat,  8 Jan 2022 09:57:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6F07360AF7
 for <devel@linuxdriverproject.org>; Sat,  8 Jan 2022 09:57:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vdEwNGF0z2Be for <devel@linuxdriverproject.org>;
 Sat,  8 Jan 2022 09:57:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 9916260A9F
 for <devel@driverdev.osuosl.org>; Sat,  8 Jan 2022 09:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641635872; x=1673171872;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=WfU+ImqLN7vLJmvjEk4ipZDIEtqp0YlLInYVLe/TS/4=;
 b=Lr2hIDaQfqIsJy8vCaN0l7KcThGARUGJiguTOxrvET578NejARwpGNyP
 krIDDm6OiWvI0+3aqA2CsJo3ANUPQr9V9tDKVPy18vv/2UXjNun/d1ZdF
 e7HQH6qP5SPV/uoztogJetucHOjyb3Cfh/E0pRR1KlY1eBmfFxlTdp5/g
 YrVGErYZSXTX9lBlIIOK1OgM1fubTblffiIuSEPHKAAE0vpaTg64JKV7P
 2eP05HRZL0sEJU+A2rw7CkAmQ1yJafVH7AxULCosnYc6nKR9W6GIn+VM3
 MHHFTRxuQPe/CI+W/lXkDfrEnO6Ocw3hvg+acXa6xvidLyg7sSEeHMNhR A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10220"; a="240554627"
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="240554627"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2022 01:57:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,272,1635231600"; d="scan'208";a="471568692"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 08 Jan 2022 01:57:50 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n68Tt-0000U2-Qw; Sat, 08 Jan 2022 09:57:49 +0000
Date: Sat, 08 Jan 2022 17:57:03 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 3b4edfee1ef170917f3209240810df3619008852
Message-ID: <61d95fef.639z9P6XuGxMjGF8%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: 3b4edfee1ef170917f3209240810df3619008852  kobject: kobj_type: remove default_attrs

elapsed time: 1375m

configs tested: 97
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
sh                           se7750_defconfig
arm                          iop32x_defconfig
powerpc                 canyonlands_defconfig
mips                           xway_defconfig
arc                            hsdk_defconfig
mips                  maltasmvp_eva_defconfig
mips                           jazz_defconfig
arm                       aspeed_g5_defconfig
parisc                generic-64bit_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                 linkstation_defconfig
sh                         ecovec24_defconfig
s390                          debug_defconfig
arm                  randconfig-c002-20220107
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
nds32                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allmodconfig
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20220107
i386                 randconfig-a005-20220107
i386                 randconfig-a004-20220107
i386                 randconfig-a006-20220107
i386                 randconfig-a002-20220107
i386                 randconfig-a001-20220107
x86_64               randconfig-a005-20220107
x86_64               randconfig-a001-20220107
x86_64               randconfig-a004-20220107
x86_64               randconfig-a006-20220107
x86_64               randconfig-a002-20220107
x86_64               randconfig-a003-20220107
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
mips                           ip28_defconfig
powerpc                      katmai_defconfig
x86_64               randconfig-a012-20220107
x86_64               randconfig-a015-20220107
x86_64               randconfig-a014-20220107
x86_64               randconfig-a013-20220107
x86_64               randconfig-a011-20220107
x86_64               randconfig-a016-20220107
i386                 randconfig-a012-20220107
i386                 randconfig-a016-20220107
i386                 randconfig-a014-20220107
i386                 randconfig-a015-20220107
i386                 randconfig-a011-20220107
i386                 randconfig-a013-20220107
hexagon              randconfig-r041-20220107
hexagon              randconfig-r045-20220107
riscv                randconfig-r042-20220107

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
