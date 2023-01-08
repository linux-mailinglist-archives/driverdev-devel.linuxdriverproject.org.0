Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A4F966188C
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Jan 2023 20:35:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 30FE4409F3;
	Sun,  8 Jan 2023 19:35:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 30FE4409F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id uQylOiGYQc1r; Sun,  8 Jan 2023 19:35:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A6F3A4109F;
	Sun,  8 Jan 2023 19:35:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A6F3A4109F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9CF861BF577
 for <devel@linuxdriverproject.org>; Sun,  8 Jan 2023 19:35:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 78A758148A
 for <devel@linuxdriverproject.org>; Sun,  8 Jan 2023 19:35:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78A758148A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KdYCR1Bi-euA for <devel@linuxdriverproject.org>;
 Sun,  8 Jan 2023 19:35:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E558C8146F
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E558C8146F
 for <devel@driverdev.osuosl.org>; Sun,  8 Jan 2023 19:35:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="322821863"
X-IronPort-AV: E=Sophos;i="5.96,310,1665471600"; d="scan'208";a="322821863"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2023 11:35:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10584"; a="656475884"
X-IronPort-AV: E=Sophos;i="5.96,310,1665471600"; d="scan'208";a="656475884"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 08 Jan 2023 11:35:15 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pEbRq-0005eQ-35;
 Sun, 08 Jan 2023 19:35:14 +0000
Date: Mon, 09 Jan 2023 03:35:09 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 fd1ca1d869f4167b8141ad3c3fc74cbe8d771ac0
Message-ID: <63bb1aed.haw9ADsoaHabdq79%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673206518; x=1704742518;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=qYMB7fup/OLY2vwwa4jUJX9MKXey5UMk2dNaVkmA2fQ=;
 b=AX2I1c2fFrITBm64IyHA2fWmXSaqS+6wYhpsxl4mWUqCWc58aYBC0gyd
 3UpB4E2Q+fSP1UOUCjsYmww1iUb8z85vcw2+YwTfKHdUVLVKSeMKKAJ1e
 zNTM8wwUTmvUK9u3IaH1gidsHDIV29dneEpPffc7709/JrWAmqAlabQe0
 nT24jBOayokQLYdVQz47zXq5CZWEmh8iyR1snIPJ6HuLuMTd4GIT87Ai4
 ZVDUjQdrHkDM52NMRSJEGRMFEgw6VENX0J2tHHQf89UG9SI8dU0xif6wh
 0wegCKVdvJJcEGP93GpEcsupqIu8vuqiVzvuezV+iM2SjZD95JipXuNSE
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AX2I1c2f
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: fd1ca1d869f4167b8141ad3c3fc74cbe8d771ac0  bus: step 1

elapsed time: 720m

configs tested: 74
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                             i386_defconfig
x86_64                              defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
i386                                defconfig
arm                                 defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                        randconfig-a013
ia64                             allmodconfig
x86_64                        randconfig-a011
arm                  randconfig-r046-20230108
arc                  randconfig-r043-20230108
x86_64                        randconfig-a015
arm64                            allyesconfig
arm                              allyesconfig
x86_64                        randconfig-a004
nios2                         3c120_defconfig
i386                          randconfig-a014
x86_64                        randconfig-a002
x86_64                    rhel-8.3-kselftests
arm                        trizeps4_defconfig
x86_64                          rhel-8.3-func
i386                          randconfig-a001
i386                          randconfig-a012
i386                          randconfig-a003
x86_64                        randconfig-a006
i386                          randconfig-a016
i386                          randconfig-a005
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
i386                             allyesconfig
arc                        vdk_hs38_defconfig
parisc64                         alldefconfig
m68k                        mvme16x_defconfig
powerpc                 mpc85xx_cds_defconfig
sh                          landisk_defconfig
s390                                defconfig
x86_64                           rhel-8.3-bpf
powerpc                      mgcoge_defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
xtensa                    smp_lx200_defconfig
sh                               allmodconfig
s390                             allyesconfig
mips                             allyesconfig
m68k                             allyesconfig
powerpc                          allmodconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig

clang tested configs:
hexagon              randconfig-r045-20230108
x86_64                        randconfig-a012
x86_64                        randconfig-a014
riscv                randconfig-r042-20230108
hexagon              randconfig-r041-20230108
s390                 randconfig-r044-20230108
x86_64                        randconfig-a016
i386                          randconfig-a013
x86_64                          rhel-8.3-rust
arm                          ep93xx_defconfig
i386                          randconfig-a011
x86_64                        randconfig-a005
x86_64                        randconfig-a001
i386                          randconfig-a002
x86_64                        randconfig-a003
i386                          randconfig-a015
i386                          randconfig-a006
i386                          randconfig-a004
arm                       imx_v4_v5_defconfig
riscv                          rv32_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
