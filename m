Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 59443701AE6
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 May 2023 02:03:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 07B5860B00;
	Sun, 14 May 2023 00:03:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07B5860B00
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oq_ii1H_2JmQ; Sun, 14 May 2023 00:03:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8830D6059B;
	Sun, 14 May 2023 00:03:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8830D6059B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D29561BF30D
 for <devel@linuxdriverproject.org>; Sun, 14 May 2023 00:03:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A89A083F9A
 for <devel@linuxdriverproject.org>; Sun, 14 May 2023 00:03:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A89A083F9A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id COhEGLg0RtpK for <devel@linuxdriverproject.org>;
 Sun, 14 May 2023 00:03:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3826383F89
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3826383F89
 for <devel@driverdev.osuosl.org>; Sun, 14 May 2023 00:03:20 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10709"; a="349838781"
X-IronPort-AV: E=Sophos;i="5.99,273,1677571200"; d="scan'208";a="349838781"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2023 17:03:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10709"; a="703541566"
X-IronPort-AV: E=Sophos;i="5.99,273,1677571200"; d="scan'208";a="703541566"
Received: from lkp-server01.sh.intel.com (HELO dea6d5a4f140) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 13 May 2023 17:03:18 -0700
Received: from kbuild by dea6d5a4f140 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pxzCn-0005k6-32;
 Sun, 14 May 2023 00:03:17 +0000
Date: Sun, 14 May 2023 08:02:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 1f3413dc8eb0de023c5ec5994aef8225262d0f19
Message-ID: <20230514000236.wEZlU%lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684022601; x=1715558601;
 h=date:from:to:cc:subject:message-id;
 bh=RsOauZFLUVjlny2bGTzUNBUepk4JefDA2DCoHNDLfUc=;
 b=CfM5KVDkG90fqg4jmSBYVoQgqUaQnkrmLFKQmXTGmlq4OyQMnQA3h+xd
 OAwYKXomDyHy4GxZ4iBWrwGTtPhGMJuSCi+5t6JWb0xCwjKcjGlC+1GHa
 WsytnI9ha5Hf95TgzLExrmofwijWLL9FYhaoR8//SCP0qhLp8LoMiQOB5
 PvOWMgTbvpa0lcn1c0SQXBuYZ93Y5gN/qk0nzBdmp1lHsR+bl9cAtGyGC
 rmWEC+eKzUcgkhK1Xc+pN/e/C11n0BhK/MXvs5993aLuHWhQ6Jzx+b0wB
 qljFx8K8n0TZpuSWAu3NnNHEtAF+ze2+416AUHJdxvIenJkRzOs5vb2uK
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CfM5KVDk
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 1f3413dc8eb0de023c5ec5994aef8225262d0f19  staging: rtl8192e: Refactor tmp_ofdm_index variable assignment

elapsed time: 730m

