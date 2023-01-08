Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4AF6613C0
	for <lists+driverdev-devel@lfdr.de>; Sun,  8 Jan 2023 07:04:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6199660AA3;
	Sun,  8 Jan 2023 06:04:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6199660AA3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lJuSNUDLZngs; Sun,  8 Jan 2023 06:04:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2AA9560773;
	Sun,  8 Jan 2023 06:04:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2AA9560773
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 940D01BF580
 for <devel@linuxdriverproject.org>; Sun,  8 Jan 2023 06:04:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 67959405F5
 for <devel@linuxdriverproject.org>; Sun,  8 Jan 2023 06:04:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 67959405F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gSA-V5qWz8ZC for <devel@linuxdriverproject.org>;
 Sun,  8 Jan 2023 06:04:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 817F640591
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 817F640591
 for <devel@driverdev.osuosl.org>; Sun,  8 Jan 2023 06:04:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10583"; a="387149618"
X-IronPort-AV: E=Sophos;i="5.96,309,1665471600"; d="scan'208";a="387149618"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2023 22:04:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10583"; a="724834755"
X-IronPort-AV: E=Sophos;i="5.96,309,1665471600"; d="scan'208";a="724834755"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by fmsmga004.fm.intel.com with ESMTP; 07 Jan 2023 22:04:09 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pEOmu-0005AY-1Q;
 Sun, 08 Jan 2023 06:04:08 +0000
Date: Sun, 08 Jan 2023 14:03:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS WITH WARNING
 f9956a1c00eef96ea3fdf5395852e4ff902f3a76
Message-ID: <63ba5caf.3O7kIpljqVnY3QkU%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673157851; x=1704693851;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=0HRU87VzejWqAeLrP6k75/9nx58JERjOeLC/Vj15xbs=;
 b=LCRFEJ+OcwlW/T8vhFQWnp+cggbPMDPjeiktDpV3f5gLIFiEvxXLYBsX
 Ya/ILgvrRxEqyeGgkupLC3wrypkx0o6z2KuN6bEorZcxWQVOpRm58FtkD
 FbHQBqRYqBHBfRbNUIHfnTkxvoV9NSc/m2zVI7e1nnia16U+pxPAY4yV+
 ywfcORspX5JC/T4osjU/Dr/3CPotO6eaoy+HpNS/rw1LMYzDVSuM+AkBT
 +kXIYTBHTrcwY+XM5yrHkQmsxi+iJW902sj6+Ng5/tqbzbRIcQGZ3lF/h
 Cw/CyPCDbrMozVkLWhgeTN4iqexE55FEnSuBkxeHOQxCyFtzj4j9Rl9uL
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LCRFEJ+O
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
branch HEAD: f9956a1c00eef96ea3fdf5395852e4ff902f3a76  bus: step 1

Warning reports:

https://lore.kernel.org/oe-kbuild-all/202301080322.1HWnRjEx-lkp@intel.com

Warning: (recently discovered and may have been fixed)

drivers/base/bus.c:59:18: warning: variable 'bus' is uninitialized when used here [-Wuninitialized]

Warning ids grouped by kconfigs:

clang_recent_errors
|-- arm-imx_v4_v5_defconfig
|   `-- drivers-base-bus.c:warning:variable-bus-is-uninitialized-when-used-here
|-- arm-vt8500_v6_v7_defconfig
|   `-- drivers-base-bus.c:warning:variable-bus-is-uninitialized-when-used-here
|-- hexagon-randconfig-r045-20230108
|   `-- drivers-base-bus.c:warning:variable-bus-is-uninitialized-when-used-here
|-- i386-randconfig-a006
|   `-- drivers-base-bus.c:warning:variable-bus-is-uninitialized-when-used-here
|-- i386-randconfig-a013
|   `-- drivers-base-bus.c:warning:variable-bus-is-uninitialized-when-used-here
`-- powerpc-mpc836x_rdk_defconfig
    `-- drivers-base-bus.c:warning:variable-bus-is-uninitialized-when-used-here

elapsed time: 749m

configs tested: 76
configs skipped: 3

gcc tested configs:
x86_64                            allnoconfig
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
sh                               allmodconfig
i386                          randconfig-a014
arm                  randconfig-r046-20230108
x86_64                        randconfig-a013
x86_64                        randconfig-a011
arc                  randconfig-r043-20230108
i386                          randconfig-a012
x86_64                           rhel-8.3-bpf
i386                          randconfig-a016
x86_64                           rhel-8.3-kvm
mips                             allyesconfig
ia64                             allmodconfig
x86_64                        randconfig-a015
powerpc                          allmodconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
arc                                 defconfig
x86_64                        randconfig-a004
arm                                 defconfig
i386                          randconfig-a001
x86_64                              defconfig
i386                          randconfig-a003
s390                             allmodconfig
sh                ecovec24-romimage_defconfig
alpha                               defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
i386                          randconfig-a005
sh                                  defconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a006
s390                                defconfig
m68k                             allyesconfig
s390                             allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
arm64                            allyesconfig
arm                              allyesconfig
x86_64                               rhel-8.3
i386                             allyesconfig
x86_64                           allyesconfig
sh                           se7722_defconfig
mips                            gpr_defconfig
xtensa                  cadence_csp_defconfig
arc                        vdk_hs38_defconfig
m68k                        mvme16x_defconfig
parisc64                         alldefconfig
powerpc                 mpc85xx_cds_defconfig
m68k                             allmodconfig

clang tested configs:
i386                          randconfig-a013
hexagon              randconfig-r045-20230108
i386                          randconfig-a011
riscv                randconfig-r042-20230108
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a015
x86_64                        randconfig-a016
hexagon              randconfig-r041-20230108
s390                 randconfig-r044-20230108
x86_64                          rhel-8.3-rust
i386                          randconfig-a002
arm                     am200epdkit_defconfig
x86_64                        randconfig-a001
powerpc                 mpc832x_mds_defconfig
i386                          randconfig-a004
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a006
powerpc                 mpc836x_rdk_defconfig
arm                    vt8500_v6_v7_defconfig
arm                       imx_v4_v5_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
