Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A939013B8
	for <lists+driverdev-devel@lfdr.de>; Sat,  8 Jun 2024 23:58:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43C0340024;
	Sat,  8 Jun 2024 21:58:31 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0xHTDVxCr2b0; Sat,  8 Jun 2024 21:58:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5426B4018B
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5426B4018B;
	Sat,  8 Jun 2024 21:58:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A683B1BF405
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2024 21:58:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 938948331B
 for <devel@linuxdriverproject.org>; Sat,  8 Jun 2024 21:58:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GPtw8qxAimaI for <devel@linuxdriverproject.org>;
 Sat,  8 Jun 2024 21:58:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 8A52683131
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8A52683131
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8A52683131
 for <devel@driverdev.osuosl.org>; Sat,  8 Jun 2024 21:58:28 +0000 (UTC)
X-CSE-ConnectionGUID: n7Dlfk4zTVWrMQdqaZR0bw==
X-CSE-MsgGUID: DxsKmDVYSbm+YHvJJKiMrw==
X-IronPort-AV: E=McAfee;i="6600,9927,11097"; a="25689755"
X-IronPort-AV: E=Sophos;i="6.08,224,1712646000"; d="scan'208";a="25689755"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2024 14:58:27 -0700
X-CSE-ConnectionGUID: XLVEaasxToWjEPVqn8yr5g==
X-CSE-MsgGUID: yLm34IPZQwuFji2wrqj5Hw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,224,1712646000"; d="scan'208";a="39103990"
Received: from lkp-server01.sh.intel.com (HELO 8967fbab76b3) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 08 Jun 2024 14:58:26 -0700
Received: from kbuild by 8967fbab76b3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sG44u-0000XK-0z;
 Sat, 08 Jun 2024 21:58:24 +0000
Date: Sun, 09 Jun 2024 05:58:23 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:driver-core-testing] BUILD SUCCESS
 bd7246a19ed85451befc3c8fc6038a7d955e7d5f
Message-ID: <202406090522.U2NUZMoL-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717883908; x=1749419908;
 h=date:from:to:cc:subject:message-id;
 bh=EM75BP6cKAkL3/d5D+vVzN8f8hnzzPDDVwZKByEgvzo=;
 b=dgk+HbMHvwjakJ1q2E6lkFA0akDwhRoJKOoE+EBIvQ2AXmB6OmV2ehqO
 df0DJyHsAidgfxlj/osiAK4eK073PTuQlk4upgW3tS+wlhEWmd4+GW5Y3
 xY/bCt8sSTwaNX+MTZKL8UGScR1zOk/vq4L8XCIbdccSjOMqdOqYpOSeA
 jp8pyDDCSw31MUV/O9wZXoXW6GETSwzhiiZLNfH1TJ12icLrgM4J8LJBd
 IhyHj7pCcaJ2BJP2o6HjHwJGddwQR9fXEurL+DBCtxHfZqenvt6gaIYRf
 LhEcSLw9LO8yVE6js+vUmKvLSP2Vh7tfRajQdHeZZNt2nlYeOfYTuQ40b
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dgk+HbMH
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
branch HEAD: bd7246a19ed85451befc3c8fc6038a7d955e7d5f  Merge tag 'platform-remove-void-step-b' of https://git.kernel.org/pub/scm/linux/kernel/git/ukleinek/linux into driver-core-next

elapsed time: 1607m

configs tested: 25
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
hexagon                          allmodconfig   clang
hexagon                          allyesconfig   clang
openrisc                          allnoconfig   gcc  
openrisc                            defconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   clang
s390                              allnoconfig   clang
s390                                defconfig   clang
sh                                allnoconfig   gcc  
sh                                  defconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                               defconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   gcc  
um                                  defconfig   clang
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   clang
xtensa                            allnoconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
