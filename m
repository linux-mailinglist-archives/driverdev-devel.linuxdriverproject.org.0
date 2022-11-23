Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 094D1635795
	for <lists+driverdev-devel@lfdr.de>; Wed, 23 Nov 2022 10:46:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 612F060B8B;
	Wed, 23 Nov 2022 09:46:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 612F060B8B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wdSG29TYbJ0Z; Wed, 23 Nov 2022 09:46:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 14F3A60B46;
	Wed, 23 Nov 2022 09:46:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 14F3A60B46
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 068CA1BF853
 for <devel@linuxdriverproject.org>; Wed, 23 Nov 2022 09:46:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D607C409E9
 for <devel@linuxdriverproject.org>; Wed, 23 Nov 2022 09:46:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D607C409E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z2j6YnbWM9mo for <devel@linuxdriverproject.org>;
 Wed, 23 Nov 2022 09:46:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E92BE40BB5
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E92BE40BB5
 for <devel@driverdev.osuosl.org>; Wed, 23 Nov 2022 09:46:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="297386678"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="297386678"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2022 01:46:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10539"; a="816423174"
X-IronPort-AV: E=Sophos;i="5.96,187,1665471600"; d="scan'208";a="816423174"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 23 Nov 2022 01:46:07 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oxmKV-0002Zp-0o;
 Wed, 23 Nov 2022 09:46:07 +0000
Date: Wed, 23 Nov 2022 17:45:33 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 9f041c5d8296b3a04cf3ead473a124fb538490dc
Message-ID: <637debbd.Z2SsDdPf3s571bZS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669196769; x=1700732769;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=JdPnrQUYzrLpA2rO2xK9SyhT+1dWa3++v/GhWxvbfUs=;
 b=PM+OEre/HKsXRa4KWcrKI42CvBPshw2UwZUnNd5YIAwU9uUajQTcRqlj
 cTO6vh5tNZK1KG/M03LnZiUBWx0bZ1yE+SxHWAI9Og9M1XsfHDJIL+vHI
 h7CbETcq8VWMsGGbx8axe6I0y626JsrlSbDtz5d/VDgL0pnDLl7Bd4dvl
 vSknvYQYfRakTYDdn/+k3ZQ3+1XwqmUfKoZ7MFemRrR+YA11cvnllKM0G
 mbBnhz53CJ/XnCTMfMh3xcpZtUE7ynJBHOKRRldfX68VYNgw1rofp+rYl
 kf044mNyhiyEMW7xjeN2tY0kYLa8sNnZOB5WKv4FjE7vVdvaiiPnR3/WY
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PM+OEre/
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 9f041c5d8296b3a04cf3ead473a124fb538490dc  driver core: pass a const * into of_device_uevent()

elapsed time: 1024m

configs tested: 99
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
arc                                 defconfig
s390                             allmodconfig
sh                               allmodconfig
alpha                               defconfig
s390                                defconfig
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
x86_64                         rhel-8.3-kunit
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
s390                             allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                            allnoconfig
i386                             allyesconfig
i386                                defconfig
sh                              ul2_defconfig
sh                           se7780_defconfig
m68k                                defconfig
sh                          sdk7780_defconfig
ia64                             allmodconfig
x86_64               randconfig-a011-20221121
x86_64               randconfig-a014-20221121
x86_64               randconfig-a012-20221121
x86_64               randconfig-a013-20221121
x86_64               randconfig-a016-20221121
x86_64               randconfig-a015-20221121
i386                 randconfig-a014-20221121
i386                 randconfig-a011-20221121
i386                 randconfig-a013-20221121
i386                 randconfig-a016-20221121
i386                 randconfig-a012-20221121
i386                 randconfig-a015-20221121
sh                   rts7751r2dplus_defconfig
m68k                        m5307c3_defconfig
openrisc                    or1ksim_defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
s390                 randconfig-r044-20221121
riscv                randconfig-r042-20221121
arc                  randconfig-r043-20221120
arc                  randconfig-r043-20221121
i386                          randconfig-c001
arm                                 defconfig
arm                              allyesconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm                           sunxi_defconfig
sh                         ap325rxa_defconfig
arm                          simpad_defconfig
powerpc                  iss476-smp_defconfig
sh                             espt_defconfig
arc                    vdk_hs38_smp_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm64                            allyesconfig
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig

clang tested configs:
x86_64                        randconfig-k001
powerpc                    gamecube_defconfig
x86_64               randconfig-a002-20221121
x86_64               randconfig-a001-20221121
x86_64               randconfig-a004-20221121
x86_64               randconfig-a006-20221121
x86_64               randconfig-a005-20221121
x86_64               randconfig-a003-20221121
i386                 randconfig-a001-20221121
i386                 randconfig-a005-20221121
i386                 randconfig-a006-20221121
i386                 randconfig-a004-20221121
i386                 randconfig-a003-20221121
i386                 randconfig-a002-20221121
powerpc                 mpc832x_rdb_defconfig
mips                     cu1000-neo_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
