Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAC82951F8
	for <lists+driverdev-devel@lfdr.de>; Wed, 21 Oct 2020 20:05:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 31BDF874C8;
	Wed, 21 Oct 2020 18:05:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4avLKbCp0Wjo; Wed, 21 Oct 2020 18:05:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id F21B8874BF;
	Wed, 21 Oct 2020 18:05:02 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1F0BD1BF342
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 18:05:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 165A2868EF
 for <devel@linuxdriverproject.org>; Wed, 21 Oct 2020 18:05:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MdJS4EbTpwPJ for <devel@linuxdriverproject.org>;
 Wed, 21 Oct 2020 18:04:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 19963868DE
 for <devel@driverdev.osuosl.org>; Wed, 21 Oct 2020 18:04:58 +0000 (UTC)
IronPort-SDR: ON6M2kaim8Ejkh6qYBy0GCJTW3Se09p61rihI1fi2oc8OSh4QEY0s+Hrx7FbjDaYbNkvIxbxRs
 NLDBoiOy2rTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="164816410"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="164816410"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 11:04:56 -0700
IronPort-SDR: mOf92Ujgq6ArVIuEBDaWbxejWaoYxumUr9d3SSNjpeGJM7LBtHm4BM8dkKx4jWBSt3RSUL1OFT
 WApoHcWZLNSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="422878957"
Received: from lkp-server02.sh.intel.com (HELO 911c2f167757) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 21 Oct 2020 11:04:54 -0700
Received: from kbuild by 911c2f167757 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kVITl-000064-Od; Wed, 21 Oct 2020 18:04:53 +0000
Date: Thu, 22 Oct 2020 02:04:21 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 52a9e20a186551945654c9ff5048a029fd3b00c1
Message-ID: <5f907825.cwu0k/L46ywllUYZ%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-testing
branch HEAD: 52a9e20a186551945654c9ff5048a029fd3b00c1  staging: qlge: remove extra blank lines

elapsed time: 724m

configs tested: 98
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
nds32                            alldefconfig
m68k                          hp300_defconfig
arm                            lart_defconfig
ia64                      gensparse_defconfig
arm                          pxa168_defconfig
powerpc                      obs600_defconfig
mips                     loongson1b_defconfig
arc                 nsimosci_hs_smp_defconfig
powerpc                     mpc512x_defconfig
sh                          rsk7264_defconfig
mips                          rm200_defconfig
powerpc                     ep8248e_defconfig
arm                        magician_defconfig
arm                            dove_defconfig
mips                  cavium_octeon_defconfig
sh                          polaris_defconfig
arm                     am200epdkit_defconfig
arm                         palmz72_defconfig
mips                        nlm_xlr_defconfig
arm                      integrator_defconfig
arm                       mainstone_defconfig
sh                             sh03_defconfig
mips                  decstation_64_defconfig
mips                         cobalt_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20201021
x86_64               randconfig-a002-20201021
x86_64               randconfig-a003-20201021
x86_64               randconfig-a006-20201021
x86_64               randconfig-a005-20201021
x86_64               randconfig-a004-20201021
i386                 randconfig-a002-20201021
i386                 randconfig-a005-20201021
i386                 randconfig-a003-20201021
i386                 randconfig-a001-20201021
i386                 randconfig-a006-20201021
i386                 randconfig-a004-20201021
i386                 randconfig-a014-20201021
i386                 randconfig-a015-20201021
i386                 randconfig-a013-20201021
i386                 randconfig-a012-20201021
i386                 randconfig-a011-20201021
i386                 randconfig-a016-20201021
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a011-20201021
x86_64               randconfig-a013-20201021
x86_64               randconfig-a016-20201021
x86_64               randconfig-a015-20201021
x86_64               randconfig-a012-20201021
x86_64               randconfig-a014-20201021

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
