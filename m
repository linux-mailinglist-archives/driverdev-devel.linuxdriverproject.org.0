Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 676695B523B
	for <lists+driverdev-devel@lfdr.de>; Mon, 12 Sep 2022 02:31:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id F1F3E84591;
	Mon, 12 Sep 2022 00:31:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F1F3E84591
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AO79CrNZazEi; Mon, 12 Sep 2022 00:31:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id A034884595;
	Mon, 12 Sep 2022 00:31:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A034884595
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 44C981BF3E1
 for <devel@linuxdriverproject.org>; Mon, 12 Sep 2022 00:31:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 208AE40C2C
 for <devel@linuxdriverproject.org>; Mon, 12 Sep 2022 00:31:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 208AE40C2C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JASiy-4xs9IJ for <devel@linuxdriverproject.org>;
 Mon, 12 Sep 2022 00:31:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3BFC04052D
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3BFC04052D
 for <devel@driverdev.osuosl.org>; Mon, 12 Sep 2022 00:31:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="361715237"
X-IronPort-AV: E=Sophos;i="5.93,308,1654585200"; d="scan'208";a="361715237"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2022 17:31:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,308,1654585200"; d="scan'208";a="646251856"
Received: from lkp-server02.sh.intel.com (HELO 4011df4f4fd3) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 11 Sep 2022 17:31:17 -0700
Received: from kbuild by 4011df4f4fd3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oXXM4-00021X-1A;
 Mon, 12 Sep 2022 00:31:16 +0000
Date: Mon, 12 Sep 2022 08:31:01 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 9634b371b66a270821ed8d4d224ef19e9b842507
Message-ID: <631e7dc5.HPjRJ4WhUbwvk0Ad%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662942679; x=1694478679;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=pQ3zGUzbyjBjM/llNszpx2nyDpH0HtOSyVWy5Kj1hI0=;
 b=VZ28QHAHzPzHomm9Wndxxv6hRMii68rlRfMlYZcEyBczdzKKXT5Hpk2z
 YsxowYzt8oqUbZUK9XrxI5YrVgjN+FvZzoHMcIBxQ/1+TGg7/qvuMvMho
 +x1DNiiKTaLpgUKV9RHNnulEOqQBv3N9rS8I73zj460yL6ZmhfQlkNi/2
 LbZKRh/XHz6eJAe89CSeTcrFQ0uJV3uNg+orYhjGSnAQkJ36lPxLBMpNa
 F5Aq7aPf19TTiTaUiU/rG42X631OWPiofSD8A91cq/iNQqx1I+ydU0euN
 JLElJYWibE73R+e4TbQZYL4QZQywYdIJ0+DvJNTJfLMpmIIOmL4hJO4bP
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VZ28QHAH
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
branch HEAD: 9634b371b66a270821ed8d4d224ef19e9b842507  staging: wlan-ng: remove unused p80211wext_handler_def declaration

elapsed time: 725m

configs tested: 79
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220911
riscv                randconfig-r042-20220911
s390                 randconfig-r044-20220911
i386                          randconfig-a001
x86_64                        randconfig-a004
i386                          randconfig-a003
powerpc                           allnoconfig
x86_64                        randconfig-a002
powerpc                          allmodconfig
mips                             allyesconfig
i386                                defconfig
x86_64                        randconfig-a006
i386                          randconfig-a014
i386                          randconfig-a005
sh                               allmodconfig
x86_64                        randconfig-a013
m68k                             allmodconfig
i386                          randconfig-a012
arm                                 defconfig
x86_64                              defconfig
i386                          randconfig-a016
arc                              allyesconfig
alpha                            allyesconfig
x86_64                        randconfig-a011
m68k                             allyesconfig
i386                             allyesconfig
ia64                             allmodconfig
x86_64                        randconfig-a015
arm                              allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
arm64                            allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                    rhel-8.3-kselftests
x86_64                           allyesconfig
x86_64                           rhel-8.3-syz
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
m68k                            q40_defconfig
arm                           stm32_defconfig
arc                          axs101_defconfig
arm                           sunxi_defconfig
arm                        keystone_defconfig
nios2                            alldefconfig
loongarch                           defconfig
loongarch                         allnoconfig
m68k                       m5208evb_defconfig
powerpc                      arches_defconfig
arm                          pxa910_defconfig
i386                          randconfig-c001
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
sh                   secureedge5410_defconfig
powerpc                     taishan_defconfig
csky                                defconfig
arm                         axm55xx_defconfig
powerpc                 mpc834x_itx_defconfig

clang tested configs:
hexagon              randconfig-r045-20220911
hexagon              randconfig-r041-20220911
i386                          randconfig-a002
x86_64                        randconfig-a001
i386                          randconfig-a006
x86_64                        randconfig-a003
i386                          randconfig-a011
i386                          randconfig-a004
x86_64                        randconfig-a005
x86_64                        randconfig-a012
i386                          randconfig-a013
i386                          randconfig-a015
x86_64                        randconfig-a014
x86_64                        randconfig-a016
arm                          pxa168_defconfig
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
