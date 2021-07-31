Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB663DC5E7
	for <lists+driverdev-devel@lfdr.de>; Sat, 31 Jul 2021 14:19:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9E492607A9;
	Sat, 31 Jul 2021 12:19:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ukjsFm55V7FJ; Sat, 31 Jul 2021 12:19:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23CB1605F9;
	Sat, 31 Jul 2021 12:19:45 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C71201BF86D
 for <devel@linuxdriverproject.org>; Sat, 31 Jul 2021 12:19:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B3E394010E
 for <devel@linuxdriverproject.org>; Sat, 31 Jul 2021 12:19:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id eXDUw-TtsTkT for <devel@linuxdriverproject.org>;
 Sat, 31 Jul 2021 12:19:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 13AA9401F2
 for <devel@driverdev.osuosl.org>; Sat, 31 Jul 2021 12:19:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="212959722"
X-IronPort-AV: E=Sophos;i="5.84,284,1620716400"; d="scan'208";a="212959722"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2021 05:19:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,284,1620716400"; d="scan'208";a="665454385"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 31 Jul 2021 05:19:31 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1m9nxi-000B7x-BW; Sat, 31 Jul 2021 12:19:30 +0000
Date: Sat, 31 Jul 2021 20:18:43 +0800
From: kernel test robot <lkp@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [RFC PATCH staging] staging: r8188eu: fix duplicated inclusion
Message-ID: <20210731121843.GA54722@fdce12c5ae77>
References: <202107312004.g8f9buXX-lkp@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202107312004.g8f9buXX-lkp@intel.com>
X-Patchwork-Hint: ignore
drivers/staging/r8188eu/os_dep/ioctl_linux.c: ../include/rtw_android.h is
 included more than once.
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

Generated by: scripts/checkincludes.pl

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: kernel test robot <lkp@intel.com>
---
 ioctl_linux.c |    1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/r8188eu/os_dep/ioctl_linux.c b/drivers/staging/r8188eu/os_dep/ioctl_linux.c
index ffce43f99dd60..3bcb139757f6d 100644
--- a/drivers/staging/r8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/r8188eu/os_dep/ioctl_linux.c
@@ -5587,7 +5587,6 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 }
 #endif
 
-#include "../include/rtw_android.h"
 static int rtw_wx_set_priv(struct net_device *dev,
 				struct iw_request_info *info,
 				union iwreq_data *awrq,
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
