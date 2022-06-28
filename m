Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BBB55BC8E
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Jun 2022 02:13:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6428682C8F;
	Tue, 28 Jun 2022 00:13:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6428682C8F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ue8L1-_Qpp80; Tue, 28 Jun 2022 00:13:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1149482C04;
	Tue, 28 Jun 2022 00:13:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1149482C04
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 412C41BF2FF
 for <devel@linuxdriverproject.org>; Tue, 28 Jun 2022 00:13:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1BCA782C33
 for <devel@linuxdriverproject.org>; Tue, 28 Jun 2022 00:13:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1BCA782C33
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xPAUpAjT8-LX for <devel@linuxdriverproject.org>;
 Tue, 28 Jun 2022 00:13:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E81F82C04
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 2E81F82C04
 for <devel@driverdev.osuosl.org>; Tue, 28 Jun 2022 00:13:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="280353525"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="280353525"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 17:13:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="692853848"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jun 2022 17:13:09 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o5yqr-0009G2-42;
 Tue, 28 Jun 2022 00:13:09 +0000
Date: Tue, 28 Jun 2022 08:12:58 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 df8d0a55047b57074ac69db795a9775b3abe364e
Message-ID: <62ba478a.v2LDron8PtUM1GSw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656375192; x=1687911192;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=jP2sXqVSY9fO0PKXy0cBnQosW10UaU7ryVE/qHlEYNc=;
 b=D0cWRdlTzcZ4Ebt6f/usyKFi+nZZ+ytXeesOha6Qzk2pLHwn3kDQPN5Q
 mWOce+XNgj9JNIVQGdPNAeBcO7kZpT/27Ve59WvdukaUhOyMl6dNnivGn
 jd2p6q3lWTf31TwGxVMsjd0wSRuTLOlQ0smCZt+CwWi9m0LwH1znen/9V
 oy/lMno/hjvHGXp75djVdZyR0tFqnqpAT6/2a7VUTfp7tQ6l/j+ysxdlj
 sgm/e2YBcPyb03oNkq6M3ZcvyWWzH4Lw5l/QnvOYSS/+C0g94mr9TY/br
 fhM4F0R57MWogW7jefvoZmCobunasitFKzj3OFijDWF8VplnUDs2Cj9w2
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D0cWRdlT
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
branch HEAD: df8d0a55047b57074ac69db795a9775b3abe364e  staging: r8188eu: make power sequences static

elapsed time: 727m

configs tested: 52
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig
ia64                             allmodconfig
powerpc                           allnoconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
i386                                defconfig
i386                             allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
m68k                             allyesconfig
x86_64               randconfig-a012-20220627
x86_64               randconfig-a011-20220627
x86_64               randconfig-a013-20220627
x86_64               randconfig-a014-20220627
x86_64               randconfig-a015-20220627
x86_64               randconfig-a016-20220627
i386                 randconfig-a014-20220627
i386                 randconfig-a012-20220627
i386                 randconfig-a015-20220627
i386                 randconfig-a011-20220627
i386                 randconfig-a016-20220627
i386                 randconfig-a013-20220627
arc                  randconfig-r043-20220627
s390                 randconfig-r044-20220627
riscv                randconfig-r042-20220627
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz

clang tested configs:
x86_64               randconfig-a002-20220627
x86_64               randconfig-a003-20220627
x86_64               randconfig-a001-20220627
x86_64               randconfig-a005-20220627
x86_64               randconfig-a004-20220627
x86_64               randconfig-a006-20220627
i386                 randconfig-a002-20220627
i386                 randconfig-a004-20220627
i386                 randconfig-a003-20220627
i386                 randconfig-a006-20220627
i386                 randconfig-a001-20220627
i386                 randconfig-a005-20220627
hexagon              randconfig-r041-20220627
hexagon              randconfig-r045-20220627

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
