Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2EB652B7A
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Dec 2022 03:30:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 88BBE40AB6;
	Wed, 21 Dec 2022 02:30:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88BBE40AB6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id heYaTjvBpaKP; Wed, 21 Dec 2022 02:30:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B9C14013F;
	Wed, 21 Dec 2022 02:30:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B9C14013F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AECB51BF94D
 for <devel@linuxdriverproject.org>; Wed, 21 Dec 2022 02:30:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8819B40554
 for <devel@linuxdriverproject.org>; Wed, 21 Dec 2022 02:30:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8819B40554
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I40Jmq-p46hU for <devel@linuxdriverproject.org>;
 Wed, 21 Dec 2022 02:30:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 459D541697
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 459D541697
 for <devel@driverdev.osuosl.org>; Wed, 21 Dec 2022 02:30:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="321674372"
X-IronPort-AV: E=Sophos;i="5.96,261,1665471600"; d="scan'208";a="321674372"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 18:30:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="896705148"
X-IronPort-AV: E=Sophos;i="5.96,261,1665471600"; d="scan'208";a="896705148"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 20 Dec 2022 18:30:15 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p7os3-0009iq-0K;
 Wed, 21 Dec 2022 02:30:15 +0000
Date: Wed, 21 Dec 2022 10:28:25 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 8917220cbca17af045828c17a1d4f844abc00df8
Message-ID: <63a26f49.B466THUB1MwjmAEW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671589818; x=1703125818;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=rT6dUWtPNVtMbQUQzGHaQFqem4ishYGLL4+c9FFwNxY=;
 b=OhzwmcxxKl/3MCej1B4gLNmogGY/1KDMiK+w3JJoHvP+78/k7kUcWGBP
 zG57/mLrVnqhnppkpUgeKdseoDt628O6v0eDb5SgQIjUGh0ZzR2EDqawh
 SBAuI/pfhWaQtZdgUTyxAwaG47lfN8nasjZGeHLOt8si/ZZRJN7VYgfwT
 fg1RiMQ9pZ2xXpavBmclRKB9dvLnYC1Mq6fUTU01vfYCyQ1yVRJBd2J6a
 HW0YBTIkNPnqXVhNbz/OQeXQPLoRWaWrGYGMGG7FCEhilIvhCIMDa293G
 fApHdJWoBMZYoDpplsrFjJws1GIlYfqlchibj16B8vpyQeoaTp3caLkyY
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ohzwmcxx
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_lookup_fix
branch HEAD: 8917220cbca17af045828c17a1d4f844abc00df8  kernel/time/test_udelay.c: debugfs_lookup() fix

elapsed time: 1044m

configs tested: 60
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
i386                                defconfig
x86_64               randconfig-a002-20221219
x86_64               randconfig-a003-20221219
x86_64                           rhel-8.3-bpf
powerpc                           allnoconfig
x86_64                              defconfig
x86_64               randconfig-a001-20221219
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64               randconfig-a004-20221219
ia64                             allmodconfig
x86_64                          rhel-8.3-func
x86_64               randconfig-a006-20221219
x86_64                         rhel-8.3-kunit
x86_64               randconfig-a005-20221219
arc                  randconfig-r043-20221220
x86_64                           rhel-8.3-kvm
riscv                randconfig-r042-20221220
arm                                 defconfig
s390                             allmodconfig
i386                 randconfig-a001-20221219
i386                 randconfig-a003-20221219
x86_64                               rhel-8.3
alpha                               defconfig
s390                 randconfig-r044-20221220
m68k                             allyesconfig
i386                 randconfig-a002-20221219
s390                             allyesconfig
i386                 randconfig-a006-20221219
x86_64                           allyesconfig
s390                                defconfig
i386                 randconfig-a005-20221219
m68k                             allmodconfig
i386                 randconfig-a004-20221219
arm                              allyesconfig
arm64                            allyesconfig
sh                               allmodconfig
i386                             allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                            allnoconfig

clang tested configs:
arm                  randconfig-r046-20221220
x86_64                          rhel-8.3-rust
x86_64               randconfig-a011-20221219
i386                 randconfig-a014-20221219
x86_64               randconfig-a012-20221219
x86_64               randconfig-a014-20221219
x86_64               randconfig-a013-20221219
i386                 randconfig-a012-20221219
x86_64               randconfig-a016-20221219
hexagon              randconfig-r045-20221220
i386                 randconfig-a013-20221219
i386                 randconfig-a015-20221219
hexagon              randconfig-r041-20221220
i386                 randconfig-a016-20221219
x86_64               randconfig-a015-20221219
i386                 randconfig-a011-20221219

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
