Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D6EBC4663D0
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Dec 2021 13:38:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5C07080DA6;
	Thu,  2 Dec 2021 12:38:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9mXj3BzuhdYk; Thu,  2 Dec 2021 12:38:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78A4380C87;
	Thu,  2 Dec 2021 12:38:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 82F911BF20D
 for <devel@linuxdriverproject.org>; Thu,  2 Dec 2021 12:38:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 72CAC606D9
 for <devel@linuxdriverproject.org>; Thu,  2 Dec 2021 12:38:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G7iLp7dB26fA for <devel@linuxdriverproject.org>;
 Thu,  2 Dec 2021 12:38:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A5DD6605B5
 for <devel@driverdev.osuosl.org>; Thu,  2 Dec 2021 12:38:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="223572301"
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="223572301"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 04:38:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="500730561"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 02 Dec 2021 04:38:31 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mslM6-000GKI-Py; Thu, 02 Dec 2021 12:38:30 +0000
Date: Thu, 02 Dec 2021 20:38:26 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:hid_is_usb] BUILD REGRESSION
 0a6c579f381aa88f6e8f7cd5515056416e247a2b
Message-ID: <61a8be42.VJNveEd9FtvN2E2d%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git hid_is_usb
branch HEAD: 0a6c579f381aa88f6e8f7cd5515056416e247a2b  HID: check for valid USB device for many HID drivers

Error/Warning reports:

https://lore.kernel.org/lkml/202112020808.AZ5usuXj-lkp@intel.com
https://lore.kernel.org/lkml/202112021000.3GKuE8mS-lkp@intel.com

Error/Warning in current branch:

