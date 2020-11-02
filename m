Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0562A35C3
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Nov 2020 22:05:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9A5D8204E6;
	Mon,  2 Nov 2020 21:05:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JILP8RN1sPXI; Mon,  2 Nov 2020 21:05:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9FFA1204A8;
	Mon,  2 Nov 2020 21:05:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E35A41BF348
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 21:05:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CEC21203F9
 for <devel@linuxdriverproject.org>; Mon,  2 Nov 2020 21:05:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id opgb6sVG-fTS for <devel@linuxdriverproject.org>;
 Mon,  2 Nov 2020 21:05:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by silver.osuosl.org (Postfix) with ESMTPS id C1B42203DE
 for <devel@driverdev.osuosl.org>; Mon,  2 Nov 2020 21:05:35 +0000 (UTC)
IronPort-SDR: I8CoLfDvDoor2AqjSKKTD6wnjPrAr/1l8Ht3lNydeK7EqP/Bd11BKvnozyS4EIn0tXo4SR0GCr
 7G0WMS2n6+OA==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="156731633"
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="156731633"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 13:05:35 -0800
IronPort-SDR: vl/26kmctq9Gm6mZ9hdxrg7+/xqifU5K0joWOkTea4sWMjglbGc8sstZr7zlttnDUc5CheAE1M
 KxVIid7pORvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="320195449"
Received: from lkp-server02.sh.intel.com (HELO 9353403cd79d) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 02 Nov 2020 13:05:33 -0800
Received: from kbuild by 9353403cd79d with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kZh1B-00009G-3P; Mon, 02 Nov 2020 21:05:33 +0000
Date: Tue, 03 Nov 2020 05:05:31 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 83e63b2cc416904b50895eeee8d8e0d7ea0418fe
Message-ID: <5fa0749b.gBj4zZiybrYFdj+F%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-next
branch HEAD: 83e63b2cc416904b50895eeee8d8e0d7ea0418fe  Merge 5.10-rc2 into staging-next

elapsed time: 721m

configs tested: 188
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
c6x                        evmc6457_defconfig
arm                       imx_v6_v7_defconfig
powerpc                      cm5200_defconfig
arm                        magician_defconfig
powerpc                     skiroot_defconfig
sh                        sh7757lcr_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                    amigaone_defconfig
arm                        spear6xx_defconfig
arm                            mmp2_defconfig
ia64                        generic_defconfig
mips                    maltaup_xpa_defconfig
sh                          rsk7269_defconfig
arm                      tct_hammer_defconfig
arm                            xcep_defconfig
sh                   rts7751r2dplus_defconfig
mips                      maltasmvp_defconfig
nios2                         10m50_defconfig
sh                           se7712_defconfig
mips                         mpc30x_defconfig
powerpc                   currituck_defconfig
m68k                             alldefconfig
sh                           se7724_defconfig
arm                            lart_defconfig
powerpc                     mpc5200_defconfig
sh                          urquell_defconfig
powerpc                      ep88xc_defconfig
powerpc                 canyonlands_defconfig
arm                          simpad_defconfig
arm                      footbridge_defconfig
arm                         lpc32xx_defconfig
sh                           se7343_defconfig
riscv                            allmodconfig
mips                      maltaaprp_defconfig
arc                          axs101_defconfig
arc                        vdk_hs38_defconfig
mips                             allyesconfig
arm                           omap1_defconfig
m68k                        mvme16x_defconfig
mips                        bcm47xx_defconfig
mips                            gpr_defconfig
powerpc                 mpc837x_mds_defconfig
powerpc                       maple_defconfig
riscv                    nommu_k210_defconfig
powerpc                 mpc832x_rdb_defconfig
c6x                                 defconfig
arm                        oxnas_v6_defconfig
m68k                       m5208evb_defconfig
powerpc                      obs600_defconfig
powerpc                     asp8347_defconfig
mips                         tb0226_defconfig
mips                          ath25_defconfig
i386                             allyesconfig
powerpc                      pasemi_defconfig
parisc                              defconfig
m68k                        m5407c3_defconfig
powerpc                     taishan_defconfig
nds32                            alldefconfig
powerpc                     redwood_defconfig
arm                        shmobile_defconfig
arm                       cns3420vb_defconfig
mips                          ath79_defconfig
arc                            hsdk_defconfig
m68k                          sun3x_defconfig
powerpc                     tqm8548_defconfig
um                            kunit_defconfig
arc                     haps_hs_smp_defconfig
m68k                       bvme6000_defconfig
arm                         vf610m4_defconfig
arm                         mv78xx0_defconfig
powerpc                      ppc40x_defconfig
sh                           se7750_defconfig
sh                          sdk7780_defconfig
powerpc                       eiger_defconfig
m68k                          multi_defconfig
arm                         socfpga_defconfig
riscv                            allyesconfig
arm                          badge4_defconfig
arm                           sunxi_defconfig
sh                         ecovec24_defconfig
riscv                          rv32_defconfig
mips                        workpad_defconfig
x86_64                           allyesconfig
powerpc                       holly_defconfig
arm                            qcom_defconfig
sh                           se7619_defconfig
mips                malta_kvm_guest_defconfig
mips                        jmr3927_defconfig
powerpc                 mpc836x_rdk_defconfig
mips                malta_qemu_32r6_defconfig
i386                                defconfig
powerpc                        cell_defconfig
sh                         microdev_defconfig
powerpc                     rainier_defconfig
powerpc                      katmai_defconfig
powerpc                    ge_imp3a_defconfig
powerpc                 mpc8313_rdb_defconfig
powerpc                    gamecube_defconfig
powerpc                     tqm8541_defconfig
sh                ecovec24-romimage_defconfig
sh                   sh7770_generic_defconfig
arm                        multi_v5_defconfig
h8300                     edosk2674_defconfig
sh                           sh2007_defconfig
ia64                             alldefconfig
mips                         cobalt_defconfig
microblaze                    nommu_defconfig
arm                          gemini_defconfig
sparc                       sparc32_defconfig
powerpc                           allnoconfig
powerpc                      tqm8xx_defconfig
powerpc                      chrp32_defconfig
sh                        edosk7760_defconfig
riscv                            alldefconfig
m68k                        mvme147_defconfig
mips                           ip27_defconfig
xtensa                    smp_lx200_defconfig
m68k                           sun3_defconfig
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
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
i386                 randconfig-a004-20201102
i386                 randconfig-a006-20201102
i386                 randconfig-a005-20201102
i386                 randconfig-a001-20201102
i386                 randconfig-a002-20201102
i386                 randconfig-a003-20201102
i386                 randconfig-a004-20201101
i386                 randconfig-a006-20201101
i386                 randconfig-a005-20201101
i386                 randconfig-a001-20201101
i386                 randconfig-a002-20201101
i386                 randconfig-a003-20201101
x86_64               randconfig-a012-20201102
x86_64               randconfig-a015-20201102
x86_64               randconfig-a011-20201102
x86_64               randconfig-a013-20201102
x86_64               randconfig-a014-20201102
x86_64               randconfig-a016-20201102
i386                 randconfig-a013-20201102
i386                 randconfig-a015-20201102
i386                 randconfig-a014-20201102
i386                 randconfig-a016-20201102
i386                 randconfig-a011-20201102
i386                 randconfig-a012-20201102
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
x86_64                                   rhel
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a004-20201102
x86_64               randconfig-a005-20201102
x86_64               randconfig-a003-20201102
x86_64               randconfig-a002-20201102
x86_64               randconfig-a006-20201102
x86_64               randconfig-a001-20201102

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
