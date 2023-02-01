Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EDD6861F8
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Feb 2023 09:48:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2D92410D3;
	Wed,  1 Feb 2023 08:48:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2D92410D3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fsO6a-bgGcUg; Wed,  1 Feb 2023 08:48:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C89D410C8;
	Wed,  1 Feb 2023 08:48:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C89D410C8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 65BEC1BF2F2
 for <devel@linuxdriverproject.org>; Wed,  1 Feb 2023 08:48:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3DED081D2D
 for <devel@linuxdriverproject.org>; Wed,  1 Feb 2023 08:48:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3DED081D2D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LpMRMqQWnSVZ for <devel@linuxdriverproject.org>;
 Wed,  1 Feb 2023 08:48:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3A99B81D0B
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 3A99B81D0B
 for <devel@driverdev.osuosl.org>; Wed,  1 Feb 2023 08:48:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="316083194"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="316083194"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2023 00:48:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="642332921"
X-IronPort-AV: E=Sophos;i="5.97,263,1669104000"; d="scan'208";a="642332921"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 01 Feb 2023 00:48:23 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pN8mv-0005H6-1Y;
 Wed, 01 Feb 2023 08:48:17 +0000
Date: Wed, 01 Feb 2023 16:47:40 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 e4525dd49f5098a340e4a43d6ededb7954e9ba66
Message-ID: <63da272c.p5VF3YbAzcrBdbew%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675241305; x=1706777305;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=GvSjnIC/7SSrbdXPtgPl1EIObdDMW0VMQFCqiFsyxj4=;
 b=MEchtJhy29cYQqL3DEM4rf3KOBIFigprHN8/ksPCqD+O/AMFj4LUl+v8
 MwT1Im6dZPB/Ef3uQyhhJ9XU19akCXCXOtDOVuZj0Fz+90t7pXpl7Z164
 iwDKYDChBWWQbnESuZa0r6dGcnXFSiPdEg2KG5FsOyJAiuAxgCNGpXXB8
 B6swbqB1X3rhjLadmvSH3zanWe9fdsb8id3buPZH+rrIOmHwEnFLnGwP3
 ZwUCyr+DXKKv3SP8wIwcOB9pPiz3o6HvvkRtNsq8W7cCRQ6iqakBYcUJw
 TkHVBXjdEkMShzbjo0rrTODpwW10ffTlRVd/3u41sKMYhJVokhFbmN3wb
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MEchtJhy
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: e4525dd49f5098a340e4a43d6ededb7954e9ba66  bus: remove the "p" pointer in struct bus_type

elapsed time: 720m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
x86_64               randconfig-a001-20230130
x86_64               randconfig-a003-20230130
x86_64                              defconfig
x86_64               randconfig-a004-20230130
i386                 randconfig-a002-20230130
x86_64               randconfig-a002-20230130
i386                 randconfig-a001-20230130
x86_64               randconfig-a006-20230130
i386                 randconfig-a004-20230130
x86_64                               rhel-8.3
i386                 randconfig-a003-20230130
x86_64               randconfig-a005-20230130
ia64                             allmodconfig
x86_64                           rhel-8.3-syz
arc                                 defconfig
i386                 randconfig-a005-20230130
x86_64                         rhel-8.3-kunit
s390                             allmodconfig
x86_64                    rhel-8.3-kselftests
alpha                               defconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
s390                                defconfig
i386                 randconfig-a006-20230130
powerpc                           allnoconfig
x86_64                           allyesconfig
x86_64                           rhel-8.3-bpf
mips                             allyesconfig
s390                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
m68k                             allmodconfig
m68k                             allyesconfig
alpha                            allyesconfig
arc                              allyesconfig
i386                             allyesconfig
arc                  randconfig-r043-20230129
arm                                 defconfig
arm                  randconfig-r046-20230129
arm                  randconfig-r046-20230130
arc                  randconfig-r043-20230130
arm                              allyesconfig
arm64                            allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016

clang tested configs:
x86_64                          rhel-8.3-rust
hexagon              randconfig-r041-20230129
riscv                randconfig-r042-20230129
hexagon              randconfig-r045-20230130
hexagon              randconfig-r041-20230130
x86_64               randconfig-a014-20230130
hexagon              randconfig-r045-20230129
x86_64               randconfig-a012-20230130
s390                 randconfig-r044-20230129
riscv                randconfig-r042-20230130
x86_64               randconfig-a013-20230130
s390                 randconfig-r044-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a016-20230130
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
