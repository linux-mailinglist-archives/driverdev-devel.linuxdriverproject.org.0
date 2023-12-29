Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8A6820157
	for <lists+driverdev-devel@lfdr.de>; Fri, 29 Dec 2023 21:12:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id EB5A383E3D;
	Fri, 29 Dec 2023 20:12:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org EB5A383E3D
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nNkwehQKCwLu; Fri, 29 Dec 2023 20:12:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AF8F583E49;
	Fri, 29 Dec 2023 20:12:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AF8F583E49
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 33B4D1BF429
 for <devel@linuxdriverproject.org>; Fri, 29 Dec 2023 20:12:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0DF5540579
 for <devel@linuxdriverproject.org>; Fri, 29 Dec 2023 20:12:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0DF5540579
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id U3ZNn7bjYvh3 for <devel@linuxdriverproject.org>;
 Fri, 29 Dec 2023 20:12:37 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 8941A400D8
 for <devel@driverdev.osuosl.org>; Fri, 29 Dec 2023 20:12:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8941A400D8
X-IronPort-AV: E=McAfee;i="6600,9927,10938"; a="3977766"
X-IronPort-AV: E=Sophos;i="6.04,316,1695711600"; 
   d="scan'208";a="3977766"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2023 12:12:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10938"; a="772031742"
X-IronPort-AV: E=Sophos;i="6.04,316,1695711600"; d="scan'208";a="772031742"
Received: from lkp-server02.sh.intel.com (HELO b07ab15da5fe) ([10.239.97.151])
 by orsmga007.jf.intel.com with ESMTP; 29 Dec 2023 12:12:35 -0800
Received: from kbuild by b07ab15da5fe with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1rJJDd-000Hkr-0r;
 Fri, 29 Dec 2023 20:12:33 +0000
Date: Sat, 30 Dec 2023 04:12:19 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:bus_cleanup 50/63] sound/ac97/bus.c:112:20: error: use
 of undeclared identifier 'ac97_bus_type'
