Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B222490022
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jan 2022 03:18:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 74D6E402D2;
	Mon, 17 Jan 2022 02:18:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3-S9T8bUYOv4; Mon, 17 Jan 2022 02:18:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 22D82402A6;
	Mon, 17 Jan 2022 02:18:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0948D1BF361
 for <devel@linuxdriverproject.org>; Mon, 17 Jan 2022 02:18:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id EB47160745
 for <devel@linuxdriverproject.org>; Mon, 17 Jan 2022 02:18:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RpcknXoLK8kT for <devel@linuxdriverproject.org>;
 Mon, 17 Jan 2022 02:18:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7E187606FF
 for <devel@driverdev.osuosl.org>; Mon, 17 Jan 2022 02:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642385903; x=1673921903;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=/nuBNfVVzWK+MsHDEo/HIqGr/vEFwoSv4HRXckobw+o=;
 b=X5+2JezR3+KgGy7j2giUPln/ug2+BZZAdeRhgUFyFDexf71c9pDWuds6
 TVKRKAPc2MTfH4VvSuweehXloP2OnLzdAI6TjS9FLxlFSVqrUHSDF+as+
 7+H9xTA93bbIoaniirqm78klhzsQDzhVgxG+66nOBAnEU/2qCDFhphPKY
 f+r3dsgUZr2KmRDd6ZzYgC2ZKmprWvGBptuzlk4Gn2h1XfohTI+i7U+Tn
 saBSSJ+DkA25eQRb4FLcEQh4UMlXW0Yy7DM18nzzcGWBZDOUSy+4hObnG
 OnkDTHMNQ+/danOHc9gvt/pRFUcKOvm8JjjivQbAVDdi596oXMLnjHtFa Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10229"; a="330887850"
X-IronPort-AV: E=Sophos;i="5.88,294,1635231600"; d="scan'208";a="330887850"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2022 18:18:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,294,1635231600"; d="scan'208";a="476479418"
Received: from lkp-server01.sh.intel.com (HELO 276f1b88eecb) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 16 Jan 2022 18:18:21 -0800
Received: from kbuild by 276f1b88eecb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1n9HbA-000BAg-KM; Mon, 17 Jan 2022 02:18:20 +0000
Date: Mon, 17 Jan 2022 10:18:06 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 36852405eea7ba200e07852f62fe0c1b02073b65
Message-ID: <61e4d1de.tT5GbA+n8/uzWB//%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: 36852405eea7ba200e07852f62fe0c1b02073b65  pm / wakeup: simplify the output logic of pm_show_wakelocks()

elapsed time: 720m

configs tested: 118
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                          randconfig-c001
m68k                          hp300_defconfig
powerpc                     sequoia_defconfig
mips                    maltaup_xpa_defconfig
arm                           viper_defconfig
sh                 kfr2r09-romimage_defconfig
powerpc                   currituck_defconfig
arm                           tegra_defconfig
openrisc                 simple_smp_defconfig
mips                 decstation_r4k_defconfig
powerpc                  iss476-smp_defconfig
arm                      integrator_defconfig
arm                          lpd270_defconfig
mips                         bigsur_defconfig
parisc                generic-32bit_defconfig
xtensa                  audio_kc705_defconfig
powerpc                     stx_gp3_defconfig
m68k                        stmark2_defconfig
m68k                          multi_defconfig
s390                          debug_defconfig
sh                          polaris_defconfig
sh                         ap325rxa_defconfig
sh                             shx3_defconfig
arm                           corgi_defconfig
powerpc                     redwood_defconfig
sh                   rts7751r2dplus_defconfig
mips                         cobalt_defconfig
arm                  randconfig-c002-20220116
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nds32                               defconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
nios2                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
powerpc                          allyesconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a003
i386                          randconfig-a001
i386                          randconfig-a005
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20220116
x86_64                        randconfig-c007
riscv                randconfig-c006-20220116
powerpc              randconfig-c003-20220116
i386                          randconfig-c001
mips                 randconfig-c004-20220116
s390                 randconfig-c005-20220116
mips                          rm200_defconfig
arm                             mxs_defconfig
arm                         mv78xx0_defconfig
powerpc                    mvme5100_defconfig
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-a005
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220116
riscv                randconfig-r042-20220116
hexagon              randconfig-r041-20220116

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
