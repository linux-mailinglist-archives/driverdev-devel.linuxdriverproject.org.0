Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2813231A900
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Feb 2021 01:53:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2D00C876A3;
	Sat, 13 Feb 2021 00:53:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id g5MPLQVndpsQ; Sat, 13 Feb 2021 00:53:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 474A68764C;
	Sat, 13 Feb 2021 00:53:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4092F1BF2B3
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 00:53:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3CFD986FE7
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 00:53:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RRPjzXVtn8dx for <devel@linuxdriverproject.org>;
 Sat, 13 Feb 2021 00:53:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 62FF186FCC
 for <devel@driverdev.osuosl.org>; Sat, 13 Feb 2021 00:53:12 +0000 (UTC)
IronPort-SDR: KN+FXACFDP+xwLXDQ/hptV0i4eBZv2AeouXEiDpkknoMAzw0hl2jTciBT0W8yhMmEb8PfuIjq3
 sh8HcnsTZc0g==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="267344431"
X-IronPort-AV: E=Sophos;i="5.81,175,1610438400"; d="scan'208";a="267344431"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 16:53:11 -0800
IronPort-SDR: Pe/MwQyAUQ6pTXzTssj/HpdY9NIfxSYt7qBAG+osIspkhS+z4iXH8BG27k7bAKfPKMslFSrHnn
 hwKhQ0exWUTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,175,1610438400"; d="scan'208";a="416169758"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 12 Feb 2021 16:53:10 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lAjBN-0004zn-Gs; Sat, 13 Feb 2021 00:53:09 +0000
Date: Sat, 13 Feb 2021 08:52:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 6522ad26df0e85c4b52cc39fde269b0c64f9172a
Message-ID: <602722c0.BuRJoahdRzsA7ZPP%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: 6522ad26df0e85c4b52cc39fde269b0c64f9172a  staging: qlge: Remove duplicate word in comment

elapsed time: 1170m

