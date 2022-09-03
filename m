Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A68A5ABE74
	for <lists+driverdev-devel@lfdr.de>; Sat,  3 Sep 2022 12:27:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3FAD2403E9;
	Sat,  3 Sep 2022 10:27:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3FAD2403E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TGbLDyPBTKkN; Sat,  3 Sep 2022 10:27:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E3A7D403E2;
	Sat,  3 Sep 2022 10:27:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3A7D403E2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 506D11BF470
 for <devel@linuxdriverproject.org>; Sat,  3 Sep 2022 10:27:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 24F6B60A9E
 for <devel@linuxdriverproject.org>; Sat,  3 Sep 2022 10:27:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 24F6B60A9E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DZL0xyzi6H_S for <devel@linuxdriverproject.org>;
 Sat,  3 Sep 2022 10:27:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4E4F60A93
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B4E4F60A93
 for <devel@driverdev.osuosl.org>; Sat,  3 Sep 2022 10:27:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="279163864"
X-IronPort-AV: E=Sophos;i="5.93,287,1654585200"; d="scan'208";a="279163864"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2022 03:27:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,287,1654585200"; d="scan'208";a="590363574"
Received: from lkp-server02.sh.intel.com (HELO 95dfd251caa2) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 03 Sep 2022 03:27:15 -0700
Received: from kbuild by 95dfd251caa2 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oUQMs-0001Sh-3B;
 Sat, 03 Sep 2022 10:27:14 +0000
Date: Sat, 03 Sep 2022 18:26:48 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 c87a2e6afd56fdc3c952179da03afa273c462e1b
Message-ID: <63132be8.bc7gy4pS+bhZx4Q0%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662200837; x=1693736837;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=LXpJSVsv1kq6vH4x60H0fjv9epEAgwgUhwHXLf20T98=;
 b=QX+yu4e5Sl+NkVDEhGsIOECIlLB4nf168ClPvpD24GHpDL3iZnHlhn3R
 cbs0o0geeRrMBWyyyyUaFVwofBCi9RpYe6EpXGMFT4nuICAfFEbCyFwHc
 /gIoeE6AKiEsSIHlYdQC0JGo/eDNrcniqCwnaoToCTcMfM2IBhQuuCyOC
 HtUSSdb0tgToRyN+PLhioOiOx/LAnHRKpse8rjlxqqe6Hhz7Y82OnGPIz
 Q7rFOX1XLYI81Cg26DZcWLAFKAuSveL9trYh9ZEZz0W31smWVWBANZtqo
 Y5zDFevvNkxS7tv5he8wIKbAaApSzg4cFbjsd2djc+WPUpHm/Vv9EGFWt
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QX+yu4e5
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
branch HEAD: c87a2e6afd56fdc3c952179da03afa273c462e1b  kernel/time/test_udelay.c: debugfs_lookup() fix

elapsed time: 906m

configs tested: 63
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                          rhel-8.3-func
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
i386                             allyesconfig
i386                                defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
arm                           stm32_defconfig
sparc64                          alldefconfig
powerpc                      tqm8xx_defconfig
mips                        vocore2_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
sh                     magicpanelr2_defconfig
xtensa                       common_defconfig
powerpc                    adder875_defconfig
powerpc                       ppc64_defconfig
mips                            ar7_defconfig
mips                    maltaup_xpa_defconfig
ia64                             allmodconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
riscv                randconfig-r042-20220901
hexagon              randconfig-r041-20220901
hexagon              randconfig-r045-20220901
s390                 randconfig-r044-20220901
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
powerpc                     tqm5200_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
