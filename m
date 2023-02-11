Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A701693007
	for <lists+driverdev-devel@lfdr.de>; Sat, 11 Feb 2023 11:36:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AE866403A2;
	Sat, 11 Feb 2023 10:36:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE866403A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bXdEtK1IKdho; Sat, 11 Feb 2023 10:36:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 84A314037E;
	Sat, 11 Feb 2023 10:36:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 84A314037E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2152C1BF59A
 for <devel@linuxdriverproject.org>; Sat, 11 Feb 2023 10:36:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id EE52E82039
 for <devel@linuxdriverproject.org>; Sat, 11 Feb 2023 10:36:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EE52E82039
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mgwuLJKA9CRZ for <devel@linuxdriverproject.org>;
 Sat, 11 Feb 2023 10:36:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DECFD82038
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DECFD82038
 for <devel@driverdev.osuosl.org>; Sat, 11 Feb 2023 10:36:07 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="329231393"
X-IronPort-AV: E=Sophos;i="5.97,289,1669104000"; d="scan'208";a="329231393"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2023 02:36:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="698671347"
X-IronPort-AV: E=Sophos;i="5.97,289,1669104000"; d="scan'208";a="698671347"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 11 Feb 2023 02:36:05 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQnEi-0006Qb-2x;
 Sat, 11 Feb 2023 10:36:04 +0000
Date: Sat, 11 Feb 2023 18:35:55 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 31ef5c6424d318f5e8e7166fd7119a3804d9eb41
Message-ID: <63e76f8b.Dopu+4ccyKbxyOxs%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676111767; x=1707647767;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=+eLZYfEpAvwecl9JvJflDFM/80m5n8iyvcCRMvsFUkc=;
 b=WN3orSjnDBPLxRvkedM7gcIJS23JrYDZ40BmU5XmBuhEo5jrE02NNq6c
 /LykxYCcBiEUg/iFQzqox8XBC4PEw/lkohUmKEHXpr5VJTKltm8efNWVL
 Z1HV2LJw4TpkV06UJjN/SQ4EfQ8zV2bb9RZhLPkFEhPOQlKW3L1W7dvm7
 7Owj/Q8wQ5P+fG5Tmk8SsJSEeZAobzUCpb61/HEVP/rdTNfC5qSkEiQLo
 t6X41hhHvwwn7u3GpRVIEJHoRvG2u2pdKyQqrAadjcxGk5QV/DfPPvHvH
 lJDkA1cxAPQ+zhbIjk6Jtb6l3wUPk6fHCLAaJ4pq9+GQlePTW4hndyKn0
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WN3orSjn
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git bus_cleanup
branch HEAD: 31ef5c6424d318f5e8e7166fd7119a3804d9eb41  driver core: cpu: don't hand-override the uevent bus_type callback.

elapsed time: 1447m

configs tested: 97
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
alpha                            allyesconfig
alpha                               defconfig
arc                               allnoconfig
arc                              allyesconfig
arc                                 defconfig
arc                 nsimosci_hs_smp_defconfig
arc                  randconfig-r043-20230210
arm                              allmodconfig
arm                              allyesconfig
arm                       aspeed_g5_defconfig
arm                                 defconfig
arm                          exynos_defconfig
arm                  randconfig-r046-20230210
arm                         vf610m4_defconfig
arm64                            allyesconfig
arm64                               defconfig
csky                                defconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                          randconfig-c001
ia64                             allmodconfig
ia64                                defconfig
loongarch                        allmodconfig
loongarch                         allnoconfig
loongarch                           defconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                          hp300_defconfig
m68k                          multi_defconfig
mips                             allmodconfig
mips                             allyesconfig
mips                       bmips_be_defconfig
nios2                               defconfig
openrisc                       virt_defconfig
parisc                              defconfig
parisc                generic-64bit_defconfig
parisc64                            defconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
powerpc                   motionpro_defconfig
powerpc                  storcenter_defconfig
riscv                            allmodconfig
riscv                             allnoconfig
riscv                               defconfig
riscv             nommu_k210_sdcard_defconfig
riscv                          rv32_defconfig
s390                             allmodconfig
s390                             allyesconfig
s390                                defconfig
sh                               allmodconfig
sh                ecovec24-romimage_defconfig
sh                   rts7751r2dplus_defconfig
sparc                               defconfig
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                            allnoconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                                  kexec
x86_64                        randconfig-a002
x86_64                        randconfig-a004
x86_64                        randconfig-a006
x86_64                        randconfig-a011
x86_64                        randconfig-a013
x86_64                        randconfig-a015
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
xtensa                generic_kc705_defconfig

clang tested configs:
arm                       cns3420vb_defconfig
arm                         lpc32xx_defconfig
hexagon              randconfig-r041-20230210
hexagon              randconfig-r045-20230210
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
mips                           ip22_defconfig
powerpc                          allmodconfig
powerpc                 mpc8272_ads_defconfig
riscv                randconfig-r042-20230210
s390                 randconfig-r044-20230210
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
