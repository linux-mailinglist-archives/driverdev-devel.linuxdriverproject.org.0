Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 636497345A6
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Jun 2023 11:01:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7ED32402D0;
	Sun, 18 Jun 2023 09:01:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7ED32402D0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Dl26i29QqBWE; Sun, 18 Jun 2023 09:01:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3AE9E4031E;
	Sun, 18 Jun 2023 09:01:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3AE9E4031E
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6D7861BF5B3
 for <devel@linuxdriverproject.org>; Sun, 18 Jun 2023 09:01:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 46CCB60B22
 for <devel@linuxdriverproject.org>; Sun, 18 Jun 2023 09:01:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 46CCB60B22
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4dV2ZqwitPh6 for <devel@linuxdriverproject.org>;
 Sun, 18 Jun 2023 09:01:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2F02960ACD
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2F02960ACD
 for <devel@driverdev.osuosl.org>; Sun, 18 Jun 2023 09:01:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10744"; a="339797385"
X-IronPort-AV: E=Sophos;i="6.00,252,1681196400"; d="scan'208";a="339797385"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2023 02:01:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10744"; a="783402582"
X-IronPort-AV: E=Sophos;i="6.00,252,1681196400"; d="scan'208";a="783402582"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 18 Jun 2023 02:01:12 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qAoHX-0003bg-1z;
 Sun, 18 Jun 2023 09:01:11 +0000
Date: Sun, 18 Jun 2023 17:00:43 +0800
From: kernel test robot <lkp@intel.com>
To: Philipp Hortmann <philipp.g.hortmann@gmail.com>
Subject: [staging:staging-testing 37/38] ERROR: modpost:
 "ieee80211_channel_to_freq_khz" [drivers/staging/rtl8192e/rtllib.ko]
 undefined!
Message-ID: <202306181636.4xw5PmFm-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687078874; x=1718614874;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=MTPD/ChIiXtYzHROYJX+Y1OBxNWdMyA+ZAR/Co+duM4=;
 b=KMtMx8xh5scq1XYmj0gLWLwCAQ0P3xuhEVQ+Ykdj93F8MvN2KX/lPX9a
 t974ilsF3Y9guZ6bMuJfHqFvy1kM6QmxM9djQxmxpeRXG9lv8j35NDqrO
 BohZhiCNyMyGFfqS/wXgkLPcd5DYePOxY+7Az1vGamxDe6ODILRqeD8LG
 IKdCfQ8p1ApjLB53vv3NliRXqAMU6P4yUcObXTErNBsROoU8QRr+vq/8+
 f3GKNmJCuIBtQbxtBToKlu+AH6zXE9Tzcagyo3U5Dvt3ykHSSGqr728z/
 xCMHV0byfp5BdcXiGNAGAyYRxDXHcexjyl92QlxBiMTf814BNYN5xKmKc
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KMtMx8xh
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   f99bbb4412ceffba7e85b9a9227de44c214c68ca
commit: 01da3efafe060ba685fcd08f8db665e5a9f1f9fc [37/38] staging: rtl8192e: Use standard api to calculate channel to frequency
config: csky-randconfig-r024-20230617 (https://download.01.org/0day-ci/archive/20230618/202306181636.4xw5PmFm-lkp@intel.com/config)
compiler: csky-linux-gcc (GCC) 12.3.0
reproduce: (https://download.01.org/0day-ci/archive/20230618/202306181636.4xw5PmFm-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306181636.4xw5PmFm-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

ERROR: modpost: "ieee80211_freq_khz_to_channel" [drivers/staging/rtl8192e/rtllib.ko] undefined!
ERROR: modpost: "rfc1042_header" [drivers/staging/rtl8192e/rtllib.ko] undefined!
>> ERROR: modpost: "ieee80211_channel_to_freq_khz" [drivers/staging/rtl8192e/rtllib.ko] undefined!
ERROR: modpost: "bridge_tunnel_header" [drivers/staging/rtl8192e/rtllib.ko] undefined!
>> ERROR: modpost: "ieee80211_channel_to_freq_khz" [drivers/staging/rtl8192e/rtl8192e/r8192e_pci.ko] undefined!

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
