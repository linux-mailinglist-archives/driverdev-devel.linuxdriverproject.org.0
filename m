Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4745D641A62
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Dec 2022 03:22:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A588414C9;
	Sun,  4 Dec 2022 02:22:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0A588414C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y7lgvbedLkHN; Sun,  4 Dec 2022 02:22:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5C22C414C8;
	Sun,  4 Dec 2022 02:22:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5C22C414C8
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 665431BF479
 for <devel@linuxdriverproject.org>; Sun,  4 Dec 2022 02:22:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4C53A60ADA
 for <devel@linuxdriverproject.org>; Sun,  4 Dec 2022 02:22:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4C53A60ADA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E5AGdRXp5isv for <devel@linuxdriverproject.org>;
 Sun,  4 Dec 2022 02:22:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1B41B607C0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1B41B607C0
 for <devel@driverdev.osuosl.org>; Sun,  4 Dec 2022 02:22:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10550"; a="317304852"
X-IronPort-AV: E=Sophos;i="5.96,216,1665471600"; d="scan'208";a="317304852"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2022 18:22:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10550"; a="647565336"
X-IronPort-AV: E=Sophos;i="5.96,216,1665471600"; d="scan'208";a="647565336"
Received: from lkp-server01.sh.intel.com (HELO 4d912534d779) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 03 Dec 2022 18:22:00 -0800
Received: from kbuild by 4d912534d779 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1p1edj-0000VA-1c;
 Sun, 04 Dec 2022 02:21:59 +0000
Date: Sun, 04 Dec 2022 10:21:49 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:pktcdvd-removal] BUILD SUCCESS
 c52afd046eb32994b22d1ba444c1cb871ef35fca
Message-ID: <638c043d.aIfUFndqtEOL0DNh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670120522; x=1701656522;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=6BbJn7yFU+c4p7Qn8RP3ZQMIBpY42A6MI+NuhkYZjRY=;
 b=VuwjdsuwnlKcZI7v27iP5G69iqt1rJbERo74HnMpXbJMdfTmsY9YvBE8
 f01hkWGEj16kHiU6Gi+kpdYIYMRM3iEsyCOdDkFPSAXNG86omLkf90+/d
 waic05QTJ1blHVhFUqwoTObgqLbE5AUP3zCLJ90G7+9KcKj+azgmsH0Uk
 JhdHkhIqyqBS3pnN6opk70OxOdm3AlI+zSyw7hgR3Z9DSyOlHYOcEwIk0
 6Y9OvjTpCxkjF7w4LEDjMfhdfHF1urB46lOJxh22tQc343pjzUnznidXu
 71iA7DQKGtUMRFE5yJDeLGQ3dHnz84sZnA5C+Jb5dNH4pVktGvGZSe93X
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Vuwjdsuw
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git pktcdvd-removal
branch HEAD: c52afd046eb32994b22d1ba444c1cb871ef35fca  block: remove devnode callback from struct block_device_operations

elapsed time: 724m

configs tested: 53
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
x86_64                              defconfig
um                             i386_defconfig
x86_64                               rhel-8.3
um                           x86_64_defconfig
x86_64                           allyesconfig
s390                                defconfig
s390                             allyesconfig
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
ia64                             allmodconfig
m68k                             allmodconfig
m68k                             allyesconfig
alpha                            allyesconfig
arc                              allyesconfig
arm                                 defconfig
i386                                defconfig
arc                  randconfig-r043-20221201
i386                          randconfig-a012
i386                          randconfig-a014
i386                          randconfig-a016
riscv                randconfig-r042-20221201
s390                 randconfig-r044-20221201
arm                              allyesconfig
arm64                            allyesconfig
i386                             allyesconfig
x86_64                        randconfig-a006
x86_64                        randconfig-a004
x86_64                        randconfig-a002
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
sh                               allmodconfig

clang tested configs:
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
hexagon              randconfig-r045-20221201
hexagon              randconfig-r041-20221201
i386                          randconfig-a002
i386                          randconfig-a006
i386                          randconfig-a004
x86_64                        randconfig-a001
x86_64                        randconfig-a003
x86_64                        randconfig-a005
hexagon              randconfig-r041-20221204
riscv                randconfig-r042-20221204
hexagon              randconfig-r045-20221204
s390                 randconfig-r044-20221204

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
