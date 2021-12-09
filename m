Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 37E1146F50E
	for <lists+driverdev-devel@lfdr.de>; Thu,  9 Dec 2021 21:38:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37517427F8;
	Thu,  9 Dec 2021 20:38:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id giEt7pPqw5xk; Thu,  9 Dec 2021 20:38:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 26A3E4289D;
	Thu,  9 Dec 2021 20:38:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E14111BF25B
 for <devel@linuxdriverproject.org>; Thu,  9 Dec 2021 20:38:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DE51384CC7
 for <devel@linuxdriverproject.org>; Thu,  9 Dec 2021 20:38:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id axDU96eDUaPR for <devel@linuxdriverproject.org>;
 Thu,  9 Dec 2021 20:38:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E5470827CA
 for <devel@driverdev.osuosl.org>; Thu,  9 Dec 2021 20:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639082320; x=1670618320;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=vZyJOZqZZ4OW8Bsx70t4q9kqeRsIVtieQ/UnVHItUs8=;
 b=J0diJNExmBSnLX7zPQwD2zaVJR0+bNvbJBWymgXTrOx4rVGvDtb00ZXV
 9RSdOW5kwytXV1vvKCpqwDOk7V9MSlES5sxs59euV+KL9+PuyAoplw9zX
 wShCfFdt21SUmoSaL6gEg7HlKVuZrL1/085rlloDABnrVZDNEmv8pn5HP
 Ru/cfDDZCWRREO+c9r1JMjOabT5d23XTks75yQVYX146G+QzAgBli3EPc
 xOdjmaeTDfpjEvLVlZm9u0auq8F1VEy8s2rpsKs3TEXSg5YkticTN9GuJ
 rtEjQpnEOXas0TNsIcJu2L3LwkWQxVj8OJeRlyQHoF2cCNn7KJg3WHvlR A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="301585597"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="301585597"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 12:38:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="463396022"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 09 Dec 2021 12:38:39 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1mvQBa-0002MA-39; Thu, 09 Dec 2021 20:38:38 +0000
Date: Fri, 10 Dec 2021 04:38:04 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 d0df53d36cd51154463796bc6abdd11abdbc67c1
Message-ID: <61b2692c.0odsO05N0W4FDWsN%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: d0df53d36cd51154463796bc6abdd11abdbc67c1  staging: rtl8712: Fix alignment checks with flipped condition

elapsed time: 724m

