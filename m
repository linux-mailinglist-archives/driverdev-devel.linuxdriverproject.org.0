Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EE57350DDD9
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Apr 2022 12:26:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4FABE60A7D;
	Mon, 25 Apr 2022 10:26:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uh1A9WikQDnr; Mon, 25 Apr 2022 10:26:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFA4960648;
	Mon, 25 Apr 2022 10:26:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D19AF1BF282
 for <devel@linuxdriverproject.org>; Mon, 25 Apr 2022 10:26:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BF525817A6
 for <devel@linuxdriverproject.org>; Mon, 25 Apr 2022 10:26:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sk9zew1x3Rj9 for <devel@linuxdriverproject.org>;
 Mon, 25 Apr 2022 10:26:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AA6A2817A4
 for <devel@driverdev.osuosl.org>; Mon, 25 Apr 2022 10:26:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650882376; x=1682418376;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=KloCuEuqhxVbLJwO+a076DsaTYPy2pp/67o+NQb6KRI=;
 b=kuq0JYi/LKX+38wHN5B9F6r7hA59QMkenhk9RWvG7ztQZWbdot9uQzgp
 rOCBtqhIPa0ahPEm+xWetn+jd/UC5DK/I1YX5k6ul8zeK/WEA4K5Su+eH
 UaMG83O0fGtyi0rkRpAaCJO7LZ2P0OHM8dj9D8sbXZSd6UAClWeg1Yhan
 yoKuz4RldmE09iCleeFnSbYMRp80ZKVLKkfbG+LpX8E+k9lp/mVlvxnyd
 OOmd0VjAM9XhXThNXJav2/mGhvg4e4jikAJjOBpLLIP4yxgA5jVorYTWl
 wuOmdd7fUCu5o1fzm/nwF3iY1Mr13lOZFWdzDXHNKaYBtHJPX2aCrVBE3 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="351656518"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="351656518"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2022 03:26:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="512581726"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 25 Apr 2022 03:26:14 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nivv3-0002KH-JB;
 Mon, 25 Apr 2022 10:26:13 +0000
Date: Mon, 25 Apr 2022 18:26:06 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 c95ce3a23dcda678f6f7811dd39b6d14eeb6f192
Message-ID: <6266773e.tbkzkY94ZQWglj+o%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-linus
branch HEAD: c95ce3a23dcda678f6f7811dd39b6d14eeb6f192  topology: Fix up build warning in topology_is_visible()

elapsed time: 2794m

