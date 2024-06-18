Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 697AE90C52B
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2024 11:07:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1256E81AC1;
	Tue, 18 Jun 2024 09:07:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nxMtZ0MpkwfK; Tue, 18 Jun 2024 09:07:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E98B3820FB
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E98B3820FB;
	Tue, 18 Jun 2024 09:07:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 58D161BF281
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2024 09:07:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4337460B50
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2024 09:07:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tgz3p9AP5qaC for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2024 09:07:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 1B63060B4B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B63060B4B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B63060B4B
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2024 09:07:42 +0000 (UTC)
X-CSE-ConnectionGUID: /iQVfuTdRmyjiGlKNNGNfw==
X-CSE-MsgGUID: CI+392uTTrmIQn6wPX2gXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="19383640"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="19383640"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 02:07:41 -0700
X-CSE-ConnectionGUID: cAiF+rseSHGmlNc3gkM+Fg==
X-CSE-MsgGUID: oOUsJI+OTQO6gt4e+6r/QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41410827"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa010.jf.intel.com with ESMTP; 18 Jun 2024 02:07:40 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sJUoU-0005Ls-11;
 Tue, 18 Jun 2024 09:07:38 +0000
Date: Tue, 18 Jun 2024 17:07:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 b5dd424181f33c2978562c64b286fc22cf5ef4bf
Message-ID: <202406181723.VHNSjSBN-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718701663; x=1750237663;
 h=date:from:to:cc:subject:message-id;
 bh=cQUxaLNhLNBdaRe3ZGKk5TrF4q879Nfer8Ihyg3zaC8=;
 b=k+s0cxEkYVOVocZUPdnCNn1U1I61JetFlo2o0JdJXuBNoxizEQ9JO6bH
 1X+OI139DNDR3rf+Iz+tXfvRz82tcoBnNtkIK+tEX21Are+I1GjHBjZmo
 RImTvxTnfRUft/mbNAT+iMfmfqYg/NMQDiZyssmc6Jynyld0iCjOiE0Uf
 3kxgk5T2C1v0WM+4q5G10wQqbYLlyUufxtvrQSLnv+4baIArHY1P5x/b/
 WLu/HJ8VuwHTnlGeFSpQuVdUUHMQg2ciQtPGzUdYP0QwpNx0/8m9QB1d/
 yBc/0JJGOKhHtf7CyL8W6lYWlj34bOTpLPG4IaRfmO5OffVAkqbzAG4kI
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=k+s0cxEk
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: b5dd424181f33c2978562c64b286fc22cf5ef4bf  Merge tag 'v6.10-rc4' into driver-core-next

elapsed time: 1584m

