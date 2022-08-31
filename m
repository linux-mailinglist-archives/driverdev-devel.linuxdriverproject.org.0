Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (unknown [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB92A5A7495
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Aug 2022 05:44:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0AC174056E;
	Wed, 31 Aug 2022 03:43:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0AC174056E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TZasY6AML1Gu; Wed, 31 Aug 2022 03:43:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C1C2C400AF;
	Wed, 31 Aug 2022 03:43:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C1C2C400AF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id AB4441BF97C
 for <devel@linuxdriverproject.org>; Wed, 31 Aug 2022 03:43:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 80AED82948
 for <devel@linuxdriverproject.org>; Wed, 31 Aug 2022 03:43:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 80AED82948
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JQxYR_U9-dBt for <devel@linuxdriverproject.org>;
 Wed, 31 Aug 2022 03:43:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 72F51826AA
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 72F51826AA
 for <devel@driverdev.osuosl.org>; Wed, 31 Aug 2022 03:43:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="292940633"
X-IronPort-AV: E=Sophos;i="5.93,276,1654585200"; d="scan'208";a="292940633"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 20:43:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,276,1654585200"; d="scan'208";a="645095926"
Received: from lkp-server02.sh.intel.com (HELO 77b6d4e16fc5) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 30 Aug 2022 20:43:51 -0700
Received: from kbuild by 77b6d4e16fc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oTEdq-0000xh-2H;
 Wed, 31 Aug 2022 03:43:50 +0000
Date: Wed, 31 Aug 2022 11:43:17 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 6d29e08007c520a759cab710a591aa336d010bfe
Message-ID: <630ed8d5.e9ivV3GX6vvCmJ0q%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661917433; x=1693453433;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=2cJgY00zj8d6J+bsUbNTaUVk7rPGeIEDn9VmqTzQH9w=;
 b=OsQVhTN13LzOh/AkXDEziObXl/pfpRoVWqcU54oxP8Tte4Tdz2/FxNYu
 l7JATazZ1Rb/uXni9m+fq6rkD80LuEaSFhqgT+fvynEoP8uuEMDIVDC8w
 ElkiMUIWb+DCeXEfy0TKjzeLWa4gMSxiQ8HY9lL0E4JLMMwqIj0dYCB5s
 QZ2NsUxRpFVm5Jl53xUyPqHxUX5MsdUYvx1pnRbFnfbtMy4rDGtfGbuCv
 Qkw4yXv/u2cXhCNzN7XmloFszsMZJHLRXFHaMm0JQE8IbT7dwY7MUOHd7
 7bXnOwqg7ssi8Zholw084dvbtAmJLu2qKu4WhdP1E8aBbTi1y7bF5Ocwi
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OsQVhTN1
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
branch HEAD: 6d29e08007c520a759cab710a591aa336d010bfe  staging: vt6655: Rename function MACvSetShortRetryLimit

elapsed time: 722m

configs tested: 53
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                  randconfig-r043-20220830
um                           x86_64_defconfig
um                             i386_defconfig
powerpc                           allnoconfig
sh                               allmodconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
powerpc                          allmodconfig
mips                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                        randconfig-a004
x86_64                        randconfig-a013
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a002
arc                              allyesconfig
x86_64                        randconfig-a015
x86_64                        randconfig-a006
alpha                            allyesconfig
i386                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
i386                          randconfig-a014
ia64                             allmodconfig
i386                             allyesconfig
i386                          randconfig-a012
i386                          randconfig-a016
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig

clang tested configs:
hexagon              randconfig-r045-20220830
hexagon              randconfig-r041-20220830
riscv                randconfig-r042-20220830
s390                 randconfig-r044-20220830
i386                          randconfig-a002
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a005
i386                          randconfig-a004
x86_64                        randconfig-a001
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a003
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
