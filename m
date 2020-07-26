Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C94B122DB0B
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Jul 2020 03:03:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9F9AF87CB0;
	Sun, 26 Jul 2020 01:03:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id E1JynN8jEctm; Sun, 26 Jul 2020 01:03:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D18F487C4E;
	Sun, 26 Jul 2020 01:03:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 71A991BF955
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 01:03:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C223A8832D
 for <devel@linuxdriverproject.org>; Sun, 26 Jul 2020 01:03:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 91DSlrh1hbLG for <devel@linuxdriverproject.org>;
 Sun, 26 Jul 2020 01:03:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B53EA8832C
 for <devel@driverdev.osuosl.org>; Sun, 26 Jul 2020 01:03:47 +0000 (UTC)
IronPort-SDR: 4M6JI0fgT8fBWps9GJlGsG5xcltherxqLSSciPNM4Uv7zwZ0t0rDEctC99gfW2golf7kuW7z+1
 PfDKPydRNAEg==
X-IronPort-AV: E=McAfee;i="6000,8403,9693"; a="130419762"
X-IronPort-AV: E=Sophos;i="5.75,395,1589266800"; d="scan'208";a="130419762"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2020 18:03:47 -0700
IronPort-SDR: wLMbRjls2OM2ckObuhWFJeuurs7J0pyu0zP6NL9hUf2FAOa5N/SUNl2j8RPJ5UMFhjCFDdsR7S
 9/sFBPVTQpWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,395,1589266800"; d="scan'208";a="311815076"
Received: from lkp-server01.sh.intel.com (HELO df0563f96c37) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jul 2020 18:03:46 -0700
Received: from kbuild by df0563f96c37 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jzV4r-0001Bo-Hf; Sun, 26 Jul 2020 01:03:45 +0000
Date: Sun, 26 Jul 2020 09:03:04 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 29c4a54bc645c8b6745eeb58519e9ad794ceb419
Message-ID: <5f1cd648.xtAIguBWCaxBqqfp%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-linus
branch HEAD: 29c4a54bc645c8b6745eeb58519e9ad794ceb419  device property: Avoid NULL pointer dereference in device_get_next_child_node()

elapsed time: 3216m

configs tested: 110
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                               allnoconfig
arm64                            allyesconfig
arm64                               defconfig
arm64                            allmodconfig
arm64                             allnoconfig
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
powerpc                          allyesconfig
powerpc                          rhel-kconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                             defconfig
i386                 randconfig-a003-20200724
i386                 randconfig-a005-20200724
i386                 randconfig-a004-20200724
i386                 randconfig-a006-20200724
i386                 randconfig-a002-20200724
i386                 randconfig-a001-20200724
i386                 randconfig-a003-20200725
i386                 randconfig-a005-20200725
i386                 randconfig-a004-20200725
i386                 randconfig-a006-20200725
i386                 randconfig-a002-20200725
i386                 randconfig-a001-20200725
x86_64               randconfig-a014-20200724
x86_64               randconfig-a016-20200724
x86_64               randconfig-a015-20200724
x86_64               randconfig-a012-20200724
x86_64               randconfig-a013-20200724
x86_64               randconfig-a011-20200724
i386                 randconfig-a016-20200724
i386                 randconfig-a013-20200724
i386                 randconfig-a012-20200724
i386                 randconfig-a015-20200724
i386                 randconfig-a014-20200724
i386                 randconfig-a011-20200724
i386                 randconfig-a016-20200725
i386                 randconfig-a013-20200725
i386                 randconfig-a012-20200725
i386                 randconfig-a015-20200725
i386                 randconfig-a014-20200725
i386                 randconfig-a011-20200725
x86_64               randconfig-a005-20200723
x86_64               randconfig-a004-20200723
x86_64               randconfig-a003-20200723
x86_64               randconfig-a002-20200723
x86_64               randconfig-a006-20200723
x86_64               randconfig-a001-20200723
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
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec
x86_64                                   rhel
x86_64                                    lkp
x86_64                              fedora-25

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
