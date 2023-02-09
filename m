Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6B169009A
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Feb 2023 07:53:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0EEE181236;
	Thu,  9 Feb 2023 06:53:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0EEE181236
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SnM6bwHxs8xp; Thu,  9 Feb 2023 06:53:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E023480CC8;
	Thu,  9 Feb 2023 06:53:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E023480CC8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8280C1BF852
 for <devel@linuxdriverproject.org>; Thu,  9 Feb 2023 06:53:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 68F8A4029A
 for <devel@linuxdriverproject.org>; Thu,  9 Feb 2023 06:53:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68F8A4029A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wKp-1e3VvgXz for <devel@linuxdriverproject.org>;
 Thu,  9 Feb 2023 06:53:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E32B40238
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1E32B40238
 for <devel@driverdev.osuosl.org>; Thu,  9 Feb 2023 06:53:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="394624775"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="394624775"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 22:53:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="697919780"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="697919780"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 08 Feb 2023 22:53:26 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQ0o9-0004t8-1g;
 Thu, 09 Feb 2023 06:53:25 +0000
Date: Thu, 09 Feb 2023 14:52:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 c97269478bc0b5d5c34428b499e1338b41f7aa59
Message-ID: <63e4983a.wQQbFZ+MkZ3NQEis%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675925608; x=1707461608;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=zDznBQYYeVag7vbgONGf475m1bkKU2SVS/EsLtm89DQ=;
 b=iu6zM/mYp2a9Ucv2/4LBDE1BcMvOMmViqZUSXRT9AvKjnz1Ugf1PI/8x
 Jq1wTuWXK4isWA6DCeDZMx+A+NJJpQqAcVfeXafusuo4K+e26MJk0P13t
 uCjOrx8/DDv2G/dcI0fBoANmiJRUmOHrruIM1SM0FLELxBK6MhCnXjhl0
 1imd18pd9a+HEfnYivyZmO5KwoVmPBug5srwjyk3cP0CvLJZ5pjsXSDR8
 fkJS7KE2a09GRUNvrH3dog6h8Ta2VzNqyy1SwIp9/exSwHj6q7WU+4n+V
 WrfoJSMD4m6kMSZMAOdGnbi3TdQ6hKqzzLAm0vIBPm6q+jkqXmhCr9t21
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iu6zM/mY
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_lookup_fix
branch HEAD: c97269478bc0b5d5c34428b499e1338b41f7aa59  mtd: spi-nor: fix memory leak when using debugfs_lookup()

elapsed time: 720m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
x86_64                            allnoconfig
s390                             allyesconfig
x86_64                              defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                               rhel-8.3
ia64                             allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                           allyesconfig
x86_64                        randconfig-a013
i386                                defconfig
x86_64                        randconfig-a011
i386                          randconfig-a014
powerpc                           allnoconfig
i386                          randconfig-a012
x86_64                           rhel-8.3-bpf
mips                             allyesconfig
i386                          randconfig-a016
powerpc                          allmodconfig
x86_64                        randconfig-a015
x86_64                        randconfig-a004
arm                                 defconfig
sh                               allmodconfig
x86_64                           rhel-8.3-syz
i386                          randconfig-a001
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a002
x86_64                           rhel-8.3-kvm
i386                          randconfig-a003
arc                  randconfig-r043-20230209
x86_64                        randconfig-a006
arm                  randconfig-r046-20230209
i386                          randconfig-a005
arm64                            allyesconfig
i386                             allyesconfig
arm                              allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func

clang tested configs:
i386                          randconfig-a013
i386                          randconfig-a011
x86_64                        randconfig-a012
i386                          randconfig-a015
x86_64                        randconfig-a014
x86_64                        randconfig-a016
riscv                randconfig-r042-20230209
hexagon              randconfig-r041-20230209
hexagon              randconfig-r045-20230209
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a004
s390                 randconfig-r044-20230209
x86_64                        randconfig-a003
x86_64                        randconfig-a005
i386                          randconfig-a006
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
