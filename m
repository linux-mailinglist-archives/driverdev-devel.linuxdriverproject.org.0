Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E276D1677
	for <lists+driverdev-devel@lfdr.de>; Fri, 31 Mar 2023 06:55:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8238A420A1;
	Fri, 31 Mar 2023 04:55:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8238A420A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t5Wo-U5W5frG; Fri, 31 Mar 2023 04:55:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F3B79420A9;
	Fri, 31 Mar 2023 04:55:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F3B79420A9
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 539EF1BF30C
 for <devel@linuxdriverproject.org>; Fri, 31 Mar 2023 04:55:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 253B1420A1
 for <devel@linuxdriverproject.org>; Fri, 31 Mar 2023 04:55:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 253B1420A1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r99qrgPYx3W9 for <devel@linuxdriverproject.org>;
 Fri, 31 Mar 2023 04:55:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org ADDC14004B
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id ADDC14004B
 for <devel@driverdev.osuosl.org>; Fri, 31 Mar 2023 04:55:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="404065335"
X-IronPort-AV: E=Sophos;i="5.98,306,1673942400"; d="scan'208";a="404065335"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 21:55:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="859158729"
X-IronPort-AV: E=Sophos;i="5.98,306,1673942400"; d="scan'208";a="859158729"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga005.jf.intel.com with ESMTP; 30 Mar 2023 21:55:23 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pi6nK-000LVU-2l;
 Fri, 31 Mar 2023 04:55:22 +0000
Date: Fri, 31 Mar 2023 12:55:07 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup 105/105]
 drivers/char/xilinx_hwicap/xilinx_hwicap.c:117:15: error: expected '='
 before string constant
Message-ID: <202303311216.GZ7eEB7w-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680238525; x=1711774525;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=74aDnL4CgYqElVPuXizeTHjN9xipX0/9zpPyGpYp8WI=;
 b=e9RKQ06m2+t6IjNHCqs5CzPKpiOGTDMa7bpoNABblnJyzJGr5TW9Pdrk
 gXAQBnkEdAkRwvvYx0DTcxsTUXo1NPoTyR3W//qo44x2huegvq1IHRGlx
 iVx8k/vPaWzQH32fe+BL+3gMJwOfp6b/cW4ZQaDxP4YH1kQwbsLcj1bdb
 +Z0sXkqVGxf/Jy4FbU777BdsWfezZS6exqZ4W0eQrpR22RcS6vctYmHhU
 Q2N/NDLNKid4VBJPJYHPaqVG8mCux+MjtlSOJayUh220lKcSCm3vYCqsA
 /UTCysJTUr3MYJJBOalIC/xhD1AHkNGarUNJZYOKsUE+aGdxDMtuga85u
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=e9RKQ06m
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
head:   b21f747c419ca7d3910446cf21f23fd4cdfad597
commit: b21f747c419ca7d3910446cf21f23fd4cdfad597 [105/105] driver core: convert class_create() to class_register()
config: microblaze-randconfig-r031-20230329 (https://download.01.org/0day-ci/archive/20230331/202303311216.GZ7eEB7w-lkp@intel.com/config)
compiler: microblaze-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=b21f747c419ca7d3910446cf21f23fd4cdfad597
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core class_cleanup
        git checkout b21f747c419ca7d3910446cf21f23fd4cdfad597
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=microblaze olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=microblaze SHELL=/bin/bash drivers/char/xilinx_hwicap/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303311216.GZ7eEB7w-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/char/xilinx_hwicap/xilinx_hwicap.c:117:15: error: expected '=' before string constant
     117 |         .name "xilinx_config",
         |               ^~~~~~~~~~~~~~~


vim +117 drivers/char/xilinx_hwicap/xilinx_hwicap.c

   115	
   116	static const struct class icap_class = {
 > 117		.name "xilinx_config",
   118	};
   119	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
