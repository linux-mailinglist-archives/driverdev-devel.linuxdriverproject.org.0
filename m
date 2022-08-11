Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B49E858F554
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Aug 2022 02:47:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89F1260FD8;
	Thu, 11 Aug 2022 00:47:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89F1260FD8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jrWk74IFpR5O; Thu, 11 Aug 2022 00:47:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 365A560F41;
	Thu, 11 Aug 2022 00:47:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 365A560F41
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6E5131C116E
 for <devel@linuxdriverproject.org>; Thu, 11 Aug 2022 00:47:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 4970182B34
 for <devel@linuxdriverproject.org>; Thu, 11 Aug 2022 00:47:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4970182B34
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eH_jviDVUP7l for <devel@linuxdriverproject.org>;
 Thu, 11 Aug 2022 00:47:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6262382B21
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 6262382B21
 for <devel@driverdev.osuosl.org>; Thu, 11 Aug 2022 00:47:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="377518601"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="377518601"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 17:47:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="933110260"
Received: from lkp-server02.sh.intel.com (HELO 5d6b42aa80b8) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 10 Aug 2022 17:47:13 -0700
Received: from kbuild by 5d6b42aa80b8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oLwLw-0000uy-2d;
 Thu, 11 Aug 2022 00:47:12 +0000
Date: Thu, 11 Aug 2022 08:47:01 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 b52232935fc6f81ff676bed9797422296b5e41c7
Message-ID: <62f45185.LaoxfFjlh+qn0NmI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660178835; x=1691714835;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=nDmnBonFYSfSJhi6RT/WolBZNDvy82J7DIRhCVh/wP8=;
 b=L+1jrwcP0cmINCP/+5oJ/qCTJG0MlHdVHhnEqsUtOGn4YdU3d4TqBcT2
 Ym/l/IoaOFQ5BABBXv6wHtFbJq/zdF8pULbYDapsnsY9Y7DWirI66wKY2
 HDNJsX6zTlV03bpI6wPbgo5HzbgioIKgxtxkwODUrk2qu5yHWN69+YbjM
 26lTDkxlOSoGUJT7odVPCKyEelmQoW9Ldha7+6oYEtii5FiQ8GzGzews2
 2SD73fAvWj0yNa6E+m+uPY/KHi6qDHegwHEaVnMbCauYByE8/XK7juY8p
 AT/xHKt8e/9+DwIJEfcWnwuKTlDMCYTsKxMr4W1j0Y+bVROkJ1qrkEH2/
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=L+1jrwcP
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
branch HEAD: b52232935fc6f81ff676bed9797422296b5e41c7  USB: gadget: f_mass_storage: get rid of DEVICE_ATTR() usage

elapsed time: 722m

configs tested: 53
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
i386                                defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                        randconfig-a013
i386                             allyesconfig
x86_64                              defconfig
m68k                             allmodconfig
arm                                 defconfig
x86_64                        randconfig-a011
x86_64                               rhel-8.3
arc                              allyesconfig
powerpc                           allnoconfig
x86_64                        randconfig-a015
i386                          randconfig-a014
powerpc                          allmodconfig
i386                          randconfig-a012
x86_64                        randconfig-a004
mips                             allyesconfig
i386                          randconfig-a016
x86_64                        randconfig-a002
alpha                            allyesconfig
sh                               allmodconfig
m68k                             allyesconfig
x86_64                        randconfig-a006
arm64                            allyesconfig
arm                              allyesconfig
x86_64                           allyesconfig
arc                  randconfig-r043-20220810
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
riscv                randconfig-r042-20220810
s390                 randconfig-r044-20220810
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
ia64                             allmodconfig

clang tested configs:
i386                          randconfig-a013
x86_64                        randconfig-a016
i386                          randconfig-a015
x86_64                        randconfig-a012
i386                          randconfig-a011
x86_64                        randconfig-a014
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
hexagon              randconfig-r041-20220810
hexagon              randconfig-r045-20220810

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
