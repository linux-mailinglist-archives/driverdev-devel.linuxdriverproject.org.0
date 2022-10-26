Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4CF60EA1A
	for <lists+driverdev-devel@lfdr.de>; Wed, 26 Oct 2022 22:16:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2352408D0;
	Wed, 26 Oct 2022 20:16:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B2352408D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GWodTp6TvNzi; Wed, 26 Oct 2022 20:16:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 19C22408D7;
	Wed, 26 Oct 2022 20:16:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 19C22408D7
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id DC3C91BF2C2
 for <devel@linuxdriverproject.org>; Wed, 26 Oct 2022 20:16:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C4A1B40571
 for <devel@linuxdriverproject.org>; Wed, 26 Oct 2022 20:16:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C4A1B40571
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id INzvlEBj45l7 for <devel@linuxdriverproject.org>;
 Wed, 26 Oct 2022 20:16:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B111340547
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id B111340547
 for <devel@driverdev.osuosl.org>; Wed, 26 Oct 2022 20:16:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="372261449"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="372261449"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 13:16:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="610097253"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="610097253"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by orsmga006.jf.intel.com with ESMTP; 26 Oct 2022 13:16:10 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1onmos-0007oC-0x;
 Wed, 26 Oct 2022 20:16:10 +0000
Date: Thu, 27 Oct 2022 04:15:14 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 e47dc3ccd7a5911468711177d148c5737d7e44d9
Message-ID: <63599552.dk00RM37UV3W1QGL%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666815372; x=1698351372;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=V6jZmWelG6iVu3gxjRyh3yf/lJqXuCexo30WC5jUY3w=;
 b=C/jOCRXSP2MmwNrsH0Etd2qpn0Pfb9rPZkMB78zJdK4pahNVs2a/Io7L
 7Uvb0seSmISMVfC/FxkjOHNqME0TF/Iceh4nEzSWSBff0eEgobIRUFstl
 ijeFI7C2qjQ6d4M/MfvMNwl6n53St8jyqZvSjlTX8OGAUCvHqxkpB/siQ
 FAz3CNJgJ1zDcjXBzly1HXqDZw3ezCmMgv2SQn7cYFyaiE+6HRvhom3BZ
 YP4i5DKnPErD2l9URvgdW4cEboZcl9c6YYxr32RNN2527X0pXAVbFF0k2
 ndG9L+4PUg8Zt4M1Xi4s68RbfP9PjN9iVWXXiKNUiY7vYFeGTh7h5iWPc
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=C/jOCRXS
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
branch HEAD: e47dc3ccd7a5911468711177d148c5737d7e44d9  kobject: kset_uevent_ops: make uevent() callback take a const *

elapsed time: 720m

configs tested: 104
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
powerpc                           allnoconfig
x86_64                          rhel-8.3-func
ia64                             allmodconfig
arc                                 defconfig
s390                             allmodconfig
x86_64                           rhel-8.3-syz
alpha                               defconfig
x86_64                         rhel-8.3-kunit
alpha                            allyesconfig
x86_64                           rhel-8.3-kvm
m68k                             allmodconfig
arc                              allyesconfig
i386                                defconfig
m68k                             allyesconfig
s390                                defconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
sh                               allmodconfig
powerpc                          allmodconfig
s390                             allyesconfig
mips                             allyesconfig
x86_64                        randconfig-a015
i386                             allyesconfig
riscv                randconfig-r042-20221026
arc                  randconfig-r043-20221026
s390                 randconfig-r044-20221026
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
sh                             sh03_defconfig
mips                      loongson3_defconfig
sh                        sh7757lcr_defconfig
sh                          urquell_defconfig
powerpc                        warp_defconfig
arm                        trizeps4_defconfig
arm                        keystone_defconfig
sh                             espt_defconfig
arm                             ezx_defconfig
xtensa                         virt_defconfig
arm                          exynos_defconfig
arm                            qcom_defconfig
i386                          randconfig-c001
powerpc                       ppc64_defconfig
ia64                                defconfig
m68k                           virt_defconfig
mips                            gpr_defconfig
m68k                       m5475evb_defconfig
powerpc                 mpc837x_mds_defconfig
sh                 kfr2r09-romimage_defconfig
sh                          sdk7780_defconfig
sparc                               defconfig
arc                              alldefconfig
arm                            pleb_defconfig
mips                      maltasmvp_defconfig
powerpc                    amigaone_defconfig
sh                           se7724_defconfig
sh                          rsk7201_defconfig
mips                 randconfig-c004-20221026
powerpc                         wii_defconfig
arm                        multi_v7_defconfig
arc                           tb10x_defconfig
m68k                          sun3x_defconfig
powerpc                      ppc6xx_defconfig
powerpc                     stx_gp3_defconfig
arm                         axm55xx_defconfig
powerpc                     redwood_defconfig
sh                      rts7751r2d1_defconfig
mips                        vocore2_defconfig
sh                         apsh4a3a_defconfig
ia64                             allyesconfig
xtensa                generic_kc705_defconfig

clang tested configs:
i386                 randconfig-a001-20221024
i386                 randconfig-a002-20221024
i386                 randconfig-a003-20221024
i386                 randconfig-a004-20221024
i386                 randconfig-a005-20221024
x86_64                        randconfig-a012
x86_64                        randconfig-a014
i386                 randconfig-a006-20221024
x86_64                        randconfig-a016
hexagon              randconfig-r045-20221026
hexagon              randconfig-r041-20221026
x86_64                        randconfig-a005
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
