Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82486678DDD
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Jan 2023 03:05:50 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C9364018E;
	Tue, 24 Jan 2023 02:05:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C9364018E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id H3tt4FHm6kj6; Tue, 24 Jan 2023 02:05:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F4A94049D;
	Tue, 24 Jan 2023 02:05:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F4A94049D
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DB5FA1BF391
 for <devel@linuxdriverproject.org>; Tue, 24 Jan 2023 02:05:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id B497181FEB
 for <devel@linuxdriverproject.org>; Tue, 24 Jan 2023 02:05:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B497181FEB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kLWeX2HxPrDZ for <devel@linuxdriverproject.org>;
 Tue, 24 Jan 2023 02:05:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8EBDE81F82
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8EBDE81F82
 for <devel@driverdev.osuosl.org>; Tue, 24 Jan 2023 02:05:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="388560718"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="388560718"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2023 18:05:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10599"; a="639419098"
X-IronPort-AV: E=Sophos;i="5.97,241,1669104000"; d="scan'208";a="639419098"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 23 Jan 2023 18:05:32 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pK8gl-00062q-1b;
 Tue, 24 Jan 2023 02:05:31 +0000
Date: Tue, 24 Jan 2023 10:05:24 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 0b2a1a3938aad80fb19cb53cbbd4679eeb37e3a8
Message-ID: <63cf3ce4.urydTh4NCY/agMVQ%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674525942; x=1706061942;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=YRecFXxVMGmOQPKRu4dgG42s/YO9ioCXjOSSWmsNcZM=;
 b=JY9pNdmwi81IGF5sZge3/o0MdLqYSeSuM4yaZPISJhRnfecf/D+y+BOj
 IA6oxHg+MMDY4GxG5u3WiUqA85awerYnA6/PQDGcUxuP7WXUAcrKd5OIs
 STabXtLJApLfhwPkL4ktteYlLsBUDo28zYKnWM5oymswDyZun1U5lsekf
 A7shZ1zBzywGtNFXwxrVhzLdJCCQaOTjgGG34kJZeLIa0o2Dj8qlcqiiY
 LJO2OUj0lJdPvKokONyVmN38dXX+0iZsl4mF03j3mhgx/91owBuU8sQha
 r+DwsFReCWp4cHCfNrha0DhTmQGaLLB2XHFSHv5CayEomtUVvCLoZl0XW
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JY9pNdmw
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
branch HEAD: 0b2a1a3938aad80fb19cb53cbbd4679eeb37e3a8  driver core: class: Clear private pointer on registration failures

elapsed time: 720m

configs tested: 66
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
i386                 randconfig-a004-20230123
i386                 randconfig-a003-20230123
i386                 randconfig-a002-20230123
i386                 randconfig-a001-20230123
i386                 randconfig-a005-20230123
i386                 randconfig-a006-20230123
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
powerpc                           allnoconfig
arc                                 defconfig
alpha                               defconfig
s390                                defconfig
s390                             allmodconfig
ia64                             allmodconfig
sh                               allmodconfig
i386                                defconfig
x86_64               randconfig-a002-20230123
x86_64               randconfig-a001-20230123
x86_64               randconfig-a004-20230123
mips                             allyesconfig
x86_64               randconfig-a003-20230123
powerpc                          allmodconfig
x86_64               randconfig-a005-20230123
x86_64               randconfig-a006-20230123
s390                             allyesconfig
x86_64                              defconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
arc                  randconfig-r043-20230123
x86_64                               rhel-8.3
arm                                 defconfig
arm                  randconfig-r046-20230123
arm64                            allyesconfig
i386                             allyesconfig
arm                              allyesconfig
x86_64                           allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf

clang tested configs:
hexagon              randconfig-r041-20230123
i386                 randconfig-a012-20230123
hexagon              randconfig-r045-20230123
i386                 randconfig-a013-20230123
x86_64                          rhel-8.3-rust
i386                 randconfig-a011-20230123
i386                 randconfig-a014-20230123
riscv                randconfig-r042-20230123
s390                 randconfig-r044-20230123
i386                 randconfig-a016-20230123
i386                 randconfig-a015-20230123
x86_64               randconfig-a013-20230123
x86_64               randconfig-a011-20230123
x86_64               randconfig-a012-20230123
x86_64               randconfig-a014-20230123
x86_64               randconfig-a015-20230123
x86_64               randconfig-a016-20230123
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
powerpc                  mpc885_ads_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
