Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA5D4828EB
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Jan 2022 03:15:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B101540297;
	Sun,  2 Jan 2022 02:15:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fFNU25dsxzM9; Sun,  2 Jan 2022 02:15:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C9F7840274;
	Sun,  2 Jan 2022 02:15:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 512E01BF45A
 for <devel@linuxdriverproject.org>; Sun,  2 Jan 2022 02:15:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 48547401AD
 for <devel@linuxdriverproject.org>; Sun,  2 Jan 2022 02:15:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A7lIwGqXkFKj for <devel@linuxdriverproject.org>;
 Sun,  2 Jan 2022 02:15:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0E7764014E
 for <devel@driverdev.osuosl.org>; Sun,  2 Jan 2022 02:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641089720; x=1672625720;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=yIiI467GKqBw+rYa+XJbZxyxI8eaZ47xugVTmUN/N4k=;
 b=g4qxmKWXcx7WQsTrpUHWEBl2fY7NvxP732nlx7cvdAxmqH7z/Rni0Eoy
 VZDiseJRpUc6AjpeBto4/sGOlvSql6A+lpxXOmTAStJ+rwStm3hngRB3q
 jm5kQVv6Qh1pXlDh7WvyS+ed+hosgSfwrb3RPC45X4miS21G2EiWwGsvn
 0fPjaNBzoz47SnY9hHsKyrA/cZIL92MlDrNOwcmrUniQMlkH+6eXwIAHy
 735hi13OK96ldcKhj6zA9TiErFyt179x99T0z9DALuMRq5/WRHs0CjGt2
 30kT73BXsxL9c1JXfcdeyjoTzIOs649kbqr0teyVOYtgGn3It5yVfEngd Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10214"; a="229246909"
X-IronPort-AV: E=Sophos;i="5.88,255,1635231600"; d="scan'208";a="229246909"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jan 2022 18:15:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,255,1635231600"; d="scan'208";a="619946509"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 01 Jan 2022 18:15:17 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n3qOy-000Cy8-Ii; Sun, 02 Jan 2022 02:15:16 +0000
Date: Sun, 02 Jan 2022 10:14:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD REGRESSION
 b997dbb3f3e3608fa6e98365c988b059ba9f36a5
Message-ID: <61d10a99.5w+SRj8Ytgnz/u9Q%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: b997dbb3f3e3608fa6e98365c988b059ba9f36a5  firmware: remove old CONFIG_FW_LOADER_MODULE test

Error/Warning reports:

https://lore.kernel.org/lkml/202201010250.AR5OyFBm-lkp@intel.com

Error/Warning in current branch:

