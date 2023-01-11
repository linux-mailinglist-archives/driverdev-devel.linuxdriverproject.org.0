Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C76D665112
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Jan 2023 02:22:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D527E610C5;
	Wed, 11 Jan 2023 01:22:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D527E610C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1gFKhynIfdeW; Wed, 11 Jan 2023 01:22:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A01D0610B8;
	Wed, 11 Jan 2023 01:22:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A01D0610B8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9CBC11BF40E
 for <devel@linuxdriverproject.org>; Wed, 11 Jan 2023 01:22:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 73755610C5
 for <devel@linuxdriverproject.org>; Wed, 11 Jan 2023 01:22:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 73755610C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dswjxvo2Eut1 for <devel@linuxdriverproject.org>;
 Wed, 11 Jan 2023 01:22:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E43F4610C6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E43F4610C6
 for <devel@driverdev.osuosl.org>; Wed, 11 Jan 2023 01:22:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="409539120"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="409539120"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 17:22:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="689613166"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="689613166"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 10 Jan 2023 17:22:30 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pFPox-0008Z4-0l;
 Wed, 11 Jan 2023 01:22:27 +0000
Date: Wed, 11 Jan 2023 09:21:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 f838ad0ec27de4453daad361caf076181c7508da
Message-ID: <63be0f2d.3rImFnzqvbxj55wV%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673400152; x=1704936152;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Bp4ZX//kmSzxV9n7B0Ox5Cmn0ASlVdZpGtKxNRhjbgE=;
 b=hoXkR0VWthACc8xyPFPuN1k+plxYUd0qFQWJlGQtkjnLty1tJX4Hn437
 whil91ozGbFq8ie1oMPW2aGGTnDvKpkKuf26naabXt0tSxK48RdpJf8q7
 G4zXZnejfdN7Lbbjk2KULNEQPFb3U602du5KLmpSwN5qQcDs9VSPyURcQ
 hw6kFfcXl41l75cD8UmirGngFGYWox0W6n2d46xNYsaYxwG8nD3M7UvFJ
 Ndn11IuHk6TqryBQKaBefYIXFPm+XRU3BRTZHPamBWl7LmsHdiFiZ6Czb
 amCfcjY0sy3ihj4j04ruXqU/frU6liLCJWoN8agUGIAayqGKYAQ66YZ5d
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hoXkR0VW
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
branch HEAD: f838ad0ec27de4453daad361caf076181c7508da  bus: step 1

elapsed time: 729m

configs tested: 62
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
x86_64                            allnoconfig
alpha                               defconfig
s390                                defconfig
um                             i386_defconfig
um                           x86_64_defconfig
m68k                             allmodconfig
m68k                             allyesconfig
alpha                            allyesconfig
arc                              allyesconfig
ia64                             allmodconfig
i386                          randconfig-a003
arc                  randconfig-r043-20230110
i386                          randconfig-a001
x86_64                           rhel-8.3-bpf
s390                 randconfig-r044-20230110
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
riscv                randconfig-r042-20230110
x86_64                           rhel-8.3-kvm
i386                          randconfig-a005
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
i386                                defconfig
i386                             allyesconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                          randconfig-a014
x86_64                        randconfig-a013
i386                          randconfig-a012
x86_64                        randconfig-a011
arm                                 defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                          randconfig-a016
x86_64                        randconfig-a015
x86_64                        randconfig-a006
arm                              allyesconfig
arm64                            allyesconfig
powerpc                           allnoconfig
sh                               allmodconfig
s390                             allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
s390                             allyesconfig

clang tested configs:
hexagon              randconfig-r041-20230110
i386                          randconfig-a002
i386                          randconfig-a004
arm                  randconfig-r046-20230110
hexagon              randconfig-r045-20230110
x86_64                          rhel-8.3-rust
i386                          randconfig-a006
i386                          randconfig-a013
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                        randconfig-a016
x86_64                        randconfig-a005

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
