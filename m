Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 742CF3A8E91
	for <lists+driverdev-devel@lfdr.de>; Wed, 16 Jun 2021 03:48:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D63F583C25;
	Wed, 16 Jun 2021 01:48:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z8qG-5ZKGHEW; Wed, 16 Jun 2021 01:48:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 680A583B2C;
	Wed, 16 Jun 2021 01:48:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BAE931BF5DE
 for <devel@linuxdriverproject.org>; Wed, 16 Jun 2021 01:48:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B7343606DA
 for <devel@linuxdriverproject.org>; Wed, 16 Jun 2021 01:48:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fxqdmhvKX4mN for <devel@linuxdriverproject.org>;
 Wed, 16 Jun 2021 01:48:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B084E606AA
 for <devel@driverdev.osuosl.org>; Wed, 16 Jun 2021 01:48:01 +0000 (UTC)
IronPort-SDR: V/C5r65rM8Glp8+qxuj6r6Zaxq8m5Nxh0Q+tlw//faOWh6Me2mG4iInDhhlSU3AsfB81Rt5VyE
 OuwA7rQMRUjQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10016"; a="206056443"
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; d="scan'208";a="206056443"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 18:48:00 -0700
IronPort-SDR: ZDEPx5z9fiFwlp+29sxNLoub4AWXt6FZa1XvGSn2RoSEAboohg9VFb1vXqbmurKCtm9JeUiJzO
 cLoEMjdn8MJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,276,1616482800"; d="scan'208";a="621535451"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 15 Jun 2021 18:47:58 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1ltKer-0000jh-Tz; Wed, 16 Jun 2021 01:47:57 +0000
Date: Wed, 16 Jun 2021 09:47:42 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS WITH WARNING
 5b4f167ef3555ec4c334a8dc89c1b44bb2c6bff5
Message-ID: <60c9583e.rw2f95VMegFYi2NU%lkp@intel.com>
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: 5b4f167ef3555ec4c334a8dc89c1b44bb2c6bff5  staging: mt7621-dts: fix pci address for PCI memory range

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- arc-allyesconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- arm-allmodconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- arm-allyesconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- arm64-allyesconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- h8300-allyesconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- i386-allmodconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- i386-allyesconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- ia64-allmodconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- ia64-allyesconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- m68k-allmodconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- m68k-allyesconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- mips-allmodconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- mips-allyesconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- nds32-allyesconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- nios2-allyesconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   `-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|-- parisc-allyesconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- powerpc-allmodconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- powerpc-allyesconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- riscv-allmodconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- riscv-allyesconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- sh-allmodconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- sparc-allyesconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
|-- x86_64-allyesconfig
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
|   |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
|   |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
|   `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used
`-- xtensa-allyesconfig
    |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaa-set-but-not-used
    |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-aaabak-set-but-not-used
    |-- drivers-staging-rtl8188eu-core-rtw_efuse.c:warning:variable-lenbak-set-but-not-used
    |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-passing_time-set-but-not-used
    |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reason_code-set-but-not-used
    |-- drivers-staging-rtl8188eu-core-rtw_mlme_ext.c:warning:variable-reassoc-set-but-not-used
    |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-macid-set-but-not-used
    |-- drivers-staging-rtl8188eu-hal-rtl8188e_cmd.c:warning:variable-opmode-set-but-not-used
    |-- drivers-staging-rtl8188eu-hal-rtl8188e_xmit.c:warning:variable-dump_txdesc-set-but-not-used
    `-- drivers-staging-rtl8188eu-os_dep-ioctl_linux.c:warning:variable-reason-set-but-not-used

elapsed time: 729m

configs tested: 88
configs skipped: 2

gcc tested configs:
arm                                 defconfig
arm64                            allyesconfig
arm64                               defconfig
arm                              allyesconfig
arm                              allmodconfig
powerpc                      chrp32_defconfig
xtensa                    smp_lx200_defconfig
mips                          ath79_defconfig
powerpc                  iss476-smp_defconfig
mips                     cu1000-neo_defconfig
m68k                       m5275evb_defconfig
arm                        keystone_defconfig
arm                         palmz72_defconfig
powerpc                mpc7448_hpc2_defconfig
x86_64                            allnoconfig
ia64                             allmodconfig
ia64                                defconfig
ia64                             allyesconfig
m68k                             allmodconfig
m68k                                defconfig
m68k                             allyesconfig
nios2                               defconfig
arc                              allyesconfig
nds32                             allnoconfig
nds32                               defconfig
nios2                            allyesconfig
csky                                defconfig
alpha                               defconfig
alpha                            allyesconfig
xtensa                           allyesconfig
h8300                            allyesconfig
arc                                 defconfig
sh                               allmodconfig
parisc                              defconfig
s390                             allyesconfig
s390                             allmodconfig
parisc                           allyesconfig
s390                                defconfig
i386                             allyesconfig
sparc                            allyesconfig
sparc                               defconfig
i386                                defconfig
mips                             allyesconfig
mips                             allmodconfig
powerpc                          allyesconfig
powerpc                          allmodconfig
powerpc                           allnoconfig
x86_64               randconfig-a001-20210615
x86_64               randconfig-a004-20210615
x86_64               randconfig-a002-20210615
x86_64               randconfig-a003-20210615
x86_64               randconfig-a006-20210615
x86_64               randconfig-a005-20210615
i386                 randconfig-a002-20210615
i386                 randconfig-a006-20210615
i386                 randconfig-a004-20210615
i386                 randconfig-a001-20210615
i386                 randconfig-a005-20210615
i386                 randconfig-a003-20210615
i386                 randconfig-a015-20210615
i386                 randconfig-a013-20210615
i386                 randconfig-a016-20210615
i386                 randconfig-a012-20210615
i386                 randconfig-a014-20210615
i386                 randconfig-a011-20210615
riscv                    nommu_k210_defconfig
riscv                            allyesconfig
riscv                    nommu_virt_defconfig
riscv                             allnoconfig
riscv                               defconfig
riscv                          rv32_defconfig
riscv                            allmodconfig
x86_64                    rhel-8.3-kselftests
um                           x86_64_defconfig
um                             i386_defconfig
um                            kunit_defconfig
x86_64                           allyesconfig
x86_64                              defconfig
x86_64                               rhel-8.3
x86_64                      rhel-8.3-kbuiltin
x86_64                                  kexec

clang tested configs:
x86_64               randconfig-b001-20210615
x86_64               randconfig-a015-20210615
x86_64               randconfig-a011-20210615
x86_64               randconfig-a012-20210615
x86_64               randconfig-a014-20210615
x86_64               randconfig-a016-20210615
x86_64               randconfig-a013-20210615

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
