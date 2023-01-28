Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C62E167F932
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Jan 2023 16:34:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2F1AB4168D;
	Sat, 28 Jan 2023 15:34:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2F1AB4168D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7-bsVx0Ssz_0; Sat, 28 Jan 2023 15:34:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BB923416B5;
	Sat, 28 Jan 2023 15:34:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BB923416B5
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6EF0A1BF2B3
 for <devel@linuxdriverproject.org>; Sat, 28 Jan 2023 15:34:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4DBD260C26
 for <devel@linuxdriverproject.org>; Sat, 28 Jan 2023 15:34:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4DBD260C26
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FqIX1n9iayAh for <devel@linuxdriverproject.org>;
 Sat, 28 Jan 2023 15:34:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 26B9560BFC
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 26B9560BFC
 for <devel@driverdev.osuosl.org>; Sat, 28 Jan 2023 15:34:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="310920915"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="310920915"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2023 07:34:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="806161506"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="806161506"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga001.fm.intel.com with ESMTP; 28 Jan 2023 07:34:38 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pLnDx-0000qb-3A;
 Sat, 28 Jan 2023 15:34:37 +0000
Date: Sat, 28 Jan 2023 23:34:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 ce5894d7e826185548eafa7d37060180af7a8707
Message-ID: <63d54083.BExjI60HUttLsVLW%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674920081; x=1706456081;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=KweI4cWhHvfIg/9XZj9a/6hFI0n44PtXjg6Nd5yJ1gQ=;
 b=BXHG6bFfUXKXkpPESiG4DwyYeJykLnscvRWp07LrJIz9IG0KxhwOVHX2
 /Gz7INEzhu1PEFGGuoz55PCeiXcz88usK/kSdCMgd9JAMMW83oiR3h4Vt
 Lii2EgP91I/Qw0oGxT+bHjdlEeHsK1X8fWT1Wuy5AS2UMMzOTCqbwQqfo
 H5iJ7/hgZpCBvtJ85G7SD3umVkdUga2AaZ/nmKpmba/x+FmURvnL0ZH1s
 Ik7pC+oYxshY+5lR10GuciSSMTJEErZP4P+8gyMe4unaEXKmVazrlasDn
 boTCxaD+MRrIXvJLmAK3MlBKOPT390POQ6hNP2uZvaFmkW0eiR1v+ACJD
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BXHG6bFf
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
branch HEAD: ce5894d7e826185548eafa7d37060180af7a8707  bus: step 1

elapsed time: 806m

configs tested: 31
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
powerpc                           allnoconfig
s390                             allyesconfig
sh                               allmodconfig
mips                             allyesconfig
x86_64                    rhel-8.3-kselftests
powerpc                          allmodconfig
x86_64                          rhel-8.3-func
x86_64                              defconfig
x86_64                               rhel-8.3
i386                                defconfig
x86_64                           allyesconfig
arm                                 defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
i386                             allyesconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
