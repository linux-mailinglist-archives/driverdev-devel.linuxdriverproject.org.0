Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 323C1637929
	for <lists+driverdev-devel@lfdr.de>; Thu, 24 Nov 2022 13:45:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C7DA40195;
	Thu, 24 Nov 2022 12:45:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C7DA40195
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id arMPwMigpkSH; Thu, 24 Nov 2022 12:45:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A038F40187;
	Thu, 24 Nov 2022 12:45:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A038F40187
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DDE1E1BF287
 for <devel@linuxdriverproject.org>; Thu, 24 Nov 2022 12:45:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B7C7741991
 for <devel@linuxdriverproject.org>; Thu, 24 Nov 2022 12:45:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B7C7741991
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 77c-PjaqcIOc for <devel@linuxdriverproject.org>;
 Thu, 24 Nov 2022 12:45:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9CF8D41970
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9CF8D41970
 for <devel@driverdev.osuosl.org>; Thu, 24 Nov 2022 12:45:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="378552188"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="378552188"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2022 04:45:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10540"; a="748227024"
X-IronPort-AV: E=Sophos;i="5.96,190,1665471600"; d="scan'208";a="748227024"
Received: from lkp-server01.sh.intel.com (HELO 64a2d449c951) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 24 Nov 2022 04:45:14 -0800
Received: from kbuild by 64a2d449c951 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oyBbN-0003sm-2k;
 Thu, 24 Nov 2022 12:45:13 +0000
Date: Thu, 24 Nov 2022 20:45:11 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 2613cc29c5723881ca603b1a3b50f0107010d5d6
Message-ID: <637f6757.ERy+Ckuia8c3+FyI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669293916; x=1700829916;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=WOZEgRIHd8uuSYAbBzrYquR20ye8IqJLqb9/JvgpxPE=;
 b=aqZPUcoiS+vmiCVm3P9AyWXahNZeaNjQi6TmA2AwDCtllYkdlNWHvK3n
 UqjOKWAWSeb9xfJj9W89WrMfC1B/tQonbeAIGA79dH4OC/JavLS6SEicu
 011DiFiHDJOHQhdKzMysWjiJkI+wpIXQDVZ+fP7UF8IzklfZ637Dx7Lo0
 GMQNdNTmRbWtJVtWlmgrknm3GuwVg6rb7G/daRrSHY26l3wYjTGSUT0f2
 akbM1mxdx2l7geuuqhuWg1iKledhKM+svU/jGwC5KwBG1Ep056cEFWEdH
 4c3oOVWYZ6MBBQ5JCYadEFQNFrx5nhJxmdS7V4SlDq6W+cy6U4qcD+dMD
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aqZPUcoi
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
branch HEAD: 2613cc29c5723881ca603b1a3b50f0107010d5d6  cacheinfo: Remove of_node_put() for fw_token

elapsed time: 1049m

configs tested: 50
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
s390                             allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                          allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
ia64                             allmodconfig
m68k                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
m68k                             allyesconfig
x86_64                            allnoconfig
i386                             allyesconfig
i386                                defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
arm                          pxa3xx_defconfig
mips                         db1xxx_defconfig
arm                        shmobile_defconfig
arm                           viper_defconfig
x86_64                           allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002

clang tested configs:
x86_64                        randconfig-k001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
