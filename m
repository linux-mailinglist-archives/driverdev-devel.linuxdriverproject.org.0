Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1DD767148D
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Jan 2023 07:51:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A53E40399;
	Wed, 18 Jan 2023 06:51:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A53E40399
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b1c4v0b3R8ls; Wed, 18 Jan 2023 06:51:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C2F92400AF;
	Wed, 18 Jan 2023 06:51:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C2F92400AF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A09FC1BF5B4
 for <devel@linuxdriverproject.org>; Wed, 18 Jan 2023 06:51:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7B2ED415C0
 for <devel@linuxdriverproject.org>; Wed, 18 Jan 2023 06:51:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B2ED415C0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rn2zBg7EIA7I for <devel@linuxdriverproject.org>;
 Wed, 18 Jan 2023 06:51:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 492BC4148A
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 492BC4148A
 for <devel@driverdev.osuosl.org>; Wed, 18 Jan 2023 06:51:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="322600987"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="322600987"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 22:51:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="748344275"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="748344275"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Jan 2023 22:51:34 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pI2IH-000052-2d;
 Wed, 18 Jan 2023 06:51:33 +0000
Date: Wed, 18 Jan 2023 14:51:29 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 4193769b6dfd7ddc5ec5e2ccae6458f4ba65797f
Message-ID: <63c796f1.ER7Vo21x5elSQwqW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674024696; x=1705560696;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=uODG0qFvSq/2flgGtj9xgkb+c6rjxoW7GLm+DsptEcc=;
 b=a4JwF8eqSDQjIsT4PuqZtuGTQagFTxpq0MsZM2QJwXO2sbAprYST6+t9
 A4WjBbriTSLJufAlkseMuI1ANmiMQJVOM7AlHEpZKhxCqvl/ojcYNdVif
 adKtRAWpe6H6iSRjQCukISNPx9OVQKwgdyzUgHSuLQhPZP0zy6UY21oeo
 yptvlwaMUQoH/vE5Ts01S94NxxjfOn7ApdsQYrppqBDtDXG7nl3yBIse6
 iQatU9vslWUze+KwUr+eracOoOiOBu9w6kBZFXjirKP+DSsUGY/cee+4K
 Xr8clXx36kR3eZZR2XEO5hvegpp4un7uHucQCM62ScXoYpfATy+U3Y2g6
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=a4JwF8eq
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
branch HEAD: 4193769b6dfd7ddc5ec5e2ccae6458f4ba65797f  staging: r8188eu: convert PHY_BBConfig8188E() to common error logic

elapsed time: 723m

configs tested: 110
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
arc                                 defconfig
sh                               allmodconfig
i386                             allyesconfig
powerpc                          allmodconfig
arm                                 defconfig
x86_64                    rhel-8.3-kselftests
alpha                               defconfig
x86_64                          rhel-8.3-func
x86_64                              defconfig
x86_64               randconfig-a011-20230116
arm                              allyesconfig
x86_64                               rhel-8.3
mips                             allyesconfig
s390                                defconfig
x86_64               randconfig-a016-20230116
arm64                            allyesconfig
x86_64               randconfig-a013-20230116
s390                             allmodconfig
x86_64               randconfig-a012-20230116
ia64                             allmodconfig
x86_64               randconfig-a015-20230116
x86_64               randconfig-a014-20230116
x86_64                           allyesconfig
s390                             allyesconfig
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
m68k                             allyesconfig
x86_64                           rhel-8.3-syz
m68k                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20230115
s390                 randconfig-r044-20230116
riscv                randconfig-r042-20230116
arc                  randconfig-r043-20230116
arm                  randconfig-r046-20230115
arm                  randconfig-r046-20230117
arc                  randconfig-r043-20230117
i386                 randconfig-a013-20230116
i386                 randconfig-a012-20230116
i386                 randconfig-a016-20230116
i386                 randconfig-a014-20230116
i386                 randconfig-a015-20230116
i386                 randconfig-a011-20230116
i386                          randconfig-c001
i386                 randconfig-c001-20230116
m68k                          hp300_defconfig
arm                            lart_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
powerpc                      bamboo_defconfig
arm                           imxrt_defconfig
powerpc                      makalu_defconfig
arm                        cerfcube_defconfig
ia64                        generic_defconfig
sh                 kfr2r09-romimage_defconfig
openrisc                         alldefconfig
powerpc                     tqm8548_defconfig
mips                        vocore2_defconfig

clang tested configs:
x86_64               randconfig-a001-20230116
x86_64               randconfig-a003-20230116
x86_64               randconfig-a004-20230116
x86_64               randconfig-a002-20230116
x86_64                          rhel-8.3-rust
x86_64               randconfig-a005-20230116
x86_64               randconfig-a006-20230116
i386                 randconfig-a002-20230116
i386                 randconfig-a004-20230116
i386                 randconfig-a003-20230116
i386                 randconfig-a005-20230116
i386                 randconfig-a001-20230116
i386                 randconfig-a006-20230116
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r041-20230116
riscv                randconfig-r042-20230117
hexagon              randconfig-r045-20230117
s390                 randconfig-r044-20230117
hexagon              randconfig-r045-20230115
hexagon              randconfig-r041-20230117
riscv                randconfig-r042-20230115
arm                  randconfig-r046-20230116
s390                 randconfig-r044-20230115
hexagon              randconfig-r045-20230116
hexagon              randconfig-r041-20230115
x86_64                        randconfig-k001
powerpc                      acadia_defconfig
arm                        magician_defconfig
riscv                             allnoconfig
arm                          sp7021_defconfig
powerpc                     ppa8548_defconfig
powerpc                     tqm8560_defconfig
arm                  colibri_pxa270_defconfig
arm                         hackkit_defconfig
mips                          malta_defconfig
mips                        qi_lb60_defconfig
arm                           sama7_defconfig
riscv                          rv32_defconfig
powerpc                    mvme5100_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
