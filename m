Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 43733547279
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Jun 2022 08:57:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2D0C3842B3;
	Sat, 11 Jun 2022 06:57:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3A1vVM78CCrt; Sat, 11 Jun 2022 06:57:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0C0184271;
	Sat, 11 Jun 2022 06:57:14 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id ED6B11BF30D
 for <devel@linuxdriverproject.org>; Sat, 11 Jun 2022 06:57:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C692184295
 for <devel@linuxdriverproject.org>; Sat, 11 Jun 2022 06:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A40E4i7vs8L0 for <devel@linuxdriverproject.org>;
 Sat, 11 Jun 2022 06:57:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 952A584271
 for <devel@driverdev.osuosl.org>; Sat, 11 Jun 2022 06:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654930630; x=1686466630;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=38bxpAgzabVzZjLd2a3fKWjbs0Gkxh5Js8hWhDBwf3s=;
 b=eHgSadwB0vQJciwRu9nWGaWjnjEmGtWkKpBBVeQgwsVwp0ykrLrdnHYI
 Gd2a9b88qPW2Nfvvs9UN3ixtnrnCTOMtHTasrMytEhkOrAJWCWjoqdkOM
 hjSvgt9zyuS+foEK1OQMYTq7f7nbxvBTceeKdPk+ICDoK1Yjm0+xsb9ob
 qj7o4CLBH0f0bkkZrWbzwt2gjyp1UrKdrgCfk86eJ5ED2qF0vRPY6/3MJ
 NAVrOQGkw15/PxapkADUe4nmvjfGJPPcB9v2+WxGYody8U27Xwrd0T2kQ
 kvp3HP2KJoNO22dXNvJwBv4W4YMx4P+zbX0HlZZERtKzQEkVvThCSTsQH w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10374"; a="275371430"
X-IronPort-AV: E=Sophos;i="5.91,292,1647327600"; d="scan'208";a="275371430"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2022 23:57:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,292,1647327600"; d="scan'208";a="586620713"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 10 Jun 2022 23:57:05 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nzv3Q-000Idh-Vn;
 Sat, 11 Jun 2022 06:57:04 +0000
Date: Sat, 11 Jun 2022 14:56:29 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 18697b479330508491928a0d8593ba6c005591b7
Message-ID: <62a43c9d.I27dEKqUUVgctTTo%lkp@intel.com>
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
branch HEAD: 18697b479330508491928a0d8593ba6c005591b7  staging: r8188eu: remove HW_VAR_SLOT_TIME from SetHwReg8188EU()

elapsed time: 5490m

configs tested: 156
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
mips                 randconfig-c004-20220607
sh                         ap325rxa_defconfig
arc                     haps_hs_smp_defconfig
m68k                       m5475evb_defconfig
nios2                               defconfig
ia64                         bigsur_defconfig
m68k                        m5272c3_defconfig
sh                            titan_defconfig
powerpc                 mpc837x_mds_defconfig
mips                         tb0226_defconfig
powerpc64                           defconfig
sh                          rsk7201_defconfig
powerpc                 canyonlands_defconfig
sh                          lboxre2_defconfig
m68k                          sun3x_defconfig
powerpc                 mpc8540_ads_defconfig
arc                      axs103_smp_defconfig
sparc64                             defconfig
sh                           sh2007_defconfig
arm                           viper_defconfig
sh                           se7206_defconfig
powerpc                    adder875_defconfig
sh                         apsh4a3a_defconfig
sh                          r7785rp_defconfig
powerpc                      ppc6xx_defconfig
arm                        shmobile_defconfig
parisc                generic-64bit_defconfig
openrisc                 simple_smp_defconfig
powerpc                 mpc837x_rdb_defconfig
powerpc                      tqm8xx_defconfig
powerpc                 mpc834x_itx_defconfig
alpha                            alldefconfig
m68k                            mac_defconfig
arm                       imx_v6_v7_defconfig
arm                         s3c6400_defconfig
arm                             ezx_defconfig
arm                      footbridge_defconfig
m68k                        mvme147_defconfig
powerpc                  storcenter_defconfig
mips                           xway_defconfig
openrisc                         alldefconfig
mips                      fuloong2e_defconfig
powerpc                      ep88xc_defconfig
um                           x86_64_defconfig
sh                   sh7770_generic_defconfig
arc                    vdk_hs38_smp_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220607
arm                  randconfig-c002-20220608
arm                  randconfig-c002-20220609
ia64                             allmodconfig
ia64                             allyesconfig
ia64                                defconfig
riscv                             allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
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
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                            allmodconfig
riscv                            allyesconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
um                             i386_defconfig
i386                          randconfig-a001
x86_64                        randconfig-a004
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a006
i386                          randconfig-a012
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                        randconfig-a002
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz

clang tested configs:
powerpc              randconfig-c003-20220608
x86_64                        randconfig-c007
riscv                randconfig-c006-20220608
i386                          randconfig-c001
s390                 randconfig-c005-20220608
mips                 randconfig-c004-20220608
arm                  randconfig-c002-20220608
powerpc              randconfig-c003-20220607
riscv                randconfig-c006-20220607
s390                 randconfig-c005-20220607
mips                 randconfig-c004-20220607
arm                  randconfig-c002-20220607
powerpc                        fsp2_defconfig
powerpc                          g5_defconfig
arm64                            allyesconfig
powerpc                    socrates_defconfig
powerpc                     ppa8548_defconfig
powerpc               mpc834x_itxgp_defconfig
arm                             mxs_defconfig
mips                        maltaup_defconfig
powerpc                       ebony_defconfig
arm                  colibri_pxa300_defconfig
powerpc                      katmai_defconfig
powerpc                 mpc832x_mds_defconfig
mips                        workpad_defconfig
powerpc                     akebono_defconfig
arm                         mv78xx0_defconfig
arm                         lpc32xx_defconfig
x86_64                        randconfig-k001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a011
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r045-20220609
s390                 randconfig-r044-20220609
riscv                randconfig-r042-20220609
hexagon              randconfig-r041-20220609
hexagon              randconfig-r045-20220608
hexagon              randconfig-r041-20220608

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
