Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E8D9099FF
	for <lists+driverdev-devel@lfdr.de>; Sat, 15 Jun 2024 23:22:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 70AEB8118C;
	Sat, 15 Jun 2024 21:22:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id w-x39TiWAPKj; Sat, 15 Jun 2024 21:22:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=driverdev-devel-bounces@linuxdriverproject.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7F80181159
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7F80181159;
	Sat, 15 Jun 2024 21:22:44 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CD5991BF2F8
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2024 21:22:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BA53240825
 for <devel@linuxdriverproject.org>; Sat, 15 Jun 2024 21:22:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id v2w26MHq0FwB for <devel@linuxdriverproject.org>;
 Sat, 15 Jun 2024 21:22:41 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=lkp@intel.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8F5EB407D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F5EB407D2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F5EB407D2
 for <devel@driverdev.osuosl.org>; Sat, 15 Jun 2024 21:22:41 +0000 (UTC)
X-CSE-ConnectionGUID: Lmgi5qQnTqK2IRp6lQIkZA==
X-CSE-MsgGUID: 6sKSZeN2T8CZylr0fiR7Yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11104"; a="19141967"
X-IronPort-AV: E=Sophos;i="6.08,241,1712646000"; d="scan'208";a="19141967"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2024 14:22:41 -0700
X-CSE-ConnectionGUID: W5pz9zajT+yFCP8fayQtWw==
X-CSE-MsgGUID: kNt0iBIWSeCNzf92Gwq9qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,241,1712646000"; d="scan'208";a="40689515"
Received: from lkp-server01.sh.intel.com (HELO 68891e0c336b) ([10.239.97.150])
 by fmviesa007.fm.intel.com with ESMTP; 15 Jun 2024 14:22:39 -0700
Received: from kbuild by 68891e0c336b with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1sIar7-0000W8-2C;
 Sat, 15 Jun 2024 21:22:37 +0000
Date: Sun, 16 Jun 2024 05:21:39 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [driver-core:const_driver 16/23] drivers/tc/tc-driver.c:100:19:
 error: initialization of 'int (*)(struct device *, const struct
 device_driver *)' from incompatible pointer type 'int (*)(struct device *,
 struct device_driver *)'
Message-ID: <202406160508.Gcwjzku0-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718486562; x=1750022562;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=1BP5bSMGogS2+Uzh7n8DsKo0yhPcC9etTq5WZwpGZdk=;
 b=VV+GcfwuypWZcqj7T+0qKkJaVsAF4UWq0T5F2EEHNSayXoBi2QIAChNQ
 ztJXfrMhS52ATdBjydCqRuvvh4vJX87qtSgQ/fah4FlH6cPBt0u6rgcth
 /Hyd4cav3Be7TJNFVhmUXy9+Zal9Lw9numtCx9YcoFk4JYBsBsGDRhc3C
 rJqz2EAg2lMClzn3l8RN30nyeIvv02f0pxsT5QFR5TCVRVN69ijterAmg
 Qh32nciAsrnyBa2eLBFzLg4J5FqVhUF2p3uiIPcQAGMxT3ydBOy8hcb2g
 Pg/49D0q/a7VztRtLwc0A+zVkVnebn/6giThEjurkNCVr8kqqUdBF03Pa
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=VV+Gcfwu
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
head:   b411bfe8b70c2b8590e05378a00e198d72214635
commit: 86c8a04fc60e4241b0088328cd0455726bf97dba [16/23] driver core: have match() callback in struct bus_type take a const *
config: mips-decstation_r4k_defconfig (https://download.01.org/0day-ci/archive/20240616/202406160508.Gcwjzku0-lkp@intel.com/config)
compiler: mipsel-linux-gcc (GCC) 13.2.0
reproduce (this is a W=1 build): (https://download.01.org/0day-ci/archive/20240616/202406160508.Gcwjzku0-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202406160508.Gcwjzku0-lkp@intel.com/

All errors (new ones prefixed by >>):

>> drivers/tc/tc-driver.c:100:19: error: initialization of 'int (*)(struct device *, const struct device_driver *)' from incompatible pointer type 'int (*)(struct device *, struct device_driver *)' [-Werror=incompatible-pointer-types]
     100 |         .match  = tc_bus_match,
         |                   ^~~~~~~~~~~~
   drivers/tc/tc-driver.c:100:19: note: (near initialization for 'tc_bus_type.match')
   cc1: some warnings being treated as errors


vim +100 drivers/tc/tc-driver.c

b454cc6636d254 Maciej W. Rozycki   2007-02-05   97  
aaf2230036b709 Ricardo B. Marliere 2024-02-13   98  const struct bus_type tc_bus_type = {
b454cc6636d254 Maciej W. Rozycki   2007-02-05   99  	.name	= "tc",
b454cc6636d254 Maciej W. Rozycki   2007-02-05 @100  	.match	= tc_bus_match,
b454cc6636d254 Maciej W. Rozycki   2007-02-05  101  };
b454cc6636d254 Maciej W. Rozycki   2007-02-05  102  EXPORT_SYMBOL(tc_bus_type);
b454cc6636d254 Maciej W. Rozycki   2007-02-05  103  

:::::: The code at line 100 was first introduced by commit
:::::: b454cc6636d254fbf6049b73e9560aee76fb04a3 [TC] MIPS: TURBOchannel update to the driver model

:::::: TO: Maciej W. Rozycki <macro@linux-mips.org>
:::::: CC: Ralf Baechle <ralf@linux-mips.org>

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
