Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F31806A2E46
	for <lists+driverdev-devel@lfdr.de>; Sun, 26 Feb 2023 06:01:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7FA964038E;
	Sun, 26 Feb 2023 05:01:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7FA964038E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pNeGB-L57brM; Sun, 26 Feb 2023 05:01:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 44CF0400C5;
	Sun, 26 Feb 2023 05:01:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 44CF0400C5
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 300661BF5E0
 for <devel@linuxdriverproject.org>; Sun, 26 Feb 2023 05:01:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0AAA4401AD
 for <devel@linuxdriverproject.org>; Sun, 26 Feb 2023 05:01:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0AAA4401AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 1U4KNfvjEKN3 for <devel@linuxdriverproject.org>;
 Sun, 26 Feb 2023 05:01:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 193A4400C5
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 193A4400C5
 for <devel@driverdev.osuosl.org>; Sun, 26 Feb 2023 05:01:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10632"; a="419952361"
X-IronPort-AV: E=Sophos;i="5.97,329,1669104000"; d="scan'208";a="419952361"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2023 21:01:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10632"; a="847393409"
X-IronPort-AV: E=Sophos;i="5.97,329,1669104000"; d="scan'208";a="847393409"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 25 Feb 2023 21:01:49 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pW9AS-0003Zf-25;
 Sun, 26 Feb 2023 05:01:48 +0000
Date: Sun, 26 Feb 2023 13:01:06 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD REGRESSION
 f3175b4c21c5aad39a313d86a5e551b1530f2555
Message-ID: <63fae792.neYn58KmcVshcE6E%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677387711; x=1708923711;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Q2R67GAS1i/ok9h83z+i6WQulSbTVyiOcjJEMNzK3dA=;
 b=AXkR1hqh8Txl/VaqPHceH/45iKoe0zZmWl4xtGkB8ybw8ucsmAUGWAEO
 eusK46Pa8vdAr1Dwjw9YNTYrxgeIY2dJseYnGwFBlgSctJvaXEb16sAQN
 eUqI3rcGqwU7RvHm4tPUOtWYeypQap5TTxBy1KTRbU713BMZ8QNNm7AyH
 etFpGcaQYSETRLyjFVpuwFXZo1EYQZiIeCOSnwTQOmEUNGlMMNL+AFXvy
 1Aco6fV7Tvr2IXVtST+64sN/n97cKiCIXoCqx92M8KjIYMvmaIQUFdcQV
 vkl+vOGhWdsxYYBPOjeuho5lJ9/TJmGS/xiweuhtrpaaRpdFpnLUbatwa
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AXkR1hqh
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git bus_cleanup
branch HEAD: f3175b4c21c5aad39a313d86a5e551b1530f2555  FIXME: driver core: platform: make platform_bus_type constant

Error/Warning reports:

https://lore.kernel.org/oe-kbuild-all/202302260511.Z7Q7OlDG-lkp@intel.com

Error/Warning: (recently discovered and may have been fixed)

drivers/cpufreq/amd-pstate.c:1302:75: error: 'struct bus_type' has no member named 'dev_root'

Error/Warning ids grouped by kconfigs:

gcc_recent_errors
`-- i386-allyesconfig
    `-- drivers-cpufreq-amd-pstate.c:error:struct-bus_type-has-no-member-named-dev_root

elapsed time: 726m

configs tested: 19
configs skipped: 3

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
