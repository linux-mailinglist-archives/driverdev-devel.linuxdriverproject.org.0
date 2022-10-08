Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E3995F871F
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Oct 2022 21:35:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 42C34404EF;
	Sat,  8 Oct 2022 19:35:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 42C34404EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J0nhTRZ5awlX; Sat,  8 Oct 2022 19:35:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DEE864051D;
	Sat,  8 Oct 2022 19:35:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEE864051D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E2181BF239
 for <devel@linuxdriverproject.org>; Sat,  8 Oct 2022 19:35:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 72F3381AA7
 for <devel@linuxdriverproject.org>; Sat,  8 Oct 2022 19:35:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72F3381AA7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FP4OQwC2h3tU for <devel@linuxdriverproject.org>;
 Sat,  8 Oct 2022 19:35:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3C76E81A9C
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3C76E81A9C
 for <devel@driverdev.osuosl.org>; Sat,  8 Oct 2022 19:35:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10494"; a="305566301"
X-IronPort-AV: E=Sophos;i="5.95,170,1661842800"; d="scan'208";a="305566301"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2022 12:35:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10494"; a="767950867"
X-IronPort-AV: E=Sophos;i="5.95,170,1661842800"; d="scan'208";a="767950867"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 08 Oct 2022 12:35:14 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ohFbO-0000Ma-0G;
 Sat, 08 Oct 2022 19:35:14 +0000
Date: Sun, 09 Oct 2022 03:34:25 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const2] BUILD SUCCESS
 4db8532b97107b5eeed45cf8bc23d40554ea80e6
Message-ID: <6341d0c1.srBL6D5qQxXALmFI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665257717; x=1696793717;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=RpBDTGd/PK/rcSS3fuwsrhQChUfzSjv1MQKBS/BBgcM=;
 b=RIR4AfkFhrJYLzCXNnJ2DGYP9OltZisfsUkCs2/ltGEIL3+9BmtpM8Nh
 ZtPOjl/XcLxJxdQ3yM171zMc091HYJN8pV6ep8LAJPigt1OK3K4H7Ri6c
 aj5ev1Mhau9AAlY6k8CM59KG12Z3DRGOt0lvk83/isg8TzzOxoY/rYj2b
 2Vidll8L7m3EzbZvUKGNeQEVCrCsPYqQ2OlHQsN246mLSy0MTWn+25eaQ
 Jru5SO54l1tOlfvnLk6xu0x3UH05dOGdMSm53HUq2wYbQK64ABA1kjDB8
 uQBV+SpJIlag1Jl+NqbrznlBGGRldk/e8FxjqB+mQC559DX4cJEJZaVow
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RIR4AfkF
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const2
branch HEAD: 4db8532b97107b5eeed45cf8bc23d40554ea80e6  USB: allow some usb functions to take a const pointer.

elapsed time: 720m

configs tested: 94
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
x86_64                              defconfig
i386                 randconfig-a011-20221003
i386                 randconfig-a012-20221003
i386                 randconfig-a013-20221003
x86_64                          rhel-8.3-func
arc                                 defconfig
s390                             allmodconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-syz
alpha                               defconfig
x86_64                         rhel-8.3-kunit
i386                                defconfig
m68k                             allmodconfig
i386                 randconfig-a014-20221003
s390                                defconfig
arc                              allyesconfig
x86_64                           rhel-8.3-kvm
i386                 randconfig-a015-20221003
alpha                            allyesconfig
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
sh                               allmodconfig
i386                 randconfig-a016-20221003
powerpc                          allmodconfig
mips                             allyesconfig
s390                             allyesconfig
m68k                             allyesconfig
x86_64               randconfig-a011-20221003
x86_64               randconfig-a015-20221003
arm                                 defconfig
x86_64               randconfig-a014-20221003
x86_64               randconfig-a012-20221003
x86_64               randconfig-a013-20221003
csky                              allnoconfig
x86_64               randconfig-a016-20221003
arc                               allnoconfig
arm64                            allyesconfig
i386                             allyesconfig
alpha                             allnoconfig
arm                              allyesconfig
riscv                             allnoconfig
arm                           viper_defconfig
arm                           imxrt_defconfig
arm                            zeus_defconfig
nios2                            alldefconfig
powerpc                     taishan_defconfig
arm                       imx_v6_v7_defconfig
sh                          landisk_defconfig
powerpc                         wii_defconfig
riscv                randconfig-r042-20221007
arc                  randconfig-r043-20221007
riscv                randconfig-r042-20221003
arc                  randconfig-r043-20221008
arc                  randconfig-r043-20221003
arc                  randconfig-r043-20221002
s390                 randconfig-r044-20221007
s390                 randconfig-r044-20221003
ia64                             allmodconfig
arm                        realview_defconfig
powerpc                       maple_defconfig
sh                          polaris_defconfig
sh                     magicpanelr2_defconfig

clang tested configs:
i386                 randconfig-a004-20221003
i386                 randconfig-a003-20221003
i386                 randconfig-a002-20221003
i386                 randconfig-a001-20221003
i386                 randconfig-a006-20221003
i386                 randconfig-a005-20221003
x86_64               randconfig-a003-20221003
x86_64               randconfig-a002-20221003
x86_64               randconfig-a001-20221003
x86_64               randconfig-a004-20221003
x86_64               randconfig-a005-20221003
x86_64               randconfig-a006-20221003
powerpc                 mpc8315_rdb_defconfig
mips                       lemote2f_defconfig
powerpc                     pseries_defconfig
hexagon              randconfig-r041-20221003
riscv                randconfig-r042-20221002
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
arm                         hackkit_defconfig
powerpc                      obs600_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
