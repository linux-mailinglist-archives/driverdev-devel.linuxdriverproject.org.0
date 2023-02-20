Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B568369D866
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Feb 2023 03:22:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 428DA70377;
	Tue, 21 Feb 2023 02:22:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 428DA70377
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bRJuO9yjxUOA; Tue, 21 Feb 2023 02:22:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EA21C70266;
	Tue, 21 Feb 2023 02:22:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org EA21C70266
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0527F1BF310
 for <devel@linuxdriverproject.org>; Mon, 20 Feb 2023 23:57:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D3EC140BD5
 for <devel@linuxdriverproject.org>; Mon, 20 Feb 2023 23:57:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D3EC140BD5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sa6mqxaJHdYf for <devel@linuxdriverproject.org>;
 Mon, 20 Feb 2023 23:57:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DE8084012F
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DE8084012F
 for <devel@driverdev.osuosl.org>; Mon, 20 Feb 2023 23:57:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="334706516"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="334706516"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 15:57:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="1000410801"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="1000410801"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by fmsmga005.fm.intel.com with ESMTP; 20 Feb 2023 15:57:34 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pUG2I-000EFu-07;
 Mon, 20 Feb 2023 23:57:34 +0000
Date: Tue, 21 Feb 2023 07:57:06 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const 122/122] drivers/iommu/iommu.c:118:9:
 warning: initialization discards 'const' qualifier from pointer target type
Message-ID: <202302210708.PQqZ8mR4-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676937456; x=1708473456;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=m5wW9AYtdfCg0tr4dQtat8pQzGGIeLnLTBk/jtOghGs=;
 b=JzXIgjfAN23NnaNkJoGKvVxj0y7SLaN/89wNFkUsugk+zSq4I91/KwLQ
 thy8CsM2tG1CxpbFuHGWN8rNZUYNWo/8H/bPnkhakGSxW00/UqAjzBDAg
 Q026DN4CCZFrCTRCW3DPLYAJ/dSlllwy40Epz4L2lYNCBEnza0sBNXeJL
 sT5n7q5i/YkdAAxM8whZIWT7eTaHL+f0t2GTojn+Ti/D5cQs+GmrBro0c
 N42C6M6Hw+81dO17Y6rdsgryENTWHcdjUtZQuQLUW8US/MbvyHHeW4gUY
 r3udwBf8KYzkuN7BCHcLvQEIDx8DoJfS5cpH7RrRqRhsDDnm2t+1dSqu+
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JzXIgjfA
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
head:   de9d11ba9a2261b62a065a1b6539eecf8a6d81f5
commit: de9d11ba9a2261b62a065a1b6539eecf8a6d81f5 [122/122] driver core: platform: make platform_bus_type constant
config: powerpc-allmodconfig (https://download.01.org/0day-ci/archive/20230221/202302210708.PQqZ8mR4-lkp@intel.com/config)
compiler: powerpc-linux-gcc (GCC) 12.1.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=de9d11ba9a2261b62a065a1b6539eecf8a6d81f5
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core kobject-const
        git checkout de9d11ba9a2261b62a065a1b6539eecf8a6d81f5
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=powerpc olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross W=1 O=build_dir ARCH=powerpc SHELL=/bin/bash drivers/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202302210708.PQqZ8mR4-lkp@intel.com/

All warnings (new ones prefixed by >>):

>> drivers/iommu/iommu.c:118:9: warning: initialization discards 'const' qualifier from pointer target type [-Wdiscarded-qualifiers]
     118 |         &platform_bus_type,
         |         ^


vim +/const +118 drivers/iommu/iommu.c

b0119e870837dc Joerg Roedel 2017-02-01  116  
c13dbc1e248549 Robin Murphy 2022-08-15  117  static struct bus_type * const iommu_buses[] = {
c13dbc1e248549 Robin Murphy 2022-08-15 @118  	&platform_bus_type,
c13dbc1e248549 Robin Murphy 2022-08-15  119  #ifdef CONFIG_PCI
c13dbc1e248549 Robin Murphy 2022-08-15  120  	&pci_bus_type,
c13dbc1e248549 Robin Murphy 2022-08-15  121  #endif
c13dbc1e248549 Robin Murphy 2022-08-15  122  #ifdef CONFIG_ARM_AMBA
c13dbc1e248549 Robin Murphy 2022-08-15  123  	&amba_bustype,
c13dbc1e248549 Robin Murphy 2022-08-15  124  #endif
c13dbc1e248549 Robin Murphy 2022-08-15  125  #ifdef CONFIG_FSL_MC_BUS
c13dbc1e248549 Robin Murphy 2022-08-15  126  	&fsl_mc_bus_type,
c13dbc1e248549 Robin Murphy 2022-08-15  127  #endif
c13dbc1e248549 Robin Murphy 2022-08-15  128  #ifdef CONFIG_TEGRA_HOST1X_CONTEXT_BUS
c13dbc1e248549 Robin Murphy 2022-08-15  129  	&host1x_context_device_bus_type,
c13dbc1e248549 Robin Murphy 2022-08-15  130  #endif
c13dbc1e248549 Robin Murphy 2022-08-15  131  };
c13dbc1e248549 Robin Murphy 2022-08-15  132  

:::::: The code at line 118 was first introduced by commit
:::::: c13dbc1e24854908376c40ccaeb7a3a3c111e3af iommu: Always register bus notifiers

:::::: TO: Robin Murphy <robin.murphy@arm.com>
:::::: CC: Joerg Roedel <jroedel@suse.de>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
