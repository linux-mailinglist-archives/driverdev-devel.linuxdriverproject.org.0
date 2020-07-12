Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9878C21C7B7
	for <lists+driverdev-devel@lfdr.de>; Sun, 12 Jul 2020 08:28:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0BD2189E95;
	Sun, 12 Jul 2020 06:28:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NRU5Rnu9nXdi; Sun, 12 Jul 2020 06:28:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 3E8D1894D3;
	Sun, 12 Jul 2020 06:28:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0971C1BF5A1
 for <devel@linuxdriverproject.org>; Sun, 12 Jul 2020 06:28:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CF7652549D
 for <devel@linuxdriverproject.org>; Sun, 12 Jul 2020 06:28:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S7ESw4L+uKKI for <devel@linuxdriverproject.org>;
 Sun, 12 Jul 2020 06:28:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id A46F22221C
 for <devel@driverdev.osuosl.org>; Sun, 12 Jul 2020 06:28:18 +0000 (UTC)
IronPort-SDR: +6GLh5iKbTSO5cyl5Pa2oGcmPDBTx3WVJrhu1BR6SITEuxkAXb3w/idpnylWmBVuIE2stKSYcS
 Eef/ANO0ZsQg==
X-IronPort-AV: E=McAfee;i="6000,8403,9679"; a="149934063"
X-IronPort-AV: E=Sophos;i="5.75,342,1589266800"; d="scan'208";a="149934063"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2020 23:28:17 -0700
IronPort-SDR: 2AXUhMxGD7UAOqyj2LDLqr0rRsx0FrAdl25iUHUm6nGeKcQOf4IvpMN79bX59IS+C9JWy1JsJY
 T3r6xWO8/HKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,342,1589266800"; d="scan'208";a="485096606"
Received: from lkp-server02.sh.intel.com (HELO 7956a0bf35ab) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 11 Jul 2020 23:28:16 -0700
Received: from kbuild by 7956a0bf35ab with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1juVTE-0000In-47; Sun, 12 Jul 2020 06:28:16 +0000
Date: Sun, 12 Jul 2020 14:28:10 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 a3232e64b4be06460d02ded09c5bd347b0a3a2b8
Message-ID: <5f0aad7a.4/cHqnwwAUh65YK/%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-testing
branch HEAD: a3232e64b4be06460d02ded09c5bd347b0a3a2b8  staging: rtl8712: Use proper format in call to dev_err()

elapsed time: 2530m

configs tested: 98
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
i386                              allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                              debian-10.3
ia64                             allmodconfig
ia64                                defconfig
ia64                              allnoconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                              allnoconfig
m68k                           sun3_defconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
nios2                            allyesconfig
openrisc                            defconfig
c6x                              allyesconfig
c6x                               allnoconfig
openrisc                         allyesconfig
nds32                               defconfig
nds32                             allnoconfig
csky                             allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
h8300                            allmodconfig
xtensa                              defconfig
arc                                 defconfig
arc                              allyesconfig
sh                               allmodconfig
sh                                allnoconfig
microblaze                        allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                             allmodconfig
parisc                            allnoconfig
parisc                              defconfig
parisc                           allyesconfig
parisc                           allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a001-20200710
i386                 randconfig-a005-20200710
i386                 randconfig-a006-20200710
i386                 randconfig-a002-20200710
i386                 randconfig-a003-20200710
i386                 randconfig-a004-20200710
x86_64               randconfig-a012-20200710
x86_64               randconfig-a011-20200710
x86_64               randconfig-a016-20200710
x86_64               randconfig-a014-20200710
x86_64               randconfig-a015-20200710
x86_64               randconfig-a013-20200710
i386                 randconfig-a016-20200711
i386                 randconfig-a015-20200711
i386                 randconfig-a011-20200711
i386                 randconfig-a012-20200711
i386                 randconfig-a013-20200711
i386                 randconfig-a014-20200711
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
s390                             allyesconfig
s390                              allnoconfig
s390                             allmodconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                               allmodconfig
um                                allnoconfig
um                               allyesconfig
um                                  defconfig
x86_64                               rhel-7.6
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                                   rhel
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
