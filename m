Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 002A867697D
	for <lists+driverdev-devel@lfdr.de>; Sat, 21 Jan 2023 21:59:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E381E60B9F;
	Sat, 21 Jan 2023 20:59:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E381E60B9F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id klSeuwC-cYHy; Sat, 21 Jan 2023 20:59:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABEC860B27;
	Sat, 21 Jan 2023 20:59:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ABEC860B27
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5DC701BF25F
 for <devel@linuxdriverproject.org>; Sat, 21 Jan 2023 20:59:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 463FF81F84
 for <devel@linuxdriverproject.org>; Sat, 21 Jan 2023 20:59:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 463FF81F84
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id I8ghfZH4CUSf for <devel@linuxdriverproject.org>;
 Sat, 21 Jan 2023 20:59:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E54581F82
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E54581F82
 for <devel@driverdev.osuosl.org>; Sat, 21 Jan 2023 20:59:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10597"; a="388189404"
X-IronPort-AV: E=Sophos;i="5.97,235,1669104000"; d="scan'208";a="388189404"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2023 12:59:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10597"; a="729504965"
X-IronPort-AV: E=Sophos;i="5.97,235,1669104000"; d="scan'208";a="729504965"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 21 Jan 2023 12:59:45 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pJKxl-0004Ta-0L;
 Sat, 21 Jan 2023 20:59:45 +0000
Date: Sun, 22 Jan 2023 04:59:37 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 03bfdbb25247a8fadb0f6cfbfd70841513978a49
Message-ID: <63cc5239.REg3/T5PYQfkv3jz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674334788; x=1705870788;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=0ZQrjwFk4vrV8pOIpg0NcTXGY9+TtQa3xmHuBiyEncY=;
 b=IItf6Um4MlPf5lPNgCLvlLw5KGYKgM3sT+6HImPFFERUGyI6NK/Ktbog
 LRPkcfhipDpgNVbZk5FkIoHB+WNnDFH/BZKgBpUvCXSte1c7I2L1TdWv8
 +4RFuIRXa1wn/JnhqiAKpaopS8bPJDL+0kmfxWgMTHcMl+A9DIBqr4ot1
 IMQvb12pXi0QF2ZOcZuLJj2dq/OOcnehZjnNI0YOuhfThmv5kh2QzzUy1
 5zvPJ5EotwEE+SklIZfnoVsGKntI8fbrFufIqXWSNvjMY6yr9ovyj0ZOn
 cisxq50gOe+flix5BbxhP6ACIQ8+9+Y8IrYWLDB+I+bpcI2dTZbew1rFb
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IItf6Um4
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
branch HEAD: 03bfdbb25247a8fadb0f6cfbfd70841513978a49  bus: step 1

elapsed time: 720m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
powerpc                           allnoconfig
arm                  randconfig-r046-20230119
arc                  randconfig-r043-20230119
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
x86_64                          rhel-8.3-func
arc                                 defconfig
m68k                             allmodconfig
arc                              allyesconfig
sh                               allmodconfig
arm                                 defconfig
i386                                defconfig
alpha                            allyesconfig
s390                             allmodconfig
alpha                               defconfig
i386                          randconfig-a001
s390                             allyesconfig
i386                          randconfig-a014
x86_64                               rhel-8.3
mips                             allyesconfig
s390                                defconfig
powerpc                          allmodconfig
i386                          randconfig-a012
i386                          randconfig-a016
x86_64                           allyesconfig
i386                          randconfig-a003
x86_64                        randconfig-a004
i386                          randconfig-a005
x86_64                           rhel-8.3-syz
x86_64                        randconfig-a002
x86_64                        randconfig-a013
m68k                             allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a011
x86_64                           rhel-8.3-kvm
ia64                             allmodconfig
x86_64                           rhel-8.3-bpf
x86_64                        randconfig-a006
arm64                            allyesconfig
i386                             allyesconfig
x86_64                        randconfig-a015
arm                              allyesconfig

clang tested configs:
hexagon              randconfig-r041-20230119
s390                 randconfig-r044-20230119
x86_64                          rhel-8.3-rust
hexagon              randconfig-r045-20230119
riscv                randconfig-r042-20230119
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a005
i386                          randconfig-a006
x86_64                        randconfig-a001
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a003
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
