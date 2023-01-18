Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA1767295F
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Jan 2023 21:32:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CB1A5401F8;
	Wed, 18 Jan 2023 20:32:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB1A5401F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IAxc6KhJYvqh; Wed, 18 Jan 2023 20:32:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6F6D0400CB;
	Wed, 18 Jan 2023 20:32:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F6D0400CB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ECBD31BF28B
 for <devel@linuxdriverproject.org>; Wed, 18 Jan 2023 20:32:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D610340B54
 for <devel@linuxdriverproject.org>; Wed, 18 Jan 2023 20:32:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D610340B54
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id puHaLf7fHhuf for <devel@linuxdriverproject.org>;
 Wed, 18 Jan 2023 20:32:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 12DB4401F8
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 12DB4401F8
 for <devel@driverdev.osuosl.org>; Wed, 18 Jan 2023 20:32:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="323779254"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="323779254"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 12:32:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="905260585"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="905260585"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 18 Jan 2023 12:32:13 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pIF6S-0000gs-1t;
 Wed, 18 Jan 2023 20:32:12 +0000
Date: Thu, 19 Jan 2023 04:31:19 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 6d36ea7d1146389f3019e1bbd1370f4d1025395c
Message-ID: <63c85717.k0iPyPwKnFk4KYYb%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674073935; x=1705609935;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=R01XHpb2g/CsBgb7eFfPnv4McJgwT2e9XlZLbpiWens=;
 b=e2Zn79eO1JAEz4Rp2fG6P84G/ujw0qKiwdn3RY242XzhSGCYSNmPFlEU
 uVRWVa9WZtv29xWezPruHuHTXR7eZs4HLS7E0Kiiyg7yWafTzROcL9s6u
 VTMGx8LPSilK976VU2KRV3JLOJKbs3vgYTvltTqvPt035+J0kbc5i1Wfi
 LzuUM3OtKat15DEzLJb4EbTHOn8wXylL9+xTcjhsl+O/dDnVKGwyFqWnp
 IV+u/NiyIGGpOvpm6ndm8J3LgC3fxSF+KpFkX+DDndA5H274Uu5pkJ9yi
 C53p6ap2bva2S4RCBIII4rBJ+Z22AjUrN16unRlJ45lxMY+CUNjYWLsOb
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e2Zn79eO
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
branch HEAD: 6d36ea7d1146389f3019e1bbd1370f4d1025395c  HV: hv_balloon: debugfs_lookup() fix

elapsed time: 720m

configs tested: 89
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                              defconfig
arc                                 defconfig
i386                                defconfig
s390                             allmodconfig
arm                                 defconfig
i386                 randconfig-a014-20230116
alpha                               defconfig
x86_64               randconfig-a011-20230116
x86_64                               rhel-8.3
s390                             allyesconfig
x86_64                           allyesconfig
s390                                defconfig
i386                 randconfig-a013-20230116
x86_64               randconfig-a016-20230116
i386                 randconfig-a012-20230116
x86_64               randconfig-a013-20230116
i386                 randconfig-a015-20230116
x86_64               randconfig-a012-20230116
i386                 randconfig-a011-20230116
x86_64               randconfig-a015-20230116
x86_64               randconfig-a014-20230116
i386                 randconfig-a016-20230116
x86_64                        randconfig-a004
arm64                            allyesconfig
x86_64                        randconfig-a002
powerpc                           allnoconfig
x86_64                           rhel-8.3-bpf
i386                          randconfig-a001
powerpc                          allmodconfig
arm                              allyesconfig
i386                          randconfig-a003
mips                             allyesconfig
sh                               allmodconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
i386                          randconfig-a005
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a006
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
ia64                             allmodconfig
i386                             allyesconfig
riscv                randconfig-r042-20230118
s390                 randconfig-r044-20230118
arc                  randconfig-r043-20230118
i386                          randconfig-c001
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
m68k                       m5208evb_defconfig
arm                         s3c6400_defconfig
sh                        dreamcast_defconfig
xtensa                              defconfig
mips                       bmips_be_defconfig
sparc                               defconfig
xtensa                           allyesconfig
csky                                defconfig
sparc                            allyesconfig
x86_64                                  kexec
arm64                            alldefconfig
sh                 kfr2r09-romimage_defconfig
sh                             sh03_defconfig
powerpc                     ep8248e_defconfig
powerpc                      ppc6xx_defconfig
m68k                        m5307c3_defconfig
powerpc                      cm5200_defconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a001
i386                          randconfig-a006
x86_64                        randconfig-a003
x86_64                        randconfig-a005
mips                          ath25_defconfig
mips                     loongson2k_defconfig
powerpc                     ppa8548_defconfig
x86_64                        randconfig-k001
mips                          rm200_defconfig
powerpc                     skiroot_defconfig
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
