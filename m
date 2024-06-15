Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA509098AE
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Jun 2024 16:43:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 26CE381F86;
	Sat, 15 Jun 2024 14:43:27 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0w-1b2--Z4rY; Sat, 15 Jun 2024 14:43:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3EBF1821DB
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3EBF1821DB;
	Sat, 15 Jun 2024 14:43:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B9A6C1BF302
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2024 14:43:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A804760717
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2024 14:43:24 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KfmoqRM0MWwV for <devel@linuxdriverproject.org>;
 Sat, 15 Jun 2024 14:43:23 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7C8C360716
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C8C360716
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7C8C360716
 for <devel@driverdev.osuosl.org>; Sat, 15 Jun 2024 14:43:23 +0000 (UTC)
X-CSE-ConnectionGUID: sOPba57FTDeR1niYTUDZsA==
X-CSE-MsgGUID: aqVxrtRpSx2fPqDbdgYmIA==
X-IronPort-AV: E=McAfee;i="6700,10204,11104"; a="15124581"
X-IronPort-AV: E=Sophos;i="6.08,240,1712646000"; d="scan'208";a="15124581"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2024 07:43:22 -0700
X-CSE-ConnectionGUID: zjwKRFHIQWaDWhosSxajDg==
X-CSE-MsgGUID: 86nl1X+TRlGcEnNDpgsgwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,240,1712646000"; d="scan'208";a="41267067"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 15 Jun 2024 07:43:21 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sIUch-00007S-0g;
 Sat, 15 Jun 2024 14:43:19 +0000
Date: Sat, 15 Jun 2024 22:43:12 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 c6c631d2b72b9390587cd1ee5b7905f8ea5bb1ea
Message-ID: <202406152209.iLArA5jG-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718462603; x=1749998603;
 h=date:from:to:cc:subject:message-id;
 bh=2IjqJeJvnffzNvpUDDb0HkFpuaW6l5UCf62wkqjG8oU=;
 b=hgrAYo4lk0KbpvqMFLzSLTSyHPR6vyFdr017z4goBj1ICnCN5BU9QQTr
 +Uba11PnX9XVH7W1gkM21Z8H3oJNuv/v+WmkfKEBlKrD8nduUbMT5X+9v
 OQ53Hm/63LZQryoEn//ssHsXrrZjXmiNFTpdksKbxIIYytxLUw5LKdpp3
 L3WiEl2h1mAboA1heoZQqWskmqrQYynpLvQm5MQHwT1ChCUo4Us6ntEGN
 Vzs+DyfqJaKxZW/Q6gd56t8YLHWj9YDUNEFxUCHl9cvEnlOAIPar8gN+B
 nrnSZwF0FIp4XYH9JJy32XWASKTHz50pSCjx2dIqvnZcgdiNwkfp4H5kJ
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=hgrAYo4l
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: c6c631d2b72b9390587cd1ee5b7905f8ea5bb1ea  driver core: mark async_driver as a const *

elapsed time: 2861m

configs tested: 68
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                            allyesconfig   gcc-13.2.0
alpha                               defconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                                 defconfig   clang-14
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
hexagon                          allmodconfig   clang-19
hexagon                           allnoconfig   clang-19
hexagon                          allyesconfig   clang-19
hexagon                             defconfig   clang-19
i386                             allmodconfig   gcc-13
i386                              allnoconfig   gcc-13
i386                                defconfig   clang-18
loongarch                        allmodconfig   gcc-13.2.0
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
m68k                             allmodconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
m68k                             allyesconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
microblaze                       allmodconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                       allyesconfig   gcc-13.2.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
mips                             allyesconfig   gcc-13.2.0
nios2                            allmodconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                            allyesconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                         allyesconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
parisc                           allmodconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                           allyesconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
riscv                               defconfig   clang-19
s390                              allnoconfig   clang-19
s390                             allyesconfig   gcc-13.2.0
s390                                defconfig   clang-19
sh                               allmodconfig   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                               allyesconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sparc                            allmodconfig   gcc-13.2.0
sparc                             allnoconfig   gcc-13.2.0
sparc                               defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
um                               allmodconfig   clang-19
um                                allnoconfig   clang-17
um                               allyesconfig   gcc-13
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
