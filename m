Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1395B69E95B
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Feb 2023 22:18:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7512381774;
	Tue, 21 Feb 2023 21:18:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7512381774
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3LWG8ioJb2sX; Tue, 21 Feb 2023 21:18:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 333328176E;
	Tue, 21 Feb 2023 21:18:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 333328176E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E411D1BF39F
 for <devel@linuxdriverproject.org>; Tue, 21 Feb 2023 21:18:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BD9FB60B36
 for <devel@linuxdriverproject.org>; Tue, 21 Feb 2023 21:18:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD9FB60B36
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LkS4B904v8mU for <devel@linuxdriverproject.org>;
 Tue, 21 Feb 2023 21:18:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F20560B33
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4F20560B33
 for <devel@driverdev.osuosl.org>; Tue, 21 Feb 2023 21:18:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="320894949"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="320894949"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 13:18:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="845855697"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="845855697"
Received: from lkp-server01.sh.intel.com (HELO eac18b5d7d93) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 21 Feb 2023 13:18:42 -0800
Received: from kbuild by eac18b5d7d93 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pUa25-0000Fd-1d;
 Tue, 21 Feb 2023 21:18:41 +0000
Date: Wed, 22 Feb 2023 05:17:53 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 e2970ba821954232a75defb254b3d0c260aab128
Message-ID: <63f53501.rFBMDgZHTWvwQgNe%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677014324; x=1708550324;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=NWX8r24s0BtWxJ9/bwL84xd6dsxwqoR3Ze3jw5rGMLY=;
 b=EDmT8Q12C9eYDHRoCa7tYKQM/HSvMYZlPEM3CDL4cb3KMnrZIT/Y30cL
 oop0GAwA8t+L0TQGYYxZbqava6QBRDPWHA9vKQJfsrIGiXFnMUhM1oTW6
 XgBftsdsoMuKatqnCe8owggfrE8Y7kPjI0Gk8lmWaxhT6Lo7g7TLkb2TU
 YbU2pZK3fF2xF1D0k7KrV0hmeRZxLIBSg1Jn1zVzG5eMUBs6Lr3zvsY1b
 R5HKWRHy75MrD12Jq4TTGo9Rl1OxsZRmwzyZjVPN4tE7ToqsVfowmr4Wx
 Ro/o3cmIvC9hwyg/ozYKAgmTTbkG5gVdNCS+6n1LYXi8pJdphKPNmycEX
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EDmT8Q12
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
branch HEAD: e2970ba821954232a75defb254b3d0c260aab128  FIXME: driver core: platform: make platform_bus_type constant

elapsed time: 724m

configs tested: 110
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                  randconfig-r043-20230219
arc                  randconfig-r043-20230220
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                     eseries_pxa_defconfig
arm                        oxnas_v6_defconfig
arm                  randconfig-r046-20230220
arm                           viper_defconfig
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                 randconfig-a001-20230220
i386                 randconfig-a002-20230220
i386                 randconfig-a003-20230220
i386                 randconfig-a004-20230220
i386                 randconfig-a005-20230220
i386                 randconfig-a006-20230220
i386                          randconfig-c001
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                        m5307c3_defconfig
mips                             allmodconfig
mips                             allyesconfig
mips                         bigsur_defconfig
mips                           ci20_defconfig
mips                         cobalt_defconfig
nios2                               defconfig
parisc                              defconfig
parisc64                         alldefconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                     ep8248e_defconfig
powerpc                        warp_defconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                randconfig-r042-20230219
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
s390                 randconfig-r044-20230219
sh                               alldefconfig
sh                               allmodconfig
sh                        dreamcast_defconfig
sh                          landisk_defconfig
sh                          polaris_defconfig
sh                          rsk7203_defconfig
sh                             sh03_defconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           alldefconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64               randconfig-a001-20230220
x86_64               randconfig-a002-20230220
x86_64               randconfig-a003-20230220
x86_64               randconfig-a004-20230220
x86_64               randconfig-a005-20230220
x86_64               randconfig-a006-20230220
x86_64                               rhel-8.3
xtensa                    xip_kc705_defconfig

clang tested configs:
arm                         bcm2835_defconfig
arm                  colibri_pxa270_defconfig
arm                         lpc32xx_defconfig
arm                            mmp2_defconfig
arm                          pcm027_defconfig
arm                      pxa255-idp_defconfig
arm                  randconfig-r046-20230219
arm                         socfpga_defconfig
hexagon              randconfig-r041-20230219
hexagon              randconfig-r041-20230220
hexagon              randconfig-r045-20230219
hexagon              randconfig-r045-20230220
i386                 randconfig-a011-20230220
i386                 randconfig-a012-20230220
i386                 randconfig-a013-20230220
i386                 randconfig-a014-20230220
i386                 randconfig-a015-20230220
i386                 randconfig-a016-20230220
mips                       lemote2f_defconfig
powerpc                      acadia_defconfig
powerpc                     skiroot_defconfig
powerpc                     tqm5200_defconfig
powerpc                      walnut_defconfig
riscv                randconfig-r042-20230220
s390                 randconfig-r044-20230220
x86_64               randconfig-a011-20230220
x86_64               randconfig-a012-20230220
x86_64               randconfig-a013-20230220
x86_64               randconfig-a014-20230220
x86_64               randconfig-a015-20230220
x86_64               randconfig-a016-20230220

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
