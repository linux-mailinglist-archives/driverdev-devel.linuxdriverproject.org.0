Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B16AD269447
	for <lists+driverdev-devel@lfdr.de>; Mon, 14 Sep 2020 20:00:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E13178677D;
	Mon, 14 Sep 2020 18:00:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FKG31SCq3v-I; Mon, 14 Sep 2020 18:00:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4120086774;
	Mon, 14 Sep 2020 18:00:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3806D1BF3DD
 for <devel@linuxdriverproject.org>; Mon, 14 Sep 2020 18:00:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1FDCB2044F
 for <devel@linuxdriverproject.org>; Mon, 14 Sep 2020 18:00:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id g9dLcU7MW0cO for <devel@linuxdriverproject.org>;
 Mon, 14 Sep 2020 18:00:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by silver.osuosl.org (Postfix) with ESMTPS id A999120425
 for <devel@driverdev.osuosl.org>; Mon, 14 Sep 2020 18:00:12 +0000 (UTC)
IronPort-SDR: /9Wf1ekX2mB71rOr2yA86ib/RGQE6N8msuPIDV13MQhShVckvA46ACG3b0K7NKDHZjpT+PzPLQ
 Pk7fuLvDvytw==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="138639627"
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="138639627"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 11:00:06 -0700
IronPort-SDR: yQr+v4uviVnLgrXv4LTpUwPo9MH0t03NqmAILd6Fv5CP9I3YlVctmYvNS0rtJ4GbKvSEeLU8SB
 u3q8q/poIpDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,427,1592895600"; d="scan'208";a="301837850"
Received: from lkp-server01.sh.intel.com (HELO a75722977aa5) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 14 Sep 2020 11:00:05 -0700
Received: from kbuild by a75722977aa5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1kHslo-00018o-NL; Mon, 14 Sep 2020 18:00:04 +0000
Date: Tue, 15 Sep 2020 01:59:15 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 1622d35453132a1acd6d650175f9f45e4bcf553e
Message-ID: <5f5faf73.9jfhZp5XnJuNmjvc%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git  staging-next
branch HEAD: 1622d35453132a1acd6d650175f9f45e4bcf553e  Merge 5.9-rc5 into staging-next

elapsed time: 722m

configs tested: 175
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
nios2                         3c120_defconfig
mips                  maltasmvp_eva_defconfig
arm                     am200epdkit_defconfig
arm                         vf610m4_defconfig
sh                            shmin_defconfig
mips                          ath79_defconfig
sh                                  defconfig
sh                           se7724_defconfig
arm                            pleb_defconfig
m68k                        m5272c3_defconfig
m68k                        stmark2_defconfig
arm                              alldefconfig
arc                     haps_hs_smp_defconfig
powerpc                       holly_defconfig
arm                          badge4_defconfig
arm                            zeus_defconfig
um                           x86_64_defconfig
m68k                       m5208evb_defconfig
arc                           tb10x_defconfig
riscv                             allnoconfig
mips                        nlm_xlp_defconfig
powerpc                    klondike_defconfig
powerpc                      bamboo_defconfig
mips                        jmr3927_defconfig
mips                    maltaup_xpa_defconfig
arm                          tango4_defconfig
sh                        dreamcast_defconfig
powerpc                 xes_mpc85xx_defconfig
x86_64                              defconfig
powerpc                       eiger_defconfig
mips                        nlm_xlr_defconfig
arm                          pxa3xx_defconfig
m68k                        m5307c3_defconfig
powerpc                      mgcoge_defconfig
sparc                               defconfig
arm                         nhk8815_defconfig
sh                           se7722_defconfig
powerpc                     ep8248e_defconfig
sparc                       sparc64_defconfig
ia64                         bigsur_defconfig
sh                          r7785rp_defconfig
arc                            hsdk_defconfig
arm                           spitz_defconfig
mips                         cobalt_defconfig
c6x                        evmc6678_defconfig
arm                         s3c6400_defconfig
m68k                        mvme147_defconfig
xtensa                              defconfig
m68k                          hp300_defconfig
powerpc                      obs600_defconfig
riscv                            alldefconfig
arm                        multi_v5_defconfig
arm                         cm_x300_defconfig
xtensa                generic_kc705_defconfig
arm                         lpc18xx_defconfig
c6x                              allyesconfig
mips                      loongson3_defconfig
sh                   sh7724_generic_defconfig
powerpc64                           defconfig
arm                         lubbock_defconfig
arm                         palmz72_defconfig
arm                           sunxi_defconfig
arm                         ebsa110_defconfig
arm                        cerfcube_defconfig
arc                        nsimosci_defconfig
powerpc                 mpc85xx_cds_defconfig
powerpc                          allmodconfig
powerpc                  mpc866_ads_defconfig
m68k                             alldefconfig
mips                           jazz_defconfig
arm                              zx_defconfig
mips                      bmips_stb_defconfig
c6x                                 defconfig
powerpc                    mvme5100_defconfig
powerpc                 mpc8540_ads_defconfig
arm                   milbeaut_m10v_defconfig
i386                                defconfig
ia64                             alldefconfig
arm                          imote2_defconfig
mips                   sb1250_swarm_defconfig
sh                               allmodconfig
arm                       versatile_defconfig
mips                          ath25_defconfig
powerpc                      pcm030_defconfig
arm                          gemini_defconfig
xtensa                          iss_defconfig
xtensa                           alldefconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
parisc                              defconfig
s390                             allyesconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                           allnoconfig
x86_64               randconfig-a004-20200914
x86_64               randconfig-a006-20200914
x86_64               randconfig-a003-20200914
x86_64               randconfig-a002-20200914
x86_64               randconfig-a001-20200914
x86_64               randconfig-a005-20200914
i386                 randconfig-a004-20200913
i386                 randconfig-a006-20200913
i386                 randconfig-a003-20200913
i386                 randconfig-a001-20200913
i386                 randconfig-a002-20200913
i386                 randconfig-a005-20200913
i386                 randconfig-a004-20200914
i386                 randconfig-a006-20200914
i386                 randconfig-a001-20200914
i386                 randconfig-a003-20200914
i386                 randconfig-a002-20200914
i386                 randconfig-a005-20200914
x86_64               randconfig-a014-20200913
x86_64               randconfig-a011-20200913
x86_64               randconfig-a012-20200913
x86_64               randconfig-a016-20200913
x86_64               randconfig-a015-20200913
x86_64               randconfig-a013-20200913
i386                 randconfig-a015-20200913
i386                 randconfig-a014-20200913
i386                 randconfig-a011-20200913
i386                 randconfig-a013-20200913
i386                 randconfig-a016-20200913
i386                 randconfig-a012-20200913
i386                 randconfig-a015-20200914
i386                 randconfig-a014-20200914
i386                 randconfig-a011-20200914
i386                 randconfig-a013-20200914
i386                 randconfig-a016-20200914
i386                 randconfig-a012-20200914
riscv                            allyesconfig
riscv                               defconfig
riscv                            allmodconfig
x86_64                                   rhel
x86_64                           allyesconfig
x86_64                    rhel-7.6-kselftests
x86_64                               rhel-8.3
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-a006-20200913
x86_64               randconfig-a004-20200913
x86_64               randconfig-a003-20200913
x86_64               randconfig-a002-20200913
x86_64               randconfig-a005-20200913
x86_64               randconfig-a001-20200913
x86_64               randconfig-a014-20200914
x86_64               randconfig-a011-20200914
x86_64               randconfig-a016-20200914
x86_64               randconfig-a012-20200914
x86_64               randconfig-a015-20200914
x86_64               randconfig-a013-20200914

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
