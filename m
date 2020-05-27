Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B351E3D2E
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 11:06:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E89DC87D91;
	Wed, 27 May 2020 09:06:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rXQRkMrN+ijA; Wed, 27 May 2020 09:06:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id ECAD986477;
	Wed, 27 May 2020 09:06:34 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 67D9C1BF2EF
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 617FE87E6E
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ECfURee3TIZe
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id F1E0287D3D
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 27 May 2020 09:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1590570392; x=1622106392;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=OJ3jogAcBXoCOIeBSavV874OsXHq0x03huAnCHVD8go=;
 b=LCMxkNfF6m5Bx6w5bcFvz3GQQyg+xRq0aVc33JqYEZHPNktEbs0VPLMt
 rFA/G5Md4CXrqHF+ZFdNVuN3HfCxUZcXJ5kNBrUkB3QG8xbdnOBcLXkH9
 ImwbFBd20zTiyReHDHnJ/xnOWP5/0jByegpc+3Zj/VRRMr3JoWRWATBjw
 Lmw1ny5X1K04ddQisseQuKXREHaTPOsAS5Xq1j7YT9ESKf1O0V85dki0X
 jY2Qwer5JBLLorcDtGBrNHuqbGEFb9N9KUeyiOhploAhZ2MPHENkf2glW
 5dyRrT4Yg6szNmGUH6dYX8wM9R7PDDfxGosQv7ST1ea6+ixI3WbHRa3lZ A==;
IronPort-SDR: Ze6Vd32uZyek0pdsjKXiWgnbh0U9iVpKfgMlYkmBA9xs5VTsKKGTVDnTEwgE6SP4nUvgMiZYPG
 YOXdbRhnpZ9pYm5eHxXzGFkjaVmutf4Y5KmMo0ZRjGdKhuKH196OfDrf5wqxryDYn44mWYUN7R
 evEGIQurZwPXRSXIuzmuW8mPmzVr11EFh6PusUAlPdDaosL9PeFjuKlsDwspvibWdvfsxkHkNa
 mYn29+n0d18x0oeynQjZL+bxSm31uw3hM/TsLmF2TXhkOTNBO4qt30dd622aZLN8teuYkxvbbb
 DJ0=
X-IronPort-AV: E=Sophos;i="5.73,440,1583218800"; d="scan'208";a="74590201"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 May 2020 02:06:31 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 May 2020 02:06:24 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 27 May 2020 02:06:30 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 00/10] staging: most: usb: fix code review findings
Date: Wed, 27 May 2020 11:06:17 +0200
Message-ID: <1590570387-27069-1-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
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
Cc: Christian Gromm <christian.gromm@microchip.com>,
 driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This series fixes the comments received from the mailing list.

Christian Gromm (10):
  staging: most: usb: change order of function parameters
  staging: most: usb: don't use expressions that might fail in a
    declaration
  staging: most: usb: change return value of function drci_rd_reg
  staging: most: usb: return 0 instead of variable
  staging: most: usb: move allocation of URB out of critical section
  staging: most: usb: don't use error path to exit function on success
  staging: most: usb: replace code to calculate array index
  staging: most: usb: use correct error codes
  staging: most: usb: add missing put_device calls
  staging: most: usb: use function sysfs_streq

 drivers/staging/most/usb/usb.c | 83 ++++++++++++++++++++++++------------------
 1 file changed, 47 insertions(+), 36 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
