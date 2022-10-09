Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E9B95F8946
	for <lists+driverdev-devel@lfdr.de>; Sun,  9 Oct 2022 05:58:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3390580D18;
	Sun,  9 Oct 2022 03:58:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3390580D18
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QnswI3XnTNZ5; Sun,  9 Oct 2022 03:58:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCFC980CDE;
	Sun,  9 Oct 2022 03:58:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCFC980CDE
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AB9491BF59A
 for <devel@linuxdriverproject.org>; Sun,  9 Oct 2022 03:58:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 858464097D
 for <devel@linuxdriverproject.org>; Sun,  9 Oct 2022 03:58:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 858464097D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MpWaB4XE1kMs for <devel@linuxdriverproject.org>;
 Sun,  9 Oct 2022 03:58:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E5C7740979
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E5C7740979
 for <devel@driverdev.osuosl.org>; Sun,  9 Oct 2022 03:58:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10494"; a="305035346"
X-IronPort-AV: E=Sophos;i="5.95,170,1661842800"; d="scan'208";a="305035346"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2022 20:58:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10494"; a="954528661"
X-IronPort-AV: E=Sophos;i="5.95,170,1661842800"; d="scan'208";a="954528661"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 08 Oct 2022 20:58:42 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ohNSb-0000kK-26;
 Sun, 09 Oct 2022 03:58:41 +0000
Date: Sun, 09 Oct 2022 11:58:24 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 d9486394c6129ccbcbe0ae4096e0517e669f2512
Message-ID: <634246e0.+uOWAoOFxQhS44ju%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665287924; x=1696823924;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=sBL3ptlRSAyv0dSnMxXTfFi3oGBL78cLrZi/waGgeu4=;
 b=kHWergbl1XvT2wJUlrT5gYie0hvdX+VBQZq0d09UkhrMZHgbXMRQOTcI
 8O9EdNWMBvc3eOyHdY7coiLKHrb8jVQnuQJv+1s0zg32Eu280YP4aB4ws
 izHVx+PIfcEHx4gHhaZ41+yQ73rGK55ZP6XQSNqjOJaNMMJVrJs6ajA4Z
 ofgxfDXD+oK+6VonMskCfGs6YLomE2iFrP7rwh367JGo683as1tSTkwql
 BD+zrOuPZp2rqalaqVTjsv1eal2/v2SPV4A2u/1Z4fcUyeGvxxCGukekc
 I5oVUpwiRITCQJ4f+A4g0MEFe2cd5DTKAbIBM7imEEzK6rwiZoZHVeNLl
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kHWergbl
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
branch HEAD: d9486394c6129ccbcbe0ae4096e0517e669f2512  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 726m

configs tested: 104
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
x86_64                        randconfig-a002
i386                                defconfig
alpha                               defconfig
x86_64                        randconfig-a006
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a004
x86_64                              defconfig
x86_64                    rhel-8.3-kselftests
x86_64                           allyesconfig
x86_64                           rhel-8.3-syz
x86_64                               rhel-8.3
arm                                 defconfig
s390                                defconfig
s390                             allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
riscv                randconfig-r042-20221007
i386                          randconfig-a005
arc                  randconfig-r043-20221007
i386                             allyesconfig
arc                  randconfig-r043-20221008
powerpc                      makalu_defconfig
x86_64                        randconfig-a013
powerpc                           allnoconfig
powerpc                       eiger_defconfig
m68k                             allmodconfig
s390                             allyesconfig
x86_64                        randconfig-a011
mips                          rb532_defconfig
arc                              allyesconfig
arc                               allnoconfig
mips                             allyesconfig
alpha                            allyesconfig
alpha                             allnoconfig
powerpc                          allmodconfig
sh                          rsk7264_defconfig
riscv                             allnoconfig
x86_64                        randconfig-a015
sh                               allmodconfig
m68k                             allyesconfig
csky                              allnoconfig
arm                              allyesconfig
s390                 randconfig-r044-20221007
ia64                             allmodconfig
arm64                            allyesconfig
arm                         assabet_defconfig
mips                           ip32_defconfig
xtensa                  cadence_csp_defconfig
arc                            hsdk_defconfig
m68k                           virt_defconfig
sparc                             allnoconfig
m68k                       m5208evb_defconfig
powerpc                     taishan_defconfig
powerpc                mpc7448_hpc2_defconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
m68k                        mvme147_defconfig
sh                            migor_defconfig
openrisc                    or1ksim_defconfig
loongarch                        allmodconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
i386                          randconfig-c001
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
hexagon              randconfig-r041-20221008
i386                          randconfig-a006
x86_64                        randconfig-a012
hexagon              randconfig-r045-20221008
i386                          randconfig-a004
powerpc                 mpc836x_rdk_defconfig
hexagon              randconfig-r045-20221007
riscv                randconfig-r042-20221008
hexagon              randconfig-r041-20221007
s390                 randconfig-r044-20221008
x86_64                        randconfig-a016
arm                             mxs_defconfig
x86_64                        randconfig-a014
powerpc                 mpc8313_rdb_defconfig
powerpc                 mpc832x_mds_defconfig
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-k001
mips                        omega2p_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
