Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1AF643A76
	for <lists+driverdev-devel@lfdr.de>; Tue,  6 Dec 2022 01:51:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 38BFC40476;
	Tue,  6 Dec 2022 00:51:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 38BFC40476
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tcx3V2k8-OA3; Tue,  6 Dec 2022 00:51:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA1BC400DA;
	Tue,  6 Dec 2022 00:51:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA1BC400DA
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 246581BF955
 for <devel@linuxdriverproject.org>; Tue,  6 Dec 2022 00:51:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 057484050F
 for <devel@linuxdriverproject.org>; Tue,  6 Dec 2022 00:51:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 057484050F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zjIf771quMUW for <devel@linuxdriverproject.org>;
 Tue,  6 Dec 2022 00:51:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D8FC340509
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D8FC340509
 for <devel@driverdev.osuosl.org>; Tue,  6 Dec 2022 00:51:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="314149403"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="314149403"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 16:51:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10552"; a="734800320"
X-IronPort-AV: E=Sophos;i="5.96,220,1665471600"; d="scan'208";a="734800320"
Received: from lkp-server01.sh.intel.com (HELO b3c45e08cbc1) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Dec 2022 16:51:28 -0800
Received: from kbuild by b3c45e08cbc1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p2MBD-0000Sf-1b;
 Tue, 06 Dec 2022 00:51:27 +0000
Date: Tue, 06 Dec 2022 08:50:46 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 7bef797d707f1744f71156b21d41e3b8c946631f
Message-ID: <638e91e6.80COaFZSDNxtfmVZ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670287890; x=1701823890;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=R4wBqMmaE7vDb8qUo8akEYNeliBCeFAIzC/FxYIMWjE=;
 b=kiwQN1J6xc81/Zn6P2sRi1zo3NdDIWGK5nTDb11O5N1ECNkHcd2+WDdx
 0LUsBM2gXqsZoBFovt0EV4///WWLvR9YnWmCftR7ng0bMqtDnq/GNOvKC
 Mj09Zm4Idi6yfbmYYhh77eCXNXeQdmtyDzbFuYEKsUmyaaKT5iYeonEI/
 dXxbK6K2m0UyYU1j8kEXxVEmLe1QMSn+ohlqf9bE1hwdLBSdOLZ4xuSev
 meJKcQmhHV0cMjQAHCp/gB59WfIfDhBTt3bAXTPsWlt2Y6X/WDHe0b0p0
 i/HqMteHJln7F1IN471cLzciA4wjrwNTKu9glz6+ryHexR6wd9lvLQ+af
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kiwQN1J6
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 7bef797d707f1744f71156b21d41e3b8c946631f  vme: Fix error not catched in fake_init()

elapsed time: 720m

configs tested: 65
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
i386                                defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
ia64                             allmodconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
m68k                             allyesconfig
s390                             allyesconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
i386                             allyesconfig
sh                               allmodconfig
x86_64                              defconfig
x86_64               randconfig-a011-20221205
x86_64               randconfig-a012-20221205
x86_64               randconfig-a014-20221205
x86_64               randconfig-a013-20221205
x86_64               randconfig-a015-20221205
x86_64               randconfig-a016-20221205
x86_64                           allyesconfig
arc                  randconfig-r043-20221205
arm                  randconfig-r046-20221204
s390                 randconfig-r044-20221205
arc                  randconfig-r043-20221204
riscv                randconfig-r042-20221205
i386                 randconfig-a014-20221205
i386                 randconfig-a012-20221205
i386                 randconfig-a011-20221205
i386                 randconfig-a013-20221205
i386                 randconfig-a016-20221205
i386                 randconfig-a015-20221205
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig

clang tested configs:
x86_64               randconfig-a003-20221205
x86_64               randconfig-a004-20221205
x86_64               randconfig-a001-20221205
x86_64               randconfig-a002-20221205
x86_64               randconfig-a006-20221205
x86_64               randconfig-a005-20221205
hexagon              randconfig-r041-20221204
hexagon              randconfig-r045-20221204
hexagon              randconfig-r045-20221205
arm                  randconfig-r046-20221205
hexagon              randconfig-r041-20221205
riscv                randconfig-r042-20221204
s390                 randconfig-r044-20221204
i386                 randconfig-a001-20221205
i386                 randconfig-a002-20221205
i386                 randconfig-a005-20221205
i386                 randconfig-a004-20221205
i386                 randconfig-a003-20221205
i386                 randconfig-a006-20221205

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
