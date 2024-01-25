Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 834E983B759
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jan 2024 03:48:33 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1054E408C5;
	Thu, 25 Jan 2024 02:48:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1054E408C5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NOu9LsD9svTf; Thu, 25 Jan 2024 02:48:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4499540ACB;
	Thu, 25 Jan 2024 02:48:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4499540ACB
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 682521BF82C
 for <devel@linuxdriverproject.org>; Thu, 25 Jan 2024 02:48:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 40B7940508
 for <devel@linuxdriverproject.org>; Thu, 25 Jan 2024 02:48:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 40B7940508
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 65RrMrgdSsyi for <devel@linuxdriverproject.org>;
 Thu, 25 Jan 2024 02:48:25 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1B4C3404F7
 for <devel@driverdev.osuosl.org>; Thu, 25 Jan 2024 02:48:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1B4C3404F7
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="15570956"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="15570956"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 18:48:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="905822574"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="905822574"
Received: from lkp-server01.sh.intel.com (HELO 961aaaa5b03c) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 24 Jan 2024 18:48:20 -0800
Received: from kbuild by 961aaaa5b03c with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rSpmt-0008b5-03;
 Thu, 25 Jan 2024 02:48:19 +0000
Date: Thu, 25 Jan 2024 10:47:44 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:debugfs_cleanup 6/7] drivers/nvmem/core.c:480:8: error:
 call to undeclared function 'devm_device_add_groups';
 ISO C99 and later do not support implicit function declarations
Message-ID: <202401251023.4INLLZvR-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706150905; x=1737686905;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=P8tOXuR1MNz93eFimLGqZBU7GD2HIgXxuTweehk6uFk=;
 b=FItMt7UEpNFpUta2m1Sah9Sdk+wnbk8NW+d2aawtkDc1sBU2w588I5e5
 L/dd0W3Z39TG35LFVTUsqqQMRkSFsh/VqXLCJF7tttBXpBLv2hucrMDU1
 zrQOHgWSU63Tcd8kVTfUM7OkY5cMHQBCEZ0E3MbUN4kRcXdFeOiHCFR7c
 wznc/XYtwOX9oRXnbhZdkz8rLiYJuf+GC0uYnJ3kjvBJNW2npmLYj7kHD
 TE99uHo6ZJAgtW6e1+KPPWsI9mlMHB9vjwnv5RE7q7Rhf0oDz5R2vosX+
 oL1/PnH0XpRujlZ+xKBxCNwdq52cJHrRowNhoftnyyjusFKINyaUdZAPK
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FItMt7UE
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git debugfs_cleanup
head:   dfca47ec5332bac3ee306ae2ba95a89765a801b7
commit: 2f0ece8a0f81650915d6252d146d32fe8162f112 [6/7] driver core: remove devm_device_add_groups()
config: x86_64-rhel-8.3-rust (https://download.01.org/0day-ci/archive/20240125/202401251023.4INLLZvR-lkp@intel.com/config)
compiler: ClangBuiltLinux clang version 17.0.6 (https://github.com/llvm/llvm-project 6009708b4367171ccdbf4b5905cb6a803753fe18)
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240125/202401251023.4INLLZvR-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202401251023.4INLLZvR-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/nvmem/core.c:480:8: error: call to undeclared function 'devm_device_add_groups'; ISO C99 and later do not support implicit function declarations [-Wimplicit-function-declaration]
     480 |         ret = devm_device_add_groups(&nvmem->dev, nvmem_cells_groups);
         |               ^
   drivers/nvmem/core.c:480:8: note: did you mean 'devm_device_add_group'?
   include/linux/device.h:1204:18: note: 'devm_device_add_group' declared here
    1204 | int __must_check devm_device_add_group(struct device *dev,
         |                  ^
   1 error generated.


vim +/devm_device_add_groups +480 drivers/nvmem/core.c

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
0331c611949fff Miquel Raynal       2023-12-15  463  						    "%s@%x", entry->name,
0331c611949fff Miquel Raynal       2023-12-15  464  						    entry->offset);
0331c611949fff Miquel Raynal       2023-12-15  465  		attrs[i].attr.mode = 0444;
0331c611949fff Miquel Raynal       2023-12-15  466  		attrs[i].size = entry->bytes;
0331c611949fff Miquel Raynal       2023-12-15  467  		attrs[i].read = &nvmem_cell_attr_read;
0331c611949fff Miquel Raynal       2023-12-15  468  		attrs[i].private = entry;
0331c611949fff Miquel Raynal       2023-12-15  469  		if (!attrs[i].attr.name) {
0331c611949fff Miquel Raynal       2023-12-15  470  			ret = -ENOMEM;
0331c611949fff Miquel Raynal       2023-12-15  471  			goto unlock_mutex;
0331c611949fff Miquel Raynal       2023-12-15  472  		}
0331c611949fff Miquel Raynal       2023-12-15  473  
0331c611949fff Miquel Raynal       2023-12-15  474  		cells_attrs[i] = &attrs[i];
0331c611949fff Miquel Raynal       2023-12-15  475  		i++;
0331c611949fff Miquel Raynal       2023-12-15  476  	}
0331c611949fff Miquel Raynal       2023-12-15  477  
0331c611949fff Miquel Raynal       2023-12-15  478  	nvmem_cells_group.bin_attrs = cells_attrs;
0331c611949fff Miquel Raynal       2023-12-15  479  
0331c611949fff Miquel Raynal       2023-12-15 @480  	ret = devm_device_add_groups(&nvmem->dev, nvmem_cells_groups);
0331c611949fff Miquel Raynal       2023-12-15  481  	if (ret)
0331c611949fff Miquel Raynal       2023-12-15  482  		goto unlock_mutex;
0331c611949fff Miquel Raynal       2023-12-15  483  
0331c611949fff Miquel Raynal       2023-12-15  484  	nvmem->sysfs_cells_populated = true;
0331c611949fff Miquel Raynal       2023-12-15  485  
0331c611949fff Miquel Raynal       2023-12-15  486  unlock_mutex:
0331c611949fff Miquel Raynal       2023-12-15  487  	mutex_unlock(&nvmem_mutex);
0331c611949fff Miquel Raynal       2023-12-15  488  
0331c611949fff Miquel Raynal       2023-12-15  489  	return ret;
0331c611949fff Miquel Raynal       2023-12-15  490  }
0331c611949fff Miquel Raynal       2023-12-15  491  

:::::: The code at line 480 was first introduced by commit
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
