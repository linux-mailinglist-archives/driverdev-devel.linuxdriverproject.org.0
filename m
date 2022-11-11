Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA3D625764
	for <lists+driverdev-devel@lfdr.de>; Fri, 11 Nov 2022 10:56:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A1C060B58;
	Fri, 11 Nov 2022 09:56:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A1C060B58
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rsSoEEDzlxJu; Fri, 11 Nov 2022 09:56:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D9FED60B27;
	Fri, 11 Nov 2022 09:56:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D9FED60B27
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 665BE1BF329
 for <devel@linuxdriverproject.org>; Fri, 11 Nov 2022 09:56:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 41B258146D
 for <devel@linuxdriverproject.org>; Fri, 11 Nov 2022 09:56:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 41B258146D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PvJCHeGzcKrY for <devel@linuxdriverproject.org>;
 Fri, 11 Nov 2022 09:56:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 683EB81426
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 683EB81426
 for <devel@driverdev.osuosl.org>; Fri, 11 Nov 2022 09:56:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="338337616"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="338337616"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2022 01:56:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="701165899"
X-IronPort-AV: E=Sophos;i="5.96,156,1665471600"; d="scan'208";a="701165899"
Received: from lkp-server01.sh.intel.com (HELO e783503266e8) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 11 Nov 2022 01:56:03 -0800
Received: from kbuild by e783503266e8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1otQlW-0003pg-2E;
 Fri, 11 Nov 2022 09:56:02 +0000
Date: Fri, 11 Nov 2022 17:55:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 1edfe4ea16ca2c9e91ec6cecd446b13636724e4f
Message-ID: <636e1c2b.prHKeNbnqv0gRvDz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668160565; x=1699696565;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=sJtSLNL5BZGhKmOIWJbOFRrXllu1XOdhfmPSB58PYAo=;
 b=AaphFI8Gmbx2MXctgUbFGparPTvjp6MB1uRyH+7P4ej6ne4j+pCsz5Qj
 7rKASZ5xDhej303Tr+i7AIRnDcgdKS5AYFXy/bC5/cjwXSx1lu+VQGpg4
 eZz+XA19rOIxOAbIKf+t0Zja9x8dhb5ktBkjIkX4LcSxoif4/Y2tdE0Gt
 aqFDnl0HPe3fDKUm9U8OnP/I1YMSHlXBONDh/rmWbvynxkwzOvw5ldsjV
 LdSfOYMAoLXOgj48lFTkZyviRnUPvbdmUlzzD0Xl+84mSBts14NHZkAFS
 qN1txsOy9gjYd0X99mv1UN3fbtguD8zjm0pGMtfO5YoSaZLEFA+1mPFO0
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AaphFI8G
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-linus
branch HEAD: 1edfe4ea16ca2c9e91ec6cecd446b13636724e4f  kernfs: Fix spurious lockdep warning in kernfs_find_and_get_node_by_id()

elapsed time: 887m

configs tested: 61
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
powerpc                           allnoconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
m68k                             allyesconfig
x86_64                              defconfig
s390                                defconfig
s390                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
ia64                             allmodconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a006
i386                                defconfig
arc                  randconfig-r043-20221110
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                             allyesconfig
s390                 randconfig-r044-20221111
riscv                randconfig-r042-20221111
arc                  randconfig-r043-20221111
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig

clang tested configs:
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
x86_64                        randconfig-a005
i386                          randconfig-a004
i386                          randconfig-a006
hexagon              randconfig-r041-20221110
riscv                randconfig-r042-20221110
hexagon              randconfig-r045-20221110
s390                 randconfig-r044-20221110
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
