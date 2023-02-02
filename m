Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7026B688B29
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Feb 2023 00:54:14 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AF0FB404B9;
	Thu,  2 Feb 2023 23:54:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AF0FB404B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iRld3G5p4an8; Thu,  2 Feb 2023 23:54:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id E23944112B;
	Thu,  2 Feb 2023 23:54:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E23944112B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 806C71BF358
 for <devel@linuxdriverproject.org>; Thu,  2 Feb 2023 23:54:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5A9CF41D5B
 for <devel@linuxdriverproject.org>; Thu,  2 Feb 2023 23:54:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5A9CF41D5B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 73GN8PkVFCrz for <devel@linuxdriverproject.org>;
 Thu,  2 Feb 2023 23:53:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 11D5D41D58
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 11D5D41D58
 for <devel@driverdev.osuosl.org>; Thu,  2 Feb 2023 23:53:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="308946777"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="308946777"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 15:53:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="729072046"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="729072046"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 02 Feb 2023 15:53:56 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pNjOt-0006xc-2P;
 Thu, 02 Feb 2023 23:53:55 +0000
Date: Fri, 03 Feb 2023 07:53:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 5cdc03c5cf471a215c57e540cc86be613c0ba457
Message-ID: <63dc4d06.5donWugK8CzkLWZk%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675382039; x=1706918039;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=o4dzJ2Z8N1fncPHXFCo2uczkHkw8BTjIXbQlZf4QXxE=;
 b=CwdYPjKttyks1xi0Frx7W8ZZZrDpYsy/e92Rf5mWAQYrqpY1cDYyfFwA
 Ns2G02/zuZznPtUEhRl6sTHkZLnZwCAbDwVxv5wwz08DRJZ38/QC7yfl0
 OJUDrEiTbhHN9P2PilcMYSiYTxkacvCxupX/eH/JfBKZbzR+ux0HIz/ce
 +DqwVnueGbV585UY73q5wgVnAqfIeU0TxN+AMIVuM2pk2AOOEqoSiwE0C
 Sjp0+y5N/nEYi44BkmAXCQ5db8FcBSs5FdNtTmN6yUmNYaeNC/VL7PhPy
 c3txAPIM2VNOvrRkfNLGNSQK7OUFMS4JTvQNodqezS9lU5mDIKnsWQTQp
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CwdYPjKt
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
branch HEAD: 5cdc03c5cf471a215c57e540cc86be613c0ba457  devtmpfs: convert to pr_fmt

elapsed time: 899m

configs tested: 68
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
s390                             allmodconfig
s390                                defconfig
s390                             allyesconfig
x86_64                            allnoconfig
x86_64                    rhel-8.3-kselftests
m68k                             allmodconfig
x86_64                              defconfig
m68k                             allyesconfig
arc                              allyesconfig
um                             i386_defconfig
x86_64                          rhel-8.3-func
alpha                            allyesconfig
um                           x86_64_defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64               randconfig-a001-20230130
x86_64               randconfig-a003-20230130
x86_64               randconfig-a004-20230130
x86_64               randconfig-a002-20230130
ia64                             allmodconfig
x86_64               randconfig-a006-20230130
x86_64               randconfig-a005-20230130
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                 randconfig-a002-20230130
i386                 randconfig-a001-20230130
i386                 randconfig-a004-20230130
i386                 randconfig-a003-20230130
i386                 randconfig-a005-20230130
i386                 randconfig-a006-20230130
x86_64                        randconfig-a006
x86_64                        randconfig-a013
arc                  randconfig-r043-20230202
x86_64                        randconfig-a011
riscv                randconfig-r042-20230202
s390                 randconfig-r044-20230202
x86_64                        randconfig-a015
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
i386                                defconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
i386                             allyesconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust
arm                  randconfig-r046-20230202
hexagon              randconfig-r045-20230202
hexagon              randconfig-r041-20230202
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
powerpc                     pq2fads_defconfig
mips                         cobalt_defconfig

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
