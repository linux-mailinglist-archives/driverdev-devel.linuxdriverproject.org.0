Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 927C6672998
	for <lists+driverdev-devel@lfdr.de>; Wed, 18 Jan 2023 21:43:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CFA39401F8;
	Wed, 18 Jan 2023 20:43:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CFA39401F8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8Lfyhg0daoRW; Wed, 18 Jan 2023 20:43:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A03E440146;
	Wed, 18 Jan 2023 20:43:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A03E440146
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 55C9A1BF28B
 for <devel@linuxdriverproject.org>; Wed, 18 Jan 2023 20:43:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3EC3A6108F
 for <devel@linuxdriverproject.org>; Wed, 18 Jan 2023 20:43:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3EC3A6108F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HweQUs4ELgEt for <devel@linuxdriverproject.org>;
 Wed, 18 Jan 2023 20:43:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3F8D66107E
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3F8D66107E
 for <devel@driverdev.osuosl.org>; Wed, 18 Jan 2023 20:43:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="389593105"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="389593105"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 12:43:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="609804853"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="609804853"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 18 Jan 2023 12:43:14 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pIFH6-0000hQ-3C;
 Wed, 18 Jan 2023 20:43:12 +0000
Date: Thu, 19 Jan 2023 04:42:21 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 eee5580c42d0e87f23057132e7fd8a0c799fead9
Message-ID: <63c859ad.Wk/q6aD6Xbrd30KS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674074596; x=1705610596;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=XEgVIB/138gZZ7kzjl/2M0ZRMefvPYT/w4jc1PrNbgE=;
 b=cBWlc8nevZcnpcgMGeuPm3QxqAyojJR98h8FbHU2FW+eHMQ300MYJ80b
 zDsVFlkwug6jHSMNoJE/uMhr3Iaflvcb943frjUBrlFmEQft+YGHp6yjY
 N8Udv5PPijw1cCPBnrln9UORArpToHJ7Cm7qfKEhvbBpLGFs98km6D/pi
 iu/kNsyAmPurfinuwRthHOuSQb2msKQ6af8J0yKDKFycpLthumWh8QKTh
 4CJBcfYTUbIVgfhM6O95bYRBDNZ9goTAKCN8vpTkoW7LLIxpCI1X9An60
 1YS8rzGcRUEKk+8Chtc6Mxly6oXGiRkFZH+eNwckkDlOJghat0xCmYJyd
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=cBWlc8ne
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
branch HEAD: eee5580c42d0e87f23057132e7fd8a0c799fead9  bus: step 1

elapsed time: 729m

configs tested: 57
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
arm                                 defconfig
powerpc                           allnoconfig
arc                                 defconfig
alpha                               defconfig
i386                                defconfig
x86_64                              defconfig
s390                 randconfig-r044-20230118
arm64                            allyesconfig
x86_64                               rhel-8.3
x86_64                           rhel-8.3-syz
s390                                defconfig
sh                               allmodconfig
arm                              allyesconfig
s390                             allmodconfig
x86_64                         rhel-8.3-kunit
i386                 randconfig-a014-20230116
x86_64                           rhel-8.3-kvm
i386                 randconfig-a013-20230116
mips                             allyesconfig
i386                 randconfig-a012-20230116
i386                 randconfig-a011-20230116
i386                 randconfig-a015-20230116
x86_64                           allyesconfig
x86_64                           rhel-8.3-bpf
powerpc                          allmodconfig
s390                             allyesconfig
i386                 randconfig-a016-20230116
x86_64                        randconfig-a013
i386                             allyesconfig
x86_64                        randconfig-a011
ia64                             allmodconfig
x86_64                        randconfig-a015
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
alpha                            allyesconfig
arc                              allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig

clang tested configs:
i386                 randconfig-a002-20230116
x86_64               randconfig-a001-20230116
i386                 randconfig-a004-20230116
x86_64               randconfig-a003-20230116
x86_64               randconfig-a002-20230116
i386                 randconfig-a003-20230116
x86_64               randconfig-a004-20230116
x86_64                        randconfig-a014
i386                 randconfig-a005-20230116
x86_64               randconfig-a005-20230116
i386                 randconfig-a001-20230116
x86_64                        randconfig-a016
x86_64               randconfig-a006-20230116
x86_64                        randconfig-a012
i386                 randconfig-a006-20230116
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
