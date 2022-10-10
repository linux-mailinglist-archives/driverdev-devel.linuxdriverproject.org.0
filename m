Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C3065F94CC
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Oct 2022 02:12:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id C19BA416C6;
	Mon, 10 Oct 2022 00:11:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C19BA416C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SogwW9hnPuMc; Mon, 10 Oct 2022 00:11:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 295B4416ED;
	Mon, 10 Oct 2022 00:11:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 295B4416ED
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7FD451BF995
 for <devel@linuxdriverproject.org>; Mon, 10 Oct 2022 00:11:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 66109416AD
 for <devel@linuxdriverproject.org>; Mon, 10 Oct 2022 00:11:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66109416AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7_OIWrTiW0-L for <devel@linuxdriverproject.org>;
 Mon, 10 Oct 2022 00:11:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1CA73416B1
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1CA73416B1
 for <devel@driverdev.osuosl.org>; Mon, 10 Oct 2022 00:11:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="330572103"
X-IronPort-AV: E=Sophos;i="5.95,172,1661842800"; d="scan'208";a="330572103"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2022 17:11:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="603536745"
X-IronPort-AV: E=Sophos;i="5.95,172,1661842800"; d="scan'208";a="603536745"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 09 Oct 2022 17:11:41 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ohgOS-0001Nn-2Z;
 Mon, 10 Oct 2022 00:11:40 +0000
Date: Mon, 10 Oct 2022 08:10:53 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 8704109ec615bb3905aeb76a9d89bfae1e6555a7
Message-ID: <6343630d.5GqmzoYz4dtU4FJ1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665360704; x=1696896704;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ihFi2I6sWD4q02AlHZmOqRY9rjXHzR9co2wWgKDD8dI=;
 b=eRtaEm8V8t/cUdKHFSJ4gmpOv+dO/IgKwJ4FQOwDluovjSKkStojdg7G
 z8WqPnknf/J6wtfAmcRxW6QJffdYZe+Lo+KU3aWj+j4ivyKpljcV6VUEG
 P22UVHgDWW3IQX+8/jWuuNJ7fmT+ze9pgEXpRA0sIie+K9r18FUYK+Qms
 3Ue5SA8WL1yDDx5VVRL5zrnmemQm1qElF/2maMXsfAuX4+2GC8ga0L+8D
 OxMbYzeF39I1MHLhJ0NyO9VJrQEvsLVK4I7OJZx1YXXrFLXghfZawD/1G
 NtKHuzVhiiorf84nBOmxgQlJSMgCzIaEthr8EhbjMlPbP1+5+x7Lwfwu/
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=eRtaEm8V
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
branch HEAD: 8704109ec615bb3905aeb76a9d89bfae1e6555a7  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 726m

configs tested: 110
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
x86_64                              defconfig
arc                               allnoconfig
alpha                             allnoconfig
arm                                 defconfig
x86_64                          rhel-8.3-func
i386                                defconfig
x86_64                           rhel-8.3-syz
i386                          randconfig-a001
x86_64                         rhel-8.3-kunit
i386                          randconfig-a003
riscv                             allnoconfig
x86_64                    rhel-8.3-kselftests
arc                  randconfig-r043-20221009
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                               rhel-8.3
riscv                randconfig-r042-20221009
i386                          randconfig-a014
sh                ecovec24-romimage_defconfig
x86_64                           rhel-8.3-kvm
i386                          randconfig-a005
csky                              allnoconfig
x86_64                           allyesconfig
ia64                             allmodconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a006
x86_64                        randconfig-a011
m68k                             allmodconfig
i386                             allyesconfig
powerpc                           allnoconfig
ia64                        generic_defconfig
i386                          randconfig-a012
xtensa                           alldefconfig
s390                 randconfig-r044-20221009
arm                              allyesconfig
arc                              allyesconfig
powerpc                          allmodconfig
sh                           se7712_defconfig
x86_64                        randconfig-a015
i386                          randconfig-a016
alpha                            allyesconfig
arm64                            allyesconfig
m68k                             allyesconfig
sh                          rsk7201_defconfig
mips                           ci20_defconfig
sh                               allmodconfig
arm                           tegra_defconfig
mips                             allyesconfig
sparc                            alldefconfig
sh                        dreamcast_defconfig
arm                          gemini_defconfig
xtensa                    smp_lx200_defconfig
arm                       omap2plus_defconfig
powerpc                     taishan_defconfig
xtensa                  nommu_kc705_defconfig
sh                               alldefconfig
nios2                            allyesconfig
sparc                               defconfig
sh                                  defconfig
parisc64                         alldefconfig
arm                         lubbock_defconfig
sh                         ap325rxa_defconfig
ia64                      gensparse_defconfig
mips                           gcw0_defconfig
mips                            gpr_defconfig
i386                          randconfig-c001
sh                           se7721_defconfig
powerpc                 mpc834x_mds_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
loongarch                           defconfig
loongarch                         allnoconfig
loongarch                        allmodconfig
arm                  randconfig-c002-20221009
x86_64                        randconfig-c001
s390                             allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a013
hexagon              randconfig-r045-20221009
x86_64                        randconfig-a005
i386                          randconfig-a006
x86_64                        randconfig-a001
arm                         lpc32xx_defconfig
i386                          randconfig-a011
x86_64                        randconfig-a003
x86_64                        randconfig-a016
x86_64                        randconfig-a012
hexagon              randconfig-r041-20221009
x86_64                        randconfig-a014
i386                          randconfig-a015
arm                            dove_defconfig
arm                     davinci_all_defconfig
mips                           rs90_defconfig
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
