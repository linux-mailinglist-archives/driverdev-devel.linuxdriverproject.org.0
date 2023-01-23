Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 768B1677496
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Jan 2023 05:14:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 010CA60B1A;
	Mon, 23 Jan 2023 04:14:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 010CA60B1A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x5KlFEWb4ef6; Mon, 23 Jan 2023 04:14:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B85BE60BC7;
	Mon, 23 Jan 2023 04:14:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B85BE60BC7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A87C01BF295
 for <devel@linuxdriverproject.org>; Mon, 23 Jan 2023 04:13:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 905F740E47
 for <devel@linuxdriverproject.org>; Mon, 23 Jan 2023 04:13:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 905F740E47
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zjTnBsFI8W-l for <devel@linuxdriverproject.org>;
 Mon, 23 Jan 2023 04:13:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6B6604092D
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6B6604092D
 for <devel@driverdev.osuosl.org>; Mon, 23 Jan 2023 04:13:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="328058837"
X-IronPort-AV: E=Sophos;i="5.97,238,1669104000"; d="scan'208";a="328058837"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2023 20:13:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="835330747"
X-IronPort-AV: E=Sophos;i="5.97,238,1669104000"; d="scan'208";a="835330747"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 22 Jan 2023 20:13:55 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pJoDS-0005PS-2f;
 Mon, 23 Jan 2023 04:13:54 +0000
Date: Mon, 23 Jan 2023 12:13:20 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 653690b7031138a6d3429834cadbe294ec98dbc7
Message-ID: <63ce0960.FLbffIJ+YnKb+DAZ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674447237; x=1705983237;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=jzrKPsqTAqCvLA2ofkOJw/zY50/1fN0d8qRB/VtOuDA=;
 b=fzetqKvhLJob6JEQeptPWoi+wic1IWsrp8/06vlJoBlesqO1AWJ1DdA3
 8exUgrhQXAp2Gx6XyvYDgP9ix382suK55f3ibk0M+tiD16j3XItfRyHR3
 P+jug/HfVjNzq/OFt2+XmUm7dSBP6sfRPSeQnmeZjFiFhE5wnVaQBpuoS
 7L74n8j8Jwk3BzOJ/J2m4kAn0MVBb6nKKy09jzTeGHrSFUMgCrqlaO1QD
 L6POW8ioKF+NJJ3Z3vsjf08DzyQSwza/2QO1OkUSAbUlhrWK4LK8wijW6
 +CFVqnF3bF5BT60MvijnqfeX8iZ6F3qp0ZNQlIo+6emUeYHZVy2KfKDP7
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fzetqKvh
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: 653690b7031138a6d3429834cadbe294ec98dbc7  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 721m

configs tested: 85
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
x86_64                            allnoconfig
i386                                defconfig
x86_64                           rhel-8.3-syz
um                             i386_defconfig
x86_64                         rhel-8.3-kunit
arc                                 defconfig
x86_64                              defconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
s390                             allmodconfig
x86_64                               rhel-8.3
i386                             allyesconfig
um                           x86_64_defconfig
sh                               allmodconfig
i386                 randconfig-a004-20230123
nios2                         10m50_defconfig
ia64                             allmodconfig
i386                 randconfig-a003-20230123
arm                                 defconfig
i386                          randconfig-a014
alpha                               defconfig
x86_64                        randconfig-a013
sh                            hp6xx_defconfig
x86_64                        randconfig-a004
powerpc                        cell_defconfig
i386                 randconfig-a002-20230123
i386                 randconfig-a001-20230123
x86_64                        randconfig-a002
i386                 randconfig-a005-20230123
s390                             allyesconfig
s390                                defconfig
x86_64                    rhel-8.3-kselftests
mips                             allyesconfig
arm                        shmobile_defconfig
powerpc                          allmodconfig
sh                          rsk7264_defconfig
arm64                            allyesconfig
x86_64                          rhel-8.3-func
m68k                             allyesconfig
i386                 randconfig-a006-20230123
arm                              allyesconfig
arc                  randconfig-r043-20230123
i386                          randconfig-a012
x86_64                        randconfig-a011
x86_64                           allyesconfig
sh                        sh7785lcr_defconfig
riscv                randconfig-r042-20230122
i386                          randconfig-a016
arc                  randconfig-r043-20230122
m68k                             allmodconfig
parisc                           alldefconfig
arc                              allyesconfig
x86_64                        randconfig-a015
arm                  randconfig-r046-20230123
alpha                            allyesconfig
i386                          randconfig-c001
x86_64                        randconfig-a006
s390                 randconfig-r044-20230122
csky                                defconfig
powerpc                 linkstation_defconfig
parisc                generic-64bit_defconfig
sh                   sh7770_generic_defconfig
openrisc                 simple_smp_defconfig
powerpc                     redwood_defconfig

clang tested configs:
i386                          randconfig-a013
hexagon              randconfig-r041-20230123
x86_64                        randconfig-a014
x86_64                          rhel-8.3-rust
hexagon              randconfig-r045-20230122
hexagon              randconfig-r045-20230123
i386                          randconfig-a011
arm                  randconfig-r046-20230122
s390                 randconfig-r044-20230123
hexagon              randconfig-r041-20230122
x86_64                        randconfig-a016
i386                          randconfig-a015
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a001
riscv                randconfig-r042-20230123
x86_64                        randconfig-a003
arm                           omap1_defconfig
mips                      maltaaprp_defconfig
mips                     cu1000-neo_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
