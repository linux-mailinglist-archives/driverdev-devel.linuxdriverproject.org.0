Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DE629CCCF
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Oct 2020 01:33:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 78A9A86B6E;
	Wed, 28 Oct 2020 00:33:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fRA+ZQXmJvNK; Wed, 28 Oct 2020 00:33:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 79F2A86A92;
	Wed, 28 Oct 2020 00:33:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C722B1BF3F9
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 00:33:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AF7AA873DD
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 00:33:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VWRJHDaTCL9b for <devel@linuxdriverproject.org>;
 Wed, 28 Oct 2020 00:33:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 62D38873DA
 for <devel@driverdev.osuosl.org>; Wed, 28 Oct 2020 00:33:51 +0000 (UTC)
IronPort-SDR: aipjzqRMdsD/i3INUzb8Bvoctjjb6dtLFVSWR2YIMwQCUbB69/YKetlSuuXm2gq+cnBXJthlPg
 db2vUDrneprw==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="252883007"
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="252883007"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2020 17:33:50 -0700
IronPort-SDR: FWdGzSNSku2zBDuQ6/7cRaMuNHanll3TY4hRzWlGVRDMq9oof62E15HQA9HFQ+Z7NjwLAmV0Ql
 fZo/prq5AJJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,424,1596524400"; d="scan'208";a="360940098"
Received: from lkp-server02.sh.intel.com (HELO 74b0a1e0e619) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Oct 2020 17:33:49 -0700
Received: from kbuild by 74b0a1e0e619 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kXZPQ-0000Al-Tx; Wed, 28 Oct 2020 00:33:48 +0000
Date: Wed, 28 Oct 2020 08:32:50 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 af702094a63e8d56f125f473461fe3b620fba1fd
Message-ID: <5f98bc32.Z56ewiSCuZKISjnc%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-testing
branch HEAD: af702094a63e8d56f125f473461fe3b620fba1fd  staging: rtl8188eu: remove commented defines

elapsed time: 723m

configs tested: 183
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                            zeus_defconfig
arm                         ebsa110_defconfig
arm                        shmobile_defconfig
sparc                            allyesconfig
powerpc                     sequoia_defconfig
sh                             sh03_defconfig
ia64                             alldefconfig
arm                           sunxi_defconfig
powerpc                        icon_defconfig
sh                     magicpanelr2_defconfig
arm                  colibri_pxa300_defconfig
arm                          pxa3xx_defconfig
powerpc                    mvme5100_defconfig
riscv                    nommu_virt_defconfig
arm                            mps2_defconfig
powerpc                     tqm8541_defconfig
parisc                           alldefconfig
arm                        spear6xx_defconfig
sh                            titan_defconfig
powerpc                      chrp32_defconfig
mips                      fuloong2e_defconfig
arc                 nsimosci_hs_smp_defconfig
ia64                             allyesconfig
sh                   secureedge5410_defconfig
mips                       rbtx49xx_defconfig
sh                     sh7710voipgw_defconfig
powerpc                 mpc85xx_cds_defconfig
arc                      axs103_smp_defconfig
arm                       cns3420vb_defconfig
arc                              alldefconfig
arm                            dove_defconfig
m68k                                defconfig
mips                           xway_defconfig
powerpc                     kmeter1_defconfig
openrisc                    or1ksim_defconfig
arm                    vt8500_v6_v7_defconfig
powerpc                  mpc866_ads_defconfig
powerpc                 mpc834x_itx_defconfig
sh                          polaris_defconfig
mips                      malta_kvm_defconfig
mips                      bmips_stb_defconfig
arc                     haps_hs_smp_defconfig
arm                      pxa255-idp_defconfig
arm                        neponset_defconfig
xtensa                  nommu_kc705_defconfig
sh                      rts7751r2d1_defconfig
arm                         assabet_defconfig
sh                           se7343_defconfig
sh                               allmodconfig
powerpc                      bamboo_defconfig
c6x                        evmc6474_defconfig
powerpc                  iss476-smp_defconfig
arc                          axs103_defconfig
arm                     eseries_pxa_defconfig
sh                          r7785rp_defconfig
c6x                         dsk6455_defconfig
arc                            hsdk_defconfig
m68k                          sun3x_defconfig
powerpc                       ppc64_defconfig
powerpc                        warp_defconfig
arm                             ezx_defconfig
mips                     cu1000-neo_defconfig
mips                     loongson1c_defconfig
powerpc                         wii_defconfig
arm                           h5000_defconfig
arm                          moxart_defconfig
arm                      footbridge_defconfig
arm                  colibri_pxa270_defconfig
powerpc                   motionpro_defconfig
mips                           gcw0_defconfig
powerpc                 mpc8272_ads_defconfig
sh                          r7780mp_defconfig
mips                            ar7_defconfig
mips                           ip22_defconfig
s390                       zfcpdump_defconfig
sh                           se7705_defconfig
mips                        qi_lb60_defconfig
mips                malta_kvm_guest_defconfig
sh                           se7750_defconfig
powerpc                   bluestone_defconfig
powerpc                   lite5200b_defconfig
arm                         mv78xx0_defconfig
xtensa                              defconfig
xtensa                           allyesconfig
sh                          rsk7264_defconfig
nds32                             allnoconfig
arm                         vf610m4_defconfig
mips                           mtx1_defconfig
m68k                            mac_defconfig
sh                        dreamcast_defconfig
powerpc                     ppa8548_defconfig
powerpc                 mpc836x_mds_defconfig
m68k                             alldefconfig
nios2                         10m50_defconfig
sh                           se7712_defconfig
powerpc                 mpc837x_rdb_defconfig
arm                       imx_v6_v7_defconfig
arm                           u8500_defconfig
mips                             allmodconfig
powerpc                           allnoconfig
ia64                             allmodconfig
ia64                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
i386                 randconfig-a002-20201026
i386                 randconfig-a003-20201026
i386                 randconfig-a005-20201026
i386                 randconfig-a001-20201026
i386                 randconfig-a006-20201026
i386                 randconfig-a004-20201026
i386                 randconfig-a002-20201027
i386                 randconfig-a003-20201027
i386                 randconfig-a005-20201027
i386                 randconfig-a001-20201027
i386                 randconfig-a006-20201027
i386                 randconfig-a004-20201027
x86_64               randconfig-a011-20201026
x86_64               randconfig-a013-20201026
x86_64               randconfig-a016-20201026
x86_64               randconfig-a015-20201026
x86_64               randconfig-a012-20201026
x86_64               randconfig-a014-20201026
i386                 randconfig-a016-20201027
i386                 randconfig-a015-20201027
i386                 randconfig-a014-20201027
i386                 randconfig-a012-20201027
i386                 randconfig-a013-20201027
i386                 randconfig-a011-20201027
i386                 randconfig-a016-20201026
i386                 randconfig-a015-20201026
i386                 randconfig-a014-20201026
i386                 randconfig-a012-20201026
i386                 randconfig-a013-20201026
i386                 randconfig-a011-20201026
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a001-20201026
x86_64               randconfig-a003-20201026
x86_64               randconfig-a002-20201026
x86_64               randconfig-a006-20201026
x86_64               randconfig-a004-20201026
x86_64               randconfig-a005-20201026
x86_64               randconfig-a011-20201027
x86_64               randconfig-a013-20201027
x86_64               randconfig-a016-20201027
x86_64               randconfig-a015-20201027
x86_64               randconfig-a012-20201027
x86_64               randconfig-a014-20201027

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
