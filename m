Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F39645314
	for <lists+driverdev-devel@lfdr.de>; Wed,  7 Dec 2022 05:36:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 66F1441817;
	Wed,  7 Dec 2022 04:36:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 66F1441817
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jbZ3idKD2rap; Wed,  7 Dec 2022 04:36:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 04B6441806;
	Wed,  7 Dec 2022 04:36:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04B6441806
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 94CAF1BF4E7
 for <devel@linuxdriverproject.org>; Wed,  7 Dec 2022 04:36:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6E68A40ACD
 for <devel@linuxdriverproject.org>; Wed,  7 Dec 2022 04:36:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E68A40ACD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6VLit4iizD2l for <devel@linuxdriverproject.org>;
 Wed,  7 Dec 2022 04:36:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 656B24011C
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 656B24011C
 for <devel@driverdev.osuosl.org>; Wed,  7 Dec 2022 04:36:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="315515369"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="315515369"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 20:36:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="891647954"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="891647954"
Received: from lkp-server01.sh.intel.com (HELO b3c45e08cbc1) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 06 Dec 2022 20:36:34 -0800
Received: from kbuild by b3c45e08cbc1 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p2mAb-0001Yb-1s;
 Wed, 07 Dec 2022 04:36:33 +0000
Date: Wed, 07 Dec 2022 12:36:30 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 47446b50ad2549af4fcc93f82a148ab107e6ef6a
Message-ID: <6390184e.UzcX5qGGl+ssgAiu%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670387796; x=1701923796;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=EFYze7F5IV7+kjZLGm/W/S6J41PMsQP1i3cR24QluvA=;
 b=gzBcFogH8vER6mJFXonl+E8HEfFU5uy/bceyly+5PtzL4Ixv5CuibZ+k
 qCvQcvxMDuzmq/oquTV4T7WKX0AGQ9hUIOiupXlO/HqgYoHESAXRDmzTR
 1Txtb0+UIDuMUytRaHroJBOqZQPQAsohJNlhNc61UkilDpwS9LspgX19s
 w9v+oxFVRuOYbV+VgP6ZMAA3uvbsIolrbpBWshX99qBNyydxrTBC2mf1Y
 XDxlwE1hb6NJ7H/3V1IxUidrCFuShhqZLAaXGKj5otyqeLQ/gktlYGxgm
 s/viV1sFq3z7J8pM7RqqdQSNygu62eKzUdXLUBebcTa6PWLU00DjTQeev
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gzBcFogH
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: 47446b50ad2549af4fcc93f82a148ab107e6ef6a  firmware_loader: fix up to_fw_sysfs() to preserve const

elapsed time: 720m

configs tested: 60
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
arm                  randconfig-r046-20221206
x86_64                           rhel-8.3-kvm
arc                  randconfig-r043-20221206
i386                                defconfig
s390                                defconfig
x86_64                          rhel-8.3-rust
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                              defconfig
s390                             allyesconfig
m68k                             allyesconfig
ia64                             allmodconfig
m68k                             allmodconfig
alpha                            allyesconfig
x86_64                               rhel-8.3
arc                              allyesconfig
x86_64                           allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a001
i386                          randconfig-a016
i386                          randconfig-a003
i386                             allyesconfig
i386                          randconfig-a005
x86_64                        randconfig-a013
arm                                 defconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a015
arm64                            allyesconfig
x86_64                        randconfig-a004
arm                              allyesconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a006

clang tested configs:
hexagon              randconfig-r041-20221206
hexagon              randconfig-r045-20221206
s390                 randconfig-r044-20221206
riscv                randconfig-r042-20221206
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
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
