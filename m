Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C233465B46
	for <lists+driverdev-devel@lfdr.de>; Thu,  2 Dec 2021 01:46:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 139374055A;
	Thu,  2 Dec 2021 00:46:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wQGx3XGkzvhH; Thu,  2 Dec 2021 00:46:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id D3DB44057F;
	Thu,  2 Dec 2021 00:46:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BE7831BF5E0
 for <devel@linuxdriverproject.org>; Thu,  2 Dec 2021 00:45:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BBA0D4090F
 for <devel@linuxdriverproject.org>; Thu,  2 Dec 2021 00:45:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qghomTYMz4u1 for <devel@linuxdriverproject.org>;
 Thu,  2 Dec 2021 00:45:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D699940921
 for <devel@driverdev.osuosl.org>; Thu,  2 Dec 2021 00:45:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="234098617"
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; d="scan'208";a="234098617"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 16:45:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,280,1631602800"; d="scan'208";a="512945696"
Received: from lkp-server02.sh.intel.com (HELO 9e1e9f9b3bcb) ([10.239.97.151])
 by orsmga008.jf.intel.com with ESMTP; 01 Dec 2021 16:45:55 -0800
Received: from kbuild by 9e1e9f9b3bcb with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1msaEV-000FaY-0h; Thu, 02 Dec 2021 00:45:55 +0000
Date: Thu, 2 Dec 2021 08:45:49 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:hid_is_usb 3/3] hppa-linux-ld: undefined reference to
 `usb_hid_driver'
Message-ID: <202112020808.AZ5usuXj-lkp@intel.com>
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
config: parisc-randconfig-r036-20211129 (https://download.01.org/0day-ci/archive/20211202/202112020808.AZ5usuXj-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 11.2.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=0a6c579f381aa88f6e8f7cd5515056416e247a2b
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core hid_is_usb
        git checkout 0a6c579f381aa88f6e8f7cd5515056416e247a2b
        # save the config file to linux build tree
        mkdir build_dir
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-11.2.0 make.cross O=build_dir ARCH=parisc SHELL=/bin/bash

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   hppa-linux-ld: drivers/hid/hid-lg.o: in function `lg_probe':
   (.text+0x9fc): undefined reference to `usb_hid_driver'
>> hppa-linux-ld: (.text+0xa04): undefined reference to `usb_hid_driver'
   hppa-linux-ld: drivers/hid/hid-samsung.o: in function `samsung_probe':
   (.text+0x18): undefined reference to `usb_hid_driver'
   hppa-linux-ld: (.text+0x1c): undefined reference to `usb_hid_driver'

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
