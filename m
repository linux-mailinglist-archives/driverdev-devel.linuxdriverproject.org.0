Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3905F8755
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Oct 2022 22:35:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66ACF414C3;
	Sat,  8 Oct 2022 20:35:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66ACF414C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lnwHj4vrDXL9; Sat,  8 Oct 2022 20:35:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB78F414C9;
	Sat,  8 Oct 2022 20:35:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB78F414C9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F2CDE1BF429
 for <devel@linuxdriverproject.org>; Sat,  8 Oct 2022 20:35:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C7A6E8144B
 for <devel@linuxdriverproject.org>; Sat,  8 Oct 2022 20:35:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C7A6E8144B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7LDpCvffjCul for <devel@linuxdriverproject.org>;
 Sat,  8 Oct 2022 20:35:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BFD1481418
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BFD1481418
 for <devel@driverdev.osuosl.org>; Sat,  8 Oct 2022 20:35:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10494"; a="302707136"
X-IronPort-AV: E=Sophos;i="5.95,170,1661842800"; d="scan'208";a="302707136"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2022 13:35:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10494"; a="603270302"
X-IronPort-AV: E=Sophos;i="5.95,170,1661842800"; d="scan'208";a="603270302"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 08 Oct 2022 13:35:20 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ohGXX-0000Qd-2L;
 Sat, 08 Oct 2022 20:35:19 +0000
Date: Sun, 09 Oct 2022 04:34:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 bdf9177bcfe320d10bed4f439b38a2e66f8841bd
Message-ID: <6341deef.toJGSs8/F9G8FkKr%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665261322; x=1696797322;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=2e5rA16CebUXTyMtZsA+AEzT4whndTh15sAqd+ajhxc=;
 b=nMSmFbby0UdWgPf3ZsQo3Tpl4SftKZOYvR0ax7fZ/T/72GgaBrJknp3c
 dEqIBweH1MIWP1K8JDNwVWNj1MMjTP6Lys1T6A8PaxGU9iThoMzjl62yL
 6F+Rz9uSB4xBFKjfQ/aCCgGJ8IeQe3Zneq3KEmPlrZkvmh2vcSx52bvtE
 tQOF6fDM/stpjBc/Je6z2bdQ6zCVN0tZ/UT0bE4f7Gd0o3/EUCY/zHVBa
 oZUu8FyUKQBm3dHr/ENoXjUXyXY4vb7aPzzzQFsdDhMLG3VE9ehF7zUOg
 izlOXCVPa+f4yQ2v1vKVnMbWNxIiAbiGh/0SXUNCKUxHexr7aERMDFJkK
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nMSmFbby
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
branch HEAD: bdf9177bcfe320d10bed4f439b38a2e66f8841bd  readfile.2: new page describing readfile(2)

elapsed time: 780m

configs tested: 124
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
powerpc                           allnoconfig
alpha                               defconfig
i386                                defconfig
x86_64                              defconfig
x86_64                           rhel-8.3-syz
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
i386                 randconfig-a014-20221003
arm                                 defconfig
x86_64                           allyesconfig
i386                 randconfig-a011-20221003
x86_64               randconfig-a011-20221003
i386                 randconfig-a012-20221003
x86_64               randconfig-a012-20221003
x86_64               randconfig-a013-20221003
s390                             allmodconfig
x86_64                          rhel-8.3-func
s390                                defconfig
i386                 randconfig-a013-20221003
i386                 randconfig-a015-20221003
i386                 randconfig-a016-20221003
x86_64                    rhel-8.3-kselftests
x86_64               randconfig-a015-20221003
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
x86_64               randconfig-a014-20221003
sh                               allmodconfig
s390                             allyesconfig
i386                             allyesconfig
x86_64               randconfig-a016-20221003
arm                              allyesconfig
alpha                            allyesconfig
arm64                            allyesconfig
riscv                randconfig-r042-20221007
mips                             allyesconfig
arc                              allyesconfig
powerpc                          allmodconfig
m68k                             allyesconfig
arc                  randconfig-r043-20221007
riscv                randconfig-r042-20221003
arc                  randconfig-r043-20221008
ia64                             allmodconfig
arc                  randconfig-r043-20221003
arc                  randconfig-r043-20221002
s390                 randconfig-r044-20221007
s390                 randconfig-r044-20221003
sh                          r7780mp_defconfig
ia64                                defconfig
arm                          badge4_defconfig
i386                          randconfig-c001
mips                 randconfig-c004-20221002
m68k                        stmark2_defconfig
powerpc                    klondike_defconfig
arm                        oxnas_v6_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm                  randconfig-c002-20221002
x86_64                        randconfig-c001
sh                        dreamcast_defconfig
s390                          debug_defconfig
powerpc                     asp8347_defconfig
nios2                            alldefconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
m68k                       m5208evb_defconfig
powerpc                     taishan_defconfig
powerpc                mpc7448_hpc2_defconfig
arc                        vdk_hs38_defconfig
powerpc                         ps3_defconfig
m68k                        mvme147_defconfig
arm                        spear6xx_defconfig
powerpc                     rainier_defconfig
m68k                             allmodconfig

clang tested configs:
x86_64               randconfig-a003-20221003
x86_64               randconfig-a002-20221003
x86_64               randconfig-a001-20221003
x86_64               randconfig-a005-20221003
x86_64               randconfig-a004-20221003
x86_64               randconfig-a006-20221003
i386                 randconfig-a004-20221003
i386                 randconfig-a003-20221003
i386                 randconfig-a002-20221003
i386                 randconfig-a001-20221003
i386                 randconfig-a005-20221003
i386                 randconfig-a006-20221003
hexagon              randconfig-r041-20221003
riscv                randconfig-r042-20221002
arm                        mvebu_v5_defconfig
s390                             alldefconfig
hexagon              randconfig-r041-20221002
s390                 randconfig-r044-20221002
hexagon              randconfig-r041-20221008
hexagon              randconfig-r045-20221002
hexagon              randconfig-r045-20221008
hexagon              randconfig-r045-20221007
riscv                randconfig-r042-20221008
hexagon              randconfig-r041-20221007
hexagon              randconfig-r045-20221003
s390                 randconfig-r044-20221008
x86_64                        randconfig-k001
arm                      tct_hammer_defconfig
mips                          rm200_defconfig
mips                   sb1250_swarm_defconfig
arm64                            allyesconfig
hexagon                          alldefconfig
arm                    vt8500_v6_v7_defconfig
arm                         socfpga_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
