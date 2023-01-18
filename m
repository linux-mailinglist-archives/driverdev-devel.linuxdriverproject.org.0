Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB2B6713C8
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Jan 2023 07:20:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A96B94173D;
	Wed, 18 Jan 2023 06:20:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A96B94173D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aGlFuCFGh_10; Wed, 18 Jan 2023 06:20:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 18085417B3;
	Wed, 18 Jan 2023 06:20:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18085417B3
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB3C01BF5B4
 for <devel@linuxdriverproject.org>; Wed, 18 Jan 2023 06:20:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C18AD4173D
 for <devel@linuxdriverproject.org>; Wed, 18 Jan 2023 06:20:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C18AD4173D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id woJXTPfzDsRV for <devel@linuxdriverproject.org>;
 Wed, 18 Jan 2023 06:20:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 31E1A4092A
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 31E1A4092A
 for <devel@driverdev.osuosl.org>; Wed, 18 Jan 2023 06:20:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="308473196"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="308473196"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 22:20:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="661591429"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="661591429"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 17 Jan 2023 22:20:33 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pI1oH-00003W-0K;
 Wed, 18 Jan 2023 06:20:33 +0000
Date: Wed, 18 Jan 2023 14:20:01 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 9dd4541b1693e9aa124a167b40e294aa6906433f
Message-ID: <63c78f91.z7RfvyfDniBJeJ9y%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674022836; x=1705558836;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=B2QsLkVcwurXntA1atQZwLbMHMd26JH9LaROrwtRuIU=;
 b=fBdWECXBbQ+TeHI32zzYlmGEUq3cIBRO+XqOEZKNyaNeJZ3SXNmZsoke
 crn45+GaCqDBS2L2x54XFz/v6b/WGjRPB7vewt5kOr9Cz/3VYuBLV1PwC
 5VJUrfVSdpqHCSPI01sz9zQYEk4weCvTz1GXRUl96PFSlF8da31tB44R8
 0HqYj0T09aAWzuk2QKh/RopS/fl1SBUumtb9Xd5tdC0555UCf243SBub/
 brSZn6WX0Iv7IAyL46YClVZhX4Pp61BcTqyl8kXUntYfCMfBHg1YH44Li
 G5UlEL4c0Od3ap71SpMvLmfU3CQz80Yb1xgef5SRQIeKx8ibEf0eaaA/Z
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fBdWECXB
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
branch HEAD: 9dd4541b1693e9aa124a167b40e294aa6906433f  platform: remove useless if-branch in __platform_get_irq_byname()

elapsed time: 722m

configs tested: 107
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
i386                                defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
sh                               allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
alpha                            allyesconfig
x86_64                              defconfig
arc                              allyesconfig
arm                                 defconfig
x86_64                               rhel-8.3
s390                             allyesconfig
powerpc                          allmodconfig
mips                             allyesconfig
x86_64               randconfig-a011-20230116
x86_64               randconfig-a013-20230116
i386                 randconfig-a014-20230116
x86_64               randconfig-a012-20230116
x86_64                           allyesconfig
i386                 randconfig-a013-20230116
x86_64               randconfig-a014-20230116
i386                 randconfig-a012-20230116
arm64                            allyesconfig
i386                 randconfig-a015-20230116
arm                              allyesconfig
i386                 randconfig-a011-20230116
ia64                             allmodconfig
x86_64               randconfig-a016-20230116
x86_64                    rhel-8.3-kselftests
x86_64               randconfig-a015-20230116
i386                 randconfig-a016-20230116
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-bpf
i386                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
arc                  randconfig-r043-20230115
riscv                randconfig-r042-20230116
arc                  randconfig-r043-20230116
arm                  randconfig-r046-20230115
arm                  randconfig-r046-20230117
arc                  randconfig-r043-20230117
s390                 randconfig-r044-20230116
i386                          randconfig-c001
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                 randconfig-c001-20230116
m68k                          hp300_defconfig
arm                            lart_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
powerpc                      bamboo_defconfig
arm                           imxrt_defconfig
powerpc                      makalu_defconfig
arm                        cerfcube_defconfig
ia64                        generic_defconfig
sh                 kfr2r09-romimage_defconfig
openrisc                         alldefconfig
powerpc                     tqm8548_defconfig
mips                        vocore2_defconfig

clang tested configs:
x86_64                          rhel-8.3-rust
i386                 randconfig-a002-20230116
i386                 randconfig-a004-20230116
i386                 randconfig-a003-20230116
x86_64               randconfig-a001-20230116
x86_64               randconfig-a003-20230116
x86_64               randconfig-a004-20230116
x86_64               randconfig-a002-20230116
x86_64               randconfig-a005-20230116
i386                 randconfig-a006-20230116
i386                 randconfig-a005-20230116
i386                 randconfig-a001-20230116
x86_64               randconfig-a006-20230116
x86_64                        randconfig-k001
powerpc                      acadia_defconfig
arm                        magician_defconfig
riscv                             allnoconfig
hexagon              randconfig-r041-20230116
hexagon              randconfig-r045-20230117
hexagon              randconfig-r045-20230115
hexagon              randconfig-r041-20230117
riscv                randconfig-r042-20230115
arm                  randconfig-r046-20230116
hexagon              randconfig-r045-20230116
hexagon              randconfig-r041-20230115
s390                 randconfig-r044-20230117
s390                 randconfig-r044-20230115
riscv                randconfig-r042-20230117
arm                          sp7021_defconfig
powerpc                     ppa8548_defconfig
powerpc                     tqm8560_defconfig
arm                  colibri_pxa270_defconfig
arm                         hackkit_defconfig
mips                          malta_defconfig
mips                        qi_lb60_defconfig
arm                           sama7_defconfig
riscv                          rv32_defconfig
powerpc                    mvme5100_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
