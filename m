Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 096D2677493
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Jan 2023 05:13:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AEDAC81E11;
	Mon, 23 Jan 2023 04:13:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AEDAC81E11
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t53qIPCz9toT; Mon, 23 Jan 2023 04:13:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6EDAD81E0E;
	Mon, 23 Jan 2023 04:13:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6EDAD81E0E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6C8E31BF295
 for <devel@linuxdriverproject.org>; Mon, 23 Jan 2023 04:13:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 46B60415EA
 for <devel@linuxdriverproject.org>; Mon, 23 Jan 2023 04:13:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 46B60415EA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aBYSWnJoO8hm for <devel@linuxdriverproject.org>;
 Mon, 23 Jan 2023 04:12:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A4FC9415E9
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A4FC9415E9
 for <devel@driverdev.osuosl.org>; Mon, 23 Jan 2023 04:12:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="328058791"
X-IronPort-AV: E=Sophos;i="5.97,238,1669104000"; d="scan'208";a="328058791"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2023 20:12:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="835330665"
X-IronPort-AV: E=Sophos;i="5.97,238,1669104000"; d="scan'208";a="835330665"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 22 Jan 2023 20:12:55 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pJoCU-0005PL-2X;
 Mon, 23 Jan 2023 04:12:54 +0000
Date: Mon, 23 Jan 2023 12:12:53 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 05a9a83cf229681c6cc6672649820a3d9a1a91d0
Message-ID: <63ce0945.qNSRIumP+GYbd2zh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674447178; x=1705983178;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=VdbU3lM5rEbbcMoPhpMSg3I0nSd+jLdVapfOZ8KZ2Kk=;
 b=Q++1ZWEX5TBL3hRD2A0D/Yff0+bYRrfP70u4TRgTzbvYWJyG8kGdH0Gr
 uAIxfnr5uxn+6GaciQtpPcruUQtrARGepocIYldaHsQuRPcRfrHbLI8a2
 yM9PvEkaxtb/IvSILoRTXkyS8tq1cJyMZOnJreleNPDa1lagt2F3oSfEU
 bNaFXkE/ZLAozrnTLav75QOXJvOZNLtdyW+DEQY1A9I38kTF4mDwnANPC
 HsJgvj0UDFlkLMwf/f9LtCfEAYY67Nc8cF8NiZNOyBqxXDsowJ220IOx/
 m2OlED0VJePoMYsZJ7MvuJdH20Qd62U8Twe2C1JyKPijrzjtUHHb9iNXY
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q++1ZWEX
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
branch HEAD: 05a9a83cf229681c6cc6672649820a3d9a1a91d0  HV: hv_balloon: debugfs_lookup() fix

elapsed time: 720m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
powerpc                           allnoconfig
um                             i386_defconfig
i386                                defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
x86_64                              defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
arm                                 defconfig
alpha                               defconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-syz
s390                             allyesconfig
x86_64               randconfig-a002-20230123
s390                                defconfig
m68k                             allmodconfig
x86_64               randconfig-a001-20230123
x86_64                         rhel-8.3-kunit
x86_64               randconfig-a004-20230123
x86_64                           rhel-8.3-kvm
x86_64               randconfig-a003-20230123
x86_64               randconfig-a005-20230123
arc                              allyesconfig
alpha                            allyesconfig
x86_64               randconfig-a006-20230123
ia64                             allmodconfig
x86_64                           rhel-8.3-bpf
m68k                             allyesconfig
i386                             allyesconfig
sh                               allmodconfig
x86_64                           allyesconfig
mips                             allyesconfig
i386                 randconfig-a004-20230123
i386                 randconfig-a003-20230123
i386                 randconfig-a002-20230123
arm64                            allyesconfig
arc                  randconfig-r043-20230123
arm                              allyesconfig
i386                 randconfig-a001-20230123
riscv                randconfig-r042-20230122
powerpc                          allmodconfig
i386                 randconfig-a005-20230123
arc                  randconfig-r043-20230122
arm                  randconfig-r046-20230123
i386                 randconfig-a006-20230123
s390                 randconfig-r044-20230122

clang tested configs:
x86_64                          rhel-8.3-rust
i386                 randconfig-a012-20230123
hexagon              randconfig-r041-20230123
hexagon              randconfig-r045-20230122
i386                 randconfig-a013-20230123
hexagon              randconfig-r045-20230123
arm                  randconfig-r046-20230122
i386                 randconfig-a015-20230123
s390                 randconfig-r044-20230123
hexagon              randconfig-r041-20230122
i386                 randconfig-a011-20230123
x86_64               randconfig-a013-20230123
x86_64               randconfig-a011-20230123
i386                 randconfig-a014-20230123
i386                 randconfig-a016-20230123
riscv                randconfig-r042-20230123
x86_64               randconfig-a012-20230123
x86_64               randconfig-a016-20230123
x86_64               randconfig-a014-20230123
x86_64               randconfig-a015-20230123

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
