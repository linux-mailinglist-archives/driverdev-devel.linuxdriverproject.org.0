Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B49BA65DE00
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Jan 2023 22:06:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F0C26610D2;
	Wed,  4 Jan 2023 21:06:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0C26610D2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EGuc9WC5xPCI; Wed,  4 Jan 2023 21:06:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C6DF960DB7;
	Wed,  4 Jan 2023 21:06:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C6DF960DB7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9640B1BF279
 for <devel@linuxdriverproject.org>; Wed,  4 Jan 2023 21:06:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 719A44012B
 for <devel@linuxdriverproject.org>; Wed,  4 Jan 2023 21:06:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 719A44012B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9b4U3HRJZ_po for <devel@linuxdriverproject.org>;
 Wed,  4 Jan 2023 21:06:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 73E7A400DC
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 73E7A400DC
 for <devel@driverdev.osuosl.org>; Wed,  4 Jan 2023 21:06:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="349265164"
X-IronPort-AV: E=Sophos;i="5.96,301,1665471600"; d="scan'208";a="349265164"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 13:06:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="829287601"
X-IronPort-AV: E=Sophos;i="5.96,301,1665471600"; d="scan'208";a="829287601"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 04 Jan 2023 13:06:11 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pDAxe-0000mN-0y;
 Wed, 04 Jan 2023 21:06:10 +0000
Date: Thu, 05 Jan 2023 05:05:17 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 3e198e8fd228a33602c3404bf1ab8c1acfd2034e
Message-ID: <63b5ea0d.Gsck+jX4UfnF6Q0K%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672866373; x=1704402373;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=z/4pZGBOgyR4f+BRWhZU68BohcjC45ml6qLkAaQoV7c=;
 b=BYTjaPdbqqc8mcr0WyK1bPgxQlWMbW0F0YmkEBzT2q2+B+RsO2wOq/2N
 ZOtMm34aU9vIyu7rztH4RUHa+duK79hAsmGbWKS5kymlTZTwjR845b0fE
 iOlWUU58/uaCh308L/ms3ZBwpJLJvMIAhYITupOJtNfGbuc2SUYi+XEci
 AcbDwRNSEfsAXaaxZK3iQw4IIMaem4OHOemxEEfn8C79COsvHYHMe1jYz
 HfBi67PdNk1cy7OZ3A68FIZDz1VYzM79YEhIrJ4lAhrKYxluigBrYSF//
 XKn+dJFxVII8sRZieRlIUd8OhwvmnvtrAqrOdfGXHYC6VHLKlrdjf1Qom
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BYTjaPdb
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
branch HEAD: 3e198e8fd228a33602c3404bf1ab8c1acfd2034e  readfile.2: new page describing readfile(2)

elapsed time: 729m

configs tested: 72
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
um                             i386_defconfig
alpha                               defconfig
powerpc                           allnoconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                              defconfig
alpha                            allyesconfig
arc                              allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
x86_64                               rhel-8.3
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
s390                             allmodconfig
s390                                defconfig
ia64                             allmodconfig
i386                 randconfig-a004-20230102
i386                 randconfig-a003-20230102
x86_64                           allyesconfig
i386                 randconfig-a001-20230102
i386                                defconfig
i386                 randconfig-a002-20230102
i386                 randconfig-a006-20230102
i386                 randconfig-a005-20230102
x86_64               randconfig-a004-20230102
x86_64               randconfig-a002-20230102
x86_64               randconfig-a003-20230102
i386                             allyesconfig
x86_64               randconfig-a001-20230102
s390                             allyesconfig
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64               randconfig-a006-20230102
x86_64                          rhel-8.3-func
arm                                 defconfig
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64               randconfig-a005-20230102
x86_64                           rhel-8.3-kvm
riscv                randconfig-r042-20230101
arc                  randconfig-r043-20230102
arm                  randconfig-r046-20230102
arm64                            allyesconfig
arc                  randconfig-r043-20230101
s390                 randconfig-r044-20230101
arm                              allyesconfig
i386                          randconfig-c001

clang tested configs:
i386                 randconfig-a013-20230102
i386                 randconfig-a012-20230102
i386                 randconfig-a011-20230102
x86_64               randconfig-a011-20230102
x86_64               randconfig-a014-20230102
x86_64               randconfig-a012-20230102
i386                 randconfig-a014-20230102
x86_64               randconfig-a013-20230102
x86_64               randconfig-a015-20230102
x86_64                          rhel-8.3-rust
i386                 randconfig-a016-20230102
i386                 randconfig-a015-20230102
x86_64               randconfig-a016-20230102
hexagon              randconfig-r041-20230102
hexagon              randconfig-r045-20230101
hexagon              randconfig-r045-20230102
arm                  randconfig-r046-20230101
riscv                randconfig-r042-20230102
hexagon              randconfig-r041-20230101
s390                 randconfig-r044-20230102
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
