Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7CE5F94CA
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Oct 2022 02:11:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id BE38960E38;
	Mon, 10 Oct 2022 00:11:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BE38960E38
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tzsK6sVjFQNy; Mon, 10 Oct 2022 00:11:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 617D260E13;
	Mon, 10 Oct 2022 00:11:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 617D260E13
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E0D9B1BF995
 for <devel@linuxdriverproject.org>; Mon, 10 Oct 2022 00:11:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B578A60E13
 for <devel@linuxdriverproject.org>; Mon, 10 Oct 2022 00:11:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B578A60E13
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ms-1UTp88b3Y for <devel@linuxdriverproject.org>;
 Mon, 10 Oct 2022 00:11:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B9DB60E39
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B9DB60E39
 for <devel@driverdev.osuosl.org>; Mon, 10 Oct 2022 00:11:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="305137280"
X-IronPort-AV: E=Sophos;i="5.95,172,1661842800"; d="scan'208";a="305137280"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2022 17:11:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="658976842"
X-IronPort-AV: E=Sophos;i="5.95,172,1661842800"; d="scan'208";a="658976842"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 09 Oct 2022 17:11:41 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ohgOT-0001Nw-0i;
 Mon, 10 Oct 2022 00:11:41 +0000
Date: Mon, 10 Oct 2022 08:10:50 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const2] BUILD SUCCESS
 6cc28e9808fe871603a2bcb8ea1cfdba7920420b
Message-ID: <6343630a.zZd/5dEnXn++8HWx%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665360704; x=1696896704;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=bcOv6J5xsKogmESTwXybVNZEf9d6j+nj1dGYB1a4QYw=;
 b=OzhQXaoxcv/gHyrNgbpLelsbZhoiaKBS2bihTNBqLInoPW10ux36VGUB
 cTXI4M8TuNatESdGqFwrEXxWj2GU+sw3T50G6BX0mcyBETPb8ux4Dunmr
 pdEQSpV4WtWO12sOckMxjzQzPp5J+A/HUAaKUXNGpgqIn7F/Nx7Gd74ip
 ZASzgsYMJK6OGkybTqArtg1tsmte8tsXjSSYHQCX73NLYLFsrGeZKuua5
 +IFyqV2miqU8lbNvMdoTPqs1KywsVY50MVvS1fMvuin4EpgnZYXvEE+N8
 SNr5BWt4xVrjR6edlLmlyGi5Mq8XVbqJakNi92XwZQ3S0XpEJ+LikT9u7
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OzhQXaox
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const2
branch HEAD: 6cc28e9808fe871603a2bcb8ea1cfdba7920420b  USB: allow some usb functions to take a const pointer.

elapsed time: 724m

configs tested: 79
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
x86_64                              defconfig
arm                                 defconfig
x86_64                        randconfig-a013
x86_64                          rhel-8.3-func
x86_64                        randconfig-a011
arc                  randconfig-r043-20221009
s390                 randconfig-r044-20221009
i386                          randconfig-a001
riscv                randconfig-r042-20221009
x86_64                        randconfig-a015
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a004
i386                          randconfig-a003
x86_64                        randconfig-a002
powerpc                          allmodconfig
arc                               allnoconfig
arc                              allyesconfig
i386                             allyesconfig
alpha                             allnoconfig
arm64                            allyesconfig
x86_64                               rhel-8.3
i386                          randconfig-a005
riscv                             allnoconfig
x86_64                         rhel-8.3-kunit
i386                          randconfig-a014
x86_64                        randconfig-a006
x86_64                           allyesconfig
xtensa                  cadence_csp_defconfig
alpha                            allyesconfig
csky                              allnoconfig
sh                               allmodconfig
i386                          randconfig-a012
i386                          randconfig-a016
mips                             allyesconfig
arm                              allyesconfig
powerpc                       holly_defconfig
m68k                             allyesconfig
powerpc                           allnoconfig
um                                  defconfig
m68k                        m5272c3_defconfig
m68k                             allmodconfig
x86_64                           rhel-8.3-kvm
arm                         nhk8815_defconfig
x86_64                           rhel-8.3-syz
mips                           jazz_defconfig
sparc                               defconfig
ia64                        generic_defconfig
sh                          rsk7201_defconfig
mips                           ci20_defconfig
sparc                            alldefconfig
sh                        dreamcast_defconfig
arm                          gemini_defconfig
ia64                             allmodconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
i386                          randconfig-c001

clang tested configs:
hexagon              randconfig-r041-20221009
x86_64                        randconfig-a012
hexagon              randconfig-r045-20221009
x86_64                        randconfig-a014
x86_64                        randconfig-a016
mips                       rbtx49xx_defconfig
i386                          randconfig-a013
x86_64                        randconfig-a005
i386                          randconfig-a002
x86_64                        randconfig-a001
i386                          randconfig-a011
i386                          randconfig-a006
x86_64                        randconfig-a003
i386                          randconfig-a004
i386                          randconfig-a015
arm                           sama7_defconfig
powerpc                      katmai_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