configs tested: 111
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                               defconfig   gcc-13.2.0
arc                        nsim_700_defconfig   gcc-13.2.0
arc                   randconfig-001-20240617   gcc-13.2.0
arc                   randconfig-002-20240617   gcc-13.2.0
arc                           tb10x_defconfig   gcc-13.2.0
arm                         at91_dt_defconfig   clang-19
arm                            dove_defconfig   gcc-13.2.0
arm                   milbeaut_m10v_defconfig   clang-16
arm                            mmp2_defconfig   gcc-13.2.0
arm                          pxa3xx_defconfig   clang-19
arm                   randconfig-001-20240617   clang-19
arm                   randconfig-002-20240617   clang-19
arm                   randconfig-003-20240617   gcc-13.2.0
arm                   randconfig-004-20240617   gcc-13.2.0
arm                         socfpga_defconfig   gcc-13.2.0
arm                       spear13xx_defconfig   gcc-13.2.0
arm64                 randconfig-001-20240617   clang-15
arm64                 randconfig-002-20240617   gcc-13.2.0
arm64                 randconfig-003-20240617   gcc-13.2.0
arm64                 randconfig-004-20240617   clang-15
csky                  randconfig-001-20240617   gcc-13.2.0
csky                  randconfig-002-20240617   gcc-13.2.0
hexagon               randconfig-001-20240617   clang-19
hexagon               randconfig-002-20240617   clang-14
i386         buildonly-randconfig-001-20240617   gcc-13
i386         buildonly-randconfig-002-20240617   gcc-9
i386         buildonly-randconfig-003-20240617   gcc-9
i386         buildonly-randconfig-004-20240617   clang-18
i386         buildonly-randconfig-005-20240617   clang-18
i386         buildonly-randconfig-006-20240617   clang-18
i386                  randconfig-001-20240617   clang-18
i386                  randconfig-002-20240617   clang-18
i386                  randconfig-003-20240617   gcc-11
i386                  randconfig-004-20240617   clang-18
i386                  randconfig-005-20240617   clang-18
i386                  randconfig-006-20240617   gcc-11
i386                  randconfig-011-20240617   clang-18
i386                  randconfig-012-20240617   gcc-13
i386                  randconfig-013-20240617   clang-18
i386                  randconfig-014-20240617   gcc-10
i386                  randconfig-015-20240617   gcc-13
i386                  randconfig-016-20240617   gcc-13
loongarch             randconfig-001-20240617   gcc-13.2.0
loongarch             randconfig-002-20240617   gcc-13.2.0
microblaze                      mmu_defconfig   gcc-13.2.0
mips                          ath79_defconfig   gcc-13.2.0
mips                  maltasmvp_eva_defconfig   gcc-13.2.0
mips                        maltaup_defconfig   clang-19
mips                           mtx1_defconfig   clang-16
mips                          rb532_defconfig   clang-19
nios2                 randconfig-001-20240617   gcc-13.2.0
nios2                 randconfig-002-20240617   gcc-13.2.0
parisc                randconfig-001-20240617   gcc-13.2.0
parisc                randconfig-002-20240617   gcc-13.2.0
powerpc                     asp8347_defconfig   clang-17
powerpc                    ge_imp3a_defconfig   gcc-13.2.0
powerpc                   lite5200b_defconfig   clang-14
powerpc                    mvme5100_defconfig   gcc-13.2.0
powerpc                      pmac32_defconfig   clang-19
powerpc               randconfig-001-20240617   clang-19
powerpc               randconfig-002-20240617   clang-19
powerpc               randconfig-003-20240617   clang-19
powerpc64             randconfig-001-20240617   clang-19
powerpc64             randconfig-002-20240617   gcc-13.2.0
powerpc64             randconfig-003-20240617   clang-19
riscv                 randconfig-001-20240617   gcc-13.2.0
riscv                 randconfig-002-20240617   gcc-13.2.0
s390                  randconfig-001-20240617   clang-17
s390                  randconfig-002-20240617   gcc-13.2.0
sh                     magicpanelr2_defconfig   gcc-13.2.0
sh                    randconfig-001-20240617   gcc-13.2.0
sh                    randconfig-002-20240617   gcc-13.2.0
sh                      rts7751r2d1_defconfig   gcc-13.2.0
sh                           se7206_defconfig   gcc-13.2.0
sh                           se7343_defconfig   gcc-13.2.0
sh                           se7751_defconfig   gcc-13.2.0
sh                   sh7724_generic_defconfig   gcc-13.2.0
sh                             shx3_defconfig   gcc-13.2.0
sparc                       sparc64_defconfig   gcc-13.2.0
sparc64               randconfig-001-20240617   gcc-13.2.0
sparc64               randconfig-002-20240617   gcc-13.2.0
um                    randconfig-001-20240617   clang-19
um                    randconfig-002-20240617   gcc-7
x86_64       buildonly-randconfig-001-20240617   gcc-13
x86_64       buildonly-randconfig-002-20240617   clang-18
x86_64       buildonly-randconfig-003-20240617   gcc-13
x86_64       buildonly-randconfig-004-20240617   gcc-13
x86_64       buildonly-randconfig-005-20240617   gcc-11
x86_64       buildonly-randconfig-006-20240617   clang-18
x86_64                randconfig-001-20240617   clang-18
x86_64                randconfig-002-20240617   gcc-8
x86_64                randconfig-003-20240617   gcc-13
x86_64                randconfig-004-20240617   clang-18
x86_64                randconfig-005-20240617   clang-18
x86_64                randconfig-006-20240617   gcc-13
x86_64                randconfig-011-20240617   clang-18
x86_64                randconfig-012-20240617   clang-18
x86_64                randconfig-013-20240617   clang-18
x86_64                randconfig-014-20240617   clang-18
x86_64                randconfig-015-20240617   clang-18
x86_64                randconfig-016-20240617   clang-18
x86_64                randconfig-071-20240617   gcc-9
x86_64                randconfig-072-20240617   clang-18
x86_64                randconfig-073-20240617   clang-18
x86_64                randconfig-074-20240617   clang-18
x86_64                randconfig-075-20240617   clang-18
x86_64                randconfig-076-20240617   gcc-13
xtensa                  cadence_csp_defconfig   gcc-13.2.0
xtensa                randconfig-001-20240617   gcc-13.2.0
xtensa                randconfig-002-20240617   gcc-13.2.0
xtensa                    smp_lx200_defconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
