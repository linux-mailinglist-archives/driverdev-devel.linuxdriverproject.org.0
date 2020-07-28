Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE81C231400
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jul 2020 22:34:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 420DF8825B;
	Tue, 28 Jul 2020 20:34:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hmCsIU1ydfvm; Tue, 28 Jul 2020 20:34:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 811D68823A;
	Tue, 28 Jul 2020 20:34:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0D43D1BF5A8
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 20:34:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0734A8200D
 for <devel@linuxdriverproject.org>; Tue, 28 Jul 2020 20:34:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Xq5g0uH6b6o for <devel@linuxdriverproject.org>;
 Tue, 28 Jul 2020 20:34:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 6623981E48
 for <devel@driverdev.osuosl.org>; Tue, 28 Jul 2020 20:34:07 +0000 (UTC)
IronPort-SDR: 9U+JH9yh+ZoILfn10qjo+XN0yS/AUpVyvp+Hlbvb00HYEmPcZdeuqGa62d8JEH7llF/n/+Qb7P
 c5LJp1EsI05w==
X-IronPort-AV: E=McAfee;i="6000,8403,9696"; a="131377881"
X-IronPort-AV: E=Sophos;i="5.75,407,1589266800"; d="scan'208";a="131377881"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2020 13:34:06 -0700
IronPort-SDR: hbvzX4qpUTWY6sxjpzUUGYf2wkGrxdbs/u/WWLHdCESMG9V1TTXAyw6XiI25+oTX+APOGUJ08D
 pfDRpZCPqA4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,407,1589266800"; d="scan'208";a="312763797"
Received: from lkp-server01.sh.intel.com (HELO d27eb53fc52b) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 28 Jul 2020 13:34:05 -0700
Received: from kbuild by d27eb53fc52b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1k0WIW-00013X-5p; Tue, 28 Jul 2020 20:34:04 +0000
Date: Wed, 29 Jul 2020 04:33:30 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 eea2c51f81df9df5123c042f07c7c6c33bf5fabb
Message-ID: <5f208b9a.hmZXFR9s4sDXrBaL%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  driver-core-testing
branch HEAD: eea2c51f81df9df5123c042f07c7c6c33bf5fabb  Merge 5.8-rc7 into driver-core-next

elapsed time: 1776m

configs tested: 55
configs skipped: 1

The following configs have been built successfully.
More configs may be tested in the coming days.

arm64                            allyesconfig
arm64                               defconfig
arm                                 defconfig
arm                              allyesconfig
arm                              allmodconfig
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
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                             defconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a003-20200727
i386                 randconfig-a016-20200727
i386                 randconfig-a013-20200727
i386                 randconfig-a012-20200727
i386                 randconfig-a015-20200727
i386                 randconfig-a011-20200727
i386                 randconfig-a014-20200727
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                                  kexec
x86_64                               rhel-8.3

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
