Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D80956889BF
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Feb 2023 23:29:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37A0B611F0;
	Thu,  2 Feb 2023 22:29:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 37A0B611F0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mR2oOaCrSdCp; Thu,  2 Feb 2023 22:29:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0969960B8C;
	Thu,  2 Feb 2023 22:29:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0969960B8C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id B2D771BF3CE
 for <devel@linuxdriverproject.org>; Thu,  2 Feb 2023 22:29:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 8CCF7405F3
 for <devel@linuxdriverproject.org>; Thu,  2 Feb 2023 22:29:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8CCF7405F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NetFrjhQ7hgJ for <devel@linuxdriverproject.org>;
 Thu,  2 Feb 2023 22:29:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 708E940192
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 708E940192
 for <devel@driverdev.osuosl.org>; Thu,  2 Feb 2023 22:29:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="316582823"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="316582823"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 14:28:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="734102790"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="734102790"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 02 Feb 2023 14:28:54 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pNi4b-0006v2-1K;
 Thu, 02 Feb 2023 22:28:53 +0000
Date: Fri, 03 Feb 2023 06:28:27 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 4114994f887e46f98ce64a9d31d15daf2652992a
Message-ID: <63dc390b.r9gxM242qERbtpcz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675376940; x=1706912940;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=5Q7g5Rv/iRJ/k+QHbsSicgP4lFp9A3lFwtuoYCN7evk=;
 b=EF59Sd7Er7Z0CP2zSIyYbvkBBH73IMSBYoj2E6ckULNlVBYXXXaGlz62
 IpHG2PIf6ZzZdgVDFZEFxlMWg475k8fuPzbrkhhovAESJthvXkk5uv+GT
 eoZxZR6/616mVpUxHAaBXIGC1rQctteVT5ynxldEwwjLfhgKrtS7kPLY/
 38ulP2lFm+cQifYltMgY5doMqzBbCl3ayCgm5quvVQpj8vqi9Nt3oL4gf
 6UfO1F+Ob6OLSVhgsSWUMfQog+7e5sLApgcK1iuv3p5xIkLPqkc/USvT6
 26Aj/b1RcjGVaS/bxUdqWvxjZCzJhiDA4ljToVkvYu4ECSqaEKYPeElhU
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EF59Sd7E
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: 4114994f887e46f98ce64a9d31d15daf2652992a  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 839m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
arc                                 defconfig
alpha                               defconfig
x86_64               randconfig-a001-20230130
x86_64               randconfig-a003-20230130
x86_64               randconfig-a004-20230130
x86_64               randconfig-a002-20230130
x86_64               randconfig-a006-20230130
x86_64               randconfig-a005-20230130
i386                 randconfig-a002-20230130
i386                 randconfig-a001-20230130
i386                 randconfig-a004-20230130
i386                 randconfig-a003-20230130
s390                                defconfig
s390                             allmodconfig
i386                 randconfig-a005-20230130
i386                 randconfig-a006-20230130
ia64                             allmodconfig
powerpc                           allnoconfig
x86_64                              defconfig
s390                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
x86_64                    rhel-8.3-kselftests
arc                              allyesconfig
x86_64                          rhel-8.3-func
alpha                            allyesconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
sh                               allmodconfig
mips                             allyesconfig
i386                                defconfig
arc                  randconfig-r043-20230202
s390                 randconfig-r044-20230202
riscv                randconfig-r042-20230202
powerpc                          allmodconfig
i386                             allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64               randconfig-a012-20230130
x86_64               randconfig-a013-20230130
x86_64               randconfig-a011-20230130
x86_64               randconfig-a014-20230130
x86_64               randconfig-a015-20230130
x86_64               randconfig-a016-20230130
i386                 randconfig-a013-20230130
i386                 randconfig-a012-20230130
i386                 randconfig-a014-20230130
i386                 randconfig-a011-20230130
i386                 randconfig-a015-20230130
i386                 randconfig-a016-20230130
arm                  randconfig-r046-20230202
hexagon              randconfig-r045-20230202
hexagon              randconfig-r041-20230202

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
