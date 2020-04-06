Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA831A0185
	for <lists+driverdev-devel@lfdr.de>; Tue,  7 Apr 2020 01:18:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id C8D4181388;
	Mon,  6 Apr 2020 23:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qsM0GpVkGxFv; Mon,  6 Apr 2020 23:18:45 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 906098127E;
	Mon,  6 Apr 2020 23:18:41 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 34F721BF2BB
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 23:18:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2D6738844E
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 23:18:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kIJMLdFlKKSd for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 23:18:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 02E2B883A4
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 23:18:37 +0000 (UTC)
IronPort-SDR: GeNlF3HUtYyqMdfSxNK46z3lJ3qJTPu6YYZmGMPbmU8RLYWKiJl9H51xLbb09dOpICgWCI9i+J
 2nDgvtcvQBPg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 16:18:37 -0700
IronPort-SDR: jsSEUXF/l6qNoNbYyCUSgx2USdMFSwZGEPaOX4jeSahBRtMNgJ2Bh5NlUgEEPIIMO0SdcqXsqU
 4Klarh/vU28A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,352,1580803200"; d="scan'208";a="286040615"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 06 Apr 2020 16:18:36 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jLb0l-00097V-Ez; Tue, 07 Apr 2020 07:18:35 +0800
Date: Tue, 07 Apr 2020 07:18:24 +0800
From: kbuild test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup] BUILD REGRESSION
 6cdbeae3773b0bb611d8caf5e84650f58a02748b
Message-ID: <5e8bb8c0.Z2d8QDBxG3YiOUJr%lkp@intel.com>
User-Agent: Heirloom mailx 12.5 6/20/10
MIME-Version: 1.0
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git  debugfs_cleanup
branch HEAD: 6cdbeae3773b0bb611d8caf5e84650f58a02748b  nouveau: no need to check return value of debugfs_create functions

Error/Warning in current branch:

drivers/gpu/drm/drm_debugfs.c:232:5: error: conflicting types for 'drm_debugfs_remove_files'
drivers/gpu/drm/drm_debugfs.c:253:1: note: in expansion of macro 'EXPORT_SYMBOL'
drivers/gpu/drm/i915/display/intel_display_debugfs.c:1943:9: error: void value not ignored as it ought to be
drivers/gpu/drm/i915/display/intel_display_debugfs.c:1946:1: warning: control reaches end of non-void function [-Wreturn-type]
drivers/gpu/drm/i915/i915_debugfs.c:2179:6: error: conflicting types for 'i915_debugfs_register'

Error/Warning ids grouped by kconfigs:

