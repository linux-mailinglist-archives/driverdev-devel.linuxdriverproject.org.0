Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD1960EA45
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Oct 2022 22:29:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1878460DC2;
	Wed, 26 Oct 2022 20:29:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1878460DC2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4ZP19k3s8Wzo; Wed, 26 Oct 2022 20:29:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D75BD60DCB;
	Wed, 26 Oct 2022 20:29:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D75BD60DCB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 96BD71BF2C2
 for <devel@linuxdriverproject.org>; Wed, 26 Oct 2022 20:29:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6EB7240547
 for <devel@linuxdriverproject.org>; Wed, 26 Oct 2022 20:29:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6EB7240547
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Gnyneua1iXzR for <devel@linuxdriverproject.org>;
 Wed, 26 Oct 2022 20:29:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 234EE400BB
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 234EE400BB
 for <devel@driverdev.osuosl.org>; Wed, 26 Oct 2022 20:29:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="394368323"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="394368323"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 13:29:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="632154439"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="632154439"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga002.jf.intel.com with ESMTP; 26 Oct 2022 13:29:11 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1onn1S-0007p4-2f;
 Wed, 26 Oct 2022 20:29:10 +0000
Date: Thu, 27 Oct 2022 04:28:43 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const2] BUILD SUCCESS
 02f2ce01295c51168965655a984ffb106508be78
Message-ID: <6359987b.IqI463y67X4xUsST%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666816154; x=1698352154;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=9KRB0CdyQr+Ku4Y5eNFDgm+yOjri87DyzgSzkGLZMeY=;
 b=JSrnzwIfcxb0V4zLlAKgAvIhG/LEmpLERPzybd25ARPyE613ukdK2UoQ
 zT5KKrdzsglVSx37xNoX5SIckRPNKCiaoTnPeZDEKK2FCAYLCdSdnScPJ
 /G3K0gZV3lZFIa+Cw+7xoRRq622fnXS4VeSipER68V+1O1fmmI65Bu0Ro
 iY5xZQipv1G28NZoMerppGodcgqgE4TTb2U/vl+tueQm8S8OKPC8f1txx
 9gIquTZC1ppbxDB6J6CDmkpeT9WKYhf1CTNzQa8Ce0LJiuWT1QdYv7Ocm
 MKAYeqbc9tV/fyV/7pSfby7TD56fn0esupmE5XcuDGVToMcFSbSuq0RyJ
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JSrnzwIf
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const2
branch HEAD: 02f2ce01295c51168965655a984ffb106508be78  driver core: pass a const * into of_device_uevent()

elapsed time: 733m

configs tested: 56
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
arc                                 defconfig
x86_64                           rhel-8.3-kvm
alpha                               defconfig
x86_64                              defconfig
ia64                             allmodconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                               rhel-8.3
i386                                defconfig
x86_64                           allyesconfig
s390                                defconfig
powerpc                           allnoconfig
s390                             allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
alpha                            allyesconfig
sh                               allmodconfig
arc                              allyesconfig
arm                                 defconfig
s390                             allyesconfig
i386                          randconfig-a016
m68k                             allyesconfig
m68k                             allmodconfig
arc                  randconfig-r043-20221024
i386                             allyesconfig
riscv                randconfig-r042-20221024
arc                  randconfig-r043-20221023
s390                 randconfig-r044-20221024
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64                        randconfig-a014
i386                 randconfig-a001-20221024
i386                 randconfig-a002-20221024
i386                 randconfig-a005-20221024
x86_64                        randconfig-a012
i386                 randconfig-a003-20221024
i386                 randconfig-a004-20221024
hexagon              randconfig-r045-20221023
i386                 randconfig-a006-20221024
hexagon              randconfig-r041-20221024
riscv                randconfig-r042-20221023
hexagon              randconfig-r045-20221024
s390                 randconfig-r044-20221023
hexagon              randconfig-r041-20221023
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
