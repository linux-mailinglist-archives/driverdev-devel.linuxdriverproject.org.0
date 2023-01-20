Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 85A56674A89
	for <lists+driverdev-devel@lfdr.de>; Fri, 20 Jan 2023 05:26:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55C7B6120A;
	Fri, 20 Jan 2023 04:26:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 55C7B6120A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kuInsHX2GpxI; Fri, 20 Jan 2023 04:26:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 226A061184;
	Fri, 20 Jan 2023 04:26:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 226A061184
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 714171BF2CF
 for <devel@linuxdriverproject.org>; Fri, 20 Jan 2023 04:26:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 598616120A
 for <devel@linuxdriverproject.org>; Fri, 20 Jan 2023 04:26:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 598616120A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id w4LLcP0enfRA for <devel@linuxdriverproject.org>;
 Fri, 20 Jan 2023 04:26:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6765561184
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6765561184
 for <devel@driverdev.osuosl.org>; Fri, 20 Jan 2023 04:26:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="305869398"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="305869398"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 20:26:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="749233326"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="749233326"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 19 Jan 2023 20:26:39 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pIiz9-0002B4-0V;
 Fri, 20 Jan 2023 04:26:39 +0000
Date: Fri, 20 Jan 2023 12:26:01 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 95b2a034784658c4512db846918475d4954901d6
Message-ID: <63ca17d9.Ibe6UmSYnf45RGxs%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674188802; x=1705724802;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=e7U/toTNhR7LtT2hhG0i0wgXlhxEtYneCEEH2qgDJiM=;
 b=NSHsSqKQlQCo9dmmXEk8O3esdbmDT+poOrofhEBzzeoePcOLKEuCCVbz
 T9NuOw08Pq7re4rwIcpCEMteqQSQdDlAb8TUTUS1MI2Sa+mhQiMv2MPXO
 FBu49eBsDu/Beuyb0gSoMNAduEPhMwaP2LBtK8dYu3LR6o7AmO9cjTYnx
 jkyYngC2FIu+w8VKDszzGx71a8ehJWBBbhp1ukCFN+0JIhaPKu7cxD7u7
 vllUHH1uka+tSUMgO9y6bMb38SbUNqwf9p8kK2s1l45AxGkQelRBAsVCM
 mRDtIMbh9qGj2Sf7sDPRWuZMVSTvAqGsEQm140739G6tjJ/mi94y2Sdpd
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NSHsSqKQ
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
branch HEAD: 95b2a034784658c4512db846918475d4954901d6  kernfs: remove an unused if statement in kernfs_path_from_node_locked()

elapsed time: 723m

configs tested: 74
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
s390                                defconfig
x86_64                          rhel-8.3-func
s390                             allmodconfig
x86_64                    rhel-8.3-kselftests
powerpc                           allnoconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
arm                                 defconfig
x86_64                           rhel-8.3-bpf
sh                               allmodconfig
i386                          randconfig-a001
i386                          randconfig-a003
mips                             allyesconfig
s390                             allyesconfig
x86_64                              defconfig
powerpc                          allmodconfig
i386                          randconfig-a005
i386                                defconfig
x86_64                               rhel-8.3
arm64                            allyesconfig
x86_64                        randconfig-a013
x86_64                           allyesconfig
arm                              allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a011
x86_64                        randconfig-a002
x86_64                        randconfig-a006
m68k                             allyesconfig
x86_64                        randconfig-a015
m68k                             allmodconfig
alpha                            allyesconfig
i386                          randconfig-a014
arc                              allyesconfig
i386                          randconfig-a012
i386                          randconfig-a016
ia64                             allmodconfig
i386                             allyesconfig
arm                  randconfig-r046-20230119
arc                  randconfig-r043-20230119
i386                          randconfig-c001
sh                          rsk7264_defconfig
m68k                          multi_defconfig
nios2                               defconfig
arm                           corgi_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
riscv                             allnoconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3

clang tested configs:
x86_64                          rhel-8.3-rust
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                        randconfig-a012
x86_64                        randconfig-a001
x86_64                        randconfig-a014
x86_64                        randconfig-a003
i386                          randconfig-a013
x86_64                        randconfig-a005
x86_64                        randconfig-a016
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20230119
riscv                randconfig-r042-20230119
hexagon              randconfig-r041-20230119
s390                 randconfig-r044-20230119
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
