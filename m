Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306705A7496
	for <lists+driverdev-devel@lfdr.de>; Wed, 31 Aug 2022 05:44:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0305A408E8;
	Wed, 31 Aug 2022 03:44:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0305A408E8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id altSlzp4kfJJ; Wed, 31 Aug 2022 03:44:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B712A40608;
	Wed, 31 Aug 2022 03:44:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B712A40608
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 613181BF97C
 for <devel@linuxdriverproject.org>; Wed, 31 Aug 2022 03:43:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 49A7760C0D
 for <devel@linuxdriverproject.org>; Wed, 31 Aug 2022 03:43:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 49A7760C0D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fJAJu49QkkUD for <devel@linuxdriverproject.org>;
 Wed, 31 Aug 2022 03:43:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A75660AEA
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6A75660AEA
 for <devel@driverdev.osuosl.org>; Wed, 31 Aug 2022 03:43:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10455"; a="275766581"
X-IronPort-AV: E=Sophos;i="5.93,276,1654585200"; d="scan'208";a="275766581"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 20:43:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,276,1654585200"; d="scan'208";a="562903856"
Received: from lkp-server02.sh.intel.com (HELO 77b6d4e16fc5) ([10.239.97.151])
 by orsmga003.jf.intel.com with ESMTP; 30 Aug 2022 20:43:51 -0700
Received: from kbuild by 77b6d4e16fc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oTEdq-0000xf-2D;
 Wed, 31 Aug 2022 03:43:50 +0000
Date: Wed, 31 Aug 2022 11:43:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 e230a4455ac3e9b112f0367d1b8e255e141afae0
Message-ID: <630ed8d3./FUug4P+EUkU+dOw%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661917438; x=1693453438;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ydbuTdVzfeFgxGJj8Y3FPpTICKoI7fIgrup+5mMLE4k=;
 b=gjniF2MQYTqZVv2sz9jCRnwGwE2o577JmsxZKVhAtqRdxX2qhuhe7bBa
 hXVyWoDdzegSF9Bh9zRi7G9Mhd68ywmj6K+a597sPiIZ2JRP8/61XH6x3
 o3iPzob+aEXeGYoC9SCicTjHqmucXzRMOmsv54SxUGKNturuuBM+CuyGZ
 EGaONbE4IS/mRXQLXenvcmZJWBMVNVIj0kKF4e6+DK0NH+eMxHeQpAdy5
 UcZ6L3tsl35ZxddILYDg74+D8sCa0jcCiYQKgfByZKW5Cb2+3IRtaDNmt
 Xweog4ARpnLeyPUJ06EkeaF6pJuBzU2zNlibIoC4RPNPbnmyatgInlQ0n
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gjniF2MQ
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-linus
branch HEAD: e230a4455ac3e9b112f0367d1b8e255e141afae0  staging: rtl8712: fix use after free bugs

elapsed time: 723m

configs tested: 53
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220830
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
alpha                            allyesconfig
arc                              allyesconfig
sh                               allmodconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a013
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a011
x86_64                           rhel-8.3-syz
m68k                             allyesconfig
x86_64                        randconfig-a015
m68k                             allmodconfig
x86_64                          rhel-8.3-func
x86_64                              defconfig
x86_64                         rhel-8.3-kunit
i386                                defconfig
i386                          randconfig-a014
i386                          randconfig-a012
i386                          randconfig-a016
arm                                 defconfig
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                               rhel-8.3
i386                          randconfig-a005
arm64                            allyesconfig
arm                              allyesconfig
x86_64                           allyesconfig
i386                             allyesconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r045-20220830
hexagon              randconfig-r041-20220830
s390                 randconfig-r044-20220830
riscv                randconfig-r042-20220830
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
