Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 344E85B4131
	for <lists+driverdev-devel@lfdr.de>; Fri,  9 Sep 2022 23:01:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EFFFE60F3D;
	Fri,  9 Sep 2022 21:01:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EFFFE60F3D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ig4ZLLu9hyvW; Fri,  9 Sep 2022 21:01:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9AD1C60BE1;
	Fri,  9 Sep 2022 21:01:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9AD1C60BE1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CEB861BF852
 for <devel@linuxdriverproject.org>; Fri,  9 Sep 2022 21:01:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id A9A1860F3D
 for <devel@linuxdriverproject.org>; Fri,  9 Sep 2022 21:01:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A9A1860F3D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kiDZ51hpvnGa for <devel@linuxdriverproject.org>;
 Fri,  9 Sep 2022 21:01:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E33DE60BE1
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E33DE60BE1
 for <devel@driverdev.osuosl.org>; Fri,  9 Sep 2022 21:01:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10465"; a="284585741"
X-IronPort-AV: E=Sophos;i="5.93,304,1654585200"; d="scan'208";a="284585741"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 14:00:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,304,1654585200"; d="scan'208";a="648576903"
Received: from lkp-server02.sh.intel.com (HELO b2938d2e5c5a) ([10.239.97.151])
 by orsmga001.jf.intel.com with ESMTP; 09 Sep 2022 14:00:07 -0700
Received: from kbuild by b2938d2e5c5a with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oWl6c-0001j2-3C;
 Fri, 09 Sep 2022 21:00:06 +0000
Date: Sat, 10 Sep 2022 05:00:00 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 a90044ef5605bc0961356548526c44964bc819a7
Message-ID: <631ba950.4LNvLAsV+554huwe%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662757295; x=1694293295;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=oLvfUkf4qix3imre5buRCHZiPecCauvkrYIydupoLck=;
 b=YstDp9LYoILBkYDHOJzlg6j95aXHpLCOYNKYJEXqfE8E+SVdtbdYAsaO
 PtPOBjOHVWn3myVDH+BUlDEM28iFypnAG4iX8GciG50pjJocZzJkmY9Vi
 olsaJf8iPYFAcJHvb/ttMSO2zKXwGbPoJnfMsDug3lSFojNxiJybL0755
 1C+X6rPnH+7W9M/nm126MgGEUa9Qxp7NOCZZx1TXMP8ASJphbyLaFj23r
 OKQ97lw1q0rWR7Pt30O7TBOfEPcqTq3hblQpa4yKHD2RdM14sB9Qccknt
 Dbnas4FDqgPaqNuEFXEo7FkYw8OFjcKbJg7J5NcxVn0Ev/WyKT4d78XGk
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YstDp9LY
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
branch HEAD: a90044ef5605bc0961356548526c44964bc819a7  staging: rtl8723bs: Fix return type for implementation of ndo_start_xmit

elapsed time: 732m

configs tested: 107
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                              allyesconfig
alpha                            allyesconfig
um                             i386_defconfig
um                           x86_64_defconfig
m68k                             allyesconfig
m68k                             allmodconfig
x86_64                              defconfig
x86_64                               rhel-8.3
powerpc                           allnoconfig
x86_64                           allyesconfig
x86_64                        randconfig-a002
i386                                defconfig
x86_64                          rhel-8.3-func
arm                                 defconfig
x86_64                        randconfig-a006
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                        randconfig-a004
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
sh                               allmodconfig
i386                             allyesconfig
arm                              allyesconfig
arm64                            allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
mips                            ar7_defconfig
mips                         rt305x_defconfig
arc                      axs103_smp_defconfig
openrisc                    or1ksim_defconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                    vdk_hs38_smp_defconfig
sh                         microdev_defconfig
mips                           xway_defconfig
loongarch                           defconfig
loongarch                         allnoconfig
i386                          randconfig-c001
sh                             shx3_defconfig
xtensa                              defconfig
mips                    maltaup_xpa_defconfig
mips                  maltasmvp_eva_defconfig
sh                        edosk7705_defconfig
arm                             pxa_defconfig
arc                              alldefconfig
arm                           u8500_defconfig
riscv                    nommu_virt_defconfig
riscv                          rv32_defconfig
riscv                    nommu_k210_defconfig
i386                   debian-10.3-kselftests
i386                              debian-10.3
m68k                       m5475evb_defconfig
powerpc                 mpc834x_itx_defconfig
powerpc                     tqm8548_defconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a015
nios2                            allyesconfig
sh                             espt_defconfig
sh                     magicpanelr2_defconfig
s390                       zfcpdump_defconfig
mips                        bcm47xx_defconfig
riscv                               defconfig
nios2                         10m50_defconfig
powerpc                 mpc837x_rdb_defconfig
ia64                             allmodconfig
riscv                randconfig-r042-20220908
arc                  randconfig-r043-20220907
arc                  randconfig-r043-20220908
s390                 randconfig-r044-20220908
arm                           sunxi_defconfig
sh                        dreamcast_defconfig
arm                            zeus_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func

clang tested configs:
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-k001
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
powerpc                        fsp2_defconfig
powerpc                 mpc8272_ads_defconfig
mips                        qi_lb60_defconfig
arm                          pcm027_defconfig
mips                           mtx1_defconfig
riscv                randconfig-r042-20220907
hexagon              randconfig-r041-20220907
hexagon              randconfig-r041-20220908
hexagon              randconfig-r045-20220908
hexagon              randconfig-r045-20220907
s390                 randconfig-r044-20220907
riscv                randconfig-r042-20220909
hexagon              randconfig-r041-20220909
hexagon              randconfig-r045-20220909
s390                 randconfig-r044-20220909
powerpc                          allmodconfig
powerpc                     tqm8540_defconfig
powerpc                      ppc44x_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
