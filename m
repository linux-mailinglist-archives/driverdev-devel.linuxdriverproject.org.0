Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACEC5F1D31
	for <lists+driverdev-devel@lfdr.de>; Sat,  1 Oct 2022 17:27:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 705B141778;
	Sat,  1 Oct 2022 15:27:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 705B141778
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Yon4-mfRrwoq; Sat,  1 Oct 2022 15:27:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DD654417AF;
	Sat,  1 Oct 2022 15:27:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DD654417AF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1BE4D1BF355
 for <devel@linuxdriverproject.org>; Sat,  1 Oct 2022 15:27:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id EBB2A405FD
 for <devel@linuxdriverproject.org>; Sat,  1 Oct 2022 15:27:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EBB2A405FD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ujUznuut533r for <devel@linuxdriverproject.org>;
 Sat,  1 Oct 2022 15:27:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B49A4400BB
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B49A4400BB
 for <devel@driverdev.osuosl.org>; Sat,  1 Oct 2022 15:27:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="303878506"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="303878506"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2022 08:27:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10487"; a="600748833"
X-IronPort-AV: E=Sophos;i="5.93,361,1654585200"; d="scan'208";a="600748833"
Received: from lkp-server01.sh.intel.com (HELO 14cc182da2d0) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 01 Oct 2022 08:27:37 -0700
Received: from kbuild by 14cc182da2d0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oeeOu-0002Nx-0z;
 Sat, 01 Oct 2022 15:27:36 +0000
Date: Sat, 01 Oct 2022 23:27:32 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 4256e500f61922a3e59c7ecb6a11aab972d41b18
Message-ID: <63385c64.0S+6qOf/CEUM7R8e%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664638067; x=1696174067;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=agUJmcskPr7f4hVYYrLHUilWin83yN+UnHA1K1ahREs=;
 b=Ew55IgwFaoPXdU1PnEkXbsl7D/i8sURp1vEL7Y8oimDw23BbBMeR0JCC
 T1kddZRqNQ9I4iTG5Vc19ZFkk3rMri2wTmNlSg3od+29Ro7jhqHnh3kAh
 ylngGZwkDRURfRgRaCllpgI3qa0KIgewrCd27h81EtQqT7CBuYHpsfZTv
 ymU0HYzFepIe7jdjXOhHQ8m5aHKROfHLsVVl3xPWWmFZ0cD3Z+xqK9IAU
 cHfewdIIOIfd4Xr+AIOGFUQvK/4AOxrtkK8yA0CfiVZFeFiBXex0BeE4Y
 BhVdLl4T93qPOrp4Km5cL/BwTn+QWf6pWw7hzAYAXg++6sTkNhGCXQUg0
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ew55IgwF
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 4256e500f61922a3e59c7ecb6a11aab972d41b18  staging: rtl8192e: Rename variable Bandwidth to avoid CamelCase

elapsed time: 1581m

configs tested: 141
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
arc                                 defconfig
alpha                               defconfig
x86_64                              defconfig
s390                             allmodconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
s390                                defconfig
x86_64                    rhel-8.3-kselftests
i386                                defconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
s390                             allyesconfig
m68k                             allmodconfig
alpha                            allyesconfig
x86_64                           allyesconfig
arc                              allyesconfig
m68k                             allyesconfig
x86_64               randconfig-a002-20220926
x86_64               randconfig-a004-20220926
x86_64               randconfig-a001-20220926
arm                                 defconfig
x86_64               randconfig-a003-20220926
x86_64               randconfig-a006-20220926
x86_64               randconfig-a005-20220926
i386                 randconfig-a001-20220926
i386                 randconfig-a002-20220926
i386                 randconfig-a003-20220926
arc                  randconfig-r043-20220925
i386                 randconfig-a006-20220926
i386                 randconfig-a004-20220926
arm                              allyesconfig
i386                 randconfig-a005-20220926
riscv                randconfig-r042-20220925
arm64                            allyesconfig
arc                  randconfig-r043-20220926
s390                 randconfig-r044-20220925
i386                             allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
m68k                       m5249evb_defconfig
riscv                               defconfig
sh                   sh7770_generic_defconfig
mips                           ip32_defconfig
arm                             ezx_defconfig
powerpc                     ep8248e_defconfig
powerpc                     taishan_defconfig
arm                        shmobile_defconfig
ia64                                defconfig
xtensa                          iss_defconfig
arm                            mps2_defconfig
i386                          randconfig-c001
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
powerpc                        warp_defconfig
parisc                           allyesconfig
arc                      axs103_smp_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220925
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm                           h5000_defconfig
m68k                          atari_defconfig
powerpc                      chrp32_defconfig
sh                        edosk7705_defconfig
arm                         lpc18xx_defconfig
arm                       aspeed_g5_defconfig
mips                  maltasmvp_eva_defconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
riscv                randconfig-r042-20220927
arc                  randconfig-r043-20220927
s390                 randconfig-r044-20220927
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
powerpc                       ppc64_defconfig
arm                           sunxi_defconfig
powerpc                     rainier_defconfig
sh                 kfr2r09-romimage_defconfig
riscv                randconfig-r042-20221001
arc                  randconfig-r043-20221001
s390                 randconfig-r044-20221001
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
ia64                             allmodconfig

clang tested configs:
x86_64               randconfig-a013-20220926
x86_64               randconfig-a011-20220926
x86_64               randconfig-a015-20220926
x86_64               randconfig-a012-20220926
hexagon              randconfig-r045-20220925
hexagon              randconfig-r041-20220926
x86_64               randconfig-a014-20220926
x86_64               randconfig-a016-20220926
hexagon              randconfig-r045-20220926
hexagon              randconfig-r041-20220925
riscv                randconfig-r042-20220926
s390                 randconfig-r044-20220926
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
i386                 randconfig-a011-20220926
i386                 randconfig-a015-20220926
i386                 randconfig-a014-20220926
i386                 randconfig-a012-20220926
i386                 randconfig-a013-20220926
i386                 randconfig-a016-20220926
arm                          moxart_defconfig
arm                         mv78xx0_defconfig
x86_64                        randconfig-k001
riscv                    nommu_virt_defconfig
powerpc                        icon_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
arm                          pxa168_defconfig
powerpc                 mpc832x_mds_defconfig
powerpc                          allyesconfig
mips                     loongson1c_defconfig
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
