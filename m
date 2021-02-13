Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0FC31A901
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Feb 2021 01:53:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 099BE6F7AB
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Feb 2021 00:53:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wE5G5Dlij9cp for <lists+driverdev-devel@lfdr.de>;
	Sat, 13 Feb 2021 00:53:50 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id 4B1046F7C6; Sat, 13 Feb 2021 00:53:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id AFFAE6F528;
	Sat, 13 Feb 2021 00:53:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BA8591BF2B3
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 00:53:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A29536F71F
 for <devel@linuxdriverproject.org>; Sat, 13 Feb 2021 00:53:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id q-CU3Xxf9T80 for <devel@linuxdriverproject.org>;
 Sat, 13 Feb 2021 00:53:15 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
 id 5B1E16F6FC; Sat, 13 Feb 2021 00:53:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EB2526F64C
 for <devel@driverdev.osuosl.org>; Sat, 13 Feb 2021 00:53:12 +0000 (UTC)
IronPort-SDR: /Ix+EaCUofP85p0rl+5Lo8JlBeqlAQa40nRhNBeKVAlOGRtmpp10DoJENrh1wpjti+FZVIYJux
 HUzFQbKhmzVw==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="161640548"
X-IronPort-AV: E=Sophos;i="5.81,175,1610438400"; d="scan'208";a="161640548"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 16:53:11 -0800
IronPort-SDR: hGkgl0aWspUqv/V5aODRS3Wxu1q2y+xg/Do90DDgMfdWWy5SMhypnTxWOKTZp+5+FGC6bXicQp
 Aa8kC3xRO+Wg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,175,1610438400"; d="scan'208";a="423394500"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
 by fmsmga002.fm.intel.com with ESMTP; 12 Feb 2021 16:53:10 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1lAjBN-0004zk-G1; Sat, 13 Feb 2021 00:53:09 +0000
Date: Sat, 13 Feb 2021 08:52:19 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 a2ea4e1d9091cd8bc69f1c42c15bedc38618f04c
Message-ID: <602722c3.yeAE/ARkPU2liwXq%lkp@intel.com>
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
branch HEAD: a2ea4e1d9091cd8bc69f1c42c15bedc38618f04c  staging: greybus: Fixed alignment issue in hid.c

elapsed time: 724m

configs tested: 176
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
arm                         shannon_defconfig
arm                     davinci_all_defconfig
arc                        vdk_hs38_defconfig
sh                        sh7763rdp_defconfig
c6x                        evmc6474_defconfig
nios2                         3c120_defconfig
powerpc                     tqm5200_defconfig
arm                           u8500_defconfig
mips                        nlm_xlp_defconfig
sh                      rts7751r2d1_defconfig
m68k                            q40_defconfig
arm                            lart_defconfig
arm                            pleb_defconfig
arm                   milbeaut_m10v_defconfig
h8300                            alldefconfig
arm                         axm55xx_defconfig
sparc                            allyesconfig
sh                        apsh4ad0a_defconfig
mips                       bmips_be_defconfig
powerpc                  iss476-smp_defconfig
sh                           se7705_defconfig
m68k                          hp300_defconfig
powerpc                 linkstation_defconfig
sh                            migor_defconfig
mips                      maltasmvp_defconfig
m68k                                defconfig
openrisc                         alldefconfig
sh                           se7712_defconfig
h8300                               defconfig
sh                            hp6xx_defconfig
arm                          simpad_defconfig
powerpc                 mpc8315_rdb_defconfig
arm                          pxa3xx_defconfig
sh                           se7206_defconfig
sh                         ap325rxa_defconfig
powerpc                       eiger_defconfig
xtensa                  cadence_csp_defconfig
powerpc                 xes_mpc85xx_defconfig
powerpc                 mpc832x_rdb_defconfig
m68k                        m5407c3_defconfig
c6x                              allyesconfig
mips                           jazz_defconfig
powerpc                 mpc832x_mds_defconfig
mips                       capcella_defconfig
arm                       netwinder_defconfig
powerpc64                        alldefconfig
powerpc64                           defconfig
arc                              alldefconfig
microblaze                      mmu_defconfig
powerpc                 mpc834x_mds_defconfig
powerpc                        fsp2_defconfig
powerpc                      ppc64e_defconfig
mips                           ci20_defconfig
powerpc                   bluestone_defconfig
sh                          rsk7203_defconfig
nds32                               defconfig
powerpc                    gamecube_defconfig
mips                          ath79_defconfig
s390                          debug_defconfig
powerpc                       holly_defconfig
powerpc                     kmeter1_defconfig
powerpc                     mpc5200_defconfig
openrisc                  or1klitex_defconfig
arm                       cns3420vb_defconfig
arm                           h5000_defconfig
arm                        clps711x_defconfig
arc                        nsim_700_defconfig
powerpc                      pmac32_defconfig
openrisc                 simple_smp_defconfig
powerpc                        icon_defconfig
xtensa                    xip_kc705_defconfig
powerpc                    socrates_defconfig
arm                        neponset_defconfig
arm                         orion5x_defconfig
xtensa                         virt_defconfig
mips                         bigsur_defconfig
sparc                               defconfig
m68k                             allmodconfig
arm                        magician_defconfig
mips                            e55_defconfig
parisc                              defconfig
parisc                generic-32bit_defconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
i386                               tinyconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a006-20210209
x86_64               randconfig-a001-20210209
x86_64               randconfig-a005-20210209
x86_64               randconfig-a004-20210209
x86_64               randconfig-a002-20210209
x86_64               randconfig-a003-20210209
i386                 randconfig-a001-20210209
i386                 randconfig-a005-20210209
i386                 randconfig-a003-20210209
i386                 randconfig-a002-20210209
i386                 randconfig-a006-20210209
i386                 randconfig-a004-20210209
i386                 randconfig-a003-20210212
i386                 randconfig-a005-20210212
i386                 randconfig-a002-20210212
i386                 randconfig-a001-20210212
i386                 randconfig-a004-20210212
i386                 randconfig-a006-20210212
x86_64               randconfig-a003-20210210
x86_64               randconfig-a002-20210210
x86_64               randconfig-a001-20210210
x86_64               randconfig-a004-20210210
x86_64               randconfig-a005-20210210
x86_64               randconfig-a006-20210210
i386                 randconfig-a016-20210209
i386                 randconfig-a013-20210209
i386                 randconfig-a012-20210209
i386                 randconfig-a014-20210209
i386                 randconfig-a011-20210209
i386                 randconfig-a015-20210209
i386                 randconfig-a016-20210211
i386                 randconfig-a014-20210211
i386                 randconfig-a012-20210211
i386                 randconfig-a013-20210211
i386                 randconfig-a011-20210211
i386                 randconfig-a015-20210211
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
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a003-20210211
x86_64               randconfig-a002-20210211
x86_64               randconfig-a001-20210211
x86_64               randconfig-a004-20210211
x86_64               randconfig-a005-20210211
x86_64               randconfig-a006-20210211
x86_64               randconfig-a013-20210209
x86_64               randconfig-a014-20210209
x86_64               randconfig-a015-20210209
x86_64               randconfig-a012-20210209
x86_64               randconfig-a016-20210209
x86_64               randconfig-a011-20210209

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
