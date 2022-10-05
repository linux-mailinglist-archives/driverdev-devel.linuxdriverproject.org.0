Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7129A5F4F8F
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Oct 2022 07:45:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 544BE414C5;
	Wed,  5 Oct 2022 05:45:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 544BE414C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JioYBZ2nznre; Wed,  5 Oct 2022 05:45:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id B72E44089F;
	Wed,  5 Oct 2022 05:45:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B72E44089F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 121791BF95F
 for <devel@linuxdriverproject.org>; Wed,  5 Oct 2022 05:45:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id EC929414C5
 for <devel@linuxdriverproject.org>; Wed,  5 Oct 2022 05:45:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC929414C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HKmhKBwgqXRW for <devel@linuxdriverproject.org>;
 Wed,  5 Oct 2022 05:44:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF7284089F
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AF7284089F
 for <devel@driverdev.osuosl.org>; Wed,  5 Oct 2022 05:44:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="290334667"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800"; d="scan'208";a="290334667"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 22:44:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="601913366"
X-IronPort-AV: E=Sophos;i="5.95,159,1661842800"; d="scan'208";a="601913366"
Received: from lkp-server01.sh.intel.com (HELO d4f44333118a) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 04 Oct 2022 22:44:57 -0700
Received: from kbuild by d4f44333118a with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ofxDF-0000y9-0d;
 Wed, 05 Oct 2022 05:44:57 +0000
Date: Wed, 05 Oct 2022 13:44:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const2] BUILD SUCCESS
 e40059ea7288fda9f34ed5fbd9757c71c229ad3d
Message-ID: <633d19a0.6SJHhcHu5G6gspFp%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664948699; x=1696484699;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=uz6SperFf5wnOaJaGKtYTnh+bnyVR1mWyEQhXKSdF6A=;
 b=m79UUmHWnh11XwQUPy7qWAGOHS20U1YQOOAC9puCrDJwdPOIGE4p0bQS
 fmI3Qw3Xg4RWjO8eIR7cBuCc4LJh9nUAVsLn8e43jHB/v+O6/46gaEVfK
 FPvW4Z6usxGfwa8QS3lyOBhjD/7L+QYWsFeuU34byRhldvkuxjan98lCY
 wrH+ksPKi/bo5c8JyXcZ0LNSb1aqs8Ub+6mdPbbPJablgF9ydHz4D9sNJ
 h8oZ/Ct0FXeKdW1uMyJFr2qY8gePwiYfq/+D1uD9rwoGjVRGxOuqc6RQU
 Kekx9cwe0ec/MnrEAQVdkwMIBVY9R1p5qC/znZiyDRd0ICXCRLF/E3h8y
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=m79UUmHW
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const2
branch HEAD: e40059ea7288fda9f34ed5fbd9757c71c229ad3d  USB: allow some usb functions to take a const pointer.

elapsed time: 723m

configs tested: 90
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
powerpc                          allmodconfig
x86_64                              defconfig
mips                             allyesconfig
x86_64               randconfig-a011-20221003
x86_64                          rhel-8.3-func
powerpc                           allnoconfig
x86_64                               rhel-8.3
x86_64               randconfig-a015-20221003
sh                               allmodconfig
x86_64                    rhel-8.3-kselftests
arc                              allyesconfig
x86_64               randconfig-a014-20221003
alpha                            allyesconfig
i386                 randconfig-a011-20221003
x86_64                           allyesconfig
x86_64               randconfig-a012-20221003
i386                 randconfig-a012-20221003
x86_64               randconfig-a013-20221003
i386                 randconfig-a013-20221003
x86_64               randconfig-a016-20221003
i386                 randconfig-a015-20221003
m68k                             allyesconfig
x86_64                           rhel-8.3-syz
m68k                             allmodconfig
i386                 randconfig-a016-20221003
x86_64                         rhel-8.3-kunit
i386                 randconfig-a014-20221003
x86_64                           rhel-8.3-kvm
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
sh                        sh7763rdp_defconfig
loongarch                 loongson3_defconfig
arm                         cm_x300_defconfig
nios2                            alldefconfig
mips                            gpr_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                                defconfig
i386                          randconfig-c001
mips                 randconfig-c004-20221002
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
i386                             allyesconfig
riscv                            allyesconfig
mips                        vocore2_defconfig
powerpc                          allyesconfig
riscv                               defconfig
riscv                            allmodconfig
powerpc                    adder875_defconfig
powerpc                     taishan_defconfig
powerpc                     stx_gp3_defconfig
ia64                      gensparse_defconfig
arm                  randconfig-c002-20221002
x86_64                        randconfig-c001
s390                          debug_defconfig
sh                           se7705_defconfig
arc                     nsimosci_hs_defconfig
ia64                             allmodconfig
arc                  randconfig-r043-20221003
arc                  randconfig-r043-20221002
s390                 randconfig-r044-20221003

clang tested configs:
i386                 randconfig-a004-20221003
i386                 randconfig-a003-20221003
i386                 randconfig-a002-20221003
i386                 randconfig-a001-20221003
i386                 randconfig-a005-20221003
i386                 randconfig-a006-20221003
x86_64                        randconfig-k001
x86_64               randconfig-a003-20221003
x86_64               randconfig-a005-20221003
x86_64               randconfig-a001-20221003
x86_64               randconfig-a004-20221003
x86_64               randconfig-a002-20221003
x86_64               randconfig-a006-20221003

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
