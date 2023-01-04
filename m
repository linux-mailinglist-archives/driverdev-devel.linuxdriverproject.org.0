Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5447365DDE9
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Jan 2023 21:56:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B782A82016;
	Wed,  4 Jan 2023 20:56:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B782A82016
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qh0JxupmSXf7; Wed,  4 Jan 2023 20:56:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E91481DEC;
	Wed,  4 Jan 2023 20:56:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E91481DEC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 342311BF82C
 for <devel@linuxdriverproject.org>; Wed,  4 Jan 2023 20:56:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0008781BE3
 for <devel@linuxdriverproject.org>; Wed,  4 Jan 2023 20:56:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0008781BE3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8f6izJEi95a3 for <devel@linuxdriverproject.org>;
 Wed,  4 Jan 2023 20:56:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9EBFB8196E
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9EBFB8196E
 for <devel@driverdev.osuosl.org>; Wed,  4 Jan 2023 20:56:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="319743110"
X-IronPort-AV: E=Sophos;i="5.96,301,1665471600"; d="scan'208";a="319743110"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 12:56:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10580"; a="605299828"
X-IronPort-AV: E=Sophos;i="5.96,301,1665471600"; d="scan'208";a="605299828"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 04 Jan 2023 12:56:10 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pDAny-0000lr-07;
 Wed, 04 Jan 2023 20:56:10 +0000
Date: Thu, 05 Jan 2023 04:55:57 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 3f2fbe0b730a1665148ebdabc768cb4965d68fee
Message-ID: <63b5e7dd.zxfTzHF7NenBH34J%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672865773; x=1704401773;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=JplH2fnFapzvNbl8IoqhgDf2i3d+EH4w+kq1RRgiZx0=;
 b=aSeGeAD6kvzBNg4nJLNXlEE/s2mjoqlxndeb2ow+OzWdmtl4Yucos79F
 k65PDsK4cj2FYYG6PKl3ourDdahpuRgvBu334AOpCs/4IRHF43cv+rAog
 Nal6oAv21WK4Ut4ntHRiRoBGeoRF9tR/+PzWhx1IOwBC+i/kx5+gqZP8i
 OXOojVb5KNx/lDlFzw3CpxGISGpPe9RyCIEctWqu2uoGie5X860QzO8sD
 fq3h3O11FcuxWdyJnLqpPJ79CirD1h1iubNoF6hDs5iuovF2D5BhZCfPh
 Y0HfA/DBLOQyJzqWSAf2bCJ8TrF0byjs+Ou4mrgOtIJG7YSL2KNb6F9c/
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aSeGeAD6
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
branch HEAD: 3f2fbe0b730a1665148ebdabc768cb4965d68fee  kobject: kset_uevent_ops: make uevent() callback take a const *

elapsed time: 720m

configs tested: 74
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
sh                               allmodconfig
mips                             allyesconfig
arc                                 defconfig
powerpc                          allmodconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                               rhel-8.3
s390                                defconfig
x86_64               randconfig-a003-20230102
m68k                             allyesconfig
x86_64               randconfig-a001-20230102
m68k                             allmodconfig
s390                             allyesconfig
x86_64               randconfig-a004-20230102
x86_64                           allyesconfig
i386                 randconfig-a004-20230102
arc                              allyesconfig
i386                 randconfig-a003-20230102
x86_64               randconfig-a002-20230102
i386                                defconfig
alpha                            allyesconfig
ia64                             allmodconfig
i386                 randconfig-a001-20230102
x86_64               randconfig-a006-20230102
i386                 randconfig-a002-20230102
x86_64               randconfig-a005-20230102
i386                 randconfig-a005-20230102
i386                 randconfig-a006-20230102
arm                                 defconfig
x86_64                          rhel-8.3-func
x86_64                           rhel-8.3-syz
x86_64                    rhel-8.3-kselftests
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
riscv                randconfig-r042-20230101
s390                 randconfig-r044-20230101
i386                             allyesconfig
arc                  randconfig-r043-20230102
arm64                            allyesconfig
arm                              allyesconfig
arm                  randconfig-r046-20230102
arc                  randconfig-r043-20230101
i386                          randconfig-c001
powerpc              randconfig-c003-20230101

clang tested configs:
x86_64                          rhel-8.3-rust
i386                 randconfig-a011-20230102
x86_64               randconfig-a011-20230102
i386                 randconfig-a014-20230102
x86_64               randconfig-a014-20230102
i386                 randconfig-a013-20230102
x86_64               randconfig-a012-20230102
x86_64               randconfig-a013-20230102
i386                 randconfig-a012-20230102
x86_64               randconfig-a015-20230102
i386                 randconfig-a016-20230102
i386                 randconfig-a015-20230102
x86_64               randconfig-a016-20230102
hexagon              randconfig-r041-20230102
s390                 randconfig-r044-20230102
hexagon              randconfig-r045-20230101
hexagon              randconfig-r045-20230102
arm                  randconfig-r046-20230101
riscv                randconfig-r042-20230102
hexagon              randconfig-r041-20230101
x86_64                        randconfig-k001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
