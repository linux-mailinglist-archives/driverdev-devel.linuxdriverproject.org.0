Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A297690147
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Feb 2023 08:33:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 72E2E60B2A;
	Thu,  9 Feb 2023 07:33:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72E2E60B2A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rHfO75hTv1CJ; Thu,  9 Feb 2023 07:33:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3706760AE4;
	Thu,  9 Feb 2023 07:33:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3706760AE4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A54CD1BF3A7
 for <devel@linuxdriverproject.org>; Thu,  9 Feb 2023 07:33:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 7EFAC406E0
 for <devel@linuxdriverproject.org>; Thu,  9 Feb 2023 07:33:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EFAC406E0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id v2wMKXP5ZCKs for <devel@linuxdriverproject.org>;
 Thu,  9 Feb 2023 07:33:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3DD6640580
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3DD6640580
 for <devel@driverdev.osuosl.org>; Thu,  9 Feb 2023 07:33:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="327731863"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="327731863"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 23:33:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="776373592"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="776373592"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 08 Feb 2023 23:33:31 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQ1Qu-0004uw-2Z;
 Thu, 09 Feb 2023 07:33:28 +0000
Date: Thu, 09 Feb 2023 15:33:12 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const-2] BUILD SUCCESS
 b54f8711b3176de26fdc4ad8db1e21ba5d4f6980
Message-ID: <63e4a1b8.oYPop3q0KQmY2fht%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675928015; x=1707464015;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=yhl2HhWLz5IHDgByDTFbitaeWLXdJfhPQeVdlj5tNYo=;
 b=knilMAXQJnqMX9FnrndEJHw79eKtStXgBP2UfyOcSZOSf9OYfbI93Gra
 NUVcTUJyGq9WD359rFNLnKOSrwuGH1GDsRF47uLHnqsIpCrHakqrpO3MM
 Xi8JfT2I+gDZNf/8X80XvdDdX0diaRFBABPBqcSp9dVH4iOkifhN57/XA
 Kk5TFVQVyw3ZIfg63gDWILWr0aKgktH5AFbgNIrzNllvg3vbQwYW/YiwD
 zSXfGRKwp2wei+LrLmwBhzVeHBGefRE2dYx56xaA3SzBkdULYj68BMytj
 dQehgAyfwUzmXMlbo6KdNY+8r67cn0ow5ClJ+idsrwfuUvkjdaGU6IKZu
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=knilMAXQ
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const-2
branch HEAD: b54f8711b3176de26fdc4ad8db1e21ba5d4f6980  driver core: bus: add bus_get_dev_root() function

elapsed time: 721m

configs tested: 56
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
powerpc                           allnoconfig
arc                                 defconfig
s390                             allmodconfig
x86_64                            allnoconfig
alpha                               defconfig
i386                          randconfig-a001
i386                          randconfig-a003
um                             i386_defconfig
s390                                defconfig
um                           x86_64_defconfig
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
s390                             allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a013
x86_64                        randconfig-a011
i386                          randconfig-a005
x86_64                        randconfig-a004
x86_64                              defconfig
sh                               allmodconfig
arm                                 defconfig
x86_64                        randconfig-a015
ia64                             allmodconfig
i386                          randconfig-a014
x86_64                        randconfig-a002
i386                                defconfig
x86_64                        randconfig-a006
i386                          randconfig-a012
i386                          randconfig-a016
m68k                             allyesconfig
m68k                             allmodconfig
mips                             allyesconfig
arm64                            allyesconfig
powerpc                          allmodconfig
x86_64                    rhel-8.3-kselftests
arm                              allyesconfig
arc                              allyesconfig
x86_64                          rhel-8.3-func
alpha                            allyesconfig
i386                             allyesconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig

clang tested configs:
i386                          randconfig-a004
i386                          randconfig-a002
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                          randconfig-a013
x86_64                        randconfig-a016
i386                          randconfig-a006
i386                          randconfig-a011
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a015
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
