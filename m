Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC416873D0
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Feb 2023 04:28:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EEA9F419DD;
	Thu,  2 Feb 2023 03:28:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EEA9F419DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M6Xnxy-Yd7ES; Thu,  2 Feb 2023 03:28:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6A8FD419E5;
	Thu,  2 Feb 2023 03:28:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6A8FD419E5
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 750C61BF32D
 for <devel@linuxdriverproject.org>; Thu,  2 Feb 2023 03:28:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5627D419DD
 for <devel@linuxdriverproject.org>; Thu,  2 Feb 2023 03:28:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5627D419DD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2SBz4oPuoHnC for <devel@linuxdriverproject.org>;
 Thu,  2 Feb 2023 03:28:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 05D15419D6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 05D15419D6
 for <devel@driverdev.osuosl.org>; Thu,  2 Feb 2023 03:28:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="392921231"
X-IronPort-AV: E=Sophos;i="5.97,266,1669104000"; d="scan'208";a="392921231"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 19:28:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="658567176"
X-IronPort-AV: E=Sophos;i="5.97,266,1669104000"; d="scan'208";a="658567176"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 01 Feb 2023 19:28:05 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pNQGb-00064u-01;
 Thu, 02 Feb 2023 03:28:05 +0000
Date: Thu, 02 Feb 2023 11:27:24 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 550fa899e11259aaff290f6f82165e7e49e6685f
Message-ID: <63db2d9c.Bnx22qfDqmnFWiBl%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675308488; x=1706844488;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=3CkcHnLpTzWNWeEhO8jj/NqiyCGnjp8v91sIaVljoTU=;
 b=Zw8jqI/XDv4aXk28rw/f8A6RYs2XrB1s97prJw5WLi4aIFPVH12duPaQ
 Ecuxe2UTDRWTx4HNOymCMkvgwOB8T6ZEOUc2zQpy2Nqhm1WpX6grNly5T
 G2FZdDDbhux8vvXkx29oLVTil2v1vxo9XIRpvJLAcpmVAmSRWNc7NqVs9
 7amkCsPk480+DWLDhhIwuHN39kcZPobDfkLi46D5n/L45XsD8WuU/k7wW
 vvfh9A2m9kTm81HeOXsgInaGYhh5XwuH44DlKAJ2MaGcvWJdkJG25I8uS
 iVZPJN4KIj83JO3kTKko7CJb6C48ZM5jZX+XIeCMMsv4OP+kCipzPZQSr
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Zw8jqI/X
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
branch HEAD: 550fa899e11259aaff290f6f82165e7e49e6685f  driver core: bus: move lock_class_key into dynamic structure

elapsed time: 1117m

configs tested: 81
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
i386                 randconfig-a002-20230130
i386                 randconfig-a001-20230130
x86_64               randconfig-a001-20230130
i386                 randconfig-a004-20230130
x86_64               randconfig-a005-20230130
i386                 randconfig-a003-20230130
ia64                             allmodconfig
x86_64               randconfig-a003-20230130
i386                 randconfig-a005-20230130
x86_64               randconfig-a004-20230130
i386                 randconfig-a006-20230130
x86_64               randconfig-a002-20230130
x86_64               randconfig-a006-20230130
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
x86_64                              defconfig
powerpc                          allmodconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                          randconfig-c001
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
arm                                 defconfig
i386                             allyesconfig
i386                                defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm                              allyesconfig
arm64                            allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64               randconfig-a014-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a016-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a012-20230130
x86_64                        randconfig-k001
i386                 randconfig-a014-20230130
i386                 randconfig-a013-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a016-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a011-20230130
hexagon              randconfig-r045-20230130
s390                 randconfig-r044-20230130
riscv                randconfig-r042-20230129
hexagon              randconfig-r041-20230129
hexagon              randconfig-r045-20230129
hexagon              randconfig-r041-20230130
riscv                randconfig-r042-20230130
s390                 randconfig-r044-20230129

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
