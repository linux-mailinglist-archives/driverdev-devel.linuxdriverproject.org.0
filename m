Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3D2911B25
	for <lists+driverdev-devel@lfdr.de>; Fri, 21 Jun 2024 08:14:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8E61D8145D;
	Fri, 21 Jun 2024 06:14:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 81p4H-CPriZl; Fri, 21 Jun 2024 06:14:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1C0FF81587
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1C0FF81587;
	Fri, 21 Jun 2024 06:14:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id F3CB41BF357
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2024 06:14:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id DFCF581587
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2024 06:14:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IHuMgz9wox3V for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2024 06:14:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BE7828145D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE7828145D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BE7828145D
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2024 06:14:30 +0000 (UTC)
X-CSE-ConnectionGUID: nW+neQnMRaK80Tq4eWoVXA==
X-CSE-MsgGUID: zs2KzvKKST+UYW3uD/lfgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11109"; a="15946709"
X-IronPort-AV: E=Sophos;i="6.08,253,1712646000"; d="scan'208";a="15946709"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2024 23:14:31 -0700
X-CSE-ConnectionGUID: IpYGBZ9/So2M8oRqxKSkJw==
X-CSE-MsgGUID: qLi+/Lz3SNOL6XbJD31JrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,253,1712646000"; d="scan'208";a="42451164"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa008.fm.intel.com with ESMTP; 20 Jun 2024 23:14:28 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sKXXW-0008Hu-37;
 Fri, 21 Jun 2024 06:14:26 +0000
Date: Fri, 21 Jun 2024 14:13:56 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:const_driver 3/10]
 arch/powerpc/platforms/pseries/vio.c:1582:58: sparse: sparse: incorrect type
 in argument 1 (different modifiers)
Message-ID: <202406211454.XbtJCp0g-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718950472; x=1750486472;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=XUogZ+0KzAF6srsP8iSp4pG8wF+DXoZN6K0+TCxPntI=;
 b=YWL/jS4Yj/ozJXN7x5ZaNWpZY4OJdP7iEfsWv0I7KqTl8wp/WsnYQwSd
 v8uxcoSXENdl9g1/W7xYga7lMthL9ncMLaKbNFvHoHKD0zmiqTkltjV4y
 EZRAakgACHwqX5Za2rLfh9Cbp9F9sGqt0XcOs8pZk2JGeG/mA0n3QqQo4
 daqIWTlw+PPeUsdpU6TN6MIF6HJ3uma1mc3bkqp6LYgoKrR0dn6Vn0R/2
 fb3Erl544HV38XSOrdM5PDJ1AuBwn0D/9yYVN4fWQCDfqony0QT9KJGjb
 6eM7Yt5eHbN08EAJFTqLaDKbjJaEOK3NjMw5kMxYAp61yqCZJHt0oRlwd
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YWL/jS4Y
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
head:   d5d1958dc29111bce74f9ddf7aec5803c308837e
commit: c75570c28cd80a9afb49f5081eed41288ad5d7bf [3/10] driver core: have match() callback in struct bus_type take a const *
config: powerpc64-randconfig-r113-20240621 (https://download.01.org/0day-ci/archive/20240621/202406211454.XbtJCp0g-lkp@intel.com/config)
compiler: powerpc64-linux-gcc (GCC) 13.2.0
reproduce: (https://download.01.org/0day-ci/archive/20240621/202406211454.XbtJCp0g-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406211454.XbtJCp0g-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> arch/powerpc/platforms/pseries/vio.c:1582:58: sparse: sparse: incorrect type in argument 1 (different modifiers) @@     expected struct device_driver *drv @@     got struct device_driver const *drv @@
   arch/powerpc/platforms/pseries/vio.c:1582:58: sparse:     expected struct device_driver *drv
   arch/powerpc/platforms/pseries/vio.c:1582:58: sparse:     got struct device_driver const *drv

vim +1582 arch/powerpc/platforms/pseries/vio.c

  1578	
  1579	static int vio_bus_match(struct device *dev, const struct device_driver *drv)
  1580	{
  1581		const struct vio_dev *vio_dev = to_vio_dev(dev);
> 1582		const struct vio_driver *vio_drv = to_vio_driver(drv);
  1583		const struct vio_device_id *ids = vio_drv->id_table;
  1584	
  1585		return (ids != NULL) && (vio_match_device(ids, vio_dev) != NULL);
  1586	}
  1587	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
