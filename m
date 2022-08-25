Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CD85A0944
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Aug 2022 08:57:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id EFE3141851;
	Thu, 25 Aug 2022 06:57:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EFE3141851
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n7nsRCiefuW9; Thu, 25 Aug 2022 06:57:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58E2B41833;
	Thu, 25 Aug 2022 06:57:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58E2B41833
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1714F1BF373
 for <devel@linuxdriverproject.org>; Thu, 25 Aug 2022 06:57:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E69BD60DFF
 for <devel@linuxdriverproject.org>; Thu, 25 Aug 2022 06:57:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E69BD60DFF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XbZBY2GPqjuA for <devel@linuxdriverproject.org>;
 Thu, 25 Aug 2022 06:57:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EBF1360DF9
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id EBF1360DF9
 for <devel@driverdev.osuosl.org>; Thu, 25 Aug 2022 06:57:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10449"; a="273916137"
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="273916137"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 23:57:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,262,1654585200"; d="scan'208";a="752374098"
Received: from lkp-server02.sh.intel.com (HELO 34e741d32628) ([10.239.97.151])
 by fmsmga001.fm.intel.com with ESMTP; 24 Aug 2022 23:57:28 -0700
Received: from kbuild by 34e741d32628 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1oR6nv-0001oo-2H;
 Thu, 25 Aug 2022 06:57:27 +0000
Date: Thu, 25 Aug 2022 14:57:25 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 dba908967df597081a2e10e2d497cc8f695694b4
Message-ID: <63071d55.YOdYZbao8JUl+Yt8%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661410650; x=1692946650;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=qg8E9WCkZUp4LisMW7gVMlV/vKGV7q9l/N+5+z0dOQc=;
 b=l1iOeasTCkIb+IWqiTBBjk/uazFOwVbA90mb73Ms3uoRIMC9+9ZVIqO5
 SneVWMfkWofRFzZg56+ZFtY2nPHe5hvsdXK/InwOgt2wOgiJW2mU0VHmP
 XPerndYbwyMQqWQaYfEgPlLdDXaMudQCNVsoObFDCaGGMCIRLhn/Vmt3F
 h8UMAzAeYJMiP5Ck5jjy7Ai11TrBXQ469JQU+ulPpiXrY3G69hMxBwYJ0
 utiyjbxLCFVcRl6L3vuQZy1iBNt5mFK3c58diWzO6seT+6rpkRTcMXYb0
 xJllVoFA2DNpIxjkV8HmC7ysL+bcF7oMO4n51ty0mL3W/+nLSKZsvs9j3
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=l1iOeasT
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
branch HEAD: dba908967df597081a2e10e2d497cc8f695694b4  staging: r8188eu: remove unnecessary null check

elapsed time: 1051m

configs tested: 60
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20220823
arc                              allyesconfig
alpha                            allyesconfig
m68k                             allmodconfig
m68k                             allyesconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
x86_64                              defconfig
i386                                defconfig
x86_64                        randconfig-a013
x86_64                        randconfig-a011
x86_64                        randconfig-a004
x86_64                        randconfig-a015
x86_64                        randconfig-a002
x86_64                               rhel-8.3
i386                          randconfig-a001
x86_64                        randconfig-a006
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                           allyesconfig
arm                                 defconfig
i386                             allyesconfig
x86_64                           rhel-8.3-kvm
x86_64                          rhel-8.3-func
x86_64                         rhel-8.3-kunit
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-syz
i386                          randconfig-a014
arm64                            allyesconfig
i386                          randconfig-a012
arm                              allyesconfig
i386                          randconfig-a016
loongarch                         allnoconfig
loongarch                           defconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
ia64                             allmodconfig

clang tested configs:
hexagon              randconfig-r041-20220823
hexagon              randconfig-r045-20220823
riscv                randconfig-r042-20220823
s390                 randconfig-r044-20220823
x86_64                        randconfig-a016
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a001
x86_64                        randconfig-a003
i386                          randconfig-a002
x86_64                        randconfig-a005
i386                          randconfig-a004
i386                          randconfig-a006
i386                          randconfig-a013
i386                          randconfig-a015
i386                          randconfig-a011

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
