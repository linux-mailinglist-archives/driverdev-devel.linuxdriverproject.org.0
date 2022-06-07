Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFA2540F07
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Jun 2022 20:59:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 303CC408D0;
	Tue,  7 Jun 2022 18:59:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IduUW0_Onood; Tue,  7 Jun 2022 18:59:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 581E2408C1;
	Tue,  7 Jun 2022 18:59:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A1FBF1BF279
 for <devel@linuxdriverproject.org>; Tue,  7 Jun 2022 18:59:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8F58D4020B
 for <devel@linuxdriverproject.org>; Tue,  7 Jun 2022 18:59:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zQfR4ylECR4m for <devel@linuxdriverproject.org>;
 Tue,  7 Jun 2022 18:59:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DE4B440164
 for <devel@driverdev.osuosl.org>; Tue,  7 Jun 2022 18:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654628388; x=1686164388;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=MEQDl+4WpklyCwrZIp9XykH0fh5Mn4MXPzk7WR/Qg4k=;
 b=J8sARalgEEunekrL4sPxfBPIf4HLHmkb2odqqi2ti0lpgxJnU74rfmsF
 6zJF75zmhZvJNykI7FSkNCXr91ft+EP99RIDi/GgPxfacAcjfPEh/D007
 Hc2Itgg1WGCr03lkX/FCLo8R+pOpabMFyOaQ3AnVez28pQ0GvbYM7406v
 CjUaSEKk/PyBsjFkoAR7dL9j90u2GOAy9rH6jXPKDQCpBK9RLCMBECkab
 ic6MueypcwMRrcIWb6NSHaKgeTVj7b23SBNCFqcn6ZFv/KyhO2vVBUI3w
 6JaWxQfE4EEhZIJ8J9VsNd5SUU7iBk0jCgG2E7qXF9J3Bi9grHyZPQulS g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10371"; a="259686919"
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="259686919"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2022 11:31:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,284,1647327600"; d="scan'208";a="532729609"
Received: from lkp-server01.sh.intel.com (HELO 60dabacc1df6) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 07 Jun 2022 11:31:01 -0700
Received: from kbuild by 60dabacc1df6 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1nydym-000Dqz-LQ;
 Tue, 07 Jun 2022 18:31:00 +0000
Date: Wed, 08 Jun 2022 02:30:24 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 96f0a54e8e65a765b3a4ad4b53751581f23279f3
Message-ID: <629f9940.HCAt9csodTyG012/%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-linus
branch HEAD: 96f0a54e8e65a765b3a4ad4b53751581f23279f3  staging: r8188eu: Fix warning of array overflow in ioctl_linux.c

elapsed time: 2119m

configs tested: 142
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
i386                          randconfig-c001
m68k                         amcore_defconfig
arm                          pxa3xx_defconfig
sh                   rts7751r2dplus_defconfig
sh                         ap325rxa_defconfig
arc                     haps_hs_smp_defconfig
xtensa                generic_kc705_defconfig
arc                      axs103_smp_defconfig
mips                        vocore2_defconfig
arm                      jornada720_defconfig
m68k                        m5407c3_defconfig
arc                              alldefconfig
sh                            shmin_defconfig
ia64                         bigsur_defconfig
m68k                        mvme147_defconfig
sh                        dreamcast_defconfig
riscv             nommu_k210_sdcard_defconfig
xtensa                              defconfig
ia64                                defconfig
powerpc                     tqm8555_defconfig
sh                           se7619_defconfig
sh                         ecovec24_defconfig
arm                            qcom_defconfig
mips                  maltasmvp_eva_defconfig
sh                ecovec24-romimage_defconfig
powerpc                     taishan_defconfig
sh                           se7750_defconfig
sh                          sdk7786_defconfig
arm                        mvebu_v7_defconfig
ia64                        generic_defconfig
powerpc                    sam440ep_defconfig
powerpc                      chrp32_defconfig
nios2                         10m50_defconfig
arc                          axs103_defconfig
powerpc                     rainier_defconfig
arc                            hsdk_defconfig
openrisc                    or1ksim_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220605
arm                  randconfig-c002-20220607
riscv                             allnoconfig
h8300                            allyesconfig
m68k                             allyesconfig
xtensa                           allyesconfig
m68k                             allmodconfig
csky                                defconfig
arc                                 defconfig
mips                             allyesconfig
nios2                            allyesconfig
m68k                                defconfig
nios2                               defconfig
arc                              allyesconfig
alpha                               defconfig
alpha                            allyesconfig
mips                             allmodconfig
sh                               allmodconfig
parisc                              defconfig
riscv                    nommu_k210_defconfig
riscv                            allmodconfig
riscv                            allyesconfig
riscv                               defconfig
s390                                defconfig
riscv                    nommu_virt_defconfig
s390                             allmodconfig
riscv                          rv32_defconfig
parisc64                            defconfig
parisc                           allyesconfig
s390                             allyesconfig
sparc                               defconfig
powerpc                          allyesconfig
i386                             allyesconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
sparc                            allyesconfig
powerpc                          allmodconfig
i386                                defconfig
um                             i386_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
ia64                             allmodconfig
arm64                               defconfig
ia64                             allyesconfig
arm64                            allyesconfig
arm                              allmodconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
i386                          randconfig-a010
i386                          randconfig-a012
x86_64                        randconfig-a006
x86_64                        randconfig-a008
i386                          randconfig-a007
i386                          randconfig-a009
i386                 randconfig-a011-20220606
i386                 randconfig-a010-20220606
x86_64               randconfig-a011-20220606
x86_64               randconfig-a012-20220606
i386                 randconfig-a012-20220606
x86_64               randconfig-a010-20220606
x86_64                    rhel-8.3-kselftests
x86_64                                  kexec
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3

clang tested configs:
powerpc              randconfig-c003-20220606
riscv                randconfig-c006-20220606
s390                 randconfig-c005-20220606
i386                 randconfig-c001-20220606
mips                 randconfig-c004-20220606
x86_64               randconfig-c007-20220606
arm                  randconfig-c002-20220606
powerpc              randconfig-c003-20220607
x86_64                        randconfig-c007
riscv                randconfig-c006-20220607
i386                          randconfig-c001
s390                 randconfig-c005-20220607
mips                 randconfig-c004-20220607
arm                  randconfig-c002-20220607
powerpc                      walnut_defconfig
mips                        omega2p_defconfig
powerpc                   microwatt_defconfig
powerpc                 mpc8272_ads_defconfig
arm                                 defconfig
mips                           rs90_defconfig
arm                         s3c2410_defconfig
i386                          randconfig-a002
x86_64                        randconfig-a009
x86_64                        randconfig-a007
i386                          randconfig-a006
x86_64                        randconfig-a010
i386                          randconfig-a011
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a008
i386                          randconfig-a004
x86_64                        randconfig-a012

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
