Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BA057644B
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 Jul 2022 17:18:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3731E60C29;
	Fri, 15 Jul 2022 15:18:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3731E60C29
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id z0sP0d4kif_g; Fri, 15 Jul 2022 15:18:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D5CC760AA0;
	Fri, 15 Jul 2022 15:18:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D5CC760AA0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0FB951BF3E0
 for <devel@linuxdriverproject.org>; Fri, 15 Jul 2022 15:18:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE4D184949
 for <devel@linuxdriverproject.org>; Fri, 15 Jul 2022 15:18:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE4D184949
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4WTDOV98QnFc for <devel@linuxdriverproject.org>;
 Fri, 15 Jul 2022 15:18:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F04FD84935
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id F04FD84935
 for <devel@driverdev.osuosl.org>; Fri, 15 Jul 2022 15:18:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="266230387"
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="266230387"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2022 08:18:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,274,1650956400"; d="scan'208";a="664223624"
Received: from lkp-server02.sh.intel.com (HELO ff137eb26ff1) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 15 Jul 2022 08:18:27 -0700
Received: from kbuild by ff137eb26ff1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1oCN5G-0000AH-JG;
 Fri, 15 Jul 2022 15:18:26 +0000
Date: Fri, 15 Jul 2022 17:11:26 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 8af028c2b22bc04f5ab59cd39fa97ccf14aa8f25
Message-ID: <62d12f3e.YynRNfPSvgSGxocH%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657898308; x=1689434308;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=pF15NfQ9c5ud25yFSXIy4YqhTChXOH78mwoHzG2ITrA=;
 b=JT9EhCjZsq1S8FoEtXT55FcRGvWM6SEGYeqiiWwVdiF5ZwIXfW0DZDY9
 eu/cH55D43DdjPACDS/OSid3qs7lS3IGDav6pRyygLl1AGgKuUFahodsZ
 iV3MSIVGLC9h0ie09rn+39zFdYqhrqPbt3yFdNVDLQecQSl4RYPwCMyAg
 oGAkfczl/RN/y64RzyS2u+RnksemOGiHFgLTCkqAcBJpWBNoe+WSo+Z2K
 OYBwZPVMvVMrtvMBp1JWYC+wNombbmzeMv5HJsMPLY3jAAbeFQZj+5mEz
 lLs4VttUkRjaoeVGK1SEZ16/QV86AqzFN91hngqm2OHZ4IlLMuAoEQrzd
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JT9EhCjZ
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
branch HEAD: 8af028c2b22bc04f5ab59cd39fa97ccf14aa8f25  staging: vt6655: Convert macro vt6655_mac_word_reg_bits_off to function

elapsed time: 1155m

configs tested: 76
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
i386                          randconfig-c001
m68k                       m5275evb_defconfig
arm                        oxnas_v6_defconfig
arm                        clps711x_defconfig
powerpc                      pcm030_defconfig
m68k                          atari_defconfig
arc                          axs103_defconfig
powerpc                     pq2fads_defconfig
arm                             ezx_defconfig
powerpc                 mpc8540_ads_defconfig
alpha                             allnoconfig
arm                           viper_defconfig
sh                        edosk7705_defconfig
x86_64                                  kexec
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
csky                              allnoconfig
arc                               allnoconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                             allyesconfig
i386                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit

clang tested configs:
powerpc                 mpc836x_rdk_defconfig
powerpc                    gamecube_defconfig
powerpc                  mpc885_ads_defconfig
powerpc                    mvme5100_defconfig
powerpc                        fsp2_defconfig
hexagon                             defconfig
powerpc                      ppc44x_defconfig
powerpc                     ppa8548_defconfig
x86_64                        randconfig-k001
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220714
hexagon              randconfig-r041-20220714

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
