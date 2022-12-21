Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2493D652B7C
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Dec 2022 03:32:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C98A281FE3;
	Wed, 21 Dec 2022 02:32:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C98A281FE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hf2QTBc2gf71; Wed, 21 Dec 2022 02:32:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F26081FDC;
	Wed, 21 Dec 2022 02:32:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F26081FDC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E7F441BF94D
 for <devel@linuxdriverproject.org>; Wed, 21 Dec 2022 02:32:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C233241770
 for <devel@linuxdriverproject.org>; Wed, 21 Dec 2022 02:32:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C233241770
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lKcGiQZDe69A for <devel@linuxdriverproject.org>;
 Wed, 21 Dec 2022 02:32:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 692F441754
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 692F441754
 for <devel@driverdev.osuosl.org>; Wed, 21 Dec 2022 02:32:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="303192226"
X-IronPort-AV: E=Sophos;i="5.96,261,1665471600"; d="scan'208";a="303192226"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 18:32:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="653339569"
X-IronPort-AV: E=Sophos;i="5.96,261,1665471600"; d="scan'208";a="653339569"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 20 Dec 2022 18:32:09 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p7ott-0009m9-08;
 Wed, 21 Dec 2022 02:32:09 +0000
Date: Wed, 21 Dec 2022 10:31:06 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const2] BUILD SUCCESS
 5707b12b06ca1084d858bfdbb57c8f5c54c53af9
Message-ID: <63a26fea.x+QvStwQaPBuGnXR%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671589933; x=1703125933;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=3eOnaJ4GkkG6Ms376kBJCFGWP50iLqIt1NFOhynuEe4=;
 b=Wv4If+tseMdF2w8r4uw0A0PEA/uC2tSs3+6fCYlkOMDAQ7OjTirJzqrD
 tYHG+jjBuq4ML8TdaB6gpZGle5N/dIb0LC3hANS9MQfczVnc9Ss7XkLtN
 vPCw3cgjXjwSmY3INxa/h8lgcjeUjZiRGtEsQ5E14Vv69C7aCW3Z2Jd3t
 5R5VsqKwn9mZS0m1z/EvBzPfgajPeYU8oeiEj8isYsP1TLpLK+EvoqFPd
 mghny0mPN4X4RZI7TQtwRLitpCCpvmIq1aSTO5s8HDyzN0wESfgZPU+x0
 IIveSL50wDwDBDf/9fm75/lAYJmzTLCE3vqmlUQ0euXSA/m2b0ZvJzylA
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Wv4If+ts
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const2
branch HEAD: 5707b12b06ca1084d858bfdbb57c8f5c54c53af9  kobject: kset_uevent_ops: make uevent() callback take a const *

elapsed time: 1019m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
um                             i386_defconfig
x86_64                         rhel-8.3-kunit
x86_64               randconfig-a002-20221219
arc                                 defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
s390                             allmodconfig
powerpc                          allmodconfig
x86_64               randconfig-a003-20221219
x86_64                              defconfig
i386                                defconfig
x86_64               randconfig-a001-20221219
i386                 randconfig-a004-20221219
x86_64                           rhel-8.3-kvm
alpha                               defconfig
i386                 randconfig-a001-20221219
m68k                             allyesconfig
x86_64               randconfig-a004-20221219
sh                               allmodconfig
s390                             allyesconfig
s390                                defconfig
i386                 randconfig-a003-20221219
x86_64               randconfig-a006-20221219
m68k                             allmodconfig
i386                 randconfig-a002-20221219
x86_64                           allyesconfig
mips                             allyesconfig
x86_64               randconfig-a005-20221219
x86_64                               rhel-8.3
i386                 randconfig-a006-20221219
arc                              allyesconfig
arc                  randconfig-r043-20221220
i386                 randconfig-a005-20221219
riscv                randconfig-r042-20221220
alpha                            allyesconfig
s390                 randconfig-r044-20221220
ia64                             allmodconfig
i386                             allyesconfig
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                            allnoconfig

clang tested configs:
arm                  randconfig-r046-20221220
hexagon              randconfig-r045-20221220
hexagon              randconfig-r041-20221220
x86_64               randconfig-a011-20221219
x86_64               randconfig-a012-20221219
x86_64               randconfig-a014-20221219
x86_64               randconfig-a015-20221219
x86_64               randconfig-a016-20221219
x86_64               randconfig-a013-20221219
x86_64                          rhel-8.3-rust
i386                 randconfig-a014-20221219
i386                 randconfig-a012-20221219
i386                 randconfig-a013-20221219
i386                 randconfig-a015-20221219
i386                 randconfig-a011-20221219
i386                 randconfig-a016-20221219

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