Message-ID: <202312300412.d7aL39C6-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703880757; x=1735416757;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=BQWQS8RJNPUpDVAB3yrvXeOp+M21nMqunP/yqEPXUsM=;
 b=h4X743wyfhAgo8uOXTNGfoXommwDxHVkdO6153oZXXpHkWN+tPUtDmCR
 b3v0/rZRACizLUrbti9L5KUoJHOukWhwy5dUB8oBBoOCexKuMhlQFXbJ8
 CNckn5FU6l+3kkDIEgrODSwyv7M9cze3fi3agmS9RbYur1xSzR4ZLdqnR
 Rfo2XsJcDH78IoitNzRI4ZqKPXpIMIvo6fDXlZYS2iJFOEb34+6lYHt0O
 +VDQossfHYtsl4+NyxBnChz+ffoovgm7AmMfghZyy4uyuV2EMPF3Cl3/h
 HP84Hbk6DiFpaVINETLYeyMvHRURZGyXoLNvvK9P9FNGbKSxDLe+D4UlT
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h4X743wy
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

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git bus_cleanup
head:   ac92bbeaa1fb866860adfba2428bd35ae4c7f382
commit: 25e5a37b12d794025aee0c57fc0f184030d20da6 [50/63] ALSA: mark all struct bus_type as const
config: hexagon-randconfig-r131-20231229 (https://download.01.org/0day-ci/archive/20231230/202312300412.d7aL39C6-lkp@intel.com/config)
compiler: clang version 18.0.0git (https://github.com/llvm/llvm-project 8a4266a626914765c0c69839e8a51be383013c1a)
reproduce: (https://download.01.org/0day-ci/archive/20231230/202312300412.d7aL39C6-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202312300412.d7aL39C6-lkp@intel.com/

All errors (new ones prefixed by >>):

>> sound/ac97/bus.c:112:20: error: use of undeclared identifier 'ac97_bus_type'
     112 |         codec->dev.bus = &ac97_bus_type;
         |                           ^
   sound/ac97/bus.c:191:21: error: use of undeclared identifier 'ac97_bus_type'
     191 |         drv->driver.bus = &ac97_bus_type;
         |                            ^
   2 errors generated.


vim +/ac97_bus_type +112 sound/ac97/bus.c

74426fbff66eea Robert Jarzmik 2017-09-02   99  
74426fbff66eea Robert Jarzmik 2017-09-02  100  static int ac97_codec_add(struct ac97_controller *ac97_ctrl, int idx,
74426fbff66eea Robert Jarzmik 2017-09-02  101  		   unsigned int vendor_id)
74426fbff66eea Robert Jarzmik 2017-09-02  102  {
74426fbff66eea Robert Jarzmik 2017-09-02  103  	struct ac97_codec_device *codec;
74426fbff66eea Robert Jarzmik 2017-09-02  104  	int ret;
74426fbff66eea Robert Jarzmik 2017-09-02  105  
74426fbff66eea Robert Jarzmik 2017-09-02  106  	codec = kzalloc(sizeof(*codec), GFP_KERNEL);
74426fbff66eea Robert Jarzmik 2017-09-02  107  	if (!codec)
74426fbff66eea Robert Jarzmik 2017-09-02  108  		return -ENOMEM;
74426fbff66eea Robert Jarzmik 2017-09-02  109  	ac97_ctrl->codecs[idx] = codec;
74426fbff66eea Robert Jarzmik 2017-09-02  110  	codec->vendor_id = vendor_id;
74426fbff66eea Robert Jarzmik 2017-09-02  111  	codec->dev.release = ac97_codec_release;
74426fbff66eea Robert Jarzmik 2017-09-02 @112  	codec->dev.bus = &ac97_bus_type;
74426fbff66eea Robert Jarzmik 2017-09-02  113  	codec->dev.parent = &ac97_ctrl->adap;
74426fbff66eea Robert Jarzmik 2017-09-02  114  	codec->num = idx;
74426fbff66eea Robert Jarzmik 2017-09-02  115  	codec->ac97_ctrl = ac97_ctrl;
74426fbff66eea Robert Jarzmik 2017-09-02  116  
74426fbff66eea Robert Jarzmik 2017-09-02  117  	device_initialize(&codec->dev);
74426fbff66eea Robert Jarzmik 2017-09-02  118  	dev_set_name(&codec->dev, "%s:%u", dev_name(ac97_ctrl->parent), idx);
2225a3e6af78e6 Robert Jarzmik 2018-06-22  119  	codec->dev.of_node = ac97_of_get_child_device(ac97_ctrl, idx,
2225a3e6af78e6 Robert Jarzmik 2018-06-22  120  						      vendor_id);
74426fbff66eea Robert Jarzmik 2017-09-02  121  
74426fbff66eea Robert Jarzmik 2017-09-02  122  	ret = device_add(&codec->dev);
607975b30db41a Ding Xiang     2019-07-23  123  	if (ret) {
74426fbff66eea Robert Jarzmik 2017-09-02  124  		put_device(&codec->dev);
74426fbff66eea Robert Jarzmik 2017-09-02  125  		return ret;
74426fbff66eea Robert Jarzmik 2017-09-02  126  	}
74426fbff66eea Robert Jarzmik 2017-09-02  127  
607975b30db41a Ding Xiang     2019-07-23  128  	return 0;
607975b30db41a Ding Xiang     2019-07-23  129  }
607975b30db41a Ding Xiang     2019-07-23  130  

:::::: The code at line 112 was first introduced by commit
:::::: 74426fbff66eea8e8d1f42c8238c268d1e63a832 ALSA: ac97: add an ac97 bus

:::::: TO: Robert Jarzmik <robert.jarzmik@free.fr>
:::::: CC: Mark Brown <broonie@kernel.org>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
