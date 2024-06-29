Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id DC34791CFB8
	for <lists+driverdev-devel@lfdr.de>; Sun, 30 Jun 2024 01:48:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 234E240303;
	Sat, 29 Jun 2024 23:48:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id I5TfS2gTLW9P; Sat, 29 Jun 2024 23:48:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9AD8400E2
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9AD8400E2;
	Sat, 29 Jun 2024 23:48:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F6AB1BF376
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2024 23:48:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2B77A4034B
 for <devel@linuxdriverproject.org>; Sat, 29 Jun 2024 23:48:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id eVNYPVWeWQek for <devel@linuxdriverproject.org>;
 Sat, 29 Jun 2024 23:48:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org AE9D8401DD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AE9D8401DD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id AE9D8401DD
 for <devel@driverdev.osuosl.org>; Sat, 29 Jun 2024 23:48:27 +0000 (UTC)
X-CSE-ConnectionGUID: 7XAj8Lz1TF2CVVGn+iht+A==
X-CSE-MsgGUID: AI4zP2KhT1G5nyd1maP3Vw==
X-IronPort-AV: E=McAfee;i="6700,10204,11118"; a="27478474"
X-IronPort-AV: E=Sophos;i="6.09,173,1716274800"; d="scan'208";a="27478474"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2024 16:48:27 -0700
X-CSE-ConnectionGUID: gnukk/djSbaUjOrL23XE8Q==
X-CSE-MsgGUID: MTV/6YOwSA+4L5iJjhs3fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,173,1716274800"; d="scan'208";a="45517395"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa006.jf.intel.com with ESMTP; 29 Jun 2024 16:48:27 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sNhnr-000KQP-3C;
 Sat, 29 Jun 2024 23:48:23 +0000
Date: Sun, 30 Jun 2024 07:48:08 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-linus] BUILD SUCCESS
 fcdd7b7bda3c21d1ba1247419e4a1eb8e2d0bfbb
Message-ID: <202406300706.7aDYoSzU-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719704908; x=1751240908;
 h=date:from:to:cc:subject:message-id;
 bh=t0CHxS1oqZg2lu3kU8BM0LM26Si6zk/rXYDzOosISv4=;
 b=ednIB/rbn0Vt+oD1WzlYVikQAPqgTf/crmgBeNsg6EFg9uAhgWf6qzJk
 +zDFZe4NQTTTUO/fba1+iR8HbTEs8QKIgyqV6jhbAh6ic9yWLGhr3M1Rv
 g0DFYeJZCCoQ3mZ1/RYx7u8vwuprWq+JXXG30PQSyN7mfR6tdEWGbp5Cj
 FsPbwWxUbAp/0N3bvz5a/nwJQcHsDRpYfOuvFasZUfHRqh8rPe2AGxYvD
 cJ2detifiFSGc8iog0Ma+B2Rb7Rc8dY7Db3A1VyRdqaHYtjV6GNrhFeM9
 Cruqb+2f8CdVmsHvPUM0XnH0v+tmYwVnbxa2DYD0ZDv/uLX5N2Xsq6IiO
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ednIB/rb
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-linus
branch HEAD: fcdd7b7bda3c21d1ba1247419e4a1eb8e2d0bfbb  staging: vchiq_debugfs: Fix build if CONFIG_DEBUG_FS is not set

elapsed time: 3475m

configs tested: 78
configs skipped: 0

The following configs have been built successfully.
More configs may be tested in the coming days.