arc-elf-ld: hid-corsair.c:(.text+0x70e): undefined reference to `usb_hid_driver'
hppa-linux-ld: (.text+0x63c): undefined reference to `usb_hid_driver'
hppa-linux-ld: (.text+0xa04): undefined reference to `usb_hid_driver'

possible Error/Warning in current branch (please contact us if interested):

(.text+0x18): undefined reference to `usb_hid_driver'
(.text+0x30): undefined reference to `usb_hid_driver'
(.text+0x634): undefined reference to `usb_hid_driver'
(.text+0x78c): undefined reference to `usb_hid_driver'
(.text+0x9fc): undefined reference to `usb_hid_driver'
(.text+0xc8): undefined reference to `usb_hid_driver'
(.text+0xcbc): undefined reference to `usb_hid_driver'
ERROR: modpost: "usb_hid_driver" [drivers/hid/hid-chicony.ko] undefined!
ERROR: modpost: "usb_hid_driver" [drivers/hid/hid-corsair.ko] undefined!
ERROR: modpost: "usb_hid_driver" [drivers/hid/hid-logitech.ko] undefined!
ERROR: modpost: "usb_hid_driver" [drivers/hid/hid-prodikeys.ko] undefined!
ERROR: modpost: "usb_hid_driver" [drivers/hid/hid-samsung.ko] undefined!
aarch64-linux-ld: hid-chicony.c:(.text+0x130): undefined reference to `usb_hid_driver'
aarch64-linux-ld: hid-lg.c:(.text+0x718): undefined reference to `usb_hid_driver'
aarch64-linux-ld: hid-samsung.c:(.text+0x34): undefined reference to `usb_hid_driver'
arc-elf-ld: hid-chicony.c:(.text+0x16): undefined reference to `usb_hid_driver'
arc-elf-ld: hid-samsung.c:(.text+0x18): undefined reference to `usb_hid_driver'
arceb-elf-ld: hid-chicony.c:(.text+0x8c): undefined reference to `usb_hid_driver'
arceb-elf-ld: hid-chicony.c:(.text+0xd8): undefined reference to `usb_hid_driver'
arceb-elf-ld: hid-prodikeys.c:(.text+0x464): undefined reference to `usb_hid_driver'
arceb-elf-ld: hid-samsung.c:(.text+0x18): undefined reference to `usb_hid_driver'
drivers/hid/hid-prodikeys.c:807: undefined reference to `usb_hid_driver'
hid-corsair.c:(.text+0x1172): undefined reference to `usb_hid_driver'
hid-corsair.c:(.text+0x1982): undefined reference to `usb_hid_driver'
hid-corsair.c:(.text+0x70e): undefined reference to `usb_hid_driver'
hid-corsair.c:(.text+0xac4): undefined reference to `usb_hid_driver'
hid-corsair.c:(.text+0xb18): undefined reference to `usb_hid_driver'
hid-lg.c:(.text+0x336): undefined reference to `usb_hid_driver'
hid-lg.c:(.text+0x34c): undefined reference to `usb_hid_driver'
hid-lg.c:(.text+0x364): undefined reference to `usb_hid_driver'
hid-lg.c:(.text+0x40c): undefined reference to `usb_hid_driver'
hid-lg.c:(.text+0x44a): undefined reference to `usb_hid_driver'
hid-lg.c:(.text+0x458): undefined reference to `usb_hid_driver'
hid-lg.c:(.text+0x47c): undefined reference to `usb_hid_driver'
hid-lg.c:(.text+0x4ac): undefined reference to `usb_hid_driver'
hid-lg.c:(.text+0x588): undefined reference to `usb_hid_driver'
hid-lg.c:(.text+0x714): undefined reference to `usb_hid_driver'
hid-lg.c:(.text+0xb90): undefined reference to `usb_hid_driver'
hid-lg.c:(.text+0xd02): undefined reference to `usb_hid_driver'
hid-prodikeys.c:(.text+0x17b4): undefined reference to `usb_hid_driver'
hid-prodikeys.c:(.text+0x1d80): undefined reference to `usb_hid_driver'
hid-prodikeys.c:(.text+0x464): undefined reference to `usb_hid_driver'
hid-prodikeys.c:(.text+0xde8): undefined reference to `usb_hid_driver'
hid-prodikeys.c:(.text+0xe30): undefined reference to `usb_hid_driver'
hid-samsung.c:(.text.samsung_probe+0x6): undefined reference to `usb_hid_driver'
ia64-linux-ld: hid-chicony.c:(.text+0x180): undefined reference to `usb_hid_driver'
ia64-linux-ld: hid-chicony.c:(.text+0x1f0): undefined reference to `usb_hid_driver'
ia64-linux-ld: hid-chicony.c:(.text+0x30): undefined reference to `usb_hid_driver'
ia64-linux-ld: hid-corsair.c:(.text+0x11b0): undefined reference to `usb_hid_driver'
ia64-linux-ld: hid-corsair.c:(.text+0x19c0): undefined reference to `usb_hid_driver'
ia64-linux-ld: hid-lg.c:(.text+0xbc0): undefined reference to `usb_hid_driver'
ia64-linux-ld: hid-lg.c:(.text+0xd40): undefined reference to `usb_hid_driver'
ld.lld: error: undefined symbol: usb_hid_driver
nds32le-linux-ld: hid-chicony.c:(.text+0xc): undefined reference to `usb_hid_driver'
nds32le-linux-ld: hid-lg.c:(.text+0x350): undefined reference to `usb_hid_driver'
nds32le-linux-ld: hid-samsung.c:(.text+0x8): undefined reference to `usb_hid_driver'
or1k-linux-ld: hid-chicony.c:(.text+0x100): undefined reference to `usb_hid_driver'
or1k-linux-ld: hid-chicony.c:(.text+0x160): undefined reference to `usb_hid_driver'
or1k-linux-ld: hid-corsair.c:(.text+0xb44): undefined reference to `usb_hid_driver'
powerpc-linux-ld: hid-samsung.c:(.text.samsung_probe+0xa): undefined reference to `usb_hid_driver'
xtensa-linux-ld: drivers/hid/hid-samsung.o:(.text+0x0): undefined reference to `usb_hid_driver'

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arc-buildonly-randconfig-r001-20211128
|   |-- arc-elf-ld:hid-chicony.c:(.text):undefined-reference-to-usb_hid_driver
|   |-- arc-elf-ld:hid-corsair.c:(.text):undefined-reference-to-usb_hid_driver
|   |-- hid-corsair.c:(.text):undefined-reference-to-usb_hid_driver
|   `-- hid-lg.c:(.text):undefined-reference-to-usb_hid_driver
|-- arc-randconfig-c023-20211128
|   |-- arceb-elf-ld:hid-prodikeys.c:(.text):undefined-reference-to-usb_hid_driver
|   |-- hid-lg.c:(.text):undefined-reference-to-usb_hid_driver
|   `-- hid-prodikeys.c:(.text):undefined-reference-to-usb_hid_driver
|-- arc-randconfig-r014-20211202
|   |-- arceb-elf-ld:hid-chicony.c:(.text):undefined-reference-to-usb_hid_driver
|   `-- hid-lg.c:(.text):undefined-reference-to-usb_hid_driver
|-- arc-randconfig-r015-20211202
|   |-- ERROR:usb_hid_driver-drivers-hid-hid-chicony.ko-undefined
|   |-- ERROR:usb_hid_driver-drivers-hid-hid-logitech.ko-undefined
|   `-- ERROR:usb_hid_driver-drivers-hid-hid-samsung.ko-undefined
|-- arc-randconfig-r025-20211201
|   `-- arc-elf-ld:hid-samsung.c:(.text):undefined-reference-to-usb_hid_driver
|-- arc-randconfig-r043-20211128
|   |-- arceb-elf-ld:hid-chicony.c:(.text):undefined-reference-to-usb_hid_driver
|   `-- arceb-elf-ld:hid-samsung.c:(.text):undefined-reference-to-usb_hid_driver
|-- arc-randconfig-r043-20211202
|   `-- arc-elf-ld:hid-samsung.c:(.text):undefined-reference-to-usb_hid_driver
|-- arm-randconfig-c002-20211202
|   |-- ERROR:usb_hid_driver-drivers-hid-hid-chicony.ko-undefined
|   `-- ERROR:usb_hid_driver-drivers-hid-hid-logitech.ko-undefined
|-- arm-randconfig-c023-20211128
|   `-- hid-corsair.c:(.text):undefined-reference-to-usb_hid_driver
|-- arm64-randconfig-r012-20211202
|   `-- ERROR:usb_hid_driver-drivers-hid-hid-samsung.ko-undefined
|-- arm64-randconfig-r021-20211128
|   |-- aarch64-linux-ld:hid-chicony.c:(.text):undefined-reference-to-usb_hid_driver
|   |-- aarch64-linux-ld:hid-lg.c:(.text):undefined-reference-to-usb_hid_driver
|   `-- hid-lg.c:(.text):undefined-reference-to-usb_hid_driver
|-- arm64-randconfig-r032-20211129
|   `-- aarch64-linux-ld:hid-samsung.c:(.text):undefined-reference-to-usb_hid_driver
|-- csky-randconfig-r003-20211201
|   `-- hid-prodikeys.c:(.text):undefined-reference-to-usb_hid_driver
|-- csky-randconfig-r035-20211202
|   `-- hid-prodikeys.c:(.text):undefined-reference-to-usb_hid_driver
|-- i386-randconfig-a015-20211202
|   |-- ERROR:usb_hid_driver-drivers-hid-hid-chicony.ko-undefined
|   `-- ERROR:usb_hid_driver-drivers-hid-hid-prodikeys.ko-undefined
|-- i386-randconfig-r024-20211128
|   `-- drivers-hid-hid-prodikeys.c:undefined-reference-to-usb_hid_driver
|-- ia64-alldefconfig
|   `-- ia64-linux-ld:hid-chicony.c:(.text):undefined-reference-to-usb_hid_driver
|-- ia64-buildonly-randconfig-r002-20211201
|   `-- ia64-linux-ld:hid-chicony.c:(.text):undefined-reference-to-usb_hid_driver
|-- ia64-buildonly-randconfig-r003-20211202
|   |-- ERROR:usb_hid_driver-drivers-hid-hid-logitech.ko-undefined
|   `-- ERROR:usb_hid_driver-drivers-hid-hid-samsung.ko-undefined
|-- ia64-defconfig
|   `-- ia64-linux-ld:hid-chicony.c:(.text):undefined-reference-to-usb_hid_driver
|-- ia64-randconfig-c003-20211128
|   |-- hid-corsair.c:(.text):undefined-reference-to-usb_hid_driver
|   `-- ia64-linux-ld:hid-corsair.c:(.text):undefined-reference-to-usb_hid_driver
|-- ia64-randconfig-r013-20211129
|   |-- hid-corsair.c:(.text):undefined-reference-to-usb_hid_driver
|   |-- hid-lg.c:(.text):undefined-reference-to-usb_hid_driver
|   |-- hid-prodikeys.c:(.text):undefined-reference-to-usb_hid_driver
|   |-- ia64-linux-ld:hid-corsair.c:(.text):undefined-reference-to-usb_hid_driver
|   `-- ia64-linux-ld:hid-lg.c:(.text):undefined-reference-to-usb_hid_driver
|-- ia64-randconfig-r013-20211202
|   `-- ia64-linux-ld:hid-chicony.c:(.text):undefined-reference-to-usb_hid_driver
|-- ia64-randconfig-r022-20211201
|   `-- ia64-linux-ld:hid-chicony.c:(.text):undefined-reference-to-usb_hid_driver
|-- ia64-randconfig-r023-20211128
|   |-- hid-lg.c:(.text):undefined-reference-to-usb_hid_driver
|   `-- ia64-linux-ld:hid-lg.c:(.text):undefined-reference-to-usb_hid_driver
|-- m68k-buildonly-randconfig-r003-20211202
|   `-- hid-lg.c:(.text):undefined-reference-to-usb_hid_driver
|-- m68k-defconfig
|   `-- ERROR:usb_hid_driver-drivers-hid-hid-chicony.ko-undefined
|-- m68k-randconfig-r035-20211129
|   `-- hid-lg.c:(.text):undefined-reference-to-usb_hid_driver
|-- m68k-randconfig-r036-20211128
|   `-- hid-lg.c:(.text):undefined-reference-to-usb_hid_driver
|-- microblaze-buildonly-randconfig-r001-20211202
|   `-- (.text):undefined-reference-to-usb_hid_driver
|-- microblaze-buildonly-randconfig-r006-20211202
|   `-- (.text):undefined-reference-to-usb_hid_driver
|-- microblaze-randconfig-m031-20211128
|   `-- (.text):undefined-reference-to-usb_hid_driver
|-- microblaze-randconfig-r023-20211128
|   |-- ERROR:usb_hid_driver-drivers-hid-hid-chicony.ko-undefined
|   |-- ERROR:usb_hid_driver-drivers-hid-hid-prodikeys.ko-undefined
|   `-- ERROR:usb_hid_driver-drivers-hid-hid-samsung.ko-undefined
|-- microblaze-randconfig-r023-20211201
|   |-- ERROR:usb_hid_driver-drivers-hid-hid-chicony.ko-undefined
|   `-- ERROR:usb_hid_driver-drivers-hid-hid-corsair.ko-undefined
|-- microblaze-randconfig-r026-20211128
|   `-- (.text):undefined-reference-to-usb_hid_driver
|-- nds32-alldefconfig
|   `-- nds32le-linux-ld:hid-chicony.c:(.text):undefined-reference-to-usb_hid_driver
|-- nds32-buildonly-randconfig-r004-20211128
|   |-- ERROR:usb_hid_driver-drivers-hid-hid-chicony.ko-undefined
|   `-- ERROR:usb_hid_driver-drivers-hid-hid-samsung.ko-undefined
|-- nds32-randconfig-r021-20211201
|   |-- hid-lg.c:(.text):undefined-reference-to-usb_hid_driver
|   |-- nds32le-linux-ld:hid-lg.c:(.text):undefined-reference-to-usb_hid_driver
|   `-- nds32le-linux-ld:hid-samsung.c:(.text):undefined-reference-to-usb_hid_driver
|-- nios2-randconfig-p002-20211202
|   `-- hid-lg.c:(.text):undefined-reference-to-usb_hid_driver
|-- nios2-randconfig-r025-20211129
|   `-- hid-lg.c:(.text):undefined-reference-to-usb_hid_driver
|-- openrisc-buildonly-randconfig-r003-20211202
|   `-- or1k-linux-ld:hid-chicony.c:(.text):undefined-reference-to-usb_hid_driver
|-- openrisc-randconfig-r015-20211129
|   |-- hid-corsair.c:(.text):undefined-reference-to-usb_hid_driver
|   |-- hid-prodikeys.c:(.text):undefined-reference-to-usb_hid_driver
|   |-- or1k-linux-ld:hid-chicony.c:(.text):undefined-reference-to-usb_hid_driver
|   `-- or1k-linux-ld:hid-corsair.c:(.text):undefined-reference-to-usb_hid_driver
|-- parisc-randconfig-c004-20211128
|   |-- (.text):undefined-reference-to-usb_hid_driver
|   `-- hppa-linux-ld:(.text):undefined-reference-to-usb_hid_driver
|-- parisc-randconfig-r003-20211128
|   |-- ERROR:usb_hid_driver-drivers-hid-hid-logitech.ko-undefined
|   `-- ERROR:usb_hid_driver-drivers-hid-hid-samsung.ko-undefined
|-- parisc-randconfig-r034-20211129
|   `-- (.text):undefined-reference-to-usb_hid_driver
|-- parisc-randconfig-r036-20211129
|   |-- (.text):undefined-reference-to-usb_hid_driver
|   `-- hppa-linux-ld:(.text):undefined-reference-to-usb_hid_driver
|-- powerpc-buildonly-randconfig-r002-20211128
|   |-- hid-samsung.c:(.text.samsung_probe):undefined-reference-to-usb_hid_driver
|   `-- powerpc-linux-ld:hid-samsung.c:(.text.samsung_probe):undefined-reference-to-usb_hid_driver
|-- x86_64-randconfig-a012-20211202
|   |-- ERROR:usb_hid_driver-drivers-hid-hid-chicony.ko-undefined
|   |-- ERROR:usb_hid_driver-drivers-hid-hid-logitech.ko-undefined
|   |-- ERROR:usb_hid_driver-drivers-hid-hid-prodikeys.ko-undefined
|   `-- ERROR:usb_hid_driver-drivers-hid-hid-samsung.ko-undefined
|-- x86_64-randconfig-a014-20211202
|   `-- drivers-hid-hid-prodikeys.c:undefined-reference-to-usb_hid_driver
|-- x86_64-randconfig-a015-20211128
|   |-- ERROR:usb_hid_driver-drivers-hid-hid-logitech.ko-undefined
|   `-- ERROR:usb_hid_driver-drivers-hid-hid-samsung.ko-undefined
|-- x86_64-randconfig-a016-20211128
|   |-- ERROR:usb_hid_driver-drivers-hid-hid-chicony.ko-undefined
|   `-- ERROR:usb_hid_driver-drivers-hid-hid-samsung.ko-undefined
|-- x86_64-randconfig-c022-20211202
|   `-- drivers-hid-hid-prodikeys.c:undefined-reference-to-usb_hid_driver
`-- xtensa-randconfig-r003-20211128
    `-- xtensa-linux-ld:drivers-hid-hid-samsung.o:(.text):undefined-reference-to-usb_hid_driver

