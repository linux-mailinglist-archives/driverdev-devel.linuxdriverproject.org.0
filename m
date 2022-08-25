Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F1F5A094B
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Aug 2022 08:58:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68B9441578;
	Thu, 25 Aug 2022 06:58:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68B9441578
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wHs5J1WpgCcd; Thu, 25 Aug 2022 06:58:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B44C3415D0;
	Thu, 25 Aug 2022 06:58:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B44C3415D0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7A6911BF373
 for <devel@linuxdriverproject.org>; Thu, 25 Aug 2022 06:58:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 61CAE40C0F
 for <devel@linuxdriverproject.org>; Thu, 25 Aug 2022 06:58:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 61CAE40C0F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FCoHUfUXYs0G for <devel@linuxdriverproject.org>;
 Thu, 25 Aug 2022 06:58:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6DD3B405E0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6DD3B405E0
 for <devel@driverdev.osuosl.org>; Thu, 25 Aug 2022 06:58:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="273916299"
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="273916299"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 23:58:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="855536909"
Received: from lkp-server02.sh.intel.com (HELO 34e741d32628) ([10.239.97.151])
 by fmsmga006.fm.intel.com with ESMTP; 24 Aug 2022 23:58:29 -0700
Received: from kbuild by 34e741d32628 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oR6ou-0001qq-1k;
 Thu, 25 Aug 2022 06:58:28 +0000
Date: Thu, 25 Aug 2022 14:57:48 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 0baf5866b34f5b1437e9edc04f0b5f8fe687b785
Message-ID: <63071d6c.cXQlUEKcm7sXY92f%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661410710; x=1692946710;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=QSab9VU8hRyj2WpFo6cnX2iqGfntFOypfl1vo+kqXnY=;
 b=g9xldGTuRmlHdsEWCnPQPRtKxf8L60GTaOwMShUkipjNg9UgLAKkpE9m
 +mSgVAURBJpoimES6sua3U42z7yn4Fn2+dvbXP+dCdzbpLrsogrOMIsfU
 o7ZZh2Nj/iockLheWRREn6Q213VQ7eWytHUy4zss65VXX0Eo8wwxM7L2Q
 7nI/CQI4xfY4+Ke8s3zOnaVSh1vxl59dwmN9PS7MLpPly1dOPawfK3qnS
 ncJRztJOm4LWbu+dAL6e7ev9U0apXGtccuarsm14zmFd95Sct7hSBFKhe
 b2GCe8KLckTzu3GBm97QRsbgbIIYhmAXeVE+NsWjx4DYZxYfVhNT4Pe8L
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=g9xldGTu
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
branch HEAD: 0baf5866b34f5b1437e9edc04f0b5f8fe687b785  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 904m

configs tested: 126
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
powerpc                           allnoconfig
um                           x86_64_defconfig
x86_64                        randconfig-a011
x86_64                              defconfig
i386                                defconfig
x86_64                               rhel-8.3
x86_64                        randconfig-a002
x86_64                           allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a004
x86_64                        randconfig-a015
x86_64                        randconfig-a006
i386                          randconfig-a001
arc                  randconfig-r043-20220824
sh                               allmodconfig
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a014
riscv                randconfig-r042-20220824
s390                 randconfig-r044-20220824
i386                          randconfig-a012
i386                             allyesconfig
i386                          randconfig-a016
mips                             allyesconfig
alpha                            allyesconfig
arm                                 defconfig
arc                              allyesconfig
loongarch                           defconfig
loongarch                         allnoconfig
arm64                            allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
arm                              allyesconfig
m68k                             allyesconfig
powerpc                          allmodconfig
m68k                             allmodconfig
sh                          r7780mp_defconfig
sh                        edosk7760_defconfig
sh                           se7751_defconfig
powerpc                      arches_defconfig
m68k                        stmark2_defconfig
powerpc                          allyesconfig
riscv                               defconfig
riscv                            allmodconfig
riscv                            allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
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
sh                          rsk7269_defconfig
m68k                                defconfig
s390                                defconfig
s390                             allmodconfig
arc                                 defconfig
alpha                               defconfig
s390                             allyesconfig
xtensa                         virt_defconfig
sh                   sh7724_generic_defconfig
powerpc                      makalu_defconfig
arm                            pleb_defconfig
sh                   secureedge5410_defconfig
sh                         ap325rxa_defconfig
xtensa                    smp_lx200_defconfig
sh                      rts7751r2d1_defconfig
i386                          randconfig-c001
arm64                               defconfig
arm                              allmodconfig
ia64                                defconfig
mips                             allmodconfig
ia64                          tiger_defconfig
sh                           se7721_defconfig
powerpc                      pcm030_defconfig
arc                    vdk_hs38_smp_defconfig
mips                    maltaup_xpa_defconfig
sh                         ecovec24_defconfig
um                                  defconfig
m68k                       m5249evb_defconfig
microblaze                      mmu_defconfig
arm                        realview_defconfig
ia64                             allmodconfig

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a002
x86_64                        randconfig-a005
hexagon              randconfig-r045-20220823
riscv                randconfig-r042-20220823
hexagon              randconfig-r041-20220823
s390                 randconfig-r044-20220823
hexagon              randconfig-r041-20220824
i386                          randconfig-a013
hexagon              randconfig-r045-20220824
i386                          randconfig-a004
i386                          randconfig-a011
i386                          randconfig-a006
i386                          randconfig-a015
x86_64                        randconfig-k001
powerpc                 mpc832x_rdb_defconfig
powerpc                    ge_imp3a_defconfig
powerpc                     tqm8540_defconfig
arm                      pxa255-idp_defconfig
powerpc                 mpc8560_ads_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
