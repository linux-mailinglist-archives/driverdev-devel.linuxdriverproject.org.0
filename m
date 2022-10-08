Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC125F8720
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Oct 2022 21:35:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ADEFD60BDD;
	Sat,  8 Oct 2022 19:35:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ADEFD60BDD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EiKYn-puv8tE; Sat,  8 Oct 2022 19:35:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 44627607F2;
	Sat,  8 Oct 2022 19:35:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 44627607F2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B42DD1BF966
 for <devel@linuxdriverproject.org>; Sat,  8 Oct 2022 19:35:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8BA8C409DB
 for <devel@linuxdriverproject.org>; Sat,  8 Oct 2022 19:35:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8BA8C409DB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AjD-BFFfBESF for <devel@linuxdriverproject.org>;
 Sat,  8 Oct 2022 19:35:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 47BE740936
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 47BE740936
 for <devel@driverdev.osuosl.org>; Sat,  8 Oct 2022 19:35:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10494"; a="390277238"
X-IronPort-AV: E=Sophos;i="5.95,170,1661842800"; d="scan'208";a="390277238"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2022 12:35:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10494"; a="658719190"
X-IronPort-AV: E=Sophos;i="5.95,170,1661842800"; d="scan'208";a="658719190"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 08 Oct 2022 12:35:14 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ohFbO-0000Mc-0R;
 Sat, 08 Oct 2022 19:35:14 +0000
Date: Sun, 09 Oct 2022 03:34:14 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 5a436f5da6f44dbf4ee4e32ca337c0c268a3d3e4
Message-ID: <6341d0b6.BKH8+VE/M1tSUYPQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665257717; x=1696793717;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=FlQen2v+TXfYJ+w0VIxtTZ8bXDx+xPN00TiCjwJegOE=;
 b=ErdmPgTt7fs+t7fNU7ovIzmjQuP9UvZv7sfeXtVDHUz1mFpsGMM+2+dw
 yUbJYhq3qNkNNC09ljsLooxZiScqOhBdFBlnoLUf3mFJw8/iptuQjw8Z9
 vltIT8E2l1CCw2WOML+gLLYdMVRJ8zAd09Md8NxT07gbO/Kf+D8t0iCMZ
 PB8tnsQoOVG8nryK7lFpQ3g618AtSTq4wPHAebEaUkdyk5DZK5r67zuVq
 DW7bUKjj3r1il8bwH6YRK8ZCbd8MFIbHmMrfZf40ih1xv1qlMRR0PRXFU
 KnzPnKEjkDTgh2tL6f4HLQr/l+Z4BnhfGApswd6Z1m9nXbooxDpZ4zeUp
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ErdmPgTt
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_lookup_fix
branch HEAD: 5a436f5da6f44dbf4ee4e32ca337c0c268a3d3e4  kernel/time/test_udelay.c: debugfs_lookup() fix

elapsed time: 721m

configs tested: 119
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
arm                                 defconfig
x86_64                         rhel-8.3-kunit
i386                                defconfig
x86_64                              defconfig
x86_64               randconfig-a011-20221003
x86_64               randconfig-a012-20221003
x86_64                          rhel-8.3-func
x86_64               randconfig-a013-20221003
x86_64                    rhel-8.3-kselftests
arc                                 defconfig
x86_64                               rhel-8.3
alpha                               defconfig
sh                               allmodconfig
arm                              allyesconfig
mips                             allyesconfig
s390                             allmodconfig
i386                             allyesconfig
x86_64                           allyesconfig
x86_64               randconfig-a015-20221003
powerpc                          allmodconfig
i386                 randconfig-a011-20221003
s390                                defconfig
arm64                            allyesconfig
x86_64               randconfig-a014-20221003
i386                 randconfig-a012-20221003
x86_64               randconfig-a016-20221003
i386                 randconfig-a013-20221003
i386                 randconfig-a015-20221003
i386                 randconfig-a016-20221003
i386                 randconfig-a014-20221003
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
s390                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
riscv                randconfig-r042-20221007
arc                  randconfig-r043-20221007
riscv                randconfig-r042-20221003
m68k                             allyesconfig
arc                  randconfig-r043-20221008
arc                  randconfig-r043-20221003
sh                          r7780mp_defconfig
ia64                                defconfig
arm                          badge4_defconfig
arc                  randconfig-r043-20221002
s390                 randconfig-r044-20221007
s390                 randconfig-r044-20221003
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
ia64                             allmodconfig
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
x86_64               randconfig-a002-20221003
x86_64               randconfig-a001-20221003
x86_64               randconfig-a004-20221003
x86_64               randconfig-a006-20221003
x86_64               randconfig-a005-20221003
i386                 randconfig-a004-20221003
arm                        mvebu_v5_defconfig
s390                             alldefconfig
i386                 randconfig-a003-20221003
i386                 randconfig-a002-20221003
hexagon              randconfig-r041-20221003
riscv                randconfig-r042-20221002
i386                 randconfig-a001-20221003
hexagon              randconfig-r041-20221002
s390                 randconfig-r044-20221002
hexagon              randconfig-r041-20221008
i386                 randconfig-a005-20221003
hexagon              randconfig-r045-20221002
hexagon              randconfig-r045-20221008
i386                 randconfig-a006-20221003
hexagon              randconfig-r045-20221007
riscv                randconfig-r042-20221008
hexagon              randconfig-r041-20221007
x86_64                        randconfig-k001
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
