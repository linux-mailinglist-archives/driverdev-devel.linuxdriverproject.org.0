Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADF36A2E44
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Feb 2023 06:01:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8C3F7400CC;
	Sun, 26 Feb 2023 05:00:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8C3F7400CC
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZnEfmaAK_tub; Sun, 26 Feb 2023 05:00:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 66F78400C5;
	Sun, 26 Feb 2023 05:00:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 66F78400C5
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB26A1BF5E0
 for <devel@linuxdriverproject.org>; Sun, 26 Feb 2023 05:00:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B2CD440937
 for <devel@linuxdriverproject.org>; Sun, 26 Feb 2023 05:00:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2CD440937
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yf4WdgXWua9f for <devel@linuxdriverproject.org>;
 Sun, 26 Feb 2023 05:00:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E9A24091C
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E9A24091C
 for <devel@driverdev.osuosl.org>; Sun, 26 Feb 2023 05:00:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10632"; a="333726228"
X-IronPort-AV: E=Sophos;i="5.97,329,1669104000"; d="scan'208";a="333726228"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2023 21:00:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10632"; a="673339106"
X-IronPort-AV: E=Sophos;i="5.97,329,1669104000"; d="scan'208";a="673339106"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 25 Feb 2023 21:00:49 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pW99U-0003ZT-1p;
 Sun, 26 Feb 2023 05:00:48 +0000
Date: Sun, 26 Feb 2023 13:00:37 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix] BUILD SUCCESS
 18bd4569cf5392f08212812cb6f479ae26f9a16d
Message-ID: <63fae775.nM93C/553e0WaEb5%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677387651; x=1708923651;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=/SP8olqe1ZMGt1ToWrd1i/kVT3vBzGVnn8hy2c0a10w=;
 b=CA2ClFOMNg5o/KYW+Zkx8+A+MtdnEeR3JMQ4i/QYWQt4SiGeNJaO59D2
 hsBGEOiCYFiBzyt7Z1TZpj44kc7ExV+jPjSGWoU77bDMXxBUDb6alvv91
 SEcCvfc6PBnwLAu5DGDACaXv9tqnf/inuVSnKGxeg4MtGDgH5ygvtrCEK
 1yHoYk54jqJOHGR9X06iWnhgEIOcnYqpdi5oAKBQwuJU6Yv1WVfW4y1hP
 2VdGc1Fm2XY7/NhXxq+l4JC7jQC+IvT+jc9hrpyva9Z2zTbUfAXhFZxNm
 bP/8Bs62mhcP7BsUbDKUC7Wmly2zh4L0TYggBUEQSlQo2/gns2waonkpO
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CA2ClFOM
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_lookup_fix
branch HEAD: 18bd4569cf5392f08212812cb6f479ae26f9a16d  mtd: spi-nor: fix memory leak when using debugfs_lookup()

elapsed time: 724m

configs tested: 19
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
clang                                   alpha   defconfig
gcc                                       arc   defconfig
gcc                                       arm   defconfig
gcc                                     arm64   defconfig
gcc                                      csky   defconfig
gcc                                      i386   defconfig
gcc                                      ia64   defconfig
gcc                                 loongarch   defconfig
gcc                                      m68k   defconfig
gcc                                     nios2   defconfig
gcc                                    parisc   defconfig
gcc                                  parisc64   defconfig
gcc                                     riscv   defconfig
gcc                                     riscv   rv32_defconfig
gcc                                      s390   defconfig
gcc                                     sparc   defconfig
gcc                                        um   i386_defconfig
gcc                                        um   x86_64_defconfig
gcc                                    x86_64   defconfig
gcc                                                  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