tested configs:
i386         buildonly-randconfig-001-20240628   gcc-10
i386         buildonly-randconfig-001-20240629   gcc-7
i386         buildonly-randconfig-001-20240630   clang-18
i386         buildonly-randconfig-002-20240628   gcc-10
i386         buildonly-randconfig-002-20240628   gcc-13
i386         buildonly-randconfig-002-20240629   gcc-7
i386         buildonly-randconfig-002-20240630   clang-18
i386         buildonly-randconfig-003-20240628   gcc-10
i386         buildonly-randconfig-003-20240628   gcc-13
i386         buildonly-randconfig-003-20240629   gcc-7
i386         buildonly-randconfig-003-20240630   clang-18
i386         buildonly-randconfig-004-20240628   gcc-10
i386         buildonly-randconfig-004-20240628   gcc-13
i386         buildonly-randconfig-004-20240629   gcc-7
i386         buildonly-randconfig-004-20240630   clang-18
i386         buildonly-randconfig-005-20240628   clang-18
i386         buildonly-randconfig-005-20240628   gcc-10
i386         buildonly-randconfig-005-20240629   gcc-7
i386         buildonly-randconfig-005-20240630   clang-18
i386         buildonly-randconfig-006-20240628   gcc-10
i386         buildonly-randconfig-006-20240628   gcc-13
i386         buildonly-randconfig-006-20240629   gcc-7
i386         buildonly-randconfig-006-20240630   clang-18
i386                  randconfig-001-20240628   gcc-10
i386                  randconfig-001-20240629   gcc-7
i386                  randconfig-001-20240630   clang-18
i386                  randconfig-002-20240628   gcc-10
i386                  randconfig-002-20240628   gcc-13
i386                  randconfig-002-20240629   gcc-7
i386                  randconfig-002-20240630   clang-18
i386                  randconfig-003-20240628   clang-18
i386                  randconfig-003-20240628   gcc-10
i386                  randconfig-003-20240629   gcc-7
i386                  randconfig-003-20240630   clang-18
i386                  randconfig-004-20240628   gcc-10
i386                  randconfig-004-20240628   gcc-13
i386                  randconfig-004-20240629   gcc-7
i386                  randconfig-004-20240630   clang-18
i386                  randconfig-005-20240628   clang-18
i386                  randconfig-005-20240628   gcc-10
i386                  randconfig-005-20240629   gcc-7
i386                  randconfig-005-20240630   clang-18
i386                  randconfig-006-20240628   gcc-10
i386                  randconfig-006-20240628   gcc-13
i386                  randconfig-006-20240629   gcc-7
i386                  randconfig-006-20240630   clang-18
i386                  randconfig-011-20240628   clang-18
i386                  randconfig-011-20240628   gcc-10
i386                  randconfig-011-20240629   gcc-7
i386                  randconfig-011-20240630   clang-18
i386                  randconfig-012-20240628   gcc-10
i386                  randconfig-012-20240628   gcc-9
i386                  randconfig-012-20240629   gcc-7
i386                  randconfig-012-20240630   clang-18
i386                  randconfig-013-20240628   gcc-10
i386                  randconfig-013-20240628   gcc-13
i386                  randconfig-013-20240629   gcc-7
i386                  randconfig-013-20240630   clang-18
i386                  randconfig-014-20240628   clang-18
i386                  randconfig-014-20240628   gcc-10
i386                  randconfig-014-20240629   gcc-7
i386                  randconfig-014-20240630   clang-18
i386                  randconfig-015-20240628   gcc-10
i386                  randconfig-015-20240628   gcc-13
i386                  randconfig-015-20240629   gcc-7
i386                  randconfig-015-20240630   clang-18
i386                  randconfig-016-20240628   gcc-10
i386                  randconfig-016-20240628   gcc-7
i386                  randconfig-016-20240629   gcc-7
i386                  randconfig-016-20240630   clang-18
openrisc                          allnoconfig   gcc-13.2.0
parisc                            allnoconfig   gcc-13.2.0
powerpc                           allnoconfig   gcc-13.2.0
riscv                             allnoconfig   gcc-13.2.0
s390                              allnoconfig   gcc-13.2.0
um                                allnoconfig   gcc-13.2.0
x86_64                                  kexec   clang-18
x86_64                               rhel-8.3   clang-18

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
