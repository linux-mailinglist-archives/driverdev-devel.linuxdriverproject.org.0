Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AB001646512
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Dec 2022 00:28:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C1B5060F20;
	Wed,  7 Dec 2022 23:28:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1B5060F20
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id U6lnS8lFBmie; Wed,  7 Dec 2022 23:28:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E0A360670;
	Wed,  7 Dec 2022 23:28:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E0A360670
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 694C91BF47F
 for <devel@linuxdriverproject.org>; Wed,  7 Dec 2022 23:28:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 42CBF418D8
 for <devel@linuxdriverproject.org>; Wed,  7 Dec 2022 23:28:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 42CBF418D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E4wlljHOyGeb for <devel@linuxdriverproject.org>;
 Wed,  7 Dec 2022 23:28:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 01FDE418A0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 01FDE418A0
 for <devel@driverdev.osuosl.org>; Wed,  7 Dec 2022 23:28:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="403297007"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; d="scan'208";a="403297007"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 15:28:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="624482971"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; d="scan'208";a="624482971"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 07 Dec 2022 15:28:22 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p33pu-0000eB-0i;
 Wed, 07 Dec 2022 23:28:22 +0000
Date: Thu, 08 Dec 2022 07:28:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 0f5ed6d1c00270d43a59ab442241ae0224b209c7
Message-ID: <63912194.G8VP9u/Yt5nBpY2x%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670455705; x=1701991705;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=5UadmvVqZORlqv5bPi+SYVepw1rAcVihWRIrRWkPHdQ=;
 b=QX08u1UhNSWyI4kk2bvdUSuN0ho9/Yp58MgLTi9caBKnASr9do4AuuiB
 t/gxeZCIgGZytuaIJL26fc9iBREVV2wSTn5Y7h7Gymnwsqifk+O/1vAvq
 Q10/QamWbZdnjqik01j4y7RsUJ7MnRqQ1hmqlUXl3B2R56kPsTiMbgeNS
 RBHn/zmqixu+EGOhmmBTq+rb+/d9ccpykcWh2/0CBbsIZ4oO9MCoDLPys
 WMhoAYJoYfPsjeqa/MCByqhAbwvIS1LHv2SSB9JOK/UdXqDLg/ouA32sS
 AlxaL8mlWop9cTrQd0NZ4toWlaTIohSSm39yEZkrK71xS5yOgXTgX1+db
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QX08u1Uh
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
branch HEAD: 0f5ed6d1c00270d43a59ab442241ae0224b209c7  kobject: kset_uevent_ops: make uevent() callback take a const *

elapsed time: 722m

configs tested: 88
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                              defconfig
i386                                defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                          rhel-8.3-rust
ia64                             allmodconfig
x86_64                        randconfig-a013
s390                                defconfig
x86_64                               rhel-8.3
i386                          randconfig-a001
x86_64                           allyesconfig
m68k                             allyesconfig
i386                          randconfig-a003
m68k                             allmodconfig
powerpc                           allnoconfig
x86_64                        randconfig-a011
x86_64                    rhel-8.3-kselftests
s390                             allyesconfig
x86_64                        randconfig-a004
arm                                 defconfig
arc                              allyesconfig
powerpc                          allmodconfig
alpha                            allyesconfig
i386                          randconfig-a005
x86_64                        randconfig-a015
sh                               allmodconfig
i386                             allyesconfig
x86_64                        randconfig-a002
x86_64                          rhel-8.3-func
mips                             allyesconfig
i386                          randconfig-a014
x86_64                        randconfig-a006
i386                          randconfig-a012
i386                          randconfig-a016
arm64                            allyesconfig
arm                              allyesconfig
arc                  randconfig-r043-20221207
riscv                randconfig-r042-20221207
s390                 randconfig-r044-20221207
arm                          simpad_defconfig
mips                 decstation_r4k_defconfig
sh                          rsk7203_defconfig
arm                            hisi_defconfig
arm                         cm_x300_defconfig
arm                      jornada720_defconfig
powerpc                     sequoia_defconfig
x86_64                            allnoconfig
m68k                         amcore_defconfig
nios2                               defconfig
m68k                          amiga_defconfig
xtensa                    xip_kc705_defconfig
i386                          randconfig-c001
mips                     decstation_defconfig
sh                   sh7724_generic_defconfig
arc                      axs103_smp_defconfig
um                               alldefconfig
m68k                           sun3_defconfig
csky                                defconfig
ia64                        generic_defconfig
sh                           se7343_defconfig
mips                  decstation_64_defconfig

clang tested configs:
x86_64                        randconfig-a014
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a006
i386                          randconfig-a013
x86_64                        randconfig-a005
x86_64                        randconfig-a001
i386                          randconfig-a011
x86_64                        randconfig-a003
i386                          randconfig-a015
arm                  randconfig-r046-20221207
hexagon              randconfig-r041-20221207
hexagon              randconfig-r045-20221207
powerpc                 mpc832x_mds_defconfig
mips                           mtx1_defconfig
arm                          pxa168_defconfig
powerpc                     kmeter1_defconfig
powerpc                      walnut_defconfig
mips                        omega2p_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
