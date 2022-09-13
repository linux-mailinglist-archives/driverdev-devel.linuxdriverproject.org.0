Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B86A5B65F8
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Sep 2022 05:08:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45B92410A6;
	Tue, 13 Sep 2022 03:08:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45B92410A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zgEyy75EnCME; Tue, 13 Sep 2022 03:07:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 94784410A3;
	Tue, 13 Sep 2022 03:07:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 94784410A3
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8940A1BF340
 for <devel@linuxdriverproject.org>; Tue, 13 Sep 2022 03:07:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4F574410A6
 for <devel@linuxdriverproject.org>; Tue, 13 Sep 2022 03:07:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F574410A6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3kCp1fX9X-qw for <devel@linuxdriverproject.org>;
 Tue, 13 Sep 2022 03:07:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C4681410A3
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C4681410A3
 for <devel@driverdev.osuosl.org>; Tue, 13 Sep 2022 03:07:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="298821226"
X-IronPort-AV: E=Sophos;i="5.93,311,1654585200"; d="scan'208";a="298821226"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 20:07:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,311,1654585200"; d="scan'208";a="944879357"
Received: from lkp-server02.sh.intel.com (HELO 4011df4f4fd3) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 12 Sep 2022 20:07:42 -0700
Received: from kbuild by 4011df4f4fd3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oXwH0-000395-0N;
 Tue, 13 Sep 2022 03:07:42 +0000
Date: Tue, 13 Sep 2022 11:07:34 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 8edc339f5fc4ec90bdfba458640daf390cb0e038
Message-ID: <631ff3f6.v3q82Gqpgao0rKM6%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663038473; x=1694574473;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=waxbPepwbUSmZ/GRRSnDXnn+O9/16Y773EC3YF/RNdg=;
 b=HOMH5cBqBgglfFQNgp1gu0kunKBudIyjsQAtFJBC05daCIxyNuoQhwUL
 3a2cvsmFe/4X8u/h36d1fIW6NpJPhapDheq+Jbd2XY5HzlbGuYKcJyeUF
 cN9tviQScLnR9yf91ytnxLqOkBYlJX/JVs5hocmX1r8wYwzh36gv9d+As
 OvuQwLGQF5E2s/Pc6MutCA6aJDrV0PSNk3AuN9gQCjt63mhZTKew/kcLO
 8Vfe7icxLlodUrEVCCnRoLu3b/YJSICKF/gEWsIVBb0CWIK6hkrE8B14n
 YViSxReHwg1uCXabbIczkngBaz/NNdxuYVwsYiC2Ne/9OJ783hovE1ijS
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HOMH5cBq
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
branch HEAD: 8edc339f5fc4ec90bdfba458640daf390cb0e038  readfile.2: new page describing readfile(2)

elapsed time: 728m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
x86_64                              defconfig
arc                  randconfig-r043-20220912
i386                 randconfig-a001-20220912
arc                  randconfig-r043-20220911
sh                               allmodconfig
i386                 randconfig-a002-20220912
i386                 randconfig-a004-20220912
x86_64                               rhel-8.3
mips                             allyesconfig
m68k                             allmodconfig
x86_64                           rhel-8.3-kvm
i386                                defconfig
powerpc                          allmodconfig
i386                 randconfig-a003-20220912
x86_64                    rhel-8.3-kselftests
i386                 randconfig-a006-20220912
x86_64                           allyesconfig
x86_64                           rhel-8.3-syz
arc                              allyesconfig
riscv                randconfig-r042-20220911
i386                 randconfig-a005-20220912
x86_64                          rhel-8.3-func
alpha                            allyesconfig
x86_64                         rhel-8.3-kunit
m68k                             allyesconfig
s390                 randconfig-r044-20220911
x86_64               randconfig-a001-20220912
i386                             allyesconfig
x86_64               randconfig-a006-20220912
x86_64               randconfig-a004-20220912
x86_64               randconfig-a002-20220912
x86_64               randconfig-a005-20220912
x86_64               randconfig-a003-20220912
ia64                             allmodconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
hexagon              randconfig-r041-20220912
hexagon              randconfig-r045-20220911
hexagon              randconfig-r041-20220911
hexagon              randconfig-r045-20220912
s390                 randconfig-r044-20220912
riscv                randconfig-r042-20220912
i386                 randconfig-a014-20220912
i386                 randconfig-a015-20220912
i386                 randconfig-a013-20220912
i386                 randconfig-a016-20220912
i386                 randconfig-a011-20220912
i386                 randconfig-a012-20220912
x86_64               randconfig-a014-20220912
x86_64               randconfig-a011-20220912
x86_64               randconfig-a012-20220912
x86_64               randconfig-a013-20220912
x86_64               randconfig-a016-20220912
x86_64               randconfig-a015-20220912

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
