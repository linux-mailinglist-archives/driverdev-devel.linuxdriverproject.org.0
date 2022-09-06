Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54CF25ADCAF
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Sep 2022 02:52:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E89F0815CC;
	Tue,  6 Sep 2022 00:52:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E89F0815CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UJwYETU2usAk; Tue,  6 Sep 2022 00:52:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 74AB9815AB;
	Tue,  6 Sep 2022 00:52:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 74AB9815AB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D32E31BF9B4
 for <devel@linuxdriverproject.org>; Tue,  6 Sep 2022 00:52:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id BA310815CC
 for <devel@linuxdriverproject.org>; Tue,  6 Sep 2022 00:52:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BA310815CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UyWbYV-os0Lk for <devel@linuxdriverproject.org>;
 Tue,  6 Sep 2022 00:52:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B00E5815AB
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B00E5815AB
 for <devel@driverdev.osuosl.org>; Tue,  6 Sep 2022 00:52:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="358184466"
X-IronPort-AV: E=Sophos;i="5.93,292,1654585200"; d="scan'208";a="358184466"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 17:52:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,292,1654585200"; d="scan'208";a="647043748"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 05 Sep 2022 17:52:04 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oVMou-0004gf-0y;
 Tue, 06 Sep 2022 00:52:04 +0000
Date: Tue, 06 Sep 2022 08:51:06 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 fbd2f99d79d1040b736395ec5a42f2b3dbf3f8dd
Message-ID: <6316997a.SNFDuF8TLNyYahDS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662425526; x=1693961526;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=/IbjLwRKu8SSYmoRqS6TB8hbPDNAs5n9kNWYd6t/VmM=;
 b=EIJJFjd24+9Lwe7hqde6AIb5+T+2CTw5y7ynR/6/TrOGZAwb7rB60xMa
 6vbMfVUtYEWfOqCgksslC3DkVEWJPta7/N9XluR5hhjuoHpWPiz1UI7zs
 xcYQTBet+X9TZ+qQlf07n19M2kgQQ+Mn4hV6puLkRKf5OyENoAhpAPrYD
 jmdvrk2l+FqKdcQpA6tjahxBmn4A8gwac9esRB/hJpT2NgpNBC3KXT4X0
 FqP0+FJsiPIk+h8H5lzVlgc00mGUSNhtPH6kRIkSrfahqVmPY9UZ1Bb6P
 Y643lMOB7ykNqT3nPGwSnawAvw7Ih3Lkig6LMhZo784awTSavJy/ZuUQy
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EIJJFjd2
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
branch HEAD: fbd2f99d79d1040b736395ec5a42f2b3dbf3f8dd  readfile.2: new page describing readfile(2)

elapsed time: 726m

configs tested: 137
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
mips                             allyesconfig
arm                                 defconfig
powerpc                           allnoconfig
x86_64                              defconfig
arc                  randconfig-r043-20220905
x86_64                               rhel-8.3
powerpc                          allmodconfig
ia64                             allmodconfig
sh                               allmodconfig
x86_64                           allyesconfig
arm64                            allyesconfig
i386                             allyesconfig
i386                                defconfig
arm                              allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
m68k                        m5272c3_defconfig
powerpc                         ps3_defconfig
m68k                             alldefconfig
i386                 randconfig-a003-20220905
i386                 randconfig-a005-20220905
i386                 randconfig-a006-20220905
i386                 randconfig-a001-20220905
i386                 randconfig-a002-20220905
i386                 randconfig-a004-20220905
sh                           se7780_defconfig
sh                   sh7770_generic_defconfig
alpha                            alldefconfig
powerpc                      pasemi_defconfig
openrisc                    or1ksim_defconfig
x86_64               randconfig-a001-20220905
x86_64               randconfig-a006-20220905
x86_64               randconfig-a004-20220905
x86_64               randconfig-a003-20220905
x86_64               randconfig-a002-20220905
x86_64               randconfig-a005-20220905
m68k                          hp300_defconfig
arm                        realview_defconfig
arc                          axs103_defconfig
alpha                               defconfig
mips                     loongson1b_defconfig
mips                      loongson3_defconfig
arm                           h3600_defconfig
sh                        sh7757lcr_defconfig
arm                            hisi_defconfig
ia64                         bigsur_defconfig
sh                          r7780mp_defconfig
openrisc                 simple_smp_defconfig
sh                             sh03_defconfig
powerpc                      pcm030_defconfig
riscv                               defconfig
powerpc                     tqm8541_defconfig
arm                           corgi_defconfig
arm                      integrator_defconfig
sh                         ap325rxa_defconfig
arm                        spear6xx_defconfig
arm                          iop32x_defconfig
sh                         microdev_defconfig
arm                            lart_defconfig
sh                           se7721_defconfig
mips                  decstation_64_defconfig
arc                            hsdk_defconfig
i386                 randconfig-c001-20220905
s390                          debug_defconfig
arm                         vf610m4_defconfig
arc                        vdk_hs38_defconfig
mips                         bigsur_defconfig
arm                            zeus_defconfig
riscv                            allyesconfig
arm64                               defconfig
sh                            titan_defconfig
powerpc                       maple_defconfig
m68k                        m5407c3_defconfig
powerpc                     sequoia_defconfig
mips                            ar7_defconfig
xtensa                          iss_defconfig
arm                             pxa_defconfig
loongarch                        alldefconfig
powerpc                  storcenter_defconfig
powerpc                 mpc834x_itx_defconfig
sparc                            allyesconfig
sh                             shx3_defconfig
mips                           ip32_defconfig
sh                          sdk7780_defconfig
openrisc                            defconfig
arm                          pxa910_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
um                               alldefconfig
parisc                generic-32bit_defconfig
loongarch                 loongson3_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm                  randconfig-c002-20220905
x86_64               randconfig-c001-20220905

clang tested configs:
x86_64               randconfig-a012-20220905
x86_64               randconfig-a013-20220905
x86_64               randconfig-a011-20220905
x86_64               randconfig-a014-20220905
x86_64               randconfig-a016-20220905
x86_64               randconfig-a015-20220905
hexagon              randconfig-r045-20220905
hexagon              randconfig-r041-20220905
riscv                randconfig-r042-20220905
s390                 randconfig-r044-20220905
i386                 randconfig-a016-20220905
i386                 randconfig-a012-20220905
i386                 randconfig-a015-20220905
i386                 randconfig-a011-20220905
i386                 randconfig-a013-20220905
i386                 randconfig-a014-20220905
mips                       lemote2f_defconfig
arm                    vt8500_v6_v7_defconfig
mips                          ath25_defconfig
mips                           ip22_defconfig
arm                          moxart_defconfig
arm                         palmz72_defconfig
arm                        spear3xx_defconfig
powerpc                       ebony_defconfig
mips                      bmips_stb_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