configs tested: 193
configs skipped: 4

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
i386                 randconfig-c001-20211209
x86_64                           allyesconfig
arc                      axs103_smp_defconfig
powerpc                      mgcoge_defconfig
arm                        mvebu_v7_defconfig
m68k                        stmark2_defconfig
arm                          imote2_defconfig
arm                          pxa3xx_defconfig
m68k                       m5475evb_defconfig
ia64                            zx1_defconfig
ia64                      gensparse_defconfig
powerpc                      chrp32_defconfig
arm                         hackkit_defconfig
arm                             mxs_defconfig
powerpc                       holly_defconfig
mips                         mpc30x_defconfig
sh                           se7206_defconfig
mips                           mtx1_defconfig
m68k                       m5249evb_defconfig
arm                           spitz_defconfig
powerpc64                        alldefconfig
sh                            titan_defconfig
powerpc                  storcenter_defconfig
arm                          lpd270_defconfig
powerpc                    sam440ep_defconfig
powerpc                      tqm8xx_defconfig
m68k                        m5307c3_defconfig
sh                        apsh4ad0a_defconfig
alpha                            allyesconfig
mips                          rm200_defconfig
arm                        keystone_defconfig
mips                      loongson3_defconfig
xtensa                  nommu_kc705_defconfig
arm                            pleb_defconfig
ia64                        generic_defconfig
mips                          malta_defconfig
h8300                    h8300h-sim_defconfig
openrisc                 simple_smp_defconfig
sh                        sh7763rdp_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                     kilauea_defconfig
powerpc                      makalu_defconfig
sh                          lboxre2_defconfig
powerpc                      pasemi_defconfig
m68k                        mvme16x_defconfig
arm                             rpc_defconfig
mips                        bcm63xx_defconfig
mips                     loongson2k_defconfig
sh                          kfr2r09_defconfig
arc                 nsimosci_hs_smp_defconfig
arm                            dove_defconfig
powerpc                     tqm8548_defconfig
mips                        workpad_defconfig
arm                           corgi_defconfig
s390                             allyesconfig
alpha                               defconfig
arm                  colibri_pxa270_defconfig
powerpc                     stx_gp3_defconfig
powerpc                       ebony_defconfig
powerpc                        fsp2_defconfig
powerpc                      ppc6xx_defconfig
riscv                             allnoconfig
mips                           ip27_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                    socrates_defconfig
nds32                             allnoconfig
mips                  maltasmvp_eva_defconfig
mips                           rs90_defconfig
mips                         tb0287_defconfig
sh                          landisk_defconfig
powerpc                 mpc8313_rdb_defconfig
arm                      pxa255-idp_defconfig
riscv                               defconfig
mips                       lemote2f_defconfig
sh                           se7705_defconfig
sh                          sdk7786_defconfig
arm                           sama7_defconfig
mips                         cobalt_defconfig
sh                          rsk7201_defconfig
arm                        multi_v5_defconfig
arm                             pxa_defconfig
riscv                    nommu_k210_defconfig
powerpc                   lite5200b_defconfig
riscv                    nommu_virt_defconfig
powerpc                       eiger_defconfig
powerpc                     ppa8548_defconfig
m68k                          hp300_defconfig
arm                       omap2plus_defconfig
ia64                                defconfig
powerpc                     ep8248e_defconfig
arm                             ezx_defconfig
arm                       multi_v4t_defconfig
h8300                       h8s-sim_defconfig
sh                   sh7724_generic_defconfig
powerpc               mpc834x_itxgp_defconfig
um                                  defconfig
arc                     nsimosci_hs_defconfig
powerpc                   motionpro_defconfig
mips                           gcw0_defconfig
arm                        mvebu_v5_defconfig
sh                           se7721_defconfig
arm                    vt8500_v6_v7_defconfig
nios2                         3c120_defconfig
arm                        spear6xx_defconfig
arc                            hsdk_defconfig
powerpc                 canyonlands_defconfig
powerpc                     tqm8560_defconfig
arm                         cm_x300_defconfig
arm                      tct_hammer_defconfig
m68k                        m5272c3_defconfig
powerpc                 mpc836x_rdk_defconfig
xtensa                generic_kc705_defconfig
sh                           se7712_defconfig
sh                   secureedge5410_defconfig
sparc64                             defconfig
arm                  randconfig-c002-20211209
ia64                             allmodconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20211209
x86_64               randconfig-a005-20211209
x86_64               randconfig-a001-20211209
x86_64               randconfig-a002-20211209
x86_64               randconfig-a004-20211209
x86_64               randconfig-a003-20211209
i386                 randconfig-a001-20211209
i386                 randconfig-a005-20211209
i386                 randconfig-a003-20211209
i386                 randconfig-a002-20211209
i386                 randconfig-a006-20211209
i386                 randconfig-a004-20211209
riscv                            allyesconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                                  kexec

clang tested configs:
arm                  randconfig-c002-20211209
x86_64               randconfig-c007-20211209
riscv                randconfig-c006-20211209
i386                 randconfig-c001-20211209
mips                 randconfig-c004-20211209
powerpc              randconfig-c003-20211209
s390                 randconfig-c005-20211209
x86_64               randconfig-a016-20211209
x86_64               randconfig-a011-20211209
x86_64               randconfig-a013-20211209
x86_64               randconfig-a015-20211209
x86_64               randconfig-a012-20211209
x86_64               randconfig-a014-20211209
i386                 randconfig-a013-20211209
i386                 randconfig-a016-20211209
i386                 randconfig-a011-20211209
i386                 randconfig-a014-20211209
i386                 randconfig-a012-20211209
i386                 randconfig-a015-20211209
hexagon              randconfig-r045-20211209
s390                 randconfig-r044-20211209
hexagon              randconfig-r041-20211209
riscv                randconfig-r042-20211209

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
