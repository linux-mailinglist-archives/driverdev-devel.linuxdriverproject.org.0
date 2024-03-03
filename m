Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7299686F57F
	for <lists+driverdev-devel@lfdr.de>; Sun,  3 Mar 2024 15:18:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 18C2760754;
	Sun,  3 Mar 2024 14:17:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 59hmIuHm5nAj; Sun,  3 Mar 2024 14:17:55 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 00CF660874
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 00CF660874;
	Sun,  3 Mar 2024 14:17:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 33F071BF5AE
 for <devel@linuxdriverproject.org>; Sun,  3 Mar 2024 14:17:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2E21C60754
 for <devel@linuxdriverproject.org>; Sun,  3 Mar 2024 14:17:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6AZ_cyvh8cUQ for <devel@linuxdriverproject.org>;
 Sun,  3 Mar 2024 14:17:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 0DB1D60737
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0DB1D60737
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0DB1D60737
 for <devel@driverdev.osuosl.org>; Sun,  3 Mar 2024 14:17:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11001"; a="6920157"
X-IronPort-AV: E=Sophos;i="6.06,201,1705392000"; 
   d="scan'208";a="6920157"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2024 06:17:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,201,1705392000"; d="scan'208";a="13286642"
Received: from lkp-server01.sh.intel.com (HELO b21307750695) ([10.239.97.150])
 by fmviesa004.fm.intel.com with ESMTP; 03 Mar 2024 06:17:49 -0800
Received: from kbuild by b21307750695 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rgmex-0001p6-22;
 Sun, 03 Mar 2024 14:17:47 +0000
Date: Sun, 3 Mar 2024 22:17:02 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup 11/11] drivers/nvmem/core.c:481:15:
 error: implicit declaration of function 'devm_device_add_groups'; did you
 mean 'devm_device_add_group'?
