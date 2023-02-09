Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF9D6912DE
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Feb 2023 22:56:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4C07B60E36;
	Thu,  9 Feb 2023 21:56:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C07B60E36
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W5bDj3hqA1QU; Thu,  9 Feb 2023 21:56:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2380F60AF1;
	Thu,  9 Feb 2023 21:56:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2380F60AF1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C0C6C1BF3D5
 for <devel@linuxdriverproject.org>; Thu,  9 Feb 2023 21:56:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 9B427408F1
 for <devel@linuxdriverproject.org>; Thu,  9 Feb 2023 21:56:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9B427408F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QiHGoEfpep8L for <devel@linuxdriverproject.org>;
 Thu,  9 Feb 2023 21:56:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A4571408EC
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A4571408EC
 for <devel@driverdev.osuosl.org>; Thu,  9 Feb 2023 21:56:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="416488277"
X-IronPort-AV: E=Sophos;i="5.97,284,1669104000"; d="scan'208";a="416488277"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 13:56:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="731490347"
X-IronPort-AV: E=Sophos;i="5.97,284,1669104000"; d="scan'208";a="731490347"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 09 Feb 2023 13:56:09 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQEtl-0005Kc-0R;
 Thu, 09 Feb 2023 21:56:09 +0000
Date: Fri, 10 Feb 2023 05:56:07 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 ad8685d0f61a6fc1dc2e5874f4924ff5028c5954
Message-ID: <63e56bf7.6KYwFm9CTdvW0LkU%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675979771; x=1707515771;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=4zPPq7L9/EPHUK5IXaRMiHgOmW5MUSXoS/4Jr/EiFhs=;
 b=FF2LQziY0bBQjfkFS0EwUFkQ9DGs+S81U4NtzIH20KlQR0ge3kP1NNcN
 H5Zt2c6zqqLQ6eEIlsY8yEaE+zaydoIw2WLsoX14IOwRvnQns3Vmn1BN6
 Yl/wMh6YvMBhUNIA+tD8Yq6JNaFZuPydbAg1RrNYkYw8iGt7XbCrYJFyV
 BZYQ2oO/M05hJ19mxktKL+gkjhVR7RIlBrA1Wpd8KeCp173XFeQLmczeE
 U5DCawudAuYnTX4AqDlFCHc60gMk7UzDkjWU1K00cUSter29rWQ4kN/p2
 ZpkgImFi5v8IDB+pAW8jBQf4ZWw88A40W45LlwAC/frjWOFmUmSddI7+i
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FF2LQziY
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
branch HEAD: ad8685d0f61a6fc1dc2e5874f4924ff5028c5954  driver core: bus: constify bus_unregister()

elapsed time: 721m

configs tested: 50
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
powerpc                           allnoconfig
um                             i386_defconfig
x86_64                        randconfig-a013
um                           x86_64_defconfig
x86_64                        randconfig-a011
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
i386                                defconfig
sh                               allmodconfig
x86_64                        randconfig-a015
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                        randconfig-a004
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                        randconfig-a002
x86_64                        randconfig-a006
arc                  randconfig-r043-20230209
arm                  randconfig-r046-20230209
x86_64                           allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
i386                             allyesconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
arm                                 defconfig
s390                                defconfig
s390                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a006
riscv                randconfig-r042-20230209
hexagon              randconfig-r041-20230209
hexagon              randconfig-r045-20230209
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
s390                 randconfig-r044-20230209

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
