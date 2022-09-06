Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B8A65ADCAE
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Sep 2022 02:51:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7331B410B9;
	Tue,  6 Sep 2022 00:51:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7331B410B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ow86b7VuR2oc; Tue,  6 Sep 2022 00:51:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BE4EB410C2;
	Tue,  6 Sep 2022 00:51:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE4EB410C2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0474B1BF9B4
 for <devel@linuxdriverproject.org>; Tue,  6 Sep 2022 00:51:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CA9FD410AD
 for <devel@linuxdriverproject.org>; Tue,  6 Sep 2022 00:51:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CA9FD410AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wYdRMc1ttseB for <devel@linuxdriverproject.org>;
 Tue,  6 Sep 2022 00:51:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6124A410B9
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6124A410B9
 for <devel@driverdev.osuosl.org>; Tue,  6 Sep 2022 00:51:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="360419260"
X-IronPort-AV: E=Sophos;i="5.93,292,1654585200"; d="scan'208";a="360419260"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 17:51:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,292,1654585200"; d="scan'208";a="703024485"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Sep 2022 17:51:04 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oVMnw-0004gS-0m;
 Tue, 06 Sep 2022 00:51:04 +0000
Date: Tue, 06 Sep 2022 08:51:02 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 5a6af051d188a70c4b7ea9dfc12b4704c09c19dd
Message-ID: <63169976.LtUdeuAoVHGfbTto%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662425467; x=1693961467;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=6EOeSsMt+Lxhp/LYX1cyGtU8F8msY9RE1K5JuvDcoyE=;
 b=AdMGOPvSJ/oSQW6UjVLwYHNNnKfksUcxx1sH2FHkwuAOhAyBLrG9hz7S
 bJRGV7cvg0mA7o+POf/xp6MzCcmBrYUaAaK4pruWYikIVl9P0tcA/+DLf
 bFf5PYZ7mF1BlbuYVwbrG2OJyeyK31ta4HdWNTArCGr7rn2PJcyWoQAHg
 0AIIjyEwq97VIUJGJAEZKzMBcbRui+7MRMNb80RLDvFGrHbUuVhYr3Zdb
 PDXZ1NM2NTk9jY5F8VNbVDKk9CdyBbq5QBBR2OMSiFnOQpNYe1Z5AyZjr
 jGI30orPaXyWi+xWWvXdei/WV0HKtbyvx3o290xrQ6EeCKjZHe36cMUG9
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AdMGOPvS
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
branch HEAD: 5a6af051d188a70c4b7ea9dfc12b4704c09c19dd  kernel/time/test_udelay.c: debugfs_lookup() fix

elapsed time: 727m

configs tested: 137
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                              allyesconfig
powerpc                           allnoconfig
alpha                            allyesconfig
mips                             allyesconfig
m68k                             allmodconfig
powerpc                          allmodconfig
m68k                             allyesconfig
sh                               allmodconfig
x86_64                              defconfig
arm                                 defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
arc                  randconfig-r043-20220905
i386                             allyesconfig
i386                                defconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
arm                              allyesconfig
arm64                            allyesconfig
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
ia64                             allmodconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm                  randconfig-c002-20220905
x86_64               randconfig-c001-20220905

clang tested configs:
riscv                randconfig-r042-20220905
hexagon              randconfig-r041-20220905
hexagon              randconfig-r045-20220905
s390                 randconfig-r044-20220905
x86_64               randconfig-a014-20220905
x86_64               randconfig-a011-20220905
x86_64               randconfig-a016-20220905
x86_64               randconfig-a012-20220905
x86_64               randconfig-a015-20220905
x86_64               randconfig-a013-20220905
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
