Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB2767749C
	for <lists+driverdev-devel@lfdr.de>; Mon, 23 Jan 2023 05:23:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 625B340516;
	Mon, 23 Jan 2023 04:23:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 625B340516
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yxl8hg4vOtiI; Mon, 23 Jan 2023 04:23:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1AA9F40164;
	Mon, 23 Jan 2023 04:23:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1AA9F40164
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7F5D21BF295
 for <devel@linuxdriverproject.org>; Mon, 23 Jan 2023 04:22:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 67C0760B46
 for <devel@linuxdriverproject.org>; Mon, 23 Jan 2023 04:22:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 67C0760B46
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4vPZyhfpuOr8 for <devel@linuxdriverproject.org>;
 Mon, 23 Jan 2023 04:22:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E28D060BC3
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E28D060BC3
 for <devel@driverdev.osuosl.org>; Mon, 23 Jan 2023 04:22:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="412197479"
X-IronPort-AV: E=Sophos;i="5.97,238,1669104000"; d="scan'208";a="412197479"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2023 20:22:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10598"; a="693713184"
X-IronPort-AV: E=Sophos;i="5.97,238,1669104000"; d="scan'208";a="693713184"
Received: from lkp-server01.sh.intel.com (HELO 5646d64e7320) ([10.239.97.150])
 by orsmga001.jf.intel.com with ESMTP; 22 Jan 2023 20:22:55 -0800
Received: from kbuild by 5646d64e7320 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pJoMA-0005Pu-3B;
 Mon, 23 Jan 2023 04:22:54 +0000
Date: Mon, 23 Jan 2023 12:22:04 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 84fda274806a747dacf6be72b342d9dcb0c48737
Message-ID: <63ce0b6c.NgKGL4RQi9Bgd8XD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674447777; x=1705983777;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=QIpyv2GEXwJCG0tSNh3uLidryGotD7vzixKQhht13vY=;
 b=TeHribP2b4mzSfR/ASHjf+6TAnHEtDueUMRfpJr6wfKPItipsXL8GRQu
 7kyZtkT+6XsOeEadw5dza8nm78jRzYkH1OX90JGsenm+n2NezVDlui9qR
 jQCUJ/6YJcnJjxne+61AxiyFMEsAnWgJ3r3Q2Qw7LG6Uq8Aioc/17qnQg
 3KdxnVvOOylXXEo4a5TGPR9CxonGJ+2P9wPgsM75Wv/7lm8NB3XjyycHc
 M+5asJsTn+dtSjQ4BuI7f3Rh2uM92413U3EJY9ISgj1rHhHLXk3wHSTvh
 MaZ94q98rMiZB1HyvV+LfKVxGGjmjbUC0ZNQU4ADth8uWaq/2b8zrhoLX
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TeHribP2
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
branch HEAD: 84fda274806a747dacf6be72b342d9dcb0c48737  bus: step 1

elapsed time: 728m

configs tested: 82
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
i386                                defconfig
alpha                               defconfig
powerpc                           allnoconfig
x86_64                            allnoconfig
i386                 randconfig-a004-20230123
i386                 randconfig-a003-20230123
i386                 randconfig-a002-20230123
i386                 randconfig-a001-20230123
i386                 randconfig-a005-20230123
s390                                defconfig
i386                 randconfig-a006-20230123
s390                             allmodconfig
x86_64                        randconfig-a004
x86_64                        randconfig-a002
m68k                             allmodconfig
arm                                 defconfig
x86_64                           rhel-8.3-syz
x86_64                              defconfig
x86_64                               rhel-8.3
arc                              allyesconfig
ia64                             allmodconfig
alpha                            allyesconfig
i386                             allyesconfig
m68k                             allyesconfig
x86_64                         rhel-8.3-kunit
x86_64                        randconfig-a006
nios2                         10m50_defconfig
x86_64                           rhel-8.3-kvm
s390                             allyesconfig
x86_64                           rhel-8.3-bpf
powerpc                        cell_defconfig
mips                       bmips_be_defconfig
x86_64                          rhel-8.3-func
x86_64                           allyesconfig
sh                               allmodconfig
mips                     loongson1b_defconfig
x86_64                    rhel-8.3-kselftests
arm64                            allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                            hp6xx_defconfig
arm                              allyesconfig
arm                           corgi_defconfig
arc                  randconfig-r043-20230123
riscv                randconfig-r042-20230122
arc                  randconfig-r043-20230122
arm                  randconfig-r046-20230123
i386                          randconfig-c001
s390                 randconfig-r044-20230122
sparc                            allyesconfig
arm                            qcom_defconfig
riscv                            allmodconfig
powerpc                  storcenter_defconfig

clang tested configs:
i386                 randconfig-a012-20230123
i386                 randconfig-a013-20230123
i386                 randconfig-a015-20230123
i386                 randconfig-a011-20230123
i386                 randconfig-a014-20230123
i386                 randconfig-a016-20230123
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                          rhel-8.3-rust
x86_64               randconfig-a013-20230123
x86_64               randconfig-a011-20230123
x86_64               randconfig-a012-20230123
x86_64                        randconfig-a005
x86_64               randconfig-a016-20230123
x86_64               randconfig-a014-20230123
x86_64               randconfig-a015-20230123
hexagon              randconfig-r041-20230123
hexagon              randconfig-r045-20230122
hexagon              randconfig-r045-20230123
arm                        magician_defconfig
arm                  randconfig-r046-20230122
powerpc                     akebono_defconfig
s390                 randconfig-r044-20230123
hexagon              randconfig-r041-20230122
riscv                randconfig-r042-20230123
mips                     cu1830-neo_defconfig
i386                             allyesconfig

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
