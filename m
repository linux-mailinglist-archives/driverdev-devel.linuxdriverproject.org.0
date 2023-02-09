Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 04308691431
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Feb 2023 00:03:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D23E560ABE;
	Thu,  9 Feb 2023 23:03:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D23E560ABE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ClPPGJq-rGTJ; Thu,  9 Feb 2023 23:03:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B1CB9605A3;
	Thu,  9 Feb 2023 23:03:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B1CB9605A3
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CCC691BF847
 for <devel@linuxdriverproject.org>; Thu,  9 Feb 2023 23:03:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 65F1860ABE
 for <devel@linuxdriverproject.org>; Thu,  9 Feb 2023 23:03:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65F1860ABE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aBgD3ldQ48c4 for <devel@linuxdriverproject.org>;
 Thu,  9 Feb 2023 23:03:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89CB8605A3
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 89CB8605A3
 for <devel@driverdev.osuosl.org>; Thu,  9 Feb 2023 23:03:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="394871041"
X-IronPort-AV: E=Sophos;i="5.97,285,1669104000"; d="scan'208";a="394871041"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2023 15:03:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10616"; a="731511981"
X-IronPort-AV: E=Sophos;i="5.97,285,1669104000"; d="scan'208";a="731511981"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga008.fm.intel.com with ESMTP; 09 Feb 2023 15:03:11 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQFwc-0005Mo-2f;
 Thu, 09 Feb 2023 23:03:10 +0000
Date: Fri, 10 Feb 2023 07:02:45 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const-2 71/78]
 drivers/sh/intc/userimask.c:67:46: error: 'struct bus_type' has no member
 named 'dev_root'
Message-ID: <202302100648.6stAb27m-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675983814; x=1707519814;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=BQMaAMKCbYboTnODOigDAPqkG1qaRZ+Y8HUfOV+pEC4=;
 b=bZrq3E+N/2OQfD7p6ggfFlwYxwbPt6Xk0xERZX6B4rVgSZqR2ZfF/8XB
 VAFYzQ5HO7hWpKUorp1rr/lON8PL0syNIJqcAxdAjjmhdpHq3GdrLFfNX
 GtBa3qHyNYhAcJexfMct6F959jgUukQJtc8jCyH2XA1IBNH9geph2vgpT
 4dLN6D56OiQDhcrHTuFCApOmE80xa4zxlfwAO1y4m9OZsplM9GD/fLAIJ
 bk1UyZUNUmwslB9AziYguwBhteFacuEvHXn9GCJww3Ed16EqDtcByu1Hs
 a95E7wOy1xGcGa5WynmAXwwYfAPgLq0R+b2IptOPlRdgizSsVEUQCJaW0
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=bZrq3E+N
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const-2
head:   0be8abebbd476395ee73f4a83d4988dc9958f83c
commit: 7389911cf9a8bc346a6aa2662645298627c44cb6 [71/78] driver core: bus: move dev_root out of struct bus_type
config: sh-allmodconfig (https://download.01.org/0day-ci/archive/20230210/202302100648.6stAb27m-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=7389911cf9a8bc346a6aa2662645298627c44cb6
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core kobject-const-2
        git checkout 7389911cf9a8bc346a6aa2662645298627c44cb6
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=sh olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=sh SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202302100648.6stAb27m-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/sh/intc/userimask.c: In function 'userimask_sysdev_init':
>> drivers/sh/intc/userimask.c:67:46: error: 'struct bus_type' has no member named 'dev_root'
      67 |         return device_create_file(intc_subsys.dev_root, &dev_attr_userimask);
         |                                              ^
   drivers/sh/intc/userimask.c:68:1: error: control reaches end of non-void function [-Werror=return-type]
      68 | }
         | ^
   cc1: some warnings being treated as errors


vim +67 drivers/sh/intc/userimask.c

2be6bb0c79c7fb Paul Mundt  2010-10-05  57  
f4e73bfcd9cca0 Kay Sievers 2011-12-21  58  static DEVICE_ATTR(userimask, S_IRUSR | S_IWUSR,
2be6bb0c79c7fb Paul Mundt  2010-10-05  59  		   show_intc_userimask, store_intc_userimask);
2be6bb0c79c7fb Paul Mundt  2010-10-05  60  
2be6bb0c79c7fb Paul Mundt  2010-10-05  61  
2be6bb0c79c7fb Paul Mundt  2010-10-05  62  static int __init userimask_sysdev_init(void)
2be6bb0c79c7fb Paul Mundt  2010-10-05  63  {
2be6bb0c79c7fb Paul Mundt  2010-10-05  64  	if (unlikely(!uimask))
2be6bb0c79c7fb Paul Mundt  2010-10-05  65  		return -ENXIO;
2be6bb0c79c7fb Paul Mundt  2010-10-05  66  
f4e73bfcd9cca0 Kay Sievers 2011-12-21 @67  	return device_create_file(intc_subsys.dev_root, &dev_attr_userimask);
2be6bb0c79c7fb Paul Mundt  2010-10-05  68  }
2be6bb0c79c7fb Paul Mundt  2010-10-05  69  late_initcall(userimask_sysdev_init);
2be6bb0c79c7fb Paul Mundt  2010-10-05  70  

:::::: The code at line 67 was first introduced by commit
:::::: f4e73bfcd9cca0b64cc8096175852936fb1d111f sh: intc - convert sysdev_class to a regular subsystem

:::::: TO: Kay Sievers <kay.sievers@vrfy.org>
:::::: CC: Greg Kroah-Hartman <gregkh@suse.de>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
