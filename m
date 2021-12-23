Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEBB47E1AC
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Dec 2021 11:45:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D1E9860E96;
	Thu, 23 Dec 2021 10:45:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5QfeTee_EU_N; Thu, 23 Dec 2021 10:45:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DD26260B36;
	Thu, 23 Dec 2021 10:45:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7349A1BF4D5
 for <devel@linuxdriverproject.org>; Thu, 23 Dec 2021 10:45:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E3B44055E
 for <devel@linuxdriverproject.org>; Thu, 23 Dec 2021 10:45:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kh63D9PUzpKb for <devel@linuxdriverproject.org>;
 Thu, 23 Dec 2021 10:45:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0CA2940002
 for <devel@driverdev.osuosl.org>; Thu, 23 Dec 2021 10:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640256339; x=1671792339;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=mrqTWlllhK8HiP2NSOBD41H/AwZonnNNa9eBCComJak=;
 b=BSFHKVm/Wa1MNX7sspTxY6EQYnPp2qr0wjQzm45kc9cpjLQq0b2BI0RJ
 q94JI1pZeqCftydh9iwGsIyNa3T4qY8qogyrwEckZAh5OyCV3PPU+gdB5
 VAMTJA1iSzEm7IWPCSDj1Nf/M3BN+uA0128sbpQ0A/1KGexJWjdfL1W4k
 mqJuosJw7dqTAa+7nRZBGioUwXA8ixHo90oJ1sA4omUIrnpnyrZPU3aKN
 /yyLH+aV9afh6XM33ezwm6DWqJtxVy0BvUkrgmXHa39cS716pXX0uJyuI
 uXeYRTXS3Cv5yGDjIPIZ8ZHXrZuXrDXFp5REEkm8jeR3DOekO/LP18Dqq A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10206"; a="228101804"
X-IronPort-AV: E=Sophos;i="5.88,229,1635231600"; d="scan'208";a="228101804"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Dec 2021 02:45:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,229,1635231600"; d="scan'208";a="508819537"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 23 Dec 2021 02:45:37 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n0LbM-0001i0-Fg; Thu, 23 Dec 2021 10:45:36 +0000
Date: Thu, 23 Dec 2021 18:45:13 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 67e532a42cf4c6c214ed39e33e617bca29508f4e
Message-ID: <61c45339.AgfnknFg0bLaLxRv%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 67e532a42cf4c6c214ed39e33e617bca29508f4e  driver core: platform: document registration-failure requirement

elapsed time: 1090m

configs tested: 150
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211223
arm                          moxart_defconfig
powerpc               mpc834x_itxgp_defconfig
sparc                       sparc64_defconfig
powerpc                         wii_defconfig
powerpc64                        alldefconfig
powerpc                      ppc44x_defconfig
mips                         tb0287_defconfig
arm                      pxa255-idp_defconfig
mips                          ath25_defconfig
arc                        nsimosci_defconfig
arm                          pxa3xx_defconfig
sh                          r7780mp_defconfig
sh                            titan_defconfig
arm                          pcm027_defconfig
parisc                generic-32bit_defconfig
riscv                               defconfig
sh                 kfr2r09-romimage_defconfig
powerpc                      pcm030_defconfig
arc                     nsimosci_hs_defconfig
h8300                     edosk2674_defconfig
arc                        vdk_hs38_defconfig
m68k                       m5208evb_defconfig
powerpc                     tqm8555_defconfig
arm                         lpc32xx_defconfig
mips                   sb1250_swarm_defconfig
arm                       aspeed_g4_defconfig
arm                             pxa_defconfig
sh                          kfr2r09_defconfig
powerpc                 mpc832x_mds_defconfig
ia64                             allyesconfig
powerpc                     skiroot_defconfig
sh                          sdk7786_defconfig
arm                          pxa168_defconfig
powerpc                      makalu_defconfig
arm                        trizeps4_defconfig
arm                            zeus_defconfig
sh                           se7722_defconfig
m68k                       m5475evb_defconfig
xtensa                    smp_lx200_defconfig
arm                        vexpress_defconfig
powerpc                          allmodconfig
sh                      rts7751r2d1_defconfig
s390                             allyesconfig
openrisc                            defconfig
m68k                       bvme6000_defconfig
alpha                               defconfig
riscv             nommu_k210_sdcard_defconfig
parisc                           alldefconfig
mips                       bmips_be_defconfig
mips                            gpr_defconfig
sh                             shx3_defconfig
powerpc                      walnut_defconfig
arm                           h3600_defconfig
m68k                          amiga_defconfig
arm                       aspeed_g5_defconfig
riscv                             allnoconfig
arm                  randconfig-c002-20211222
arm                  randconfig-c002-20211223
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allmodconfig
s390                                defconfig
parisc                           allyesconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20211222
x86_64               randconfig-a003-20211222
x86_64               randconfig-a005-20211222
x86_64               randconfig-a006-20211222
x86_64               randconfig-a004-20211222
x86_64               randconfig-a002-20211222
i386                 randconfig-a002-20211222
i386                 randconfig-a003-20211222
i386                 randconfig-a005-20211222
i386                 randconfig-a001-20211222
i386                 randconfig-a004-20211222
i386                 randconfig-a006-20211222
x86_64               randconfig-a013-20211223
x86_64               randconfig-a015-20211223
x86_64               randconfig-a014-20211223
x86_64               randconfig-a011-20211223
x86_64               randconfig-a012-20211223
x86_64               randconfig-a016-20211223
i386                 randconfig-a012-20211223
i386                 randconfig-a011-20211223
i386                 randconfig-a014-20211223
i386                 randconfig-a016-20211223
i386                 randconfig-a015-20211223
i386                 randconfig-a013-20211223
arc                  randconfig-r043-20211223
riscv                randconfig-r042-20211223
s390                 randconfig-r044-20211223
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                            allmodconfig
riscv                          rv32_defconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
x86_64               randconfig-a001-20211223
x86_64               randconfig-a003-20211223
x86_64               randconfig-a005-20211223
x86_64               randconfig-a006-20211223
x86_64               randconfig-a004-20211223
x86_64               randconfig-a002-20211223
i386                 randconfig-a006-20211223
i386                 randconfig-a004-20211223
i386                 randconfig-a002-20211223
i386                 randconfig-a003-20211223
i386                 randconfig-a005-20211223
i386                 randconfig-a001-20211223
hexagon              randconfig-r041-20211222
hexagon              randconfig-r045-20211222
riscv                randconfig-r042-20211222
s390                 randconfig-r044-20211222

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
