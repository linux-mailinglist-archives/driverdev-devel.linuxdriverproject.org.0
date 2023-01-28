Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D5E67FA6F
	for <lists+driverdev-devel@lfdr.de>; Sat, 28 Jan 2023 20:29:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 487D181E8F;
	Sat, 28 Jan 2023 19:29:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 487D181E8F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Jd4BUJoWqqOs; Sat, 28 Jan 2023 19:28:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D839481E97;
	Sat, 28 Jan 2023 19:28:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D839481E97
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 9B7191BF48B
 for <devel@linuxdriverproject.org>; Sat, 28 Jan 2023 19:28:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 74DFC60C24
 for <devel@linuxdriverproject.org>; Sat, 28 Jan 2023 19:28:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 74DFC60C24
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ns4hUAaPUyN5 for <devel@linuxdriverproject.org>;
 Sat, 28 Jan 2023 19:28:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CF9860E00
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2CF9860E00
 for <devel@driverdev.osuosl.org>; Sat, 28 Jan 2023 19:28:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="391883124"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="391883124"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2023 11:28:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10604"; a="665616617"
X-IronPort-AV: E=Sophos;i="5.97,254,1669104000"; d="scan'208";a="665616617"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 28 Jan 2023 11:28:49 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pLqsa-00011m-1X;
 Sat, 28 Jan 2023 19:28:48 +0000
Date: Sun, 29 Jan 2023 03:28:38 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD SUCCESS
 d22a837189d720a679f16eb2b20842d77e41de5a
Message-ID: <63d57766.8thQplmgQWZoOjGx%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674934131; x=1706470131;
 h=date:from:to:cc:subject:message-id:mime-version:
 content-transfer-encoding;
 bh=oRuYHMuCFexHJ86BA01nwTCHRw7yZ0KsYbq9/jN9ErI=;
 b=U403NY52SYTKfRhTTCgN1U4rgS3kRHuUE3DDIRdunJXU9nuRByEhh5je
 Sxmgoj0mCQIwwV467Z2TIPtW4QZa63l8xxBAcnmsJNpn5PtjF/Xw/Csxv
 m5uX0FBCSG0I3glYi+SpjLJ+8e40Sk9Wvyw5SBkaSV3ZD4gPLtKm0TceF
 GPRoueMe5uquDLCboSMWMGx6VPI5ky8Hy2ZRneUscOFVBDSE8yclUVXUC
 jgNqeRISwLcX2bDsRgftWsNufGD6/M/LPIUajGxDx5kzp9lKKHxBHVBrr
 D0MNLvh035O9GpaMx4eq4NQE/+JrUWkgugRM8a9B42AAUgVMgI3N3G3Ow
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U403NY52
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
branch HEAD: d22a837189d720a679f16eb2b20842d77e41de5a  soundwire: sysfs: remove unneeded ATTRIBUTE_GROUPS() comments

elapsed time: 1042m

configs tested: 32
configs skipped: 3

The following configs have been built successfully.
More configs may be tested in the coming days.

gcc tested configs:
x86_64                            allnoconfig
um                             i386_defconfig
um                           x86_64_defconfig
m68k                             allyesconfig
m68k                             allmodconfig
alpha                            allyesconfig
arc                              allyesconfig
x86_64                           rhel-8.3-syz
x86_64                         rhel-8.3-kunit
x86_64                           rhel-8.3-kvm
x86_64                           rhel-8.3-bpf
arc                                 defconfig
s390                             allmodconfig
alpha                               defconfig
s390                                defconfig
s390                             allyesconfig
i386                                defconfig
i386                             allyesconfig
riscv                               defconfig
powerpc                           allnoconfig
powerpc                          allmodconfig
mips                             allyesconfig
sh                               allmodconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                           allyesconfig
x86_64                    rhel-8.3-kselftests
x86_64                          rhel-8.3-func
arm                                 defconfig
arm64                            allyesconfig
arm                              allyesconfig

clang tested configs:
x86_64                          rhel-8.3-rust

-- 
0-DAY CI Kernel Test Service
https://01.org/lkp
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
