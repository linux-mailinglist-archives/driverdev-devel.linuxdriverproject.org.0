Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD7F628B4F
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Nov 2022 22:25:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C35EA607F6;
	Mon, 14 Nov 2022 21:25:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C35EA607F6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R52Wn_37rkA9; Mon, 14 Nov 2022 21:25:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57E8B606F2;
	Mon, 14 Nov 2022 21:25:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 57E8B606F2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C010B1BF296
 for <devel@linuxdriverproject.org>; Mon, 14 Nov 2022 21:25:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A77CB402B1
 for <devel@linuxdriverproject.org>; Mon, 14 Nov 2022 21:25:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A77CB402B1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oF1rDMLD9yPT for <devel@linuxdriverproject.org>;
 Mon, 14 Nov 2022 21:25:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3B1BE40217
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3B1BE40217
 for <devel@driverdev.osuosl.org>; Mon, 14 Nov 2022 21:25:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="313233813"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="313233813"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 13:25:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="744310899"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="744310899"
Received: from lkp-server01.sh.intel.com (HELO ebd99836cbe0) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 14 Nov 2022 13:25:44 -0800
Received: from kbuild by ebd99836cbe0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ougxb-0000ku-17;
 Mon, 14 Nov 2022 21:25:43 +0000
Date: Tue, 15 Nov 2022 05:24:44 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 f613facc82cfd4b02b937b14872f24e27da4b909
Message-ID: <6372b21c.TcYOHA/qv+kSu0E0%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668461146; x=1699997146;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=6PYdo0kh8hsvRxtMQi6uKiw8yKI1gqHTdvdAwbxSXqk=;
 b=Y7QSbSIVoono3QEjw/gB7LTKnVBk60OgNMHkdm/nf2a2HIVThf3JkLNB
 6pxteEeJuG064a1OjpkDbRzgYncZhgI+ACZljeoh3ANTt+cZZDEKoin5u
 TZrNVNpOjL9XSnzAGkNi46OZjYRqcUXK8aPFESuJ3iL3ZcIfKfzaUzfOD
 t85ZRF29IfEM3kDeRrdrgNy9ShZZY3MMpp5JMXA+ExAQOKXCx285d2oep
 CSg7eCy0kduILxj13D0cLii9O3RaUP0jvT6T/Jo2xWN6gXKXnvqOps+Xb
 c+zTkandcKezY72qcmP3TfT8L0LzWe2txGAn/F27FnD/EQ+v33vEoUq/c
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Y7QSbSIV
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
branch HEAD: f613facc82cfd4b02b937b14872f24e27da4b909  mfd: vexpress-sysreg: Fix resource compound literal assignments

elapsed time: 722m

configs tested: 84
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
powerpc                           allnoconfig
sh                               allmodconfig
i386                                defconfig
m68k                             allyesconfig
x86_64                              defconfig
s390                             allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz
arc                  randconfig-r043-20221114
ia64                             allmodconfig
x86_64               randconfig-a002-20221114
x86_64               randconfig-a001-20221114
x86_64               randconfig-a003-20221114
x86_64               randconfig-a004-20221114
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64               randconfig-a005-20221114
x86_64                           allyesconfig
x86_64               randconfig-a006-20221114
i386                             allyesconfig
i386                 randconfig-a001-20221114
i386                 randconfig-a004-20221114
i386                 randconfig-a002-20221114
i386                 randconfig-a005-20221114
i386                 randconfig-a003-20221114
i386                 randconfig-a006-20221114
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
x86_64                            allnoconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
mips                      loongson3_defconfig
sh                        edosk7760_defconfig
csky                                defconfig
powerpc                      ppc6xx_defconfig
sh                           se7343_defconfig
powerpc                    adder875_defconfig
ia64                          tiger_defconfig
powerpc                     sequoia_defconfig
sh                          rsk7201_defconfig
mips                             allyesconfig
powerpc                          allmodconfig
i386                 randconfig-c001-20221114
mips                  decstation_64_defconfig
powerpc                    sam440ep_defconfig
sparc64                          alldefconfig
xtensa                         virt_defconfig
sh                            shmin_defconfig
xtensa                              defconfig
mips                        vocore2_defconfig
powerpc                     stx_gp3_defconfig
sh                           sh2007_defconfig
loongarch                        allmodconfig

clang tested configs:
hexagon              randconfig-r045-20221114
hexagon              randconfig-r041-20221114
riscv                randconfig-r042-20221114
s390                 randconfig-r044-20221114
x86_64               randconfig-a014-20221114
x86_64               randconfig-a012-20221114
x86_64               randconfig-a015-20221114
x86_64               randconfig-a013-20221114
x86_64               randconfig-a011-20221114
x86_64               randconfig-a016-20221114
i386                 randconfig-a013-20221114
i386                 randconfig-a011-20221114
i386                 randconfig-a012-20221114
i386                 randconfig-a014-20221114
i386                 randconfig-a015-20221114
i386                 randconfig-a016-20221114
mips                           mtx1_defconfig
powerpc                 mpc8560_ads_defconfig
x86_64               randconfig-k001-20221114
powerpc                     mpc512x_defconfig
arm                        magician_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
