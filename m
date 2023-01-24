Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C40A678E6E
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Jan 2023 03:40:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4BC6D60D7B;
	Tue, 24 Jan 2023 02:40:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BC6D60D7B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kPLZCXBQxHyH; Tue, 24 Jan 2023 02:40:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 19C1160C1C;
	Tue, 24 Jan 2023 02:40:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 19C1160C1C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2D7701BF391
 for <devel@linuxdriverproject.org>; Tue, 24 Jan 2023 02:40:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0E39D40167
 for <devel@linuxdriverproject.org>; Tue, 24 Jan 2023 02:40:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0E39D40167
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id j6RblwgsfxB7 for <devel@linuxdriverproject.org>;
 Tue, 24 Jan 2023 02:40:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 69C9A40123
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 69C9A40123
 for <devel@driverdev.osuosl.org>; Tue, 24 Jan 2023 02:40:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="314118305"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="314118305"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 18:40:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="611886578"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="611886578"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 23 Jan 2023 18:40:34 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pK9Ef-00063o-11;
 Tue, 24 Jan 2023 02:40:33 +0000
Date: Tue, 24 Jan 2023 10:39:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 54573f3ef96bfa346c62b6ce7835c6691c844fe6
Message-ID: <63cf44ea.laDgNnxWJzic1HSI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674528036; x=1706064036;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vZRTMpGQZgMx/nniqTdfrdwutpc8nFwXZxvYkCAFduI=;
 b=aVg5hpqwi3AOvmL7dr4EfPA7COMkkS0x026hSFj7rBsZQlyM1hZ9aZVp
 Tig1arfMXmRMziw0jYfAodTNCRW2G6ujEAdVGsSFklrY471wrbMUm8SQZ
 saMBnNsgoqhspV2pdGdQdMA9lfQxpUPQffKzKyuMz6tGlQ9H9s6KH7Q6m
 JelkvPZ92xu5w6aQsnxyhsmAKsKLSmPas5UpZP7jtDDzkF+OqFL9V4NMM
 aAxflLi2oZhQTliy9SzwoXSEQmlPg40+SqYfSchL65WjicxkxoK82nyRk
 qWZr0MmNPQY9cPcIrVdVPgTI/p67d5zevRFpY3kIWDEjam2n5D8hNiOTY
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aVg5hpqw
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: 54573f3ef96bfa346c62b6ce7835c6691c844fe6  Merge 6.2-rc5 into staging-next

elapsed time: 725m

configs tested: 67
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
x86_64                            allnoconfig
powerpc                           allnoconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                             allyesconfig
m68k                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
m68k                             allyesconfig
x86_64                              defconfig
x86_64                          rhel-8.3-func
x86_64               randconfig-a006-20230123
x86_64                    rhel-8.3-kselftests
i386                 randconfig-a005-20230123
i386                 randconfig-a006-20230123
arc                  randconfig-r043-20230123
arm                  randconfig-r046-20230123
x86_64                               rhel-8.3
i386                 randconfig-a003-20230123
ia64                             allmodconfig
i386                 randconfig-a002-20230123
i386                 randconfig-a001-20230123
i386                                defconfig
x86_64                           allyesconfig
i386                 randconfig-a004-20230123
arm                                 defconfig
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
sh                               allmodconfig
x86_64                         rhel-8.3-kunit
arm64                            allyesconfig
i386                             allyesconfig
arm                              allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64               randconfig-a002-20230123
x86_64               randconfig-a005-20230123
x86_64               randconfig-a001-20230123
x86_64               randconfig-a003-20230123
x86_64               randconfig-a004-20230123

clang tested configs:
x86_64               randconfig-a011-20230123
x86_64                          rhel-8.3-rust
s390                 randconfig-r044-20230123
x86_64               randconfig-a012-20230123
x86_64               randconfig-a015-20230123
hexagon              randconfig-r041-20230123
hexagon              randconfig-r045-20230123
riscv                randconfig-r042-20230123
x86_64               randconfig-a016-20230123
x86_64               randconfig-a013-20230123
x86_64               randconfig-a014-20230123
i386                 randconfig-a012-20230123
i386                 randconfig-a013-20230123
i386                 randconfig-a011-20230123
i386                 randconfig-a014-20230123
i386                 randconfig-a016-20230123
i386                 randconfig-a015-20230123
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
powerpc                  mpc885_ads_defconfig
x86_64               randconfig-k001-20230123

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
