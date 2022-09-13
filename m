Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A44105B65EA
	for <lists+driverdev-devel@lfdr.de>; Tue, 13 Sep 2022 04:59:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6263660B46;
	Tue, 13 Sep 2022 02:59:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6263660B46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BXJlROVwXG4o; Tue, 13 Sep 2022 02:59:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 00370605A1;
	Tue, 13 Sep 2022 02:59:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00370605A1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6EBE21BF281
 for <devel@linuxdriverproject.org>; Tue, 13 Sep 2022 02:59:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 56DA381516
 for <devel@linuxdriverproject.org>; Tue, 13 Sep 2022 02:59:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 56DA381516
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id siwaKYJi6Xis for <devel@linuxdriverproject.org>;
 Tue, 13 Sep 2022 02:59:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 44D93814B3
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 44D93814B3
 for <devel@driverdev.osuosl.org>; Tue, 13 Sep 2022 02:59:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="277755764"
X-IronPort-AV: E=Sophos;i="5.93,311,1654585200"; d="scan'208";a="277755764"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 19:59:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,311,1654585200"; d="scan'208";a="705380643"
Received: from lkp-server02.sh.intel.com (HELO 4011df4f4fd3) ([10.239.97.151])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Sep 2022 19:59:41 -0700
Received: from kbuild by 4011df4f4fd3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oXw9F-00038Z-0L;
 Tue, 13 Sep 2022 02:59:41 +0000
Date: Tue, 13 Sep 2022 10:58:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 13b7bfae4290e96004f8d30f9472dd025fcd2ee1
Message-ID: <631ff1ef.GGkHoqnMPELKnZ6F%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663037983; x=1694573983;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Vh1EfvBbbolxXHFMg7nfSTP90X1dhLKbD3ewf4idgYA=;
 b=GFQf3+g5hrenAraf7vyu2JfpDW4/1pfnPo4MgwQyvCTirnHuq0anl3qu
 XtiC+dYyBiOpcvZTYyxcjGbiw7D5Cg8X7VyWzxXW4xcn9tnbOPqu9Mf/+
 IJSOaf1WvGjwJ4qpzfweFpxfcOp9kgYMf3fvNS1yYWtlCnD3o8CMSUxVN
 2UEOjkmGJWD0p3PEn3j80xA96BPCMKq9nzj3yxKAt+8Citok2g23lQE2U
 MPLPGosjTqGjajeWCurbCpPJv4VB/oX2vSHi+cWOIjp09CLbpkSDuTEYl
 kTrDzWkOg+K1naPOofT6+aSL73iBaK7EGjDfWqjh1SennwM2xw7R1IBmg
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GFQf3+g5
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
branch HEAD: 13b7bfae4290e96004f8d30f9472dd025fcd2ee1  scsi: stex: properly zero out the passthrough command structure

elapsed time: 721m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz
riscv                randconfig-r042-20220911
arc                  randconfig-r043-20220912
arc                  randconfig-r043-20220911
s390                 randconfig-r044-20220911
m68k                             allmodconfig
i386                             allyesconfig
arc                              allyesconfig
i386                 randconfig-a001-20220912
x86_64               randconfig-a001-20220912
alpha                            allyesconfig
powerpc                           allnoconfig
i386                 randconfig-a002-20220912
powerpc                          allmodconfig
x86_64               randconfig-a006-20220912
m68k                             allyesconfig
i386                 randconfig-a004-20220912
mips                             allyesconfig
x86_64               randconfig-a004-20220912
i386                 randconfig-a003-20220912
sh                               allmodconfig
x86_64               randconfig-a002-20220912
i386                 randconfig-a006-20220912
x86_64               randconfig-a005-20220912
i386                 randconfig-a005-20220912
x86_64               randconfig-a003-20220912
ia64                             allmodconfig
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig

clang tested configs:
i386                 randconfig-a014-20220912
i386                 randconfig-a013-20220912
hexagon              randconfig-r041-20220912
i386                 randconfig-a011-20220912
hexagon              randconfig-r045-20220911
i386                 randconfig-a012-20220912
hexagon              randconfig-r041-20220911
hexagon              randconfig-r045-20220912
i386                 randconfig-a015-20220912
s390                 randconfig-r044-20220912
riscv                randconfig-r042-20220912
i386                 randconfig-a016-20220912
x86_64               randconfig-a014-20220912
x86_64               randconfig-a011-20220912
x86_64               randconfig-a012-20220912
x86_64               randconfig-a015-20220912
x86_64               randconfig-a016-20220912
x86_64               randconfig-a013-20220912

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
