Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 86578682331
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Jan 2023 05:22:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EBC73813A4;
	Tue, 31 Jan 2023 04:22:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EBC73813A4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 34hu-ht1daZm; Tue, 31 Jan 2023 04:22:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BB073813A1;
	Tue, 31 Jan 2023 04:22:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BB073813A1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 127011BF399
 for <devel@linuxdriverproject.org>; Tue, 31 Jan 2023 04:22:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id DD7F4400B8
 for <devel@linuxdriverproject.org>; Tue, 31 Jan 2023 04:22:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DD7F4400B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XjIL1MaNdUIv for <devel@linuxdriverproject.org>;
 Tue, 31 Jan 2023 04:22:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CB2E8400AF
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CB2E8400AF
 for <devel@driverdev.osuosl.org>; Tue, 31 Jan 2023 04:22:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="311369771"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="311369771"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 20:22:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="732951640"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="732951640"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 30 Jan 2023 20:22:34 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pMiAD-00049K-1B;
 Tue, 31 Jan 2023 04:22:33 +0000
Date: Tue, 31 Jan 2023 12:21:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-next] BUILD SUCCESS
 b7810ea80ff0e1f7035c87296eb5ec77e4c13ec7
Message-ID: <63d8975d.QEmTrvPm7E0+63H1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675138955; x=1706674955;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=zqAB4pIQIkUVRWCSZ3SDJ4YG9AU++ZtzmIXDRyVS1PQ=;
 b=B6CGVQIFCW1SYRxDCFIyGmZPIxdTYXKsiwCvI55uJKsjquukfr8/CWFZ
 SYztXYBKddhwx8gVP0lUIT5ZjjsfpOrfdrWLhlxsUgO8lzb3ibhK5bCZ9
 dYnRrQu0i0U0gp6674lfEeiL7di0mQ9DbVQxOP5vGxl3jlKesHmnbQVYs
 JvvmwJ5Eh2v0/OUOcWIuIrTZQNl3jY8UvLBQShciwrBefVR6HZkC+huK6
 Hugxq3Du0qwPbXtzGQXk/SKgynP1tSdWiDm0iGGk1iJutaTEGL4BucEi7
 5BcKi/7x+ysu7FnxgUsBdSeD7133sTIaEmYeqIV1X8J6rpJ07syv4LCpy
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B6CGVQIF
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
branch HEAD: b7810ea80ff0e1f7035c87296eb5ec77e4c13ec7  driver core: fixup for "driver core: make struct bus_type.uevent() take a const *"

elapsed time: 729m

configs tested: 82
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64               randconfig-a006-20230130
powerpc                           allnoconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
x86_64                            allnoconfig
s390                             allyesconfig
i386                                defconfig
arm                                 defconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                          rhel-8.3-func
x86_64               randconfig-a001-20230130
x86_64               randconfig-a003-20230130
ia64                             allmodconfig
x86_64               randconfig-a004-20230130
x86_64               randconfig-a002-20230130
x86_64                               rhel-8.3
i386                 randconfig-a002-20230130
i386                 randconfig-a001-20230130
i386                 randconfig-a004-20230130
i386                 randconfig-a003-20230130
x86_64               randconfig-a005-20230130
arm64                            allyesconfig
i386                 randconfig-a005-20230130
x86_64                           rhel-8.3-syz
i386                 randconfig-a006-20230130
arm                              allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
x86_64                           allyesconfig
i386                             allyesconfig
sh                               allmodconfig
arc                  randconfig-r043-20230129
m68k                             allyesconfig
mips                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
powerpc                          allmodconfig
arm                  randconfig-r046-20230129
arm                  randconfig-r046-20230130
arc                  randconfig-r043-20230130
arm                         s3c6400_defconfig
csky                                defconfig
sh                          r7785rp_defconfig
m68k                        stmark2_defconfig
i386                          randconfig-c001
sh                   sh7724_generic_defconfig
powerpc                  iss476-smp_defconfig
powerpc                 mpc8540_ads_defconfig
powerpc                       maple_defconfig
m68k                            q40_defconfig
m68k                                defconfig
arm                            zeus_defconfig
openrisc                       virt_defconfig

clang tested configs:
x86_64               randconfig-a016-20230130
x86_64                          rhel-8.3-rust
i386                 randconfig-a016-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a012-20230130
x86_64               randconfig-a014-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a015-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a014-20230130
i386                 randconfig-a015-20230130
hexagon              randconfig-r041-20230129
riscv                randconfig-r042-20230129
i386                 randconfig-a013-20230130
riscv                randconfig-r042-20230130
i386                 randconfig-a011-20230130
hexagon              randconfig-r045-20230130
hexagon              randconfig-r041-20230130
hexagon              randconfig-r045-20230129
s390                 randconfig-r044-20230129
s390                 randconfig-r044-20230130
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
