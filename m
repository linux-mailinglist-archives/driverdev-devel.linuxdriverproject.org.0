Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B1B35E79D
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Apr 2021 22:31:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 65580845BD;
	Tue, 13 Apr 2021 20:31:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bWgcYt6J5X06; Tue, 13 Apr 2021 20:31:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E4958446E;
	Tue, 13 Apr 2021 20:31:49 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5066D1BF873
 for <devel@linuxdriverproject.org>; Tue, 13 Apr 2021 20:31:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4CB8C6064F
 for <devel@linuxdriverproject.org>; Tue, 13 Apr 2021 20:31:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M6fhQPbUAg72 for <devel@linuxdriverproject.org>;
 Tue, 13 Apr 2021 20:31:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 14E9860616
 for <devel@driverdev.osuosl.org>; Tue, 13 Apr 2021 20:31:38 +0000 (UTC)
IronPort-SDR: FTN+7i7a1XyEtm3WRuklOSmAxDZ556Ffcg+Vpf21NGZ4EcUqvQhzZHj3xm/8/qiS/e8P1vDNd1
 xianA3Z5O17A==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="194062595"
X-IronPort-AV: E=Sophos;i="5.82,220,1613462400"; d="scan'208";a="194062595"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2021 13:31:37 -0700
IronPort-SDR: Ys1C2VfVygEqEVlCCjWnGN02v3PTimubn7d31vvZDn4H57kw9gBaDZeXmDrC7b/G1kE20pj9u6
 cF1RYte4fZUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,220,1613462400"; d="scan'208";a="398904334"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 13 Apr 2021 13:31:35 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lWPh8-0001GX-MD; Tue, 13 Apr 2021 20:31:34 +0000
Date: Wed, 14 Apr 2021 04:30:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 07ff20cf172f31f0dfbc456662f20339767c69fd
Message-ID: <6075ff6c.i5gN2RHk/yceOQ6j%lkp@intel.com>
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
branch HEAD: 07ff20cf172f31f0dfbc456662f20339767c69fd  staging: fieldbus: simplify devm_anybuss_host_common_probe

elapsed time: 726m

configs tested: 181
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
riscv                            allmodconfig
x86_64                           allyesconfig
i386                             allyesconfig
riscv                            allyesconfig
powerpc                       ebony_defconfig
powerpc                     ep8248e_defconfig
mips                        omega2p_defconfig
mips                     loongson1c_defconfig
arm                           stm32_defconfig
arm                        neponset_defconfig
sh                          rsk7269_defconfig
sh                             sh03_defconfig
ia64                                defconfig
openrisc                 simple_smp_defconfig
arm                       aspeed_g4_defconfig
powerpc                      cm5200_defconfig
arm                   milbeaut_m10v_defconfig
arm                        mvebu_v7_defconfig
mips                          ath79_defconfig
microblaze                          defconfig
arc                         haps_hs_defconfig
powerpc                     taishan_defconfig
powerpc64                        alldefconfig
powerpc                     ksi8560_defconfig
xtensa                  cadence_csp_defconfig
h8300                       h8s-sim_defconfig
arm                       cns3420vb_defconfig
ia64                          tiger_defconfig
arc                        nsim_700_defconfig
sh                          urquell_defconfig
h8300                    h8300h-sim_defconfig
arm                          collie_defconfig
mips                malta_kvm_guest_defconfig
sh                           se7750_defconfig
mips                           rs90_defconfig
powerpc                    gamecube_defconfig
arc                     nsimosci_hs_defconfig
m68k                          hp300_defconfig
powerpc                  storcenter_defconfig
sh                            shmin_defconfig
mips                            gpr_defconfig
ia64                             alldefconfig
powerpc                    socrates_defconfig
powerpc                   lite5200b_defconfig
powerpc                      bamboo_defconfig
arm                            xcep_defconfig
mips                        nlm_xlp_defconfig
powerpc                  iss476-smp_defconfig
sh                               j2_defconfig
arm                            mmp2_defconfig
powerpc                         wii_defconfig
mips                         db1xxx_defconfig
sh                            titan_defconfig
m68k                         amcore_defconfig
arm                       netwinder_defconfig
m68k                        mvme147_defconfig
ia64                            zx1_defconfig
sh                          landisk_defconfig
csky                             alldefconfig
powerpc                     tqm8560_defconfig
arm                       spear13xx_defconfig
powerpc                 mpc832x_rdb_defconfig
arm                           h3600_defconfig
arm                              alldefconfig
arm                            zeus_defconfig
openrisc                         alldefconfig
m68k                          atari_defconfig
arc                     haps_hs_smp_defconfig
mips                        maltaup_defconfig
arm                        realview_defconfig
arm                     am200epdkit_defconfig
arm                           corgi_defconfig
arm                          ixp4xx_defconfig
powerpc                     tqm8540_defconfig
arm                         hackkit_defconfig
m68k                       m5208evb_defconfig
arm                             ezx_defconfig
arm                          pxa3xx_defconfig
powerpc                      ep88xc_defconfig
powerpc                     rainier_defconfig
arm                          pxa168_defconfig
mips                           ci20_defconfig
powerpc                 linkstation_defconfig
powerpc                     pseries_defconfig
arm                           spitz_defconfig
arm                       multi_v4t_defconfig
openrisc                    or1ksim_defconfig
powerpc                      ppc44x_defconfig
powerpc                 mpc834x_itx_defconfig
sparc64                             defconfig
powerpc                     sequoia_defconfig
um                               allmodconfig
arm                            qcom_defconfig
mips                         mpc30x_defconfig
sh                          polaris_defconfig
arm                         socfpga_defconfig
mips                         tb0226_defconfig
arm                          ep93xx_defconfig
m68k                            mac_defconfig
arm                  colibri_pxa270_defconfig
powerpc                    amigaone_defconfig
powerpc                     powernv_defconfig
sh                        edosk7760_defconfig
sh                        sh7785lcr_defconfig
arc                          axs101_defconfig
powerpc                   motionpro_defconfig
mips                        nlm_xlr_defconfig
m68k                             allyesconfig
powerpc                 canyonlands_defconfig
sh                     magicpanelr2_defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
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
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a003-20210413
x86_64               randconfig-a002-20210413
x86_64               randconfig-a001-20210413
x86_64               randconfig-a005-20210413
x86_64               randconfig-a006-20210413
x86_64               randconfig-a004-20210413
i386                 randconfig-a003-20210413
i386                 randconfig-a001-20210413
i386                 randconfig-a006-20210413
i386                 randconfig-a005-20210413
i386                 randconfig-a004-20210413
i386                 randconfig-a002-20210413
i386                 randconfig-a015-20210413
i386                 randconfig-a014-20210413
i386                 randconfig-a013-20210413
i386                 randconfig-a012-20210413
i386                 randconfig-a016-20210413
i386                 randconfig-a011-20210413
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a014-20210413
x86_64               randconfig-a015-20210413
x86_64               randconfig-a011-20210413
x86_64               randconfig-a013-20210413
x86_64               randconfig-a012-20210413
x86_64               randconfig-a016-20210413

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
