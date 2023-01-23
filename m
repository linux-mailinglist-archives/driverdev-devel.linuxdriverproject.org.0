Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 581CC67749B
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Jan 2023 05:23:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9117941584;
	Mon, 23 Jan 2023 04:23:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9117941584
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SqPACgeNa_i3; Mon, 23 Jan 2023 04:23:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 07954415E7;
	Mon, 23 Jan 2023 04:23:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 07954415E7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DDC761BF295
 for <devel@linuxdriverproject.org>; Mon, 23 Jan 2023 04:22:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B8FCD60BC7
 for <devel@linuxdriverproject.org>; Mon, 23 Jan 2023 04:22:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B8FCD60BC7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8wszySpTIBo1 for <devel@linuxdriverproject.org>;
 Mon, 23 Jan 2023 04:22:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BF4ED60B46
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id BF4ED60B46
 for <devel@driverdev.osuosl.org>; Mon, 23 Jan 2023 04:22:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="412197478"
X-IronPort-AV: E=Sophos;i="5.97,238,1669104000"; d="scan'208";a="412197478"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2023 20:22:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="693713183"
X-IronPort-AV: E=Sophos;i="5.97,238,1669104000"; d="scan'208";a="693713183"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 22 Jan 2023 20:22:55 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pJoMA-0005Ps-37;
 Mon, 23 Jan 2023 04:22:54 +0000
Date: Mon, 23 Jan 2023 12:22:01 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 649e328a7b3b888546cab42839425cb429576b0a
Message-ID: <63ce0b69.aU16MIZdZ+AgyKpD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674447777; x=1705983777;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=6tWYgGSWkxke3ggHvPDd8yGW2CdsLKOLQVfrRquaV3U=;
 b=RdYwpqbldWoYZ6YB7GdIswPgY58hq0hG5+IBHETURA+ixTb6L+gMbyCC
 bmTgv/pR5psJrrFFhdME/XcazNHYTtEfS1mwteqHvkTvOLlplC/EB+XFp
 ZRbGsY82ZFSvFyAGtG5EnthcGdI/rvWWaPPwHq05Zd4crJ+OO89aC3ki3
 UShw62x/zsZhEROrEwEdBB1yEL4LdTQhTuFf/zShookeeMpEnwBSmDhs6
 mOU0Rl4fzGhnjSRKOiU0kq16m5C3nB3+sDFhshQJEPD0/3+Vf1wA1qz/I
 U8jzV/s+0Ly4HTSUcGGL7z1OnGFI6Eb5A9aoje9CKf2o8x2nguFdyiYVa
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RdYwpqbl
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
branch HEAD: 649e328a7b3b888546cab42839425cb429576b0a  readfile.2: new page describing readfile(2)

elapsed time: 728m

configs tested: 77
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
i386                                defconfig
arc                                 defconfig
alpha                               defconfig
x86_64               randconfig-a002-20230123
arm                                 defconfig
x86_64               randconfig-a001-20230123
x86_64               randconfig-a004-20230123
x86_64               randconfig-a003-20230123
x86_64               randconfig-a005-20230123
x86_64               randconfig-a006-20230123
powerpc                           allnoconfig
powerpc                          allmodconfig
alpha                            allyesconfig
mips                             allyesconfig
i386                             allyesconfig
i386                 randconfig-a004-20230123
m68k                             allyesconfig
arm                              allyesconfig
i386                 randconfig-a003-20230123
arm64                            allyesconfig
i386                 randconfig-a002-20230123
s390                                defconfig
x86_64                           rhel-8.3-syz
i386                 randconfig-a001-20230123
s390                             allmodconfig
x86_64                         rhel-8.3-kunit
m68k                             allmodconfig
arc                              allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
sh                               allmodconfig
i386                 randconfig-a005-20230123
i386                 randconfig-a006-20230123
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
s390                             allyesconfig
ia64                             allmodconfig
x86_64                              defconfig
arc                  randconfig-r043-20230123
riscv                randconfig-r042-20230122
arc                  randconfig-r043-20230122
arm                  randconfig-r046-20230123
s390                 randconfig-r044-20230122
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func

clang tested configs:
i386                 randconfig-a012-20230123
i386                 randconfig-a013-20230123
x86_64                          rhel-8.3-rust
hexagon              randconfig-r041-20230123
hexagon              randconfig-r045-20230122
hexagon              randconfig-r045-20230123
arm                  randconfig-r046-20230122
x86_64               randconfig-a013-20230123
i386                 randconfig-a015-20230123
x86_64               randconfig-a011-20230123
i386                 randconfig-a011-20230123
x86_64               randconfig-a012-20230123
i386                 randconfig-a014-20230123
x86_64               randconfig-a016-20230123
s390                 randconfig-r044-20230123
x86_64               randconfig-a015-20230123
hexagon              randconfig-r041-20230122
x86_64               randconfig-a014-20230123
i386                 randconfig-a016-20230123
riscv                randconfig-r042-20230123
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
