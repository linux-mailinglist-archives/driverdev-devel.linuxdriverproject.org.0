Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E149D62E4E0
	for <lists+driverdev-devel@lfdr.de>; Thu, 17 Nov 2022 19:57:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E66E402E0;
	Thu, 17 Nov 2022 18:57:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E66E402E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wHkyIXBxFsas; Thu, 17 Nov 2022 18:57:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3A650400C4;
	Thu, 17 Nov 2022 18:57:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A650400C4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4DB681BF957
 for <devel@linuxdriverproject.org>; Thu, 17 Nov 2022 18:57:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 284A541926
 for <devel@linuxdriverproject.org>; Thu, 17 Nov 2022 18:57:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 284A541926
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wJpeJxQvOXED for <devel@linuxdriverproject.org>;
 Thu, 17 Nov 2022 18:57:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0330141916
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0330141916
 for <devel@driverdev.osuosl.org>; Thu, 17 Nov 2022 18:57:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="314092641"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="314092641"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 10:57:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="639921659"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="639921659"
Received: from lkp-server01.sh.intel.com (HELO 55744f5052f8) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 17 Nov 2022 10:57:09 -0800
Received: from kbuild by 55744f5052f8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ovk4S-0000Z9-3C;
 Thu, 17 Nov 2022 18:57:08 +0000
Date: Fri, 18 Nov 2022 02:56:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 c7b0be95e5f880225c5d8deaa2aac246e11186a1
Message-ID: <637683db.sHzln7sGRjXutbhm%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668711432; x=1700247432;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=BHeLZyd7c/OBBG4EJdkwZIRrHYgvpyzMznhjHo/jTmQ=;
 b=MGABly1vkOsDkREyda6ErgOCqI1Ad8+a3Tkm7gAB78pHUDkgV4hL5A/U
 LNcnNRjxr28iBWlnyQQmPZJdGGFPiYJ58xtoWDJzZOxlik32w1xXMdL6d
 0fNPLvD1Ej8n6xRG0cDwMIdSOWze5txgfSX9yQLMXk98NwHth907KQu5e
 hfNjNY2aUPD+WtHq0O+cdNs4eQ2kSi507Hu6JkPFDws0amHl6fhcT+Q+Q
 7Ve0WPuI0LFomcVx25oZaCOIO0cTV8cvYZbK5XuBs84h7ank753bNxder
 HUDn15WXIUyEtoEdFHb38kTDidoXHVJQZLqb5T8ni7XaVpy4H8ef+t77m
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MGABly1v
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: c7b0be95e5f880225c5d8deaa2aac246e11186a1  kobject: kset_uevent_ops: make uevent() callback take a const *

elapsed time: 747m

configs tested: 58
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
arc                                 defconfig
s390                             allmodconfig
um                             i386_defconfig
alpha                               defconfig
um                           x86_64_defconfig
sh                               allmodconfig
s390                                defconfig
mips                             allyesconfig
powerpc                          allmodconfig
s390                             allyesconfig
arc                  randconfig-r043-20221117
i386                          randconfig-a012
riscv                randconfig-r042-20221117
i386                          randconfig-a016
i386                          randconfig-a001
ia64                             allmodconfig
x86_64                        randconfig-a002
x86_64                         rhel-8.3-kunit
i386                          randconfig-a014
i386                          randconfig-a003
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a005
s390                 randconfig-r044-20221117
x86_64                        randconfig-a015
x86_64                           rhel-8.3-kvm
m68k                             allmodconfig
x86_64                           rhel-8.3-syz
x86_64                              defconfig
x86_64                          rhel-8.3-func
arc                              allyesconfig
x86_64                        randconfig-a006
i386                                defconfig
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a004
alpha                            allyesconfig
m68k                             allyesconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                             allyesconfig
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig

clang tested configs:
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a002
hexagon              randconfig-r041-20221117
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a001
i386                          randconfig-a004
x86_64                        randconfig-a014
i386                          randconfig-a006
hexagon              randconfig-r045-20221117
x86_64                        randconfig-a003
x86_64                        randconfig-a005

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
