Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 010456506D6
	for <lists+driverdev-devel@lfdr.de>; Mon, 19 Dec 2022 04:38:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7A2AB400F8;
	Mon, 19 Dec 2022 03:38:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7A2AB400F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bmX_TmW6L8-L; Mon, 19 Dec 2022 03:38:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3C5A340151;
	Mon, 19 Dec 2022 03:38:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3C5A340151
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 33AD11BF5AD
 for <devel@linuxdriverproject.org>; Mon, 19 Dec 2022 03:38:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0ACED4010F
 for <devel@linuxdriverproject.org>; Mon, 19 Dec 2022 03:38:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0ACED4010F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qcnAAW5rt9G6 for <devel@linuxdriverproject.org>;
 Mon, 19 Dec 2022 03:38:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 001E6400E7
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 001E6400E7
 for <devel@driverdev.osuosl.org>; Mon, 19 Dec 2022 03:38:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="320435107"
X-IronPort-AV: E=Sophos;i="5.96,254,1665471600"; d="scan'208";a="320435107"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2022 19:38:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10565"; a="713870461"
X-IronPort-AV: E=Sophos;i="5.96,254,1665471600"; d="scan'208";a="713870461"
Received: from lkp-server01.sh.intel.com (HELO b5d47979f3ad) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 18 Dec 2022 19:38:00 -0800
Received: from kbuild by b5d47979f3ad with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p76yV-0008YM-1B;
 Mon, 19 Dec 2022 03:37:59 +0000
Date: Mon, 19 Dec 2022 11:37:41 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 b0d24828bcba4042dde1b68b42090ffcf04a8d08
Message-ID: <639fdc85.4w/86BmvfMKVVr91%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671421082; x=1702957082;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=I/JBhwiJNjCdjSJ5JXt823e1H2UV/n1IEJldCZaq3uc=;
 b=gPGcAI9GRqVGnr2RTN+x6dTdv6PtVz1bmBz4iJPvWAizRqOuk92gJPt7
 /w2O2U7apLZ+QjvraMm3g2KAQcibcMYnsDcpMc/pPzibtqQ6dodEfyJvm
 qbK03S4OZ+n1pyyMJMmcqD/opWOH0Dnkij9Js+JTYBqkszKNKDmXVy+n8
 qUSE2QMl25JeTe8j44fayLDhyl5X9KZkek6grMgX+HaMtUBpOzZNoXTUd
 gmaYDvrfVXQ8TP59BBYRiiQAE5KC7z/bEnZ4I3/Vy607sXkQrtpZ/XP+4
 0G2P87OXpJUIAveEj89SuBcqxo3kESOkczUxSW+MD7CMw87TkE5sPT5zN
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gPGcAI9G
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
branch HEAD: b0d24828bcba4042dde1b68b42090ffcf04a8d08  readfile.2: new page describing readfile(2)

elapsed time: 750m

configs tested: 77
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
um                             i386_defconfig
x86_64                              defconfig
um                           x86_64_defconfig
i386                                defconfig
x86_64                            allnoconfig
x86_64                               rhel-8.3
i386                          randconfig-a001
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a003
x86_64                           allyesconfig
i386                          randconfig-a014
alpha                            allyesconfig
i386                          randconfig-a005
i386                             allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a013
ia64                             allmodconfig
x86_64                        randconfig-a011
arc                                 defconfig
m68k                             allyesconfig
m68k                             allmodconfig
s390                             allmodconfig
x86_64                        randconfig-a002
arc                              allyesconfig
sh                               allmodconfig
i386                          randconfig-a012
arm                                 defconfig
alpha                               defconfig
arc                  randconfig-r043-20221218
x86_64                        randconfig-a015
s390                 randconfig-r044-20221218
s390                                defconfig
i386                          randconfig-a016
riscv                randconfig-r042-20221218
x86_64                        randconfig-a006
mips                             allyesconfig
s390                             allyesconfig
arm                          simpad_defconfig
m68k                           virt_defconfig
x86_64                           rhel-8.3-bpf
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
arm                              allyesconfig
arm64                            allyesconfig
arm                           sama5_defconfig
sh                             sh03_defconfig
powerpc                      ppc40x_defconfig
ia64                                defconfig
arm                            pleb_defconfig
arc                          axs103_defconfig
openrisc                            defconfig
powerpc                     taishan_defconfig
powerpc                   currituck_defconfig
powerpc                          allmodconfig

clang tested configs:
x86_64                          rhel-8.3-rust
i386                          randconfig-a013
i386                          randconfig-a002
arm                  randconfig-r046-20221218
i386                          randconfig-a011
x86_64                        randconfig-a014
hexagon              randconfig-r041-20221218
x86_64                        randconfig-a012
hexagon              randconfig-r045-20221218
x86_64                        randconfig-a005
x86_64                        randconfig-a001
i386                          randconfig-a006
i386                          randconfig-a015
x86_64                        randconfig-a003
i386                          randconfig-a004
x86_64                        randconfig-a016
arm                        magician_defconfig
arm                       netwinder_defconfig
mips                       rbtx49xx_defconfig
arm                          pxa168_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
