Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F26674BA7
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Jan 2023 06:04:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 814E6822FB;
	Fri, 20 Jan 2023 05:04:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 814E6822FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2EE76q1Z8lZe; Fri, 20 Jan 2023 05:04:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4803D8225E;
	Fri, 20 Jan 2023 05:04:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4803D8225E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 804D51BF2CF
 for <devel@linuxdriverproject.org>; Fri, 20 Jan 2023 05:04:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5B29661184
 for <devel@linuxdriverproject.org>; Fri, 20 Jan 2023 05:04:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B29661184
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zdCPYLLNhxQS for <devel@linuxdriverproject.org>;
 Fri, 20 Jan 2023 05:04:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 398A960E7F
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 398A960E7F
 for <devel@driverdev.osuosl.org>; Fri, 20 Jan 2023 05:04:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="324187701"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="324187701"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 21:03:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="638036458"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="638036458"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 19 Jan 2023 21:03:40 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pIjYx-0002CC-2c;
 Fri, 20 Jan 2023 05:03:39 +0000
Date: Fri, 20 Jan 2023 13:02:54 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-linus] BUILD SUCCESS
 9be182da0a7526f1b9a3777a336f83baa2e64d23
Message-ID: <63ca207e.csj9vP1aZNos2veQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674191042; x=1705727042;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=4TN/mADEfZSnpUNQOVahVSiRGgxJfSKEQYAkNayc8c0=;
 b=mudp6u0lPcCe5akbGesOWua695bkw11u7ifdctb4anXXa/JjHJHfuKtQ
 4yfvmgS/jv5Uvhyu08X9bS11i3yDU/PRC7zrlNxuXHKvaWtVGbNWYKDC3
 kjYDI5mTmxv/Svscf3l3PQZwApWYqZrghxuPhYN65p3aeTz8uSJY+sptl
 8mVco2B6ZXMSGKHmGdopskn5bGfcSdAACI7B86DmkuLKkcZECYcv7xjfR
 s7rkMF3MmHVuNlEupJhkikgepj+n8ACTOb4WX+smX6KmApRa/dKWOpLG5
 RKxPPICoQ6LsjCjLYyQrN3blm6gEV6B9uwCEqfIPOhct5t675U+NIZ1DJ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mudp6u0l
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-linus
branch HEAD: 9be182da0a7526f1b9a3777a336f83baa2e64d23  driver core: Fix test_async_probe_init saves device in wrong array

elapsed time: 728m

configs tested: 70
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
x86_64                            allnoconfig
um                             i386_defconfig
alpha                            allyesconfig
m68k                             allyesconfig
um                           x86_64_defconfig
m68k                             allmodconfig
arc                              allyesconfig
powerpc                           allnoconfig
i386                          randconfig-a001
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                              defconfig
x86_64                           rhel-8.3-syz
arm                                 defconfig
x86_64                               rhel-8.3
i386                                defconfig
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a013
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a011
x86_64                           rhel-8.3-bpf
sh                               allmodconfig
x86_64                        randconfig-a015
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                           allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
arm                  randconfig-r046-20230119
ia64                             allmodconfig
arc                  randconfig-r043-20230119
arm64                            allyesconfig
arm                              allyesconfig
i386                             allyesconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
i386                          randconfig-c001

clang tested configs:
x86_64                          rhel-8.3-rust
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a014
x86_64                        randconfig-a012
x86_64                        randconfig-a016
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r045-20230119
hexagon              randconfig-r041-20230119
riscv                randconfig-r042-20230119
s390                 randconfig-r044-20230119
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
