Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E2D69DA56
	for <lists+driverdev-devel@lfdr.de>; Tue, 21 Feb 2023 06:20:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2D664404B4;
	Tue, 21 Feb 2023 05:20:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D664404B4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 14hl8HsFR-b7; Tue, 21 Feb 2023 05:20:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CC9D1408E5;
	Tue, 21 Feb 2023 05:20:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CC9D1408E5
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 93C0D1BF280
 for <devel@linuxdriverproject.org>; Tue, 21 Feb 2023 05:20:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6D8096128C
 for <devel@linuxdriverproject.org>; Tue, 21 Feb 2023 05:20:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6D8096128C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L__c5ei51eA9 for <devel@linuxdriverproject.org>;
 Tue, 21 Feb 2023 05:20:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7A20D610EF
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7A20D610EF
 for <devel@driverdev.osuosl.org>; Tue, 21 Feb 2023 05:20:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="331212902"
X-IronPort-AV: E=Sophos;i="5.97,314,1669104000"; d="scan'208";a="331212902"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 21:20:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="664844755"
X-IronPort-AV: E=Sophos;i="5.97,314,1669104000"; d="scan'208";a="664844755"
Received: from lkp-server01.sh.intel.com (HELO 4455601a8d94) ([10.239.97.150])
 by orsmga007.jf.intel.com with ESMTP; 20 Feb 2023 21:20:46 -0800
Received: from kbuild by 4455601a8d94 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1pUL53-000ETY-26;
 Tue, 21 Feb 2023 05:20:45 +0000
Date: Tue, 21 Feb 2023 13:19:47 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:kobject-const 122/122] drivers/iommu/iommu.c:118:10:
 sparse: sparse: incorrect type in initializer (different modifiers)
Message-ID: <202302211325.mGuXnfJV-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676956848; x=1708492848;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=XOXGYSCvkVpLIJxgF4zoQnVKPdt/I37BdNbZI1wE1N8=;
 b=fjgWJ2rhQPZKjIL4y5uTl1Monwloh+3a+fcXvo9oKMy3vy05ky74qQX5
 6Kbq0K8dZK8Rre7C19+jvDSJdlnSE0UgMw9PffJUi88iPMQZYFwLoOoES
 l/5NkOmw4GPmm2jsB8i8e1pcwWwRXv3x2Gyi91djE9OfrSJArcneBl8Iy
 Qq8bibxEd6i9WtZrK5RsGvFfudHN3+FEP/3Co708S+K7YtjIkPdMsXnM8
 GoWlCkeIx05ocHiy7VWc3IKIsHEM8aRS91CE2Q9c1TsVqvx58d1tzuezi
 4oUnJSimfj4TfpPPe+/iL9F7ONicvuSK6qdkphrerGojaPbPCJ+feGMDE
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=fjgWJ2rh
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
config: nios2-randconfig-s043-20230219 (https://download.01.org/0day-ci/archive/20230221/202302211325.mGuXnfJV-lkp@intel.com/config)
compiler: nios2-linux-gcc (GCC) 12.1.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # apt-get install sparse
        # sparse version: v0.6.4-39-gce1a6720-dirty
        # https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git/commit/?id=de9d11ba9a2261b62a065a1b6539eecf8a6d81f5
        git remote add driver-core https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git
        git fetch --no-tags driver-core kobject-const
        git checkout de9d11ba9a2261b62a065a1b6539eecf8a6d81f5
        # save the config file
        mkdir build_dir && cp config build_dir/.config
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' O=build_dir ARCH=nios2 olddefconfig
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-12.1.0 make.cross C=1 CF='-fdiagnostic-prefix -D__CHECK_ENDIAN__' O=build_dir ARCH=nios2 SHELL=/bin/bash drivers/iommu/

If you fix the issue, kindly add following tag where applicable
| Reported-by: kernel test robot <lkp@intel.com>
| Link: https://lore.kernel.org/oe-kbuild-all/202302211325.mGuXnfJV-lkp@intel.com/

sparse warnings: (new ones prefixed by >>)
>> drivers/iommu/iommu.c:118:10: sparse: sparse: incorrect type in initializer (different modifiers) @@     expected struct bus_type * @@     got struct bus_type const * @@
   drivers/iommu/iommu.c:118:10: sparse:     expected struct bus_type *
   drivers/iommu/iommu.c:118:10: sparse:     got struct bus_type const *

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
