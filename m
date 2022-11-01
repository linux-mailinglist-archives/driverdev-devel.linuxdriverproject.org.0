Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D38E6142D8
	for <lists+driverdev-devel@lfdr.de>; Tue,  1 Nov 2022 02:44:16 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77E4F60BF1;
	Tue,  1 Nov 2022 01:44:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77E4F60BF1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ux1fZ0jdCfiu; Tue,  1 Nov 2022 01:44:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 519CF60BEF;
	Tue,  1 Nov 2022 01:44:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 519CF60BEF
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6A1FA1BF352
 for <devel@linuxdriverproject.org>; Tue,  1 Nov 2022 01:44:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 43F2640144
 for <devel@linuxdriverproject.org>; Tue,  1 Nov 2022 01:44:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 43F2640144
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DPH_p-7bdukG for <devel@linuxdriverproject.org>;
 Tue,  1 Nov 2022 01:44:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D5C33400BB
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D5C33400BB
 for <devel@driverdev.osuosl.org>; Tue,  1 Nov 2022 01:44:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="335705071"
X-IronPort-AV: E=Sophos;i="5.95,229,1661842800"; d="scan'208";a="335705071"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 18:43:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10517"; a="808757019"
X-IronPort-AV: E=Sophos;i="5.95,229,1661842800"; d="scan'208";a="808757019"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 31 Oct 2022 18:43:30 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1opgJO-000DBS-0Z;
 Tue, 01 Nov 2022 01:43:30 +0000
Date: Tue, 01 Nov 2022 09:42:11 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 ae85931f8f483ed58f7c90c99c75afd8482e0399
Message-ID: <63607973.wCDDCFxbPJtovIfy%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667267044; x=1698803044;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=HSdCGlU1XTiIzk3X8dIw+OgkhblACcWtes/0L2m217w=;
 b=kkw5Xj16SdYdRgfk3etY+pSqSek18Dm46HlyzEIEBUF14czcNolRmcJq
 kGQGxNnp0OXaUcaX56chKB+FR7YHz+J5EHh1xzWFjkwn4ws6hEM+4//mS
 /vDpaKqJSnC1RJ6svGMPyG6UbTIS34Xad8I+TeXhCwA1iYHQksyP5Zziq
 piFzzvfiU2Mud79r5deH04Lx96j2rkgTfkoCHG70FPsmr/nJy2aKDfn4j
 yQ2M/Mxws1s/vQa45Ghd7BNJ5CSitOkPLx9VARseoYR7aFCZWfQ6C0Mq6
 NQWvrgmyDgI4P5sfGMD1ICwCVm3o1cftAxtkYr7+1BPTSngIQCrlDe5Mp
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=kkw5Xj16
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: ae85931f8f483ed58f7c90c99c75afd8482e0399  staging: r8188eu: check destination address in OnAction

elapsed time: 1046m

configs tested: 63
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
powerpc                           allnoconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                               rhel-8.3
s390                                defconfig
arm                                 defconfig
x86_64                           allyesconfig
s390                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
sh                               allmodconfig
arm64                            allyesconfig
arm                              allyesconfig
m68k                             allmodconfig
i386                 randconfig-a011-20221031
mips                             allyesconfig
i386                 randconfig-a012-20221031
powerpc                          allmodconfig
arc                              allyesconfig
i386                 randconfig-a013-20221031
i386                 randconfig-a015-20221031
i386                                defconfig
alpha                            allyesconfig
i386                 randconfig-a014-20221031
m68k                             allyesconfig
i386                 randconfig-a016-20221031
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64               randconfig-a014-20221031
x86_64               randconfig-a012-20221031
x86_64               randconfig-a011-20221031
arc                  randconfig-r043-20221031
x86_64               randconfig-a013-20221031
x86_64               randconfig-a016-20221031
x86_64               randconfig-a015-20221031
ia64                             allmodconfig
i386                             allyesconfig
riscv                randconfig-r042-20221031
arc                  randconfig-r043-20221030
s390                 randconfig-r044-20221031

clang tested configs:
x86_64               randconfig-a004-20221031
x86_64               randconfig-a003-20221031
x86_64               randconfig-a002-20221031
x86_64               randconfig-a001-20221031
x86_64               randconfig-a006-20221031
x86_64               randconfig-a005-20221031
i386                 randconfig-a001-20221031
i386                 randconfig-a003-20221031
i386                 randconfig-a002-20221031
i386                 randconfig-a004-20221031
i386                 randconfig-a006-20221031
i386                 randconfig-a005-20221031
hexagon              randconfig-r045-20221031
hexagon              randconfig-r041-20221030
riscv                randconfig-r042-20221030
s390                 randconfig-r044-20221030
hexagon              randconfig-r041-20221031
hexagon              randconfig-r045-20221030

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
