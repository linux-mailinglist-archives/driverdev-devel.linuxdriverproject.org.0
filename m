Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A3D7A3A25
	for <lists+driverdev-devel@lfdr.de>; Sun, 17 Sep 2023 21:59:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B6B734048E;
	Sun, 17 Sep 2023 19:59:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B6B734048E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eJuyJzg3WXjN; Sun, 17 Sep 2023 19:59:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 378A74053E;
	Sun, 17 Sep 2023 19:59:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 378A74053E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 048561BF20B
 for <devel@linuxdriverproject.org>; Sun, 17 Sep 2023 19:59:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CFE00410B0
 for <devel@linuxdriverproject.org>; Sun, 17 Sep 2023 19:59:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CFE00410B0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XupUmqvbME99 for <devel@linuxdriverproject.org>;
 Sun, 17 Sep 2023 19:59:45 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 82924410A4
 for <devel@driverdev.osuosl.org>; Sun, 17 Sep 2023 19:59:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 82924410A4
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="379439287"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="379439287"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2023 12:59:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10836"; a="869343635"
X-IronPort-AV: E=Sophos;i="6.02,155,1688454000"; d="scan'208";a="869343635"
Received: from lkp-server02.sh.intel.com (HELO 9ef86b2655e5) ([10.239.97.151])
 by orsmga004.jf.intel.com with ESMTP; 17 Sep 2023 12:59:42 -0700
Received: from kbuild by 9ef86b2655e5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qhxvg-0005Qq-0j;
 Sun, 17 Sep 2023 19:59:40 +0000
Date: Mon, 18 Sep 2023 03:58:41 +0800
From: kernel test robot <lkp@intel.com>
To: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>
Subject: [staging:staging-testing] BUILD SUCCESS WITH WARNING
 a7705e54e1c895713a09e17bdcfaf507f80de3a0
Message-ID: <202309180330.HHACet4V-lkp@intel.com>
User-Agent: s-nail v14.9.24
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694980785; x=1726516785;
 h=date:from:to:cc:subject:message-id;
 bh=lc23Nh/pC9KGiNyUEnXatYE1rTE67QwNtIcVFimOm2E=;
 b=YHKvdw6N6yTqjQw80SnkOk5vDRxa8pgBLcOhqujBqfRNOxzBGfZmLKqF
 xcBcRg3yl4enzG3LdEXjtZIBWmOelDRlcjEHtT/gfmbRx6zvbS7Z8zpPm
 qnvNNkrrtt6TNMgOHvvmdhIQ9LnsWWmAnQz5GSd1VI5yRv+TalNe9WnDS
 IPkOXSbjUtwS9J0PuxqDzLeRnZOfluRmGhIS31pcmYshRTecx5V4BNmn5
 KLntxv9H29VLgdM7tx5ubQ9STyFP9JA/t5c1zKEbrJQqAYOwi1QfKqiUE
 AC3rRb/xza33HxAof6U4QwzcnbeafUdapNpzGb1svIGsc6vZ3JkdSKiew
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YHKvdw6N
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

tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
branch HEAD: a7705e54e1c895713a09e17bdcfaf507f80de3a0  staging: vme_user: Fix various comment formatting issues including comment content

Warning reports:

https://lore.kernel.org/oe-kbuild-all/202309171733.Gl96cmYd-lkp@intel.com

Warning: (recently discovered and may have been fixed)

drivers/staging/rtl8192e/rtl8192e/../rtllib.h:645:1: warning: alignment 1 of 'struct rtllib_authentication' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtl8192e/../rtllib.h:650:1: warning: alignment 1 of 'struct rtllib_disauth' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtl8192e/../rtllib.h:655:1: warning: alignment 1 of 'struct rtllib_disassoc' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtl8192e/../rtllib.h:661:1: warning: alignment 1 of 'struct rtllib_probe_request' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtl8192e/../rtllib.h:672:1: warning: alignment 1 of 'struct rtllib_probe_response' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtl8192e/../rtllib.h:683:1: warning: alignment 1 of 'struct rtllib_assoc_request_frame' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtl8192e/../rtllib.h:691:1: warning: alignment 1 of 'struct rtllib_assoc_response_frame' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtl8192e/../rtllib.h:735:1: warning: alignment 1 of 'struct rtllib_authentication' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtl8192e/../rtllib.h:740:1: warning: alignment 1 of 'struct rtllib_disauth' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtl8192e/../rtllib.h:745:1: warning: alignment 1 of 'struct rtllib_disassoc' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtl8192e/../rtllib.h:751:1: warning: alignment 1 of 'struct rtllib_probe_request' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtl8192e/../rtllib.h:762:1: warning: alignment 1 of 'struct rtllib_probe_response' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtl8192e/../rtllib.h:773:1: warning: alignment 1 of 'struct rtllib_assoc_request_frame' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtl8192e/../rtllib.h:781:1: warning: alignment 1 of 'struct rtllib_assoc_response_frame' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtllib.h:645:1: warning: alignment 1 of 'struct rtllib_authentication' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtllib.h:650:1: warning: alignment 1 of 'struct rtllib_disauth' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtllib.h:655:1: warning: alignment 1 of 'struct rtllib_disassoc' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtllib.h:661:1: warning: alignment 1 of 'struct rtllib_probe_request' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtllib.h:672:1: warning: alignment 1 of 'struct rtllib_probe_response' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtllib.h:683:1: warning: alignment 1 of 'struct rtllib_assoc_request_frame' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtllib.h:691:1: warning: alignment 1 of 'struct rtllib_assoc_response_frame' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtllib.h:735:1: warning: alignment 1 of 'struct rtllib_authentication' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtllib.h:740:1: warning: alignment 1 of 'struct rtllib_disauth' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtllib.h:745:1: warning: alignment 1 of 'struct rtllib_disassoc' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtllib.h:751:1: warning: alignment 1 of 'struct rtllib_probe_request' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtllib.h:762:1: warning: alignment 1 of 'struct rtllib_probe_response' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtllib.h:773:1: warning: alignment 1 of 'struct rtllib_assoc_request_frame' is less than 2 [-Wpacked-not-aligned]
drivers/staging/rtl8192e/rtllib.h:781:1: warning: alignment 1 of 'struct rtllib_assoc_response_frame' is less than 2 [-Wpacked-not-aligned]

