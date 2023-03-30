Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4FD6D018F
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 Mar 2023 12:44:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D15DF401A1;
	Thu, 30 Mar 2023 10:44:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D15DF401A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zhaiWKwVgXgh; Thu, 30 Mar 2023 10:44:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8736540022;
	Thu, 30 Mar 2023 10:44:15 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8736540022
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 253781BF338
 for <devel@linuxdriverproject.org>; Thu, 30 Mar 2023 10:44:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F29D1401A1
 for <devel@linuxdriverproject.org>; Thu, 30 Mar 2023 10:44:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F29D1401A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S-aGITpxHgti for <devel@linuxdriverproject.org>;
 Thu, 30 Mar 2023 10:44:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E379040022
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E379040022
 for <devel@driverdev.osuosl.org>; Thu, 30 Mar 2023 10:44:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="325055587"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="325055587"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 03:43:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="678146362"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="678146362"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 30 Mar 2023 03:43:49 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1phpky-000KlI-2L;
 Thu, 30 Mar 2023 10:43:48 +0000
Date: Thu, 30 Mar 2023 18:43:25 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup 104/104] drivers/char/dsp56k.c:104:40:
 error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
Message-ID: <202303301809.zlocAixw-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680173051; x=1711709051;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=tUAMKtbaluTdZzTXaAdlz5et1YoUjsAl2/ajrRHZbNk=;
 b=Ya/jwSGmy3MjESHPqu3qyHWQdBvzqW3zZGFw8Q4vf0ZgSDlCaClViQ+6
 9waLLbBX0R0WfmYK33urhN0HyhwNypiQW3OwAZHf062pvJVpD246tghta
 +QA/l2InsWH+3XEnw7yAqFgMAIGY50ZpL6qmPCLqVT1wOtTOith2qG9hH
 ok3AM323mk1+oCYj88QFRhsFQ6Q97hdnnwusWhqsBP9EmBLb0/aBlbJZD
 x3074HUfMQX17opvMuKQpUC1Ex/o2OfjX1gLu40bPV3LVVEkq7vscRHI/
 8rr8dHET/21FeG9oYYmtefZVtFKyzlgd4fWrCTFonVwTavAJOUMXJ+K8q
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Ya/jwSGm
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
head:   0a691d3e4ee7c40089125d7643399d5ec1edf340
commit: 0a691d3e4ee7c40089125d7643399d5ec1edf340 [104/104] driver core: convert class_create() to class_register()
config: m68k-defconfig (https://download.01.org/0day-ci/archive/20230330/202303301809.zlocAixw-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=0a691d3e4ee7c40089125d7643399d5ec1edf340
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core class_cleanup
        git checkout 0a691d3e4ee7c40089125d7643399d5ec1edf340
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=m68k olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=m68k SHELL=/bin/bash drivers/char/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303301809.zlocAixw-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/char/dsp56k.c:104:40: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
     104 | static const struct class dsp56k_class {
         |                                        ^
   drivers/char/dsp56k.c: In function 'dsp56k_init_driver':
>> drivers/char/dsp56k.c:509:31: error: 'dsp45k_class' undeclared (first use in this function)
     509 |         err = class_register(&dsp45k_class);
         |                               ^~~~~~~~~~~~
   drivers/char/dsp56k.c:509:31: note: each undeclared identifier is reported only once for each function it appears in
>> drivers/char/dsp56k.c:512:24: error: 'dsp56k_class' undeclared (first use in this function); did you mean 'dsp56k_fops'?
     512 |         device_create(&dsp56k_class, NULL, MKDEV(DSP56K_MAJOR, 0), NULL,
         |                        ^~~~~~~~~~~~
         |                        dsp56k_fops
   drivers/char/dsp56k.c: In function 'dsp56k_cleanup_driver':
   drivers/char/dsp56k.c:527:25: error: 'dsp56k_class' undeclared (first use in this function); did you mean 'dsp56k_fops'?
     527 |         device_destroy(&dsp56k_class, MKDEV(DSP56K_MAJOR, 0));
         |                         ^~~~~~~~~~~~
         |                         dsp56k_fops


vim +104 drivers/char/dsp56k.c

   103	
 > 104	static const struct class dsp56k_class {
   105		.name = "dsp56k",
   106	};
   107	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
