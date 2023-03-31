Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAFA6D1DB0
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Mar 2023 12:12:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 889DC41E1A;
	Fri, 31 Mar 2023 10:12:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 889DC41E1A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Xd8SQYOpjBLY; Fri, 31 Mar 2023 10:12:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DA77941E20;
	Fri, 31 Mar 2023 10:12:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DA77941E20
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5457D1BF82C
 for <devel@linuxdriverproject.org>; Fri, 31 Mar 2023 10:12:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2CE0560C03
 for <devel@linuxdriverproject.org>; Fri, 31 Mar 2023 10:12:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CE0560C03
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uar16KmTibOg for <devel@linuxdriverproject.org>;
 Fri, 31 Mar 2023 10:12:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 571F560A8A
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 571F560A8A
 for <devel@driverdev.osuosl.org>; Fri, 31 Mar 2023 10:12:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="343074057"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="343074057"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 03:12:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="678566051"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="678566051"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 31 Mar 2023 03:12:37 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1piBkF-000Lg0-1R;
 Fri, 31 Mar 2023 10:12:31 +0000
Date: Fri, 31 Mar 2023 18:11:31 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup 105/105] drivers/char/dsp56k.c:509:31:
 error: 'dsp45k_class' undeclared; did you mean 'dsp56k_class'?
Message-ID: <202303311810.ETd3fMAl-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680257559; x=1711793559;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=DP3yk9yYrBBnw+et9CEbq4vAq1ZuxAEy0EEQKOG0Ywk=;
 b=gmBEOBAWtkjCZGuOqymwiZPYHbV0I/knSyT4CK2v0N/i3jDOGXfQpO87
 u0NzB3ygGv/ikUlPVNmwQjvIse4bH8UhEMrONM3i1kiAyM71d/J94YTRL
 hGUNUBib6tIEWd0yQOFqDqFkNj/KtoIqIWBqfxS26XlWVS58ajjSo5IFP
 s/TKWg+/3e0lVcuzy4mTFOi29dXVz81vM+GMTLOi+mATDehI5+qgoev3p
 rwgFQN/KcVb6cTFL5ho2E+9+S6x4tyV2EoZgffXbFLbkDPHQbTjiXKW9H
 UP4WH2zaGu0fkGQoMXIJucVOG22Efw9njO3yznQyehSfiFg2OCLE705FO
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gmBEOBAW
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
head:   14c5a0d89561a3a5b20f1b2216395161444208a9
commit: 14c5a0d89561a3a5b20f1b2216395161444208a9 [105/105] driver core: convert class_create() to class_register()
config: m68k-defconfig (https://download.01.org/0day-ci/archive/20230331/202303311810.ETd3fMAl-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=14c5a0d89561a3a5b20f1b2216395161444208a9
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core class_cleanup
        git checkout 14c5a0d89561a3a5b20f1b2216395161444208a9
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=m68k olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=m68k SHELL=/bin/bash drivers/char/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303311810.ETd3fMAl-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/char/dsp56k.c: In function 'dsp56k_init_driver':
>> drivers/char/dsp56k.c:509:31: error: 'dsp45k_class' undeclared (first use in this function); did you mean 'dsp56k_class'?
     509 |         err = class_register(&dsp45k_class);
         |                               ^~~~~~~~~~~~
         |                               dsp56k_class
   drivers/char/dsp56k.c:509:31: note: each undeclared identifier is reported only once for each function it appears in


vim +509 drivers/char/dsp56k.c

   495	
   496	static int __init dsp56k_init_driver(void)
   497	{
   498		int err;
   499	
   500		if(!MACH_IS_ATARI || !ATARIHW_PRESENT(DSP56K)) {
   501			printk("DSP56k driver: Hardware not present\n");
   502			return -ENODEV;
   503		}
   504	
   505		if(register_chrdev(DSP56K_MAJOR, "dsp56k", &dsp56k_fops)) {
   506			printk("DSP56k driver: Unable to register driver\n");
   507			return -ENODEV;
   508		}
 > 509		err = class_register(&dsp45k_class);
   510		if (err)
   511			goto out_chrdev;
   512		device_create(&dsp56k_class, NULL, MKDEV(DSP56K_MAJOR, 0), NULL,
   513			      "dsp56k");
   514	
   515		printk(banner);
   516		goto out;
   517	
   518	out_chrdev:
   519		unregister_chrdev(DSP56K_MAJOR, "dsp56k");
   520	out:
   521		return err;
   522	}
   523	module_init(dsp56k_init_driver);
   524	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
