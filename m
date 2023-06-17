Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BD50B734451
	for <lists+driverdev-devel@lfdr.de>; Sun, 18 Jun 2023 00:22:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B16FA60BA7;
	Sat, 17 Jun 2023 22:22:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B16FA60BA7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CYKBWMtb7rQH; Sat, 17 Jun 2023 22:22:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8360160BA4;
	Sat, 17 Jun 2023 22:21:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8360160BA4
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF3691BF37C
 for <devel@linuxdriverproject.org>; Sat, 17 Jun 2023 22:21:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C05F9415F1
 for <devel@linuxdriverproject.org>; Sat, 17 Jun 2023 22:21:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C05F9415F1
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id atK7Eo_3DN0m for <devel@linuxdriverproject.org>;
 Sat, 17 Jun 2023 22:21:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D1BA415C3
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7D1BA415C3
 for <devel@driverdev.osuosl.org>; Sat, 17 Jun 2023 22:21:55 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10744"; a="359438162"
X-IronPort-AV: E=Sophos;i="6.00,251,1681196400"; d="scan'208";a="359438162"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2023 15:21:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10744"; a="837425270"
X-IronPort-AV: E=Sophos;i="6.00,251,1681196400"; d="scan'208";a="837425270"
Received: from lkp-server01.sh.intel.com (HELO 783282924a45) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 17 Jun 2023 15:21:53 -0700
Received: from kbuild by 783282924a45 with local (Exim 4.96)
 (envelope-from <lkp@intel.com>) id 1qAeIq-0003AA-0p;
 Sat, 17 Jun 2023 22:21:52 +0000
Date: Sun, 18 Jun 2023 06:21:00 +0800
From: kernel test robot <lkp@intel.com>
To: Philipp Hortmann <philipp.g.hortmann@gmail.com>
Subject: [staging:staging-testing 35/38] ERROR: modpost: "rfc1042_header"
 [drivers/staging/rtl8192e/rtllib.ko] undefined!
Message-ID: <202306180620.Ew55XtKJ-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687040515; x=1718576515;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=Ig7UovnYQ3AAw272IDll3u/8DJxqi19m0zyxit84Zr8=;
 b=BjADLbjVsZyPEYHnvoSYNoxWeceOhFxd4SfprajpOWgt7Up02CTfEtVb
 wMVLrsfKa2Ttve4z5b9TiiRPtKlIB2mE0vpDZdt70LbDpgXsHr6GNDe+P
 eDzIXU5LwVjh773sk/ls5rtNWcOeEci3y/hoj0D7GIGW4pmCFUZsVOo+H
 slERldt6UoRJfrLa7OBKBFFsWq7eH6zy7HMooolpXEY+zGzQGXMV8lxkB
 wV34Zwah+8Fdl5ot+evsR8Qc6Cz9TQoAVjFuqqdzhmFpa730RtdFK0VsG
 alu67MhbkWQueLmTsEqnOQtQjB29iJUtzPf9rZBj08qH2ZCweGwwpzx4h
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=BjADLbjV
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
Cc: devel@driverdev.osuosl.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 oe-kbuild-all@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-testing
head:   f99bbb4412ceffba7e85b9a9227de44c214c68ca
commit: d88b46ce5ab8160a3c5d4efde27197d7545ec19a [35/38] staging: rtl8192e: Add cfg80211.h and remove defined variables
config: csky-randconfig-r024-20230617 (https://download.01.org/0day-ci/archive/20230618/202306180620.Ew55XtKJ-lkp@intel.com/config)
compiler: csky-linux-gcc (GCC) 12.3.0
reproduce: (https://download.01.org/0day-ci/archive/20230618/202306180620.Ew55XtKJ-lkp@intel.com/reproduce)

If you fix the issue in a separate patch/commit (i.e. not just a new version of
the same patch/commit), kindly add following tags
| Reported-by: kernel test robot <lkp@intel.com>
| Closes: https://lore.kernel.org/oe-kbuild-all/202306180620.Ew55XtKJ-lkp@intel.com/

All errors (new ones prefixed by >>, old ones prefixed by <<):

>> ERROR: modpost: "rfc1042_header" [drivers/staging/rtl8192e/rtllib.ko] undefined!
>> ERROR: modpost: "bridge_tunnel_header" [drivers/staging/rtl8192e/rtllib.ko] undefined!

-- 
0-DAY CI Kernel Test Service
https://github.com/intel/lkp-tests/wiki
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
