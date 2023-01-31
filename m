Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E354D68399B
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Jan 2023 23:52:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C42D60DF0;
	Tue, 31 Jan 2023 22:52:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5C42D60DF0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jWTkIDYblAdj; Tue, 31 Jan 2023 22:52:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2371B60DE5;
	Tue, 31 Jan 2023 22:52:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2371B60DE5
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A3E211BF380
 for <devel@linuxdriverproject.org>; Tue, 31 Jan 2023 22:52:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8550360DF0
 for <devel@linuxdriverproject.org>; Tue, 31 Jan 2023 22:52:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8550360DF0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GTtJGhBV73Fp for <devel@linuxdriverproject.org>;
 Tue, 31 Jan 2023 22:52:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 776F360DE5
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 776F360DE5
 for <devel@driverdev.osuosl.org>; Tue, 31 Jan 2023 22:52:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="392536753"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="392536753"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 14:52:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="807331731"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="807331731"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 31 Jan 2023 14:52:29 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pMzUK-0004m6-1a;
 Tue, 31 Jan 2023 22:52:28 +0000
Date: Wed, 01 Feb 2023 06:51:47 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 7f0c12449aa91867efb00f080fb34c77d40c81e6
Message-ID: <63d99b83.5rGJC47uE35mn3K6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675205551; x=1706741551;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=mqOYEwBTWTnDEjq6pKZE1nbLIJQSmbNuhnHPXwIsFQE=;
 b=dHZ5dgGkcl02dTYSzIJk8f7PSJGCEpjxauU5ElMpMZsx3iqfx5OmpJzN
 fLRc2DcavNLc3XVJM1ctC5tWeiDjdsfgBXyLq0+Y+d+ddKr4VmlBzuupl
 gpJAf7af6ZGNbKn9zINcTs18V3WKOxhEkP6SxU1ii+xKwkhGdBnJFNmWR
 rlDitrRHrNldcztbJ4YTgqITV6q6aOHoeqIF9q8TIX95zTErpoSUc2FNr
 z8l95TISR2Uiqs/Uu8M9EdNCIG2+c+HjO6d99yihbQFYDeHdrntuHTsl7
 IwsT1qhR8RQVV/2LIkM0P17HoluUmYmgoxHu8LsaBkoNAkHpBX06JOCDO
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dHZ5dgGk
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
branch HEAD: 7f0c12449aa91867efb00f080fb34c77d40c81e6  staging: vc04_services: mmal-vchiq: fix typo in comment

elapsed time: 726m

configs tested: 82
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
ia64                             allmodconfig
alpha                            allyesconfig
s390                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
m68k                             allyesconfig
x86_64               randconfig-a001-20230130
x86_64               randconfig-a003-20230130
x86_64                          rhel-8.3-func
x86_64               randconfig-a002-20230130
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a001
x86_64               randconfig-a004-20230130
i386                          randconfig-a003
x86_64                              defconfig
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-bpf
x86_64               randconfig-a006-20230130
i386                                defconfig
x86_64               randconfig-a005-20230130
i386                          randconfig-a005
arc                  randconfig-r043-20230129
arm                  randconfig-r046-20230129
x86_64                               rhel-8.3
arm                  randconfig-r046-20230130
arc                  randconfig-r043-20230130
x86_64                           allyesconfig
arm                                 defconfig
arm64                            allyesconfig
sh                               allmodconfig
arm                              allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
i386                             allyesconfig
i386                 randconfig-a003-20230130
i386                 randconfig-a001-20230130
i386                 randconfig-a004-20230130
i386                 randconfig-a006-20230130
i386                 randconfig-a002-20230130
i386                 randconfig-a005-20230130
i386                          randconfig-c001
arm                           h5000_defconfig
arm                         lpc18xx_defconfig
m68k                          multi_defconfig
sh                     magicpanelr2_defconfig
arc                            hsdk_defconfig

clang tested configs:
x86_64                          rhel-8.3-rust
i386                          randconfig-a002
i386                          randconfig-a004
hexagon              randconfig-r041-20230129
riscv                randconfig-r042-20230129
riscv                randconfig-r042-20230130
hexagon              randconfig-r045-20230130
i386                          randconfig-a006
hexagon              randconfig-r041-20230130
x86_64               randconfig-a012-20230130
hexagon              randconfig-r045-20230129
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
s390                 randconfig-r044-20230129
s390                 randconfig-r044-20230130
x86_64               randconfig-a014-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a016-20230130
i386                 randconfig-a013-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a014-20230130
i386                 randconfig-a011-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a016-20230130
x86_64                        randconfig-k001
hexagon                          alldefconfig

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
