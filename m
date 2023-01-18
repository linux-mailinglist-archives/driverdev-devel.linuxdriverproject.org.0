Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 482E5671479
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Jan 2023 07:44:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4D914409FC;
	Wed, 18 Jan 2023 06:44:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4D914409FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yemKew5URYln; Wed, 18 Jan 2023 06:44:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id C16BA415C0;
	Wed, 18 Jan 2023 06:44:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C16BA415C0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6FF541BF5B4
 for <devel@linuxdriverproject.org>; Wed, 18 Jan 2023 06:44:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 57DA9409FC
 for <devel@linuxdriverproject.org>; Wed, 18 Jan 2023 06:44:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57DA9409FC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZKjO-RWWYX3h for <devel@linuxdriverproject.org>;
 Wed, 18 Jan 2023 06:44:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 28B1340580
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 28B1340580
 for <devel@driverdev.osuosl.org>; Wed, 18 Jan 2023 06:44:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="323601061"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="323601061"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 22:44:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10593"; a="904945976"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="904945976"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 17 Jan 2023 22:44:34 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pI2BV-00004W-24;
 Wed, 18 Jan 2023 06:44:33 +0000
Date: Wed, 18 Jan 2023 14:44:07 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 7d83299351fe7c812c529f5e39fe63b5312e4233
Message-ID: <63c79537.jJ0/FCLI+EpyOlrY%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674024281; x=1705560281;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=JGxR/P2WSvvs8q98rv2AU5oTVGLtGkLxoKDNmGNl8tQ=;
 b=blNx4Ndh9kI72suDHNuZ4ifTsJ0/HP7k6yIEg28//dbu7UcA32V8jdsQ
 RGz8e7MLeU1yEjDP2CD4R4djdI66jOlBuS0hN/vWSK959RIIar7b1BkrN
 UCzNfIJLltHJhowsTmewlrflUU1v6W26tFm88emNbEFsR6vRo4QMdMVPG
 dKrRrtZJTguAZgF3AdUTHoSyLXvy3bCzvgosmZwz4Kk5AAU2ra2ONHNxK
 LqMqkBuiTbt5gNEO9lbH8zlqJVTwdE/zAi0ZCilqE71dDOI5fHIqsY8fB
 kLbwvXYVNwAz7/bGz3b3pQ4PzUtncM6SQVdbqWanLmROL95SaZLwh0FbN
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=blNx4Ndh
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-linus
branch HEAD: 7d83299351fe7c812c529f5e39fe63b5312e4233  staging: vchiq_arm: fix enum vchiq_status return types

elapsed time: 726m

configs tested: 86
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
x86_64               randconfig-a011-20230116
x86_64               randconfig-a013-20230116
x86_64               randconfig-a012-20230116
x86_64               randconfig-a014-20230116
i386                                defconfig
x86_64                           rhel-8.3-bpf
powerpc                          allmodconfig
x86_64                           rhel-8.3-syz
mips                             allyesconfig
x86_64                              defconfig
x86_64                         rhel-8.3-kunit
powerpc                           allnoconfig
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
sh                               allmodconfig
x86_64               randconfig-a016-20230116
x86_64               randconfig-a015-20230116
ia64                             allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                               rhel-8.3
i386                          randconfig-a014
i386                          randconfig-a012
arm                                 defconfig
i386                          randconfig-a016
x86_64                           allyesconfig
i386                             allyesconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                 randconfig-a013-20230116
i386                 randconfig-a012-20230116
i386                 randconfig-a016-20230116
i386                 randconfig-a014-20230116
i386                 randconfig-a015-20230116
i386                 randconfig-a011-20230116
arc                  randconfig-r043-20230115
s390                 randconfig-r044-20230116
riscv                randconfig-r042-20230116
arc                  randconfig-r043-20230116
arm                  randconfig-r046-20230115
arm                  randconfig-r046-20230117
arc                  randconfig-r043-20230117
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006

clang tested configs:
x86_64                          rhel-8.3-rust
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
i386                 randconfig-a002-20230116
i386                 randconfig-a004-20230116
i386                 randconfig-a003-20230116
i386                 randconfig-a001-20230116
i386                 randconfig-a006-20230116
i386                 randconfig-a005-20230116
x86_64               randconfig-a003-20230116
x86_64               randconfig-a004-20230116
x86_64               randconfig-a006-20230116
x86_64               randconfig-a005-20230116
x86_64               randconfig-a001-20230116
x86_64               randconfig-a002-20230116
hexagon              randconfig-r041-20230116
riscv                randconfig-r042-20230117
hexagon              randconfig-r045-20230117
hexagon              randconfig-r045-20230115
hexagon              randconfig-r041-20230117
riscv                randconfig-r042-20230115
arm                  randconfig-r046-20230116
s390                 randconfig-r044-20230115
hexagon              randconfig-r045-20230116
hexagon              randconfig-r041-20230115
s390                 randconfig-r044-20230117
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
