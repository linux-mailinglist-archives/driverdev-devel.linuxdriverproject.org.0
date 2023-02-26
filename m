Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E876A2E47
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Feb 2023 06:02:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7364440604;
	Sun, 26 Feb 2023 05:01:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7364440604
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oaj2lVI7T6uk; Sun, 26 Feb 2023 05:01:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 49762400DD;
	Sun, 26 Feb 2023 05:01:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 49762400DD
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 600D21BF5E0
 for <devel@linuxdriverproject.org>; Sun, 26 Feb 2023 05:01:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 417CE400C5
 for <devel@linuxdriverproject.org>; Sun, 26 Feb 2023 05:01:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 417CE400C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AGBu_tIwDNXy for <devel@linuxdriverproject.org>;
 Sun, 26 Feb 2023 05:01:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 68E82400DD
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 68E82400DD
 for <devel@driverdev.osuosl.org>; Sun, 26 Feb 2023 05:01:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10632"; a="419952363"
X-IronPort-AV: E=Sophos;i="5.97,329,1669104000"; d="scan'208";a="419952363"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2023 21:01:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10632"; a="847393412"
X-IronPort-AV: E=Sophos;i="5.97,329,1669104000"; d="scan'208";a="847393412"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 25 Feb 2023 21:01:49 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pW9AS-0003Zz-36;
 Sun, 26 Feb 2023 05:01:48 +0000
Date: Sun, 26 Feb 2023 13:01:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 f003e90bbe28f94d6036009c8cabf8b5c8c4002d
Message-ID: <63fae79b.VCAyCTgShsU57Sz1%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677387711; x=1708923711;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=UAnqgXuq2qcgirrMBMVeaDdETGvrmLN6URyVShWhCj4=;
 b=fxL1uLlfKHGQmJfJEVT1oE0mlc+N0cMR9ZyH/bgvaiQNJloyJIgz7M33
 cfZNc5EWqAa2axpbf2D5DfS82IxKCTbAS9iQJZHZz5EQVabEv3EJAUk/G
 De+p266h66XMCI8Lxcmr7uFsgf1IYdCeaQYE7iFwuf2ErAshUBwdo5Jbc
 iqHHHMcuI5vfDx2gb1vay+W1GAleaAbdX+cekgrEsfiLNFjdiOS4JhGbz
 Cg7O+jNBkehdEPuB6BTOy1pOrdnfOBAL080EV2nAoVSbmsdDd78R8B1uz
 RDKhQ0ccDzSHpTPe7EX3GBtU1Y6YIfhID8+3F5992RVVs59KOZWIGgXsq
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fxL1uLlf
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: f003e90bbe28f94d6036009c8cabf8b5c8c4002d  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

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
