Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2539A7344C7
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Jun 2023 05:23:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 037ED81EB5;
	Sun, 18 Jun 2023 03:23:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 037ED81EB5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6yerKoR5uEBm; Sun, 18 Jun 2023 03:23:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id D058A81EA0;
	Sun, 18 Jun 2023 03:23:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D058A81EA0
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9E8B51BF396
 for <devel@linuxdriverproject.org>; Sun, 18 Jun 2023 03:23:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 73D6181EB5
 for <devel@linuxdriverproject.org>; Sun, 18 Jun 2023 03:23:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 73D6181EB5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cD_f3vye-Ro9 for <devel@linuxdriverproject.org>;
 Sun, 18 Jun 2023 03:23:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1A9C381EA0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1A9C381EA0
 for <devel@driverdev.osuosl.org>; Sun, 18 Jun 2023 03:23:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10744"; a="358314833"
X-IronPort-AV: E=Sophos;i="6.00,251,1681196400"; d="scan'208";a="358314833"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2023 20:23:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10744"; a="837458640"
X-IronPort-AV: E=Sophos;i="6.00,251,1681196400"; d="scan'208";a="837458640"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 17 Jun 2023 20:23:01 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qAj0G-0003LI-1W;
 Sun, 18 Jun 2023 03:23:00 +0000
Date: Sun, 18 Jun 2023 11:22:33 +0800
From: kernel test robot <lkp@intel.com>
To: Philipp Hortmann <philipp.g.hortmann@gmail.com>
Subject: [staging:staging-testing 36/38] ERROR: modpost:
 "ieee80211_freq_khz_to_channel" [drivers/staging/rtl8192e/rtllib.ko]
 undefined!
Message-ID: <202306181110.O3j7R17W-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687058584; x=1718594584;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=xw6MGg9hm3aP3vCdUUPLoDZu5umWvdhmV7Z/bCJRxRI=;
 b=F3xoo59CNDd9PFnsV5B6KWP+ytAQp9NE4DjKV6YildAolTEGBJN4My+N
 pJkLjnte5aUn9jU3thr6yPAGuHdA5yih1EBxy6/YhAaNvFe/kbi+GgRR9
 9heWA5FP7+ubQecVtYVDL9yV+JCLjF4Biv3huI0ZtKF3bZQpkd8L+Zkkk
 VmkHu+4g+s4+ejj2T0tkvy/p3uvyzB2qMru3tkwQ+3OQmreMBDuF9rCzK
 5z1wqZUZjsquYkds0ZeH8TnyEFqa1ntpIEouPPclQQTbG4ZsGM2QP+vxl
 Yb0wws3FqxFmlgoO+9wIz/gGnKVaKwOQ19EGVblFJjlAm9s91qtQzwcN3
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=F3xoo59C
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
commit: 4e9e2c8026ff200e818928f818dde17a311fed86 [36/38] staging: rtl8192e: Use standard api to calculate frequency to channel
config: csky-randconfig-r024-20230617 (https://download.01.org/0day-ci/archive/20230618/202306181110.O3j7R17W-lkp@intel.com/config)
compiler: csky-linux-gcc (GCC) 12.3.0
reproduce: (https://download.01.org/0day-ci/archive/20230618/202306181110.O3j7R17W-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306181110.O3j7R17W-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "ieee80211_freq_khz_to_channel" [drivers/staging/rtl8192e/rtllib.ko] undefined!
ERROR: modpost: "rfc1042_header" [drivers/staging/rtl8192e/rtllib.ko] undefined!
ERROR: modpost: "bridge_tunnel_header" [drivers/staging/rtl8192e/rtllib.ko] undefined!

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
