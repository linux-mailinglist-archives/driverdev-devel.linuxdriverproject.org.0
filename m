Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E186E34F5
	for <lists+driverdev-devel@lfdr.de>; Sun, 16 Apr 2023 06:30:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id CD6E14168A;
	Sun, 16 Apr 2023 04:30:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CD6E14168A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n0LOlsIiXXuJ; Sun, 16 Apr 2023 04:30:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7917F40526;
	Sun, 16 Apr 2023 04:30:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7917F40526
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1C15D1C3864
 for <devel@linuxdriverproject.org>; Sun, 16 Apr 2023 04:30:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 028DB8427C
 for <devel@linuxdriverproject.org>; Sun, 16 Apr 2023 04:30:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 028DB8427C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eJU4ulJamlEu for <devel@linuxdriverproject.org>;
 Sun, 16 Apr 2023 04:30:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E9C7D84266
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E9C7D84266
 for <devel@driverdev.osuosl.org>; Sun, 16 Apr 2023 04:30:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10681"; a="333492069"
X-IronPort-AV: E=Sophos;i="5.99,201,1677571200"; d="scan'208";a="333492069"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2023 21:30:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10681"; a="801685048"
X-IronPort-AV: E=Sophos;i="5.99,201,1677571200"; d="scan'208";a="801685048"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 15 Apr 2023 21:30:01 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pnu1Y-000bVu-2A;
 Sun, 16 Apr 2023 04:30:00 +0000
Date: Sun, 16 Apr 2023 12:29:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 86d3ad9684562cd3cee30f28d5976cd92e702473
Message-ID: <643b79b2.RRFJ/tWppNBvUQBS%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681619403; x=1713155403;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=dLFrAcYjKBawW0IR/zfAFWUZnS9OxXxmanPqgZ/gvJM=;
 b=HViFjO1hh0ITt9luBEntCbG9Ht3jtKkJbrLtHiVya9gwwdSsMfEba9Kc
 4scg2R2ob09WsTCEIxbpdgPKQ0zBkc39ycX0sV3EyYgRUVyx18CuZ7hcQ
 oOE4GwQ4PookDPMAXTLVfa7MYw1OaFyR/NoIwR4mog61As+HCiY2MWPIe
 TqVxQ3/ee37/oknkdqgT93CwgFjW0AaoFBpMK2wBCx9LLVoWbEAv2YQYX
 oUnNc5lvr0olawkTe/qGto6C4X5MLw9p7LxorkxtWxEV95PFRNDXZF3Oc
 BKvNjzTT4sYELwIH/QCoPY8dWiFG7CcVvcEsKn5CQRkdmS2/m5FKaOJE7
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HViFjO1h
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 86d3ad9684562cd3cee30f28d5976cd92e702473  staging: rtl8172: Add blank lines after declarations

elapsed time: 724m

configs tested: 120
configs skipped: 8

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha        buildonly-randconfig-r003-20230415   gcc  
alpha        buildonly-randconfig-r005-20230409   gcc  
alpha        buildonly-randconfig-r005-20230415   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r002-20230416   gcc  
alpha                randconfig-r033-20230416   gcc  
arc                              allyesconfig   gcc  
arc          buildonly-randconfig-r002-20230410   gcc  
arc          buildonly-randconfig-r005-20230410   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r016-20230416   gcc  
arc                  randconfig-r032-20230416   gcc  
arc                  randconfig-r043-20230416   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                  randconfig-r011-20230416   clang
arm64                            allyesconfig   gcc  
arm64        buildonly-randconfig-r004-20230416   clang
arm64                               defconfig   gcc  
arm64                randconfig-r001-20230416   clang
csky         buildonly-randconfig-r002-20230415   gcc  
csky         buildonly-randconfig-r005-20230414   gcc  
csky         buildonly-randconfig-r006-20230414   gcc  
csky                                defconfig   gcc  
hexagon      buildonly-randconfig-r006-20230409   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                 randconfig-a011-20230410   gcc  
i386                          randconfig-a011   clang
i386                 randconfig-a012-20230410   gcc  
i386                          randconfig-a012   gcc  
i386                 randconfig-a013-20230410   gcc  
i386                          randconfig-a013   clang
i386                 randconfig-a014-20230410   gcc  
i386                          randconfig-a014   gcc  
i386                 randconfig-a015-20230410   gcc  
i386                          randconfig-a015   clang
i386                 randconfig-a016-20230410   gcc  
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r001-20230415   gcc  
ia64         buildonly-randconfig-r003-20230409   gcc  
ia64         buildonly-randconfig-r004-20230415   gcc  
ia64                                defconfig   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                           defconfig   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r001-20230413   gcc  
m68k         buildonly-randconfig-r003-20230410   gcc  
m68k                                defconfig   gcc  
microblaze   buildonly-randconfig-r002-20230414   gcc  
microblaze   buildonly-randconfig-r006-20230415   gcc  
microblaze           randconfig-r003-20230416   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips         buildonly-randconfig-r001-20230410   gcc  
mips         buildonly-randconfig-r004-20230413   clang
mips         buildonly-randconfig-r006-20230413   clang
mips                 randconfig-r005-20230416   gcc  
mips                 randconfig-r015-20230416   clang
nios2        buildonly-randconfig-r002-20230413   gcc  
nios2        buildonly-randconfig-r004-20230410   gcc  
nios2                               defconfig   gcc  
openrisc     buildonly-randconfig-r001-20230414   gcc  
parisc       buildonly-randconfig-r003-20230413   gcc  
parisc       buildonly-randconfig-r003-20230414   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r014-20230416   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc      buildonly-randconfig-r006-20230410   gcc  
powerpc              randconfig-r031-20230416   clang
powerpc              randconfig-r036-20230416   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r042-20230416   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r005-20230413   clang
s390                                defconfig   gcc  
s390                 randconfig-r044-20230416   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r012-20230416   gcc  
sparc                               defconfig   gcc  
sparc64      buildonly-randconfig-r002-20230409   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64                        randconfig-a001   clang
x86_64                        randconfig-a002   gcc  
x86_64                        randconfig-a003   clang
x86_64                        randconfig-a004   gcc  
x86_64                        randconfig-a005   clang
x86_64                        randconfig-a006   gcc  
x86_64                        randconfig-a011   gcc  
x86_64                        randconfig-a012   clang
x86_64                        randconfig-a013   gcc  
x86_64                        randconfig-a014   clang
x86_64                        randconfig-a015   gcc  
x86_64                        randconfig-a016   clang
x86_64                               rhel-8.3   gcc  
xtensa       buildonly-randconfig-r004-20230409   gcc  
xtensa       buildonly-randconfig-r004-20230414   gcc  
xtensa               randconfig-r006-20230416   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
