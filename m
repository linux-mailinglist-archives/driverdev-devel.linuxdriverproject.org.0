Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 856D7917288
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Jun 2024 22:31:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F52D60665;
	Tue, 25 Jun 2024 20:31:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZTDEnbHw1mEG; Tue, 25 Jun 2024 20:31:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F9FF6066A
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3F9FF6066A;
	Tue, 25 Jun 2024 20:31:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 658241BF863
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2024 20:31:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 50CF140297
 for <devel@linuxdriverproject.org>; Tue, 25 Jun 2024 20:31:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Ch3uNA_fqtIG for <devel@linuxdriverproject.org>;
 Tue, 25 Jun 2024 20:31:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D2B4D400FC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D2B4D400FC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D2B4D400FC
 for <devel@driverdev.osuosl.org>; Tue, 25 Jun 2024 20:31:50 +0000 (UTC)
X-CSE-ConnectionGUID: Z0daD+ozQ7ePWXx2ISkKRQ==
X-CSE-MsgGUID: LHRoSRnxR8KsywGPgQtdog==
X-IronPort-AV: E=McAfee;i="6700,10204,11114"; a="20272011"
X-IronPort-AV: E=Sophos;i="6.08,264,1712646000"; d="scan'208";a="20272011"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2024 13:31:49 -0700
X-CSE-ConnectionGUID: PmK3Q1olTOiOV+Ese2mYEQ==
X-CSE-MsgGUID: JUv0nAbtTyCdyi1JNz+Lvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,264,1712646000"; d="scan'208";a="81298958"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 25 Jun 2024 13:31:47 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sMCpN-000Ehq-1N;
 Tue, 25 Jun 2024 20:31:45 +0000
Date: Wed, 26 Jun 2024 04:30:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD REGRESSION
 921190437a4827667cceef10202b2150571ebe5c
Message-ID: <202406260450.8GVzgJMr-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719347511; x=1750883511;
 h=date:from:to:cc:subject:message-id;
 bh=lqY8jnBJanBHJypkKBnbbaTWXXvzjzDUarvKNo7tMzM=;
 b=UlFAw4t5fz4jDaNJt20bXYhpvLUwLCyheKbvg7sov+ex2NazE6Z8OMZu
 jCDVSAL3lYeXxzB29qyy2PzYp5A8OwZY1Q6QCLYXWFI+od+YQlwdEsH9X
 C/QC0/V+XCF3A5MK92f0/c2hMTNu3wKiDQG58zTxnmAYp4iFXgveC4KVs
 t5gEW8BOFn8GO4Be2UHe6rj4XpUVt0yzrp9S7Sjjvqc6teuf2rgwKISrC
 zc3OYr1kcwVtNN81RCKedxUXIIFifNDz2j4y+2iKdMhtSl2mMWAzKmdPI
 ficVCPLv+sSkagcVLitxugEoPIr4u6PfEI9T5fP62UJbg8NgubUyWNIZx
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=UlFAw4t5
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 921190437a4827667cceef10202b2150571ebe5c  staging: vc04_services: Update testing instructions

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202406250759.FnxzD3PK-lkp@intel.com
https://lore.kernel.org/oe-kbuild-all/202406250858.L8rJMHQm-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/staging/rtl8192e/rtl8192e/rtl_pci.c:31:6: error: conflicting types for 'rtl92e_check_adapter'; have 'bool(struct pci_dev *, struct net_device *)' {aka '_Bool(struct pci_dev *, struct net_device *)'}
drivers/staging/rtl8192e/rtl8192e/rtl_pci.h:16:56: warning: 'struct net_device' declared inside parameter list will not be visible outside of this definition or declaration
drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:2553:24: warning: variable 'pwdev_priv' set but not used [-Wunused-but-set-variable]

Error/Warning ids grouped by kconfigs:

