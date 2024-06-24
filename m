Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB289158E1
	for <lists+driverdev-devel@lfdr.de>; Mon, 24 Jun 2024 23:25:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 044B181A12;
	Mon, 24 Jun 2024 21:25:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8PHhF2l7ou6B; Mon, 24 Jun 2024 21:25:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 284C781A30
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 284C781A30;
	Mon, 24 Jun 2024 21:25:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4E2E11BF255
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2024 21:25:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 45CC540491
 for <devel@linuxdriverproject.org>; Mon, 24 Jun 2024 21:25:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0JWXUHQE1R7H for <devel@linuxdriverproject.org>;
 Mon, 24 Jun 2024 21:25:28 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.10;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B99EC403DB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B99EC403DB
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B99EC403DB
 for <devel@driverdev.osuosl.org>; Mon, 24 Jun 2024 21:25:28 +0000 (UTC)
X-CSE-ConnectionGUID: 2lPak5J4QIakFbJf2tmcIQ==
X-CSE-MsgGUID: VXvl1VW9SDagymra3lcZsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="27665730"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="27665730"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 14:25:28 -0700
X-CSE-ConnectionGUID: NwQ0QRbpTV2KEDKUdk85Ow==
X-CSE-MsgGUID: m9ZDdTSlRGSpqEOLCo+VgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43519301"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa009.jf.intel.com with ESMTP; 24 Jun 2024 14:25:28 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sLrBk-000DkE-2R;
 Mon, 24 Jun 2024 21:25:24 +0000
Date: Tue, 25 Jun 2024 05:24:40 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-next] BUILD SUCCESS
 39e6bf7394d852b17fb083a85fee5890b445908c
Message-ID: <202406250538.yPJel19C-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719264329; x=1750800329;
 h=date:from:to:cc:subject:message-id;
 bh=DZye+n7Oeynz2sR2gbTDiBZNm/m7ceesF+VD22/n424=;
 b=G3VQHzB54Mfj9DXDInbQkMw9wXcZOFBM915W9tPgcJShv6jfx5W3OMfH
 Xjz60WHhteXd+uwW5dBlrEo8JJoudGBA8zZujf8zG1wtzvdMjNiqkvnjW
 OXnmRiNhhjd+xNFx4Z/rypryz/t7fClz7E+AgCveSKETZvT0CPAPk+fsO
 r0dFx2RGmZTXeI2Hb/o3XPS9JUtzPUeLqk1XVVoHz/3VF140HAIBymkoR
 Qkp9MhQw2fZtD5LXBQ4lZPOgW8x2j9KlDBArVR105vkgyytWOhAk5BQhB
 b+DbTCQl2/no3gU7hcr6NgBX0bhgp4sGcBWR07AbfUAWRS79Ol9KZ8lhE
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=G3VQHzB5
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
branch HEAD: 39e6bf7394d852b17fb083a85fee5890b445908c  Merge tag 'v6.10-rc4' into staging-next

elapsed time: 9369m

configs tested: 67
configs skipped: 2

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
alpha                             allnoconfig   gcc-13.2.0
alpha                               defconfig   gcc-13.2.0
arc                               allnoconfig   gcc-13.2.0
arc                                 defconfig   gcc-13.2.0
arm                               allnoconfig   clang-19
arm                                 defconfig   clang-14
arm64                             allnoconfig   gcc-13.2.0
arm64                               defconfig   gcc-13.2.0
csky                              allnoconfig   gcc-13.2.0
csky                                defconfig   gcc-13.2.0
hexagon                           allnoconfig   clang-19
hexagon                             defconfig   clang-19
i386                             allmodconfig   gcc-13
i386                              allnoconfig   gcc-13
i386                             allyesconfig   gcc-13
i386         buildonly-randconfig-001-20240619   clang-18
i386         buildonly-randconfig-002-20240619   clang-18
i386         buildonly-randconfig-003-20240619   clang-18
i386         buildonly-randconfig-004-20240619   clang-18
i386         buildonly-randconfig-005-20240619   gcc-7
i386         buildonly-randconfig-006-20240619   gcc-7
i386                                defconfig   clang-18
i386                  randconfig-001-20240619   gcc-7
i386                  randconfig-002-20240619   gcc-7
i386                  randconfig-003-20240619   clang-18
i386                  randconfig-004-20240619   gcc-7
i386                  randconfig-005-20240619   clang-18
i386                  randconfig-006-20240619   gcc-9
i386                  randconfig-011-20240619   clang-18
i386                  randconfig-012-20240619   clang-18
i386                  randconfig-013-20240619   gcc-13
i386                  randconfig-014-20240619   clang-18
i386                  randconfig-015-20240619   clang-18
i386                  randconfig-016-20240619   gcc-13
loongarch                         allnoconfig   gcc-13.2.0
loongarch                           defconfig   gcc-13.2.0
m68k                              allnoconfig   gcc-13.2.0
m68k                                defconfig   gcc-13.2.0
microblaze                        allnoconfig   gcc-13.2.0
microblaze                          defconfig   gcc-13.2.0
mips                              allnoconfig   gcc-13.2.0
nios2                             allnoconfig   gcc-13.2.0
nios2                               defconfig   gcc-13.2.0
openrisc                          allnoconfig   gcc-13.2.0
openrisc                            defconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
parisc                              defconfig   gcc-13.2.0
parisc64                            defconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
riscv                               defconfig   clang-19
s390                              allnoconfig   clang-19
s390                                defconfig   clang-19
sh                                allnoconfig   gcc-13.2.0
sh                                  defconfig   gcc-13.2.0
sparc                             allnoconfig   gcc-13.2.0
sparc                               defconfig   gcc-13.2.0
sparc64                             defconfig   gcc-13.2.0
um                                allnoconfig   clang-17
um                                  defconfig   clang-19
um                             i386_defconfig   gcc-13
um                           x86_64_defconfig   clang-15
x86_64                            allnoconfig   clang-18
x86_64                           allyesconfig   clang-18
x86_64                              defconfig   gcc-13
x86_64                          rhel-8.3-rust   clang-18
xtensa                            allnoconfig   gcc-13.2.0

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
