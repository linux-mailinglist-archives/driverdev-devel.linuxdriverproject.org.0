Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3897E4EFCC8
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 Apr 2022 00:26:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 914AE41B8F;
	Fri,  1 Apr 2022 22:26:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KSY1C0rhjQbY; Fri,  1 Apr 2022 22:26:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id D5BE741B78;
	Fri,  1 Apr 2022 22:26:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 4F1A31BF484
 for <devel@linuxdriverproject.org>; Fri,  1 Apr 2022 22:25:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3CB484032B
 for <devel@linuxdriverproject.org>; Fri,  1 Apr 2022 22:25:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vCGHArthvWSs for <devel@linuxdriverproject.org>;
 Fri,  1 Apr 2022 22:25:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 380194023D
 for <devel@driverdev.osuosl.org>; Fri,  1 Apr 2022 22:25:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648851956; x=1680387956;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=1oz1U1hKv+h0sVl/B8ZevB+yggWTTGtSv8PRUyZcm5w=;
 b=NhquRmYQLAxhy2B6EnaKxCkY2LjHgV6KlHVC3On30WEyZljEJI2KHzZU
 rVayrTHIMAW3tQsx8Ah6f+0sQ4umCFXSLbEZMA8JyM1762WkTcMl0zwe1
 F2HcxgZQk813M+GmIshN7vqcsRPBJxfCnpLmrkb1dxVSpRX5Y3jtGQfxu
 gcA9nd2SU+GGGIQNTJCqDsy/+Adaw5xlTSGb4yD8jJzx1yQoLTUBmFZmv
 Ebt769EKf0lXKrh763s2smpPNlsKh6OmfhwhpFBf7Ebv7NZ9KaCTj36wo
 DXyxWQRd7twnWXRsqu71Wm80vmN817yMkhSs+B8EhOiCVCP4aKVrXs6IV A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="247750584"
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; d="scan'208";a="247750584"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 15:25:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; d="scan'208";a="640677620"
Received: from lkp-server02.sh.intel.com (HELO 3231c491b0e2) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 01 Apr 2022 15:25:54 -0700
Received: from kbuild by 3231c491b0e2 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1naPiL-0001Z5-Fm;
 Fri, 01 Apr 2022 22:25:53 +0000
Date: Sat, 02 Apr 2022 06:25:41 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 507975d937e80796e8bb2b41f19d1e4a71ec40b7
Message-ID: <62477be5.qGE++UoyEFZErvdf%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 507975d937e80796e8bb2b41f19d1e4a71ec40b7  staging: rtl8723bs: refactor rtw_ch2freq()

elapsed time: 911m

configs tested: 110
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                          randconfig-c001
ia64                            zx1_defconfig
h8300                     edosk2674_defconfig
arm                          badge4_defconfig
sh                          landisk_defconfig
mips                           ip32_defconfig
m68k                             alldefconfig
mips                     loongson1b_defconfig
mips                         mpc30x_defconfig
openrisc                  or1klitex_defconfig
nios2                         10m50_defconfig
arm                        keystone_defconfig
parisc                              defconfig
sh                          polaris_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220331
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
alpha                               defconfig
alpha                            allyesconfig
csky                                defconfig
nios2                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc64                            defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
nios2                               defconfig
arc                              allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arc                  randconfig-r043-20220331
riscv                            allmodconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
riscv                            allyesconfig
riscv                               defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests

clang tested configs:
powerpc              randconfig-c003-20220331
x86_64                        randconfig-c007
s390                 randconfig-c005-20220331
arm                  randconfig-c002-20220331
riscv                randconfig-c006-20220331
i386                          randconfig-c001
mips                 randconfig-c004-20220331
riscv                             allnoconfig
arm                       mainstone_defconfig
arm                           spitz_defconfig
powerpc                      ppc44x_defconfig
powerpc                   lite5200b_defconfig
arm                          pxa168_defconfig
arm                  colibri_pxa300_defconfig
arm                       spear13xx_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220331
hexagon              randconfig-r041-20220331
riscv                randconfig-r042-20220331
s390                 randconfig-r044-20220331

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
