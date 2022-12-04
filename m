Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A201642025
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Dec 2022 23:57:19 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 590DA40A00;
	Sun,  4 Dec 2022 22:57:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 590DA40A00
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id gklg2opvFQPy; Sun,  4 Dec 2022 22:57:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id EC62A409DD;
	Sun,  4 Dec 2022 22:57:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC62A409DD
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 903DF1BF599
 for <devel@linuxdriverproject.org>; Sun,  4 Dec 2022 22:57:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6B4158145C
 for <devel@linuxdriverproject.org>; Sun,  4 Dec 2022 22:57:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6B4158145C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KgCFqZGd84Iq for <devel@linuxdriverproject.org>;
 Sun,  4 Dec 2022 22:57:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 47CD581456
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 47CD581456
 for <devel@driverdev.osuosl.org>; Sun,  4 Dec 2022 22:57:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="380519524"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="380519524"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2022 14:57:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="645610883"
X-IronPort-AV: E=Sophos;i="5.96,218,1665471600"; d="scan'208";a="645610883"
Received: from lkp-server01.sh.intel.com (HELO 4d912534d779) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 04 Dec 2022 14:57:06 -0800
Received: from kbuild by 4d912534d779 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p1xuz-00014R-1s;
 Sun, 04 Dec 2022 22:57:05 +0000
Date: Mon, 05 Dec 2022 06:56:11 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const3] BUILD SUCCESS
 8c90f96958c97a84b314ea52faf891d2154de64a
Message-ID: <638d258b.k7T0kHyu/tvzOKhN%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670194628; x=1701730628;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=0/lymr2feUDqgEP+IvvduvSzscbD+BfVb8oU4Rt3W8Q=;
 b=mXGL7jyhfPawm37kw+ev6iSpp9SDi+QyMKWyyPy44KS2gIVo0zTyzzH8
 4XCQTYqwDJBSlhgdqrXsoP+rKGr+Cb49nXiDVa0NIbnaogifRxL40a9/O
 P/7OzBPartfsp0j2RNmww85cPjx4kPQYlovNKaDs+M6qVsNxRVjWrzS+9
 yg2DlR3I107RXtuDMGGe6tiwgTFErH4bOuqGdAeRXyno8kcr8yeXq+R6W
 Sn+6M526IoLnZ5tEBeXcRFCjryf4Em4qUYrg1gb+WFaJ5Yk3AIOHbZILG
 cu+kEy4ty7lkwtYCdF/gmCWhbHDHUBtD7tiD2jYzYPAuLn+AhXKHwJxSF
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=mXGL7jyh
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const3
branch HEAD: 8c90f96958c97a84b314ea52faf891d2154de64a  firmware_loader: fix up to_fw_sysfs() to preserve const

elapsed time: 727m

configs tested: 59
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
arc                                 defconfig
um                           x86_64_defconfig
i386                                defconfig
alpha                               defconfig
x86_64                              defconfig
arm                                 defconfig
x86_64                    rhel-8.3-kselftests
s390                             allmodconfig
x86_64                          rhel-8.3-func
ia64                             allmodconfig
s390                                defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3
arm                              allyesconfig
x86_64                        randconfig-a002
x86_64                           allyesconfig
i386                          randconfig-a012
s390                             allyesconfig
x86_64                        randconfig-a013
arm64                            allyesconfig
x86_64                        randconfig-a011
powerpc                          allmodconfig
arm                  randconfig-r046-20221204
sh                               allmodconfig
x86_64                           rhel-8.3-kvm
mips                             allyesconfig
powerpc                           allnoconfig
i386                          randconfig-a001
i386                          randconfig-a016
i386                             allyesconfig
i386                          randconfig-a003
x86_64                        randconfig-a015
x86_64                        randconfig-a006
alpha                            allyesconfig
i386                          randconfig-a014
arc                  randconfig-r043-20221204
x86_64                        randconfig-a004
arc                              allyesconfig
m68k                             allyesconfig
i386                          randconfig-a005
m68k                             allmodconfig

clang tested configs:
i386                          randconfig-a013
hexagon              randconfig-r041-20221204
i386                          randconfig-a011
hexagon              randconfig-r045-20221204
x86_64                        randconfig-a012
x86_64                        randconfig-a005
x86_64                        randconfig-a001
i386                          randconfig-a015
x86_64                        randconfig-a003
x86_64                        randconfig-a014
i386                          randconfig-a002
x86_64                        randconfig-a016
riscv                randconfig-r042-20221204
s390                 randconfig-r044-20221204
i386                          randconfig-a004
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
