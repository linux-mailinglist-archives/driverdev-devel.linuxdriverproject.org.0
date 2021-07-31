Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EB53DC5E8
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Jul 2021 14:19:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 09EE6402B0;
	Sat, 31 Jul 2021 12:19:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VoPsdeS_MEnn; Sat, 31 Jul 2021 12:19:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B68A04010E;
	Sat, 31 Jul 2021 12:19:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E1E9E1BF86D
 for <devel@linuxdriverproject.org>; Sat, 31 Jul 2021 12:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id CD9964010E
 for <devel@linuxdriverproject.org>; Sat, 31 Jul 2021 12:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id M1TrBLXXHJw2 for <devel@linuxdriverproject.org>;
 Sat, 31 Jul 2021 12:19:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id DDC42400D7
 for <devel@driverdev.osuosl.org>; Sat, 31 Jul 2021 12:19:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="212959721"
X-IronPort-AV: E=Sophos;i="5.84,284,1620716400"; d="scan'208";a="212959721"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2021 05:19:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,284,1620716400"; d="scan'208";a="665454386"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 31 Jul 2021 05:19:31 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1m9nxi-000B7z-C6; Sat, 31 Jul 2021 12:19:30 +0000
Date: Sat, 31 Jul 2021 20:18:39 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [staging:staging-next 160/164]
 drivers/staging/r8188eu/os_dep/ioctl_linux.c: ../include/rtw_android.h is
 included more than once.
Message-ID: <202107312004.g8f9buXX-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: devel@driverdev.osuosl.org, kbuild-all@lists.01.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 Phillip Potter <phil@philpotter.co.uk>,
 Larry Finger <Larry.Finger@lwfinger.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git staging-next
head:   9b6818c1ac0e545c632265e4bf0aa1171347ebea
commit: 78f2b22efc8f7649dcde44143e78149457f1162c [160/164] staging: r8188eu: fix include directory mess
compiler: gcc-10 (Ubuntu 10.3.0-1ubuntu1~20.04) 10.3.0

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


includecheck warnings: (new ones prefixed by >>)
>> drivers/staging/r8188eu/os_dep/ioctl_linux.c: ../include/rtw_android.h is included more than once.

Please review and possibly fold the followup patch.

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