recent_errors
|-- alpha-allyesconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- alpha-randconfig-a001-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- arc-randconfig-a001-20200407
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- arm-allmodconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- arm-allyesconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- arm-at91_dt_defconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- arm-defconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- arm-exynos_defconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- arm-hisi_defconfig
|   `-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|-- arm-imx_v6_v7_defconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- arm-multi_v5_defconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- arm-multi_v7_defconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- arm-omap2plus_defconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- arm-randconfig-a001-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- arm-randconfig-a001-20200407
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- arm-shmobile_defconfig
|   `-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|-- arm-sunxi_defconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- arm64-allmodconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- arm64-allyesconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- arm64-defconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- arm64-randconfig-a001-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- c6x-allyesconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- c6x-randconfig-a001-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- h8300-allyesconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- i386-allmodconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- i386-allyesconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- i386-debian-10.3
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- i386-defconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- i386-randconfig-a001-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- i386-randconfig-a002-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- i386-randconfig-a003-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- i386-randconfig-b001-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- i386-randconfig-b003-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- i386-randconfig-c001-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- i386-randconfig-c002-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- i386-randconfig-f003-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- i386-randconfig-g001-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- i386-randconfig-g002-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- i386-randconfig-g003-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- ia64-allmodconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- ia64-allyesconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- ia64-randconfig-a001-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- ia64-randconfig-a001-20200407
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- m68k-allmodconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- m68k-allyesconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- microblaze-randconfig-a001-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- mips-allmodconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- mips-allyesconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- nds32-allyesconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- nds32-randconfig-a001-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- nios2-randconfig-a001-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- openrisc-randconfig-a001-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- parisc-allyesconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- parisc-generic-64bit_defconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- powerpc-allyesconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- riscv-allmodconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- riscv-allyesconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- riscv-defconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- riscv-randconfig-a001-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- riscv-rv32_defconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- s390-allmodconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- s390-allyesconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- sh-allyesconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- sparc-allyesconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- sparc64-allmodconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- sparc64-allyesconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- sparc64-randconfig-a001-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- x86_64-allmodconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- x86_64-allyesconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- x86_64-defconfig
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- x86_64-fedora-25
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- x86_64-randconfig-a001-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- x86_64-randconfig-a002-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- x86_64-randconfig-a003-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- x86_64-randconfig-b001-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- x86_64-randconfig-b002-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- x86_64-randconfig-b003-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- x86_64-randconfig-c001-20200406
|   `-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|-- x86_64-randconfig-c002-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- x86_64-randconfig-c003-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- x86_64-randconfig-g001-20200406
|   `-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|-- x86_64-randconfig-g003-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- x86_64-randconfig-h001-20200406
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|-- x86_64-rhel
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- x86_64-rhel-7.2-clear
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
|-- x86_64-rhel-7.6
|   |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
|   |-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:error:void-value-not-ignored-as-it-ought-to-be
|   |-- drivers-gpu-drm-i915-display-intel_display_debugfs.c:warning:control-reaches-end-of-non-void-function
|   `-- drivers-gpu-drm-i915-i915_debugfs.c:error:conflicting-types-for-i915_debugfs_register
`-- xtensa-allyesconfig
    |-- drivers-gpu-drm-drm_debugfs.c:error:conflicting-types-for-drm_debugfs_remove_files
    `-- drivers-gpu-drm-drm_debugfs.c:note:in-expansion-of-macro-EXPORT_SYMBOL

elapsed time: 481m

configs tested: 157
configs skipped: 0

arm64                            allyesconfig
arm                              allyesconfig
arm64                            allmodconfig
arm                              allmodconfig
arm64                             allnoconfig
arm                               allnoconfig
arm                           efm32_defconfig
arm                         at91_dt_defconfig
arm                        shmobile_defconfig
arm64                               defconfig
arm                          exynos_defconfig
arm                        multi_v5_defconfig
arm                           sunxi_defconfig
arm                        multi_v7_defconfig
sparc                            allyesconfig
nios2                         10m50_defconfig
xtensa                       common_defconfig
m68k                          multi_defconfig
ia64                                defconfig
powerpc                             defconfig
m68k                       m5475evb_defconfig
um                           x86_64_defconfig
i386                              allnoconfig
i386                             alldefconfig
i386                             allyesconfig
i386                              debian-10.3
i386                                defconfig
ia64                             alldefconfig
ia64                             allmodconfig
ia64                              allnoconfig
ia64                             allyesconfig
c6x                              allyesconfig
c6x                        evmc6678_defconfig
nios2                         3c120_defconfig
openrisc                    or1ksim_defconfig
openrisc                 simple_smp_defconfig
xtensa                          iss_defconfig
nds32                               defconfig
nds32                             allnoconfig
csky                                defconfig
alpha                               defconfig
h8300                     edosk2674_defconfig
h8300                    h8300h-sim_defconfig
h8300                       h8s-sim_defconfig
m68k                             allmodconfig
m68k                           sun3_defconfig
arc                                 defconfig
arc                              allyesconfig
powerpc                       ppc64_defconfig
powerpc                          rhel-kconfig
microblaze                      mmu_defconfig
microblaze                    nommu_defconfig
powerpc                           allnoconfig
mips                             allyesconfig
mips                              allnoconfig
mips                           32r2_defconfig
mips                             allmodconfig
mips                         64r6el_defconfig
mips                      fuloong2e_defconfig
mips                      malta_kvm_defconfig
parisc                            allnoconfig
parisc                           allyesconfig
parisc                generic-32bit_defconfig
parisc                generic-64bit_defconfig
x86_64               randconfig-a001-20200406
x86_64               randconfig-a002-20200406
x86_64               randconfig-a003-20200406
i386                 randconfig-a001-20200406
i386                 randconfig-a002-20200406
i386                 randconfig-a003-20200406
mips                 randconfig-a001-20200406
nds32                randconfig-a001-20200406
m68k                 randconfig-a001-20200406
parisc               randconfig-a001-20200406
alpha                randconfig-a001-20200406
riscv                randconfig-a001-20200406
sparc64              randconfig-a001-20200406
h8300                randconfig-a001-20200406
nios2                randconfig-a001-20200406
microblaze           randconfig-a001-20200406
c6x                  randconfig-a001-20200406
s390                 randconfig-a001-20200406
xtensa               randconfig-a001-20200406
csky                 randconfig-a001-20200406
openrisc             randconfig-a001-20200406
sh                   randconfig-a001-20200406
x86_64               randconfig-b001-20200406
x86_64               randconfig-b002-20200406
x86_64               randconfig-b003-20200406
i386                 randconfig-b001-20200406
i386                 randconfig-b002-20200406
i386                 randconfig-b003-20200406
x86_64               randconfig-c001-20200406
x86_64               randconfig-c002-20200406
x86_64               randconfig-c003-20200406
i386                 randconfig-c001-20200406
i386                 randconfig-c002-20200406
i386                 randconfig-c003-20200406
i386                 randconfig-f001-20200406
x86_64               randconfig-f003-20200406
i386                 randconfig-f003-20200406
x86_64               randconfig-f001-20200406
i386                 randconfig-f002-20200406
x86_64               randconfig-g003-20200406
i386                 randconfig-g003-20200406
x86_64               randconfig-g002-20200406
i386                 randconfig-g001-20200406
i386                 randconfig-g002-20200406
x86_64               randconfig-g001-20200406
x86_64               randconfig-h001-20200406
x86_64               randconfig-h002-20200406
x86_64               randconfig-h003-20200406
i386                 randconfig-h001-20200406
i386                 randconfig-h002-20200406
i386                 randconfig-h003-20200406
arc                  randconfig-a001-20200407
arm                  randconfig-a001-20200407
arm64                randconfig-a001-20200407
ia64                 randconfig-a001-20200407
powerpc              randconfig-a001-20200407
sparc                randconfig-a001-20200407
arm64                randconfig-a001-20200406
sparc                randconfig-a001-20200406
ia64                 randconfig-a001-20200406
arc                  randconfig-a001-20200406
arm                  randconfig-a001-20200406
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
s390                             alldefconfig
s390                             allmodconfig
s390                              allnoconfig
s390                             allyesconfig
s390                          debug_defconfig
s390                                defconfig
s390                       zfcpdump_defconfig
sh                          rsk7269_defconfig
sh                               allmodconfig
sh                            titan_defconfig
sh                  sh7785lcr_32bit_defconfig
sh                                allnoconfig
sparc                               defconfig
sparc64                             defconfig
sparc64                           allnoconfig
sparc64                          allyesconfig
sparc64                          allmodconfig
um                             i386_defconfig
um                                  defconfig
x86_64                                   rhel
x86_64                               rhel-7.6
x86_64                         rhel-7.2-clear
x86_64                                    lkp
x86_64                              fedora-25
x86_64                                  kexec

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
