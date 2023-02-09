Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 569E368FC45
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Feb 2023 01:58:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0A1E760E7C;
	Thu,  9 Feb 2023 00:58:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A1E760E7C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m_J-qH_BZ9X1; Thu,  9 Feb 2023 00:58:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B95CC610F2;
	Thu,  9 Feb 2023 00:58:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B95CC610F2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1F8001BF318
 for <devel@linuxdriverproject.org>; Thu,  9 Feb 2023 00:58:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 078B740359
 for <devel@linuxdriverproject.org>; Thu,  9 Feb 2023 00:58:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 078B740359
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1KgA1Yq6PzBm for <devel@linuxdriverproject.org>;
 Thu,  9 Feb 2023 00:58:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 369DA400CE
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 369DA400CE
 for <devel@driverdev.osuosl.org>; Thu,  9 Feb 2023 00:58:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="357375947"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="357375947"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 16:58:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="645070631"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="645070631"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 08 Feb 2023 16:58:24 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pPvGU-0004j6-1l;
 Thu, 09 Feb 2023 00:58:18 +0000
Date: Thu, 09 Feb 2023 08:58:05 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 fb42378dcc7f247df56f0ecddfdae85487495fbc
Message-ID: <63e4451d.ndZ7R8QAiGzB/7p2%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675904306; x=1707440306;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=cr3OQQYbFIAxLH9wyoqP+rlPxj4nY4ElhH6opF3RElQ=;
 b=ZMOiOyjZPuRgzxNgFScGmL/83F/Cee5iiivBTIs6VCo1XC1Sgsfw/3mf
 m/004sJOSuqlgGol97cfOaWzxP69mQUb2kzTueZ4qYxbe1bq6bxQAUyWg
 DzCBeStOXGL77KPHQLwcOKC+SJpPGOifht4k0REBN1vv2xQoTW9UwjJh+
 BMwfiqDnN1S4GcHkV2fcTEgxi67+OJ8Ryr7yskNKDMp28ZX1i7SrJPTET
 dB0vWybSZrPRsOU38foeFevCVGGKi/L7024O8l6+l+o1g5tPZLYijtAsZ
 PhpdXyXmQgSpDqm3PvzrQ34cXo8EB8yFVBr8PtSDauVziVgz3CWFXKNW8
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZMOiOyjZ
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: fb42378dcc7f247df56f0ecddfdae85487495fbc  mtd: mtdpart: Don't create platform device that'll never probe

elapsed time: 727m

configs tested: 67
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
powerpc                           allnoconfig
i386                 randconfig-a011-20230206
i386                 randconfig-a014-20230206
i386                 randconfig-a012-20230206
i386                 randconfig-a013-20230206
arm                                 defconfig
x86_64                              defconfig
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                               rhel-8.3
i386                 randconfig-a016-20230206
i386                                defconfig
i386                 randconfig-a015-20230206
ia64                             allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
alpha                            allyesconfig
x86_64               randconfig-a014-20230206
arc                              allyesconfig
s390                 randconfig-r044-20230206
x86_64                           allyesconfig
x86_64               randconfig-a013-20230206
arc                                 defconfig
x86_64               randconfig-a011-20230206
arc                  randconfig-r043-20230205
sh                               allmodconfig
x86_64               randconfig-a015-20230206
s390                             allmodconfig
x86_64               randconfig-a012-20230206
x86_64                    rhel-8.3-kselftests
alpha                               defconfig
x86_64               randconfig-a016-20230206
arm                  randconfig-r046-20230205
x86_64                          rhel-8.3-func
arc                  randconfig-r043-20230206
mips                             allyesconfig
arm64                            allyesconfig
i386                             allyesconfig
powerpc                          allmodconfig
arm                              allyesconfig
riscv                randconfig-r042-20230206
s390                                defconfig
s390                             allyesconfig

clang tested configs:
hexagon              randconfig-r041-20230205
riscv                randconfig-r042-20230205
x86_64               randconfig-a002-20230206
hexagon              randconfig-r045-20230206
hexagon              randconfig-r041-20230206
x86_64               randconfig-a004-20230206
x86_64               randconfig-a003-20230206
x86_64               randconfig-a001-20230206
x86_64               randconfig-a005-20230206
x86_64               randconfig-a006-20230206
i386                 randconfig-a002-20230206
x86_64                          rhel-8.3-rust
i386                 randconfig-a004-20230206
i386                 randconfig-a003-20230206
arm                  randconfig-r046-20230206
s390                 randconfig-r044-20230205
i386                 randconfig-a001-20230206
hexagon              randconfig-r045-20230205
i386                 randconfig-a005-20230206

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
