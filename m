Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5797E6AB0F6
	for <lists+driverdev-devel@lfdr.de>; Sun,  5 Mar 2023 15:14:38 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B2E9F819C8;
	Sun,  5 Mar 2023 14:14:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B2E9F819C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id me5iwHySwqXD; Sun,  5 Mar 2023 14:14:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 86FDC819BC;
	Sun,  5 Mar 2023 14:14:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 86FDC819BC
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7C24A1BF5A4
 for <devel@linuxdriverproject.org>; Sun,  5 Mar 2023 14:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 56915404BB
 for <devel@linuxdriverproject.org>; Sun,  5 Mar 2023 14:14:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 56915404BB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xe-sSxcmFVQF for <devel@linuxdriverproject.org>;
 Sun,  5 Mar 2023 14:14:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6BDAF40482
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6BDAF40482
 for <devel@driverdev.osuosl.org>; Sun,  5 Mar 2023 14:14:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="337695546"
X-IronPort-AV: E=Sophos;i="5.98,235,1673942400"; d="scan'208";a="337695546"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2023 06:14:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="785893425"
X-IronPort-AV: E=Sophos;i="5.98,235,1673942400"; d="scan'208";a="785893425"
Received: from lkp-server01.sh.intel.com (HELO 776573491cc5) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 05 Mar 2023 06:14:28 -0800
Received: from kbuild by 776573491cc5 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pYp88-0002nm-11;
 Sun, 05 Mar 2023 14:14:28 +0000
Date: Sun, 5 Mar 2023 22:14:14 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_lookup_fix 1/1]
 drivers/mtd/spi-nor/debugfs.c:254:2-16: WARNING: NULL check before some
 freeing functions is not needed.
Message-ID: <202303052201.l1sxpnD9-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678025671; x=1709561671;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=R79R2+s/I+jYKijt0uUwThRFrB7DpIUDBX0hxvl1ivU=;
 b=ZAcV8e3mSVBKTUezKFvBb5M65OX7gu454YI/cXFaT9TGJB87ngWx8W3N
 LTqBOIQ5L1ovSqEd8ob9+5My5Eha7W2g++HPB7beGI3d3oMizONoj7JkO
 S0lna00CbP97dRe1/2I1rCgwH5YEHNOdQHWQHLfbHnB8wLb+ex+QADC2M
 iBJSOcBxkkuoWhhvvO4JaVwbjH3i2nqrJpcYJC7qq7ceHGQqY/Lh+x1Ka
 Fd32ItKcgBuC9Fl9j6HLn2ohwaCXVxKngQLH1uYJy5REWN4Wv2yB0lrEs
 oZnQwCuHpe4j5tv9LktcBVw0O0ohd2i+u3MsjjUTPmd5c4Wlb6bY3diju
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZAcV8e3m
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
Cc: devel@driverdev.osuosl.org, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_lookup_fix
head:   416ca04cc251b11c991d466dae592f7308f52079
commit: 416ca04cc251b11c991d466dae592f7308f52079 [1/1] mtd: spi-nor: fix memory leak when using debugfs_lookup()
config: sh-randconfig-c033-20230305 (https://download.01.org/0day-ci/archive/20230305/202303052201.l1sxpnD9-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 12.1.0

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303052201.l1sxpnD9-lkp@intel.com/

cocci warnings: (new ones prefixed by >>)
>> drivers/mtd/spi-nor/debugfs.c:254:2-16: WARNING: NULL check before some freeing functions is not needed.

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
