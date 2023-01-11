Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F22B665111
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Jan 2023 02:22:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 322B34192C;
	Wed, 11 Jan 2023 01:22:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 322B34192C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pNQbWN9TZNfN; Wed, 11 Jan 2023 01:22:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 953A44192F;
	Wed, 11 Jan 2023 01:22:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 953A44192F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C24601BF40E
 for <devel@linuxdriverproject.org>; Wed, 11 Jan 2023 01:22:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9D54C610B8
 for <devel@linuxdriverproject.org>; Wed, 11 Jan 2023 01:22:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9D54C610B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xo3Q_1HLGMCE for <devel@linuxdriverproject.org>;
 Wed, 11 Jan 2023 01:22:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACA47610C5
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id ACA47610C5
 for <devel@driverdev.osuosl.org>; Wed, 11 Jan 2023 01:22:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="409539117"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="409539117"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 17:22:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="689613167"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="689613167"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 10 Jan 2023 17:22:30 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pFPoz-0008Z6-1z;
 Wed, 11 Jan 2023 01:22:29 +0000
Date: Wed, 11 Jan 2023 09:21:44 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 11991a06d65205cd50540713a0e15e1c0fcf4ef2
Message-ID: <63be0f28.KwJ2p3FIk/5KSHUf%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673400152; x=1704936152;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=zsOXEIcot5Tdb1KEl3ZUUU4+f3/ISsfsxrEAL8silks=;
 b=Hb6WcHSmu1TwW2tvYItXrB4P308P2tiMaQ9ZstZgSx52he5g3xd2REnf
 09t1OW6lQDUDcMUHHzRcGuqmIwXJKIPdKrdd+6I3OkTetveWsYnl8rKiE
 hOBMpEcMrdst61I6FpGVwKK26rRh6OnqeUX0EN4SDD0WEaAnQK1UiLyX8
 grqSvFmRoblYDYNjefcd5UhdCGEengBDPdmS3ArZshWqgXQobSwX4sSEo
 HH0F3Iy5//dkRdxyKrrC3dkQgqNxbejFw4veE9HtTRABPmpE7l2MijO4L
 Qme7e2sFqCcKM+cXEsPSn6kefLT5i97boFUozQX3mV5knNEe8FkVTvI4v
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Hb6WcHSm
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
branch HEAD: 11991a06d65205cd50540713a0e15e1c0fcf4ef2  readfile.2: new page describing readfile(2)

elapsed time: 728m

configs tested: 55
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
s390                             allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                              defconfig
x86_64                               rhel-8.3
arc                  randconfig-r043-20230110
i386                                defconfig
x86_64                           allyesconfig
s390                 randconfig-r044-20230110
riscv                randconfig-r042-20230110
x86_64                          rhel-8.3-func
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                    rhel-8.3-kselftests
arm                                 defconfig
x86_64                        randconfig-a006
i386                             allyesconfig
ia64                             allmodconfig
arm64                            allyesconfig
arm                              allyesconfig
powerpc                           allnoconfig
m68k                             allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig

clang tested configs:
i386                          randconfig-a004
i386                          randconfig-a002
i386                          randconfig-a006
hexagon              randconfig-r041-20230110
hexagon              randconfig-r045-20230110
arm                  randconfig-r046-20230110
x86_64                        randconfig-a001
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-k001
mips                malta_qemu_32r6_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
