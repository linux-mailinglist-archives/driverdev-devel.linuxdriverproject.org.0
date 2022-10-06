Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC275F609F
	for <lists+driverdev-devel@lfdr.de>; Thu,  6 Oct 2022 07:31:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C48240585;
	Thu,  6 Oct 2022 05:31:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C48240585
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dDWG7ul80IGq; Thu,  6 Oct 2022 05:31:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2B9014053E;
	Thu,  6 Oct 2022 05:31:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B9014053E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id A29461BF95C
 for <devel@linuxdriverproject.org>; Thu,  6 Oct 2022 05:31:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7A19C40585
 for <devel@linuxdriverproject.org>; Thu,  6 Oct 2022 05:31:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A19C40585
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gB0cCczYoQvA for <devel@linuxdriverproject.org>;
 Thu,  6 Oct 2022 05:30:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5572B4053E
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5572B4053E
 for <devel@driverdev.osuosl.org>; Thu,  6 Oct 2022 05:30:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="290607763"
X-IronPort-AV: E=Sophos;i="5.95,163,1661842800"; d="scan'208";a="290607763"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2022 22:30:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10491"; a="655456091"
X-IronPort-AV: E=Sophos;i="5.95,163,1661842800"; d="scan'208";a="655456091"
Received: from lkp-server01.sh.intel.com (HELO d4f44333118a) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 05 Oct 2022 22:30:50 -0700
Received: from kbuild by d4f44333118a with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ogJT7-0001xN-1v;
 Thu, 06 Oct 2022 05:30:49 +0000
Date: Thu, 06 Oct 2022 13:30:18 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS WITH WARNING
 1b43a2983970f31597836e5571d42d9de443b44d
Message-ID: <633e67ea.n4DrShh5lms5QBjI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665034257; x=1696570257;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=hVPDq85hh4SCFrjohH58w/SyocuMrO0F0pMmigv60WE=;
 b=ICvFtAjqsc/Svnwd3fiOiJTmgHM5EaZ7kPYGanIh9ncozDkl7fgb6B1z
 2teZZNv0H1EfYpuu1kp2NKQ/E5gTQnlqjpC3g46GBs1cRECY5H43a1/I1
 3xHu3ZyJIwjuevoR0evlUvpfDVIZizG/04phQClsy2jUprgIHKfTWedX7
 bR0JW5IfqK80Z49a/wK8QZw66HiNNoD0SNUD6EUY33UN2uvMCn9lwvVyw
 h3zAsRkQOZY1LRalrLzodKdttLUfKJUAfuzlcRgyAS1h+ABn/7SNr1+j8
 xposp5iRZyXRLL//bSvWNZ9Hl+Z0QI4ATxE0O54j3zkYVs1HLuxf/Sb3S
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ICvFtAjq
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
branch HEAD: 1b43a2983970f31597836e5571d42d9de443b44d  kobject: kset_uevent_ops: make uevent() callback take a const *

Warning reports:

https://lore.kernel.org/lkml/202210060441.8W85EBjZ-lkp@intel.com

Warning: (recently discovered and may have been fixed)

sound/aoa/soundbus/core.c:73:12: warning: assignment discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- powerpc-allmodconfig
    `-- sound-aoa-soundbus-core.c:warning:assignment-discards-const-qualifier-from-pointer-target-type

elapsed time: 725m

configs tested: 82
configs skipped: 5

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
x86_64                              defconfig
powerpc                           allnoconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
s390                             allmodconfig
s390                                defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                          rhel-8.3-func
arc                              allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
alpha                            allyesconfig
i386                 randconfig-a011-20221003
sh                               allmodconfig
i386                 randconfig-a012-20221003
mips                             allyesconfig
s390                             allyesconfig
powerpc                          allmodconfig
arm                                 defconfig
i386                                defconfig
i386                 randconfig-a013-20221003
arc                  randconfig-r043-20221005
i386                 randconfig-a015-20221003
s390                 randconfig-r044-20221005
i386                 randconfig-a016-20221003
m68k                             allmodconfig
riscv                randconfig-r042-20221005
m68k                             allyesconfig
x86_64               randconfig-a011-20221003
x86_64               randconfig-a012-20221003
i386                 randconfig-a014-20221003
x86_64               randconfig-a013-20221003
ia64                             allmodconfig
x86_64               randconfig-a014-20221003
i386                             allyesconfig
x86_64               randconfig-a016-20221003
arm64                            allyesconfig
x86_64               randconfig-a015-20221003
arm                              allyesconfig
arc                  randconfig-r043-20221003
s390                 randconfig-r044-20221003
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
riscv                randconfig-r042-20221003
arc                  randconfig-r043-20221002
i386                          randconfig-c001
arc                        nsim_700_defconfig
sh                          r7780mp_defconfig
xtensa                              defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm                  randconfig-c002-20221002
x86_64                        randconfig-c001
powerpc                         wii_defconfig

clang tested configs:
hexagon              randconfig-r045-20221005
hexagon              randconfig-r041-20221005
x86_64               randconfig-a005-20221003
x86_64               randconfig-a002-20221003
x86_64               randconfig-a001-20221003
x86_64               randconfig-a004-20221003
x86_64               randconfig-a006-20221003
x86_64               randconfig-a003-20221003
i386                 randconfig-a004-20221003
i386                 randconfig-a005-20221003
i386                 randconfig-a003-20221003
i386                 randconfig-a002-20221003
i386                 randconfig-a001-20221003
i386                 randconfig-a006-20221003
powerpc                    mvme5100_defconfig
powerpc                     ppa8548_defconfig
arm                          sp7021_defconfig
arm                        magician_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
