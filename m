Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 98425680442
	for <lists+driverdev-devel@lfdr.de>; Mon, 30 Jan 2023 04:21:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6A9660D6D;
	Mon, 30 Jan 2023 03:21:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6A9660D6D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id j_GI6eyET9Gh; Mon, 30 Jan 2023 03:21:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 90BB460A91;
	Mon, 30 Jan 2023 03:21:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 90BB460A91
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 821391BF8B4
 for <devel@linuxdriverproject.org>; Mon, 30 Jan 2023 03:21:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 65BA78135D
 for <devel@linuxdriverproject.org>; Mon, 30 Jan 2023 03:21:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 65BA78135D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dkUWW_lBr9wu for <devel@linuxdriverproject.org>;
 Mon, 30 Jan 2023 03:21:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5D3578135C
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5D3578135C
 for <devel@driverdev.osuosl.org>; Mon, 30 Jan 2023 03:21:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="311083801"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="311083801"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2023 19:21:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="696256132"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="696256132"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 29 Jan 2023 19:21:38 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pMKjh-0003LK-0U;
 Mon, 30 Jan 2023 03:21:37 +0000
Date: Mon, 30 Jan 2023 11:21:14 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 65c7f4eba7bf98c3e2574f40e44ba40fcac64567
Message-ID: <63d737aa.5e9IEpTJVmqerd5X%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675048902; x=1706584902;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=sOr+2Yo2iYIpycZeKHN9gD2zarJPm3/jaghUbmcHLkw=;
 b=OzGPSqNh2rmVn3sBcxznMpz/qOcepWFNLH01rR6drXb8/wb322/tpGm9
 9liV1yN1SS/dbQUhOthVPPiLUL2skKbR1kRTmG8l3f/oRX1nHdFBLnnwo
 le2+lyoto5sJtoBEAPPAGOgcR6JaBzwQdfYjOMGWZGfxL/1kXZAcESn1h
 97OnDzrw43pZozdywvCSv8Qq2sbwfkAbCKNYIO8XRlx5/R5GavYtcpWsK
 tXnk3nB+j8/uRQh2DSrTzkyGnP8o57cy1itToM+dLQmI5oumwPdlYp7H3
 tDq7QRqO//wbQz4lBWfREuJMhwf/hN2hwp6pn7M/jyQuiVoGatmJMC+OZ
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OzGPSqNh
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
branch HEAD: 65c7f4eba7bf98c3e2574f40e44ba40fcac64567  bus: step 1

elapsed time: 721m

configs tested: 75
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a004
s390                             allmodconfig
s390                                defconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a013
x86_64                    rhel-8.3-kselftests
s390                             allyesconfig
x86_64                          rhel-8.3-func
arc                  randconfig-r043-20230129
x86_64                              defconfig
i386                                defconfig
ia64                             allmodconfig
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a011
arm                                 defconfig
i386                          randconfig-a001
x86_64                         rhel-8.3-kunit
x86_64                           allyesconfig
x86_64                           rhel-8.3-kvm
m68k                             allmodconfig
i386                          randconfig-a003
x86_64                           rhel-8.3-bpf
x86_64                               rhel-8.3
arc                              allyesconfig
x86_64                        randconfig-a015
sh                               allmodconfig
arm                  randconfig-r046-20230129
arm                              allyesconfig
alpha                            allyesconfig
i386                          randconfig-a014
arm64                            allyesconfig
i386                          randconfig-a005
i386                          randconfig-a012
m68k                             allyesconfig
mips                             allyesconfig
i386                          randconfig-a016
powerpc                          allmodconfig
i386                             allyesconfig
sh                           sh2007_defconfig
sh                           se7751_defconfig
arm                        oxnas_v6_defconfig
powerpc                     asp8347_defconfig
arm                             rpc_defconfig
powerpc                     ep8248e_defconfig
arm                         axm55xx_defconfig
sh                           se7722_defconfig
xtensa                  nommu_kc705_defconfig
sparc                            allyesconfig
i386                          randconfig-c001

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a016
hexagon              randconfig-r041-20230129
x86_64                        randconfig-a012
riscv                randconfig-r042-20230129
i386                          randconfig-a002
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a004
i386                          randconfig-a015
hexagon              randconfig-r045-20230129
i386                          randconfig-a011
s390                 randconfig-r044-20230129
i386                          randconfig-a006
powerpc                       ebony_defconfig
powerpc                      acadia_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
