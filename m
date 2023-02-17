Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2C569A4FB
	for <lists+driverdev-devel@lfdr.de>; Fri, 17 Feb 2023 06:09:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 423DE40879;
	Fri, 17 Feb 2023 05:09:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 423DE40879
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qo-XA2gCWsB2; Fri, 17 Feb 2023 05:09:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id A8F7C408D9;
	Fri, 17 Feb 2023 05:09:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A8F7C408D9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 056CC1BF3F3
 for <devel@linuxdriverproject.org>; Fri, 17 Feb 2023 05:09:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E03EE81FA7
 for <devel@linuxdriverproject.org>; Fri, 17 Feb 2023 05:09:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E03EE81FA7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v5IRgPS9Witw for <devel@linuxdriverproject.org>;
 Fri, 17 Feb 2023 05:09:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1656481F87
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1656481F87
 for <devel@driverdev.osuosl.org>; Fri, 17 Feb 2023 05:09:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="315623121"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="315623121"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2023 21:09:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10623"; a="620268532"
X-IronPort-AV: E=Sophos;i="5.97,304,1669104000"; d="scan'208";a="620268532"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 16 Feb 2023 21:09:05 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pSszT-000B8N-2I;
 Fri, 17 Feb 2023 05:08:59 +0000
Date: Fri, 17 Feb 2023 13:08:21 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 b5929325f06300d28696b9a030539a4009154788
Message-ID: <63ef0bc5.SZ79svaN8R/NbOHf%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676610547; x=1708146547;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=uD1MsgrtBLxBSLOrTaPFEAWqeRBJle3M4dD4BXMXMtQ=;
 b=F9ZqjRWnpOHe1nAfpbrrA6GdO5PUu5FJF4pBzVa/bk5CVLWma2JbXo+V
 PFoyhSX8gacl5+YyKV9ZIy8lzzl6Gw64dHIfo6UgUYKgwk0pIAGhpdcZi
 6LKZFmgWmhNdLjpIej2drgD2/MhGMeito4J+xH1fE2KI4Qei51FZG5WP2
 CQKxlO356gDtphUPNYU6Gt+kbRmNeC6xKgiqz6JCtaU8Z0asNjarsuHtO
 VUL6MyEq47W9S0bciFHlRX6SJ633XJiOr54Qup5iJiQGRO3Gi6lIVs7b1
 if+flPBVQmPtpXrW0UTpK+QOFecu8ShEMHLFI3u6MGEt0PQxl+ZM7Fdxd
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F9ZqjRWn
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: b5929325f06300d28696b9a030539a4009154788  staging: r8188eu: Revert "staging: r8188eu: simplify rtw_get_ff_hwaddr"

elapsed time: 955m

configs tested: 73
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                              allyesconfig
arc                                 defconfig
arc                  randconfig-r043-20230214
arm                              allmodconfig
arm                              allyesconfig
arm                                 defconfig
arm                  randconfig-r046-20230214
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                 randconfig-a011-20230213
i386                 randconfig-a012-20230213
i386                 randconfig-a013-20230213
i386                 randconfig-a014-20230213
i386                 randconfig-a015-20230213
i386                 randconfig-a016-20230213
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
mips                             allmodconfig
mips                             allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
sh                               allmodconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64               randconfig-a011-20230213
x86_64               randconfig-a012-20230213
x86_64               randconfig-a013-20230213
x86_64               randconfig-a014-20230213
x86_64               randconfig-a015-20230213
x86_64               randconfig-a016-20230213
x86_64                               rhel-8.3

clang tested configs:
hexagon              randconfig-r041-20230214
hexagon              randconfig-r045-20230214
i386                 randconfig-a001-20230213
i386                 randconfig-a002-20230213
i386                 randconfig-a003-20230213
i386                 randconfig-a004-20230213
i386                 randconfig-a005-20230213
i386                 randconfig-a006-20230213
riscv                randconfig-r042-20230214
s390                 randconfig-r044-20230214
x86_64               randconfig-a001-20230213
x86_64               randconfig-a002-20230213
x86_64               randconfig-a003-20230213
x86_64               randconfig-a004-20230213
x86_64               randconfig-a005-20230213
x86_64               randconfig-a006-20230213

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
