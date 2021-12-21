Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F8E47C973
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Dec 2021 23:59:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7F3B040605;
	Tue, 21 Dec 2021 22:59:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y48dICVVUfyF; Tue, 21 Dec 2021 22:59:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AA3D240210;
	Tue, 21 Dec 2021 22:59:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9E0191BF292
 for <devel@linuxdriverproject.org>; Tue, 21 Dec 2021 22:59:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8D41060F81
 for <devel@linuxdriverproject.org>; Tue, 21 Dec 2021 22:59:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a69Qw77ZrXck for <devel@linuxdriverproject.org>;
 Tue, 21 Dec 2021 22:59:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 017E560F13
 for <devel@driverdev.osuosl.org>; Tue, 21 Dec 2021 22:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640127561; x=1671663561;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Wgr9LpWI7sLx0pVKkhx+kLzC2mva4BPFqO9PQ5a+DdY=;
 b=nb8C9Q8G/g+7RIsAN6xuDfyJnHk+cQqhS0/TRrnYpQ6guktNKHkqnbX5
 iw6GG1iwA9cxSVZbFJh7B6HCIgSNQuG0Eze3bdCVPXUjFCoTYcu+zfW3Y
 xSqANbrxp8oLa/uPto80+zJmBXCeZVcdA6LkU6iA4KjYg0gxIxci9AyRn
 kKU8XofgohCBMune9vzs9th8cM9e0E/fQ9NVQtUH06K2gVIlHL2RcJJun
 iwGvVfHIhWdgr6dVEWhBDVCu6pUJybbfUtdglfAjhV06Z5zWCIYgJHLK7
 ZU6RHhRB+Ff6+nIVe4k33PKTiAjkXYSqxrH6Bslzv2SDM/38n3KeRewKy Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="227356502"
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="227356502"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Dec 2021 14:59:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,224,1635231600"; d="scan'208";a="521443310"
Received: from lkp-server02.sh.intel.com (HELO 9f38c0981d9f) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 21 Dec 2021 14:59:19 -0800
Received: from kbuild by 9f38c0981d9f with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mzo6J-0009dA-9n; Tue, 21 Dec 2021 22:59:19 +0000
Date: Wed, 22 Dec 2021 06:59:02 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 79f1c7304295bbbc611bc53cfd5425b777b3e840
Message-ID: <61c25c36.5We5hhXeASX+r4LW%lkp@intel.com>
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
branch HEAD: 79f1c7304295bbbc611bc53cfd5425b777b3e840  kernfs: Replace kernel.h with the necessary inclusions

elapsed time: 722m

configs tested: 158
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                                 defconfig
sh                      rts7751r2d1_defconfig
arc                     haps_hs_smp_defconfig
sh                ecovec24-romimage_defconfig
ia64                        generic_defconfig
powerpc                 mpc837x_rdb_defconfig
sh                             espt_defconfig
mips                     loongson1c_defconfig
arm                        realview_defconfig
powerpc                  storcenter_defconfig
sh                        edosk7705_defconfig
powerpc                    amigaone_defconfig
arm                           sama5_defconfig
openrisc                            defconfig
arm                          imote2_defconfig
arm                          moxart_defconfig
mips                        qi_lb60_defconfig
arm                        magician_defconfig
mips                           ip32_defconfig
mips                         rt305x_defconfig
mips                           gcw0_defconfig
mips                       bmips_be_defconfig
powerpc                     skiroot_defconfig
mips                      maltaaprp_defconfig
mips                      bmips_stb_defconfig
um                               alldefconfig
arm                          ixp4xx_defconfig
nds32                             allnoconfig
sh                            shmin_defconfig
arm                     eseries_pxa_defconfig
riscv                    nommu_virt_defconfig
xtensa                          iss_defconfig
arm                         at91_dt_defconfig
mips                            ar7_defconfig
powerpc                     tqm8548_defconfig
sh                        sh7785lcr_defconfig
sh                           se7206_defconfig
mips                        jmr3927_defconfig
mips                       capcella_defconfig
powerpc                 canyonlands_defconfig
sh                        dreamcast_defconfig
mips                           ci20_defconfig
m68k                            q40_defconfig
powerpc                   lite5200b_defconfig
arm                          pcm027_defconfig
powerpc                      katmai_defconfig
arm                         assabet_defconfig
m68k                          amiga_defconfig
arm                        mvebu_v5_defconfig
arm                     am200epdkit_defconfig
mips                          rb532_defconfig
openrisc                 simple_smp_defconfig
powerpc                    sam440ep_defconfig
m68k                        m5407c3_defconfig
sh                           se7780_defconfig
nios2                         3c120_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                      pmac32_defconfig
xtensa                         virt_defconfig
arm                         bcm2835_defconfig
mips                      pic32mzda_defconfig
arm                             ezx_defconfig
xtensa                              defconfig
arm                  randconfig-c002-20211220
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
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
x86_64               randconfig-a001-20211220
x86_64               randconfig-a003-20211220
x86_64               randconfig-a005-20211220
x86_64               randconfig-a006-20211220
x86_64               randconfig-a004-20211220
x86_64               randconfig-a002-20211220
i386                 randconfig-a006-20211220
i386                 randconfig-a004-20211220
i386                 randconfig-a002-20211220
i386                 randconfig-a003-20211220
i386                 randconfig-a005-20211220
i386                 randconfig-a001-20211220
x86_64               randconfig-a013-20211221
x86_64               randconfig-a015-20211221
x86_64               randconfig-a014-20211221
x86_64               randconfig-a011-20211221
x86_64               randconfig-a012-20211221
x86_64               randconfig-a016-20211221
i386                 randconfig-a013-20211219
i386                 randconfig-a011-20211219
i386                 randconfig-a016-20211219
i386                 randconfig-a015-20211219
i386                 randconfig-a014-20211219
i386                 randconfig-a012-20211219
arc                  randconfig-r043-20211221
riscv                randconfig-r042-20211221
s390                 randconfig-r044-20211221
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
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
x86_64               randconfig-a013-20211220
x86_64               randconfig-a015-20211220
x86_64               randconfig-a014-20211220
x86_64               randconfig-a012-20211220
x86_64               randconfig-a011-20211220
x86_64               randconfig-a016-20211220
i386                 randconfig-a012-20211220
i386                 randconfig-a011-20211220
i386                 randconfig-a014-20211220
i386                 randconfig-a016-20211220
i386                 randconfig-a015-20211220
i386                 randconfig-a013-20211220
hexagon              randconfig-r041-20211220
hexagon              randconfig-r045-20211220
riscv                randconfig-r042-20211220
s390                 randconfig-r044-20211220

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
