Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF876CAB2E
	for <lists+driverdev-devel@lfdr.de>; Mon, 27 Mar 2023 19:00:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03EC840981;
	Mon, 27 Mar 2023 17:00:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03EC840981
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DNgDVNQRO8qu; Mon, 27 Mar 2023 17:00:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6468540990;
	Mon, 27 Mar 2023 17:00:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6468540990
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 577591BF29A
 for <devel@linuxdriverproject.org>; Mon, 27 Mar 2023 17:00:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 30EBC60F47
 for <devel@linuxdriverproject.org>; Mon, 27 Mar 2023 17:00:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 30EBC60F47
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bUm-xgB42t-M for <devel@linuxdriverproject.org>;
 Mon, 27 Mar 2023 17:00:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E769A60F3C
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E769A60F3C
 for <devel@driverdev.osuosl.org>; Mon, 27 Mar 2023 17:00:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="328768095"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="328768095"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 10:00:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="677048654"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="677048654"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 27 Mar 2023 10:00:19 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pgqCg-000HrP-31;
 Mon, 27 Mar 2023 17:00:18 +0000
Date: Tue, 28 Mar 2023 01:00:05 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup 34/80]
 arch/powerpc/sysdev/fsl_mpic_timer_wakeup.c:129:6: error: variable 'ret' is
 used uninitialized whenever 'if' condition is false
Message-ID: <202303280045.4oaaezcn-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679936422; x=1711472422;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=KpSiSJTADRt2+AXtkSI1jnd1/gM6eG11nprHObpr5r4=;
 b=IP3NHbApJIzTFg+HkhQyQ4lMdXnjDQ1Cnrxd36974xuPlHNubMEoi6ju
 TReGZ3fNcd+nPLpM1xVU24dpun0tPfs7Qo11eAtfTX4qYnklon85kkObp
 w3R/MdRyIhesrPyodJjzgMrGbtX254S+BBfwRy2/0FvydGWrkM4xZGXwq
 EmKEEhQoo2i3HzZE2zVGMOxKoerD1kj0VMBi3+8sDyQDsFPLnnsKa1gm/
 taVdR8FlX9X5AWiVgXUqLzTtKea6hfARp1k3XuwoZXSHu//L5at4jW2Hd
 8k8cpOl172CRgJRCYoYMJbaUBN1cEB8MIqaSfjyhVXCtoUGoYd3ZnRtyN
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IP3NHbAp
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
Cc: devel@driverdev.osuosl.org, llvm@lists.linux.dev,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git class_cleanup
head:   c6dd61fdeee23ae8743e3ac8234ab05f94bcc601
commit: c93bd175414ac43d7ea6cb2a17f49eb91af03f00 [34/80] powerpc/fsl: move to use bus_get_dev_root()
config: powerpc-randconfig-r003-20230326 (https://download.01.org/0day-ci/archive/20230328/202303280045.4oaaezcn-lkp@intel.com/config)
compiler: clang version 17.0.0 (https://github.com/llvm/llvm-project 67409911353323ca5edf2049ef0df54132fa1ca7)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=c93bd175414ac43d7ea6cb2a17f49eb91af03f00
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core class_cleanup
        git checkout c93bd175414ac43d7ea6cb2a17f49eb91af03f00
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=powerpc olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=powerpc SHELL=/bin/bash arch/powerpc/sysdev/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303280045.4oaaezcn-lkp@intel.com/

All errors (new ones prefixed by >>):

>> arch/powerpc/sysdev/fsl_mpic_timer_wakeup.c:129:6: error: variable 'ret' is used uninitialized whenever 'if' condition is false [-Werror,-Wsometimes-uninitialized]
           if (dev_root) {
               ^~~~~~~~
   arch/powerpc/sysdev/fsl_mpic_timer_wakeup.c:136:9: note: uninitialized use occurs here
           return ret;
                  ^~~
   arch/powerpc/sysdev/fsl_mpic_timer_wakeup.c:129:2: note: remove the 'if' if its condition is always true
           if (dev_root) {
           ^~~~~~~~~~~~~~
   arch/powerpc/sysdev/fsl_mpic_timer_wakeup.c:120:9: note: initialize the variable 'ret' to silence this warning
           int ret;
                  ^
                   = 0
   1 error generated.


vim +129 arch/powerpc/sysdev/fsl_mpic_timer_wakeup.c

   113	
   114	static struct device_attribute mpic_attributes = __ATTR(timer_wakeup, 0644,
   115				fsl_timer_wakeup_show, fsl_timer_wakeup_store);
   116	
   117	static int __init fsl_wakeup_sys_init(void)
   118	{
   119		struct device *dev_root;
   120		int ret;
   121	
   122		fsl_wakeup = kzalloc(sizeof(struct fsl_mpic_timer_wakeup), GFP_KERNEL);
   123		if (!fsl_wakeup)
   124			return -ENOMEM;
   125	
   126		INIT_WORK(&fsl_wakeup->free_work, fsl_free_resource);
   127	
   128		dev_root = bus_get_dev_root(&mpic_subsys);
 > 129		if (dev_root) {
   130			ret = device_create_file(dev_root, &mpic_attributes);
   131			put_device(dev_root);
   132			if (ret)
   133				kfree(fsl_wakeup);
   134		}
   135	
   136		return ret;
   137	}
   138	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
