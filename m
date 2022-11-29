Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id A45CA63B9E1
	for <lists+driverdev-devel@lfdr.de>; Tue, 29 Nov 2022 07:43:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 81CF140B34;
	Tue, 29 Nov 2022 06:43:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 81CF140B34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ev89SAn-WA_z; Tue, 29 Nov 2022 06:43:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1E99E400DA;
	Tue, 29 Nov 2022 06:43:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1E99E400DA
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5E5EE1BF2EC
 for <devel@linuxdriverproject.org>; Tue, 29 Nov 2022 06:43:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 416844167C
 for <devel@linuxdriverproject.org>; Tue, 29 Nov 2022 06:43:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 416844167C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rCA_IKy1IJwl for <devel@linuxdriverproject.org>;
 Tue, 29 Nov 2022 06:43:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E3C8C41677
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id E3C8C41677
 for <devel@driverdev.osuosl.org>; Tue, 29 Nov 2022 06:43:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="377180120"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="377180120"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2022 22:43:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="643671754"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="643671754"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 28 Nov 2022 22:43:49 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ozuLM-0008iB-2O;
 Tue, 29 Nov 2022 06:43:48 +0000
Date: Tue, 29 Nov 2022 14:42:53 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const3] BUILD SUCCESS
 b7293eb2739dc3fabf36fb01cd9432ba5d4a3e04
Message-ID: <6385a9ed.RCp6endANs5aCJll%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669704231; x=1701240231;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=BW6j/9TE7V5aaHHjCOEbRPvt7PCFGicGqbgEhXN68/o=;
 b=nNTElypkNU0pV9QWSfk4dfIjPZOsYxoSBjozNpLb3JEwCObCeG66nVUX
 bdR9MFOMBGz4AcEQuvxfBfG4upWcclrGK/bSkDKyWO6hXK7HXTn5xIwoq
 55UKFoRtoqoodEAwRcfMokvSve3A/Du7vRibS7+LeRT7B7bZDHc/NAIm6
 kFJKijdnJlFWf3xxAJyFTvqWRAL4ImXnAvv4ILtJiiM98SsxOsB2sQ9G+
 GFbHGTZd/H/FK0L9tiiK4mGkN9CbFjmmFyl4VStbIUlCyZEKYajvk/WQv
 A+CIkswEfA3TRJ9xfYV9k7O11tWHQCOt1R7wzqUnyKrmt2PQv2XpzkIoN
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nNTElypk
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const3
branch HEAD: b7293eb2739dc3fabf36fb01cd9432ba5d4a3e04  driver core: fix up some missing class.devnode() conversions.

elapsed time: 765m

configs tested: 48
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                                defconfig
s390                             allyesconfig
powerpc                           allnoconfig
m68k                             allyesconfig
m68k                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
arc                  randconfig-r043-20221128
x86_64                              defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
i386                 randconfig-a002-20221128
i386                 randconfig-a003-20221128
i386                 randconfig-a001-20221128
x86_64                               rhel-8.3
i386                 randconfig-a004-20221128
x86_64                           allyesconfig
i386                 randconfig-a005-20221128
i386                 randconfig-a006-20221128
ia64                             allmodconfig
sh                               allmodconfig
x86_64               randconfig-a001-20221128
x86_64               randconfig-a003-20221128
x86_64               randconfig-a004-20221128
x86_64               randconfig-a002-20221128
mips                             allyesconfig
x86_64               randconfig-a005-20221128
powerpc                          allmodconfig
x86_64               randconfig-a006-20221128
x86_64                            allnoconfig
i386                                defconfig
i386                             allyesconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig

clang tested configs:
hexagon              randconfig-r045-20221128
hexagon              randconfig-r041-20221128
riscv                randconfig-r042-20221128
s390                 randconfig-r044-20221128
x86_64               randconfig-k001-20221128

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
