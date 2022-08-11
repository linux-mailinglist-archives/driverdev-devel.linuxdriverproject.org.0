Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FCB58F553
	for <lists+driverdev-devel@lfdr.de>; Thu, 11 Aug 2022 02:47:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3329E60FD3;
	Thu, 11 Aug 2022 00:47:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3329E60FD3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J6wrh6zXNoC2; Thu, 11 Aug 2022 00:47:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id D532860EC2;
	Thu, 11 Aug 2022 00:47:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D532860EC2
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 540C61C1148
 for <devel@linuxdriverproject.org>; Thu, 11 Aug 2022 00:47:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 35ED940B67
 for <devel@linuxdriverproject.org>; Thu, 11 Aug 2022 00:47:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 35ED940B67
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PaX_63-FLvuC for <devel@linuxdriverproject.org>;
 Thu, 11 Aug 2022 00:47:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 92FED4011F
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 92FED4011F
 for <devel@driverdev.osuosl.org>; Thu, 11 Aug 2022 00:47:15 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="289982200"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="289982200"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 17:47:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="781419553"
Received: from lkp-server02.sh.intel.com (HELO 5d6b42aa80b8) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 10 Aug 2022 17:47:13 -0700
Received: from kbuild by 5d6b42aa80b8 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oLwLw-0000uw-2a;
 Thu, 11 Aug 2022 00:47:12 +0000
Date: Thu, 11 Aug 2022 08:46:16 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 2aab1569089da803ba75b05b2ef9d53a1e290d68
Message-ID: <62f45158.jVMbyQ3ItbjDzrv2%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660178835; x=1691714835;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=b0ocDYP6rTw64UMb97E6b1TgjwMoHPQfUWE14ag5CKM=;
 b=U0+SaRaSSdxvyr8t2YzT4pt58/rOjRCZoRyIIazQ9/QHrY8lpcF1AXBJ
 aWYv75UuPUe+IH2F/OYLWeChE2tcX5HRXdN9qBbCgoR/HrPy30TFv9eGy
 h7FMa2Lv0ZVijv50d73SmNYyeME0UHj4UqU4gqRMfRpeLpo5WWq1snDIH
 gAM9+kKysUdvyCpSUrkZj+ZZubOCY/Hc5t2JBmz3CvTZ2l8HZsBq6pVQ2
 jh0fq5IOYIFe19eeJKn9Kk0ijMtLU26o3HeLfLgl9hqh8RDSd3Bn2/Kcz
 KBGxAvKtc2k6FvJ8qJuhI/xmrXn6Z9eBGfipmXE1/K9SIAlgJEoofQVZK
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U0+SaRaS
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git readfile
branch HEAD: 2aab1569089da803ba75b05b2ef9d53a1e290d68  readfile.2: new page describing readfile(2)

elapsed time: 719m

configs tested: 53
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                              defconfig
x86_64                               rhel-8.3
i386                          randconfig-a014
i386                          randconfig-a012
um                             i386_defconfig
x86_64                        randconfig-a013
um                           x86_64_defconfig
x86_64                        randconfig-a011
x86_64                           allyesconfig
i386                          randconfig-a016
i386                                defconfig
powerpc                          allmodconfig
arc                              allyesconfig
mips                             allyesconfig
x86_64                        randconfig-a002
powerpc                           allnoconfig
sh                               allmodconfig
alpha                            allyesconfig
x86_64                        randconfig-a004
arm                                 defconfig
m68k                             allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a015
m68k                             allmodconfig
arc                  randconfig-r043-20220810
arm                              allyesconfig
riscv                randconfig-r042-20220810
s390                 randconfig-r044-20220810
arm64                            allyesconfig
i386                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
i386                          randconfig-a005
ia64                             allmodconfig

clang tested configs:
i386                          randconfig-a013
i386                          randconfig-a011
x86_64                        randconfig-a012
i386                          randconfig-a015
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r041-20220810
hexagon              randconfig-r045-20220810
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
