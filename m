Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C463465C12
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Dec 2021 03:18:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EF68C4018A;
	Thu,  2 Dec 2021 02:18:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CJwAeqSbO2Yk; Thu,  2 Dec 2021 02:18:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 724E440153;
	Thu,  2 Dec 2021 02:18:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2E3331BF3C1
 for <devel@linuxdriverproject.org>; Thu,  2 Dec 2021 02:18:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 1DAA982560
 for <devel@linuxdriverproject.org>; Thu,  2 Dec 2021 02:18:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GlRZzGmFEXPt for <devel@linuxdriverproject.org>;
 Thu,  2 Dec 2021 02:18:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E56E982521
 for <devel@driverdev.osuosl.org>; Thu,  2 Dec 2021 02:18:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="235340377"
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; d="scan'208";a="235340377"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 18:18:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; d="scan'208";a="500499377"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 01 Dec 2021 18:17:59 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1msbfb-000FgV-8M; Thu, 02 Dec 2021 02:17:59 +0000
Date: Thu, 2 Dec 2021 10:17:10 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:hid_is_usb 3/3] arc-elf-ld: hid-corsair.c:undefined
 reference to `usb_hid_driver'
Message-ID: <202112021000.3GKuE8mS-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, kbuild-all@lists.01.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git hid_is_usb
head:   0a6c579f381aa88f6e8f7cd5515056416e247a2b
commit: 0a6c579f381aa88f6e8f7cd5515056416e247a2b [3/3] HID: check for valid USB device for many HID drivers
config: arc-buildonly-randconfig-r001-20211128 (https://download.01.org/0day-ci/archive/20211202/202112021000.3GKuE8mS-lkp@intel.com/config)
compiler: arc-elf-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=0a6c579f381aa88f6e8f7cd5515056416e247a2b
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core hid_is_usb
        git checkout 0a6c579f381aa88f6e8f7cd5515056416e247a2b
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=arc SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   arc-elf-ld: drivers/hid/hid-chicony.o: in function `ch_probe':
   hid-chicony.c:(.text+0x16): undefined reference to `usb_hid_driver'
   arc-elf-ld: hid-chicony.c:(.text+0x16): undefined reference to `usb_hid_driver'
   arc-elf-ld: drivers/hid/hid-corsair.o: in function `corsair_probe':
   hid-corsair.c:(.text+0x70e): undefined reference to `usb_hid_driver'
>> arc-elf-ld: hid-corsair.c:(.text+0x70e): undefined reference to `usb_hid_driver'
   arc-elf-ld: drivers/hid/hid-lg.o: in function `lg_probe':
   hid-lg.c:(.text+0x40c): undefined reference to `usb_hid_driver'
   arc-elf-ld: drivers/hid/hid-lg.o:hid-lg.c:(.text+0x40c): more undefined references to `usb_hid_driver' follow

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
