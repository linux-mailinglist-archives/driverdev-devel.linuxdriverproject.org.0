Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DE4D5E9073
	for <lists+driverdev-devel@lfdr.de>; Sun, 25 Sep 2022 01:52:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B605E418A0;
	Sat, 24 Sep 2022 23:52:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B605E418A0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OHtXM84rcRG9; Sat, 24 Sep 2022 23:52:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 035A14171F;
	Sat, 24 Sep 2022 23:52:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 035A14171F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A0191BF3A7
 for <devel@linuxdriverproject.org>; Sat, 24 Sep 2022 23:52:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2F7F040165
 for <devel@linuxdriverproject.org>; Sat, 24 Sep 2022 23:52:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F7F040165
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hsYXNEtsYt0h for <devel@linuxdriverproject.org>;
 Sat, 24 Sep 2022 23:52:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9466440123
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9466440123
 for <devel@driverdev.osuosl.org>; Sat, 24 Sep 2022 23:52:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10480"; a="301713949"
X-IronPort-AV: E=Sophos;i="5.93,343,1654585200"; d="scan'208";a="301713949"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2022 16:52:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,343,1654585200"; d="scan'208";a="763023285"
Received: from lkp-server01.sh.intel.com (HELO c0a60f19fe7e) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 24 Sep 2022 16:52:06 -0700
Received: from kbuild by c0a60f19fe7e with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ocEwH-000782-2F;
 Sat, 24 Sep 2022 23:52:05 +0000
Date: Sun, 25 Sep 2022 07:51:25 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-next] BUILD SUCCESS
 ec9c88070debd8d87335f2468481a41d6bc2d0c6
Message-ID: <632f97fd.3m4PSEhfl0haQdy1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664063528; x=1695599528;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=s22XboMSD/rdOzxZ75Vulnk/uSPMHyTUPSghHfPnDyI=;
 b=m9GZa1lI3zfplXkthJZCqs0PRWkgkiBiGLbUSOKP8uAc++8DF6IRTwwF
 QDwR5RjgvQbijiulKbwCUpcilWdjdF5qhbFWJhDgstRuvARgD0HrXMprN
 Ipp6FecILWVrx0SjCGJ/rZlZwwLe5se6b+++oM2S3tA8sjiMjGdxn6Clq
 4vR3ru7cL8Vs4tFrPnRRZ31Vn0LAwELC9rx0YZeZ4AhfGGYH0ssAHheh1
 gqNykHUX48ToVEzgVdLRlurO1xRW0jgNTs5zy0Un6ri6na0dwk75Sm1HC
 v7fWjgDOukHD4UeRYLwrzbI1WjvdTqZs5sThRadsrAF6WwQ6HqfehflaJ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m9GZa1lI
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-next
branch HEAD: ec9c88070debd8d87335f2468481a41d6bc2d0c6  Merge 1707c39ae309 ("Merge tag 'driver-core-6.0-rc7' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core") driver-core-next

elapsed time: 724m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                               defconfig
um                             i386_defconfig
arc                                 defconfig
um                           x86_64_defconfig
x86_64                              defconfig
i386                                defconfig
x86_64                               rhel-8.3
powerpc                          allmodconfig
sh                               allmodconfig
mips                             allyesconfig
x86_64                           allyesconfig
x86_64                        randconfig-a004
s390                 randconfig-r044-20220923
x86_64                          rhel-8.3-func
x86_64                        randconfig-a002
arc                  randconfig-r043-20220923
powerpc                           allnoconfig
x86_64                        randconfig-a013
arm                                 defconfig
m68k                             allmodconfig
riscv                randconfig-r042-20220923
x86_64                        randconfig-a011
x86_64                    rhel-8.3-kselftests
i386                             allyesconfig
x86_64                        randconfig-a006
arc                              allyesconfig
x86_64                        randconfig-a015
alpha                            allyesconfig
ia64                             allmodconfig
m68k                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
s390                                defconfig
arm                              allyesconfig
i386                          randconfig-a005
s390                             allmodconfig
i386                          randconfig-a014
arm64                            allyesconfig
i386                          randconfig-a012
i386                          randconfig-a016
s390                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm

clang tested configs:
hexagon              randconfig-r041-20220923
hexagon              randconfig-r045-20220923
x86_64                        randconfig-a001
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a014
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a006
i386                          randconfig-a011

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
