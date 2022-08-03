Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F349C5886B6
	for <lists+driverdev-devel@lfdr.de>; Wed,  3 Aug 2022 07:17:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 72DF2405F4;
	Wed,  3 Aug 2022 05:16:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72DF2405F4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6F7J5gDCM5CB; Wed,  3 Aug 2022 05:16:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1D88B40139;
	Wed,  3 Aug 2022 05:16:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1D88B40139
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E3E461BF34C
 for <devel@linuxdriverproject.org>; Wed,  3 Aug 2022 05:16:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BECD060E3C
 for <devel@linuxdriverproject.org>; Wed,  3 Aug 2022 05:16:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BECD060E3C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PNo7oQBqu0NN for <devel@linuxdriverproject.org>;
 Wed,  3 Aug 2022 05:16:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8112360B85
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8112360B85
 for <devel@driverdev.osuosl.org>; Wed,  3 Aug 2022 05:16:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="272632918"
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="272632918"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 22:16:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,213,1654585200"; d="scan'208";a="692111243"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Aug 2022 22:16:50 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oJ6kT-000Grj-1k;
 Wed, 03 Aug 2022 05:16:49 +0000
Date: Wed, 03 Aug 2022 13:16:21 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 14f379913ec39505799aa1f0766b8e02a48b824e
Message-ID: <62ea04a5.YyLeycFDK9P58YMq%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659503812; x=1691039812;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=tDk0NMDwykCojJTVasgZbpVfiW0z1BTbXIIci6P0He8=;
 b=QiFM8EUpSTmwdmid78WKJHRvoVPeRW4QzThwZKwEuYYdNjfvFq69qaVr
 WSf/fBzSjryODtt+Mx+wDDc4lplAG6UVXgwuil3OD2SdEsva8q2fkmpAl
 RA/UwL2LXCLq+5/56l6BZimIE9pSVXh6RlF1lvLmiLA925RVIBNLwEKF6
 mJbZn2gsmSfov9XAmX9Yd41qG5yBMxR4KZBWu09t0D6CcWZFXFbpmWTh4
 nsSJqxXCbzxiammnnDR/s8fsjU0EDI7vUDrWFRESUwImaMJ7zTydYqiCp
 GkADQlK3o35scycpezGsrLlrlG7IPQ5We7HDtAU/CxVeej2nTqLYBRdy+
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QiFM8EUp
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
branch HEAD: 14f379913ec39505799aa1f0766b8e02a48b824e  driver core: remove devm_device_add_groups() and devm_device_remove_groups()

elapsed time: 712m

configs tested: 86
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                                defconfig
powerpc                           allnoconfig
arc                              allyesconfig
powerpc                          allmodconfig
alpha                            allyesconfig
i386                             allyesconfig
m68k                             allyesconfig
mips                             allyesconfig
x86_64                    rhel-8.3-kselftests
arm                                 defconfig
arc                  randconfig-r043-20220801
m68k                             allmodconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
s390                 randconfig-r044-20220801
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
x86_64               randconfig-a014-20220801
arm                              allyesconfig
arm64                            allyesconfig
riscv                randconfig-r042-20220801
x86_64               randconfig-a015-20220801
x86_64               randconfig-a011-20220801
x86_64                           rhel-8.3-syz
x86_64               randconfig-a012-20220801
x86_64               randconfig-a013-20220801
x86_64               randconfig-a016-20220801
ia64                             allmodconfig
i386                 randconfig-a012-20220801
i386                 randconfig-a013-20220801
i386                 randconfig-a011-20220801
i386                 randconfig-a015-20220801
i386                 randconfig-a016-20220801
i386                 randconfig-a014-20220801
sh                            hp6xx_defconfig
alpha                               defconfig
riscv                    nommu_k210_defconfig
sh                   sh7724_generic_defconfig
alpha                             allnoconfig
xtensa                generic_kc705_defconfig
csky                              allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
arm                       imx_v6_v7_defconfig
parisc                              defconfig
arc                        vdk_hs38_defconfig
mips                            ar7_defconfig
xtensa                         virt_defconfig
powerpc                      makalu_defconfig
m68k                          atari_defconfig
powerpc                      tqm8xx_defconfig
sh                           se7712_defconfig
powerpc                 mpc85xx_cds_defconfig
arc                      axs103_smp_defconfig
x86_64               randconfig-k001-20220801
i386                 randconfig-c001-20220801
loongarch                           defconfig
loongarch                         allnoconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm                       omap2plus_defconfig
sh                         apsh4a3a_defconfig
nios2                         3c120_defconfig

clang tested configs:
hexagon              randconfig-r045-20220801
hexagon              randconfig-r041-20220801
i386                 randconfig-a001-20220801
i386                 randconfig-a002-20220801
i386                 randconfig-a003-20220801
i386                 randconfig-a005-20220801
i386                 randconfig-a004-20220801
x86_64               randconfig-a002-20220801
x86_64               randconfig-a001-20220801
i386                 randconfig-a006-20220801
x86_64               randconfig-a003-20220801
x86_64               randconfig-a004-20220801
x86_64               randconfig-a005-20220801
x86_64               randconfig-a006-20220801
powerpc                      ppc44x_defconfig
arm                       cns3420vb_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
