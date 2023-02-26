Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB65A6A2E45
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Feb 2023 06:01:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 88E55401AD;
	Sun, 26 Feb 2023 05:00:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 88E55401AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xGMzveBaMnnA; Sun, 26 Feb 2023 05:00:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6E916400C5;
	Sun, 26 Feb 2023 05:00:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6E916400C5
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 055261BF5E0
 for <devel@linuxdriverproject.org>; Sun, 26 Feb 2023 05:00:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CD12140939
 for <devel@linuxdriverproject.org>; Sun, 26 Feb 2023 05:00:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CD12140939
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Umj58aVZpzE for <devel@linuxdriverproject.org>;
 Sun, 26 Feb 2023 05:00:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B0EA840934
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B0EA840934
 for <devel@driverdev.osuosl.org>; Sun, 26 Feb 2023 05:00:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10632"; a="333726230"
X-IronPort-AV: E=Sophos;i="5.97,329,1669104000"; d="scan'208";a="333726230"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2023 21:00:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10632"; a="673339108"
X-IronPort-AV: E=Sophos;i="5.97,329,1669104000"; d="scan'208";a="673339108"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga002.jf.intel.com with ESMTP; 25 Feb 2023 21:00:49 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pW99U-0003ZX-1z;
 Sun, 26 Feb 2023 05:00:48 +0000
Date: Sun, 26 Feb 2023 13:00:44 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 6574bac68b4736a489daa6071c26f9a8730d87f8
Message-ID: <63fae77c.16FHS4R5dXxneXmt%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677387651; x=1708923651;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=DhWWHvOx7jupSMOXh8Q+SZjhSSxqs2C4xC7cW1YTAsU=;
 b=SLz1oqMWapBXt3aU0F25wqlSpbhKwk4yv05FJvcpPFMmLJ8RwUvlhWxA
 3nn+LVk6BOK9Lht8p0e1uLWoxb+Bz3WjvYZa57uL6m2IRY2uS/1XXD9hT
 meNoY+MdLjhnRb0q1R+L0FGqq1Rn6NpkzSlq+hUeaDr304tmYxgYkPTDj
 hvMTOVnqJ+tZVXy0b8MLxsAksXlZPDwTWfJ9dYTrl/sWXXSX2iFLKaCth
 Edyjg2DepCSvGQ5yOp9MpuByj0t//lX7jaV+1Ab1hjuB997ExjIL7gVC7
 hhzfv44U6+MKjpNtEHerYem2FMKtr6qu0bAqQml5HSKpo+3XerqytnbUo
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SLz1oqMW
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git class_cleanup
branch HEAD: 6574bac68b4736a489daa6071c26f9a8730d87f8  driver core: device: make device_create*() take a const struct class *

elapsed time: 725m

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
