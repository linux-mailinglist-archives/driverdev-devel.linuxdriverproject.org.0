Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4D76790BF
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Jan 2023 07:17:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F01241752;
	Tue, 24 Jan 2023 06:17:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F01241752
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ioABw3kKlBym; Tue, 24 Jan 2023 06:17:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8AF5941737;
	Tue, 24 Jan 2023 06:17:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8AF5941737
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 234E91BF370
 for <devel@linuxdriverproject.org>; Tue, 24 Jan 2023 06:17:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EF38760E8E
 for <devel@linuxdriverproject.org>; Tue, 24 Jan 2023 06:17:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EF38760E8E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9V2c5EdGKoSW for <devel@linuxdriverproject.org>;
 Tue, 24 Jan 2023 06:17:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7139060BB0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7139060BB0
 for <devel@driverdev.osuosl.org>; Tue, 24 Jan 2023 06:17:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="412465173"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="412465173"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 22:17:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="990748712"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="990748712"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 23 Jan 2023 22:17:42 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pKCcn-0006CO-3B;
 Tue, 24 Jan 2023 06:17:41 +0000
Date: Tue, 24 Jan 2023 14:17:36 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 2529ca2114028182f3871b2a27143e61de99321e
Message-ID: <63cf7800.+n/L58CqoujWEA/4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674541064; x=1706077064;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=G1kOxp2z4lQ21t7XlDJ6qogvxKZMXzsKOFrpv5Vktb0=;
 b=iDCWdt7jkD9VZbYrFFJKUulZrs+fBgQJ8zip7B77mnRuuuInvK+9pRKo
 DjHLoWKeRcuTqUE0cM721NGdoHTowALTDLwPEU/UKUABduu776Ww3SB+G
 L2GwdqYwbAyw9din4FqBqdIxtUlbYsrXwxD8s0bQeaMo1SG1Z7HYoihn1
 u8ZZ0DKRwFAi68Bno/k35fs5qygldoe7CEOqb5aWsp+i7N21mB9qYvBS9
 r5rkg7Iop26x4/KCf/wmTEXCA1X3o3IyqB0dEUn3WhJzFqmSiUwlYokH8
 xWRonmCaSiY3meYyWYXUQNC+Y83FTylCeaW8QFnUij5dnU/LHhBjJ9rux
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iDCWdt7j
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
branch HEAD: 2529ca2114028182f3871b2a27143e61de99321e  staging: vc04_services: interface: Drop include Makefile directive

elapsed time: 721m

configs tested: 66
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
x86_64                            allnoconfig
sh                               allmodconfig
arc                                 defconfig
um                             i386_defconfig
s390                             allmodconfig
um                           x86_64_defconfig
alpha                               defconfig
mips                             allyesconfig
powerpc                          allmodconfig
s390                                defconfig
s390                             allyesconfig
arc                  randconfig-r043-20230124
s390                 randconfig-r044-20230124
riscv                randconfig-r042-20230124
x86_64                              defconfig
i386                 randconfig-a004-20230123
i386                 randconfig-a003-20230123
i386                 randconfig-a002-20230123
i386                 randconfig-a001-20230123
x86_64                               rhel-8.3
i386                 randconfig-a005-20230123
ia64                             allmodconfig
i386                 randconfig-a006-20230123
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64               randconfig-a002-20230123
x86_64                    rhel-8.3-kselftests
x86_64               randconfig-a001-20230123
x86_64               randconfig-a004-20230123
x86_64               randconfig-a003-20230123
x86_64               randconfig-a005-20230123
x86_64               randconfig-a006-20230123
arm                                 defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
i386                                defconfig
i386                             allyesconfig
arm                              allyesconfig
arm64                            allyesconfig
arm                        multi_v7_defconfig
powerpc                       eiger_defconfig
mips                            ar7_defconfig
arc                            hsdk_defconfig

clang tested configs:
hexagon              randconfig-r045-20230124
arm                  randconfig-r046-20230124
hexagon              randconfig-r041-20230124
x86_64                          rhel-8.3-rust
i386                 randconfig-a012-20230123
i386                 randconfig-a013-20230123
i386                 randconfig-a011-20230123
i386                 randconfig-a014-20230123
x86_64               randconfig-a013-20230123
i386                 randconfig-a016-20230123
x86_64               randconfig-a011-20230123
i386                 randconfig-a015-20230123
x86_64               randconfig-a012-20230123
x86_64               randconfig-a014-20230123
x86_64               randconfig-a016-20230123
x86_64               randconfig-a015-20230123

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
