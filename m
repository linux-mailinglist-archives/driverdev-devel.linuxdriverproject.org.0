Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FB648733E
	for <lists+driverdev-devel@lfdr.de>; Fri,  7 Jan 2022 08:02:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1EB166FC78;
	Fri,  7 Jan 2022 07:02:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kuqxBrzChaLI; Fri,  7 Jan 2022 07:01:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4885B6FC69;
	Fri,  7 Jan 2022 07:01:58 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 89A8A1BF215
 for <devel@linuxdriverproject.org>; Fri,  7 Jan 2022 07:01:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6FCD38126D
 for <devel@linuxdriverproject.org>; Fri,  7 Jan 2022 07:01:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id B-H9KJAsKwh5 for <devel@linuxdriverproject.org>;
 Fri,  7 Jan 2022 07:01:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 453418126A
 for <devel@driverdev.osuosl.org>; Fri,  7 Jan 2022 07:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641538907; x=1673074907;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=e64ginEOD5C6GwMhBo7OL2t5mdYPsVIWbJU33Xa+2Uo=;
 b=IrumpNQAEY7UdT8mb8GLO68oZV9TKXn1EBsUOKg01VR3Ya2YWTXyuf8C
 wtWY410lSrI85yTxvhzcjtnqvS+bLWeV5KM8dv1cY1Zh+84qj9kackRtC
 4nEJ+0N0SrjPG1Dfo6s7srC/atimYSS46j7uEnHxrEH9T15+f9TWQtZiv
 JgNw5Rl9D6TLjwgbgOaLC+6+v8ZMjfQXgaUCrpGfg9yaL0dgwDL4FpvvY
 YwlDUzS7pHSEcjQ8Xah9L41gmh6pZ+PT5a22HqN5giwoEpPDd4ZrLup7J
 /3FpOxIFCGrHMqm2TrvlLCec+0kEynImLBGARYnkRWGiaNPcYoyHOs343 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="241636350"
X-IronPort-AV: E=Sophos;i="5.88,268,1635231600"; d="scan'208";a="241636350"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 23:01:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,268,1635231600"; d="scan'208";a="689696743"
Received: from lkp-server01.sh.intel.com (HELO e357b3ef1427) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 06 Jan 2022 23:01:43 -0800
Received: from kbuild by e357b3ef1427 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n5jFu-000INY-Uf; Fri, 07 Jan 2022 07:01:42 +0000
Date: Fri, 07 Jan 2022 15:01:01 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 5aeb7df99e4a392c329c0950ec4e0b92bcec463e
Message-ID: <61d7e52d.XfsHdkfUKKzqStsI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: 5aeb7df99e4a392c329c0950ec4e0b92bcec463e  kobject: kobj_type: remove default_attrs

elapsed time: 1142m

configs tested: 86
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                               defconfig
arm64                            allyesconfig
arm                                 defconfig
arm                              allmodconfig
arm                              allyesconfig
m68k                        mvme147_defconfig
sh                          lboxre2_defconfig
arm                  randconfig-c002-20220106
ia64                                defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                                defconfig
m68k                             allmodconfig
m68k                             allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
nios2                            allyesconfig
alpha                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
h8300                            allyesconfig
xtensa                           allyesconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
s390                             allyesconfig
i386                             allyesconfig
sparc                               defconfig
i386                                defconfig
i386                              debian-10.3
i386                   debian-10.3-kselftests
sparc                            allyesconfig
nds32                             allnoconfig
nios2                               defconfig
arc                              allyesconfig
mips                             allmodconfig
mips                             allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64               randconfig-a001-20220107
x86_64               randconfig-a002-20220107
x86_64               randconfig-a003-20220107
x86_64               randconfig-a005-20220107
x86_64               randconfig-a004-20220107
x86_64               randconfig-a006-20220107
x86_64               randconfig-a012-20220106
x86_64               randconfig-a011-20220106
x86_64               randconfig-a016-20220106
x86_64               randconfig-a013-20220106
x86_64               randconfig-a015-20220106
x86_64               randconfig-a014-20220106
arc                  randconfig-r043-20220107
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                          rhel-8.3-func
x86_64                                  kexec
x86_64                               rhel-8.3
x86_64                    rhel-8.3-kselftests

clang tested configs:
arm                          moxart_defconfig
arm                      tct_hammer_defconfig
arm                        spear3xx_defconfig
mips                         tb0219_defconfig
powerpc                 xes_mpc85xx_defconfig
s390                             alldefconfig
i386                 randconfig-a003-20220106
i386                 randconfig-a004-20220106
i386                 randconfig-a002-20220106
i386                 randconfig-a001-20220106
i386                 randconfig-a005-20220106
i386                 randconfig-a006-20220106
hexagon              randconfig-r041-20220107
hexagon              randconfig-r045-20220107
riscv                randconfig-r042-20220107
s390                 randconfig-r044-20220107

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
