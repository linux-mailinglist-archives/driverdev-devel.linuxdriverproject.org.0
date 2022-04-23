Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6138B50CE08
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 Apr 2022 01:24:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 78A50403AA;
	Sat, 23 Apr 2022 23:24:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n0nRoMk4tlFU; Sat, 23 Apr 2022 23:24:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0CDF84016D;
	Sat, 23 Apr 2022 23:24:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EB4371BF289
 for <devel@linuxdriverproject.org>; Sat, 23 Apr 2022 23:24:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D93FF403AA
 for <devel@linuxdriverproject.org>; Sat, 23 Apr 2022 23:24:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 21w-LNhtPVJu for <devel@linuxdriverproject.org>;
 Sat, 23 Apr 2022 23:23:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D76C54016D
 for <devel@driverdev.osuosl.org>; Sat, 23 Apr 2022 23:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650756239; x=1682292239;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=wf723Yf3ddk/12T8bmeXyrSPWCyMydBBnEKCWsy97OQ=;
 b=d4BOHARbS0+RwAMeq44/UMX3ehFTfJNaJqmELfk3lhiWDQa8uwwp/1Qv
 7p+24v2J2NiEkpfm9syaY4iE+MJOMV9Dp1hMLZ6LERif3EPPD6vYHZHQo
 /DTmjmphJRLDkbZmNyspRO4zKzABOJyV+bk9+xhMfMuyLl4znD7DXBBxl
 GpfXTwve4gOZa+FG7Nw/PsJPh6ZslCL0v9L+H+AcJzbdab8fQnqIabAwg
 jYskhpq0rcZz1fseYj/CGlreXxrPP3Yjzcrr6X3qXOaJ+gqpqstWyfxb9
 lLb32ZVmPzYDUfTcezU/Xd6UTTazpaGgjL9GfPkb6YkE3uRAfvGhJiaD9 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10326"; a="325427848"
X-IronPort-AV: E=Sophos;i="5.90,285,1643702400"; d="scan'208";a="325427848"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2022 16:23:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,285,1643702400"; d="scan'208";a="649146974"
Received: from lkp-server01.sh.intel.com (HELO 5056e131ad90) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Apr 2022 16:23:57 -0700
Received: from kbuild by 5056e131ad90 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1niP6b-0000hx-0u;
 Sat, 23 Apr 2022 23:23:57 +0000
Date: Sun, 24 Apr 2022 07:23:12 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 1efba7ef1d7da5944493728c5375fef5b2130de4
Message-ID: <62648a60.Yv/epCOSuSr2kXEy%lkp@intel.com>
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
branch HEAD: 1efba7ef1d7da5944493728c5375fef5b2130de4  staging: bcm2835-audio: delete TODO

elapsed time: 1897m

configs tested: 150
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
ia64                             alldefconfig
arc                        nsimosci_defconfig
h8300                       h8s-sim_defconfig
sh                     sh7710voipgw_defconfig
arc                      axs103_smp_defconfig
sh                        edosk7705_defconfig
um                                  defconfig
m68k                          atari_defconfig
mips                  maltasmvp_eva_defconfig
arm                          badge4_defconfig
arm                        shmobile_defconfig
powerpc                       holly_defconfig
arc                        vdk_hs38_defconfig
sh                        edosk7760_defconfig
arm                             rpc_defconfig
sh                            hp6xx_defconfig
openrisc                            defconfig
mips                        bcm47xx_defconfig
sparc64                             defconfig
um                               alldefconfig
ia64                        generic_defconfig
arm                           viper_defconfig
sh                               j2_defconfig
mips                    maltaup_xpa_defconfig
powerpc                    klondike_defconfig
sh                           sh2007_defconfig
arm                             ezx_defconfig
arm                         vf610m4_defconfig
sh                              ul2_defconfig
ia64                             allyesconfig
mips                     loongson1b_defconfig
arc                         haps_hs_defconfig
m68k                            q40_defconfig
ia64                      gensparse_defconfig
sh                          lboxre2_defconfig
powerpc                      cm5200_defconfig
h8300                    h8300h-sim_defconfig
arm                      footbridge_defconfig
powerpc                     taishan_defconfig
h8300                               defconfig
powerpc                     tqm8541_defconfig
xtensa                  cadence_csp_defconfig
sparc64                          alldefconfig
sh                   sh7724_generic_defconfig
sh                          r7780mp_defconfig
powerpc                      chrp32_defconfig
sh                         ecovec24_defconfig
riscv                            allyesconfig
sh                           se7722_defconfig
arm                            xcep_defconfig
sh                           se7619_defconfig
m68k                       m5475evb_defconfig
powerpc                   currituck_defconfig
powerpc                 canyonlands_defconfig
xtensa                  audio_kc705_defconfig
arm                            zeus_defconfig
arm                            mps2_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220422
arm                  randconfig-c002-20220424
ia64                             allmodconfig
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
arc                                 defconfig
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
i386                                defconfig
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
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
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
powerpc                      acadia_defconfig
mips                           ip27_defconfig
powerpc                 mpc8315_rdb_defconfig
powerpc                      ppc64e_defconfig
powerpc                      pmac32_defconfig
riscv                            alldefconfig
arm                    vt8500_v6_v7_defconfig
powerpc                     ksi8560_defconfig
arm64                            allyesconfig
arm                            dove_defconfig
riscv                    nommu_virt_defconfig
x86_64                           allyesconfig
powerpc                 mpc832x_rdb_defconfig
powerpc                  mpc885_ads_defconfig
arm                         socfpga_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r041-20220422
riscv                randconfig-r042-20220422
hexagon              randconfig-r045-20220422
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
