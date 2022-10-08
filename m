Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 17EF25F8721
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Oct 2022 21:35:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CB19E40936;
	Sat,  8 Oct 2022 19:35:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CB19E40936
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dMlLEIOJaU4F; Sat,  8 Oct 2022 19:35:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26CF04092B;
	Sat,  8 Oct 2022 19:35:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26CF04092B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C2D8F1BF239
 for <devel@linuxdriverproject.org>; Sat,  8 Oct 2022 19:35:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A54F9409E6
 for <devel@linuxdriverproject.org>; Sat,  8 Oct 2022 19:35:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A54F9409E6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yc183Hh2CVnw for <devel@linuxdriverproject.org>;
 Sat,  8 Oct 2022 19:35:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E6FF4092B
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3E6FF4092B
 for <devel@driverdev.osuosl.org>; Sat,  8 Oct 2022 19:35:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10494"; a="330431296"
X-IronPort-AV: E=Sophos;i="5.95,170,1661842800"; d="scan'208";a="330431296"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2022 12:35:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10494"; a="625535454"
X-IronPort-AV: E=Sophos;i="5.95,170,1661842800"; d="scan'208";a="625535454"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 08 Oct 2022 12:35:14 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ohFbO-0000Mf-0X;
 Sat, 08 Oct 2022 19:35:14 +0000
Date: Sun, 09 Oct 2022 03:34:21 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 d172cd6fa2a2111918e6824a801c8590cdb62ba3
Message-ID: <6341d0bd.qltSIEXvRhOGhxh/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665257717; x=1696793717;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=xtVPWHv1qyxKc0MGf/2jr0a684az2e1Ts04KUNS0gdQ=;
 b=XkFfGfrtS+9Kgw4kk3gQ0HbC9FiL4zyBBJ7PjXF/IfhosayI1KQjrE+E
 mV6Zonj9Y2EwiXbz9qnb8wRnzlnPUdIRwZcHteztB2LmbpixBBPTPFgyp
 d6vSZgMQsnHWteIUOAWqqi0xkxlJuqbuDU+iqGzrw7++uAGwa2ZErLWDN
 sceCk/xKD1Bppmz5pEL2ZHnEm/kB4KEQIAgEWukk4zte3Khz6kfSGeFQs
 2r9xmiP/AZjKjOB/dWavXYl8ZRn0NFfnkH6LiX99M/5k9UdIH19R1kb9F
 LhyHTHL3vCd/pZ566r6L6tyvx2K5u+Id6XWvdtQEbavDgJXTXcCli+kZf
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XkFfGfrt
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
branch HEAD: d172cd6fa2a2111918e6824a801c8590cdb62ba3  kobject: kset_uevent_ops: make uevent() callback take a const *

elapsed time: 720m

configs tested: 117
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
i386                                defconfig
x86_64                              defconfig
arm                                 defconfig
i386                 randconfig-a014-20221003
m68k                             allmodconfig
sh                               allmodconfig
x86_64                          rhel-8.3-func
i386                 randconfig-a011-20221003
x86_64                    rhel-8.3-kselftests
mips                             allyesconfig
i386                 randconfig-a012-20221003
arc                              allyesconfig
alpha                            allyesconfig
x86_64                           rhel-8.3-syz
arc                                 defconfig
arm64                            allyesconfig
x86_64                               rhel-8.3
x86_64                         rhel-8.3-kunit
s390                             allmodconfig
arm                              allyesconfig
i386                 randconfig-a013-20221003
x86_64                           rhel-8.3-kvm
powerpc                          allmodconfig
x86_64                           allyesconfig
alpha                               defconfig
m68k                             allyesconfig
s390                                defconfig
i386                 randconfig-a015-20221003
i386                 randconfig-a016-20221003
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
i386                             allyesconfig
s390                             allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
riscv                randconfig-r042-20221003
sh                          r7780mp_defconfig
ia64                                defconfig
arm                          badge4_defconfig
arc                  randconfig-r043-20221008
arc                  randconfig-r043-20221003
ia64                             allmodconfig
arc                  randconfig-r043-20221002
s390                 randconfig-r044-20221003
i386                          randconfig-c001
mips                 randconfig-c004-20221002
riscv                randconfig-r042-20221007
arc                  randconfig-r043-20221007
s390                 randconfig-r044-20221007
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

clang tested configs:
x86_64               randconfig-a003-20221003
i386                 randconfig-a003-20221003
x86_64               randconfig-a002-20221003
i386                 randconfig-a002-20221003
x86_64               randconfig-a001-20221003
i386                 randconfig-a001-20221003
x86_64               randconfig-a004-20221003
x86_64               randconfig-a006-20221003
x86_64               randconfig-a005-20221003
i386                 randconfig-a004-20221003
i386                 randconfig-a005-20221003
i386                 randconfig-a006-20221003
arm                        mvebu_v5_defconfig
s390                             alldefconfig
hexagon              randconfig-r041-20221003
x86_64                        randconfig-a016
riscv                randconfig-r042-20221002
x86_64                        randconfig-a012
hexagon              randconfig-r041-20221002
s390                 randconfig-r044-20221002
x86_64                        randconfig-a014
hexagon              randconfig-r041-20221008
x86_64                        randconfig-k001
hexagon              randconfig-r045-20221002
hexagon              randconfig-r045-20221008
riscv                randconfig-r042-20221008
hexagon              randconfig-r045-20221003
s390                 randconfig-r044-20221008
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
