Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B13683762
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Jan 2023 21:21:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22917401EE;
	Tue, 31 Jan 2023 20:21:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 22917401EE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AAiVxQGLX6fU; Tue, 31 Jan 2023 20:21:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A65F640358;
	Tue, 31 Jan 2023 20:21:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A65F640358
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ACAE61BF316
 for <devel@linuxdriverproject.org>; Tue, 31 Jan 2023 20:21:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9388E401D6
 for <devel@linuxdriverproject.org>; Tue, 31 Jan 2023 20:21:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9388E401D6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6kN0XHn4lyBJ for <devel@linuxdriverproject.org>;
 Tue, 31 Jan 2023 20:21:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3B1BF40175
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3B1BF40175
 for <devel@driverdev.osuosl.org>; Tue, 31 Jan 2023 20:21:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="325649837"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="325649837"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 12:21:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="773130483"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="773130483"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 31 Jan 2023 12:21:23 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pMx87-0004gM-0u;
 Tue, 31 Jan 2023 20:21:23 +0000
Date: Wed, 01 Feb 2023 04:20:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-next] BUILD SUCCESS
 90be1f15c39858a4f0f4346c39fa150697d231c1
Message-ID: <63d9781a.JDK6LVZjAlGySWa4%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675196491; x=1706732491;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=dIK/HwhFCr9URwIxz2uozi3H0HFMY72PR6iqHU7X4Ws=;
 b=Ylthvc1LgMmW0WP1Z7IVNJNPN9eVxbgs0rd9EUSICF2vr6LAMicwRGzS
 L7PBXPFWRStbhbAZE4L/qijuAnpJck69TU5DMbkvUPqSEqNil+7ahayau
 Ekbbr395jwzG4XUJCl+Pm1ahoqkD7T09+ovD58PH6sgSuG9mY23PPITPo
 4kQIiyRRrHXPCtVxztgysfspPeeAMQW7XyyWmwsk5pCDeydk8PV2yLLLY
 nn1PNu++HYHECvbkCOnk+XvxuP709lGa6qw6sPUvTUa5koXI6hR0fKAwk
 NiqeDNBL6rYNlY0FocY4sX5zQeFuVx491Ua2X3tzBRlogd6R0iJ3oPa3m
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ylthvc1L
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
branch HEAD: 90be1f15c39858a4f0f4346c39fa150697d231c1  driver core: soc: remove layering violation for the soc_bus

elapsed time: 725m

configs tested: 84
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20230130
x86_64               randconfig-a003-20230130
x86_64               randconfig-a004-20230130
x86_64               randconfig-a002-20230130
um                             i386_defconfig
x86_64               randconfig-a006-20230130
x86_64               randconfig-a005-20230130
um                           x86_64_defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
arc                                 defconfig
x86_64                              defconfig
alpha                               defconfig
arc                  randconfig-r043-20230129
x86_64                               rhel-8.3
arm                  randconfig-r046-20230129
s390                             allmodconfig
arm                  randconfig-r046-20230130
arc                  randconfig-r043-20230130
s390                                defconfig
i386                                defconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allyesconfig
sh                               allmodconfig
s390                             allyesconfig
x86_64                           allyesconfig
i386                 randconfig-a002-20230130
i386                 randconfig-a001-20230130
i386                 randconfig-a004-20230130
i386                 randconfig-a003-20230130
i386                 randconfig-a005-20230130
x86_64                           rhel-8.3-syz
i386                 randconfig-a006-20230130
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
mips                             allyesconfig
powerpc                          allmodconfig
arm                                 defconfig
i386                             allyesconfig
ia64                             allmodconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                          randconfig-c001
arm                          pxa3xx_defconfig
sh                           se7206_defconfig
m68k                       m5475evb_defconfig
powerpc                     asp8347_defconfig

clang tested configs:
x86_64                          rhel-8.3-rust
s390                 randconfig-r044-20230129
s390                 randconfig-r044-20230130
hexagon              randconfig-r041-20230129
x86_64               randconfig-a014-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a012-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a016-20230130
riscv                randconfig-r042-20230129
hexagon              randconfig-r045-20230130
hexagon              randconfig-r045-20230129
hexagon              randconfig-r041-20230130
riscv                randconfig-r042-20230130
i386                 randconfig-a013-20230130
i386                 randconfig-a011-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a014-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a016-20230130
powerpc                        fsp2_defconfig
arm                       versatile_defconfig
powerpc                      pmac32_defconfig
powerpc                        icon_defconfig
arm                          ixp4xx_defconfig
x86_64                        randconfig-k001
arm                          pxa168_defconfig
powerpc                          allyesconfig
mips                          malta_defconfig
powerpc                    ge_imp3a_defconfig
hexagon                          alldefconfig

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
