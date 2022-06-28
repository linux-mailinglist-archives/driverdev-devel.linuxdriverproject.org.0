Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF2055BECE
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jun 2022 08:38:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5E60F4048C;
	Tue, 28 Jun 2022 06:38:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5E60F4048C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wvDN2mlqhkDU; Tue, 28 Jun 2022 06:38:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 01F8E4017E;
	Tue, 28 Jun 2022 06:38:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01F8E4017E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CC5E11BF293
 for <devel@linuxdriverproject.org>; Tue, 28 Jun 2022 06:38:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3EB944005E
 for <devel@linuxdriverproject.org>; Tue, 28 Jun 2022 06:38:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3EB944005E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MrdlD8DgbmOb for <devel@linuxdriverproject.org>;
 Tue, 28 Jun 2022 06:38:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7CC8C41496
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7CC8C41496
 for <devel@driverdev.osuosl.org>; Tue, 28 Jun 2022 06:38:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="282386392"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="282386392"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 23:38:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="594642593"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jun 2022 23:38:10 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o64rR-0009d8-Kw;
 Tue, 28 Jun 2022 06:38:09 +0000
Date: Tue, 28 Jun 2022 14:37:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-next] BUILD SUCCESS
 38a523a2946d3a0961d141d477a1ee2b1f3bdbb1
Message-ID: <62baa1a0.dG0zMkyPV1eL3KMX%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656398292; x=1687934292;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=kCz/RQdu+iUyrb3dqsCZxByexlWqY41Z3tk9Uag3bUo=;
 b=XX/dIePx5FNAqVrSx1WAuvM+dMow9BuE43B6byK7AisJPLvEfWXD7NS7
 uegkR7dmU8LTnoO1oAbt5F5ONCAmwTyMvFPtpvJR3FcPl8he1a8uqdnnh
 bYY7EYVXD0WC7Dadf09cgxUis9BexGk0/AOQs3w+nTaU4f69Vto7dajci
 H2OZILUcVICyEh/sRW9lHrMJnSLPv2RBSOU/2CRY3Fns5WQSqxqGedHrh
 7/EZYMLh34V3n7Hh1wv9WDn53En5mGRbVznrcdisxR8R5hPajkVnjpxCk
 nVhGQRUPsC2ylLjHDYahScFa9t8pgqo9r4ESEuDgl4rKDD1foLOxdt2Rl
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XX/dIePx
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-next
branch HEAD: 38a523a2946d3a0961d141d477a1ee2b1f3bdbb1  Revert "devcoredump: remove the useless gfp_t parameter in dev_coredumpv and dev_coredumpm"

elapsed time: 930m

configs tested: 96
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                 randconfig-c001-20220627
s390                          debug_defconfig
arm                          gemini_defconfig
sparc64                             defconfig
sparc64                          alldefconfig
mips                           xway_defconfig
sh                        sh7785lcr_defconfig
arc                        nsim_700_defconfig
arc                           tb10x_defconfig
sh                   sh7770_generic_defconfig
arm                          iop32x_defconfig
sh                           sh2007_defconfig
sh                           se7750_defconfig
sh                         ap325rxa_defconfig
openrisc                 simple_smp_defconfig
sh                          rsk7201_defconfig
sh                          sdk7780_defconfig
arm                            lart_defconfig
sh                     magicpanelr2_defconfig
mips                             allmodconfig
sh                         ecovec24_defconfig
arm                       omap2plus_defconfig
powerpc                         ps3_defconfig
arm                        realview_defconfig
m68k                          sun3x_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
ia64                             allmodconfig
x86_64               randconfig-k001-20220627
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
i386                                defconfig
i386                             allyesconfig
x86_64               randconfig-a013-20220627
x86_64               randconfig-a012-20220627
x86_64               randconfig-a016-20220627
x86_64               randconfig-a015-20220627
x86_64               randconfig-a011-20220627
x86_64               randconfig-a014-20220627
i386                 randconfig-a014-20220627
i386                 randconfig-a011-20220627
i386                 randconfig-a012-20220627
i386                 randconfig-a015-20220627
i386                 randconfig-a016-20220627
i386                 randconfig-a013-20220627
arc                  randconfig-r043-20220627
s390                 randconfig-r044-20220627
riscv                randconfig-r042-20220627
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit

clang tested configs:
arm                        multi_v5_defconfig
powerpc                     skiroot_defconfig
powerpc                     ppa8548_defconfig
mips                           rs90_defconfig
arm                           spitz_defconfig
powerpc                     tqm5200_defconfig
mips                        bcm63xx_defconfig
arm                     am200epdkit_defconfig
powerpc                      acadia_defconfig
mips                           ip27_defconfig
arm                        neponset_defconfig
powerpc                     ksi8560_defconfig
i386                 randconfig-a001-20220627
i386                 randconfig-a002-20220627
i386                 randconfig-a004-20220627
i386                 randconfig-a003-20220627
i386                 randconfig-a006-20220627
i386                 randconfig-a005-20220627
x86_64               randconfig-a002-20220627
x86_64               randconfig-a003-20220627
x86_64               randconfig-a001-20220627
x86_64               randconfig-a006-20220627
x86_64               randconfig-a005-20220627
x86_64               randconfig-a004-20220627
hexagon              randconfig-r041-20220627
hexagon              randconfig-r045-20220627

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
