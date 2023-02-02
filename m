Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9961688A97
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Feb 2023 00:15:04 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0DC06410C9;
	Thu,  2 Feb 2023 23:15:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DC06410C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YZNN126yKSqX; Thu,  2 Feb 2023 23:15:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CBA7940192;
	Thu,  2 Feb 2023 23:15:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CBA7940192
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 811791BF358
 for <devel@linuxdriverproject.org>; Thu,  2 Feb 2023 23:14:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 67E868207A
 for <devel@linuxdriverproject.org>; Thu,  2 Feb 2023 23:14:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 67E868207A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YB-eqBly6O5R for <devel@linuxdriverproject.org>;
 Thu,  2 Feb 2023 23:14:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 822DC82079
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 822DC82079
 for <devel@driverdev.osuosl.org>; Thu,  2 Feb 2023 23:14:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="414807323"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="414807323"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 15:14:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="665492698"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="665492698"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 02 Feb 2023 15:14:55 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pNin8-0006wG-2L;
 Thu, 02 Feb 2023 23:14:54 +0000
Date: Fri, 03 Feb 2023 07:14:31 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 8e0d676ed783cb50b2ace3c63252988ace81e8cd
Message-ID: <63dc43d7.WqTts8tnWp3s/FPJ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675379697; x=1706915697;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=B4PQCJx5PwAHn+6HDbBG+nKYTWxLX2/KGRBUtrO0ktQ=;
 b=DT2y2ooMblcrpPsClRdjOazixHWjNJfT4l+h1kA+xEfl4mdjonZCa79o
 IJ8Bz5ZFAeWMDfi1rMrZzWtFLXAdKvwdcJyIPMuC7P5zxOLwqWuAyWhcn
 fiXwnmd9PdFgwzfEnyyHH8+SqXeJ257b3BAzi5fjBbAYxQIiNANHuU6X1
 KdoNhH9ZIQ2CEmy3RAAjF+3LxlmnmECu2XuEescFenXMe7bLCh6mcJhVb
 pkTDVQZbdn3ur1Uw7YpXIZd7WrmfmQnHV696QZ9EJtVwPOZyK8zYPhaAD
 FdPDVbAX8VuQLFEoAyCDyEFiDt3av1XO+wQzNp/vpJzMnmy/Z0FvYV5FQ
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DT2y2ooM
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
branch HEAD: 8e0d676ed783cb50b2ace3c63252988ace81e8cd  bus: remove the "p" pointer in struct bus_type

elapsed time: 884m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
i386                 randconfig-a002-20230130
i386                 randconfig-a001-20230130
m68k                             allmodconfig
i386                 randconfig-a004-20230130
arc                              allyesconfig
i386                 randconfig-a003-20230130
i386                 randconfig-a005-20230130
alpha                            allyesconfig
i386                 randconfig-a006-20230130
x86_64               randconfig-a001-20230130
arc                                 defconfig
x86_64               randconfig-a003-20230130
s390                             allmodconfig
m68k                             allyesconfig
x86_64               randconfig-a004-20230130
alpha                               defconfig
x86_64               randconfig-a002-20230130
s390                                defconfig
x86_64               randconfig-a006-20230130
x86_64               randconfig-a005-20230130
x86_64                              defconfig
s390                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                               rhel-8.3
ia64                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
x86_64                           allyesconfig
sh                               allmodconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
i386                                defconfig
arc                  randconfig-r043-20230202
riscv                randconfig-r042-20230202
s390                 randconfig-r044-20230202
i386                             allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64               randconfig-a014-20230130
x86_64               randconfig-a012-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a016-20230130
i386                 randconfig-a013-20230130
i386                 randconfig-a011-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a014-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a016-20230130
arm                  randconfig-r046-20230202
hexagon              randconfig-r045-20230202
hexagon              randconfig-r041-20230202

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
