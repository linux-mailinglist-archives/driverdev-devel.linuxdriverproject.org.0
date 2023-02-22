Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 272E269FAD6
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 Feb 2023 19:10:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 453E981344;
	Wed, 22 Feb 2023 18:10:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 453E981344
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i7ywDRGwz0ce; Wed, 22 Feb 2023 18:10:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id F13C481345;
	Wed, 22 Feb 2023 18:10:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F13C481345
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2AFF71BF334
 for <devel@linuxdriverproject.org>; Wed, 22 Feb 2023 18:10:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 11E4F40486
 for <devel@linuxdriverproject.org>; Wed, 22 Feb 2023 18:10:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 11E4F40486
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GSdLa4Q1KC3I for <devel@linuxdriverproject.org>;
 Wed, 22 Feb 2023 18:10:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 269CD40191
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 269CD40191
 for <devel@driverdev.osuosl.org>; Wed, 22 Feb 2023 18:10:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="335199422"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="335199422"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 10:10:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="1001087703"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="1001087703"
Received: from lkp-server01.sh.intel.com (HELO 3895f5c55ead) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 22 Feb 2023 10:10:28 -0800
Received: from kbuild by 3895f5c55ead with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pUtZT-0000dN-1Q;
 Wed, 22 Feb 2023 18:10:27 +0000
Date: Thu, 23 Feb 2023 02:10:11 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:class_cleanup 90/99] arch/mips/kernel/vpe-mt.c:320:3:
 error: field designator 'owner' does not refer to any field in type 'struct
 class'
Message-ID: <202302230206.Ty3AABtm-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677089444; x=1708625444;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=nQOjVYMBsgFI9cFgbBVDrMGwomAo3wz3opH2REyUukQ=;
 b=auu0y3pNV3kK/lMCqjvhTPVtPnJ3stXIXfnqGUvWnI8DZ0pQSRPBStN+
 tem0b+6Up0Yp0fjkiJIiR7vwrSyHzjorYh27iQKKC7tBvZFdsPmmjVgdZ
 FZgLf+SORh1Ma35voWIEjndslBIHAXUPWQS7+8HX9bvqNkERPv/An9EZG
 o83EMW3JGxj7pLk3LFP3kSzL/XT8fVzG6lNaSTYZJ7IW4wj50UCWpl9r4
 6VBQkoPkIdBunLt4mJRm/1noEIu6qxlDI16NCxqB+TOPLJzGgPAlfQUY9
 m47XQWmb7KU2BR2LRapah7Qn1VtlNhYBMaq36e+X8hqlXr7gf8hej/ke8
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=auu0y3pN
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
head:   d695b889adbebf45a6187dccd33173dc9e58f356
commit: dc9bedfbd8ab7885e0252663c6a1df8a2d8a1ea3 [90/99] driver core: class: remove struct module owner out of struct class
config: mips-maltaaprp_defconfig (https://download.01.org/0day-ci/archive/20230223/202302230206.Ty3AABtm-lkp@intel.com/config)
compiler: clang version 17.0.0 (https://github.com/llvm/llvm-project db89896bbbd2251fff457699635acbbedeead27f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mipsel-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=dc9bedfbd8ab7885e0252663c6a1df8a2d8a1ea3
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core class_cleanup
        git checkout dc9bedfbd8ab7885e0252663c6a1df8a2d8a1ea3
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=mips olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=mips SHELL=/bin/bash

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202302230206.Ty3AABtm-lkp@intel.com/

All errors (new ones prefixed by >>):

   arch/mips/kernel/vpe-mt.c:178:7: warning: no previous prototype for function 'vpe_alloc' [-Wmissing-prototypes]
   void *vpe_alloc(void)
         ^
   arch/mips/kernel/vpe-mt.c:178:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void *vpe_alloc(void)
   ^
   static 
   arch/mips/kernel/vpe-mt.c:196:5: warning: no previous prototype for function 'vpe_start' [-Wmissing-prototypes]
   int vpe_start(void *vpe, unsigned long start)
       ^
   arch/mips/kernel/vpe-mt.c:196:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int vpe_start(void *vpe, unsigned long start)
   ^
   static 
   arch/mips/kernel/vpe-mt.c:206:5: warning: no previous prototype for function 'vpe_stop' [-Wmissing-prototypes]
   int vpe_stop(void *vpe)
       ^
   arch/mips/kernel/vpe-mt.c:206:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int vpe_stop(void *vpe)
   ^
   static 
   arch/mips/kernel/vpe-mt.c:227:5: warning: no previous prototype for function 'vpe_free' [-Wmissing-prototypes]
   int vpe_free(void *vpe)
       ^
   arch/mips/kernel/vpe-mt.c:227:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int vpe_free(void *vpe)
   ^
   static 
>> arch/mips/kernel/vpe-mt.c:320:3: error: field designator 'owner' does not refer to any field in type 'struct class'
           .owner = THIS_MODULE,
            ^
   4 warnings and 1 error generated.


vim +320 arch/mips/kernel/vpe-mt.c

1a2a6d7e8816ed Dengcheng Zhu 2013-10-30  317  
1a2a6d7e8816ed Dengcheng Zhu 2013-10-30  318  static struct class vpe_class = {
1a2a6d7e8816ed Dengcheng Zhu 2013-10-30  319  	.name = "vpe",
1a2a6d7e8816ed Dengcheng Zhu 2013-10-30 @320  	.owner = THIS_MODULE,
1a2a6d7e8816ed Dengcheng Zhu 2013-10-30  321  	.dev_release = vpe_device_release,
1a2a6d7e8816ed Dengcheng Zhu 2013-10-30  322  	.dev_groups = vpe_groups,
1a2a6d7e8816ed Dengcheng Zhu 2013-10-30  323  };
1a2a6d7e8816ed Dengcheng Zhu 2013-10-30  324  

:::::: The code at line 320 was first introduced by commit
:::::: 1a2a6d7e8816ed2b2679a0c4f7ba4019cd31dd62 MIPS: APRP: Split VPE loader into separate files.

:::::: TO: Deng-Cheng Zhu <dengcheng.zhu@imgtec.com>
:::::: CC: Ralf Baechle <ralf@linux-mips.org>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
