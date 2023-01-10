Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 314B466390E
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Jan 2023 07:11:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DDB8A40184;
	Tue, 10 Jan 2023 06:11:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DDB8A40184
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DM_yQT_RlhNM; Tue, 10 Jan 2023 06:11:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A83A1400C4;
	Tue, 10 Jan 2023 06:11:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A83A1400C4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 82E031BF263
 for <devel@linuxdriverproject.org>; Tue, 10 Jan 2023 06:11:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 55BB040184
 for <devel@linuxdriverproject.org>; Tue, 10 Jan 2023 06:11:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 55BB040184
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uImVp_EtvxWZ for <devel@linuxdriverproject.org>;
 Tue, 10 Jan 2023 06:11:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11C5D400A4
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 11C5D400A4
 for <devel@driverdev.osuosl.org>; Tue, 10 Jan 2023 06:11:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="306584922"
X-IronPort-AV: E=Sophos;i="5.96,314,1665471600"; d="scan'208";a="306584922"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 22:11:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="650254936"
X-IronPort-AV: E=Sophos;i="5.96,314,1665471600"; d="scan'208";a="650254936"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 09 Jan 2023 22:10:58 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pF7qb-0007f6-2d;
 Tue, 10 Jan 2023 06:10:57 +0000
Date: Tue, 10 Jan 2023 14:10:45 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 6a98c92ec7e1cc68338bd81fe6641dcb915eb623
Message-ID: <63bd0165.E0uHcE1tWyT57Cvu%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673331061; x=1704867061;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=NZAd/R5Zx6rsv35THeDIBbUP3vg5Rr11xfeVTmTdeFc=;
 b=QH9TmmoKY/8osHkL48ABADJAPyIaBcRaKmKTbmPuG1Oe5NaGdaZLVgOr
 tjpJBCh8h0Yabxjp/yLvebo3y9GPlwVdKxMQh6tvd5WUwBR/tKimqSCqL
 /5JYGmGcIS4fWfM7S+cs0Y2pkMFvZP0j0wqzF0JlLUAvGsfTHqwmCzLVg
 EmaHwbWfpTwpqfGsZnEgtfzZhZwb4kZ+nrIJipTj/KxHB5ImUFbMpR+AQ
 c7NjX5gjYGBmKlLevykAH/Au9zaH+yxzFS1k0ItejuvX6OKo9F9mZ7LOS
 vkBM62eADydAcdICUFNhlTbJvPghZP/dsUVUh79vzw+LyHsZt/pJ3ppql
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QH9TmmoK
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
branch HEAD: 6a98c92ec7e1cc68338bd81fe6641dcb915eb623  bus: step 1

elapsed time: 721m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
arc                                 defconfig
alpha                               defconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                              defconfig
arm                                 defconfig
x86_64               randconfig-a011-20230109
x86_64                               rhel-8.3
i386                 randconfig-a014-20230109
x86_64                           rhel-8.3-syz
s390                                defconfig
i386                 randconfig-a011-20230109
x86_64                         rhel-8.3-kunit
x86_64                           allyesconfig
x86_64                           rhel-8.3-kvm
s390                             allmodconfig
x86_64                           rhel-8.3-bpf
x86_64               randconfig-a013-20230109
um                             i386_defconfig
x86_64               randconfig-a012-20230109
x86_64               randconfig-a014-20230109
um                           x86_64_defconfig
x86_64               randconfig-a016-20230109
ia64                             allmodconfig
x86_64               randconfig-a015-20230109
i386                 randconfig-a013-20230109
arm64                            allyesconfig
i386                 randconfig-a012-20230109
i386                 randconfig-a016-20230109
i386                 randconfig-a015-20230109
s390                             allyesconfig
arm                              allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
i386                                defconfig
i386                             allyesconfig
arm                  randconfig-r046-20230108
arc                  randconfig-r043-20230108

clang tested configs:
x86_64               randconfig-a003-20230109
x86_64               randconfig-a002-20230109
x86_64               randconfig-a004-20230109
x86_64               randconfig-a005-20230109
x86_64               randconfig-a001-20230109
x86_64                          rhel-8.3-rust
x86_64               randconfig-a006-20230109
i386                 randconfig-a004-20230109
i386                 randconfig-a002-20230109
i386                 randconfig-a003-20230109
i386                 randconfig-a001-20230109
i386                 randconfig-a005-20230109
i386                 randconfig-a006-20230109
hexagon              randconfig-r045-20230108
riscv                randconfig-r042-20230108
hexagon              randconfig-r041-20230108
s390                 randconfig-r044-20230108

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
