Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B793668546
	for <lists+driverdev-devel@lfdr.de>; Thu, 12 Jan 2023 22:26:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3408C416C8;
	Thu, 12 Jan 2023 21:26:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3408C416C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w3wtreiG_nYn; Thu, 12 Jan 2023 21:26:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA380417E4;
	Thu, 12 Jan 2023 21:26:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA380417E4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 71F601BF40D
 for <devel@linuxdriverproject.org>; Thu, 12 Jan 2023 21:26:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 469D560BA3
 for <devel@linuxdriverproject.org>; Thu, 12 Jan 2023 21:26:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 469D560BA3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2z4X4xpfyc3P for <devel@linuxdriverproject.org>;
 Thu, 12 Jan 2023 21:26:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E22146060A
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E22146060A
 for <devel@driverdev.osuosl.org>; Thu, 12 Jan 2023 21:26:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="311687521"
X-IronPort-AV: E=Sophos;i="5.97,212,1669104000"; d="scan'208";a="311687521"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 13:26:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="765772943"
X-IronPort-AV: E=Sophos;i="5.97,212,1669104000"; d="scan'208";a="765772943"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 12 Jan 2023 13:26:07 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pG55H-000ARI-1E;
 Thu, 12 Jan 2023 21:26:05 +0000
Date: Fri, 13 Jan 2023 05:25:34 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 0ffa302fc4bfa9647af19885090bbed9891dd08e
Message-ID: <63c07ace.F2KywTC/EpItUIae%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673558769; x=1705094769;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=/2c9kl5SpiBdiAFKyQRkdQKBGHpQUWhynOhkOoPlRXk=;
 b=JemKSMTE1LrWK6EjCbOD2PggQvC/eSEVP3dr1XHBu+4vi2HGSFTT5Ws3
 K/6DQ8uXukN/rRwKmW4os9JK7xoLVk87Q+sWzdsl7vdVkEr0EMP80vMMU
 GudYiU/89KdXwPgPY5dqWWvqXJPfgeXcJx0V0LbaNpcVJ6fcsCNzehHXz
 UFlxqVwwNEy9ay7drruijWdAJr3zR/dqdKbv60bnaFen3eY5cetMa1Pgf
 7FFAdUvCZOrPpdhIhAe1z7b0eet0sEx/V2c2EkanwonHeDZjx2fAIEAkR
 rCXBhtZj24aqOR6Tzvuj1kNj8mh7HIDDO7ogmAg7LHuEif3FyrP8HqUet
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JemKSMTE
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
branch HEAD: 0ffa302fc4bfa9647af19885090bbed9891dd08e  bus: step 1

elapsed time: 725m

configs tested: 56
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
arc                                 defconfig
alpha                               defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
s390                                defconfig
i386                          randconfig-a001
s390                             allmodconfig
x86_64                          rhel-8.3-func
x86_64                        randconfig-a004
i386                          randconfig-a003
x86_64                    rhel-8.3-kselftests
x86_64                        randconfig-a002
sh                               allmodconfig
i386                          randconfig-a005
x86_64                        randconfig-a006
m68k                             allyesconfig
x86_64                           allyesconfig
s390                             allyesconfig
x86_64                        randconfig-a013
m68k                             allmodconfig
arc                              allyesconfig
x86_64                        randconfig-a011
i386                                defconfig
mips                             allyesconfig
x86_64                           rhel-8.3-syz
powerpc                          allmodconfig
alpha                            allyesconfig
arc                  randconfig-r043-20230110
ia64                             allmodconfig
x86_64                        randconfig-a015
arm                                 defconfig
s390                 randconfig-r044-20230110
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
riscv                randconfig-r042-20230110
x86_64                           rhel-8.3-bpf
i386                             allyesconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a001
i386                          randconfig-a002
hexagon              randconfig-r041-20230110
x86_64                        randconfig-a003
x86_64                        randconfig-a016
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a005
arm                  randconfig-r046-20230110
i386                          randconfig-a006
x86_64                        randconfig-a014
hexagon              randconfig-r045-20230110

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
