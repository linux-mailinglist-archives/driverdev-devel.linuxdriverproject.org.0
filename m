Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 625FC5FE220
	for <lists+driverdev-devel@lfdr.de>; Thu, 13 Oct 2022 20:54:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 87C97611C6;
	Thu, 13 Oct 2022 18:54:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 87C97611C6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oHS3yOyzZWGt; Thu, 13 Oct 2022 18:54:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3A6AE611C1;
	Thu, 13 Oct 2022 18:54:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3A6AE611C1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9E9E91BF3F7
 for <devel@linuxdriverproject.org>; Thu, 13 Oct 2022 18:54:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 79C5440CE5
 for <devel@linuxdriverproject.org>; Thu, 13 Oct 2022 18:54:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79C5440CE5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YfyU4PUZjBbk for <devel@linuxdriverproject.org>;
 Thu, 13 Oct 2022 18:54:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7D6C6404C9
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7D6C6404C9
 for <devel@driverdev.osuosl.org>; Thu, 13 Oct 2022 18:54:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="331685911"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="331685911"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 11:54:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="731993906"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="731993906"
Received: from lkp-server01.sh.intel.com (HELO 2af0a69ca4e0) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 13 Oct 2022 11:54:16 -0700
Received: from kbuild by 2af0a69ca4e0 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oj3LU-0005TL-06;
 Thu, 13 Oct 2022 18:54:16 +0000
Date: Fri, 14 Oct 2022 02:54:11 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:readfile] BUILD SUCCESS
 afed62505dbc330738f027e5ddddabd67a5ae3b7
Message-ID: <63485ed3.Nl7RnyjrmMIKWVC8%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665687258; x=1697223258;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=QVWuIjh/Q+LWNOY/88enHXSExddHJutxPMUKy8ChIuQ=;
 b=N50rIyNZ22IlGZCFHqrSufYwr+sNs2vn3bMgHtzIfPwZxLGQAB+YaYJZ
 +PKo1F+3BR/arCV9Vv3ixrwK6Xwhi9WF+fEwzPt/6Y5btt1vj9DtS5+1x
 XH9n/QNIHAZ9gZy4rpauAwon0OgkaQxUieiocPYK1XlyIKIYAHyoUNr56
 cHMauK1fuOSCFt0qFAmIZ7EdkS6Jp+tk2XiHubmrctw6MncokCnm9el8S
 kY9e9mzIQgYkYuXatOahd6coU24n4OsrMFDNEDzK8MsgGH3WfzcGEY0tu
 xDysf9kblfV6/NqyZmigPx9Fj9fMgmsrbxp3UTBhR+qGrKbWUX/PPoP1F
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=N50rIyNZ
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
branch HEAD: afed62505dbc330738f027e5ddddabd67a5ae3b7  readfile.2: new page describing readfile(2)

elapsed time: 724m

configs tested: 106
configs skipped: 5

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
alpha                               defconfig
um                             i386_defconfig
i386                          randconfig-a001
i386                          randconfig-a003
arc                              allyesconfig
x86_64                           rhel-8.3-syz
um                           x86_64_defconfig
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
i386                          randconfig-a005
riscv                randconfig-r042-20221012
alpha                            allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                              defconfig
s390                             allmodconfig
m68k                             allyesconfig
s390                                defconfig
x86_64                               rhel-8.3
i386                                defconfig
arc                  randconfig-r043-20221012
m68k                             allmodconfig
s390                 randconfig-r044-20221012
x86_64                        randconfig-a004
s390                             allyesconfig
x86_64                        randconfig-a002
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a006
arm                                 defconfig
x86_64                        randconfig-a015
x86_64                           allyesconfig
ia64                             allmodconfig
i386                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
arm64                            allyesconfig
arm                              allyesconfig
sh                               allmodconfig
csky                              allnoconfig
alpha                             allnoconfig
arc                               allnoconfig
riscv                             allnoconfig
arm                        multi_v7_defconfig
arc                     haps_hs_smp_defconfig
sh                          kfr2r09_defconfig
loongarch                 loongson3_defconfig
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
i386                          randconfig-c001
sh                ecovec24-romimage_defconfig
sh                          urquell_defconfig
arm                         at91_dt_defconfig
arc                     nsimosci_hs_defconfig
arm                         nhk8815_defconfig
nios2                               defconfig
ia64                        generic_defconfig
powerpc                 mpc837x_mds_defconfig
mips                         bigsur_defconfig
sh                           se7780_defconfig
arm                             ezx_defconfig
powerpc                  iss476-smp_defconfig
powerpc                       maple_defconfig
powerpc                      ppc40x_defconfig
sh                            shmin_defconfig
sh                        apsh4ad0a_defconfig
xtensa                           allyesconfig
arm                         lpc18xx_defconfig
mips                 decstation_r4k_defconfig
xtensa                    xip_kc705_defconfig
i386                          debian-10.3-kvm
i386                        debian-10.3-kunit
i386                         debian-10.3-func
nios2                            allyesconfig
parisc                              defconfig
parisc64                            defconfig
parisc                           allyesconfig

clang tested configs:
i386                          randconfig-a002
hexagon              randconfig-r041-20221012
i386                          randconfig-a004
hexagon              randconfig-r045-20221012
i386                          randconfig-a006
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a012
x86_64                        randconfig-a005
x86_64                        randconfig-a014
x86_64                        randconfig-a016
powerpc                     tqm5200_defconfig
arm                           omap1_defconfig
x86_64                        randconfig-k001
arm                        mvebu_v5_defconfig
powerpc                     tqm8540_defconfig
powerpc                     akebono_defconfig
mips                          malta_defconfig
powerpc                    ge_imp3a_defconfig
i386                          randconfig-a011
i386                          randconfig-a013
i386                          randconfig-a015
arm                       aspeed_g4_defconfig
powerpc                      ppc44x_defconfig
mips                        qi_lb60_defconfig
mips                     cu1000-neo_defconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
