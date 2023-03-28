Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 351A06CBE04
	for <lists+driverdev-devel@lfdr.de>; Tue, 28 Mar 2023 13:46:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id C2B3382176;
	Tue, 28 Mar 2023 11:46:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C2B3382176
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r4HLjHDPFol6; Tue, 28 Mar 2023 11:46:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 28F638204B;
	Tue, 28 Mar 2023 11:46:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 28F638204B
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C8F501BF616
 for <devel@linuxdriverproject.org>; Tue, 28 Mar 2023 11:46:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B0183403AF
 for <devel@linuxdriverproject.org>; Tue, 28 Mar 2023 11:46:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B0183403AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GiO0ESFMqPTg for <devel@linuxdriverproject.org>;
 Tue, 28 Mar 2023 11:46:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D603141696
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D603141696
 for <devel@driverdev.osuosl.org>; Tue, 28 Mar 2023 11:46:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="426806734"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="426806734"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 04:46:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="677345635"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="677345635"
Received: from lkp-server01.sh.intel.com (HELO b613635ddfff) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 28 Mar 2023 04:46:02 -0700
Received: from kbuild by b613635ddfff with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1ph7m6-000IVT-0K;
 Tue, 28 Mar 2023 11:46:02 +0000
Date: Tue, 28 Mar 2023 19:45:01 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup 91/93]
 drivers/media/usb/pvrusb2/pvrusb2-sysfs.h:20:59: warning: omitting the
 parameter name in a function definition is a C2x extension
Message-ID: <202303281905.iWVzgh4f-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680003964; x=1711539964;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=5uMfLL9cfd44adWmS6DLgxpImuE42n5AsVXhpcSAsmE=;
 b=D2ptPZBi/U53bxrGCT2K/bcSfTGQKkFMgXA17NrmqLoZcIr3JowYDinu
 P2PbfFfkjseC1N67FBmBd07nzRS5+VuYjPqDm7ekwZTfBEdHBM1BIHnXe
 n5iopJ4oGXhWJ9aZVpGPVavYkFYanVBsBQhz9RvN/e2tRslXhe6w0GbHS
 mtpvV5x+Nxa3UYFJXkQFVoGwUeu0F5e9V4ktAltIGdvmCwIyAL4e6FNmp
 aOAy5u2RB9YvOUu18WdbSpZFcIps8XGdBrLpVuoeEK4PdfoWu33ysKK62
 jJg7CIVA7iythJkR9JasYQogxA99LeYZrCRbHlj+QVuzFnXHG97DitfrL
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=D2ptPZBi
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
head:   991be8c8a8ebb755002e43f85cbaa1189a304a8a
commit: 3cab1d62319b47233794e37d4ff498de86a2a69b [91/93] media: pvrusb2: clean up unneeded complexity in pvrusb2 class logic
config: x86_64-randconfig-a015-20230327 (https://download.01.org/0day-ci/archive/20230328/202303281905.iWVzgh4f-lkp@intel.com/config)
compiler: clang version 14.0.6 (https://github.com/llvm/llvm-project f28c006a5895fc0e329fe15fead81e37457cb1d1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=3cab1d62319b47233794e37d4ff498de86a2a69b
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core class_cleanup
        git checkout 3cab1d62319b47233794e37d4ff498de86a2a69b
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/media/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202303281905.iWVzgh4f-lkp@intel.com/

All warnings (new ones prefixed by >>):

   In file included from drivers/media/usb/pvrusb2/pvrusb2-main.c:19:
>> drivers/media/usb/pvrusb2/pvrusb2-sysfs.h:20:59: warning: omitting the parameter name in a function definition is a C2x extension [-Wc2x-extensions]
   static inline void pvr2_sysfs_create(struct pvr2_context *) { }
                                                             ^
   1 warning generated.


vim +20 drivers/media/usb/pvrusb2/pvrusb2-sysfs.h

    12	
    13	#ifdef CONFIG_VIDEO_PVRUSB2_SYSFS
    14	void pvr2_sysfs_class_create(void);
    15	void pvr2_sysfs_class_destroy(void);
    16	void pvr2_sysfs_create(struct pvr2_context *);
    17	#else
    18	static inline void pvr2_sysfs_class_create(void) { }
    19	static inline void pvr2_sysfs_class_destroy(void) { }
  > 20	static inline void pvr2_sysfs_create(struct pvr2_context *) { }
    21	#endif
    22	
    23	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
