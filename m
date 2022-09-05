Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC805AD8C9
	for <lists+driverdev-devel@lfdr.de>; Mon,  5 Sep 2022 20:05:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22B178140C;
	Mon,  5 Sep 2022 18:05:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22B178140C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pzHtReXTD7GR; Mon,  5 Sep 2022 18:05:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0BE3812F7;
	Mon,  5 Sep 2022 18:05:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0BE3812F7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AA4C91BF263
 for <devel@linuxdriverproject.org>; Mon,  5 Sep 2022 18:05:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 854CC40165
 for <devel@linuxdriverproject.org>; Mon,  5 Sep 2022 18:05:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 854CC40165
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aDnp60u3gwwz for <devel@linuxdriverproject.org>;
 Mon,  5 Sep 2022 18:05:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F0F9740162
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id F0F9740162
 for <devel@driverdev.osuosl.org>; Mon,  5 Sep 2022 18:05:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="296437904"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="296437904"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:05:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="942180588"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 05 Sep 2022 11:05:43 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oVGTf-0004PF-05;
 Mon, 05 Sep 2022 18:05:43 +0000
Date: Tue, 06 Sep 2022 02:05:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 28a2a54901f66a45ab339e944fdfc69667e639c1
Message-ID: <63163a4c.URL8ctJB3i6IJrP3%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662401145; x=1693937145;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=1bBJCwuVZSZRwQzLJYSjJ5mgEfLpzn7V8nWRUX8uJfU=;
 b=NwDPv1+9/FjJ+RNizTSYjmen4HOvaxECgp3KmhfbadoiGNSs9gfLPMgp
 H7x0xFyvBeaYjE0s1qaSwg3b43fa1YQ+mTAXSsMbtib/UNG+HWAO1kDog
 N5Q9WCLzVSCSHJ/EWkWKXH3ZnpqPsFjJp+vQ96YwsZXr7HGmQwrO9+83h
 7rnCKZXDSPHMt7SyuXc/dRTFWX0ORImRxpehu21+VMOKrudkYSMHBKP6F
 pRkZzEcm6S4IqWlQthMrJSPejwoVHNuq5HJ6H5mSg8y5MZbJBavPQoX4d
 Fz6/IKkn/J/W7atxrUq5LNbHDtD470KgX0qfYwDPO1SGEwx+YSOQNjlM+
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NwDPv1+9
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
branch HEAD: 28a2a54901f66a45ab339e944fdfc69667e639c1  Merge 6.0-rc4 into staging-next

elapsed time: 723m

configs tested: 133
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                              defconfig
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20220905
i386                                defconfig
arc                  randconfig-r043-20220905
sh                               allmodconfig
x86_64                               rhel-8.3
arm                                 defconfig
i386                 randconfig-a002-20220905
i386                 randconfig-a004-20220905
arc                               allnoconfig
arc                              allyesconfig
x86_64                           allyesconfig
alpha                            allyesconfig
i386                 randconfig-a005-20220905
i386                 randconfig-a003-20220905
x86_64                          rhel-8.3-func
alpha                             allnoconfig
riscv                             allnoconfig
m68k                             allmodconfig
csky                              allnoconfig
x86_64               randconfig-a003-20220905
i386                             alldefconfig
arm                            mps2_defconfig
openrisc                    or1ksim_defconfig
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64               randconfig-a002-20220905
sh                           se7343_defconfig
x86_64                           rhel-8.3-syz
m68k                             allyesconfig
x86_64               randconfig-a004-20220905
x86_64                           rhel-8.3-kvm
arm                              allyesconfig
i386                 randconfig-a006-20220905
i386                 randconfig-a001-20220905
x86_64               randconfig-a005-20220905
powerpc                      mgcoge_defconfig
x86_64               randconfig-a001-20220905
arm64                            allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
i386                             allyesconfig
ia64                             allmodconfig
m68k                         apollo_defconfig
powerpc                        warp_defconfig
riscv                    nommu_k210_defconfig
sparc                               defconfig
sh                               j2_defconfig
sh                             espt_defconfig
sh                 kfr2r09-romimage_defconfig
i386                 randconfig-c001-20220905
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm                       imx_v6_v7_defconfig
arc                              alldefconfig
arm                         axm55xx_defconfig
sh                           se7780_defconfig
sh                   sh7770_generic_defconfig
alpha                            alldefconfig
powerpc                      pasemi_defconfig
powerpc                      ep88xc_defconfig
sh                           se7721_defconfig
powerpc                  storcenter_defconfig
sh                               alldefconfig
arm                       omap2plus_defconfig
powerpc                         ps3_defconfig
arm                           sama5_defconfig
arm                            qcom_defconfig
nios2                            allyesconfig
sh                     magicpanelr2_defconfig
mips                           jazz_defconfig
m68k                            q40_defconfig
ia64                         bigsur_defconfig
powerpc                  iss476-smp_defconfig
mips                        vocore2_defconfig
arc                        vdk_hs38_defconfig
mips                         bigsur_defconfig
arm                            zeus_defconfig
m68k                          hp300_defconfig
arm                        realview_defconfig
arc                          axs103_defconfig
alpha                               defconfig
mips                     loongson1b_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
m68k                        m5272c3_defconfig
m68k                             alldefconfig
arm                  randconfig-c002-20220905
x86_64               randconfig-c001-20220905
mips                      loongson3_defconfig
arm                           h3600_defconfig
sh                        sh7757lcr_defconfig
arm                            hisi_defconfig
sh                          r7780mp_defconfig
openrisc                 simple_smp_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
sh                             sh03_defconfig
powerpc                      pcm030_defconfig

clang tested configs:
i386                 randconfig-a011-20220905
i386                 randconfig-a012-20220905
x86_64               randconfig-a013-20220905
hexagon              randconfig-r045-20220905
i386                 randconfig-a014-20220905
s390                 randconfig-r044-20220905
riscv                randconfig-r042-20220905
i386                 randconfig-a013-20220905
hexagon              randconfig-r041-20220905
x86_64               randconfig-a011-20220905
i386                 randconfig-a016-20220905
i386                 randconfig-a015-20220905
x86_64               randconfig-a012-20220905
x86_64               randconfig-a016-20220905
x86_64               randconfig-a015-20220905
x86_64               randconfig-a014-20220905
arm                  colibri_pxa270_defconfig
powerpc                    socrates_defconfig
powerpc                     ksi8560_defconfig
powerpc                     akebono_defconfig
powerpc                      ppc64e_defconfig
arm                     davinci_all_defconfig
arm                           sama7_defconfig
powerpc                       ebony_defconfig
powerpc                      walnut_defconfig
powerpc                 mpc8315_rdb_defconfig
powerpc                    mvme5100_defconfig
arm                        magician_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
