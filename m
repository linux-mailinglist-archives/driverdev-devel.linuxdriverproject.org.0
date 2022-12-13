Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 932D264BD8E
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Dec 2022 20:49:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A369D40263;
	Tue, 13 Dec 2022 19:49:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A369D40263
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3rEfcfWQZIii; Tue, 13 Dec 2022 19:49:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 24FB3402B1;
	Tue, 13 Dec 2022 19:49:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 24FB3402B1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2F2B91BF2B9
 for <devel@linuxdriverproject.org>; Tue, 13 Dec 2022 19:49:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 15A654022B
 for <devel@linuxdriverproject.org>; Tue, 13 Dec 2022 19:49:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 15A654022B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lbxLoOQAv1Sf for <devel@linuxdriverproject.org>;
 Tue, 13 Dec 2022 19:49:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 95B33401BA
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 95B33401BA
 for <devel@driverdev.osuosl.org>; Tue, 13 Dec 2022 19:49:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="320086411"
X-IronPort-AV: E=Sophos;i="5.96,242,1665471600"; d="scan'208";a="320086411"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 11:49:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="650851409"
X-IronPort-AV: E=Sophos;i="5.96,242,1665471600"; d="scan'208";a="650851409"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 13 Dec 2022 11:49:25 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p5BHJ-0004j9-0b;
 Tue, 13 Dec 2022 19:49:25 +0000
Date: Wed, 14 Dec 2022 03:49:23 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const2] BUILD SUCCESS
 40c490072401f8bda8377e70ade38b69bf9d83e9
Message-ID: <6398d743.SKuhfW7GkZvjZ+9q%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670960982; x=1702496982;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=IFnBFTpxXRJCNcIAJZRwIdMFMAnsIdjA4xHKbq7BcfA=;
 b=XtEUUuAAga5EgVEAU6raKQeLq3XNzo7x3BTFPt+TeVoStyfe51qzzk1c
 B0MbY04TDGkRzC1p9z9PAjuh4BEpNkdPvtPMHOzBLPdEtJe9qr1K7bsEq
 xOjbbTXHY0nk6Wt/xrKm+4UBvM7yT1Qny3n3j6sytmG2+/iJxcYJqOOPL
 8hiUDBJ2pz4qqhbwWXwzequCQLUCWke5xmU7mksUMLTNQEV+/72EQhsAs
 7dSUQ95Qw3DIkSmAKZd/JKYhxL7QfwdxIovJhsQcp88c+pRKfYXpv+LRx
 uCSL9yRvJEv7Zn27vLLuzlPmp0Vo8/XXN0n1CtRneC2PqNkOoGJ/uvt0/
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=XtEUUuAA
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
branch HEAD: 40c490072401f8bda8377e70ade38b69bf9d83e9  kobject: kset_uevent_ops: make uevent() callback take a const *

elapsed time: 725m

configs tested: 61
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
powerpc                           allnoconfig
um                           x86_64_defconfig
x86_64                        randconfig-a004
arc                                 defconfig
x86_64                              defconfig
alpha                               defconfig
i386                                defconfig
x86_64                        randconfig-a002
sh                               allmodconfig
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a006
m68k                             allyesconfig
x86_64                        randconfig-a013
x86_64                           rhel-8.3-bpf
i386                          randconfig-a014
x86_64                        randconfig-a011
x86_64                    rhel-8.3-kselftests
m68k                             allmodconfig
arc                  randconfig-r043-20221213
mips                             allyesconfig
arc                              allyesconfig
arm                  randconfig-r046-20221213
i386                          randconfig-a012
x86_64                          rhel-8.3-func
x86_64                        randconfig-a015
i386                          randconfig-a016
x86_64                           rhel-8.3-syz
i386                             allyesconfig
powerpc                          allmodconfig
x86_64                         rhel-8.3-kunit
alpha                            allyesconfig
i386                          randconfig-a003
x86_64                           rhel-8.3-kvm
x86_64                               rhel-8.3
i386                          randconfig-a001
s390                             allmodconfig
s390                                defconfig
arm                                 defconfig
i386                          randconfig-a005
x86_64                           allyesconfig
s390                             allyesconfig
ia64                             allmodconfig
arm                              allyesconfig
arm64                            allyesconfig

clang tested configs:
x86_64                        randconfig-a005
hexagon              randconfig-r041-20221213
riscv                randconfig-r042-20221213
x86_64                        randconfig-a001
i386                          randconfig-a013
x86_64                        randconfig-a014
x86_64                        randconfig-a003
i386                          randconfig-a011
x86_64                        randconfig-a012
hexagon              randconfig-r045-20221213
s390                 randconfig-r044-20221213
x86_64                        randconfig-a016
i386                          randconfig-a015
i386                          randconfig-a004
i386                          randconfig-a002
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