Message-ID: <202403032205.vsrv47wd-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709475472; x=1741011472;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=kAcwQcWLoQI/JTk5HLMMnP/Uy5MWepxeGbO/YChabP0=;
 b=Wj6ofuwWzcnGY3HLrZt93UCthXIqXiTWe4Rt11WtBkx4Jhk6jpTP2raS
 oivrzYJE2ja6laqpj4efkgcU7t/7A2k6MEaXjOwTZAKKfOsIMZC1DlGPW
 HpPho2BPFputqoCk1fSPZGrtbBcXwuc3RtrG+fpduFDmqaqr1Kj150RqP
 85tHmbAVgkBn5cdpJT1tlc5iM/LLKvKQy9IdtqkzdRjBeJnOSUPed5MaQ
 jAV3gD5PrlL03yvQ/UfmgbBsdWj9ovZLHzLMAQk16eF8Fsn/LVwXUR1dp
 EFUoMzSEWdov8s/UR00eQSuRIsG2/CVctpbIJ0vaEPNx5wNFKI4gnbjUD
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Wj6ofuwW
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
head:   d52687b617d2f0d9709ddfe812df75aa25fe202f
commit: d52687b617d2f0d9709ddfe812df75aa25fe202f [11/11] driver core: remove devm_device_add_groups()
config: arm64-randconfig-004-20240303 (https://download.01.org/0day-ci/archive/20240303/202403032205.vsrv47wd-lkp@intel.com/config)
compiler: aarch64-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240303/202403032205.vsrv47wd-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202403032205.vsrv47wd-lkp@intel.com/

All errors (new ones prefixed by >>):

   drivers/nvmem/core.c: In function 'nvmem_populate_sysfs_cells':
>> drivers/nvmem/core.c:481:15: error: implicit declaration of function 'devm_device_add_groups'; did you mean 'devm_device_add_group'? [-Werror=implicit-function-declaration]
     481 |         ret = devm_device_add_groups(&nvmem->dev, nvmem_cells_groups);
         |               ^~~~~~~~~~~~~~~~~~~~~~
         |               devm_device_add_group
   cc1: some warnings being treated as errors


vim +481 drivers/nvmem/core.c

84400305271937 Srinivas Kandagatla 2020-03-25  429  
0331c611949fff Miquel Raynal       2023-12-15  430  static int nvmem_populate_sysfs_cells(struct nvmem_device *nvmem)
0331c611949fff Miquel Raynal       2023-12-15  431  {
0331c611949fff Miquel Raynal       2023-12-15  432  	struct bin_attribute **cells_attrs, *attrs;
0331c611949fff Miquel Raynal       2023-12-15  433  	struct nvmem_cell_entry *entry;
0331c611949fff Miquel Raynal       2023-12-15  434  	unsigned int ncells = 0, i = 0;
0331c611949fff Miquel Raynal       2023-12-15  435  	int ret = 0;
0331c611949fff Miquel Raynal       2023-12-15  436  
0331c611949fff Miquel Raynal       2023-12-15  437  	mutex_lock(&nvmem_mutex);
0331c611949fff Miquel Raynal       2023-12-15  438  
0331c611949fff Miquel Raynal       2023-12-15  439  	if (list_empty(&nvmem->cells) || nvmem->sysfs_cells_populated) {
0331c611949fff Miquel Raynal       2023-12-15  440  		nvmem_cells_group.bin_attrs = NULL;
0331c611949fff Miquel Raynal       2023-12-15  441  		goto unlock_mutex;
0331c611949fff Miquel Raynal       2023-12-15  442  	}
0331c611949fff Miquel Raynal       2023-12-15  443  
0331c611949fff Miquel Raynal       2023-12-15  444  	/* Allocate an array of attributes with a sentinel */
0331c611949fff Miquel Raynal       2023-12-15  445  	ncells = list_count_nodes(&nvmem->cells);
0331c611949fff Miquel Raynal       2023-12-15  446  	cells_attrs = devm_kcalloc(&nvmem->dev, ncells + 1,
0331c611949fff Miquel Raynal       2023-12-15  447  				   sizeof(struct bin_attribute *), GFP_KERNEL);
0331c611949fff Miquel Raynal       2023-12-15  448  	if (!cells_attrs) {
0331c611949fff Miquel Raynal       2023-12-15  449  		ret = -ENOMEM;
0331c611949fff Miquel Raynal       2023-12-15  450  		goto unlock_mutex;
0331c611949fff Miquel Raynal       2023-12-15  451  	}
0331c611949fff Miquel Raynal       2023-12-15  452  
0331c611949fff Miquel Raynal       2023-12-15  453  	attrs = devm_kcalloc(&nvmem->dev, ncells, sizeof(struct bin_attribute), GFP_KERNEL);
0331c611949fff Miquel Raynal       2023-12-15  454  	if (!attrs) {
0331c611949fff Miquel Raynal       2023-12-15  455  		ret = -ENOMEM;
0331c611949fff Miquel Raynal       2023-12-15  456  		goto unlock_mutex;
0331c611949fff Miquel Raynal       2023-12-15  457  	}
0331c611949fff Miquel Raynal       2023-12-15  458  
0331c611949fff Miquel Raynal       2023-12-15  459  	/* Initialize each attribute to take the name and size of the cell */
0331c611949fff Miquel Raynal       2023-12-15  460  	list_for_each_entry(entry, &nvmem->cells, node) {
0331c611949fff Miquel Raynal       2023-12-15  461  		sysfs_bin_attr_init(&attrs[i]);
0331c611949fff Miquel Raynal       2023-12-15  462  		attrs[i].attr.name = devm_kasprintf(&nvmem->dev, GFP_KERNEL,
e20f378d993b10 Arnd Bergmann       2024-02-09  463  						    "%s@%x,%x", entry->name,
e20f378d993b10 Arnd Bergmann       2024-02-09  464  						    entry->offset,
e20f378d993b10 Arnd Bergmann       2024-02-09  465  						    entry->bit_offset);
0331c611949fff Miquel Raynal       2023-12-15  466  		attrs[i].attr.mode = 0444;
0331c611949fff Miquel Raynal       2023-12-15  467  		attrs[i].size = entry->bytes;
0331c611949fff Miquel Raynal       2023-12-15  468  		attrs[i].read = &nvmem_cell_attr_read;
0331c611949fff Miquel Raynal       2023-12-15  469  		attrs[i].private = entry;
0331c611949fff Miquel Raynal       2023-12-15  470  		if (!attrs[i].attr.name) {
0331c611949fff Miquel Raynal       2023-12-15  471  			ret = -ENOMEM;
0331c611949fff Miquel Raynal       2023-12-15  472  			goto unlock_mutex;
0331c611949fff Miquel Raynal       2023-12-15  473  		}
0331c611949fff Miquel Raynal       2023-12-15  474  
0331c611949fff Miquel Raynal       2023-12-15  475  		cells_attrs[i] = &attrs[i];
0331c611949fff Miquel Raynal       2023-12-15  476  		i++;
0331c611949fff Miquel Raynal       2023-12-15  477  	}
0331c611949fff Miquel Raynal       2023-12-15  478  
0331c611949fff Miquel Raynal       2023-12-15  479  	nvmem_cells_group.bin_attrs = cells_attrs;
0331c611949fff Miquel Raynal       2023-12-15  480  
0331c611949fff Miquel Raynal       2023-12-15 @481  	ret = devm_device_add_groups(&nvmem->dev, nvmem_cells_groups);
0331c611949fff Miquel Raynal       2023-12-15  482  	if (ret)
0331c611949fff Miquel Raynal       2023-12-15  483  		goto unlock_mutex;
0331c611949fff Miquel Raynal       2023-12-15  484  
0331c611949fff Miquel Raynal       2023-12-15  485  	nvmem->sysfs_cells_populated = true;
0331c611949fff Miquel Raynal       2023-12-15  486  
0331c611949fff Miquel Raynal       2023-12-15  487  unlock_mutex:
0331c611949fff Miquel Raynal       2023-12-15  488  	mutex_unlock(&nvmem_mutex);
0331c611949fff Miquel Raynal       2023-12-15  489  
0331c611949fff Miquel Raynal       2023-12-15  490  	return ret;
0331c611949fff Miquel Raynal       2023-12-15  491  }
0331c611949fff Miquel Raynal       2023-12-15  492  

:::::: The code at line 481 was first introduced by commit
:::::: 0331c611949fffdf486652450901a4dc52bc5cca nvmem: core: Expose cells through sysfs

:::::: TO: Miquel Raynal <miquel.raynal@bootlin.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
