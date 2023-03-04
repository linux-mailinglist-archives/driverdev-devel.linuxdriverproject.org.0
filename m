Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 623DA6AA8AD
	for <lists+driverdev-devel@lfdr.de>; Sat,  4 Mar 2023 09:18:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 381FD60784;
	Sat,  4 Mar 2023 08:18:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 381FD60784
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VdGlZva2ABpb; Sat,  4 Mar 2023 08:18:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CC51E60741;
	Sat,  4 Mar 2023 08:18:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CC51E60741
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 23EAC1BF296
 for <devel@linuxdriverproject.org>; Sat,  4 Mar 2023 08:18:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F113660784
 for <devel@linuxdriverproject.org>; Sat,  4 Mar 2023 08:18:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F113660784
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XqaTb_Z6vmo3 for <devel@linuxdriverproject.org>;
 Sat,  4 Mar 2023 08:18:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CF1C60741
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2CF1C60741
 for <devel@driverdev.osuosl.org>; Sat,  4 Mar 2023 08:18:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="323544437"
X-IronPort-AV: E=Sophos;i="5.98,233,1673942400"; d="scan'208";a="323544437"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2023 00:18:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10638"; a="653035691"
X-IronPort-AV: E=Sophos;i="5.98,233,1673942400"; d="scan'208";a="653035691"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 04 Mar 2023 00:18:45 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pYN6L-00020W-0R;
 Sat, 04 Mar 2023 08:18:45 +0000
Date: Sat, 04 Mar 2023 16:18:33 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 3aa15aac41d15902e0326259eb6ec3273d73db79
Message-ID: <6402fed9.naLpTMHIxius/OSg%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677917928; x=1709453928;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=ZouKZSGCS1LnIRy6+EhOBJjZXFEJLhjs6OivUv48Bbo=;
 b=QpFMwr5zfewTpEVL/OfHKT8QDtk2Bm9sSZBA3YwNZI7yAVTbB/NZLGi9
 Ga7ONwCkYkcBNIBr644tz0VPkFgWqmhpiMa5JX3RrvqMgsrRUTEhxA26L
 eBJ3h+Ctt7U6bpob7dRTk7UBrUCG26n5Mp4hoYENRR5X4S+V7/RLwx1BV
 1QTomiSlgpAMbs83tBMLSWi2vidPwqKEmahBs5w3V2B+Ws+BAPtmT4iLd
 nNNxF2GVM1MZx1uwb2OsLbnS1N0FyCPOeuaNLmwuQsufJzErjVcXjpNFw
 dnUt7AQozznWEszZXouCyLcMFL02Mb8m3xQct6OUQ8qTG/p76YEGZJxQM
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QpFMwr5z
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
branch HEAD: 3aa15aac41d15902e0326259eb6ec3273d73db79  readfile.2: new page describing readfile(2)

elapsed time: 982m

configs tested: 105
configs skipped: 7

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
alpha                randconfig-r012-20230302   gcc  
arc                              allyesconfig   gcc  
arc                                 defconfig   gcc  
arc                  randconfig-r043-20230302   gcc  
arm                              allmodconfig   gcc  
arm                              allyesconfig   gcc  
arm          buildonly-randconfig-r006-20230303   clang
arm                                 defconfig   gcc  
arm                  randconfig-r001-20230302   clang
arm                  randconfig-r024-20230302   gcc  
arm                  randconfig-r046-20230302   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                                defconfig   gcc  
csky                 randconfig-r021-20230302   gcc  
csky                 randconfig-r022-20230302   gcc  
hexagon              randconfig-r041-20230302   clang
hexagon              randconfig-r045-20230302   clang
i386                             allyesconfig   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                          randconfig-a001   gcc  
i386                          randconfig-a002   clang
i386                          randconfig-a003   gcc  
i386                          randconfig-a004   clang
i386                          randconfig-a005   gcc  
i386                          randconfig-a006   clang
i386                          randconfig-a011   clang
i386                          randconfig-a012   gcc  
i386                          randconfig-a013   clang
i386                          randconfig-a014   gcc  
i386                          randconfig-a015   clang
i386                          randconfig-a016   gcc  
ia64                             allmodconfig   gcc  
ia64         buildonly-randconfig-r004-20230303   gcc  
ia64                                defconfig   gcc  
ia64                 randconfig-r014-20230302   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch    buildonly-randconfig-r005-20230302   gcc  
loongarch                           defconfig   gcc  
loongarch            randconfig-r033-20230303   gcc  
m68k                             allmodconfig   gcc  
m68k         buildonly-randconfig-r001-20230302   gcc  
m68k                                defconfig   gcc  
microblaze           randconfig-r023-20230302   gcc  
mips                             allmodconfig   gcc  
mips                             allyesconfig   gcc  
nios2                               defconfig   gcc  
nios2                randconfig-r016-20230302   gcc  
nios2                randconfig-r031-20230303   gcc  
parisc       buildonly-randconfig-r003-20230303   gcc  
parisc                              defconfig   gcc  
parisc               randconfig-r004-20230302   gcc  
parisc               randconfig-r015-20230302   gcc  
parisc               randconfig-r035-20230303   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv        buildonly-randconfig-r003-20230302   clang
riscv                               defconfig   gcc  
riscv                randconfig-r002-20230302   gcc  
riscv                randconfig-r042-20230302   clang
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                             allyesconfig   gcc  
s390         buildonly-randconfig-r002-20230303   gcc  
s390                                defconfig   gcc  
s390                 randconfig-r044-20230302   clang
sh                               allmodconfig   gcc  
sh                   randconfig-r034-20230303   gcc  
sparc        buildonly-randconfig-r002-20230302   gcc  
sparc                               defconfig   gcc  
sparc                randconfig-r003-20230302   gcc  
sparc                randconfig-r026-20230302   gcc  
sparc64      buildonly-randconfig-r006-20230302   gcc  
sparc64              randconfig-r005-20230302   gcc  
sparc64              randconfig-r011-20230302   gcc  
sparc64              randconfig-r013-20230302   gcc  
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
xtensa       buildonly-randconfig-r005-20230303   gcc  
xtensa               randconfig-r025-20230302   gcc  
xtensa               randconfig-r032-20230303   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