Warning ids grouped by kconfigs:

gcc_recent_errors
|-- alpha-allyesconfig
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   `-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|-- arc-allmodconfig
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   `-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|-- arc-allyesconfig
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   `-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|-- csky-allmodconfig
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   `-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|-- csky-allyesconfig
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   `-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|-- parisc-allmodconfig
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   `-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|-- parisc-allyesconfig
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   `-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|-- sparc-allmodconfig
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   `-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|-- sparc-allyesconfig
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   `-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|-- x86_64-allmodconfig
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
|   |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
|   `-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
`-- x86_64-allyesconfig
    |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
    |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
    |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
    |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
    |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
    |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
    |-- drivers-staging-rtl8192e-rtl8192e-..-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than
    |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_request_frame-is-less-than
    |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_assoc_response_frame-is-less-than
    |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_authentication-is-less-than
    |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disassoc-is-less-than
    |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_disauth-is-less-than
    |-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_request-is-less-than
    `-- drivers-staging-rtl8192e-rtllib.h:warning:alignment-of-struct-rtllib_probe_response-is-less-than

elapsed time: 722m

configs tested: 153
configs skipped: 2

tested configs:
alpha                             allnoconfig   gcc  
alpha                            allyesconfig   gcc  
alpha                               defconfig   gcc  
arc                              allmodconfig   gcc  
arc                               allnoconfig   gcc  
arc                              allyesconfig   gcc  
arc                      axs103_smp_defconfig   gcc  
arc                                 defconfig   gcc  
arc                   randconfig-001-20230917   gcc  
arc                           tb10x_defconfig   gcc  
arm                              allmodconfig   gcc  
arm                               allnoconfig   gcc  
arm                              allyesconfig   gcc  
arm                                 defconfig   gcc  
arm                   randconfig-001-20230917   gcc  
arm                        vexpress_defconfig   clang
arm                         vf610m4_defconfig   gcc  
arm                         wpcm450_defconfig   gcc  
arm64                            allmodconfig   gcc  
arm64                             allnoconfig   gcc  
arm64                            allyesconfig   gcc  
arm64                               defconfig   gcc  
csky                             allmodconfig   gcc  
csky                              allnoconfig   gcc  
csky                             allyesconfig   gcc  
csky                                defconfig   gcc  
i386                             allmodconfig   gcc  
i386                              allnoconfig   gcc  
i386                             allyesconfig   gcc  
i386         buildonly-randconfig-001-20230917   gcc  
i386         buildonly-randconfig-002-20230917   gcc  
i386         buildonly-randconfig-003-20230917   gcc  
i386         buildonly-randconfig-004-20230917   gcc  
i386         buildonly-randconfig-005-20230917   gcc  
i386         buildonly-randconfig-006-20230917   gcc  
i386                              debian-10.3   gcc  
i386                                defconfig   gcc  
i386                  randconfig-001-20230917   gcc  
i386                  randconfig-002-20230917   gcc  
i386                  randconfig-003-20230917   gcc  
i386                  randconfig-004-20230917   gcc  
i386                  randconfig-005-20230917   gcc  
i386                  randconfig-006-20230917   gcc  
i386                  randconfig-011-20230917   gcc  
i386                  randconfig-012-20230917   gcc  
i386                  randconfig-013-20230917   gcc  
i386                  randconfig-014-20230917   gcc  
i386                  randconfig-015-20230917   gcc  
i386                  randconfig-016-20230917   gcc  
loongarch                        allmodconfig   gcc  
loongarch                         allnoconfig   gcc  
loongarch                        allyesconfig   gcc  
loongarch                           defconfig   gcc  
loongarch             randconfig-001-20230917   gcc  
m68k                             allmodconfig   gcc  
m68k                              allnoconfig   gcc  
m68k                             allyesconfig   gcc  
m68k                                defconfig   gcc  
microblaze                       allmodconfig   gcc  
microblaze                        allnoconfig   gcc  
microblaze                       allyesconfig   gcc  
microblaze                          defconfig   gcc  
mips                             allmodconfig   gcc  
mips                              allnoconfig   gcc  
mips                             allyesconfig   gcc  
mips                            ar7_defconfig   gcc  
mips                         bigsur_defconfig   gcc  
mips                           jazz_defconfig   gcc  
mips                          rb532_defconfig   gcc  
nios2                            alldefconfig   gcc  
nios2                            allmodconfig   gcc  
nios2                             allnoconfig   gcc  
nios2                            allyesconfig   gcc  
nios2                               defconfig   gcc  
openrisc                         alldefconfig   gcc  
openrisc                         allmodconfig   gcc  
openrisc                          allnoconfig   gcc  
openrisc                         allyesconfig   gcc  
openrisc                            defconfig   gcc  
parisc                           allmodconfig   gcc  
parisc                            allnoconfig   gcc  
parisc                           allyesconfig   gcc  
parisc                              defconfig   gcc  
parisc64                            defconfig   gcc  
powerpc                          allmodconfig   gcc  
powerpc                           allnoconfig   gcc  
powerpc                          allyesconfig   gcc  
powerpc                          g5_defconfig   clang
powerpc                       holly_defconfig   gcc  
powerpc                      mgcoge_defconfig   gcc  
powerpc                      ppc6xx_defconfig   gcc  
powerpc                      tqm8xx_defconfig   gcc  
riscv                            allmodconfig   gcc  
riscv                             allnoconfig   gcc  
riscv                            allyesconfig   gcc  
riscv                               defconfig   gcc  
riscv                 randconfig-001-20230917   gcc  
riscv                          rv32_defconfig   gcc  
s390                             allmodconfig   gcc  
s390                              allnoconfig   gcc  
s390                             allyesconfig   gcc  
s390                                defconfig   gcc  
s390                  randconfig-001-20230917   gcc  
sh                               allmodconfig   gcc  
sh                                allnoconfig   gcc  
sh                               allyesconfig   gcc  
sh                                  defconfig   gcc  
sh                           se7712_defconfig   gcc  
sparc                            allmodconfig   gcc  
sparc                             allnoconfig   gcc  
sparc                            allyesconfig   gcc  
sparc                               defconfig   gcc  
sparc                 randconfig-001-20230917   gcc  
sparc64                          allmodconfig   gcc  
sparc64                          allyesconfig   gcc  
sparc64                             defconfig   gcc  
um                               allmodconfig   clang
um                                allnoconfig   clang
um                               allyesconfig   clang
um                                  defconfig   gcc  
um                             i386_defconfig   gcc  
um                           x86_64_defconfig   gcc  
x86_64                            allnoconfig   gcc  
x86_64                           allyesconfig   gcc  
x86_64       buildonly-randconfig-001-20230917   gcc  
x86_64       buildonly-randconfig-002-20230917   gcc  
x86_64       buildonly-randconfig-003-20230917   gcc  
x86_64       buildonly-randconfig-004-20230917   gcc  
x86_64       buildonly-randconfig-005-20230917   gcc  
x86_64       buildonly-randconfig-006-20230917   gcc  
x86_64                              defconfig   gcc  
x86_64                randconfig-001-20230917   gcc  
x86_64                randconfig-002-20230917   gcc  
x86_64                randconfig-003-20230917   gcc  
x86_64                randconfig-004-20230917   gcc  
x86_64                randconfig-005-20230917   gcc  
x86_64                randconfig-006-20230917   gcc  
x86_64                randconfig-011-20230917   gcc  
x86_64                randconfig-012-20230917   gcc  
x86_64                randconfig-013-20230917   gcc  
x86_64                randconfig-014-20230917   gcc  
x86_64                randconfig-015-20230917   gcc  
x86_64                randconfig-016-20230917   gcc  
x86_64                randconfig-071-20230917   gcc  
x86_64                randconfig-072-20230917   gcc  
x86_64                randconfig-073-20230917   gcc  
x86_64                randconfig-074-20230917   gcc  
x86_64                randconfig-075-20230917   gcc  
x86_64                randconfig-076-20230917   gcc  
x86_64                          rhel-8.3-rust   clang
x86_64                               rhel-8.3   gcc  
xtensa                            allnoconfig   gcc  
xtensa                           allyesconfig   gcc  

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
