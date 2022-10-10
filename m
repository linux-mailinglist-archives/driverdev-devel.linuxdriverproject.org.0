Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF475F94CD
	for <lists+driverdev-devel@lfdr.de>; Mon, 10 Oct 2022 02:12:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 379DD606E7;
	Mon, 10 Oct 2022 00:11:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 379DD606E7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RhoYzreSjIeo; Mon, 10 Oct 2022 00:11:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B9EC260E3C;
	Mon, 10 Oct 2022 00:11:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B9EC260E3C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EEE471BF9AA
 for <devel@linuxdriverproject.org>; Mon, 10 Oct 2022 00:11:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C61A6416AD
 for <devel@linuxdriverproject.org>; Mon, 10 Oct 2022 00:11:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C61A6416AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FtUT2F5lWWCS for <devel@linuxdriverproject.org>;
 Mon, 10 Oct 2022 00:11:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8CA24416B7
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8CA24416B7
 for <devel@driverdev.osuosl.org>; Mon, 10 Oct 2022 00:11:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="330572104"
X-IronPort-AV: E=Sophos;i="5.95,172,1661842800"; d="scan'208";a="330572104"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2022 17:11:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10495"; a="603536746"
X-IronPort-AV: E=Sophos;i="5.95,172,1661842800"; d="scan'208";a="603536746"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by orsmga006.jf.intel.com with ESMTP; 09 Oct 2022 17:11:41 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ohgOS-0001Nq-30;
 Mon, 10 Oct 2022 00:11:40 +0000
Date: Mon, 10 Oct 2022 08:10:45 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 9baa1b9a10c1e7506ac0996961ea28b3bdbeb090
Message-ID: <63436305.qISypTqKWDzz3lZy%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665360704; x=1696896704;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=hlwT/n01nsnvOj18GlHhkUBpU8z1gmSx/ZDH3j+ND9s=;
 b=Oiwkq+44jmakuRd+DoCQbuhVIvyOzM3FJRTrGbczCjG+i5vpUo4cziR9
 BoXZqvpX2t+bJVmVNR6gBYcA1cMQ1j+M7uigzuJTNfU4D39Xy+7aH26Tl
 xeu6ANQYDulA97pARpppVa8PFKqI908FqbOEy1hDqV27mQ50ii26V6rpN
 cmn0Von3AfTeeGTr6AupVFAaEWbbvSwH9TMd+PBVgfcZ3mvFH4nH7f87j
 Bu3lbJgF9q8kWzDmlFy5Oj/4/r0qzoWeyGYhDJMsgDLHnHFQ5+xV3WHAb
 rcZk2YEpb1n/ehhQFiZ64FF1u69kjzwH3wDCEJcofrRvspbsMRtq32AE5
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Oiwkq+44
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
branch HEAD: 9baa1b9a10c1e7506ac0996961ea28b3bdbeb090  readfile.2: new page describing readfile(2)

elapsed time: 724m

configs tested: 133
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
arc                                 defconfig
i386                                defconfig
arm                                 defconfig
powerpc                           allnoconfig
x86_64                         rhel-8.3-kunit
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                           allyesconfig
x86_64                        randconfig-a015
s390                 randconfig-r044-20221009
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a004
powerpc                          allmodconfig
x86_64                    rhel-8.3-kselftests
sh                               allmodconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a013
mips                             allyesconfig
i386                          randconfig-a014
m68k                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
x86_64                        randconfig-a011
x86_64                           rhel-8.3-syz
m68k                             allmodconfig
x86_64                        randconfig-a006
i386                             allyesconfig
i386                          randconfig-a005
i386                          randconfig-a012
arc                  randconfig-r043-20221009
alpha                             allnoconfig
i386                          randconfig-a016
riscv                randconfig-r042-20221009
riscv                             allnoconfig
csky                              allnoconfig
arc                               allnoconfig
ia64                             allmodconfig
arm                              allyesconfig
arm64                            allyesconfig
sh                ecovec24-romimage_defconfig
xtensa                           alldefconfig
sh                           se7712_defconfig
arm                       omap2plus_defconfig
powerpc                     taishan_defconfig
xtensa                  nommu_kc705_defconfig
sh                               alldefconfig
sparc                               defconfig
sh                                  defconfig
parisc64                         alldefconfig
arm                         lubbock_defconfig
sh                         ap325rxa_defconfig
ia64                      gensparse_defconfig
mips                           gcw0_defconfig
mips                            gpr_defconfig
i386                          randconfig-c001
sh                           se7721_defconfig
powerpc                 mpc834x_mds_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
s390                             allmodconfig
alpha                               defconfig
powerpc                      ep88xc_defconfig
arm                            lart_defconfig
arm                      footbridge_defconfig
mips                 decstation_r4k_defconfig
arm                            mps2_defconfig
alpha                            allyesconfig
ia64                         bigsur_defconfig
arm                           sunxi_defconfig
sh                          sdk7786_defconfig
arm                         lpc18xx_defconfig
sh                           se7705_defconfig
arc                              allyesconfig
m68k                          atari_defconfig
loongarch                           defconfig
powerpc                     asp8347_defconfig
riscv                            allmodconfig
s390                                defconfig
arc                        vdk_hs38_defconfig
sh                             espt_defconfig
arm                           corgi_defconfig
arm                         cm_x300_defconfig
s390                             allyesconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
loongarch                         allnoconfig
loongarch                        allmodconfig
arm                  randconfig-c002-20221009
x86_64                        randconfig-c001
sh                               j2_defconfig
powerpc                     tqm8541_defconfig
arm                             ezx_defconfig
mips                         cobalt_defconfig
sh                           se7750_defconfig
arm                        cerfcube_defconfig
arm                        spear6xx_defconfig
riscv                            allyesconfig
nios2                            allyesconfig
nios2                               defconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig
arm                       multi_v4t_defconfig
xtensa                    xip_kc705_defconfig
sh                        edosk7705_defconfig
sh                          lboxre2_defconfig

clang tested configs:
hexagon              randconfig-r045-20221009
x86_64                        randconfig-a014
i386                          randconfig-a013
hexagon              randconfig-r041-20221009
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a016
i386                          randconfig-a002
x86_64                        randconfig-a012
i386                          randconfig-a011
x86_64                        randconfig-a003
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a015
arm                     davinci_all_defconfig
arm                            dove_defconfig
x86_64                        randconfig-k001
powerpc                   bluestone_defconfig
powerpc                          allyesconfig
powerpc                       ebony_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