configs tested: 261
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
i386                 randconfig-c001-20220425
arm                             pxa_defconfig
sparc                       sparc64_defconfig
xtensa                          iss_defconfig
arm                        keystone_defconfig
arm                        mvebu_v7_defconfig
powerpc                        cell_defconfig
mips                         rt305x_defconfig
sh                          r7785rp_defconfig
powerpc                     tqm8548_defconfig
powerpc                      pasemi_defconfig
mips                  maltasmvp_eva_defconfig
ia64                             alldefconfig
sh                           se7750_defconfig
sh                           sh2007_defconfig
i386                                defconfig
powerpc                       maple_defconfig
arc                          axs101_defconfig
arc                          axs103_defconfig
sh                        edosk7705_defconfig
mips                  decstation_64_defconfig
powerpc                      tqm8xx_defconfig
arm                      jornada720_defconfig
um                                  defconfig
m68k                          atari_defconfig
arm                          badge4_defconfig
m68k                        mvme147_defconfig
arm                           viper_defconfig
openrisc                    or1ksim_defconfig
sh                  sh7785lcr_32bit_defconfig
arm                     eseries_pxa_defconfig
um                             i386_defconfig
arc                     nsimosci_hs_defconfig
powerpc                    amigaone_defconfig
sh                        apsh4ad0a_defconfig
arm                          exynos_defconfig
x86_64                           alldefconfig
arc                        vdk_hs38_defconfig
sh                        edosk7760_defconfig
arm                             rpc_defconfig
sh                            hp6xx_defconfig
openrisc                            defconfig
arm                           u8500_defconfig
arm                       omap2plus_defconfig
arm                      integrator_defconfig
sparc64                          alldefconfig
arm                          lpd270_defconfig
mips                      maltasmvp_defconfig
arc                                 defconfig
m68k                        m5407c3_defconfig
arm                            qcom_defconfig
mips                          rb532_defconfig
powerpc                  iss476-smp_defconfig
powerpc                      arches_defconfig
powerpc                     rainier_defconfig
sh                               j2_defconfig
mips                    maltaup_xpa_defconfig
powerpc                    klondike_defconfig
arm                         lubbock_defconfig
powerpc                 mpc837x_mds_defconfig
xtensa                    xip_kc705_defconfig
arm                            lart_defconfig
arm                            zeus_defconfig
sh                        sh7763rdp_defconfig
sh                         ap325rxa_defconfig
arm                             ezx_defconfig
arm                         vf610m4_defconfig
arm                         s3c6400_defconfig
arm                           stm32_defconfig
xtensa                  nommu_kc705_defconfig
h8300                            alldefconfig
arm                        cerfcube_defconfig
m68k                          multi_defconfig
powerpc                 mpc85xx_cds_defconfig
sh                          sdk7780_defconfig
arm                        trizeps4_defconfig
powerpc                         ps3_defconfig
sh                           se7780_defconfig
arm                        spear6xx_defconfig
m68k                            q40_defconfig
ia64                      gensparse_defconfig
sh                          lboxre2_defconfig
m68k                         amcore_defconfig
arm                           h5000_defconfig
mips                      loongson3_defconfig
riscv                               defconfig
arm                        realview_defconfig
mips                       capcella_defconfig
arm                      footbridge_defconfig
powerpc                     taishan_defconfig
h8300                               defconfig
powerpc                     tqm8541_defconfig
xtensa                  cadence_csp_defconfig
sh                          landisk_defconfig
m68k                          sun3x_defconfig
sh                           se7722_defconfig
arm                            xcep_defconfig
sh                           se7619_defconfig
sparc                       sparc32_defconfig
mips                           gcw0_defconfig
arm                           corgi_defconfig
powerpc                 mpc837x_rdb_defconfig
mips                         bigsur_defconfig
sh                           se7343_defconfig
mips                 decstation_r4k_defconfig
xtensa                  audio_kc705_defconfig
riscv                            allyesconfig
arm                            mps2_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220422
x86_64               randconfig-c001-20220425
arm                  randconfig-c002-20220425
arm                  randconfig-c002-20220424
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
csky                                defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
xtensa                           allyesconfig
sh                               allmodconfig
s390                                defconfig
s390                             allmodconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
i386                             allyesconfig
sparc                            allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64               randconfig-a015-20220425
x86_64               randconfig-a014-20220425
x86_64               randconfig-a011-20220425
x86_64               randconfig-a013-20220425
x86_64               randconfig-a012-20220425
x86_64               randconfig-a016-20220425
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
i386                 randconfig-a014-20220425
i386                 randconfig-a012-20220425
i386                 randconfig-a011-20220425
i386                 randconfig-a015-20220425
i386                 randconfig-a013-20220425
i386                 randconfig-a016-20220425
arc                  randconfig-r043-20220425
s390                 randconfig-r044-20220425
riscv                randconfig-r042-20220425
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
riscv                randconfig-c006-20220424
mips                 randconfig-c004-20220424
x86_64                        randconfig-c007
i386                          randconfig-c001
arm                  randconfig-c002-20220424
powerpc              randconfig-c003-20220424
s390                 randconfig-c005-20220424
riscv                randconfig-c006-20220425
mips                 randconfig-c004-20220425
x86_64               randconfig-c007-20220425
arm                  randconfig-c002-20220425
i386                 randconfig-c001-20220425
powerpc              randconfig-c003-20220425
arm                     davinci_all_defconfig
mips                  cavium_octeon_defconfig
powerpc                      walnut_defconfig
powerpc                     kilauea_defconfig
mips                           ip27_defconfig
powerpc                 mpc8315_rdb_defconfig
powerpc                      ppc64e_defconfig
powerpc                      pmac32_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                     ksi8560_defconfig
mips                      maltaaprp_defconfig
arm                          ixp4xx_defconfig
mips                         tb0287_defconfig
powerpc                    mvme5100_defconfig
powerpc                       ebony_defconfig
hexagon                          alldefconfig
powerpc                 xes_mpc85xx_defconfig
mips                          malta_defconfig
mips                      malta_kvm_defconfig
arm                         hackkit_defconfig
hexagon                             defconfig
arm                         mv78xx0_defconfig
powerpc                      ppc44x_defconfig
mips                       rbtx49xx_defconfig
arm                              alldefconfig
arm                        spear3xx_defconfig
x86_64                           allyesconfig
powerpc               mpc834x_itxgp_defconfig
mips                   sb1250_swarm_defconfig
arm                          pxa168_defconfig
mips                          ath25_defconfig
mips                       lemote2f_defconfig
arm                           spitz_defconfig
arm                       mainstone_defconfig
arm                          moxart_defconfig
arm                          collie_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64               randconfig-a002-20220425
x86_64               randconfig-a004-20220425
x86_64               randconfig-a003-20220425
x86_64               randconfig-a001-20220425
x86_64               randconfig-a005-20220425
x86_64               randconfig-a006-20220425
i386                 randconfig-a006-20220425
i386                 randconfig-a002-20220425
i386                 randconfig-a005-20220425
i386                 randconfig-a003-20220425
i386                 randconfig-a001-20220425
i386                 randconfig-a004-20220425
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011
hexagon              randconfig-r041-20220424
riscv                randconfig-r042-20220424
hexagon              randconfig-r045-20220424

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
