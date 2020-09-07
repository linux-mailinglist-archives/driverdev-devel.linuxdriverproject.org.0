Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 232A725F23B
	for <lists+driverdev-devel@lfdr.de>; Mon,  7 Sep 2020 06:00:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3987820031;
	Mon,  7 Sep 2020 04:00:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YUcsDUhjC0li; Mon,  7 Sep 2020 04:00:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 60EBF2010B;
	Mon,  7 Sep 2020 04:00:34 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6FD651BF964
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 04:00:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 6A7B48641F
 for <devel@linuxdriverproject.org>; Mon,  7 Sep 2020 04:00:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id J8h1P7fCYfx5 for <devel@linuxdriverproject.org>;
 Mon,  7 Sep 2020 04:00:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 9C0A986420
 for <devel@driverdev.osuosl.org>; Mon,  7 Sep 2020 04:00:28 +0000 (UTC)
IronPort-SDR: OXSwclBJpUhEaSxgsF1yygop45xq0TRU91Hx97qAiko/WqtkK/sbU4+X28lMY7Pz0SQakOWjuA
 7OsDJCv5Wi9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9736"; a="155450796"
X-IronPort-AV: E=Sophos;i="5.76,400,1592895600"; d="scan'208";a="155450796"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2020 21:00:14 -0700
IronPort-SDR: TRHISZnXF7lLAX5thBlUklMiCy21D/m5clAlCiv2kfeIGBENmrGjgB8kwB6nDfSu8ITPdIqYre
 FfcaUpTJvzyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,400,1592895600"; d="scan'208";a="335957137"
Received: from lkp-server01.sh.intel.com (HELO 4b5d6de90563) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 06 Sep 2020 21:00:13 -0700
Received: from kbuild by 4b5d6de90563 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kF8K7-0000P8-LG; Mon, 07 Sep 2020 04:00:07 +0000
Date: Mon, 07 Sep 2020 11:59:26 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 e2664d0870bbbf9df2513ed9870003a70bdb0e8e
Message-ID: <5f55b01e.6Ah1uAGOykV4zIVL%lkp@intel.com>
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
branch HEAD: e2664d0870bbbf9df2513ed9870003a70bdb0e8e  Merge tag 'iio-for-5.10a-take2' of https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio into staging-next

elapsed time: 724m

configs tested: 96
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                         rt305x_defconfig
arm                             mxs_defconfig
sh                          sdk7786_defconfig
mips                        bcm47xx_defconfig
ia64                      gensparse_defconfig
sh                          landisk_defconfig
h8300                    h8300h-sim_defconfig
xtensa                              defconfig
h8300                               defconfig
arm                        neponset_defconfig
powerpc                  mpc885_ads_defconfig
mips                           ip28_defconfig
mips                        omega2p_defconfig
i386                             allyesconfig
m68k                         apollo_defconfig
m68k                          atari_defconfig
s390                       zfcpdump_defconfig
mips                           ip27_defconfig
mips                      pic32mzda_defconfig
arm                       cns3420vb_defconfig
m68k                         amcore_defconfig
powerpc                         wii_defconfig
sh                         apsh4a3a_defconfig
riscv                            alldefconfig
powerpc                      ppc44x_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a004-20200906
i386                 randconfig-a005-20200906
i386                 randconfig-a006-20200906
i386                 randconfig-a002-20200906
i386                 randconfig-a003-20200906
i386                 randconfig-a001-20200906
x86_64               randconfig-a013-20200906
x86_64               randconfig-a011-20200906
x86_64               randconfig-a016-20200906
x86_64               randconfig-a012-20200906
x86_64               randconfig-a015-20200906
x86_64               randconfig-a014-20200906
i386                 randconfig-a016-20200906
i386                 randconfig-a015-20200906
i386                 randconfig-a011-20200906
i386                 randconfig-a013-20200906
i386                 randconfig-a014-20200906
i386                 randconfig-a012-20200906
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20200906
x86_64               randconfig-a004-20200906
x86_64               randconfig-a003-20200906
x86_64               randconfig-a005-20200906
x86_64               randconfig-a001-20200906
x86_64               randconfig-a002-20200906

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
