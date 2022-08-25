Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E175A0940
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Aug 2022 08:56:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 475788330B;
	Thu, 25 Aug 2022 06:56:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 475788330B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u0TwkFKTU3KA; Thu, 25 Aug 2022 06:56:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id CC4EC83276;
	Thu, 25 Aug 2022 06:56:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CC4EC83276
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 348AB1BF373
 for <devel@linuxdriverproject.org>; Thu, 25 Aug 2022 06:56:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0EB7C60DFF
 for <devel@linuxdriverproject.org>; Thu, 25 Aug 2022 06:56:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0EB7C60DFF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YQSF9946UHml for <devel@linuxdriverproject.org>;
 Thu, 25 Aug 2022 06:56:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08EA160DF9
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 08EA160DF9
 for <devel@driverdev.osuosl.org>; Thu, 25 Aug 2022 06:56:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="294943303"
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="294943303"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 23:56:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="678342367"
Received: from lkp-server02.sh.intel.com (HELO 34e741d32628) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 24 Aug 2022 23:56:28 -0700
Received: from kbuild by 34e741d32628 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oR6mx-0001oM-1k;
 Thu, 25 Aug 2022 06:56:27 +0000
Date: Thu, 25 Aug 2022 14:56:21 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 2ec5227d0b68ee3b4128a2415002fa8cf91393b3
Message-ID: <63071d15.V4ebeP8T2402BrY+%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661410599; x=1692946599;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=EQ7afoiOdi+D61isqKBb3R2SNstdNce1uj6uvywzyvI=;
 b=YzoDsNxiBc2J85ssldMcxiDD/blowe1NGSpCCCbg31sSvPxVkqoWwfDd
 KKO3MxMraMRn/wWbx2PHzq+taDEFPEkxu6V1gBl3/OqRqXEwJJYfUii7C
 j1V0VvL7tBTXi012YC1bFDLAYu3EJWbpwraf0+Tokyp3+ZKDQ8qp3Q/xG
 HA5M0odRrJmhPmM9iEEuk6rAeesvzjgtkIJKcT7zngVty/Dun+Zta1De0
 IocTjsGaHDd0X2CZtpnFlOmyBqLCryoBSDUnertf3uuPFMdZhEd0nkF0s
 nlm7CfUu2STNfcws3jQvSSIx6TWdGQGdokQ1HfQkkoCOa++VAQmHnmKhJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YzoDsNxi
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
branch HEAD: 2ec5227d0b68ee3b4128a2415002fa8cf91393b3  readfile.2: new page describing readfile(2)

elapsed time: 1029m

configs tested: 143
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
mips                             allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                        randconfig-a004
m68k                             allmodconfig
x86_64                        randconfig-a002
i386                                defconfig
i386                          randconfig-a001
arc                              allyesconfig
i386                          randconfig-a003
alpha                            allyesconfig
i386                          randconfig-a005
x86_64                        randconfig-a006
m68k                             allyesconfig
riscv                randconfig-r042-20220824
x86_64                        randconfig-a013
x86_64                        randconfig-a011
loongarch                           defconfig
loongarch                         allnoconfig
arc                  randconfig-r043-20220824
i386                             allyesconfig
s390                 randconfig-r044-20220824
x86_64                        randconfig-a015
x86_64                              defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm                            lart_defconfig
m68k                       m5249evb_defconfig
sh                             espt_defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm64                               defconfig
arm                              allmodconfig
m68k                                defconfig
ia64                                defconfig
mips                             allmodconfig
i386                          randconfig-c001
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
powerpc                          allyesconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                            allyesconfig
um                                  defconfig
microblaze                      mmu_defconfig
arm                        realview_defconfig
sh                          r7780mp_defconfig
sh                        edosk7760_defconfig
sh                           se7751_defconfig
powerpc                      arches_defconfig
m68k                        stmark2_defconfig
ia64                          tiger_defconfig
sh                           se7721_defconfig
powerpc                      pcm030_defconfig
arc                    vdk_hs38_smp_defconfig
arm                            zeus_defconfig
s390                          debug_defconfig
ia64                            zx1_defconfig
sh                          rsk7269_defconfig
mips                        bcm47xx_defconfig
csky                             alldefconfig
ia64                      gensparse_defconfig
xtensa                         virt_defconfig
sh                   sh7724_generic_defconfig
powerpc                      makalu_defconfig
arm                            pleb_defconfig
arm                      integrator_defconfig
sh                         apsh4a3a_defconfig
sh                           se7722_defconfig
arm                           viper_defconfig
sh                   secureedge5410_defconfig
sh                         ap325rxa_defconfig
xtensa                    smp_lx200_defconfig
sh                      rts7751r2d1_defconfig
sh                            titan_defconfig
mips                         cobalt_defconfig
powerpc                      tqm8xx_defconfig
ia64                             allmodconfig
mips                    maltaup_xpa_defconfig
sh                         ecovec24_defconfig

clang tested configs:
x86_64                        randconfig-a005
i386                          randconfig-a002
x86_64                        randconfig-a001
i386                          randconfig-a006
x86_64                        randconfig-a003
i386                          randconfig-a004
hexagon              randconfig-r045-20220824
hexagon              randconfig-r041-20220824
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
hexagon              randconfig-r045-20220823
riscv                randconfig-r042-20220823
hexagon              randconfig-r041-20220823
s390                 randconfig-r044-20220823
x86_64                        randconfig-k001
i386                          randconfig-a013
riscv                            alldefconfig
powerpc                      ppc64e_defconfig
i386                          randconfig-a011
i386                          randconfig-a015
powerpc                 mpc832x_rdb_defconfig
powerpc                    ge_imp3a_defconfig
powerpc                 mpc8560_ads_defconfig
powerpc                     tqm8540_defconfig
arm                      pxa255-idp_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
