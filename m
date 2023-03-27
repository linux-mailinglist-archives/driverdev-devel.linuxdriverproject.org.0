Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2BF6CB241
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Mar 2023 01:22:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id ABA1D4182E;
	Mon, 27 Mar 2023 23:22:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ABA1D4182E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZysKTohmlrZh; Mon, 27 Mar 2023 23:22:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4517A41839;
	Mon, 27 Mar 2023 23:22:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4517A41839
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AF3EA1BF3E5
 for <devel@linuxdriverproject.org>; Mon, 27 Mar 2023 23:22:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 854BA4182E
 for <devel@linuxdriverproject.org>; Mon, 27 Mar 2023 23:22:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 854BA4182E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9GLI1W67R1SG for <devel@linuxdriverproject.org>;
 Mon, 27 Mar 2023 23:22:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49DC2417C8
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 49DC2417C8
 for <devel@driverdev.osuosl.org>; Mon, 27 Mar 2023 23:22:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="340442516"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="340442516"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 16:22:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="748176665"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="748176665"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 27 Mar 2023 16:22:38 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pgwAf-000I51-1O;
 Mon, 27 Mar 2023 23:22:37 +0000
Date: Tue, 28 Mar 2023 07:21:47 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup 83/87] drivers/base/core.c:3431:
 undefined reference to `block_class'
Message-ID: <202303280729.OPVdWwue-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679959367; x=1711495367;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=A9xG9M8LsbjSI+H//IKHZxC78kmTii1MyX5CYuaIlIQ=;
 b=DSxXTkocpGrXvVxQ6+DlLcl4VvMSIAoGPlEE9NV46exf4Ksq3n5TQtZ8
 fLnXLCVXb2lEtweAiCObi2eRdEz6XKlf5hAmGmEd4miwvh9yvIk1MvgSA
 Kvz32YMMO9t3WKToBHM5iaKNrlCgiH5NSMH9hAd7NRaxWvr+J7WragCvv
 h7H36hXlz8c0ZPuAOWlzN6ZGQA69/D96pXRqr+MH7q5rMs0Dz1Gl9MMeq
 mvehdLCvFNpRqimQasBAWIRtorkRCwxpuQ/PNx7HhPtIEBshImy1GNt4E
 nRxa2o01z3O5/I8qgxlbkV7fUu+v8w3+tfV90oAkxbMFZeLJvViIWRcoh
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DSxXTkoc
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git class_cleanup
head:   768b1a193b9d918cd016e3eb38728680a463cdfa
commit: 1833557a6402e9aee2dee7ccaf8662996217e74a [83/87] driver core: clean up the logic to determine which /sys/dev/ directory to use
config: x86_64-randconfig-a002-20230327 (https://download.01.org/0day-ci/archive/20230328/202303280729.OPVdWwue-lkp@intel.com/config)
compiler: gcc-11 (Debian 11.3.0-8) 11.3.0
reproduce (this is a W=1 build):
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=1833557a6402e9aee2dee7ccaf8662996217e74a
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core class_cleanup
        git checkout 1833557a6402e9aee2dee7ccaf8662996217e74a
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        make W=1 O=build_dir ARCH=x86_64 olddefconfig
        make W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303280729.OPVdWwue-lkp@intel.com/

All errors (new ones prefixed by >>):

   ld: drivers/base/core.o: in function `device_to_dev_kobj':
>> drivers/base/core.c:3431: undefined reference to `block_class'
>> ld: drivers/base/core.c:3431: undefined reference to `block_class'


vim +3431 drivers/base/core.c

  3427	
  3428	/* select a /sys/dev/ directory for the device */
  3429	static struct kobject *device_to_dev_kobj(struct device *dev)
  3430	{
> 3431		if (dev->class == &block_class)
  3432			return sysfs_dev_block_kobj;
  3433		else
  3434			return sysfs_dev_char_kobj;
  3435	}
  3436	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