drivers/base/firmware_loader/main.c:1054:1: error: redefinition of 'request_firmware_nowait'
drivers/base/firmware_loader/main.c:811:1: error: redefinition of 'request_firmware'
drivers/base/firmware_loader/main.c:838:5: error: redefinition of 'firmware_request_nowarn'
drivers/base/firmware_loader/main.c:863:5: error: redefinition of 'request_firmware_direct'
drivers/base/firmware_loader/main.c:887:5: error: redefinition of 'firmware_request_platform'
drivers/base/firmware_loader/main.c:941:1: error: redefinition of 'request_firmware_into_buf'
drivers/base/firmware_loader/main.c:970:1: error: redefinition of 'request_partial_firmware_into_buf'
drivers/base/firmware_loader/main.c:992:6: error: redefinition of 'release_firmware'

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- i386-randconfig-a004-20220101
|   |-- drivers-base-firmware_loader-main.c:error:redefinition-of-firmware_request_nowarn
|   |-- drivers-base-firmware_loader-main.c:error:redefinition-of-firmware_request_platform
|   |-- drivers-base-firmware_loader-main.c:error:redefinition-of-release_firmware
|   |-- drivers-base-firmware_loader-main.c:error:redefinition-of-request_firmware
|   |-- drivers-base-firmware_loader-main.c:error:redefinition-of-request_firmware_direct
|   |-- drivers-base-firmware_loader-main.c:error:redefinition-of-request_firmware_into_buf
|   |-- drivers-base-firmware_loader-main.c:error:redefinition-of-request_firmware_nowait
|   `-- drivers-base-firmware_loader-main.c:error:redefinition-of-request_partial_firmware_into_buf
`-- sh-allmodconfig
    |-- drivers-base-firmware_loader-main.c:error:redefinition-of-firmware_request_nowarn
    |-- drivers-base-firmware_loader-main.c:error:redefinition-of-firmware_request_platform
    |-- drivers-base-firmware_loader-main.c:error:redefinition-of-release_firmware
    |-- drivers-base-firmware_loader-main.c:error:redefinition-of-request_firmware
    |-- drivers-base-firmware_loader-main.c:error:redefinition-of-request_firmware_direct
    |-- drivers-base-firmware_loader-main.c:error:redefinition-of-request_firmware_into_buf
    |-- drivers-base-firmware_loader-main.c:error:redefinition-of-request_firmware_nowait
    `-- drivers-base-firmware_loader-main.c:error:redefinition-of-request_partial_firmware_into_buf

elapsed time: 720m

configs tested: 117
configs skipped: 3

gcc tested configs:
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm64                               defconfig
arm64                            allyesconfig
i386                 randconfig-c001-20220101
arm                          gemini_defconfig
mips                      maltasmvp_defconfig
sh                          sdk7786_defconfig
sh                             sh03_defconfig
nios2                            alldefconfig
sh                           se7705_defconfig
sh                           se7750_defconfig
mips                         mpc30x_defconfig
sh                           se7619_defconfig
arm                            mps2_defconfig
arm                           u8500_defconfig
powerpc                      ppc40x_defconfig
ia64                             alldefconfig
arm                  randconfig-c002-20220101
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allyesconfig
m68k                             allmodconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allmodconfig
s390                                defconfig
parisc                           allyesconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
i386                 randconfig-a003-20220101
i386                 randconfig-a004-20220101
i386                 randconfig-a006-20220101
i386                 randconfig-a001-20220101
i386                 randconfig-a002-20220101
i386                 randconfig-a005-20220101
i386                 randconfig-a012-20220102
i386                 randconfig-a016-20220102
i386                 randconfig-a014-20220102
i386                 randconfig-a015-20220102
i386                 randconfig-a011-20220102
i386                 randconfig-a013-20220102
x86_64               randconfig-a002-20211231
x86_64               randconfig-a001-20211231
x86_64               randconfig-a003-20211231
x86_64               randconfig-a006-20211231
x86_64               randconfig-a004-20211231
x86_64               randconfig-a005-20211231
arc                  randconfig-r043-20220101
s390                 randconfig-r044-20220102
arc                  randconfig-r043-20220102
riscv                randconfig-r042-20220102
riscv                    nommu_k210_defconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
riscv                            allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests

clang tested configs:
arm                           omap1_defconfig
powerpc                          g5_defconfig
mips                        omega2p_defconfig
powerpc                          allmodconfig
powerpc                    gamecube_defconfig
x86_64               randconfig-a013-20211231
x86_64               randconfig-a015-20211231
x86_64               randconfig-a012-20211231
x86_64               randconfig-a011-20211231
x86_64               randconfig-a014-20211231
x86_64               randconfig-a016-20211231
i386                 randconfig-a012-20220101
i386                 randconfig-a011-20220101
i386                 randconfig-a013-20220101
i386                 randconfig-a016-20220101
i386                 randconfig-a015-20220101
i386                 randconfig-a014-20220101
x86_64               randconfig-a005-20220102
x86_64               randconfig-a001-20220102
x86_64               randconfig-a004-20220102
x86_64               randconfig-a006-20220102
x86_64               randconfig-a002-20220102
x86_64               randconfig-a003-20220102
hexagon              randconfig-r041-20220101
hexagon              randconfig-r045-20220101
riscv                randconfig-r042-20220101
s390                 randconfig-r044-20220101

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
