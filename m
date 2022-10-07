Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29A565F7E79
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Oct 2022 22:07:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 06575403A7;
	Fri,  7 Oct 2022 20:07:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 06575403A7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J_5Nf04oIpog; Fri,  7 Oct 2022 20:07:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7EB51400D1;
	Fri,  7 Oct 2022 20:07:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7EB51400D1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 31C211BF350
 for <devel@linuxdriverproject.org>; Fri,  7 Oct 2022 20:07:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0CBCF60A7D
 for <devel@linuxdriverproject.org>; Fri,  7 Oct 2022 20:07:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0CBCF60A7D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HugwFm8RSKks for <devel@linuxdriverproject.org>;
 Fri,  7 Oct 2022 20:07:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BABBC60A69
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BABBC60A69
 for <devel@driverdev.osuosl.org>; Fri,  7 Oct 2022 20:07:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="305407916"
X-IronPort-AV: E=Sophos;i="5.95,167,1661842800"; d="scan'208";a="305407916"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 13:07:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="693916190"
X-IronPort-AV: E=Sophos;i="5.95,167,1661842800"; d="scan'208";a="693916190"
Received: from lkp-server01.sh.intel.com (HELO 3c15167049b7) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 07 Oct 2022 13:07:00 -0700
Received: from kbuild by 3c15167049b7 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ogtca-0001Tp-0B;
 Fri, 07 Oct 2022 20:07:00 +0000
Date: Sat, 08 Oct 2022 04:06:45 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 e24e53711d76de64b331bd774a6288fcea81e034
Message-ID: <634086d5.vGXYBh50HYVioK/o%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665173222; x=1696709222;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=jILnLdvj6cYfIFeIz+jGHv2Ik9GxoRZ9QXdBgKTUicA=;
 b=Ye2z7COwwpwExWrxg7PqbAYCVe465xksoVntWCyYv3V1N8o6MtWTCdvo
 KD95UXv/VugU6ttonu1Nlibtqp+UezOt9ZgTB8TGa5JO35U2Wewe80MtG
 2hprt6Tp1XYpYWoHixG9qPm2SRUoP9IOHWW8GFZbhYt7GTs/l9U/9HnlS
 xZTy9oOuumOq6Kro/lA9wWLOOeb8mRiaQj4+zHNqZzYy9KgR+PmIy06J+
 xDV1R1d1oghbwCKVax43BRWfjbYFhqh8P7lsEUJaPHhfWH0kn+qqQf0R6
 qP274afqoB1LCkrd8qFQ4nLHDq051w0LEXPd5FrrUggsDQet9SCTtJGQB
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ye2z7COw
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
branch HEAD: e24e53711d76de64b331bd774a6288fcea81e034  kobject: kset_uevent_ops: make uevent() callback take a const *

elapsed time: 727m

configs tested: 161
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
s390                             allmodconfig
s390                                defconfig
i386                             allyesconfig
i386                                defconfig
s390                             allyesconfig
i386                 randconfig-a011-20221003
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
powerpc                 mpc85xx_cds_defconfig
sh                            migor_defconfig
powerpc                      tqm8xx_defconfig
powerpc                     tqm8555_defconfig
nios2                            alldefconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                 randconfig-a012-20221003
arc                              allyesconfig
i386                 randconfig-a013-20221003
alpha                            allyesconfig
i386                 randconfig-a015-20221003
m68k                             allyesconfig
i386                 randconfig-a016-20221003
m68k                             allmodconfig
i386                 randconfig-a014-20221003
powerpc                           allnoconfig
powerpc                          allmodconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
mips                             allyesconfig
sh                               allmodconfig
powerpc                        warp_defconfig
powerpc                      makalu_defconfig
csky                             alldefconfig
arc                      axs103_smp_defconfig
mips                            gpr_defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64               randconfig-a011-20221003
x86_64               randconfig-a016-20221003
x86_64               randconfig-a014-20221003
x86_64               randconfig-a013-20221003
x86_64               randconfig-a012-20221003
x86_64               randconfig-a015-20221003
ia64                             allmodconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
riscv                randconfig-r042-20221007
riscv                randconfig-r042-20221003
arc                  randconfig-r043-20221003
arc                  randconfig-r043-20221002
arc                  randconfig-r043-20221007
s390                 randconfig-r044-20221003
s390                 randconfig-r044-20221007
powerpc                  storcenter_defconfig
powerpc                     mpc83xx_defconfig
mips                  maltasmvp_eva_defconfig
arm                         s3c6400_defconfig
mips                     loongson1b_defconfig
powerpc                     asp8347_defconfig
arm                  randconfig-c002-20221002
x86_64                        randconfig-c001
i386                          randconfig-c001
m68k                          hp300_defconfig
arm                        keystone_defconfig
sh                           se7751_defconfig
sh                         ap325rxa_defconfig
powerpc                  iss476-smp_defconfig
sparc                            alldefconfig
m68k                        stmark2_defconfig
arm                        clps711x_defconfig
arm                      integrator_defconfig
powerpc                     sequoia_defconfig
mips                        bcm47xx_defconfig
sparc64                             defconfig
mips                      loongson3_defconfig
microblaze                          defconfig
arm64                            alldefconfig
openrisc                    or1ksim_defconfig
sh                              ul2_defconfig
arc                          axs101_defconfig
xtensa                              defconfig
openrisc                 simple_smp_defconfig
mips                 randconfig-c004-20221002
powerpc                       eiger_defconfig
sh                           se7619_defconfig
riscv                            allyesconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc                           allyesconfig
xtensa                         virt_defconfig
powerpc                    adder875_defconfig
powerpc                      pcm030_defconfig
riscv                            allmodconfig
mips                       bmips_be_defconfig
powerpc                     ep8248e_defconfig
sh                  sh7785lcr_32bit_defconfig
sparc64                          alldefconfig
sh                        dreamcast_defconfig
s390                          debug_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
um                               alldefconfig
sh                          kfr2r09_defconfig
mips                         db1xxx_defconfig
powerpc                    klondike_defconfig
arm                        oxnas_v6_defconfig
arm                       imx_v6_v7_defconfig
powerpc                         wii_defconfig
powerpc                     taishan_defconfig
sh                          landisk_defconfig
arm                           viper_defconfig

clang tested configs:
powerpc                   microwatt_defconfig
mips                malta_qemu_32r6_defconfig
powerpc                      obs600_defconfig
arm                       cns3420vb_defconfig
x86_64               randconfig-a003-20221003
x86_64               randconfig-a005-20221003
x86_64               randconfig-a001-20221003
x86_64               randconfig-a004-20221003
x86_64               randconfig-a002-20221003
x86_64               randconfig-a006-20221003
i386                 randconfig-a001-20221003
i386                 randconfig-a006-20221003
i386                 randconfig-a002-20221003
i386                 randconfig-a003-20221003
i386                 randconfig-a005-20221003
i386                 randconfig-a004-20221003
x86_64                        randconfig-k001
powerpc                   bluestone_defconfig
powerpc                          g5_defconfig
powerpc                      pmac32_defconfig
arm                                 defconfig
powerpc                      ppc44x_defconfig
arm                          collie_defconfig
arm                     am200epdkit_defconfig
powerpc                    gamecube_defconfig
mips                          ath79_defconfig
mips                           mtx1_defconfig
mips                     cu1830-neo_defconfig
powerpc                        fsp2_defconfig
powerpc                     tqm8560_defconfig
arm                          pxa168_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
powerpc                 mpc832x_mds_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
