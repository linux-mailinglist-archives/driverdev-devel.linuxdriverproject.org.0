Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A496CB212
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Mar 2023 01:01:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BA339410B8;
	Mon, 27 Mar 2023 23:01:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BA339410B8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MGokXxP7M_zj; Mon, 27 Mar 2023 23:01:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 43E5441824;
	Mon, 27 Mar 2023 23:01:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 43E5441824
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5856F1BF356
 for <devel@linuxdriverproject.org>; Mon, 27 Mar 2023 23:01:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3199B402C3
 for <devel@linuxdriverproject.org>; Mon, 27 Mar 2023 23:01:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3199B402C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fpoaNi4bBZFj for <devel@linuxdriverproject.org>;
 Mon, 27 Mar 2023 23:01:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 94D13400C1
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 94D13400C1
 for <devel@driverdev.osuosl.org>; Mon, 27 Mar 2023 23:01:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="320812602"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="320812602"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 16:01:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="752892616"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="752892616"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by fmsmga004.fm.intel.com with ESMTP; 27 Mar 2023 16:01:38 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pgvqL-000I4R-05;
 Mon, 27 Mar 2023 23:01:37 +0000
Date: Tue, 28 Mar 2023 07:01:10 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup 83/87] core.c:undefined reference to
 `block_class'
Message-ID: <202303280607.wPrZs5cT-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679958099; x=1711494099;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=qZzCu3vYc9afn/ou9NgK57M2mEc1836GjrBrBdM8nfA=;
 b=lzMjrg88Bq/fVZg1QqwRLSDcgh9x5NoqsflR9K6PwBMvw1YREuFBky4h
 pbtlpKqqS8mJVpG1IHcqtLSvWQxgNiHnlSgj7qLbVdUyXtGsIYfL7Lxrx
 fp7KchJlw82IPpnfippKLi9uJO6deLW38T5d1gIsZGFMv2+1Q9rRtt8t5
 EJ1/SPFpEmvBAKGY+oXgMpqrcyBA3ByI7zVq40xzkojhUGeKfm+S/4te8
 OELKNtVcG8QDlA0B9IZ/dcf5sbsWhkZPzlOFe4c92zX3Raqc8/iZmWlzJ
 n95/l+ZcqDE3hAho6fUFeynCu9eJB25uFJNnGYB6F5Bc2l77C84QFCsfY
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lzMjrg88
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
config: m68k-buildonly-randconfig-r006-20230326 (https://download.01.org/0day-ci/archive/20230328/202303280607.wPrZs5cT-lkp@intel.com/config)
compiler: m68k-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=1833557a6402e9aee2dee7ccaf8662996217e74a
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core class_cleanup
        git checkout 1833557a6402e9aee2dee7ccaf8662996217e74a
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=m68k olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=m68k SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303280607.wPrZs5cT-lkp@intel.com/

All errors (new ones prefixed by >>):

   m68k-linux-ld: m68k-linux-ld: DWARF error: could not find abbrev number 930805
   drivers/base/core.o: in function `device_del':
>> core.c:(.text+0x22b2): undefined reference to `block_class'
   m68k-linux-ld: drivers/base/core.o: in function `device_add':
   core.c:(.text+0x3b8c): undefined reference to `block_class'

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