clang_recent_errors
|-- hexagon-randconfig-r045-20211129
|   `-- ld.lld:error:undefined-symbol:usb_hid_driver
|-- i386-randconfig-a002-20211128
|   |-- ERROR:usb_hid_driver-drivers-hid-hid-logitech.ko-undefined
|   `-- ERROR:usb_hid_driver-drivers-hid-hid-samsung.ko-undefined
|-- i386-randconfig-a003-20211128
|   `-- ERROR:usb_hid_driver-drivers-hid-hid-samsung.ko-undefined
`-- x86_64-randconfig-a001-20211202
    `-- ERROR:usb_hid_driver-drivers-hid-hid-logitech.ko-undefined

elapsed time: 1042m

configs tested: 199
configs skipped: 3

gcc tested configs:
arm64                               defconfig
arm                              allmodconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
i386                 randconfig-c001-20211128
i386                 randconfig-c001-20211202
i386                 randconfig-c001-20211201
mips                          rm200_defconfig
ia64                          tiger_defconfig
mips                        qi_lb60_defconfig
mips                         mpc30x_defconfig
s390                             alldefconfig
mips                           ci20_defconfig
m68k                       m5208evb_defconfig
m68k                        m5407c3_defconfig
mips                          rb532_defconfig
powerpc                      makalu_defconfig
sh                           se7721_defconfig
sh                               alldefconfig
arc                         haps_hs_defconfig
arm                          exynos_defconfig
arm                          ixp4xx_defconfig
xtensa                              defconfig
riscv                    nommu_k210_defconfig
arm                          moxart_defconfig
sh                               allmodconfig
arm                         lubbock_defconfig
xtensa                          iss_defconfig
sh                               j2_defconfig
powerpc                      arches_defconfig
sparc64                          alldefconfig
powerpc                     mpc83xx_defconfig
mips                        bcm63xx_defconfig
s390                       zfcpdump_defconfig
sh                          rsk7269_defconfig
arm                       imx_v6_v7_defconfig
mips                        bcm47xx_defconfig
powerpc                 mpc85xx_cds_defconfig
sh                         ap325rxa_defconfig
openrisc                            defconfig
powerpc                     tqm8560_defconfig
arm                       spear13xx_defconfig
sh                          rsk7203_defconfig
sh                   secureedge5410_defconfig
riscv                    nommu_virt_defconfig
arm                        cerfcube_defconfig
arm                      jornada720_defconfig
arm                        clps711x_defconfig
um                           x86_64_defconfig
sh                          sdk7780_defconfig
powerpc                     pseries_defconfig
arm                   milbeaut_m10v_defconfig
csky                                defconfig
h8300                       h8s-sim_defconfig
arm                       imx_v4_v5_defconfig
powerpc64                           defconfig
mips                      pic32mzda_defconfig
ia64                             alldefconfig
nios2                            alldefconfig
powerpc                 mpc832x_rdb_defconfig
sh                              ul2_defconfig
sh                         ecovec24_defconfig
arc                     nsimosci_hs_defconfig
arm                  randconfig-c002-20211128
arm                  randconfig-c002-20211202
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
i386                 randconfig-a005-20211130
i386                 randconfig-a002-20211130
i386                 randconfig-a006-20211130
i386                 randconfig-a004-20211130
i386                 randconfig-a003-20211130
i386                 randconfig-a001-20211130
i386                 randconfig-a001-20211201
i386                 randconfig-a005-20211201
i386                 randconfig-a003-20211201
i386                 randconfig-a002-20211201
i386                 randconfig-a006-20211201
i386                 randconfig-a004-20211201
i386                 randconfig-a001-20211129
i386                 randconfig-a002-20211129
i386                 randconfig-a006-20211129
i386                 randconfig-a005-20211129
i386                 randconfig-a004-20211129
i386                 randconfig-a003-20211129
x86_64               randconfig-a011-20211128
x86_64               randconfig-a014-20211128
x86_64               randconfig-a012-20211128
x86_64               randconfig-a016-20211128
x86_64               randconfig-a013-20211128
x86_64               randconfig-a015-20211128
x86_64               randconfig-a016-20211202
x86_64               randconfig-a011-20211202
x86_64               randconfig-a013-20211202
x86_64               randconfig-a014-20211202
x86_64               randconfig-a012-20211202
x86_64               randconfig-a015-20211202
i386                 randconfig-a016-20211202
i386                 randconfig-a013-20211202
i386                 randconfig-a011-20211202
i386                 randconfig-a014-20211202
i386                 randconfig-a012-20211202
i386                 randconfig-a015-20211202
i386                 randconfig-a015-20211128
i386                 randconfig-a016-20211128
i386                 randconfig-a013-20211128
i386                 randconfig-a012-20211128
i386                 randconfig-a014-20211128
i386                 randconfig-a011-20211128
arc                  randconfig-r043-20211129
arc                  randconfig-r043-20211202
s390                 randconfig-r044-20211202
riscv                randconfig-r042-20211202
arc                  randconfig-r043-20211128
s390                 randconfig-r044-20211128
riscv                randconfig-r042-20211128
riscv                            allyesconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20211201
x86_64               randconfig-c007-20211201
riscv                randconfig-c006-20211201
mips                 randconfig-c004-20211201
i386                 randconfig-c001-20211201
powerpc              randconfig-c003-20211201
s390                 randconfig-c005-20211201
x86_64               randconfig-a006-20211202
x86_64               randconfig-a005-20211202
x86_64               randconfig-a001-20211202
x86_64               randconfig-a002-20211202
x86_64               randconfig-a004-20211202
x86_64               randconfig-a003-20211202
x86_64               randconfig-a001-20211128
x86_64               randconfig-a006-20211128
x86_64               randconfig-a003-20211128
x86_64               randconfig-a005-20211128
x86_64               randconfig-a004-20211128
x86_64               randconfig-a002-20211128
i386                 randconfig-a001-20211202
i386                 randconfig-a005-20211202
i386                 randconfig-a002-20211202
i386                 randconfig-a003-20211202
i386                 randconfig-a006-20211202
i386                 randconfig-a004-20211202
i386                 randconfig-a001-20211128
i386                 randconfig-a002-20211128
i386                 randconfig-a006-20211128
i386                 randconfig-a005-20211128
i386                 randconfig-a004-20211128
i386                 randconfig-a003-20211128
i386                 randconfig-a013-20211201
i386                 randconfig-a016-20211201
i386                 randconfig-a011-20211201
i386                 randconfig-a014-20211201
i386                 randconfig-a012-20211201
i386                 randconfig-a015-20211201
hexagon              randconfig-r045-20211129
hexagon              randconfig-r041-20211129
s390                 randconfig-r044-20211129
riscv                randconfig-r042-20211129

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
