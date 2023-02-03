Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D3E688F52
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Feb 2023 07:03:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CEEBD41C4A;
	Fri,  3 Feb 2023 06:03:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CEEBD41C4A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9xbQ_lmAqyuF; Fri,  3 Feb 2023 06:03:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 415AF41C87;
	Fri,  3 Feb 2023 06:03:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 415AF41C87
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 984401BF3BC
 for <devel@linuxdriverproject.org>; Fri,  3 Feb 2023 06:03:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 70AE860E9D
 for <devel@linuxdriverproject.org>; Fri,  3 Feb 2023 06:03:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 70AE860E9D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j3rdiixadbJd for <devel@linuxdriverproject.org>;
 Fri,  3 Feb 2023 06:03:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CB8C260E5E
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CB8C260E5E
 for <devel@driverdev.osuosl.org>; Fri,  3 Feb 2023 06:03:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="330799011"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="330799011"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 22:03:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="659000181"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="659000181"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 02 Feb 2023 22:02:41 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pNp9k-0000B3-1m;
 Fri, 03 Feb 2023 06:02:40 +0000
Date: Fri, 03 Feb 2023 14:02:39 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 16568c7b18e2d7122aa7c1e0fe3d34ecf534d1dd
Message-ID: <63dca37f.xPVAzp0+ygXjGZcZ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675404184; x=1706940184;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=cNrbrWji4u0Y9d52gj6uGdzKLMHviW6eiKNhSgGChA4=;
 b=fGHZ1B9kUb5Bg35LXAWmG7/nuZprwiV36yl+3CTlQudFOfHLlOR25U4V
 hazLjg6cOAtiAh6y3lxpEU/6YaVOWiX+vgDxL0xhtC3nuMjZNZVarH3rT
 53WTTqo2Xz2pg/gnpV3n2lXsyytYvRkeK5+FDYY4J+gkqrrc1h2lEZImU
 s0WwlzXqyjmEQ5GoHzquhD4IZiAxvwtGU3f/5eNSJpo73dxLZ0QTjkDCL
 i8LaMF2HcbeuzCatoMG1fj50bwQGXlIdGhYEet/0nQqBXEgZblqv43FmV
 qzltHhS67fWrQHChA+bj7mz2tf74GjZXsGqYZBXgYGkJmtj1re+qLmCZo
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fGHZ1B9k
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
branch HEAD: 16568c7b18e2d7122aa7c1e0fe3d34ecf534d1dd  mtd: spi-nor: fix memory leak when using debugfs_lookup()

elapsed time: 846m

configs tested: 63
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
powerpc                           allnoconfig
mips                             allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                          allmodconfig
m68k                             allyesconfig
arc                                 defconfig
m68k                             allmodconfig
sh                               allmodconfig
s390                             allmodconfig
arc                              allyesconfig
ia64                             allmodconfig
alpha                               defconfig
alpha                            allyesconfig
s390                                defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
s390                             allyesconfig
x86_64                              defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                               rhel-8.3
x86_64                        randconfig-a006
x86_64                           allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
riscv                randconfig-r042-20230202
s390                 randconfig-r044-20230202
arc                  randconfig-r043-20230202
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
i386                             allyesconfig
i386                                defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
arm                  randconfig-r046-20230202
hexagon              randconfig-r045-20230202
hexagon              randconfig-r041-20230202
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
riscv                randconfig-r042-20230203
s390                 randconfig-r044-20230203
hexagon              randconfig-r045-20230203
hexagon              randconfig-r041-20230203
x86_64                        randconfig-a012
x86_64                        randconfig-a014

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
