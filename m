Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB0D15908EA
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Aug 2022 01:06:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1F85E60BB9;
	Thu, 11 Aug 2022 23:06:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1F85E60BB9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nwYyGkZpjb6C; Thu, 11 Aug 2022 23:06:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BF30060B8B;
	Thu, 11 Aug 2022 23:06:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF30060B8B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E21101BF380
 for <devel@linuxdriverproject.org>; Thu, 11 Aug 2022 23:06:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C937160BB9
 for <devel@linuxdriverproject.org>; Thu, 11 Aug 2022 23:06:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C937160BB9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w1ZGeY5jmLWW for <devel@linuxdriverproject.org>;
 Thu, 11 Aug 2022 23:06:13 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C1D9360B8B
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C1D9360B8B
 for <devel@driverdev.osuosl.org>; Thu, 11 Aug 2022 23:06:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="289050161"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="289050161"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 16:06:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="695070691"
Received: from lkp-server02.sh.intel.com (HELO cfab306db114) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Aug 2022 16:06:12 -0700
Received: from kbuild by cfab306db114 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oMHFj-0000lz-1m;
 Thu, 11 Aug 2022 23:06:11 +0000
Date: Fri, 12 Aug 2022 07:06:03 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 20b2ef949ecf81db14e80283e88791ce35ddfa27
Message-ID: <62f58b5b.rbeSffRr/58XeBl1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660259173; x=1691795173;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Mai3PhAlxhtqhCsxAiSFxBVNFWkW1XLDU+P+OhKhRUw=;
 b=dfjqh89pBDgc1iBOm0NRRNUtkZZe+qNUKYVdCaFTPEs+0aFTJkg8qKQE
 hfA8nNmyw5u7iOcGEmCABitMiqq979A2twMNC8uPcd+Kv21v8rUUrkUQ6
 kPW26M/VzxFAA7R4T8l5Z4aln7E61+nywiaURX7jomxYHAq0GqPtRFImA
 EdWDBZPzpwieXafsDeiydp2Kb6vKzE8oGpSJWg2JM/pXWtwI8mUCvudaf
 pQbsn8Pj56Fkyueb3w4kfmbeF62QQaFqdEUbhuaYc9kmLtyQ8m0uL/D4y
 DYDHR5kuWunXuIyG8SzjiZqt8HR6DLfDmjjXRhTGVUgCSYVFxzpRrMm1q
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dfjqh89p
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
branch HEAD: 20b2ef949ecf81db14e80283e88791ce35ddfa27  USB: gadget: f_mass_storage: get rid of DEVICE_ATTR() usage

elapsed time: 714m

configs tested: 51
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                  randconfig-r043-20220810
arm                                 defconfig
riscv                randconfig-r042-20220810
s390                 randconfig-r044-20220810
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           rhel-8.3-kvm
i386                                defconfig
m68k                             allmodconfig
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a013
x86_64                           rhel-8.3-syz
powerpc                           allnoconfig
arc                              allyesconfig
x86_64                               rhel-8.3
alpha                            allyesconfig
x86_64                          rhel-8.3-func
i386                             allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a011
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a014
powerpc                          allmodconfig
m68k                             allyesconfig
x86_64                           allyesconfig
i386                          randconfig-a005
x86_64                        randconfig-a015
i386                          randconfig-a012
sh                               allmodconfig
mips                             allyesconfig
i386                          randconfig-a016
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r041-20220810
hexagon              randconfig-r045-20220810
x86_64                        randconfig-a014
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a016
i386                          randconfig-a002
i386                          randconfig-a011
x86_64                        randconfig-a012
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
