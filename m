Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E702C1D33
	for <lists+driverdev-devel@lfdr.de>; Tue, 24 Nov 2020 06:05:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E7848723A;
	Tue, 24 Nov 2020 05:05:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nmDex98bZcbn; Tue, 24 Nov 2020 05:05:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6073E871A5;
	Tue, 24 Nov 2020 05:05:24 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D10C51BF35E
 for <devel@linuxdriverproject.org>; Tue, 24 Nov 2020 05:05:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CE1D985A60
 for <devel@linuxdriverproject.org>; Tue, 24 Nov 2020 05:05:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c-ozkdrp9Z-3 for <devel@linuxdriverproject.org>;
 Tue, 24 Nov 2020 05:05:21 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 07A6285A22
 for <devel@driverdev.osuosl.org>; Tue, 24 Nov 2020 05:05:20 +0000 (UTC)
IronPort-SDR: 2rAYUgG+5jQ1gG6ZutVGTOv/gsvF+J6bAVfhk6swGo3gn4KnF0wuaUmNeK/PRzuK8X67bWKiyU
 WhP2OWsxiTiw==
X-IronPort-AV: E=McAfee;i="6000,8403,9814"; a="256600587"
X-IronPort-AV: E=Sophos;i="5.78,365,1599548400"; d="scan'208";a="256600587"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2020 21:05:17 -0800
IronPort-SDR: z8ZyfDWYSgIyfWZ6Eg4wEAEoQgRFy8XtLwIiOQNEvR8N1DkIzPN6gBjQHa3W/Jeok89xnQR6jj
 cu4lyqmXiglw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,365,1599548400"; d="scan'208";a="332434788"
Received: from lkp-server01.sh.intel.com (HELO d32bb8956768) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 23 Nov 2020 21:05:16 -0800
Received: from kbuild by d32bb8956768 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1khQVv-000020-Q2; Tue, 24 Nov 2020 05:05:15 +0000
Date: Tue, 24 Nov 2020 13:05:07 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 8a3f7b9665c8194f32afec9a7bb60e2376f896c6
Message-ID: <5fbc9483.u1YXQh/VUyMk7S/p%lkp@intel.com>
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
branch HEAD: 8a3f7b9665c8194f32afec9a7bb60e2376f896c6  staging: rtl8723bs: remove redundant statements

elapsed time: 723m

configs tested: 142
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
mips                         bigsur_defconfig
arm                        spear6xx_defconfig
powerpc                 mpc8560_ads_defconfig
sh                           sh2007_defconfig
alpha                               defconfig
riscv                          rv32_defconfig
sh                                  defconfig
arm                     eseries_pxa_defconfig
arm                      tct_hammer_defconfig
arm                         s5pv210_defconfig
arm                       mainstone_defconfig
arm                          moxart_defconfig
openrisc                         alldefconfig
ia64                                defconfig
arm                        mvebu_v5_defconfig
powerpc                      makalu_defconfig
arm                        keystone_defconfig
mips                           ip32_defconfig
arm                            u300_defconfig
powerpc                      tqm8xx_defconfig
m68k                        mvme16x_defconfig
powerpc                  storcenter_defconfig
powerpc                      acadia_defconfig
powerpc                     mpc512x_defconfig
mips                        vocore2_defconfig
m68k                        m5307c3_defconfig
mips                     cu1000-neo_defconfig
sh                             espt_defconfig
mips                          ath79_defconfig
powerpc                 mpc832x_mds_defconfig
arm                          badge4_defconfig
powerpc                     stx_gp3_defconfig
arm                      integrator_defconfig
sh                         ecovec24_defconfig
sh                          rsk7203_defconfig
arm                          gemini_defconfig
sparc64                          alldefconfig
mips                           ip27_defconfig
nds32                             allnoconfig
powerpc                    mvme5100_defconfig
arm                  colibri_pxa270_defconfig
m68k                           sun3_defconfig
powerpc                           allnoconfig
sh                          landisk_defconfig
mips                           mtx1_defconfig
mips                        nlm_xlr_defconfig
xtensa                       common_defconfig
mips                      maltaaprp_defconfig
arm                  colibri_pxa300_defconfig
arm                         lpc18xx_defconfig
arm                        cerfcube_defconfig
sh                           se7780_defconfig
arm                         at91_dt_defconfig
powerpc                 mpc8315_rdb_defconfig
arm                         nhk8815_defconfig
powerpc                 mpc8540_ads_defconfig
sh                         apsh4a3a_defconfig
arm                        magician_defconfig
mips                       lemote2f_defconfig
mips                         rt305x_defconfig
arc                      axs103_smp_defconfig
mips                     loongson1b_defconfig
powerpc                      arches_defconfig
powerpc                      ppc64e_defconfig
arm                          collie_defconfig
arm                           corgi_defconfig
powerpc                       ppc64_defconfig
powerpc                     taishan_defconfig
mips                           ci20_defconfig
arc                     nsimosci_hs_defconfig
powerpc                    sam440ep_defconfig
xtensa                         virt_defconfig
mips                         tb0226_defconfig
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
c6x                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
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
i386                 randconfig-a004-20201123
i386                 randconfig-a003-20201123
i386                 randconfig-a002-20201123
i386                 randconfig-a005-20201123
i386                 randconfig-a001-20201123
i386                 randconfig-a006-20201123
x86_64               randconfig-a015-20201123
x86_64               randconfig-a011-20201123
x86_64               randconfig-a014-20201123
x86_64               randconfig-a016-20201123
x86_64               randconfig-a012-20201123
x86_64               randconfig-a013-20201123
i386                 randconfig-a012-20201123
i386                 randconfig-a013-20201123
i386                 randconfig-a011-20201123
i386                 randconfig-a016-20201123
i386                 randconfig-a014-20201123
i386                 randconfig-a015-20201123
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20201123
x86_64               randconfig-a003-20201123
x86_64               randconfig-a004-20201123
x86_64               randconfig-a005-20201123
x86_64               randconfig-a002-20201123
x86_64               randconfig-a001-20201123

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
