Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FEE692269
	for <lists+driverdev-devel@lfdr.de>; Fri, 10 Feb 2023 16:39:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4FCA3419C9;
	Fri, 10 Feb 2023 15:39:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4FCA3419C9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vQAbdHfjIa2T; Fri, 10 Feb 2023 15:39:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 49C2A4198C;
	Fri, 10 Feb 2023 15:39:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 49C2A4198C
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B3EC61BF2B0
 for <devel@linuxdriverproject.org>; Fri, 10 Feb 2023 15:39:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 8D7B8822FB
 for <devel@linuxdriverproject.org>; Fri, 10 Feb 2023 15:39:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 8D7B8822FB
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id szk8VPkt0JgQ for <devel@linuxdriverproject.org>;
 Fri, 10 Feb 2023 15:39:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 51E27822F8
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 51E27822F8
 for <devel@driverdev.osuosl.org>; Fri, 10 Feb 2023 15:39:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="310076079"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="310076079"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 07:39:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="698454666"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="698454666"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga008.jf.intel.com with ESMTP; 10 Feb 2023 07:39:39 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pQVUw-0005rx-0d;
 Fri, 10 Feb 2023 15:39:38 +0000
Date: Fri, 10 Feb 2023 23:38:45 +0800
From: kernel test robot <lkp@intel.com>
To: Longlong Xia <xialonglong1@huawei.com>
Subject: [driver-core:driver-core-testing 77/77] drivers/base/base.h:221:63:
 error: void function 'devtmpfs_delete_node' should not return a value
