Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1D0765F33
	for <lists+driverdev-devel@lfdr.de>; Fri, 28 Jul 2023 00:19:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9E3BC41FE5;
	Thu, 27 Jul 2023 22:19:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9E3BC41FE5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4CJvpxIbQdvD; Thu, 27 Jul 2023 22:19:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03C2F41FD7;
	Thu, 27 Jul 2023 22:19:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03C2F41FD7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1919F1BF3D4
 for <devel@linuxdriverproject.org>; Thu, 27 Jul 2023 22:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E6AF184028
 for <devel@linuxdriverproject.org>; Thu, 27 Jul 2023 22:19:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6AF184028
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L5c5ncuESpZN for <devel@linuxdriverproject.org>;
 Thu, 27 Jul 2023 22:19:33 +0000 (UTC)
X-Greylist: delayed 424 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 27 Jul 2023 22:19:33 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C3E6B84021
Received: from mgamail.intel.com (unknown [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C3E6B84021
 for <devel@driverdev.osuosl.org>; Thu, 27 Jul 2023 22:19:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="365901860"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="365901860"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 15:12:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="797189922"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="797189922"
Received: from lkp-server02.sh.intel.com (HELO 953e8cd98f7d) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 27 Jul 2023 15:12:25 -0700
Received: from kbuild by 953e8cd98f7d with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qP9Dc-0002dB-2z;
 Thu, 27 Jul 2023 22:12:24 +0000
Date: Fri, 28 Jul 2023 06:12:05 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 5f1c7031e044cb2fba82836d55cc235e2ad619dc
Message-ID: <202307280603.hwKxFa53-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690496373; x=1722032373;
 h=date:from:to:cc:subject:message-id;
 bh=B6LJRbTkh1fzp+MSti5QpNStDnStWEcAz4frNjGgtes=;
 b=WbpMo6vGi+VngcijdmPHTG89Fny9avxA/VynGIaglzK76FTDKAZJrMxm
 dCP8PRUg+FYUAd8OL9K3CLG2gZr92g+5A0h/LnUilQcP3PEK589Cu8StP
 K5b1MyQY8YGjnt6hPMimv6CnJBP4H6NXG2BxNECmodJx6YdGXiyI5zZjI
 3tdLkG15toAYiZYRIBI8M7P4daJmGdDlgnc7J8MvwRfTfjKVymCuKso/d
 GvHE76/PRwc/sILBcwbpv1HCrjj4e7DcAlEWo8Sqm5qMNG3q9cjqKdJ15
 IkqpfAOFzYTqL33clRLIQUOK3MZkgKCJjlK6ytm+aJV3uKL3UcFfbpbO2
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WbpMo6vG
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-linus
branch HEAD: 5f1c7031e044cb2fba82836d55cc235e2ad619dc  staging: ks7010: potential buffer overflow in ks_wlan_set_encode_ext()

elapsed time: 724m

configs tested: 148
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r012-20230727   gcc  
alpha                randconfig-r014-20230727   gcc  
alpha                randconfig-r022-20230727   gcc  
alpha                randconfig-r023-20230727   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r013-20230727   gcc  
arc                  randconfig-r016-20230727   gcc  
arc                  randconfig-r022-20230727   gcc  
arc                  randconfig-r043-20230727   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                         axm55xx_defconfig   gcc  
arm                                 defconfig   gcc  
arm                          exynos_defconfig   gcc  
arm                  randconfig-r012-20230727   clang
arm                  randconfig-r046-20230727   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r024-20230727   gcc  
arm64                randconfig-r034-20230727   clang
csky                                defconfig   gcc  
csky                 randconfig-r011-20230727   gcc  
csky                 randconfig-r036-20230727   gcc  
hexagon              randconfig-r036-20230727   clang
hexagon              randconfig-r041-20230727   clang
hexagon              randconfig-r045-20230727   clang
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-r004-20230727   clang
i386         buildonly-randconfig-r005-20230727   clang
i386         buildonly-randconfig-r006-20230727   clang
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-i001-20230727   clang
i386                 randconfig-i002-20230727   clang
i386                 randconfig-i003-20230727   clang
i386                 randconfig-i004-20230727   clang
i386                 randconfig-i005-20230727   clang
i386                 randconfig-i006-20230727   clang
i386                 randconfig-i011-20230727   gcc  
i386                 randconfig-i012-20230727   gcc  
i386                 randconfig-i013-20230727   gcc  
i386                 randconfig-i014-20230727   gcc  
i386                 randconfig-i015-20230727   gcc  
i386                 randconfig-i016-20230727   gcc  
i386                 randconfig-r001-20230727   clang
i386                 randconfig-r003-20230727   clang
i386                 randconfig-r012-20230727   gcc  
i386                 randconfig-r032-20230727   clang
i386                 randconfig-r035-20230727   clang
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r014-20230727   gcc  
loongarch            randconfig-r034-20230727   gcc  
m68k                             allmodconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
m68k                       m5275evb_defconfig   gcc  
m68k                 randconfig-r002-20230727   gcc  
m68k                 randconfig-r021-20230727   gcc  
m68k                 randconfig-r026-20230727   gcc  
m68k                 randconfig-r031-20230727   gcc  
m68k                 randconfig-r033-20230727   gcc  
m68k                 randconfig-r034-20230727   gcc  
microblaze           randconfig-r011-20230727   gcc  
microblaze           randconfig-r013-20230727   gcc  
microblaze           randconfig-r025-20230727   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                           jazz_defconfig   gcc  
mips                 randconfig-r013-20230727   clang
mips                 randconfig-r032-20230727   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r005-20230727   gcc  
openrisc             randconfig-r011-20230727   gcc  
openrisc             randconfig-r014-20230727   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r026-20230727   gcc  
parisc               randconfig-r035-20230727   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                       holly_defconfig   gcc  
powerpc                    klondike_defconfig   gcc  
powerpc                      pasemi_defconfig   gcc  
powerpc                     rainier_defconfig   gcc  
powerpc              randconfig-r002-20230727   clang
powerpc                     stx_gp3_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                    nommu_k210_defconfig   gcc  
riscv                randconfig-r016-20230727   gcc  
riscv                randconfig-r042-20230727   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390                          debug_defconfig   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r001-20230727   clang
s390                 randconfig-r044-20230727   gcc  
sh                               allmodconfig   gcc  
sh                 kfr2r09-romimage_defconfig   gcc  
sh                   randconfig-r006-20230727   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r004-20230727   gcc  
sparc64              randconfig-r023-20230727   gcc  
sparc64              randconfig-r033-20230727   gcc  
sparc64              randconfig-r036-20230727   gcc  
um                               alldefconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                   randconfig-r032-20230727   gcc  
um                           x86_64_defconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-r001-20230727   clang
x86_64       buildonly-randconfig-r002-20230727   clang
x86_64       buildonly-randconfig-r003-20230727   clang
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-x001-20230727   gcc  
x86_64               randconfig-x002-20230727   gcc  
x86_64               randconfig-x003-20230727   gcc  
x86_64               randconfig-x004-20230727   gcc  
x86_64               randconfig-x005-20230727   gcc  
x86_64               randconfig-x006-20230727   gcc  
x86_64               randconfig-x011-20230727   clang
x86_64               randconfig-x012-20230727   clang
x86_64               randconfig-x013-20230727   clang
x86_64               randconfig-x014-20230727   clang
x86_64               randconfig-x015-20230727   clang
x86_64               randconfig-x016-20230727   clang
x86_64                           rhel-8.3-bpf   gcc  
x86_64                         rhel-8.3-kunit   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r001-20230727   gcc  
xtensa               randconfig-r003-20230727   gcc  
xtensa               randconfig-r015-20230727   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
