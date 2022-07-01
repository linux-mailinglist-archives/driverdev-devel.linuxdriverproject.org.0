Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B47563AEA
	for <lists+driverdev-devel@lfdr.de>; Fri,  1 Jul 2022 22:28:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D323183ED5;
	Fri,  1 Jul 2022 20:28:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D323183ED5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8FOPcCVNaFUJ; Fri,  1 Jul 2022 20:28:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7E13D83E61;
	Fri,  1 Jul 2022 20:28:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7E13D83E61
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id DB9AE1BF5B4
 for <devel@linuxdriverproject.org>; Fri,  1 Jul 2022 20:28:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C3A064189D
 for <devel@linuxdriverproject.org>; Fri,  1 Jul 2022 20:28:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C3A064189D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0mW0w6Y7u85x for <devel@linuxdriverproject.org>;
 Fri,  1 Jul 2022 20:28:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C44834174E
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C44834174E
 for <devel@driverdev.osuosl.org>; Fri,  1 Jul 2022 20:28:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10395"; a="265770212"
X-IronPort-AV: E=Sophos;i="5.92,238,1650956400"; d="scan'208";a="265770212"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2022 13:28:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,238,1650956400"; d="scan'208";a="659553547"
Received: from lkp-server01.sh.intel.com (HELO 68b931ab7ac1) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 01 Jul 2022 13:28:03 -0700
Received: from kbuild by 68b931ab7ac1 with local (Exim 4.95)
 (envelope-from <lkp@intel.com>) id 1o7NFD-000EKa-B0;
 Fri, 01 Jul 2022 20:28:03 +0000
Date: Sat, 02 Jul 2022 04:27:17 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 ee6c6e7342471d468096a16bee9f89b5a6c1e39d
Message-ID: <62bf58a5.SkpTYTz/D3094GZD%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656707286; x=1688243286;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=/5wdjjGz4eVyOiNmCrj7xxfWloMI0D2sxwG2+cFlSNo=;
 b=ckD5xgKBsM6kYnxMwyXy86RiF1K3d4EAxis4EXouGVc0D+qOE99hS+Sn
 4S7VsX6Edn7lx2Q2AXOw1bu/gwqt7NSHbqguBdmfcR7G7X+ziX8V7fwU/
 KuDIHg5/curYGphJD3KEIk7FlniiMU6mlgoYlVXLU/eECExZFZSKgC8CK
 m1JWSYBH9spzjnt3Pd5/sWkm51dIYw9em7+iK3DeMIpZ4Wx/BX3UVIq0D
 BKGdZWhkVcbHDLuDus8S0pmV9w/fFaU45Le4l+0ActdGMT0UGg9CSq7ai
 gWYQ0a9MDsDlGBFie2ZRwVtXXYXt9I0AdHU1Gzyo3qyEeRC1d8U1JnzcP
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ckD5xgKB
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-linus
branch HEAD: ee6c6e7342471d468096a16bee9f89b5a6c1e39d  staging/wlan-ng: get the correct struct hfa384x in work callback

elapsed time: 725m

configs tested: 68
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arm64                            allyesconfig
arm                                 defconfig
arm                              allyesconfig
i386                          randconfig-c001
mips                         db1xxx_defconfig
riscv                    nommu_k210_defconfig
sh                         microdev_defconfig
xtensa                  audio_kc705_defconfig
arc                              alldefconfig
arm                          pxa910_defconfig
x86_64                        randconfig-c001
arm                  randconfig-c002-20220629
ia64                             allmodconfig
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig
i386                                defconfig
i386                             allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                        randconfig-a004
x86_64                        randconfig-a002
x86_64                        randconfig-a006
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a015
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
arc                  randconfig-r043-20220629
riscv                randconfig-r042-20220629
s390                 randconfig-r044-20220629
x86_64                    rhel-8.3-kselftests
um                             i386_defconfig
um                           x86_64_defconfig
x86_64                              defconfig
x86_64                           allyesconfig
x86_64                               rhel-8.3
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-syz

clang tested configs:
arm                       netwinder_defconfig
powerpc                   microwatt_defconfig
powerpc                     akebono_defconfig
powerpc                        fsp2_defconfig
mips                       lemote2f_defconfig
powerpc                 mpc832x_rdb_defconfig
x86_64                        randconfig-k001
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-a012
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
hexagon              randconfig-r045-20220629
hexagon              randconfig-r041-20220629

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
