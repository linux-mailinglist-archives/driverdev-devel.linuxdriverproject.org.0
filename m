Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 590B168CACA
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Feb 2023 00:47:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B002381BA9;
	Mon,  6 Feb 2023 23:47:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B002381BA9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id INi1J1TKpc5A; Mon,  6 Feb 2023 23:47:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7C03381BA8;
	Mon,  6 Feb 2023 23:47:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7C03381BA8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 824141BF3C5
 for <devel@linuxdriverproject.org>; Mon,  6 Feb 2023 23:47:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 57F5F41757
 for <devel@linuxdriverproject.org>; Mon,  6 Feb 2023 23:47:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 57F5F41757
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qIrNh5KOx43d for <devel@linuxdriverproject.org>;
 Mon,  6 Feb 2023 23:47:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EC59E41756
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EC59E41756
 for <devel@driverdev.osuosl.org>; Mon,  6 Feb 2023 23:47:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="393947020"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="393947020"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 15:47:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="660001644"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="660001644"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 06 Feb 2023 15:47:24 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pPBCl-0002sU-2J;
 Mon, 06 Feb 2023 23:47:23 +0000
Date: Tue, 07 Feb 2023 07:46:28 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 3d281bdbffb330da562df985dc30ed1075b638f4
Message-ID: <63e19154.hMdnrDDgjQTmuPXs%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675727252; x=1707263252;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=Id3yuG+ZfWvlP6DRiSYx4OYUzItFnFbdQza6tLCXf8A=;
 b=DixUR1krQTPZwuRQWUVDDdTdeFhLJiYpL82Ci8N7y/Mw5S5k/m3Hbb7m
 NQDCmR4F14HQVyLNUFXC8Ah8KXBSKX0T2jo4CGa8wTmBMMyjrtXd8ziUF
 5rn7lwVNnlbZhXGyVCSHN26HeEZmet3H1SeaBjMJTllVWjkfZOBReHkpp
 kG3dxDUhkEjnuycYufTnaLK9EvETp43MpbUDngo1b1KUzQqhE0zpohYoq
 rsx0/z9T6EYjfjyQhVVZuKvTTZ8LhEMmECprr9H7n+xs1088UewRXLLy0
 Eu5S3vwH4HRQcaqqrXcGb/iStSXhdbzlVJxvAnvALBcp3MxXkaJPp94v6
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DixUR1kr
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
branch HEAD: 3d281bdbffb330da562df985dc30ed1075b638f4  staging: r8188eu: correct error logic of _rtw_init_recv_priv()

elapsed time: 822m

configs tested: 73
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
x86_64                            allnoconfig
arc                                 defconfig
um                           x86_64_defconfig
alpha                               defconfig
s390                                defconfig
powerpc                           allnoconfig
s390                             allmodconfig
x86_64                           rhel-8.3-bpf
i386                 randconfig-a011-20230206
x86_64                         rhel-8.3-kunit
i386                 randconfig-a014-20230206
x86_64                           rhel-8.3-kvm
ia64                             allmodconfig
x86_64                           rhel-8.3-syz
i386                 randconfig-a012-20230206
x86_64                              defconfig
i386                 randconfig-a013-20230206
s390                             allyesconfig
sh                               allmodconfig
i386                 randconfig-a016-20230206
i386                 randconfig-a015-20230206
x86_64                               rhel-8.3
i386                                defconfig
mips                             allyesconfig
x86_64                           allyesconfig
powerpc                          allmodconfig
arm                                 defconfig
x86_64               randconfig-a014-20230206
i386                             allyesconfig
x86_64               randconfig-a013-20230206
x86_64               randconfig-a011-20230206
x86_64               randconfig-a012-20230206
arc                              allyesconfig
x86_64               randconfig-a015-20230206
alpha                            allyesconfig
x86_64               randconfig-a016-20230206
arm                              allyesconfig
arm64                            allyesconfig
m68k                             allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
arc                  randconfig-r043-20230205
arm                  randconfig-r046-20230205
arc                  randconfig-r043-20230206
riscv                randconfig-r042-20230206
s390                 randconfig-r044-20230206
sh                        sh7763rdp_defconfig
xtensa                              defconfig
i386                          randconfig-c001
powerpc              randconfig-c003-20230205
m68k                             allmodconfig

clang tested configs:
i386                 randconfig-a002-20230206
i386                 randconfig-a004-20230206
i386                 randconfig-a003-20230206
i386                 randconfig-a001-20230206
i386                 randconfig-a005-20230206
x86_64               randconfig-a001-20230206
x86_64               randconfig-a002-20230206
i386                 randconfig-a006-20230206
x86_64                          rhel-8.3-rust
x86_64               randconfig-a004-20230206
x86_64               randconfig-a003-20230206
x86_64               randconfig-a005-20230206
x86_64               randconfig-a006-20230206
hexagon              randconfig-r041-20230205
riscv                randconfig-r042-20230205
hexagon              randconfig-r045-20230206
hexagon              randconfig-r041-20230206
arm                  randconfig-r046-20230206
hexagon              randconfig-r045-20230205
s390                 randconfig-r044-20230205
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