configs tested: 209
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                          moxart_defconfig
arm                        spear6xx_defconfig
openrisc                 simple_smp_defconfig
powerpc                 mpc8540_ads_defconfig
m68k                            q40_defconfig
sparc64                             defconfig
powerpc                      ppc6xx_defconfig
mips                 decstation_r4k_defconfig
arm                         shannon_defconfig
arm                     davinci_all_defconfig
arc                        vdk_hs38_defconfig
sh                        sh7763rdp_defconfig
c6x                        evmc6474_defconfig
sh                      rts7751r2d1_defconfig
arm                            lart_defconfig
arm                            pleb_defconfig
arm                   milbeaut_m10v_defconfig
h8300                            alldefconfig
powerpc                      tqm8xx_defconfig
mips                      fuloong2e_defconfig
powerpc                      cm5200_defconfig
powerpc                         wii_defconfig
sh                           se7343_defconfig
arm                         axm55xx_defconfig
arm                        clps711x_defconfig
sh                          landisk_defconfig
sh                        edosk7760_defconfig
arm                        realview_defconfig
arm                      integrator_defconfig
sparc                            allyesconfig
sh                        apsh4ad0a_defconfig
mips                       bmips_be_defconfig
powerpc                  iss476-smp_defconfig
openrisc                         alldefconfig
sh                           se7712_defconfig
h8300                               defconfig
sh                            hp6xx_defconfig
arm                          simpad_defconfig
powerpc                 mpc8315_rdb_defconfig
arm                       netwinder_defconfig
arm                        magician_defconfig
arc                              alldefconfig
mips                        nlm_xlp_defconfig
arm                         lpc18xx_defconfig
arm                          ep93xx_defconfig
arm                           h5000_defconfig
xtensa                  cadence_csp_defconfig
powerpc64                           defconfig
m68k                        mvme147_defconfig
mips                            gpr_defconfig
arm                            u300_defconfig
openrisc                            defconfig
arm                          pxa3xx_defconfig
sh                           se7206_defconfig
sh                         ap325rxa_defconfig
powerpc                       eiger_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                 mpc832x_rdb_defconfig
m68k                        m5407c3_defconfig
c6x                              allyesconfig
mips                         rt305x_defconfig
xtensa                    xip_kc705_defconfig
powerpc                     tqm5200_defconfig
sh                     sh7710voipgw_defconfig
mips                      maltaaprp_defconfig
powerpc                 linkstation_defconfig
mips                           jazz_defconfig
powerpc                 mpc832x_mds_defconfig
mips                       capcella_defconfig
powerpc64                        alldefconfig
microblaze                      mmu_defconfig
powerpc                 mpc834x_mds_defconfig
arm                         cm_x300_defconfig
xtensa                         virt_defconfig
mips                         tb0219_defconfig
c6x                        evmc6678_defconfig
powerpc                      walnut_defconfig
arc                        nsim_700_defconfig
arm                           corgi_defconfig
um                             i386_defconfig
arm                             rpc_defconfig
powerpc                      ppc64e_defconfig
powerpc                     stx_gp3_defconfig
powerpc                   bluestone_defconfig
sh                          rsk7203_defconfig
nds32                               defconfig
powerpc                    gamecube_defconfig
mips                          ath79_defconfig
powerpc                     mpc5200_defconfig
openrisc                  or1klitex_defconfig
arm                       cns3420vb_defconfig
powerpc                    amigaone_defconfig
mips                        omega2p_defconfig
arm                         s5pv210_defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                      pmac32_defconfig
powerpc                        icon_defconfig
arm                         lpc32xx_defconfig
arm                          badge4_defconfig
powerpc                    socrates_defconfig
arm                        neponset_defconfig
arm                         orion5x_defconfig
mips                         bigsur_defconfig
sparc                               defconfig
m68k                             allmodconfig
mips                            e55_defconfig
parisc                              defconfig
parisc                generic-32bit_defconfig
powerpc                      pcm030_defconfig
mips                    maltaup_xpa_defconfig
arm                         palmz72_defconfig
powerpc                     tqm8548_defconfig
microblaze                          defconfig
powerpc                     mpc83xx_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20210209
x86_64               randconfig-a001-20210209
x86_64               randconfig-a005-20210209
x86_64               randconfig-a004-20210209
x86_64               randconfig-a002-20210209
x86_64               randconfig-a003-20210209
i386                 randconfig-a001-20210209
i386                 randconfig-a005-20210209
i386                 randconfig-a003-20210209
i386                 randconfig-a002-20210209
i386                 randconfig-a006-20210209
i386                 randconfig-a004-20210209
i386                 randconfig-a003-20210212
i386                 randconfig-a005-20210212
i386                 randconfig-a002-20210212
i386                 randconfig-a001-20210212
i386                 randconfig-a004-20210212
i386                 randconfig-a006-20210212
i386                 randconfig-a016-20210209
i386                 randconfig-a013-20210209
i386                 randconfig-a012-20210209
i386                 randconfig-a014-20210209
i386                 randconfig-a011-20210209
i386                 randconfig-a015-20210209
i386                 randconfig-a016-20210212
i386                 randconfig-a014-20210212
i386                 randconfig-a012-20210212
i386                 randconfig-a013-20210212
i386                 randconfig-a011-20210212
i386                 randconfig-a015-20210212
i386                 randconfig-a016-20210211
i386                 randconfig-a014-20210211
i386                 randconfig-a012-20210211
i386                 randconfig-a013-20210211
i386                 randconfig-a011-20210211
i386                 randconfig-a015-20210211
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20210211
x86_64               randconfig-a002-20210211
x86_64               randconfig-a001-20210211
x86_64               randconfig-a004-20210211
x86_64               randconfig-a005-20210211
x86_64               randconfig-a006-20210211
x86_64               randconfig-a013-20210209
x86_64               randconfig-a014-20210209
x86_64               randconfig-a015-20210209
x86_64               randconfig-a012-20210209
x86_64               randconfig-a016-20210209
x86_64               randconfig-a011-20210209

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
