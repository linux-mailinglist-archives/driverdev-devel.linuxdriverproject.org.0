Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 861255F4DB3
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Oct 2022 04:30:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A37FC60B53;
	Wed,  5 Oct 2022 02:29:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A37FC60B53
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mNsJiS7fZ69j; Wed,  5 Oct 2022 02:29:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 384A360B26;
	Wed,  5 Oct 2022 02:29:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 384A360B26
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 94E571BF39A
 for <devel@linuxdriverproject.org>; Wed,  5 Oct 2022 02:29:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 7087A81B04
 for <devel@linuxdriverproject.org>; Wed,  5 Oct 2022 02:29:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7087A81B04
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 73ijM8pUFdH4 for <devel@linuxdriverproject.org>;
 Wed,  5 Oct 2022 02:29:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7961F81AA7
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 7961F81AA7
 for <devel@driverdev.osuosl.org>; Wed,  5 Oct 2022 02:29:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="389364328"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800"; d="scan'208";a="389364328"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 19:29:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="655027618"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800"; d="scan'208";a="655027618"
Received: from lkp-server01.sh.intel.com (HELO d4f44333118a) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 04 Oct 2022 19:29:50 -0700
Received: from kbuild by d4f44333118a with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ofuAP-0000nB-27;
 Wed, 05 Oct 2022 02:29:49 +0000
Date: Wed, 05 Oct 2022 10:29:14 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD REGRESSION
 b205cf5d9db343ef109cce5a7746ddc21ffae34b
Message-ID: <633cebfa.K5vxSQKFI64L9nwl%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664936992; x=1696472992;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=xVPP7z7gNMD4GunFNNirdjhAuUxLu83LbQsy8ZncKjY=;
 b=BbWElc+H57bfXzY1i2yV3wNpbPk5y0Wm3efD0O95x58ojyGb8tI8MrJe
 6dvdX5i8upGjicsoPiIc+LE8prQaANJQY2Qriia5vN783J3YLXHu1g5AN
 hSWd0c29F6VJ/CrjVj15bcpwjK8P7UxHv9V0spArLT2dyVweO5AR8rzPx
 lCo0MeS0wsjZAgR77bSLggu0U4kIdiuPcRNw+QBRIoarI7ZD/DsPBmVrd
 JhWXnVfcLN3Lul9CmrmBHmoSEh21p54q6dUoBxIeywHlTdiaZ2Mij9tQO
 O7jUQ9pD0DELa5WqEBaKsbUTyX9L+7eXJX3NQSA9/WXawYHvswStcqxp3
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BbWElc+H
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
branch HEAD: b205cf5d9db343ef109cce5a7746ddc21ffae34b  kobject: kset_uevent_ops: make uevent() callback take a const *

Error/Warning: (recently discovered and may have been fixed)

sound/aoa/soundbus/core.c:131:27: error: initialization of 'int (*)(const struct device *, struct kobj_uevent_env *)' from incompatible pointer type 'int (*)(struct device *, struct kobj_uevent_env *)' [-Werror=incompatible-pointer-types]

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- powerpc-allmodconfig
    `-- sound-aoa-soundbus-core.c:error:initialization-of-int-(-)(const-struct-device-struct-kobj_uevent_env-)-from-incompatible-pointer-type-int-(-)(struct-device-struct-kobj_uevent_env-)

elapsed time: 727m

configs tested: 63
configs skipped: 2

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
i386                 randconfig-a011-20221003
i386                 randconfig-a012-20221003
arc                                 defconfig
i386                 randconfig-a013-20221003
alpha                               defconfig
i386                 randconfig-a015-20221003
i386                 randconfig-a016-20221003
i386                 randconfig-a014-20221003
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
x86_64                          rhel-8.3-func
sh                               allmodconfig
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
s390                             allmodconfig
s390                                defconfig
x86_64                              defconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                               rhel-8.3
s390                             allyesconfig
x86_64               randconfig-a011-20221003
i386                                defconfig
x86_64               randconfig-a012-20221003
x86_64               randconfig-a013-20221003
x86_64                           allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
x86_64               randconfig-a014-20221003
x86_64               randconfig-a016-20221003
x86_64               randconfig-a015-20221003
i386                             allyesconfig
arm                                 defconfig
riscv                randconfig-r042-20221003
arc                  randconfig-r043-20221003
arc                  randconfig-r043-20221002
s390                 randconfig-r044-20221003
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig

clang tested configs:
i386                 randconfig-a001-20221003
i386                 randconfig-a006-20221003
i386                 randconfig-a002-20221003
i386                 randconfig-a003-20221003
i386                 randconfig-a005-20221003
i386                 randconfig-a004-20221003
hexagon              randconfig-r041-20221003
riscv                randconfig-r042-20221002
hexagon              randconfig-r041-20221002
x86_64               randconfig-a002-20221003
x86_64               randconfig-a001-20221003
s390                 randconfig-r044-20221002
x86_64               randconfig-a004-20221003
x86_64               randconfig-a006-20221003
x86_64               randconfig-a003-20221003
x86_64               randconfig-a005-20221003
hexagon              randconfig-r045-20221002
hexagon              randconfig-r045-20221003

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
