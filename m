Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7F736021B
	for <lists+driverdev-devel@lfdr.de>; Thu, 15 Apr 2021 08:01:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 952FB4065C;
	Thu, 15 Apr 2021 06:01:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tx-uTAEjEdEW; Thu, 15 Apr 2021 06:01:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id AAABD401E4;
	Thu, 15 Apr 2021 06:01:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 898111BF410
 for <devel@linuxdriverproject.org>; Thu, 15 Apr 2021 06:01:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 810586075D
 for <devel@linuxdriverproject.org>; Thu, 15 Apr 2021 06:01:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id onf90vHUJJFG for <devel@linuxdriverproject.org>;
 Thu, 15 Apr 2021 06:01:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6F6BD60680
 for <devel@driverdev.osuosl.org>; Thu, 15 Apr 2021 06:01:10 +0000 (UTC)
IronPort-SDR: UgnEIeUPsH+7SHFVNngCZVWPVJj4beBSgRf0xu6ZhbLp3MWbNvs6nLaA31qr6TT1l1+shZk5Sy
 0hIbDaFU8f+w==
X-IronPort-AV: E=McAfee;i="6200,9189,9954"; a="258754143"
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="258754143"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 23:01:07 -0700
IronPort-SDR: sWxnL9RELnMj7Th8PEXkbiBFobdg0IvWQgzoELxhGmYLBRVinXd7IJcLT4cZyw9jRhE5Od+iTZ
 UIP0lFqGc1Vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,223,1613462400"; d="scan'208";a="444068669"
Received: from lkp-server02.sh.intel.com (HELO fa9c8fcc3464) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 14 Apr 2021 23:01:05 -0700
Received: from kbuild by fa9c8fcc3464 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lWv3o-0000i8-Em; Thu, 15 Apr 2021 06:01:04 +0000
Date: Thu, 15 Apr 2021 14:00:23 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 a00fcbc115f9c934fe92e96358a7f392bb5549f0
Message-ID: <6077d677.yyH9/LW3fTPnERg+%lkp@intel.com>
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
branch HEAD: a00fcbc115f9c934fe92e96358a7f392bb5549f0  Merge tag 'v5.12-rc7' into driver-core-next

elapsed time: 720m

configs tested: 177
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
arc                        vdk_hs38_defconfig
sparc                            alldefconfig
m68k                          sun3x_defconfig
mips                    maltaup_xpa_defconfig
powerpc                     mpc83xx_defconfig
ia64                         bigsur_defconfig
xtensa                    xip_kc705_defconfig
sparc64                          alldefconfig
ia64                      gensparse_defconfig
arc                          axs103_defconfig
openrisc                         alldefconfig
arm                     eseries_pxa_defconfig
powerpc                     pq2fads_defconfig
sh                          rsk7269_defconfig
powerpc                       maple_defconfig
arm                          ep93xx_defconfig
mips                            e55_defconfig
powerpc                  mpc866_ads_defconfig
arm                            lart_defconfig
mips                           xway_defconfig
powerpc                      cm5200_defconfig
arm                          iop32x_defconfig
mips                        nlm_xlp_defconfig
mips                         tb0287_defconfig
arm                          pxa3xx_defconfig
sh                           se7722_defconfig
powerpc                     ep8248e_defconfig
s390                          debug_defconfig
powerpc                     tqm8555_defconfig
powerpc                      makalu_defconfig
arm                         bcm2835_defconfig
sh                            migor_defconfig
mips                      maltasmvp_defconfig
xtensa                  cadence_csp_defconfig
sh                          rsk7264_defconfig
powerpc               mpc834x_itxgp_defconfig
arm                        spear6xx_defconfig
mips                      bmips_stb_defconfig
mips                          malta_defconfig
arm                            zeus_defconfig
mips                     cu1830-neo_defconfig
arm                          gemini_defconfig
m68k                             allmodconfig
microblaze                          defconfig
riscv                          rv32_defconfig
arm                           h3600_defconfig
arm                         palmz72_defconfig
powerpc                 mpc837x_mds_defconfig
xtensa                              defconfig
sh                   rts7751r2dplus_defconfig
arm                      jornada720_defconfig
powerpc                     redwood_defconfig
powerpc                        fsp2_defconfig
arm                       versatile_defconfig
mips                           ci20_defconfig
sh                          lboxre2_defconfig
arm                            qcom_defconfig
mips                     loongson1c_defconfig
powerpc                      bamboo_defconfig
mips                         cobalt_defconfig
alpha                            alldefconfig
powerpc                 mpc8272_ads_defconfig
powerpc                   currituck_defconfig
mips                          ath25_defconfig
mips                            gpr_defconfig
powerpc64                           defconfig
powerpc                      arches_defconfig
h8300                            alldefconfig
powerpc                 mpc837x_rdb_defconfig
sh                          urquell_defconfig
arm                      tct_hammer_defconfig
sh                           se7751_defconfig
mips                      malta_kvm_defconfig
arm                            mmp2_defconfig
openrisc                    or1ksim_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                 xes_mpc85xx_defconfig
arm                      integrator_defconfig
powerpc                        icon_defconfig
arm                         axm55xx_defconfig
m68k                       m5475evb_defconfig
mips                      fuloong2e_defconfig
mips                     decstation_defconfig
powerpc                     tqm8548_defconfig
powerpc                    sam440ep_defconfig
mips                           ip28_defconfig
arm                          pcm027_defconfig
m68k                       bvme6000_defconfig
powerpc                       eiger_defconfig
riscv                             allnoconfig
powerpc                   motionpro_defconfig
m68k                          hp300_defconfig
sh                          landisk_defconfig
mips                     loongson1b_defconfig
powerpc                      acadia_defconfig
sh                         ap325rxa_defconfig
sparc                               defconfig
powerpc                       ppc64_defconfig
arm                          lpd270_defconfig
powerpc                 mpc834x_itx_defconfig
m68k                            q40_defconfig
m68k                       m5249evb_defconfig
powerpc                     tqm8540_defconfig
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
m68k                                defconfig
m68k                             allyesconfig
arc                              allyesconfig
nds32                             allnoconfig
nios2                               defconfig
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
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20210414
i386                 randconfig-a006-20210414
i386                 randconfig-a001-20210414
i386                 randconfig-a005-20210414
i386                 randconfig-a004-20210414
i386                 randconfig-a002-20210414
x86_64               randconfig-a014-20210414
x86_64               randconfig-a015-20210414
x86_64               randconfig-a011-20210414
x86_64               randconfig-a013-20210414
x86_64               randconfig-a012-20210414
x86_64               randconfig-a016-20210414
i386                 randconfig-a015-20210414
i386                 randconfig-a014-20210414
i386                 randconfig-a013-20210414
i386                 randconfig-a012-20210414
i386                 randconfig-a016-20210414
i386                 randconfig-a011-20210414
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                               defconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20210414
x86_64               randconfig-a002-20210414
x86_64               randconfig-a005-20210414
x86_64               randconfig-a001-20210414
x86_64               randconfig-a006-20210414
x86_64               randconfig-a004-20210414

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
