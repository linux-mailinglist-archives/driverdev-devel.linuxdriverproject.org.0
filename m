Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 49E955ADCB2
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Sep 2022 02:52:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1FFF660A97;
	Tue,  6 Sep 2022 00:52:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1FFF660A97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ERzqfYpfP7qP; Tue,  6 Sep 2022 00:52:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B14D860A74;
	Tue,  6 Sep 2022 00:52:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B14D860A74
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D542B1BF9BA
 for <devel@linuxdriverproject.org>; Tue,  6 Sep 2022 00:52:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BD3B760A97
 for <devel@linuxdriverproject.org>; Tue,  6 Sep 2022 00:52:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD3B760A97
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5o8rlSJ09jz0 for <devel@linuxdriverproject.org>;
 Tue,  6 Sep 2022 00:52:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C3EE960A74
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C3EE960A74
 for <devel@driverdev.osuosl.org>; Tue,  6 Sep 2022 00:52:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="283464447"
X-IronPort-AV: E=Sophos;i="5.93,292,1654585200"; d="scan'208";a="283464447"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 17:52:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,292,1654585200"; d="scan'208";a="616530391"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by fmsmga007.fm.intel.com with ESMTP; 05 Sep 2022 17:52:04 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oVMou-0004gc-0v;
 Tue, 06 Sep 2022 00:52:04 +0000
Date: Tue, 06 Sep 2022 08:51:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 c2e406596571659451f4b95e37ddfd5a8ef1d0dc
Message-ID: <63169984.QfZc0xyG3PCAwtv7%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662425526; x=1693961526;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=898adfv0YI81M2S94WhCvII1LbaPpyvrTfsA+j0ngz8=;
 b=mCnhPnx38hM82eAGD0Y20xAY32QvT8Qp5E4szA0QbIv4fj8WG1z/nt9o
 ZWxOkr/FOiO5FufszOVyoS7gSzHoNEKgfvpBOFRaE0iFFl4+OnW6B1eCa
 Z6pVZ/bfERWnPDGV16x/Ii51bdnLmExdPU5GTXqRDnE1Mh4cSh4dWRVQN
 +32byz6bzHZSxBpLbNe2RdRj523ggVXG+84cspP7HIKiBL0Mz83EjNwGb
 mXIfKzqr1NdjDxXsGNGfA9shkcw8oGAPEHP8JR0ov0esE9Gqmo0qXiXPR
 wTVX3HHu1THQtnyV+2LdNv6HlEGSDfGTYrBg/XBxLwRpyzoEhVLWwy+0J
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mCnhPnx3
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-linus
branch HEAD: c2e406596571659451f4b95e37ddfd5a8ef1d0dc  sched/debug: fix dentry leak in update_sched_domain_debugfs

elapsed time: 727m

configs tested: 137
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220905
m68k                             allmodconfig
x86_64                              defconfig
i386                                defconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
arc                              allyesconfig
sh                               allmodconfig
x86_64                               rhel-8.3
alpha                            allyesconfig
x86_64                           allyesconfig
mips                             allyesconfig
i386                 randconfig-a003-20220905
m68k                             allyesconfig
i386                 randconfig-a001-20220905
i386                 randconfig-a002-20220905
arm                                 defconfig
x86_64               randconfig-a003-20220905
i386                 randconfig-a005-20220905
x86_64               randconfig-a002-20220905
i386                 randconfig-a006-20220905
x86_64               randconfig-a004-20220905
i386                 randconfig-a004-20220905
x86_64               randconfig-a001-20220905
x86_64               randconfig-a005-20220905
x86_64               randconfig-a006-20220905
i386                             allyesconfig
ia64                             allmodconfig
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
sh                           se7780_defconfig
sh                   sh7770_generic_defconfig
alpha                            alldefconfig
powerpc                      pasemi_defconfig
openrisc                    or1ksim_defconfig
arm64                            allyesconfig
arm                              allyesconfig
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
hexagon              randconfig-r045-20220905
hexagon              randconfig-r041-20220905
s390                 randconfig-r044-20220905
riscv                randconfig-r042-20220905
x86_64               randconfig-a012-20220905
x86_64               randconfig-a016-20220905
x86_64               randconfig-a015-20220905
x86_64               randconfig-a014-20220905
x86_64               randconfig-a013-20220905
i386                 randconfig-a012-20220905
i386                 randconfig-a011-20220905
x86_64               randconfig-a011-20220905
i386                 randconfig-a013-20220905
i386                 randconfig-a014-20220905
i386                 randconfig-a016-20220905
i386                 randconfig-a015-20220905
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
