Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4048669D85A
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Feb 2023 03:16:31 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D43CD70335;
	Tue, 21 Feb 2023 02:16:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D43CD70335
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id d97-qqWDdQhg; Tue, 21 Feb 2023 02:16:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 910CA70327;
	Tue, 21 Feb 2023 02:16:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 910CA70327
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 773661BF310
 for <devel@linuxdriverproject.org>; Mon, 20 Feb 2023 23:09:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 502F282B1A
 for <devel@linuxdriverproject.org>; Mon, 20 Feb 2023 23:09:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 502F282B1A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bLwpQoQkxaQd for <devel@linuxdriverproject.org>;
 Mon, 20 Feb 2023 23:09:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5CE8A827FB
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5CE8A827FB
 for <devel@driverdev.osuosl.org>; Mon, 20 Feb 2023 23:09:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="312876811"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="312876811"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 15:09:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="760307216"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="760307216"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Feb 2023 15:09:33 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pUFHo-000EEj-0r;
 Mon, 20 Feb 2023 23:09:32 +0000
Date: Tue, 21 Feb 2023 07:08:50 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const 122/122] drivers/iommu/iommu.c:118:2:
 error: initializing 'struct bus_type *const' with an expression of type
 'const struct bus_type *' discards qualifiers
Message-ID: <202302210633.1nZkZMlc-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676934575; x=1708470575;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=gfVyTOmnsDOYcV1Z0X9im8ALZk/iCsdciTgyf2vTjYI=;
 b=YRECv7AMeGOtwjEuIha5iu57D/eoWx2AmEYUPObObmFJW3r0qrQfFM/m
 CT6JYgLdWsgSM6wg4gEUo4cWgSQUbjbPqEAqRFE6L/kQkJoaNshAJyVQ7
 PbCMy4BaGfEBxqiapO1mHoQzC3gzj79lon0PQj4BNS16xgKZtOnZIXmev
 KZLOEwJh+g6TwfFuy/hfCteRU2bBomSoko3mr2aPDeScRgdC391c2eNLg
 wUXUtKGCDXpl5TJNXdKOrRGAQJNHiCGxWnfSdputxaKqiX4Jm9DJJw/ZM
 cg/LDMhseB2N/McBsdHKlCDSPG2oEcCAj0m7Km5KOH3bdaKgYO7n1B+0E
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YRECv7AM
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git kobject-const
head:   de9d11ba9a2261b62a065a1b6539eecf8a6d81f5
commit: de9d11ba9a2261b62a065a1b6539eecf8a6d81f5 [122/122] driver core: platform: make platform_bus_type constant
config: arm64-randconfig-r015-20230220 (https://download.01.org/0day-ci/archive/20230221/202302210633.1nZkZMlc-lkp@intel.com/config)
compiler: clang version 17.0.0 (https://github.com/llvm/llvm-project db89896bbbd2251fff457699635acbbedeead27f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=de9d11ba9a2261b62a065a1b6539eecf8a6d81f5
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core kobject-const
        git checkout de9d11ba9a2261b62a065a1b6539eecf8a6d81f5
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash drivers/iommu/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202302210633.1nZkZMlc-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/iommu/iommu.c:118:2: error: initializing 'struct bus_type *const' with an expression of type 'const struct bus_type *' discards qualifiers [-Werror,-Wincompatible-pointer-types-discards-qualifiers]
           &platform_bus_type,
           ^~~~~~~~~~~~~~~~~~
   1 error generated.


vim +118 drivers/iommu/iommu.c

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
