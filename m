Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 175F4666610
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Jan 2023 23:15:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D403360DDF;
	Wed, 11 Jan 2023 22:15:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D403360DDF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GEcQtYbvycSC; Wed, 11 Jan 2023 22:15:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B95E760B3C;
	Wed, 11 Jan 2023 22:15:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B95E760B3C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 22FE81BF95F
 for <devel@linuxdriverproject.org>; Wed, 11 Jan 2023 22:15:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id F105B4189F
 for <devel@linuxdriverproject.org>; Wed, 11 Jan 2023 22:15:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F105B4189F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4LOrD7DbCXpC for <devel@linuxdriverproject.org>;
 Wed, 11 Jan 2023 22:15:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 702AB41890
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 702AB41890
 for <devel@driverdev.osuosl.org>; Wed, 11 Jan 2023 22:15:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="409788924"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="409788924"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 14:15:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="689913583"
X-IronPort-AV: E=Sophos;i="5.96,318,1665471600"; d="scan'208";a="689913583"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 11 Jan 2023 14:15:44 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pFjNn-0009Z4-2S;
 Wed, 11 Jan 2023 22:15:43 +0000
Date: Thu, 12 Jan 2023 06:15:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 ecafbfba49de9ea4d4af970fc554ea980b02cc82
Message-ID: <63bf34e4.Qa3zZTivJjlsXT30%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673475346; x=1705011346;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=A36fIvQdl6T3WfcLM51ixPOWORAvsgcz6hDgsBueC/Y=;
 b=kTZo6qlInNJuxR6jAMhZFm870BSQ5BVIMaBmbfydoq0fYM7dadEot1wb
 DOlcNv7oIoiDRGxmyP668dBynk/WtcqU9lLQBd1C52Cj7qsU4hb/rFiok
 sdJrcsGEhDnWWMweVVUTyNDZQxVRDjaclOXVnVMVeqxA835tUKn4AEJnm
 Zc21cRc33w41UmBAgSW+c/E/kNZwWWoIGf0HUMZv2N3kwpbtMs98B8P+a
 Ko+ZxLdz8k4s2uJsr+ZFCLaX+vZHR5X9j6UpyUmufZ2fB8Ph/Cc/KNQIm
 1A418EdAqHSXlmOktnIk6+m3NbsoQ0kS8ZEL6zOlb71TniTs24mUNTVT7
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kTZo6qlI
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: ecafbfba49de9ea4d4af970fc554ea980b02cc82  bus: step 1

elapsed time: 720m

configs tested: 59
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                           rhel-8.3-bpf
powerpc                           allnoconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
s390                                defconfig
i386                                defconfig
um                             i386_defconfig
um                           x86_64_defconfig
i386                          randconfig-a001
i386                          randconfig-a003
m68k                             allyesconfig
m68k                             allmodconfig
x86_64                        randconfig-a013
s390                             allyesconfig
arc                              allyesconfig
x86_64                        randconfig-a011
i386                          randconfig-a005
x86_64                          rhel-8.3-func
alpha                            allyesconfig
x86_64                              defconfig
sh                               allmodconfig
x86_64                        randconfig-a015
arc                  randconfig-r043-20230110
x86_64                               rhel-8.3
arm                                 defconfig
x86_64                    rhel-8.3-kselftests
ia64                             allmodconfig
s390                 randconfig-r044-20230110
riscv                randconfig-r042-20230110
mips                             allyesconfig
i386                             allyesconfig
powerpc                          allmodconfig
arm64                            allyesconfig
x86_64                           allyesconfig
arm                              allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                          rhel-8.3-rust
i386                          randconfig-a006
hexagon              randconfig-r041-20230110
arm                  randconfig-r046-20230110
x86_64                        randconfig-a014
hexagon              randconfig-r045-20230110
x86_64                        randconfig-a016
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
