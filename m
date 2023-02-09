Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 722B668FC44
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Feb 2023 01:58:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F37C5611A8;
	Thu,  9 Feb 2023 00:58:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F37C5611A8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pz_Ms7EtlpHC; Thu,  9 Feb 2023 00:58:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD8DF60C14;
	Thu,  9 Feb 2023 00:58:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AD8DF60C14
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 942111BF318
 for <devel@linuxdriverproject.org>; Thu,  9 Feb 2023 00:58:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 6F23740393
 for <devel@linuxdriverproject.org>; Thu,  9 Feb 2023 00:58:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6F23740393
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id f2sYt8MydQ_s for <devel@linuxdriverproject.org>;
 Thu,  9 Feb 2023 00:58:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5AD1A40359
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5AD1A40359
 for <devel@driverdev.osuosl.org>; Thu,  9 Feb 2023 00:58:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="357375949"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="357375949"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 16:58:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="645070634"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="645070634"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 08 Feb 2023 16:58:24 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pPvGU-0004j4-1h;
 Thu, 09 Feb 2023 00:58:18 +0000
Date: Thu, 09 Feb 2023 08:58:12 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 5cd73e7c60a9cab27b2eb3270b7fd4a79dafee25
Message-ID: <63e44524.YQl/Lcnl2VPw6taP%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675904306; x=1707440306;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=rtXWy2o6DQQbRYUCnHBaI3D216brtQRSgdcR+71h/Qs=;
 b=blskB6j/k/0Wie3nASTX8B0hpT1Xu9gd200+OWQTGfdJTf6hYacsyggn
 le5zXYL+H5iZgRC6sdsjwLjvvK/nuBk2m5ke1miZe7uvyJsFuZ0fug3pH
 7vvRJWtoMAPXGqYzV4F9n00XTVG3EgOnGHSXMPz9eNSKYubusxXS2ZpoF
 fBlD7pVAR13KH0avZmCxRkNIYd7KrU/5oPWtbTjGGGTftAxumbx6nr9lK
 PIJ+Br0PX5aZLMkSTb3OMDLSXLSxmwomlLZrUpYGZcN3qTJKyuJ5bl9HL
 f4E109JTz11QJMpJbtw2IyXdU/5NaHyH4vVl/DDVKwW/reNXGxhD1zd+G
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=blskB6j/
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
branch HEAD: 5cd73e7c60a9cab27b2eb3270b7fd4a79dafee25  staging: rtl8192e: Rename DM_RxPathSelTable

elapsed time: 727m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
i386                 randconfig-a011-20230206
i386                 randconfig-a014-20230206
i386                 randconfig-a012-20230206
i386                 randconfig-a013-20230206
x86_64                            allnoconfig
i386                 randconfig-a015-20230206
x86_64                               rhel-8.3
i386                 randconfig-a016-20230206
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
powerpc                           allnoconfig
s390                                defconfig
ia64                             allmodconfig
x86_64                           allyesconfig
s390                             allyesconfig
x86_64               randconfig-a013-20230206
x86_64               randconfig-a011-20230206
x86_64                           rhel-8.3-bpf
x86_64               randconfig-a012-20230206
x86_64               randconfig-a014-20230206
x86_64               randconfig-a015-20230206
x86_64               randconfig-a016-20230206
arm                                 defconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
i386                                defconfig
x86_64                        randconfig-a006
arc                  randconfig-r043-20230205
arm                  randconfig-r046-20230205
arc                  randconfig-r043-20230206
x86_64                           rhel-8.3-syz
riscv                randconfig-r042-20230206
x86_64                         rhel-8.3-kunit
s390                 randconfig-r044-20230206
m68k                             allyesconfig
x86_64                           rhel-8.3-kvm
m68k                             allmodconfig
arc                              allyesconfig
i386                             allyesconfig
alpha                            allyesconfig
arm64                            allyesconfig
arm                              allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
sh                               allmodconfig
mips                             allyesconfig
powerpc                          allmodconfig

clang tested configs:
x86_64                        randconfig-a001
x86_64                        randconfig-a003
hexagon              randconfig-r041-20230205
riscv                randconfig-r042-20230205
x86_64                        randconfig-a005
hexagon              randconfig-r045-20230206
hexagon              randconfig-r041-20230206
arm                  randconfig-r046-20230206
hexagon              randconfig-r045-20230205
s390                 randconfig-r044-20230205
i386                 randconfig-a002-20230206
i386                 randconfig-a004-20230206
i386                 randconfig-a003-20230206
i386                 randconfig-a001-20230206
i386                 randconfig-a005-20230206
i386                 randconfig-a006-20230206
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
