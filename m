Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE01609082
	for <lists+driverdev-devel@lfdr.de>; Sun, 23 Oct 2022 02:05:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 562D581AC1;
	Sun, 23 Oct 2022 00:05:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 562D581AC1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DWAIZwYqGn-H; Sun, 23 Oct 2022 00:05:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6A5781ABA;
	Sun, 23 Oct 2022 00:05:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6A5781ABA
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F4B91BF42D
 for <devel@linuxdriverproject.org>; Sun, 23 Oct 2022 00:05:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 555EA60768
 for <devel@linuxdriverproject.org>; Sun, 23 Oct 2022 00:05:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 555EA60768
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lo772rErTpIi for <devel@linuxdriverproject.org>;
 Sun, 23 Oct 2022 00:05:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 85E34606DC
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 85E34606DC
 for <devel@driverdev.osuosl.org>; Sun, 23 Oct 2022 00:05:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10508"; a="393533289"
X-IronPort-AV: E=Sophos;i="5.95,206,1661842800"; d="scan'208";a="393533289"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2022 17:04:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10508"; a="581979798"
X-IronPort-AV: E=Sophos;i="5.95,206,1661842800"; d="scan'208";a="581979798"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 22 Oct 2022 17:04:57 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1omOU4-0003zQ-1h;
 Sun, 23 Oct 2022 00:04:56 +0000
Date: Sun, 23 Oct 2022 08:03:57 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 59789f3418dd3c0a187490d49e900a59a5c8d732
Message-ID: <635484ed.ADi+2sBza+UlAhjj%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666483516; x=1698019516;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=c+ZvzcV9Ghtejp2SidHFL95ZD7rXF7YHdzgfdgFn4HE=;
 b=B2+X9Hunaj1zadHxYiulyAbQwXdXWkoC8IJQQ8p6uaHK6dGDliCF2bQW
 1sGEzfO2wWBFONvYbK6+ENmGi0F99ZhrmErI6UFQAeq5N2dZyacB55wu6
 J6A0tGLC5Oy9tp5B8BU+k7YDDXpxVYYfs2aBxwNsXiJ3FaiKt3eFiq4Is
 uGMAmVQYeRUTNhAJKJA+zBgTpfpdGs62KzEqOYh9e2YIZas6m6w4ROvUg
 DKYWfHBaOqrkIEBEFRKeuLY6geS70W/e0Bq0xACKfJbnEClg0OmnjizzN
 75t0GHwpdE32rYNGLXmo6+CwrNeoDxljHJyaPWigIY1yIpV5S5vhPqpda
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=B2+X9Hun
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
branch HEAD: 59789f3418dd3c0a187490d49e900a59a5c8d732  device property: Constify parameter in device_dma_supported() and device_get_dma_attr()

Unverified Warning (likely false positive, please contact us if interested):

drivers/hwmon/iio_hwmon.c:155 iio_hwmon_probe() warn: could not determine type of argument 4

Warning ids grouped by kconfigs:

gcc_recent_errors
`-- x86_64-randconfig-m001
    `-- drivers-hwmon-iio_hwmon.c-iio_hwmon_probe()-warn:could-not-determine-type-of-argument

elapsed time: 721m

configs tested: 91
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
i386                          randconfig-a001
s390                                defconfig
x86_64                              defconfig
s390                             allmodconfig
x86_64                        randconfig-a002
i386                                defconfig
powerpc                           allnoconfig
i386                          randconfig-a003
x86_64                          rhel-8.3-func
x86_64                        randconfig-a013
x86_64                        randconfig-a004
x86_64                               rhel-8.3
i386                          randconfig-a012
x86_64                    rhel-8.3-kselftests
i386                          randconfig-a005
m68k                             allmodconfig
i386                          randconfig-a016
x86_64                           rhel-8.3-kvm
powerpc                          allmodconfig
arc                              allyesconfig
x86_64                        randconfig-a011
x86_64                        randconfig-a006
arm                                 defconfig
i386                          randconfig-a014
x86_64                           rhel-8.3-syz
x86_64                           allyesconfig
sh                               allmodconfig
alpha                            allyesconfig
s390                             allyesconfig
x86_64                         rhel-8.3-kunit
m68k                             allyesconfig
x86_64                        randconfig-a015
mips                             allyesconfig
arc                  randconfig-r043-20221018
riscv                randconfig-r042-20221018
s390                 randconfig-r044-20221018
i386                             allyesconfig
arm                              allyesconfig
arm64                            allyesconfig
arm                           u8500_defconfig
sh                                  defconfig
sh                          polaris_defconfig
powerpc                 mpc834x_mds_defconfig
csky                                defconfig
sh                           se7722_defconfig
ia64                          tiger_defconfig
arm                        mvebu_v7_defconfig
mips                    maltaup_xpa_defconfig
arc                        nsimosci_defconfig
microblaze                          defconfig
arm                          lpd270_defconfig
i386                          randconfig-c001
arm                        clps711x_defconfig
mips                       bmips_be_defconfig
arm                            mps2_defconfig
arc                     nsimosci_hs_defconfig
arm                         s3c6400_defconfig
m68k                         apollo_defconfig
powerpc                  iss476-smp_defconfig
sh                           se7619_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
sh                           se7206_defconfig
sh                          r7780mp_defconfig
sparc64                          alldefconfig
m68k                             alldefconfig
powerpc                 mpc8540_ads_defconfig
powerpc                     tqm8555_defconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a013
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a011
i386                          randconfig-a006
i386                          randconfig-a015
x86_64                        randconfig-a016
x86_64                        randconfig-a012
hexagon              randconfig-r041-20221018
i386                          randconfig-a004
x86_64                        randconfig-a014
hexagon              randconfig-r045-20221018
x86_64                        randconfig-k001
mips                        bcm63xx_defconfig
mips                      bmips_stb_defconfig
mips                      maltaaprp_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
