Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 034A558B021
	for <lists+driverdev-devel@lfdr.de>; Fri,  5 Aug 2022 20:58:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 904F58261C;
	Fri,  5 Aug 2022 18:58:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 904F58261C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iBRuv4mpiExw; Fri,  5 Aug 2022 18:58:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4CFA58132E;
	Fri,  5 Aug 2022 18:58:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4CFA58132E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 695721BF3A3
 for <devel@linuxdriverproject.org>; Fri,  5 Aug 2022 18:58:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 447428132E
 for <devel@linuxdriverproject.org>; Fri,  5 Aug 2022 18:58:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 447428132E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0O3cfqNYqXTf for <devel@linuxdriverproject.org>;
 Fri,  5 Aug 2022 18:58:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 589AA81287
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 589AA81287
 for <devel@driverdev.osuosl.org>; Fri,  5 Aug 2022 18:58:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10430"; a="289026112"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="289026112"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2022 11:58:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="671787982"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 05 Aug 2022 11:58:30 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oK2Wj-000Jel-1x;
 Fri, 05 Aug 2022 18:58:29 +0000
Date: Sat, 06 Aug 2022 02:57:39 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 1c901ede976a22c518a216392a22dabd8ef37ce3
Message-ID: <62ed6823.vBML8XDYCYdOSwaD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659725912; x=1691261912;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ki7gv+9lJoDSRAXGO5y3KrxK3vZqNIsA99CxK8Xnv+A=;
 b=gRYyGXouslSHVm5QlebGaEmnzqEABHJztTS4AhjquObuZ2cVIYETMiTr
 oTPsklLZoWSxiQzzllnilOliok4tu9u5CJ8AGPV222/NQtVdxK9THM9zW
 UKxeB9LD+H/dd085EVUYnwQsWnM+UAjy9Ry/KqqrCtGeJgSZFiAI3cOWR
 Ng+fmBgNf751FxFFynLGPHaCUfEFq0yj0kfZChfe/Qaf0bZYSA+++VTeI
 n+gcHdgs1oLaBuem/+186NOHbS1rHFaSCG1ReCTN/0vwRva48BAVjbl9J
 T6NiqGzi0rF5NRs4VkAvnbgNPnvPtGQkaxZA7IC1hbd6QBZIELk4ZAGy1
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gRYyGXou
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
branch HEAD: 1c901ede976a22c518a216392a22dabd8ef37ce3  HID: vivaldi: convert to use dev_groups

elapsed time: 717m

configs tested: 76
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                                defconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a002
m68k                             allyesconfig
x86_64                        randconfig-a011
i386                          randconfig-a001
x86_64                        randconfig-a004
i386                          randconfig-a003
x86_64                        randconfig-a015
x86_64                              defconfig
sh                               allmodconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
s390                 randconfig-r044-20220805
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
arc                               allnoconfig
x86_64                           rhel-8.3-kvm
alpha                             allnoconfig
riscv                             allnoconfig
csky                              allnoconfig
arc                        nsim_700_defconfig
openrisc                 simple_smp_defconfig
powerpc                    amigaone_defconfig
mips                            ar7_defconfig
sh                          landisk_defconfig
loongarch                        alldefconfig
powerpc                     tqm8541_defconfig
sh                            shmin_defconfig
arm                         vf610m4_defconfig
powerpc                       holly_defconfig
i386                             allyesconfig
powerpc                 mpc8540_ads_defconfig
sh                             sh03_defconfig
powerpc                      pcm030_defconfig
sh                         microdev_defconfig
arc                      axs103_smp_defconfig
arc                  randconfig-r043-20220805
riscv                randconfig-r042-20220805
arm                         s3c6400_defconfig
xtensa                  cadence_csp_defconfig
riscv                    nommu_k210_defconfig
powerpc                           allnoconfig
x86_64                        randconfig-a006
mips                             allyesconfig
powerpc                          allmodconfig
i386                          randconfig-c001
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
loongarch                           defconfig
loongarch                         allnoconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
sh                        edosk7760_defconfig
powerpc                     asp8347_defconfig

clang tested configs:
x86_64                        randconfig-a014
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a016
x86_64                        randconfig-a012
powerpc                 mpc8313_rdb_defconfig
arm                          ep93xx_defconfig
mips                       rbtx49xx_defconfig
arm                   milbeaut_m10v_defconfig
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
