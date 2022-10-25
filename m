Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C98E60C1A1
	for <lists+driverdev-devel@lfdr.de>; Tue, 25 Oct 2022 04:23:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 18A974031E;
	Tue, 25 Oct 2022 02:23:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 18A974031E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HX-NRApmtnZU; Tue, 25 Oct 2022 02:23:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 443744029F;
	Tue, 25 Oct 2022 02:23:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 443744029F
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DEE051BF2FE
 for <devel@linuxdriverproject.org>; Tue, 25 Oct 2022 02:23:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B414C60806
 for <devel@linuxdriverproject.org>; Tue, 25 Oct 2022 02:23:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B414C60806
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Yk-8j5w6DPgQ for <devel@linuxdriverproject.org>;
 Tue, 25 Oct 2022 02:23:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 560BD607FE
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 560BD607FE
 for <devel@driverdev.osuosl.org>; Tue, 25 Oct 2022 02:23:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="287288158"
X-IronPort-AV: E=Sophos;i="5.95,210,1661842800"; d="scan'208";a="287288158"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 19:22:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="960648426"
X-IronPort-AV: E=Sophos;i="5.95,210,1661842800"; d="scan'208";a="960648426"
Received: from lkp-server02.sh.intel.com (HELO b6d29c1a0365) ([10.239.97.151])
 by fmsmga005.fm.intel.com with ESMTP; 24 Oct 2022 19:22:56 -0700
Received: from kbuild by b6d29c1a0365 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1on9ah-0005ou-2n;
 Tue, 25 Oct 2022 02:22:55 +0000
Date: Tue, 25 Oct 2022 10:22:52 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const] BUILD SUCCESS
 f14cb4b015ec0dd52034a4c66fcb581538e51095
Message-ID: <6357487c.cC+vq9Rzmn8RWimz%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666664586; x=1698200586;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=JetiKETNGJlxjexiaEkV/RN+kSPm1IPjdHAjINjC9Os=;
 b=UmEvu10EXVLG8Me3z4L8TmGyROXW3tzS+Flpn8WDHGf/6ulFe4PZBTR1
 ymix6vwi9Fw1NYN286RkfVOZJ0kt1fY1En6PhYYy6z1+L1cZOwUr9pgDL
 mSRt6+sZbhIHk7Ap16G70OMZ/jtyiX7CUC7CFY8cUFVNzSN3CDqP4x/pM
 gOhqOc+x+5/LypDnyPabOyUt4RvswnOk68XLAEcmbQuHPiAeM+DIjvF3M
 XXUxK7HTBgvOzwaquxQi03xbEl3OKyJo716vPIGJNz6noDvi6BvPdKL8N
 f3n4JZXhAS1o/QO9X8EcOy8Azr4L5k5b8+tgNo9Gfz1PI+nmIEirwTOBp
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UmEvu10E
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
branch HEAD: f14cb4b015ec0dd52034a4c66fcb581538e51095  container_of: remove container_of_safe()

elapsed time: 732m

configs tested: 63
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
um                             i386_defconfig
um                           x86_64_defconfig
arc                                 defconfig
alpha                               defconfig
i386                                defconfig
x86_64                          rhel-8.3-func
s390                                defconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
s390                             allmodconfig
x86_64                    rhel-8.3-kselftests
x86_64                           rhel-8.3-kvm
s390                             allyesconfig
i386                 randconfig-a011-20221024
x86_64                              defconfig
i386                 randconfig-a014-20221024
x86_64                               rhel-8.3
i386                 randconfig-a013-20221024
powerpc                           allnoconfig
i386                 randconfig-a012-20221024
i386                 randconfig-a016-20221024
i386                 randconfig-a015-20221024
arc                  randconfig-r043-20221024
mips                             allyesconfig
m68k                             allmodconfig
x86_64                           allyesconfig
ia64                             allmodconfig
arc                              allyesconfig
riscv                randconfig-r042-20221024
i386                             allyesconfig
powerpc                          allmodconfig
alpha                            allyesconfig
sh                               allmodconfig
m68k                             allyesconfig
arc                  randconfig-r043-20221023
s390                 randconfig-r044-20221024
arm                                 defconfig
x86_64               randconfig-a013-20221024
x86_64               randconfig-a012-20221024
x86_64               randconfig-a011-20221024
x86_64               randconfig-a014-20221024
x86_64               randconfig-a015-20221024
x86_64               randconfig-a016-20221024
arm                              allyesconfig
arm64                            allyesconfig

clang tested configs:
hexagon              randconfig-r045-20221023
i386                 randconfig-a004-20221024
hexagon              randconfig-r041-20221024
i386                 randconfig-a001-20221024
riscv                randconfig-r042-20221023
i386                 randconfig-a002-20221024
i386                 randconfig-a005-20221024
hexagon              randconfig-r045-20221024
i386                 randconfig-a003-20221024
x86_64               randconfig-a001-20221024
x86_64               randconfig-a005-20221024
x86_64               randconfig-a003-20221024
s390                 randconfig-r044-20221023
i386                 randconfig-a006-20221024
x86_64               randconfig-a006-20221024
x86_64               randconfig-a004-20221024
hexagon              randconfig-r041-20221023
x86_64               randconfig-a002-20221024

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