configs tested: 186
configs skipped: 15

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r006-20230513   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230513   gcc  
alpha                randconfig-r011-20230509   gcc  
alpha                randconfig-r026-20230511   gcc  
alpha                randconfig-r035-20230511   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r003-20230509   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r005-20230513   gcc  
arc                  randconfig-r015-20230513   gcc  
arc                  randconfig-r036-20230509   gcc  
arc                  randconfig-r043-20230509   gcc  
arc                  randconfig-r043-20230511   gcc  
arc                  randconfig-r043-20230513   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                           imxrt_defconfig   gcc  
arm                         mv78xx0_defconfig   clang
arm                       omap2plus_defconfig   gcc  
arm                         orion5x_defconfig   clang
arm                  randconfig-r005-20230511   gcc  
arm                  randconfig-r016-20230509   gcc  
arm                  randconfig-r046-20230509   gcc  
arm                  randconfig-r046-20230511   clang
arm                  randconfig-r046-20230513   clang
arm                         s3c6400_defconfig   gcc  
arm                        spear3xx_defconfig   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r006-20230509   gcc  
arm64                randconfig-r012-20230513   gcc  
arm64                randconfig-r022-20230511   gcc  
arm64                randconfig-r023-20230509   clang
arm64                randconfig-r025-20230511   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r004-20230509   gcc  
csky                 randconfig-r004-20230513   gcc  
csky                 randconfig-r025-20230513   gcc  
hexagon              randconfig-r014-20230513   clang
hexagon              randconfig-r021-20230509   clang
hexagon              randconfig-r024-20230512   clang
hexagon              randconfig-r032-20230511   clang
hexagon              randconfig-r041-20230509   clang
hexagon              randconfig-r041-20230511   clang
hexagon              randconfig-r041-20230513   clang
hexagon              randconfig-r045-20230509   clang
hexagon              randconfig-r045-20230511   clang
hexagon              randconfig-r045-20230513   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r023-20230513   gcc  
loongarch            randconfig-r026-20230509   gcc  
loongarch            randconfig-r031-20230513   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r001-20230509   gcc  
m68k         buildonly-randconfig-r002-20230511   gcc  
m68k         buildonly-randconfig-r003-20230513   gcc  
m68k                                defconfig   gcc  
m68k                        mvme16x_defconfig   gcc  
m68k                 randconfig-r001-20230511   gcc  
m68k                 randconfig-r006-20230511   gcc  
m68k                 randconfig-r012-20230509   gcc  
m68k                 randconfig-r021-20230511   gcc  
m68k                 randconfig-r026-20230513   gcc  
m68k                 randconfig-r034-20230509   gcc  
microblaze                      mmu_defconfig   gcc  
microblaze           randconfig-r013-20230509   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                            ar7_defconfig   gcc  
mips                      loongson3_defconfig   gcc  
mips                malta_qemu_32r6_defconfig   clang
mips                        qi_lb60_defconfig   clang
mips                 randconfig-r015-20230509   gcc  
mips                 randconfig-r032-20230513   gcc  
nios2        buildonly-randconfig-r003-20230511   gcc  
nios2        buildonly-randconfig-r004-20230513   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r003-20230513   gcc  
nios2                randconfig-r022-20230513   gcc  
nios2                randconfig-r024-20230509   gcc  
nios2                randconfig-r033-20230509   gcc  
nios2                randconfig-r036-20230513   gcc  
openrisc             randconfig-r022-20230512   gcc  
openrisc             randconfig-r033-20230511   gcc  
parisc       buildonly-randconfig-r001-20230511   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r006-20230513   gcc  
parisc               randconfig-r035-20230509   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                     asp8347_defconfig   gcc  
powerpc                   bluestone_defconfig   clang
powerpc      buildonly-randconfig-r005-20230511   gcc  
powerpc      buildonly-randconfig-r005-20230513   gcc  
powerpc                    mvme5100_defconfig   clang
powerpc                      pcm030_defconfig   gcc  
powerpc              randconfig-r013-20230513   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r006-20230509   clang
riscv                               defconfig   gcc  
riscv                randconfig-r003-20230511   clang
riscv                randconfig-r023-20230511   gcc  
riscv                randconfig-r024-20230513   gcc  
riscv                randconfig-r026-20230512   clang
riscv                randconfig-r036-20230511   clang
riscv                randconfig-r042-20230509   clang
riscv                randconfig-r042-20230511   gcc  
riscv                randconfig-r042-20230513   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r001-20230513   gcc  
s390         buildonly-randconfig-r004-20230509   clang
s390                                defconfig   gcc  
s390                 randconfig-r022-20230509   clang
s390                 randconfig-r031-20230511   clang
s390                 randconfig-r044-20230509   clang
s390                 randconfig-r044-20230511   gcc  
s390                 randconfig-r044-20230513   gcc  
sh                               allmodconfig   gcc  
sh                         apsh4a3a_defconfig   gcc  
sh                          r7780mp_defconfig   gcc  
sh                   randconfig-r014-20230509   gcc  
sh                   randconfig-r016-20230513   gcc  
sh                   randconfig-r025-20230509   gcc  
sh                   randconfig-r032-20230509   gcc  
sh                   randconfig-r034-20230513   gcc  
sh                   randconfig-r035-20230513   gcc  
sh                           se7722_defconfig   gcc  
sh                        sh7763rdp_defconfig   gcc  
sparc        buildonly-randconfig-r002-20230509   gcc  
sparc        buildonly-randconfig-r005-20230509   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r033-20230513   gcc  
sparc64      buildonly-randconfig-r006-20230511   gcc  
sparc64              randconfig-r025-20230512   gcc  
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r004-20230511   gcc  
xtensa                  nommu_kc705_defconfig   gcc  
xtensa               randconfig-r004-20230511   gcc  
xtensa               randconfig-r023-20230512   gcc  
xtensa               randconfig-r024-20230511   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
