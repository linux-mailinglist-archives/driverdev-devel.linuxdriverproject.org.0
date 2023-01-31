Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 266816825E3
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Jan 2023 08:51:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 94F00606F5;
	Tue, 31 Jan 2023 07:51:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 94F00606F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id we4UILriaCWY; Tue, 31 Jan 2023 07:51:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 605CB605AC;
	Tue, 31 Jan 2023 07:51:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 605CB605AC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E3C511BF34D
 for <devel@linuxdriverproject.org>; Tue, 31 Jan 2023 07:51:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B86564011F
 for <devel@linuxdriverproject.org>; Tue, 31 Jan 2023 07:51:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B86564011F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QioJSafp6lGd for <devel@linuxdriverproject.org>;
 Tue, 31 Jan 2023 07:51:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 93C6040119
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 93C6040119
 for <devel@driverdev.osuosl.org>; Tue, 31 Jan 2023 07:51:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="307433754"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="307433754"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 23:51:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="666391980"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="666391980"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 30 Jan 2023 23:51:42 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pMlQc-0004Hh-0L;
 Tue, 31 Jan 2023 07:51:42 +0000
Date: Tue, 31 Jan 2023 15:51:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 aa4a0ed1a9d6c953261d8cd58806d9a795e82f2d
Message-ID: <63d8c87f.IxygckUd6za9vOJL%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675151504; x=1706687504;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=el5VE4rEYnP8Whmnv8HAPyIJ3Bf1MizclJzEL7xhHE0=;
 b=F9N7b1nlVoXeLdvGFII5jKQTmu3PUDu3ZMvSdd43kRey1luepwg2+3a4
 26g4mFFqTz7npXjsDflfqgDX4da7O/ttloBG/CLRxIGIxKoH0nbG4tK68
 KPlhmlhKSVRa5N/VPvsRkQr0J9DERmM3siebZ0qCCErZozGd67IuXvaCP
 D7v+nenvR9IeFRR3h05RaCw8Ffe/2pEBaCOZCBagPON7F3VU7XD83tjlp
 i8e8BU+XHc30mZkz9MBTm8sAE9oAWJ+aEx73irI6xpEDIb4SS8k0aUr47
 SgDeFf44Q7PZWaVMvvaLzuXNTCq7AKdJfqFcPnSWBt53gkEDmVO0wgSnh
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F9N7b1nl
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
branch HEAD: aa4a0ed1a9d6c953261d8cd58806d9a795e82f2d  bus: remove the "p" pointer in struct bus_type

elapsed time: 728m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
sh                               allmodconfig
s390                                defconfig
m68k                             allyesconfig
mips                             allyesconfig
m68k                             allmodconfig
powerpc                          allmodconfig
arc                              allyesconfig
s390                             allyesconfig
alpha                            allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                           allyesconfig
ia64                             allmodconfig
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
arm                                 defconfig
i386                          randconfig-a005
arc                  randconfig-r043-20230129
i386                             allyesconfig
x86_64               randconfig-a001-20230130
arm                  randconfig-r046-20230129
x86_64               randconfig-a003-20230130
x86_64               randconfig-a002-20230130
x86_64               randconfig-a004-20230130
arm                  randconfig-r046-20230130
arc                  randconfig-r043-20230130
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
x86_64               randconfig-a006-20230130
x86_64               randconfig-a005-20230130
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust
i386                 randconfig-a013-20230130
i386                          randconfig-a002
i386                 randconfig-a012-20230130
i386                          randconfig-a004
i386                 randconfig-a014-20230130
x86_64               randconfig-a014-20230130
i386                 randconfig-a011-20230130
x86_64               randconfig-a012-20230130
i386                 randconfig-a015-20230130
x86_64               randconfig-a013-20230130
i386                 randconfig-a016-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a016-20230130
x86_64               randconfig-a015-20230130
hexagon              randconfig-r041-20230129
i386                          randconfig-a006
hexagon              randconfig-r045-20230130
hexagon              randconfig-r041-20230130
hexagon              randconfig-r045-20230129
s390                 randconfig-r044-20230129
s390                 randconfig-r044-20230130
riscv                randconfig-r042-20230129
riscv                randconfig-r042-20230130

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
