Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 179CC370203
	for <lists+driverdev-devel@lfdr.de>; Fri, 30 Apr 2021 22:24:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DF8596F9E6;
	Fri, 30 Apr 2021 20:24:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7DX5zcyl4psv; Fri, 30 Apr 2021 20:24:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1C7F96F9C7;
	Fri, 30 Apr 2021 20:24:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B79271BF380
 for <devel@linuxdriverproject.org>; Fri, 30 Apr 2021 20:24:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A539E41BB9
 for <devel@linuxdriverproject.org>; Fri, 30 Apr 2021 20:24:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9ntnccZdBhjt for <devel@linuxdriverproject.org>;
 Fri, 30 Apr 2021 20:24:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 932B241BBB
 for <devel@driverdev.osuosl.org>; Fri, 30 Apr 2021 20:24:23 +0000 (UTC)
IronPort-SDR: nRKZTj5BE1857dkXijCm+hBLVKJ59jE4pqPjh97QmQGK6v3RjIH8MrEapVLgMH65uJLEPcisEw
 yBHqO9pKqG0A==
X-IronPort-AV: E=McAfee;i="6200,9189,9970"; a="184494705"
X-IronPort-AV: E=Sophos;i="5.82,263,1613462400"; d="scan'208";a="184494705"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2021 13:24:22 -0700
IronPort-SDR: qE01XDeZfqdF2B7T0FPtenin8qQEvo6Etwdn/YACbenb94cVoIn+84WvCmBv4IoVfJY2zcFEuo
 xRJnuEJdPtOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,263,1613462400"; d="scan'208";a="404734334"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 30 Apr 2021 13:24:21 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lcZgR-0008IH-Jn; Fri, 30 Apr 2021 20:24:19 +0000
Date: Sat, 01 May 2021 04:23:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:umn.edu-reverts-round1] BUILD SUCCESS
 e68775d49af33dc6cae8f6dd466fd46cc7524442
Message-ID: <608c6758.6gTte83AeuHhUHO+%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git umn.edu-reverts-round1
branch HEAD: e68775d49af33dc6cae8f6dd466fd46cc7524442  Revert "crypto: cavium/nitrox - add an error message to explain the failure of pci_request_mem_regions"

elapsed time: 722m

configs tested: 85
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
m68k                        m5307c3_defconfig
arm                       cns3420vb_defconfig
h8300                               defconfig
m68k                        m5407c3_defconfig
powerpc                       holly_defconfig
powerpc                      katmai_defconfig
mips                       bmips_be_defconfig
m68k                        m5272c3_defconfig
arm                          pxa3xx_defconfig
powerpc                      pcm030_defconfig
sh                            titan_defconfig
arc                            hsdk_defconfig
sh                              ul2_defconfig
arm                             pxa_defconfig
sh                          rsk7203_defconfig
arm                      tct_hammer_defconfig
arm                           sunxi_defconfig
powerpc                 mpc85xx_cds_defconfig
csky                                defconfig
m68k                        stmark2_defconfig
s390                          debug_defconfig
powerpc                   bluestone_defconfig
arm                            lart_defconfig
mips                        omega2p_defconfig
sparc64                             defconfig
powerpc                     sbc8548_defconfig
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
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20210430
x86_64               randconfig-a004-20210430
x86_64               randconfig-a002-20210430
x86_64               randconfig-a006-20210430
x86_64               randconfig-a001-20210430
x86_64               randconfig-a005-20210430
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
