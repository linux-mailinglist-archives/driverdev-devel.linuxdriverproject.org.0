Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C10F9652B79
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Dec 2022 03:30:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 70E3761012;
	Wed, 21 Dec 2022 02:29:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70E3761012
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TYVaKCWQ7wYF; Wed, 21 Dec 2022 02:29:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3CFC86100F;
	Wed, 21 Dec 2022 02:29:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3CFC86100F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5E8611BF94D
 for <devel@linuxdriverproject.org>; Wed, 21 Dec 2022 02:29:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 45E838141B
 for <devel@linuxdriverproject.org>; Wed, 21 Dec 2022 02:29:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45E838141B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vxUw4OYKsXCy for <devel@linuxdriverproject.org>;
 Wed, 21 Dec 2022 02:29:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 53610813DF
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 53610813DF
 for <devel@driverdev.osuosl.org>; Wed, 21 Dec 2022 02:29:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="299442650"
X-IronPort-AV: E=Sophos;i="5.96,261,1665471600"; d="scan'208";a="299442650"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 18:29:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10567"; a="740002211"
X-IronPort-AV: E=Sophos;i="5.96,261,1665471600"; d="scan'208";a="740002211"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Dec 2022 18:29:44 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p7orX-0009h2-24;
 Wed, 21 Dec 2022 02:29:43 +0000
Date: Wed, 21 Dec 2022 10:28:59 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 0b47b3702d0af97eb171af0f12003021d35c6859
Message-ID: <63a26f6b.fzPWzhk2tY/w+W5F%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671589793; x=1703125793;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=i+aqQNPZPQ68WPNiCvKySvscwztTZLETKBlAjY/gNE8=;
 b=Muo6MhfLcAWi1BhkFtdusc1cfQVj7qyD0f6iKPXaY9ZbOlUwTVHIA1q0
 g4Mt2GNeiesJsQ947/N6x1CodapHAubwr8ZGZWs7UP1GkfcwMFhLUC+6J
 yxftkEzFShDRUdJVmzNLvh73eiLlTv5uPxE5ZgAiDKc0Z+PFmE8XlkhPo
 SLptyJxswhIxF+KwdNKXbSivWzZttyFdGHy3H0chBuI5qYOnVNf+iGN4W
 VZ6qmAKaG1Hhg7y+JrmOAmftLpFthZtt4UCmQnMPiLz5NzdmIpBaOSvC2
 SAPHB92Zm2a7L02hdcQR+Qr/liwqSQ/2OzxKpN6kjr7b6op3/2l55D9VC
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Muo6MhfL
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
branch HEAD: 0b47b3702d0af97eb171af0f12003021d35c6859  readfile.2: new page describing readfile(2)

elapsed time: 1044m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
alpha                               defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
x86_64                              defconfig
x86_64               randconfig-a002-20221219
i386                                defconfig
m68k                             allyesconfig
x86_64               randconfig-a003-20221219
arc                                 defconfig
arm                                 defconfig
m68k                             allmodconfig
x86_64               randconfig-a001-20221219
i386                 randconfig-a001-20221219
x86_64               randconfig-a004-20221219
i386                 randconfig-a003-20221219
arc                              allyesconfig
x86_64               randconfig-a006-20221219
alpha                            allyesconfig
x86_64               randconfig-a005-20221219
x86_64                               rhel-8.3
i386                 randconfig-a002-20221219
ia64                             allmodconfig
i386                 randconfig-a006-20221219
i386                 randconfig-a005-20221219
s390                                defconfig
i386                 randconfig-a004-20221219
x86_64                          rhel-8.3-func
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
arm                              allyesconfig
x86_64                         rhel-8.3-kunit
arm64                            allyesconfig
s390                             allmodconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
i386                             allyesconfig
sh                               allmodconfig
powerpc                          allmodconfig
mips                             allyesconfig
riscv                randconfig-r042-20221218
s390                             allyesconfig
arc                  randconfig-r043-20221219
arm                  randconfig-r046-20221219
arc                  randconfig-r043-20221218
s390                 randconfig-r044-20221218
x86_64                            allnoconfig

clang tested configs:
x86_64               randconfig-a011-20221219
x86_64               randconfig-a012-20221219
x86_64               randconfig-a014-20221219
x86_64                          rhel-8.3-rust
i386                 randconfig-a015-20221219
i386                 randconfig-a011-20221219
x86_64               randconfig-a015-20221219
i386                 randconfig-a014-20221219
x86_64               randconfig-a016-20221219
i386                 randconfig-a012-20221219
x86_64               randconfig-a013-20221219
i386                 randconfig-a013-20221219
arm                  randconfig-r046-20221218
i386                 randconfig-a016-20221219
hexagon              randconfig-r041-20221218
hexagon              randconfig-r045-20221219
hexagon              randconfig-r041-20221219
hexagon              randconfig-r045-20221218
riscv                randconfig-r042-20221219
s390                 randconfig-r044-20221219

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
