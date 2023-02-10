Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2349469167F
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Feb 2023 03:07:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8E9524048E;
	Fri, 10 Feb 2023 02:07:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8E9524048E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TEA7fUil8LgK; Fri, 10 Feb 2023 02:07:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5AD844010E;
	Fri, 10 Feb 2023 02:07:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5AD844010E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id CBFFE1BF319
 for <devel@linuxdriverproject.org>; Fri, 10 Feb 2023 02:07:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A2CD84048E
 for <devel@linuxdriverproject.org>; Fri, 10 Feb 2023 02:07:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A2CD84048E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nHcvOrz73bpV for <devel@linuxdriverproject.org>;
 Fri, 10 Feb 2023 02:07:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 91EF64010E
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 91EF64010E
 for <devel@driverdev.osuosl.org>; Fri, 10 Feb 2023 02:07:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="331613395"
X-IronPort-AV: E=Sophos;i="5.97,285,1669104000"; d="scan'208";a="331613395"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 18:07:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="791809984"
X-IronPort-AV: E=Sophos;i="5.97,285,1669104000"; d="scan'208";a="791809984"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 09 Feb 2023 18:07:14 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQIok-0005Ri-03;
 Fri, 10 Feb 2023 02:07:14 +0000
Date: Fri, 10 Feb 2023 10:06:25 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS
 eec8ccab1b5760ae2221bc8235c09eb05a1132c6
Message-ID: <63e5a6a1.QanM+Ccagh1P2vfI%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675994836; x=1707530836;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=OS1dPOablelfue1nyGngQUqbpa/AfT8fK0PsIzKc3aw=;
 b=RqZZnD78oW2NWVe96tx/4YYZWgKMeWz82YIgw/Z/b11P6Z8ZQA1pKv3i
 8yY7WC1T/USj3VcKUSZk/81NibNt/uahqoSQVaoMSbJssDEmSbJTAR7AZ
 NJrtipjXJSKYKh/V7Ui1sBND6QYyYShMj/xyVU/jJrjs43MhS+e2Q5qEa
 HTyB++5jEAMkhbAvHT2uw4sDi3zFYjXXUhysEZck8GZB5cZ7/5FP4Zdz9
 oFHQ2vjsOyIMryMd/gJWq6fuX4QwHXn7DlTlGFkUsVeN14N/hZMcLRCtc
 yGxBdIvTm+N3pO38aZiE9+39Vcdz7wsxHo0kICN0+Z22y4CKOASc81LwX
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=RqZZnD78
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
branch HEAD: eec8ccab1b5760ae2221bc8235c09eb05a1132c6  most: add maintainer entry

elapsed time: 721m

configs tested: 57
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
i386                                defconfig
x86_64                              defconfig
x86_64                        randconfig-a006
s390                                defconfig
x86_64                               rhel-8.3
arm                                 defconfig
i386                          randconfig-a001
i386                          randconfig-a003
s390                             allyesconfig
arc                  randconfig-r043-20230209
arm                  randconfig-r046-20230209
x86_64                        randconfig-a013
x86_64                           allyesconfig
x86_64                        randconfig-a011
i386                          randconfig-a005
x86_64                        randconfig-a015
arm64                            allyesconfig
i386                          randconfig-a014
i386                          randconfig-a012
arm                              allyesconfig
i386                          randconfig-a016
i386                             allyesconfig
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                           rhel-8.3-kvm
x86_64                         rhel-8.3-kunit
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
powerpc                           allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
sh                               allmodconfig
m68k                             allyesconfig
m68k                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
mips                             allyesconfig
powerpc                          allmodconfig

clang tested configs:
x86_64                        randconfig-a005
hexagon              randconfig-r041-20230209
hexagon              randconfig-r045-20230209
i386                          randconfig-a002
i386                          randconfig-a004
x86_64                        randconfig-a012
s390                 randconfig-r044-20230209
x86_64                        randconfig-a014
riscv                randconfig-r042-20230209
x86_64                        randconfig-a016
i386                          randconfig-a006
i386                          randconfig-a013
i386                          randconfig-a011
i386                          randconfig-a015
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
