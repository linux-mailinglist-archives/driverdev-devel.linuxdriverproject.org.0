Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5DF990969C
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Jun 2024 09:45:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA539404B3;
	Sat, 15 Jun 2024 07:45:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bQ0wqCQgwjUU; Sat, 15 Jun 2024 07:45:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B056F40520
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B056F40520;
	Sat, 15 Jun 2024 07:45:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D1BE11BF30C
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2024 07:45:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BF43E60685
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2024 07:45:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mDtDFgvYpMYm for <devel@linuxdriverproject.org>;
 Sat, 15 Jun 2024 07:45:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 75F8660671
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 75F8660671
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 75F8660671
 for <devel@driverdev.osuosl.org>; Sat, 15 Jun 2024 07:45:50 +0000 (UTC)
X-CSE-ConnectionGUID: NNnFS4Z/Sh67cDUxpL99Gg==
X-CSE-MsgGUID: NoyVmZadRxCspPe3jdD3YQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11103"; a="12087972"
X-IronPort-AV: E=Sophos;i="6.08,240,1712646000"; d="scan'208";a="12087972"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2024 00:45:50 -0700
X-CSE-ConnectionGUID: cd/a4JoqTg6rjOCzntKI0A==
X-CSE-MsgGUID: Qmyps+vWT56emz9ACz/NlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,240,1712646000"; d="scan'208";a="41405371"
Received: from lkp-server01.sh.intel.com (HELO 9e3ee4e9e062) ([10.239.97.150])
 by orviesa008.jf.intel.com with ESMTP; 15 Jun 2024 00:45:49 -0700
Received: from kbuild by 9e3ee4e9e062 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sIO6c-0002Kj-11;
 Sat, 15 Jun 2024 07:45:46 +0000
Date: Sat, 15 Jun 2024 15:45:18 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:const_driver 16/23] drivers/sh/maple/maple.c:779:18:
 error: initialization of 'int (*)(struct device *, const struct
 device_driver *)' from incompatible pointer type 'int (*)(struct device *,
 struct device_driver *)'
Message-ID: <202406151553.p4VrrmH9-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718437550; x=1749973550;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=u0GQ+7LYv4pVK7fxR2M76vSDueK171BGQGp4VYK0nhU=;
 b=mBrMHhHRTqCqzP3jkofXsXS3ds4gVXpq4QY5IxFJwJRs2oYpg3Kw9Sj2
 dUC6qxnil9pbkxj//b6KzjffAxOgWASwNDXOjmmIiNHyAxbKDOXNddHb1
 mbjYUE0pE1knLJ/8QzAOCiAaedKHAoB5pvHHrMV7oOsNAhWvR7X1q+ciB
 Tzv669djCU2BMav4v9nX2f1NlAPyjDmi8je7iPf2lbAhjq56KchRRNPXM
 KOxhok2UPNPVwm5FoFwL5SQ7hd7GRC3yjywfdI89Csx85gV137NMxyQyk
 d9dZ0BLfq8u7mWVAJ0B7XHhsXAeHlvNqXXzqi4v9uLxOmx1qwm3CYfBkp
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=mBrMHhHR
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git const_driver
head:   158a3753cd10fdbb78a7abe66a8b70d5408ba7ca
commit: f17ab078e7c67e5579df87737875f784f98b4bce [16/23] driver core: have match() callback in struct bus_type take a const *
config: sh-dreamcast_defconfig (https://download.01.org/0day-ci/archive/20240615/202406151553.p4VrrmH9-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240615/202406151553.p4VrrmH9-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406151553.p4VrrmH9-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/sh/maple/maple.c:779:18: error: initialization of 'int (*)(struct device *, const struct device_driver *)' from incompatible pointer type 'int (*)(struct device *, struct device_driver *)' [-Werror=incompatible-pointer-types]
     779 |         .match = maple_match_bus_driver,
         |                  ^~~~~~~~~~~~~~~~~~~~~~
   drivers/sh/maple/maple.c:779:18: note: (near initialization for 'maple_bus_type.match')
   cc1: some warnings being treated as errors


vim +779 drivers/sh/maple/maple.c

17be2d2b1c333e Adrian McMenamin   2007-09-21  767  
b233b28eac0cc3 Adrian McMenamin   2009-02-27  768  static struct maple_driver maple_unsupported_device = {
17be2d2b1c333e Adrian McMenamin   2007-09-21  769  	.drv = {
b233b28eac0cc3 Adrian McMenamin   2009-02-27  770  		.name = "maple_unsupported_device",
17be2d2b1c333e Adrian McMenamin   2007-09-21  771  		.bus = &maple_bus_type,
17be2d2b1c333e Adrian McMenamin   2007-09-21  772  	},
17be2d2b1c333e Adrian McMenamin   2007-09-21  773  };
ee665ecca6d677 Randy Dunlap       2009-03-28  774  /*
b233b28eac0cc3 Adrian McMenamin   2009-02-27  775   * maple_bus_type - core maple bus structure
b233b28eac0cc3 Adrian McMenamin   2009-02-27  776   */
e76933a9bfa9b7 Greg Kroah-Hartman 2023-12-19  777  static const struct bus_type maple_bus_type = {
17be2d2b1c333e Adrian McMenamin   2007-09-21  778  	.name = "maple",
b233b28eac0cc3 Adrian McMenamin   2009-02-27 @779  	.match = maple_match_bus_driver,
17be2d2b1c333e Adrian McMenamin   2007-09-21  780  };
17be2d2b1c333e Adrian McMenamin   2007-09-21  781  

:::::: The code at line 779 was first introduced by commit
:::::: b233b28eac0cc37d07c2d007ea08c86c778c5af4 sh: maple: Support block reads and writes.

:::::: TO: Adrian McMenamin <adrian@mcmen.demon.co.uk>
:::::: CC: Paul Mundt <lethal@linux-sh.org>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
