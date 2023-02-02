Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CB6688B27
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Feb 2023 00:54:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7B85641D5B;
	Thu,  2 Feb 2023 23:54:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7B85641D5B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ozb0V4z-lKmW; Thu,  2 Feb 2023 23:54:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1995041D5D;
	Thu,  2 Feb 2023 23:54:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1995041D5D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D9C221BF358
 for <devel@linuxdriverproject.org>; Thu,  2 Feb 2023 23:53:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id AD7D78206E
 for <devel@linuxdriverproject.org>; Thu,  2 Feb 2023 23:53:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD7D78206E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GqRXeJjhNila for <devel@linuxdriverproject.org>;
 Thu,  2 Feb 2023 23:53:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9394F8205D
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9394F8205D
 for <devel@driverdev.osuosl.org>; Thu,  2 Feb 2023 23:53:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="328622986"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="328622986"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 15:53:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="658924167"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="658924167"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 02 Feb 2023 15:53:56 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pNjOt-0006xk-2h;
 Thu, 02 Feb 2023 23:53:55 +0000
Date: Fri, 03 Feb 2023 07:53:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 37e98d9bedb50644654fd196e38acad49903fadc
Message-ID: <63dc4d13.9NIJeYgS1B01Dzzg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675382038; x=1706918038;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Dkqee0B2kikYG8rC8p+92VCczaIi5i2ugrA28YHf8bk=;
 b=HJbWNSDpIvbbsRM6oNSYJc3ferUlTd/XZbmQc7/HDlYm4o/s05yJkRw2
 iINopKpYo/tG5gr3jsV6yaNo2kKY68zrIfbPlYsEJNmIVT0kP7uf0nL72
 ocLlaXz3J2UU8Y6yuZ8SEso570Tbsd50Hq0WFO5K/v7K+1ldKZBrkDXLZ
 ASMcnK3l3tzKZ8ozV75tC6iCU1t+9phDu2y2ISqOVGzUdHje5P+SBHxsq
 oLgP+LtqIIKrdQjs8e/+Pr356C4mkXjcCOh0YvouFRDNjv7SfD9V3U+1+
 ls3icK0tk0o6LDpSmJWdD11yqBAJR35ecWNExBUKsvxmwtjBjp6BsxAbu
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HJbWNSDp
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git bus_cleanup
branch HEAD: 37e98d9bedb50644654fd196e38acad49903fadc  driver core: bus: move lock_class_key into dynamic structure

elapsed time: 1711m

configs tested: 104
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
x86_64                          rhel-8.3-func
i386                 randconfig-a004-20230130
x86_64               randconfig-a001-20230130
i386                 randconfig-a003-20230130
x86_64                    rhel-8.3-kselftests
x86_64               randconfig-a003-20230130
i386                 randconfig-a002-20230130
x86_64               randconfig-a004-20230130
i386                 randconfig-a001-20230130
ia64                             allmodconfig
x86_64               randconfig-a002-20230130
i386                 randconfig-a005-20230130
x86_64               randconfig-a006-20230130
i386                 randconfig-a006-20230130
x86_64               randconfig-a005-20230130
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
i386                             allyesconfig
i386                                defconfig
parisc                generic-32bit_defconfig
arc                      axs103_smp_defconfig
i386                          randconfig-c001
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm                                 defconfig
arm                              allyesconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arc                        nsim_700_defconfig
sparc                       sparc64_defconfig
arm                              allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
arc                  randconfig-r043-20230202
riscv                randconfig-r042-20230202
s390                 randconfig-r044-20230202
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arm64                            allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64               randconfig-a014-20230130
x86_64               randconfig-a012-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a016-20230130
i386                 randconfig-a014-20230130
i386                 randconfig-a013-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a016-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a011-20230130
x86_64                        randconfig-k001
mips                  cavium_octeon_defconfig
powerpc                     skiroot_defconfig
powerpc                    gamecube_defconfig
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
powerpc                     akebono_defconfig
i386                             allyesconfig
arm                          pcm027_defconfig
powerpc                       ebony_defconfig
x86_64                        randconfig-a012
x86_64                        randconfig-a014
arm                  randconfig-r046-20230202
x86_64                        randconfig-a016
hexagon              randconfig-r041-20230202
hexagon              randconfig-r045-20230202
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
powerpc                     pq2fads_defconfig
mips                         cobalt_defconfig

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