recent_errors
|-- arm64-randconfig-001-20240625
|   |-- drivers-staging-rtl8192e-rtl8192e-rtl_pci.c:error:conflicting-types-for-rtl92e_check_adapter-have-bool(struct-pci_dev-struct-net_device-)-aka-_Bool(struct-pci_dev-struct-net_device-)
|   |-- drivers-staging-rtl8192e-rtl8192e-rtl_pci.h:warning:struct-net_device-declared-inside-parameter-list-will-not-be-visible-outside-of-this-definition-or-declaration
|   `-- drivers-staging-rtl8723bs-os_dep-ioctl_cfg80211.c:warning:variable-pwdev_priv-set-but-not-used
|-- i386-allyesconfig
|   `-- drivers-staging-rtl8723bs-os_dep-ioctl_cfg80211.c:warning:variable-pwdev_priv-set-but-not-used
|-- loongarch-allyesconfig
|   `-- drivers-staging-rtl8723bs-os_dep-ioctl_cfg80211.c:warning:variable-pwdev_priv-set-but-not-used
`-- x86_64-buildonly-randconfig-004-20240625
    `-- drivers-staging-rtl8723bs-os_dep-ioctl_cfg80211.c:warning:variable-pwdev_priv-set-but-not-used

elapsed time: 1795m

configs tested: 56
configs skipped: 0

tested configs:
alpha                             allnoconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                   randconfig-001-20240625   gcc-13.2.0
arc                   randconfig-002-20240625   gcc-13.2.0
arm                   randconfig-003-20240625   gcc-13.2.0
arm                   randconfig-004-20240625   gcc-13.2.0
arm64                             allnoconfig   gcc-13.2.0
arm64                 randconfig-001-20240625   gcc-13.2.0
arm64                 randconfig-002-20240625   gcc-13.2.0
arm64                 randconfig-004-20240625   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                  randconfig-001-20240625   gcc-13.2.0
csky                  randconfig-002-20240625   gcc-13.2.0
i386         buildonly-randconfig-004-20240625   gcc-13
i386                  randconfig-001-20240625   gcc-13
i386                  randconfig-003-20240625   gcc-7
i386                  randconfig-006-20240625   gcc-13
i386                  randconfig-012-20240625   gcc-13
i386                  randconfig-015-20240625   gcc-12
i386                  randconfig-016-20240625   gcc-10
loongarch                         allnoconfig   gcc-13.2.0
loongarch             randconfig-001-20240625   gcc-13.2.0
loongarch             randconfig-002-20240625   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                 randconfig-001-20240625   gcc-13.2.0
nios2                 randconfig-002-20240625   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                randconfig-001-20240625   gcc-13.2.0
parisc                randconfig-002-20240625   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
powerpc               randconfig-002-20240625   gcc-13.2.0
powerpc               randconfig-003-20240625   gcc-13.2.0
powerpc64             randconfig-001-20240625   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
riscv                 randconfig-001-20240625   gcc-13.2.0
sh                                allnoconfig   gcc-13.2.0
sh                    randconfig-001-20240625   gcc-13.2.0
sh                    randconfig-002-20240625   gcc-13.2.0
sparc64               randconfig-001-20240625   gcc-13.2.0
sparc64               randconfig-002-20240625   gcc-13.2.0
x86_64       buildonly-randconfig-001-20240625   gcc-13
x86_64                randconfig-002-20240625   gcc-13
x86_64                randconfig-003-20240625   gcc-13
x86_64                randconfig-006-20240625   gcc-13
x86_64                randconfig-012-20240625   gcc-13
x86_64                randconfig-015-20240625   gcc-13
x86_64                randconfig-016-20240625   gcc-11
x86_64                randconfig-071-20240625   gcc-13
x86_64                randconfig-074-20240625   gcc-13
xtensa                            allnoconfig   gcc-13.2.0
xtensa                randconfig-001-20240625   gcc-13.2.0
xtensa                randconfig-002-20240625   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