Message-ID: <202302102345.UQfDskhW-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676043587; x=1707579587;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=iW6k/KmlF/ACBZMRuIgmxOzrlpZBt/I3DtfOrUGRsGI=;
 b=FHbwhw7sBYouuEMyAK6xGR9dg11UyfamybN8CvDjrdG7ettRZmZUj8ip
 zoXNtrhYRGtABlSYmq9eSJ65Pi+dyW17+6Dl3DAumuk55DDwvXeJsrXyy
 SiF53b3oVicRbrLBOpwIkqPKbCzK/iRZmuGyrCRQ3pFhMM87mEfHfZWB4
 GePF0mT1DjmccIU4K3zyjlWbX0t8MZhjchiA4HBEfyJPXUujjCapGK3z/
 mvTfR5nImJ12zREH/o+9479yx8EYTgkPT1Bv3EThAlvzuZtfi9y9Bp41c
 DsjDqPdYcJNCkeeK8H+jxTMygCcHAQ0k1p1RP0q1om66KaMtZ0HboC9Zt
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FHbwhw7s
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git driver-core-testing
head:   ecfd9f08fe2ef7616477c089dce1b0f05dcee13c
commit: ecfd9f08fe2ef7616477c089dce1b0f05dcee13c [77/77] devtmpfs: remove return value of devtmpfs_delete_node()
config: arm-randconfig-r006-20230210 (https://download.01.org/0day-ci/archive/20230210/202302102345.UQfDskhW-lkp@intel.com/config)
compiler: clang version 17.0.0 (https://github.com/llvm/llvm-project db0e6591612b53910a1b366863348bdb9d7d2fb1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=ecfd9f08fe2ef7616477c089dce1b0f05dcee13c
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core driver-core-testing
        git checkout ecfd9f08fe2ef7616477c089dce1b0f05dcee13c
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm SHELL=/bin/bash drivers/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202302102345.UQfDskhW-lkp@intel.com/

All errors (new ones prefixed by >>):

   In file included from drivers/base/core.c:35:
>> drivers/base/base.h:221:63: error: void function 'devtmpfs_delete_node' should not return a value [-Wreturn-type]
   static inline void devtmpfs_delete_node(struct device *dev) { return 0; }
                                                                 ^      ~
   1 error generated.
--
   In file included from drivers/base/cpu.c:24:
>> drivers/base/base.h:221:63: error: void function 'devtmpfs_delete_node' should not return a value [-Wreturn-type]
   static inline void devtmpfs_delete_node(struct device *dev) { return 0; }
                                                                 ^      ~
   In file included from drivers/base/cpu.c:140:
   In file included from include/linux/kexec.h:18:
   In file included from include/linux/crash_core.h:6:
   In file included from include/linux/elfcore.h:9:
   include/linux/signal.h:97:11: warning: array index 3 is past the end of the array (that has type 'unsigned long[2]') [-Warray-bounds]
                   return (set->sig[3] | set->sig[2] |
                           ^        ~
   arch/arm/include/asm/signal.h:17:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/base/cpu.c:140:
   In file included from include/linux/kexec.h:18:
   In file included from include/linux/crash_core.h:6:
   In file included from include/linux/elfcore.h:9:
   include/linux/signal.h:97:25: warning: array index 2 is past the end of the array (that has type 'unsigned long[2]') [-Warray-bounds]
                   return (set->sig[3] | set->sig[2] |
                                         ^        ~
   arch/arm/include/asm/signal.h:17:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/base/cpu.c:140:
   In file included from include/linux/kexec.h:18:
   In file included from include/linux/crash_core.h:6:
   In file included from include/linux/elfcore.h:9:
   include/linux/signal.h:113:11: warning: array index 3 is past the end of the array (that has type 'const unsigned long[2]') [-Warray-bounds]
                   return  (set1->sig[3] == set2->sig[3]) &&
                            ^         ~
   arch/arm/include/asm/signal.h:17:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/base/cpu.c:140:
   In file included from include/linux/kexec.h:18:
   In file included from include/linux/crash_core.h:6:
   In file included from include/linux/elfcore.h:9:
   include/linux/signal.h:113:27: warning: array index 3 is past the end of the array (that has type 'const unsigned long[2]') [-Warray-bounds]
                   return  (set1->sig[3] == set2->sig[3]) &&
                                            ^         ~
   arch/arm/include/asm/signal.h:17:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/base/cpu.c:140:
   In file included from include/linux/kexec.h:18:
   In file included from include/linux/crash_core.h:6:
   In file included from include/linux/elfcore.h:9:
   include/linux/signal.h:114:5: warning: array index 2 is past the end of the array (that has type 'const unsigned long[2]') [-Warray-bounds]
                           (set1->sig[2] == set2->sig[2]) &&
                            ^         ~
   arch/arm/include/asm/signal.h:17:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/base/cpu.c:140:
   In file included from include/linux/kexec.h:18:
   In file included from include/linux/crash_core.h:6:
   In file included from include/linux/elfcore.h:9:
   include/linux/signal.h:114:21: warning: array index 2 is past the end of the array (that has type 'const unsigned long[2]') [-Warray-bounds]
                           (set1->sig[2] == set2->sig[2]) &&
                                            ^         ~
   arch/arm/include/asm/signal.h:17:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/base/cpu.c:140:
   In file included from include/linux/kexec.h:18:
   In file included from include/linux/crash_core.h:6:
   In file included from include/linux/elfcore.h:9:
   include/linux/signal.h:156:1: warning: array index 3 is past the end of the array (that has type 'const unsigned long[2]') [-Warray-bounds]
   _SIG_SET_BINOP(sigorsets, _sig_or)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:137:8: note: expanded from macro '_SIG_SET_BINOP'
                   a3 = a->sig[3]; a2 = a->sig[2];                         \
                        ^      ~
   arch/arm/include/asm/signal.h:17:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/base/cpu.c:140:
   In file included from include/linux/kexec.h:18:
   In file included from include/linux/crash_core.h:6:
   In file included from include/linux/elfcore.h:9:
   include/linux/signal.h:156:1: warning: array index 2 is past the end of the array (that has type 'const unsigned long[2]') [-Warray-bounds]
   _SIG_SET_BINOP(sigorsets, _sig_or)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:137:24: note: expanded from macro '_SIG_SET_BINOP'
                   a3 = a->sig[3]; a2 = a->sig[2];                         \
                                        ^      ~
   arch/arm/include/asm/signal.h:17:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
           ^
   In file included from drivers/base/cpu.c:140:
   In file included from include/linux/kexec.h:18:
   In file included from include/linux/crash_core.h:6:
   In file included from include/linux/elfcore.h:9:
   include/linux/signal.h:156:1: warning: array index 3 is past the end of the array (that has type 'const unsigned long[2]') [-Warray-bounds]
   _SIG_SET_BINOP(sigorsets, _sig_or)
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/signal.h:138:8: note: expanded from macro '_SIG_SET_BINOP'
                   b3 = b->sig[3]; b2 = b->sig[2];                         \
                        ^      ~
   arch/arm/include/asm/signal.h:17:2: note: array 'sig' declared here
           unsigned long sig[_NSIG_WORDS];
--
   In file included from drivers/base/power/runtime.c:16:
>> drivers/base/power/../base.h:221:63: error: void function 'devtmpfs_delete_node' should not return a value [-Wreturn-type]
   static inline void devtmpfs_delete_node(struct device *dev) { return 0; }
                                                                 ^      ~
   1 error generated.
--
   In file included from drivers/base/firmware_loader/main.c:43:
>> drivers/base/firmware_loader/../base.h:221:63: error: void function 'devtmpfs_delete_node' should not return a value [-Wreturn-type]
   static inline void devtmpfs_delete_node(struct device *dev) { return 0; }
                                                                 ^      ~
   1 error generated.


vim +/devtmpfs_delete_node +221 drivers/base/base.h

   215	
   216	#ifdef CONFIG_DEVTMPFS
   217	int devtmpfs_create_node(struct device *dev);
   218	void devtmpfs_delete_node(struct device *dev);
   219	#else
   220	static inline int devtmpfs_create_node(struct device *dev) { return 0; }
 > 221	static inline void devtmpfs_delete_node(struct device *dev) { return 0; }
   222	#endif
   223	

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
