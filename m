Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A786A6BA7
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Mar 2023 12:25:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1E2860F29;
	Wed,  1 Mar 2023 11:25:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1E2860F29
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BI5qYb4OOblV; Wed,  1 Mar 2023 11:25:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4234560F96;
	Wed,  1 Mar 2023 11:25:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4234560F96
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 8711A1BF5B5
 for <devel@linuxdriverproject.org>; Wed,  1 Mar 2023 11:25:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 60C7B81E01
 for <devel@linuxdriverproject.org>; Wed,  1 Mar 2023 11:25:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 60C7B81E01
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LxAzcqTcefBN for <devel@linuxdriverproject.org>;
 Wed,  1 Mar 2023 11:25:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E65BD818D0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E65BD818D0
 for <devel@driverdev.osuosl.org>; Wed,  1 Mar 2023 11:25:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="361964032"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="361964032"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 03:25:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="920211568"
X-IronPort-AV: E=Sophos;i="5.98,224,1673942400"; d="scan'208";a="920211568"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 01 Mar 2023 03:25:15 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pXKaB-00066l-04;
 Wed, 01 Mar 2023 11:25:15 +0000
Date: Wed, 1 Mar 2023 19:24:42 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup 22/36]
 drivers/ata/pata_parport/pata_parport.c:618:20: error: initialization of
 'ssize_t (*)(const struct bus_type *, const char *, size_t)' {aka 'int
 (*)(const struct bus_type *, const char *, unsigned int)'} from incompatible
 pointer type 'ssize_t (*)(struct b...
Message-ID: <202303011947.T9OsRu7f-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677669917; x=1709205917;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=aAXKStIoQ8GZYQ4MvYngkyH4KqBY/pYFyMKjRKEDOVo=;
 b=I+SO6GMBLxCbZaf/SAqLIKJ/R6GXbisHJxRQ9yL7IVK8HqrEP5P5zsQg
 CdxxiNL2G+A6X5avMGoVqs5l46h/IjIwaPqM8fDVyWliiAAtPK1t58UQT
 tt5zXXUbg6Pdn11Rat8QWNu09brR96Gc+7gi3+zZvhVMDHvDOdAfkdwo+
 Zw8gfWywwyakd8OMxm6hcwKUsj52lFT290CYJe5whhcQRggVFWOYHDBu0
 98iF2yPUpEfQJ91olzDsX6B0PCeLKHu8CPBiz6fUrnFvS3l4r9UlKhhVI
 t9yMTx0NWHe+Eu+DoJWY8k1IFcwjf4ToCNRsMIhSB+HjK0LIinlqydGS+
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I+SO6GMB
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git bus_cleanup
head:   5447398fb1728b20784bfde814b2d524b9cb051a
commit: 40cef43fa58c8d53ea4c4a531facada6147216e7 [22/36] driver core: bus: mark the struct bus_type for sysfs callbacks as constant
config: sh-allmodconfig (https://download.01.org/0day-ci/archive/20230301/202303011947.T9OsRu7f-lkp@intel.com/config)
compiler: sh4-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=40cef43fa58c8d53ea4c4a531facada6147216e7
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core bus_cleanup
        git checkout 40cef43fa58c8d53ea4c4a531facada6147216e7
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=sh olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=sh SHELL=/bin/bash drivers/ata/pata_parport/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303011947.T9OsRu7f-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from include/linux/kobject.h:20,
                    from include/linux/module.h:21,
                    from drivers/ata/pata_parport/pata_parport.c:7:
>> drivers/ata/pata_parport/pata_parport.c:618:20: error: initialization of 'ssize_t (*)(const struct bus_type *, const char *, size_t)' {aka 'int (*)(const struct bus_type *, const char *, unsigned int)'} from incompatible pointer type 'ssize_t (*)(struct bus_type *, const char *, size_t)' {aka 'int (*)(struct bus_type *, const char *, unsigned int)'} [-Werror=incompatible-pointer-types]
     618 | static BUS_ATTR_WO(new_device);
         |                    ^~~~~~~~~~
   include/linux/sysfs.h:135:19: note: in definition of macro '__ATTR_WO'
     135 |         .store  = _name##_store,                                        \
         |                   ^~~~~
   drivers/ata/pata_parport/pata_parport.c:618:8: note: in expansion of macro 'BUS_ATTR_WO'
     618 | static BUS_ATTR_WO(new_device);
         |        ^~~~~~~~~~~
   drivers/ata/pata_parport/pata_parport.c:618:20: note: (near initialization for 'bus_attr_new_device.store')
     618 | static BUS_ATTR_WO(new_device);
         |                    ^~~~~~~~~~
   include/linux/sysfs.h:135:19: note: in definition of macro '__ATTR_WO'
     135 |         .store  = _name##_store,                                        \
         |                   ^~~~~
   drivers/ata/pata_parport/pata_parport.c:618:8: note: in expansion of macro 'BUS_ATTR_WO'
     618 | static BUS_ATTR_WO(new_device);
         |        ^~~~~~~~~~~
   drivers/ata/pata_parport/pata_parport.c:650:20: error: initialization of 'ssize_t (*)(const struct bus_type *, const char *, size_t)' {aka 'int (*)(const struct bus_type *, const char *, unsigned int)'} from incompatible pointer type 'ssize_t (*)(struct bus_type *, const char *, size_t)' {aka 'int (*)(struct bus_type *, const char *, unsigned int)'} [-Werror=incompatible-pointer-types]
     650 | static BUS_ATTR_WO(delete_device);
         |                    ^~~~~~~~~~~~~
   include/linux/sysfs.h:135:19: note: in definition of macro '__ATTR_WO'
     135 |         .store  = _name##_store,                                        \
         |                   ^~~~~
   drivers/ata/pata_parport/pata_parport.c:650:8: note: in expansion of macro 'BUS_ATTR_WO'
     650 | static BUS_ATTR_WO(delete_device);
         |        ^~~~~~~~~~~
   drivers/ata/pata_parport/pata_parport.c:650:20: note: (near initialization for 'bus_attr_delete_device.store')
     650 | static BUS_ATTR_WO(delete_device);
         |                    ^~~~~~~~~~~~~
   include/linux/sysfs.h:135:19: note: in definition of macro '__ATTR_WO'
     135 |         .store  = _name##_store,                                        \
         |                   ^~~~~
   drivers/ata/pata_parport/pata_parport.c:650:8: note: in expansion of macro 'BUS_ATTR_WO'
     650 | static BUS_ATTR_WO(delete_device);
         |        ^~~~~~~~~~~
   cc1: some warnings being treated as errors


vim +618 drivers/ata/pata_parport/pata_parport.c

246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  556  
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  557  static ssize_t new_device_store(struct bus_type *bus, const char *buf,
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  558  				size_t count)
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  559  {
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  560  	char port[12] = "auto";
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  561  	char protocol[8] = "auto";
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  562  	int mode = -1, unit = -1, delay = -1;
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  563  	struct pi_protocol *pr, *pr_wanted;
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  564  	struct device_driver *drv;
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  565  	struct parport *parport;
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  566  	int port_num, port_wanted, pr_num;
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  567  	bool ok = false;
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  568  
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  569  	if (sscanf(buf, "%11s %7s %d %d %d",
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  570  			port, protocol, &mode, &unit, &delay) < 1)
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  571  		return -EINVAL;
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  572  
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  573  	if (sscanf(port, "parport%u", &port_wanted) < 1) {
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  574  		if (strcmp(port, "auto")) {
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  575  			pr_err("invalid port name %s\n", port);
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  576  			return -EINVAL;
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  577  		}
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  578  		port_wanted = -1;
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  579  	}
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  580  
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  581  	drv = driver_find(protocol, &pata_parport_bus_type);
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  582  	if (!drv) {
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  583  		if (strcmp(protocol, "auto")) {
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  584  			pr_err("protocol %s not found\n", protocol);
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  585  			return -EINVAL;
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  586  		}
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  587  		pr_wanted = NULL;
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  588  	} else {
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  589  		pr_wanted = container_of(drv, struct pi_protocol, driver);
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  590  	}
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  591  
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  592  	mutex_lock(&pi_mutex);
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  593  	/* walk all parports */
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  594  	idr_for_each_entry(&parport_list, parport, port_num) {
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  595  		if (port_num == port_wanted || port_wanted == -1) {
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  596  			parport = parport_find_number(port_num);
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  597  			if (!parport) {
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  598  				pr_err("no such port %s\n", port);
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  599  				mutex_unlock(&pi_mutex);
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  600  				return -ENODEV;
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  601  			}
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  602  			/* walk all protocols */
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  603  			idr_for_each_entry(&protocols, pr, pr_num) {
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  604  				if (pr == pr_wanted || !pr_wanted)
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  605  					if (pi_init_one(parport, pr, mode, unit,
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  606  							delay))
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  607  						ok = true;
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  608  			}
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  609  			parport_put_port(parport);
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  610  		}
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  611  	}
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  612  	mutex_unlock(&pi_mutex);
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  613  	if (!ok)
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  614  		return -ENODEV;
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  615  
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  616  	return count;
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  617  }
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23 @618  static BUS_ATTR_WO(new_device);
246a1c4c6b7ffb drivers/ata/pata_parport.c Ondrej Zary 2023-01-23  619  

:::::: The code at line 618 was first introduced by commit
:::::: 246a1c4c6b7ffba88a2553d2b88f7b6280f253a2 ata: pata_parport: add driver (PARIDE replacement)

:::::: TO: Ondrej Zary <linux@zary.sk>
:::::: CC: Damien Le Moal <damien.lemoal@opensource.wdc.com>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
