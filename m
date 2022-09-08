Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 475825B1583
	for <lists+driverdev-devel@lfdr.de>; Thu,  8 Sep 2022 09:20:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 139DC61203;
	Thu,  8 Sep 2022 07:20:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 139DC61203
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AY1lRMP2eYNc; Thu,  8 Sep 2022 07:20:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BD8FD60AB5;
	Thu,  8 Sep 2022 07:20:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BD8FD60AB5
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 04B281BF2AA
 for <devel@linuxdriverproject.org>; Thu,  8 Sep 2022 07:20:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D1D384182F
 for <devel@linuxdriverproject.org>; Thu,  8 Sep 2022 07:20:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D1D384182F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HScfv9fXyWnv for <devel@linuxdriverproject.org>;
 Thu,  8 Sep 2022 07:20:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 14D4D4182D
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 14D4D4182D
 for <devel@driverdev.osuosl.org>; Thu,  8 Sep 2022 07:20:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="297897734"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="297897734"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 00:19:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="565834193"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 08 Sep 2022 00:19:55 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oWBpK-0007Tn-2f;
 Thu, 08 Sep 2022 07:19:54 +0000
Date: Thu, 08 Sep 2022 15:19:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 6ea3bf466ac6ad6c0ee1ad4e80d77d62e5e11c7a
Message-ID: <63199798.wLuaPJDFhfEC+O03%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662621618; x=1694157618;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=nOwQjAY9t2Vw9Q9dvOVwFvfAgmuaKYL5V1Os87DzRm4=;
 b=lZcWHAbGp5jUFNJSqex9b9pYne04qNwEmZUkgb7bLbo36FP2a7QNv4s1
 Otzz1DFPrTUjEoJuLj0xGIDEFox10G/3dXXlIdRTr3AeSdl3yyGi28n6y
 CCCVQ/E5gSig/SWBAhRzJTUziTd8n8rL5uY2nHRP9BWCyP8+EDoXpAmKg
 m8ajM3q7QV9LwQcheiDUnPkTBmvp0H88TY5E3lvV6f0ayUlBu/xhOyPTd
 Enfw3Atm7HNREQpjpqoIVmPwrqEa73vuzsvhllunMhxljviPEeBtfah2X
 XfWtksMaZ6XouAogIFPPQw6tgvyjMPQyNmqKgqefWX+u+u7xVjWEcxXis
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lZcWHAbG
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 6ea3bf466ac6ad6c0ee1ad4e80d77d62e5e11c7a  dyndbg: test DECLARE_DYNDBG_CLASSMAP, sysfs nodes

elapsed time: 969m

configs tested: 130
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
arc                  randconfig-r043-20220907
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
powerpc                           allnoconfig
x86_64                               rhel-8.3
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                           allyesconfig
x86_64                        randconfig-a011
i386                             allyesconfig
x86_64                        randconfig-a015
x86_64                        randconfig-a004
sh                               allmodconfig
x86_64                        randconfig-a002
m68k                             allmodconfig
mips                             allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
arc                              allyesconfig
powerpc                          allmodconfig
alpha                            allyesconfig
m68k                             allyesconfig
sparc                             allnoconfig
arm                        cerfcube_defconfig
powerpc                      arches_defconfig
openrisc                 simple_smp_defconfig
powerpc                     asp8347_defconfig
arm                          pxa3xx_defconfig
arm                         s3c6400_defconfig
powerpc                     stx_gp3_defconfig
arm64                            alldefconfig
sh                           se7722_defconfig
x86_64                        randconfig-a006
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
sh                             sh03_defconfig
sh                           se7750_defconfig
s390                             allmodconfig
xtensa                       common_defconfig
i386                          randconfig-c001
csky                                defconfig
sparc                            alldefconfig
loongarch                           defconfig
loongarch                         allnoconfig
sparc                               defconfig
um                                  defconfig
sh                            titan_defconfig
arm                            mps2_defconfig
sh                     sh7710voipgw_defconfig
i386                             alldefconfig
powerpc                     ep8248e_defconfig
m68k                          hp300_defconfig
m68k                        m5272c3_defconfig
arm                          exynos_defconfig
ia64                          tiger_defconfig
arc                              alldefconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
sh                          r7785rp_defconfig
arm                          iop32x_defconfig
powerpc                     mpc83xx_defconfig
xtensa                generic_kc705_defconfig
arm                        clps711x_defconfig
arc                           tb10x_defconfig
powerpc                       eiger_defconfig
sh                          r7780mp_defconfig
arm                            qcom_defconfig
riscv                randconfig-r042-20220908
arc                  randconfig-r043-20220908
s390                 randconfig-r044-20220908
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
powerpc                         wii_defconfig
xtensa                  cadence_csp_defconfig
m68k                       m5275evb_defconfig
sh                         ap325rxa_defconfig
ia64                             allmodconfig
xtensa                           allyesconfig
sparc                            allyesconfig
x86_64                                  kexec
microblaze                          defconfig
powerpc                        cell_defconfig
parisc64                         alldefconfig

clang tested configs:
hexagon              randconfig-r041-20220907
hexagon              randconfig-r045-20220907
s390                 randconfig-r044-20220907
riscv                randconfig-r042-20220907
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a016
i386                          randconfig-a013
x86_64                        randconfig-a014
x86_64                        randconfig-a001
i386                          randconfig-a011
powerpc                     tqm8540_defconfig
arm                           spitz_defconfig
x86_64                        randconfig-a003
i386                          randconfig-a015
x86_64                        randconfig-a005
powerpc                 mpc8315_rdb_defconfig
mips                           ip22_defconfig
x86_64                        randconfig-k001
powerpc                     akebono_defconfig
mips                      malta_kvm_defconfig
arm                    vt8500_v6_v7_defconfig
arm                      pxa255-idp_defconfig
s390                             alldefconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
