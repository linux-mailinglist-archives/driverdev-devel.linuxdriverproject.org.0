Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE296DCC38
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Apr 2023 22:41:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0249040268;
	Mon, 10 Apr 2023 20:41:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0249040268
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w1FsBYSX-c8o; Mon, 10 Apr 2023 20:41:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 726D341615;
	Mon, 10 Apr 2023 20:41:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 726D341615
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 289761BF5A5
 for <devel@linuxdriverproject.org>; Mon, 10 Apr 2023 20:41:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 01B8F405A2
 for <devel@linuxdriverproject.org>; Mon, 10 Apr 2023 20:41:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 01B8F405A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HGK6lWQSfpHI for <devel@linuxdriverproject.org>;
 Mon, 10 Apr 2023 20:41:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D34674046F
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D34674046F
 for <devel@driverdev.osuosl.org>; Mon, 10 Apr 2023 20:41:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="340937853"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="340937853"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 13:41:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="862589120"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="862589120"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 10 Apr 2023 13:41:39 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1plyKY-000Vej-12;
 Mon, 10 Apr 2023 20:41:38 +0000
Date: Tue, 11 Apr 2023 04:41:09 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup] BUILD SUCCESS
 14b1d7743fde43812901c2c4ac5a04ad3e7e84a2
Message-ID: <64347465.pOsrt8eHwAqNd5Ry%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681159308; x=1712695308;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=TxLEh/ky2bUyl32hAeLvDPiJhnRC5mM1wF9ZJq+88l0=;
 b=BACRRdvzSC135x1RG5Dl7aCudU4oZV/6fKoWibp+bsBmtrBEElj7xCrB
 WzTOt9FR48jfw6RypT4MTV+nsgBBDoiN/HokyPyAvP2arMDl9m3QSNTFj
 KeVB35kX0Y7PuVaLZo7QTx+odnoGNj4PRtTBfke9W4/gJ5NMfnu6AQ6M7
 jtEAYoVoBq9SXAIKknsHUsHOMzaikbALWI0gF9/TxEXxOX8QPML4qeKYq
 4sNpr6KhSbe1iXlkJ4edoSQC8ZE5K1pdnOQmccltwpTfIr77Ii0NoJQaT
 dN/wjoK5DkzUbC1Wsu6uwxpUMaMb2UyDs+IWx1Vf/UfVQSlBpi3lQKwOU
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BACRRdvz
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
branch HEAD: 14b1d7743fde43812901c2c4ac5a04ad3e7e84a2  driver core: convert class_create() to class_register()

elapsed time: 723m

configs tested: 131
configs skipped: 11

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r011-20230409   gcc  
alpha                randconfig-r025-20230410   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r001-20230409   gcc  
arc                  randconfig-r031-20230410   gcc  
arc                  randconfig-r043-20230409   gcc  
arc                  randconfig-r043-20230410   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r005-20230409   clang
arm                                 defconfig   gcc  
arm                  randconfig-r006-20230409   gcc  
arm                  randconfig-r046-20230409   clang
arm                  randconfig-r046-20230410   clang
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
arm64                randconfig-r016-20230410   gcc  
csky         buildonly-randconfig-r001-20230409   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r014-20230410   gcc  
csky                 randconfig-r031-20230409   gcc  
hexagon              randconfig-r012-20230410   clang
hexagon              randconfig-r041-20230409   clang
hexagon              randconfig-r041-20230410   clang
hexagon              randconfig-r045-20230409   clang
hexagon              randconfig-r045-20230410   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                 randconfig-a001-20230410   clang
i386                 randconfig-a002-20230410   clang
i386                 randconfig-a003-20230410   clang
i386                 randconfig-a004-20230410   clang
i386                 randconfig-a005-20230410   clang
i386                 randconfig-a006-20230410   clang
i386                 randconfig-a011-20230410   gcc  
i386                 randconfig-a012-20230410   gcc  
i386                 randconfig-a013-20230410   gcc  
i386                 randconfig-a014-20230410   gcc  
i386                 randconfig-a015-20230410   gcc  
i386                 randconfig-a016-20230410   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r003-20230410   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r003-20230409   gcc  
ia64                 randconfig-r006-20230410   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r001-20230410   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r013-20230410   gcc  
loongarch            randconfig-r014-20230409   gcc  
loongarch            randconfig-r022-20230409   gcc  
loongarch            randconfig-r026-20230410   gcc  
loongarch            randconfig-r034-20230410   gcc  
loongarch            randconfig-r035-20230409   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r002-20230409   gcc  
m68k                                defconfig   gcc  
m68k                 randconfig-r001-20230410   gcc  
microblaze   buildonly-randconfig-r006-20230409   gcc  
microblaze           randconfig-r016-20230409   gcc  
microblaze           randconfig-r036-20230410   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
mips                 randconfig-r002-20230410   gcc  
mips                 randconfig-r011-20230410   clang
mips                 randconfig-r034-20230409   gcc  
nios2        buildonly-randconfig-r002-20230410   gcc  
nios2                               defconfig   gcc  
openrisc             randconfig-r022-20230410   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r023-20230410   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc              randconfig-r004-20230409   clang
powerpc              randconfig-r004-20230410   clang
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                               defconfig   gcc  
riscv                randconfig-r021-20230409   gcc  
riscv                randconfig-r026-20230409   gcc  
riscv                randconfig-r035-20230410   clang
riscv                randconfig-r042-20230409   gcc  
riscv                randconfig-r042-20230410   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r003-20230409   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r003-20230410   clang
s390                 randconfig-r005-20230409   clang
s390                 randconfig-r044-20230409   gcc  
s390                 randconfig-r044-20230410   gcc  
sh                               allmodconfig   gcc  
sh                   randconfig-r015-20230409   gcc  
sparc        buildonly-randconfig-r004-20230410   gcc  
sparc        buildonly-randconfig-r006-20230410   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r005-20230410   gcc  
sparc                randconfig-r012-20230409   gcc  
sparc64              randconfig-r002-20230409   gcc  
sparc64              randconfig-r021-20230410   gcc  
sparc64              randconfig-r032-20230409   gcc  
sparc64              randconfig-r033-20230409   gcc  
sparc64              randconfig-r036-20230409   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64                              defconfig   gcc  
x86_64                                  kexec   gcc  
x86_64               randconfig-a001-20230410   clang
x86_64               randconfig-a002-20230410   clang
x86_64               randconfig-a003-20230410   clang
x86_64               randconfig-a004-20230410   clang
x86_64               randconfig-a005-20230410   clang
x86_64               randconfig-a006-20230410   clang
x86_64               randconfig-a011-20230410   gcc  
x86_64               randconfig-a012-20230410   gcc  
x86_64               randconfig-a013-20230410   gcc  
x86_64               randconfig-a014-20230410   gcc  
x86_64               randconfig-a015-20230410   gcc  
x86_64               randconfig-a016-20230410   gcc  
x86_64                               rhel-8.3   gcc  
xtensa               randconfig-r024-20230410   gcc  
xtensa               randconfig-r033-20230410   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
