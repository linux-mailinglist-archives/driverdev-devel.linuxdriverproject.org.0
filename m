Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16741902DF5
	for <lists+driverdev-devel@lfdr.de>; Tue, 11 Jun 2024 03:28:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6655D40614;
	Tue, 11 Jun 2024 01:27:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7foDYAjwnm3H; Tue, 11 Jun 2024 01:27:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 21F4B40B02
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 21F4B40B02;
	Tue, 11 Jun 2024 01:27:56 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 3317E1BF3F0
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2024 01:27:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2AD72820CF
 for <devel@linuxdriverproject.org>; Tue, 11 Jun 2024 01:27:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id L9E4Azq2ifJS for <devel@linuxdriverproject.org>;
 Tue, 11 Jun 2024 01:27:53 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D666E81F82
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D666E81F82
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D666E81F82
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2024 01:27:52 +0000 (UTC)
X-CSE-ConnectionGUID: pXVwi9tUTBueQbMwOdImCQ==
X-CSE-MsgGUID: eNvJdzSiR6y0l3J/Qo+u3A==
X-IronPort-AV: E=McAfee;i="6600,9927,11099"; a="40157779"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="40157779"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 18:27:51 -0700
X-CSE-ConnectionGUID: Y37eTKgOR/KJYbLkQ+6hGg==
X-CSE-MsgGUID: zRo9tkT+Rme85seGF0XF5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="44200252"
Received: from lkp-server01.sh.intel.com (HELO 8967fbab76b3) ([10.239.97.150])
 by orviesa005.jf.intel.com with ESMTP; 10 Jun 2024 18:27:50 -0700
Received: from kbuild by 8967fbab76b3 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sGqIe-0002eL-0X;
 Tue, 11 Jun 2024 01:27:48 +0000
Date: Tue, 11 Jun 2024 09:27:08 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:const_driver 8/8] arch/parisc/kernel/drivers.c:623:18:
 error: initialization of 'int (*)(struct device *, const struct
 device_driver *)' from incompatible pointer type 'int (*)(struct device *,
 struct device_driver *)'
Message-ID: <202406110956.JsSMEcMO-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718069273; x=1749605273;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=2ETh3NC/DkG+jrTOrr3qcrplgx2QmQV4sxWjYbxTadU=;
 b=Ho2DECZxE+EtiYTd7jkoOAEQW/MpvaNyA61h5Z4/A+aO6dMD7Xn1selD
 m49fk99wfEm08EuSYe9g1/weytwfYZ/UlufRaTcGtpjV75OI3a4x9NbPw
 25VmXSATPPA3VmMy1RFUSIWku3HcKtI/jPy+2NNGzFXD2CR0R1lYulbZL
 25FQYDmTgMERzuLLB3r/mSTjkVPlnQEaSmQ6KUPe+jPHUYiq2MJW+Txg0
 1Cykk6gTV1BCLKSY890BhHJFWuL1TECMkBkD0U9+sEc/EtJemVSX8imgf
 aqFB/KIPeFyXz3ges4BP9BVKhegMyDr6STYJbKo7UWBAHr8VBFkyV7eHD
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Ho2DECZx
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
head:   6f0f76bd99e259ff0aee9f2e6aed360e258c1077
commit: 6f0f76bd99e259ff0aee9f2e6aed360e258c1077 [8/8] driver core: have match() callback in struct bus_type take a const *
config: parisc-allnoconfig (https://download.01.org/0day-ci/archive/20240611/202406110956.JsSMEcMO-lkp@intel.com/config)
compiler: hppa-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240611/202406110956.JsSMEcMO-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406110956.JsSMEcMO-lkp@intel.com/

All errors (new ones prefixed by >>):

>> arch/parisc/kernel/drivers.c:623:18: error: initialization of 'int (*)(struct device *, const struct device_driver *)' from incompatible pointer type 'int (*)(struct device *, struct device_driver *)' [-Werror=incompatible-pointer-types]
     623 |         .match = parisc_generic_match,
         |                  ^~~~~~~~~~~~~~~~~~~~
   arch/parisc/kernel/drivers.c:623:18: note: (near initialization for 'parisc_bus_type.match')
   cc1: some warnings being treated as errors


vim +623 arch/parisc/kernel/drivers.c

^1da177e4c3f41 Linus Torvalds      2005-04-16  620  
0b9ec151b9b45f Ricardo B. Marliere 2024-02-13  621  const struct bus_type parisc_bus_type = {
^1da177e4c3f41 Linus Torvalds      2005-04-16  622  	.name = "parisc",
^1da177e4c3f41 Linus Torvalds      2005-04-16 @623  	.match = parisc_generic_match,
7246c31e45021b Helge Deller        2008-12-25  624  	.uevent = parisc_uevent,
9b7c6682270043 Greg Kroah-Hartman  2017-06-06  625  	.dev_groups = parisc_device_groups,
ad3ed31c682d95 Russell King        2006-01-05  626  	.probe = parisc_driver_probe,
b86db40e1ecc91 Helge Deller        2018-03-04  627  	.remove = __exit_p(parisc_driver_remove),
^1da177e4c3f41 Linus Torvalds      2005-04-16  628  };
^1da177e4c3f41 Linus Torvalds      2005-04-16  629  

:::::: The code at line 623 was first introduced by commit
:::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2

:::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
:::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
