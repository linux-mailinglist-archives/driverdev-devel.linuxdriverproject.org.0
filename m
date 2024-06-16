Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F27A090A0DA
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Jun 2024 01:43:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 977D54063B;
	Sun, 16 Jun 2024 23:43:09 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KpxFzrMOP6mN; Sun, 16 Jun 2024 23:43:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 607A44065C
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 607A44065C;
	Sun, 16 Jun 2024 23:43:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id AB0101BF2B7
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2024 23:43:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 97C2740320
 for <devel@linuxdriverproject.org>; Sun, 16 Jun 2024 23:43:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ydnvY1uWfYD4 for <devel@linuxdriverproject.org>;
 Sun, 16 Jun 2024 23:43:05 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 29CD64024F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 29CD64024F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 29CD64024F
 for <devel@driverdev.osuosl.org>; Sun, 16 Jun 2024 23:43:04 +0000 (UTC)
X-CSE-ConnectionGUID: RBZJxlmPQ2C8gGY7q1AUbw==
X-CSE-MsgGUID: yJE4pqCCSG+EIs19ZRgk8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11105"; a="15275301"
X-IronPort-AV: E=Sophos;i="6.08,243,1712646000"; d="scan'208";a="15275301"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2024 16:43:04 -0700
X-CSE-ConnectionGUID: bRPC9MD1Q/6oRA3YMqpqrw==
X-CSE-MsgGUID: +3FlXk15Tx+wOye5GQJWKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,243,1712646000"; d="scan'208";a="78514236"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by orviesa001.jf.intel.com with ESMTP; 16 Jun 2024 16:43:03 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sIzWW-0003Uw-1I;
 Sun, 16 Jun 2024 23:43:00 +0000
Date: Mon, 17 Jun 2024 07:42:45 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:const_driver 16/23] drivers/cdx/cdx.c:648:12: error:
 incompatible function pointer types initializing 'int (*)(struct device *,
 const struct device_driver *)' with an expression of type 'int (struct
 device *, struct device_driver *)'
Message-ID: <202406170739.qxdbTrrC-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718581385; x=1750117385;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=YlfxSKtg6WVsYZ13Hx2l/TEDR3MnXSvuyy4a8H3SioE=;
 b=IXBSztY5dLwR9qqIlx3QdMah0eCDCFdMU2TwS7YiaVmVJFnNggj0Pheb
 5wfRMaKzpuveApmq1eYfYGCti092ZhLUIvsz56ob+0fgFdBXpLEpPoE/3
 yY6B60nlNrAkVrLu0sVN+TyTEB4hzpLCOHqEOst5IszKoM+DNZ/ZCa9Br
 kbgqHpemdlhxrI3JpNYwDfFdIPkff46LpVkkAL/1yECKqvPVrxb22nMe1
 nJU7T3hoSomPlBzBckWZYEGUV1ojwuoR9TfEaWwn703e1xFdbYg5kGgQ7
 Qn4pHE9NSk6ypLOU3DUh+3fvLISwu9fAIlRUSN9hJuRdq0Vp2InnGbkN4
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IXBSztY5
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git const_driver
head:   59a02fe9d47c712050ae1895d753dd46ce97f357
commit: 271b7e9b52810c0931a92496d9de0e3e07be51e0 [16/23] driver core: have match() callback in struct bus_type take a const *
config: arm64-randconfig-004-20240617 (https://download.01.org/0day-ci/archive/20240617/202406170739.qxdbTrrC-lkp@intel.com/config)
compiler: clang version 15.0.7 (https://github.com/llvm/llvm-project 8dfdcc7b7bf66834a761bd8de445840ef68e4d1a)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240617/202406170739.qxdbTrrC-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406170739.qxdbTrrC-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/cdx/cdx.c:648:12: error: incompatible function pointer types initializing 'int (*)(struct device *, const struct device_driver *)' with an expression of type 'int (struct device *, struct device_driver *)' [-Werror,-Wincompatible-function-pointer-types]
           .match          = cdx_bus_match,
                             ^~~~~~~~~~~~~
   1 error generated.


vim +648 drivers/cdx/cdx.c

2959ab247061e6 Nipun Gupta 2023-03-13  645  
2959ab247061e6 Nipun Gupta 2023-03-13  646  struct bus_type cdx_bus_type = {
2959ab247061e6 Nipun Gupta 2023-03-13  647  	.name		= "cdx",
2959ab247061e6 Nipun Gupta 2023-03-13 @648  	.match		= cdx_bus_match,
2959ab247061e6 Nipun Gupta 2023-03-13  649  	.probe		= cdx_probe,
2959ab247061e6 Nipun Gupta 2023-03-13  650  	.remove		= cdx_remove,
2959ab247061e6 Nipun Gupta 2023-03-13  651  	.shutdown	= cdx_shutdown,
2959ab247061e6 Nipun Gupta 2023-03-13  652  	.dma_configure	= cdx_dma_configure,
b8c5ff76059ded Nipun Gupta 2023-06-05  653  	.dma_cleanup	= cdx_dma_cleanup,
2959ab247061e6 Nipun Gupta 2023-03-13  654  	.bus_groups	= cdx_bus_groups,
48a6c7bced2a78 Nipun Gupta 2023-03-13  655  	.dev_groups	= cdx_dev_groups,
2959ab247061e6 Nipun Gupta 2023-03-13  656  };
2959ab247061e6 Nipun Gupta 2023-03-13  657  EXPORT_SYMBOL_GPL(cdx_bus_type);
2959ab247061e6 Nipun Gupta 2023-03-13  658  

:::::: The code at line 648 was first introduced by commit
:::::: 2959ab247061e67485d83b6af8feb3761ec08cb9 cdx: add the cdx bus driver

:::::: TO: Nipun Gupta <nipun.gupta@amd.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
