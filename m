Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4862E58494B
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Jul 2022 03:14:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 148F64014A;
	Fri, 29 Jul 2022 01:14:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 148F64014A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rC2uOlgpPxKa; Fri, 29 Jul 2022 01:14:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A3747400FD;
	Fri, 29 Jul 2022 01:14:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A3747400FD
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1EE4F1BF3B5
 for <devel@linuxdriverproject.org>; Fri, 29 Jul 2022 01:14:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0654482416
 for <devel@linuxdriverproject.org>; Fri, 29 Jul 2022 01:14:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0654482416
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1AHrG-0IMYTZ for <devel@linuxdriverproject.org>;
 Fri, 29 Jul 2022 01:14:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D83C5823EB
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D83C5823EB
 for <devel@driverdev.osuosl.org>; Fri, 29 Jul 2022 01:14:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="289432628"
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; d="scan'208";a="289432628"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 18:14:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; d="scan'208";a="660022468"
Received: from lkp-server01.sh.intel.com (HELO e0eace57cfef) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 28 Jul 2022 18:14:02 -0700
Received: from kbuild by e0eace57cfef with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oHEZm-000Apa-0l;
 Fri, 29 Jul 2022 01:14:02 +0000
Date: Fri, 29 Jul 2022 09:13:37 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 2b5002e2cc1483b6333d31e21902b78a1997909e
Message-ID: <62e33441.tRnGhY+wp3L7koat%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659057245; x=1690593245;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=lkab47KkJTNTkxmJ6WVSg4lzgysahvXCDPcIISrV7u8=;
 b=H1sw0Gv4Gj0D35eGtOiwwE5SqzIJGqv0/ZIS9zk+6mrgEZlOICvvVGtw
 oOzx9ilFccJpbrgUEMIraS5gW3TSEMRxcvdY1p4uD9rDmD+Hk3ZxlGWMY
 a1nfHMyOpnlcG1JDSytvp2JnGJ4RfauC01HYVV75VElW/4y/Uo62YptyT
 KFKodJq7KJimeXnwZH233Y6667bSV57NNu5+8d4FcBLcfhCW8Ria7iK3V
 Isrvka8Mw4JaqIufGz3TAKC1QEvFpo31Kj1Dvb7yBeRi4fg138Vs8JdDZ
 11+6qa51vBELDcMDl7HdZQ37Edx+/gZyf3H3jkHUUPJi07sG+AvIE2/bY
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H1sw0Gv4
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: 2b5002e2cc1483b6333d31e21902b78a1997909e  staging: r8188eu: convert rtw_pwr_wakeup to correct error code semantics

elapsed time: 2359m

configs tested: 45
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a005
x86_64                        randconfig-a015
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arm                                 defconfig
arm                              allyesconfig
arm64                            allyesconfig
ia64                             allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                          allmodconfig
sh                               allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
arc                  randconfig-r043-20220728
riscv                randconfig-r042-20220728
s390                 randconfig-r044-20220728
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a006
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220728
hexagon              randconfig-r041-20220728

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
