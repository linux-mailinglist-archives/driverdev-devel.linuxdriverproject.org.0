Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3267868E1C8
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Feb 2023 21:18:42 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2CF5D40AFA;
	Tue,  7 Feb 2023 20:18:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2CF5D40AFA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id b9BVvpSDJGtF; Tue,  7 Feb 2023 20:18:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6608240186;
	Tue,  7 Feb 2023 20:18:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6608240186
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3196C1BF31D
 for <devel@linuxdriverproject.org>; Tue,  7 Feb 2023 20:18:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 17B154026C
 for <devel@linuxdriverproject.org>; Tue,  7 Feb 2023 20:18:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 17B154026C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CY76jWHQql8o for <devel@linuxdriverproject.org>;
 Tue,  7 Feb 2023 20:18:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C552440263
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C552440263
 for <devel@driverdev.osuosl.org>; Tue,  7 Feb 2023 20:18:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="317608260"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="317608260"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 12:18:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="730583940"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="730583940"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 07 Feb 2023 12:18:31 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pPUQA-0003ra-33;
 Tue, 07 Feb 2023 20:18:30 +0000
Date: Wed, 08 Feb 2023 04:18:23 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 0fb449c5749ce5a6238a53f69bf178405862473e
Message-ID: <63e2b20f.R1e5Tj4ON22er62h%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675801113; x=1707337113;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=fIJ0wCIhpHP3udT/B1DWRpS2F/fIbU+t5KQR2LeufVY=;
 b=H1IWtKGyDpE8Cm0S7kGlvytQGCspj+XCfhgrNdQ/zvW09kTIyzPd2ZGl
 ViwAJuIDJ21hke0fr4A2m0piIxeNybihSnt/HuFbNNJy+DIe3PAkz6R3o
 f8Wf8wLLJj7xsAefuofM5o+LMYPzeHE3P7aQ48Fctmdh1NCXQGTZWZR/l
 aodMLbOiljR+50Y4EyjdqbX/HFdPqm6aEFLMcRzwAij8Cjwk1WIqvB5vx
 9xCIvTpV0aNcVuta+pHkVLZK57y7vTWeFCi5Cttum2tvGIQj7tLG7dEQX
 sqnIL8fOt689nFKPKP4tgi7GhrALF8XT51pPnP2leTP0BDg5pY+IeoxVY
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H1IWtKGy
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
branch HEAD: 0fb449c5749ce5a6238a53f69bf178405862473e  staging: r8188eu: remove change_rfpwrstate

elapsed time: 724m

configs tested: 68
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
powerpc                           allnoconfig
mips                             allyesconfig
sh                               allmodconfig
um                             i386_defconfig
arc                                 defconfig
um                           x86_64_defconfig
x86_64                           rhel-8.3-bpf
alpha                               defconfig
powerpc                          allmodconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
arm                                 defconfig
i386                 randconfig-a011-20230206
i386                 randconfig-a014-20230206
i386                 randconfig-a012-20230206
i386                 randconfig-a013-20230206
i386                 randconfig-a015-20230206
i386                 randconfig-a016-20230206
x86_64                              defconfig
s390                                defconfig
s390                             allmodconfig
arm64                            allyesconfig
x86_64                               rhel-8.3
x86_64               randconfig-a013-20230206
x86_64               randconfig-a011-20230206
x86_64               randconfig-a012-20230206
arm                              allyesconfig
x86_64               randconfig-a014-20230206
x86_64               randconfig-a015-20230206
x86_64               randconfig-a016-20230206
x86_64                           allyesconfig
i386                                defconfig
ia64                             allmodconfig
i386                             allyesconfig
s390                             allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
riscv                randconfig-r042-20230204
arc                  randconfig-r043-20230204
arc                  randconfig-r043-20230206
x86_64                          rhel-8.3-func
s390                 randconfig-r044-20230204
x86_64                    rhel-8.3-kselftests
riscv                randconfig-r042-20230206
s390                 randconfig-r044-20230206

clang tested configs:
i386                 randconfig-a005-20230206
i386                 randconfig-a004-20230206
i386                 randconfig-a003-20230206
i386                 randconfig-a001-20230206
i386                 randconfig-a002-20230206
i386                 randconfig-a006-20230206
hexagon              randconfig-r045-20230206
hexagon              randconfig-r041-20230206
hexagon              randconfig-r041-20230204
arm                  randconfig-r046-20230204
arm                  randconfig-r046-20230206
hexagon              randconfig-r045-20230204
x86_64                          rhel-8.3-rust
x86_64               randconfig-a001-20230206
x86_64               randconfig-a002-20230206
x86_64               randconfig-a004-20230206
x86_64               randconfig-a003-20230206
x86_64               randconfig-a005-20230206
x86_64               randconfig-a006-20230206

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
