Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CC86835A2
	for <lists+driverdev-devel@lfdr.de>; Tue, 31 Jan 2023 19:49:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2B12441761;
	Tue, 31 Jan 2023 18:49:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B12441761
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l3oIqUhNcJAm; Tue, 31 Jan 2023 18:49:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8609D41757;
	Tue, 31 Jan 2023 18:49:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8609D41757
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DBC591BF410
 for <devel@linuxdriverproject.org>; Tue, 31 Jan 2023 18:49:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C03BE81753
 for <devel@linuxdriverproject.org>; Tue, 31 Jan 2023 18:49:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C03BE81753
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gHbafQrbsLyW for <devel@linuxdriverproject.org>;
 Tue, 31 Jan 2023 18:49:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A433681501
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp1.osuosl.org (Postfix) with ESMTPS id A433681501
 for <devel@driverdev.osuosl.org>; Tue, 31 Jan 2023 18:49:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="414138804"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="414138804"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jan 2023 10:49:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10607"; a="666603880"
X-IronPort-AV: E=Sophos;i="5.97,261,1669104000"; d="scan'208";a="666603880"
Received: from lkp-server01.sh.intel.com (HELO ffa7f14d1d0f) ([10.239.97.150])
 by fmsmga007.fm.intel.com with ESMTP; 31 Jan 2023 10:49:21 -0800
Received: from kbuild by ffa7f14d1d0f with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pMvh2-0004de-2B;
 Tue, 31 Jan 2023 18:49:20 +0000
Date: Wed, 1 Feb 2023 02:48:25 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const 25/25] drivers/dma/idxd/compat.c:19:32:
 warning: initialization discards 'const' qualifier from pointer target type
Message-ID: <202302010222.N9SSmGUP-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675190963; x=1706726963;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=bbnsjgRdDE/vN7w9XpxrECZ1rUhli7CzDSOlEO3a7WY=;
 b=bYZkmbF9T0IuXdt/0WHNUYVkk9mfA9q4MMP/VfbgbqcwzSASbW5nFLIY
 kIJDIK8E0g2U6VK/oDUAupUggY8qrDMfX+6eXO8tFy4KTQqMJNjjIFc0x
 4qy2GvM/wlvy4qXjdhlleVYkcTO/Jegfre5G2x0wBTbrfpqxNUSf3eNsv
 TyzD7s+2lKsFdb6s+NBlViP3TlLz8MZZA4cyPLWQVoojhZgpxIQYMBQ29
 c8CdPZm6XX+WoPSf3Mvl2sUuB75kXQejj546Pwbw2EZLO3xQaDsRmxkRC
 xieHAPWcNfFL/8mO+Wuc4+nTmWCAhDe7P0Q6aNU7FfR7RICvwKvlx3Msx
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bYZkmbF9
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
head:   ab566595bfc8de2e05e5174796f04997d7c01fb3
commit: ab566595bfc8de2e05e5174796f04997d7c01fb3 [25/25] bus: remove the "p" pointer in struct bus_type
config: x86_64-allyesconfig (https://download.01.org/0day-ci/archive/20230201/202302010222.N9SSmGUP-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
reproduce (this is a W=1 build):
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=ab566595bfc8de2e05e5174796f04997d7c01fb3
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core kobject-const
        git checkout ab566595bfc8de2e05e5174796f04997d7c01fb3
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 olddefconfig
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/dma/idxd/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/dma/idxd/compat.c: In function 'unbind_store':
>> drivers/dma/idxd/compat.c:19:32: warning: initialization discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]
      19 |         struct bus_type *bus = drv->bus;
         |                                ^~~
   drivers/dma/idxd/compat.c: In function 'bind_store':
   drivers/dma/idxd/compat.c:35:32: warning: initialization discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]
      35 |         struct bus_type *bus = drv->bus;
         |                                ^~~


vim +/const +19 drivers/dma/idxd/compat.c

6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  12  
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  13  #define DRIVER_ATTR_IGNORE_LOCKDEP(_name, _mode, _show, _store)	\
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  14  	struct driver_attribute driver_attr_##_name =		\
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  15  	__ATTR_IGNORE_LOCKDEP(_name, _mode, _show, _store)
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  16  
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  17  static ssize_t unbind_store(struct device_driver *drv, const char *buf, size_t count)
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  18  {
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15 @19  	struct bus_type *bus = drv->bus;
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  20  	struct device *dev;
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  21  	int rc = -ENODEV;
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  22  
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  23  	dev = bus_find_device_by_name(bus, NULL, buf);
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  24  	if (dev && dev->driver) {
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  25  		device_driver_detach(dev);
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  26  		rc = count;
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  27  	}
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  28  
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  29  	return rc;
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  30  }
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  31  static DRIVER_ATTR_IGNORE_LOCKDEP(unbind, 0200, NULL, unbind_store);
6e7f3ee97bbe2c7 Dave Jiang 2021-07-15  32  

:::::: The code at line 19 was first introduced by commit
:::::: 6e7f3ee97bbe2c7d7a53b7dbd7a08a579e03c8c9 dmaengine: idxd: move dsa_drv support to compatible mode

:::::: TO: Dave Jiang <dave.jiang@intel.com>
:::::: CC: Vinod Koul <vkoul@kernel.org>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
