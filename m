Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD449130EC
	for <lists+driverdev-devel@lfdr.de>; Sat, 22 Jun 2024 01:52:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 80D85607F8;
	Fri, 21 Jun 2024 23:52:32 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Hcl-E7L5DbJA; Fri, 21 Jun 2024 23:52:31 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8F5B1607FD
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8F5B1607FD;
	Fri, 21 Jun 2024 23:52:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 077151BF82F
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2024 23:52:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 01C65607F8
 for <devel@linuxdriverproject.org>; Fri, 21 Jun 2024 23:52:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id hrGyUeBJ853L for <devel@linuxdriverproject.org>;
 Fri, 21 Jun 2024 23:52:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org A482D606E5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A482D606E5
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id A482D606E5
 for <devel@driverdev.osuosl.org>; Fri, 21 Jun 2024 23:52:28 +0000 (UTC)
X-CSE-ConnectionGUID: 5JbrbHmdQ2SuUROOnZ0eQw==
X-CSE-MsgGUID: GlURCduVQmuT8qOMK4YR/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11110"; a="26695316"
X-IronPort-AV: E=Sophos;i="6.08,256,1712646000"; d="scan'208";a="26695316"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2024 16:52:27 -0700
X-CSE-ConnectionGUID: yhz1hSNvRS2JJHlCf2GWhg==
X-CSE-MsgGUID: +3he/jSjSsmLg085IbGIQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,256,1712646000"; d="scan'208";a="47677756"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 21 Jun 2024 16:52:27 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sKo3M-00098Q-1K;
 Fri, 21 Jun 2024 23:52:24 +0000
Date: Sat, 22 Jun 2024 07:51:29 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:const_driver 3/10] drivers/bus/mips_cdmm.c:124:12:
 error: incompatible function pointer types initializing 'int (*)(struct
 device *, const struct device_driver *)' with an expression of type 'int
 (struct device *, struct device_driver *)'
Message-ID: <202406220726.iLKR3tvS-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719013948; x=1750549948;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=J/MrGmo0IxWav8URR2JPdnNagcB0aruc+taluMp5OS0=;
 b=aPPecDIwkeLniBFBcOvUtS3BnL6j3mBuppgVRSacC3UAJCJRaAhZ4Og6
 5wspQhScJ3GbQVX/mw4u5bWVUUjuHU9MlblcyLzyXC3vJOW9YzOFUnK1S
 TWE3LU0zLYVUif8Fyad4giKNXKgRvPBt6AGOVcRNf3PbJCitl9xVBtQ4b
 meQiKKqUoKei7qXZqHwJPygD2IwK9/HaOw4PWgnpyG5RJc0bwUU5XaF45
 mx03MxgfTy5lux6ZFoYJJJnCAZ8oHkFSXTmvHJ1nEeChOO1UyoU8mIs46
 NU3DT7EZK0L3rRVjXZCUCIR/XARpADb12wve+ZEUd8+twgoMaxLEg8SjB
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=aPPecDIw
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git const_driver
head:   f4b9252a85a6ce543ba43ddce935a318ed04a618
commit: 1c2cb4152270681e66c4db7415254ca450068b22 [3/10] driver core: have match() callback in struct bus_type take a const *
config: mips-randconfig-r123-20240622 (https://download.01.org/0day-ci/archive/20240622/202406220726.iLKR3tvS-lkp@intel.com/config)
compiler: clang version 19.0.0git (https://github.com/llvm/llvm-project ad79a14c9e5ec4a369eed4adf567c22cc029863f)
reproduce: (https://download.01.org/0day-ci/archive/20240622/202406220726.iLKR3tvS-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406220726.iLKR3tvS-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/bus/mips_cdmm.c:124:12: error: incompatible function pointer types initializing 'int (*)(struct device *, const struct device_driver *)' with an expression of type 'int (struct device *, struct device_driver *)' [-Wincompatible-function-pointer-types]
     124 |         .match          = mips_cdmm_match,
         |                           ^~~~~~~~~~~~~~~
   1 error generated.


vim +124 drivers/bus/mips_cdmm.c

8286ae03308c6f James Hogan         2015-03-25  120  
eac95d5ae4f872 Ricardo B. Marliere 2024-02-13  121  const struct bus_type mips_cdmm_bustype = {
8286ae03308c6f James Hogan         2015-03-25  122  	.name		= "cdmm",
8286ae03308c6f James Hogan         2015-03-25  123  	.dev_groups	= mips_cdmm_dev_groups,
8286ae03308c6f James Hogan         2015-03-25 @124  	.match		= mips_cdmm_match,
8286ae03308c6f James Hogan         2015-03-25  125  	.uevent		= mips_cdmm_uevent,
8286ae03308c6f James Hogan         2015-03-25  126  };
8286ae03308c6f James Hogan         2015-03-25  127  EXPORT_SYMBOL_GPL(mips_cdmm_bustype);
8286ae03308c6f James Hogan         2015-03-25  128  

:::::: The code at line 124 was first introduced by commit
:::::: 8286ae03308c6f97f346f9f8cb9174b04969add5 MIPS: Add CDMM bus support

:::::: TO: James Hogan <james.hogan@imgtec.com>
:::::: CC: Ralf Baechle <ralf@linux-mips.org>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
