Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D65B86652B9
	for <lists+driverdev-devel@lfdr.de>; Wed, 11 Jan 2023 05:22:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 90EF040AB7;
	Wed, 11 Jan 2023 04:22:33 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 90EF040AB7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fPujQGpn3CeF; Wed, 11 Jan 2023 04:22:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4BEEC40232;
	Wed, 11 Jan 2023 04:22:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4BEEC40232
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 470841BF5DA
 for <devel@linuxdriverproject.org>; Wed, 11 Jan 2023 04:22:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2931381FA6
 for <devel@linuxdriverproject.org>; Wed, 11 Jan 2023 04:22:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2931381FA6
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xY8P2jRvTCvl for <devel@linuxdriverproject.org>;
 Wed, 11 Jan 2023 04:22:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0438881FA4
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0438881FA4
 for <devel@driverdev.osuosl.org>; Wed, 11 Jan 2023 04:22:27 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="385633465"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="385633465"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2023 20:22:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="831221942"
X-IronPort-AV: E=Sophos;i="5.96,315,1665471600"; d="scan'208";a="831221942"
Received: from lkp-server02.sh.intel.com (HELO f1920e93ebb5) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 10 Jan 2023 20:22:25 -0800
Received: from kbuild by f1920e93ebb5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pFSd6-0008kY-0j;
 Wed, 11 Jan 2023 04:22:24 +0000
Date: Wed, 11 Jan 2023 12:21:28 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup] BUILD SUCCESS
 8d057b518ea3e54ecfdace056e4955394ed41d88
Message-ID: <63be3948.ft2c0dbwY8g5ppGh%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673410948; x=1704946948;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=D+jtFgUEAyWrX3tLpuXdGPmrlLZomeIzSAyhbEc4Alg=;
 b=GCyzcfDjN1IfogZZr0ZZkFG/1j197g61IC2g0QGaW4heZs9gBv+GvHTU
 sObYc0b/sQzqnMMVlWYlhPaPTJzXDwd836L95YuyiXRU9blXDMyqjMV/Q
 1dFHAIh5TTaPYINyKkk5j+nYgbtq9KQjhx4JeSaO+OhK0b5U7nTW1TeKv
 NAXeoftRbX8wghIdyCmppil9ed8zQATdad7KF9F+F0GNeFYfLll9QJH1B
 2i5K8WKFg+7zD9s0WIC7FAYPBWNIflOP25RmeWeOYoi0GOgIeodA5gaWj
 mz+D0hWqYVih4DciplXKlT5jiTfA2Pc8hI9VGqnDEyCCd7kLmb6GAD+jE
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GCyzcfDj
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git bus_cleanup
branch HEAD: 8d057b518ea3e54ecfdace056e4955394ed41d88  driver core: bus: move bus notifier logic into bus.c

elapsed time: 729m

configs tested: 51
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
alpha                            allyesconfig
m68k                             allyesconfig
m68k                             allmodconfig
arc                              allyesconfig
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
ia64                             allmodconfig
powerpc                           allnoconfig
mips                             allyesconfig
powerpc                          allmodconfig
um                             i386_defconfig
um                           x86_64_defconfig
arc                  randconfig-r043-20230110
sh                               allmodconfig
s390                 randconfig-r044-20230110
riscv                randconfig-r042-20230110
x86_64                           rhel-8.3-bpf
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
i386                          randconfig-a001
i386                          randconfig-a003
i386                          randconfig-a005
x86_64                          rhel-8.3-func
x86_64                    rhel-8.3-kselftests
i386                                defconfig
i386                             allyesconfig
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
arm                  randconfig-r046-20230110
hexagon              randconfig-r045-20230110
hexagon              randconfig-r041-20230110
i386                          randconfig-a002
i386                          randconfig-a004
i386                          randconfig-a006
x86_64                          rhel-8.3-rust
x86_64                        randconfig-a005
x86_64                        randconfig-a003
x86_64                        randconfig-a001
x86_64                        randconfig-a012
x86_64                        randconfig-a014
x86_64                        randconfig-a016
x86_64                        randconfig-k001

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
