Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CB26650CA
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Jan 2023 01:58:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 66BD860A77;
	Wed, 11 Jan 2023 00:58:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 66BD860A77
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Oe6medo644R9; Wed, 11 Jan 2023 00:58:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41B9C605F6;
	Wed, 11 Jan 2023 00:58:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 41B9C605F6
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 006B21BF964
 for <devel@linuxdriverproject.org>; Wed, 11 Jan 2023 00:58:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C9E76605F6
 for <devel@linuxdriverproject.org>; Wed, 11 Jan 2023 00:58:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C9E76605F6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZsH-35oSt7Mk for <devel@linuxdriverproject.org>;
 Wed, 11 Jan 2023 00:58:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8B6E7600BA
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8B6E7600BA
 for <devel@driverdev.osuosl.org>; Wed, 11 Jan 2023 00:58:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="320987965"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="320987965"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 16:58:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="781231602"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="781231602"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 10 Jan 2023 16:58:26 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pFPRh-0008XS-2W;
 Wed, 11 Jan 2023 00:58:25 +0000
Date: Wed, 11 Jan 2023 08:58:25 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 b0a8a59a1c44c07807afe50c6bd21a33c9ec98b7
Message-ID: <63be09b1.S20LwFwoQgCRpT/d%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673398709; x=1704934709;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ZvW9EoNHJph+HevJ+/OVjkJYKnb0tp2Nh/Ug4SvvlZM=;
 b=K8To4KzudFxwY2wDWZnKn5Yr3esrtjaoshnj/GWdnxFgmHOyjfjN0VxB
 Z56kRkVmlw373Wf7tRHqVFTJst9oKiLJ3dOE9l4bFX4Zz/fBN+7Tft93J
 FbcBQpViInZ+PH85PXybORTDKN0+BCubqxU/n5P6Pcl7TI9nEkdTefLdc
 bBUfN4EpF4/xa52WuokJEwFP1S2ZR1sm1Up99T0JremT1dbpDC6YPvOsd
 9xG0EWveZRf86VM1YWP7R1pXwxwKDlYhtFnhrR345RNLb+CiuIhKtgEOJ
 hIZodYPutihCL1RBthTa5H40kay6+cgwvZza6/c+272z8UIg3696xRGxK
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K8To4Kzu
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: b0a8a59a1c44c07807afe50c6bd21a33c9ec98b7  driver core: move struct subsys_dev_iter to a local file

elapsed time: 724m

configs tested: 42
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                            allnoconfig
s390                                defconfig
powerpc                           allnoconfig
s390                             allyesconfig
um                             i386_defconfig
m68k                             allyesconfig
um                           x86_64_defconfig
m68k                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
ia64                             allmodconfig
i386                             allyesconfig
i386                                defconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig

clang tested configs:
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                          rhel-8.3-rust
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-k001
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
