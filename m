Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B86692544
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Feb 2023 19:22:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C493041167;
	Fri, 10 Feb 2023 18:22:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C493041167
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UhCxgLSTunAY; Fri, 10 Feb 2023 18:22:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5F7F0400D1;
	Fri, 10 Feb 2023 18:22:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5F7F0400D1
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2C38D1BF2C5
 for <devel@linuxdriverproject.org>; Fri, 10 Feb 2023 18:22:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0212E41167
 for <devel@linuxdriverproject.org>; Fri, 10 Feb 2023 18:22:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0212E41167
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Z-JexemM3yOn for <devel@linuxdriverproject.org>;
 Fri, 10 Feb 2023 18:22:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BBA3F400D1
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp2.osuosl.org (Postfix) with ESMTPS id BBA3F400D1
 for <devel@driverdev.osuosl.org>; Fri, 10 Feb 2023 18:22:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="314134962"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="314134962"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 10:22:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="617974678"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="617974678"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 10 Feb 2023 10:22:43 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQY2k-0005yL-2y;
 Fri, 10 Feb 2023 18:22:42 +0000
Date: Sat, 11 Feb 2023 02:22:11 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const-2 71/77]
 drivers/irqchip/irq-mbigen.c:248:43: error: 'struct bus_type' has no member
 named 'dev_root'
Message-ID: <202302110229.u91u71ws-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676053365; x=1707589365;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=cT0BmUVgAKCNZ69R7mxAJ7I+K3dJl0l83OzOKH0xG0Q=;
 b=BujhhkTgPzqm0yLzIDhgrSVx9ZQeuCUltvWU7ZthHLX9J2aNeUDew8Cf
 WlK1GlXTb3A4NEPaLzbFH7C5lGkjdSGm+vkGseq8mOz0atx1oDlmCGHSN
 3GDmKuqrzXmqWwDlvlS5/VZXa36WSRrLeoMJj24bqHLRsfB0OZeBnKu0I
 nhY/F7iO9ELPioKg/k6gFHIGzWYSFkeLPXZ9yjiofPjMk2AkYnTG2Zs8K
 yqs63N8Swal+bpytKxg9N93eq8itAqYDFREfakwhIB9HKxMM1CbmxFXAx
 Ofu25RjoXFh3GRV4UXfBbD4qNfD5rSukOKMQgve9S8fzFmmzoacYg2Sud
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BujhhkTg
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
head:   edb07d61689645fa19378a7a18451f91c8414b5a
commit: 7389911cf9a8bc346a6aa2662645298627c44cb6 [71/77] driver core: bus: move dev_root out of struct bus_type
config: arm64-allyesconfig (https://download.01.org/0day-ci/archive/20230211/202302110229.u91u71ws-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=7389911cf9a8bc346a6aa2662645298627c44cb6
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core kobject-const-2
        git checkout 7389911cf9a8bc346a6aa2662645298627c44cb6
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arm64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash drivers/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202302110229.u91u71ws-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/irqchip/irq-mbigen.c: In function 'mbigen_of_create_domain':
>> drivers/irqchip/irq-mbigen.c:248:43: error: 'struct bus_type' has no member named 'dev_root'
     248 |                 parent = platform_bus_type.dev_root;
         |                                           ^


vim +248 drivers/irqchip/irq-mbigen.c

9650c60ebfec05 Ma Jun          2015-12-17  234  
76e1f77f9c26ec Kefeng Wang     2017-03-07  235  static int mbigen_of_create_domain(struct platform_device *pdev,
76e1f77f9c26ec Kefeng Wang     2017-03-07  236  				   struct mbigen_device *mgn_chip)
717c3dbc118ecb Ma Jun          2015-12-17  237  {
76e1f77f9c26ec Kefeng Wang     2017-03-07  238  	struct device *parent;
ed2a1002d25ccd MaJun           2016-03-17  239  	struct platform_device *child;
9650c60ebfec05 Ma Jun          2015-12-17  240  	struct irq_domain *domain;
ed2a1002d25ccd MaJun           2016-03-17  241  	struct device_node *np;
9650c60ebfec05 Ma Jun          2015-12-17  242  	u32 num_pins;
717c3dbc118ecb Ma Jun          2015-12-17  243  
ed2a1002d25ccd MaJun           2016-03-17  244  	for_each_child_of_node(pdev->dev.of_node, np) {
ed2a1002d25ccd MaJun           2016-03-17  245  		if (!of_property_read_bool(np, "interrupt-controller"))
ed2a1002d25ccd MaJun           2016-03-17  246  			continue;
ed2a1002d25ccd MaJun           2016-03-17  247  
ed2a1002d25ccd MaJun           2016-03-17 @248  		parent = platform_bus_type.dev_root;
ed2a1002d25ccd MaJun           2016-03-17  249  		child = of_platform_device_create(np, NULL, parent);
321275f0d8f593 Nishka Dasgupta 2019-07-23  250  		if (!child) {
321275f0d8f593 Nishka Dasgupta 2019-07-23  251  			of_node_put(np);
086eec2de00ef5 Dan Carpenter   2016-04-04  252  			return -ENOMEM;
321275f0d8f593 Nishka Dasgupta 2019-07-23  253  		}
ed2a1002d25ccd MaJun           2016-03-17  254  
ed2a1002d25ccd MaJun           2016-03-17  255  		if (of_property_read_u32(child->dev.of_node, "num-pins",
ed2a1002d25ccd MaJun           2016-03-17  256  					 &num_pins) < 0) {
9650c60ebfec05 Ma Jun          2015-12-17  257  			dev_err(&pdev->dev, "No num-pins property\n");
321275f0d8f593 Nishka Dasgupta 2019-07-23  258  			of_node_put(np);
9650c60ebfec05 Ma Jun          2015-12-17  259  			return -EINVAL;
9650c60ebfec05 Ma Jun          2015-12-17  260  		}
9650c60ebfec05 Ma Jun          2015-12-17  261  
ed2a1002d25ccd MaJun           2016-03-17  262  		domain = platform_msi_create_device_domain(&child->dev, num_pins,
9650c60ebfec05 Ma Jun          2015-12-17  263  							   mbigen_write_msg,
9650c60ebfec05 Ma Jun          2015-12-17  264  							   &mbigen_domain_ops,
9650c60ebfec05 Ma Jun          2015-12-17  265  							   mgn_chip);
321275f0d8f593 Nishka Dasgupta 2019-07-23  266  		if (!domain) {
321275f0d8f593 Nishka Dasgupta 2019-07-23  267  			of_node_put(np);
9650c60ebfec05 Ma Jun          2015-12-17  268  			return -ENOMEM;
ed2a1002d25ccd MaJun           2016-03-17  269  		}
321275f0d8f593 Nishka Dasgupta 2019-07-23  270  	}
9650c60ebfec05 Ma Jun          2015-12-17  271  
76e1f77f9c26ec Kefeng Wang     2017-03-07  272  	return 0;
76e1f77f9c26ec Kefeng Wang     2017-03-07  273  }
76e1f77f9c26ec Kefeng Wang     2017-03-07  274  

:::::: The code at line 248 was first introduced by commit
:::::: ed2a1002d25ccdb6606c8ccb608524118bd30614 irqchip/mbigen: Handle multiple device nodes in a mbigen module

:::::: TO: MaJun <majun258@huawei.com>
:::::: CC: Thomas Gleixner <tglx@linutronix.de>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
