Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4161D688EFF
	for <lists+driverdev-devel@lfdr.de>; Fri,  3 Feb 2023 06:32:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EE4B5418F5;
	Fri,  3 Feb 2023 05:32:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE4B5418F5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jW1MwJJ9_Rv2; Fri,  3 Feb 2023 05:32:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 83CF041942;
	Fri,  3 Feb 2023 05:32:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 83CF041942
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 840181BF3BC
 for <devel@linuxdriverproject.org>; Fri,  3 Feb 2023 05:32:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5606661244
 for <devel@linuxdriverproject.org>; Fri,  3 Feb 2023 05:32:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5606661244
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id x3Res8KnV3E3 for <devel@linuxdriverproject.org>;
 Fri,  3 Feb 2023 05:32:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 01E5960C33
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 01E5960C33
 for <devel@driverdev.osuosl.org>; Fri,  3 Feb 2023 05:32:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="391060173"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="391060173"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 21:32:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="754351506"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="754351506"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 02 Feb 2023 21:32:38 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pNogg-00009U-12;
 Fri, 03 Feb 2023 05:32:38 +0000
Date: Fri, 03 Feb 2023 13:31:56 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const-2] BUILD SUCCESS
 07dc61508de6b51332db4d35f0430f754b0129c1
Message-ID: <63dc9c4c.1l5HIo8KTUtl3HJU%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675402361; x=1706938361;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=eMzldf29OHTJbvK392Nc0EUKKu9WxndDA/xZl2M0JqM=;
 b=FJ2ABzxrKH5WjkffCqWdsp+HYUIijKN5eCiFnVefTb8WB3+kVscjdaqr
 sjmshbYXd4ToS8rJfncf9Z7hdmJ2GvHnPTZwYTiH+JmPpcDdiGRkY2wxi
 flPK2ujnUlbN1qL6vAqhuCkzcla+lymTBkJmBaj4Qb4TuRWJjh6OL6/0O
 xlJvC4KEt79j26tVjlYF9pi1F/VBX8/VRtWpUYPGFYV8aaCTxxCHmKXtp
 65Z5C5naB3Ajl6CLdikrV53gBFyYcGxpr1U7vhEWGJgBPjfvOumACl9qA
 3A8jdl102tR/lhUi+CdaceDJisK9VgEtF3ECMXC898OdtwP3JGngZMr+v
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FJ2ABzxr
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const-2
branch HEAD: 07dc61508de6b51332db4d35f0430f754b0129c1  driver core: bus: bus_add/remove_driver() cleanups

elapsed time: 1261m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
m68k                             allyesconfig
i386                          randconfig-a001
m68k                             allmodconfig
i386                          randconfig-a003
arc                              allyesconfig
alpha                            allyesconfig
i386                          randconfig-a005
arc                                 defconfig
alpha                               defconfig
x86_64               randconfig-a001-20230130
x86_64               randconfig-a003-20230130
x86_64               randconfig-a004-20230130
x86_64               randconfig-a002-20230130
powerpc                           allnoconfig
ia64                             allmodconfig
s390                             allmodconfig
s390                                defconfig
x86_64               randconfig-a006-20230130
x86_64               randconfig-a005-20230130
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
sh                               allmodconfig
x86_64                              defconfig
s390                             allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
arc                  randconfig-r043-20230202
riscv                randconfig-r042-20230202
s390                 randconfig-r044-20230202
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
i386                          randconfig-a014
i386                                defconfig
i386                          randconfig-a012
i386                          randconfig-a016
i386                             allyesconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig

clang tested configs:
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                          rhel-8.3-rust
arm                  randconfig-r046-20230202
hexagon              randconfig-r045-20230202
hexagon              randconfig-r041-20230202
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-k001
x86_64                        randconfig-a016

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
