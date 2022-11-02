Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 327FB616DE4
	for <lists+driverdev-devel@lfdr.de>; Wed,  2 Nov 2022 20:38:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 9667481E86;
	Wed,  2 Nov 2022 19:38:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9667481E86
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L5sIkIPdQ8zu; Wed,  2 Nov 2022 19:38:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3437981E72;
	Wed,  2 Nov 2022 19:38:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3437981E72
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0A5E31BF3E1
 for <devel@linuxdriverproject.org>; Wed,  2 Nov 2022 19:38:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D9ABF60ADB
 for <devel@linuxdriverproject.org>; Wed,  2 Nov 2022 19:38:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9ABF60ADB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kWTd3G-rY0d7 for <devel@linuxdriverproject.org>;
 Wed,  2 Nov 2022 19:38:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CA19660AB5
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CA19660AB5
 for <devel@driverdev.osuosl.org>; Wed,  2 Nov 2022 19:38:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="308223473"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="308223473"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 12:38:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="879611595"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="879611595"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 02 Nov 2022 12:38:11 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oqJYw-000F3C-20;
 Wed, 02 Nov 2022 19:38:10 +0000
Date: Thu, 03 Nov 2022 03:37:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 a37068715956111af1d49105d9e41b4cc8f69ea0
Message-ID: <6362c702.sZLHvSX120hRVGPu%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667417892; x=1698953892;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=2XEZV8IrdnBi/vK3PDpst8bksV8gMjA1MoOoeaH0wAM=;
 b=nUd5spPWTlQWQe8YYZ0PEuS+jKe/NiPOGJJLa8vRpxSzzOt9oXRmNmHo
 HsEptkE665s7jRcSXpvRh9dzEiNgzBR8npcmgPQo8QR6zS43I8JuqMM6i
 5b3bq3co6vgQ+AAJXYSwxZk/tDlJKHHvNK/GYWLY0Cq+I5z0V8iLFLKA9
 /U8iXeGBM43JDcUsHxzviP6moZkEMU8HCCqCTcAeRrnrd5e/ggx7VevFj
 yX1uI7y14eBM2wG8LYofftv4d3YDuVzxqTUxCTPEOVrfoY4AYa/bVhhKo
 LrCklENirZcGtXXzX+wn4Eth2yjO0P419CO1Z5raPrinT1X7rLheQBRWe
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nUd5spPW
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
branch HEAD: a37068715956111af1d49105d9e41b4cc8f69ea0  staging: r8188eu: convert rtw_setdatarate_cmd to correct error semantics

elapsed time: 722m

configs tested: 111
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
arc                  randconfig-r043-20221101
alpha                               defconfig
x86_64                        randconfig-a002
s390                                defconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a004
x86_64                        randconfig-a006
powerpc                          allmodconfig
mips                             allyesconfig
s390                             allmodconfig
powerpc                           allnoconfig
i386                          randconfig-a001
sh                               allmodconfig
i386                          randconfig-a003
i386                          randconfig-a005
ia64                             allmodconfig
x86_64                               rhel-8.3
x86_64                              defconfig
s390                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                           allyesconfig
arm                                 defconfig
i386                          randconfig-a016
i386                          randconfig-a014
sh                           se7724_defconfig
nios2                         3c120_defconfig
m68k                       bvme6000_defconfig
arm                          badge4_defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                          randconfig-a012
i386                             allyesconfig
i386                                defconfig
ia64                         bigsur_defconfig
arm                         axm55xx_defconfig
arm                       multi_v4t_defconfig
nios2                               defconfig
arm                           sama5_defconfig
arm                          pxa910_defconfig
ia64                          tiger_defconfig
sh                            hp6xx_defconfig
sh                     magicpanelr2_defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
sh                           se7751_defconfig
powerpc                    sam440ep_defconfig
xtensa                          iss_defconfig
i386                          randconfig-c001
nios2                            allyesconfig
arm                            zeus_defconfig
openrisc                       virt_defconfig
arm                      jornada720_defconfig
sparc                       sparc32_defconfig
mips                           xway_defconfig
arm                         vf610m4_defconfig
xtensa                       common_defconfig
arm                          lpd270_defconfig
m68k                         apollo_defconfig
mips                     decstation_defconfig
m68k                          multi_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
arm                        multi_v7_defconfig
arm                         s3c6400_defconfig
sh                        apsh4ad0a_defconfig
arm                           tegra_defconfig
sh                          rsk7203_defconfig

clang tested configs:
hexagon              randconfig-r041-20221101
hexagon              randconfig-r045-20221101
riscv                randconfig-r042-20221101
x86_64                        randconfig-a001
x86_64                        randconfig-a003
s390                 randconfig-r044-20221101
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a015
hexagon              randconfig-r041-20221102
hexagon              randconfig-r045-20221102
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
mips                       rbtx49xx_defconfig
hexagon                             defconfig
powerpc               mpc834x_itxgp_defconfig
powerpc                     kilauea_defconfig
x86_64                        randconfig-k001
riscv                randconfig-r042-20221103
hexagon              randconfig-r041-20221103
hexagon              randconfig-r045-20221103
s390                 randconfig-r044-20221103
arm                       netwinder_defconfig
arm                         bcm2835_defconfig
powerpc                      ppc44x_defconfig
riscv                    nommu_virt_defconfig
arm                         socfpga_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
