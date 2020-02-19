Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A10131641DA
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Feb 2020 11:23:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AF47085E7D;
	Wed, 19 Feb 2020 10:23:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BxotlEDah8E7; Wed, 19 Feb 2020 10:23:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 7A64985E43;
	Wed, 19 Feb 2020 10:23:42 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 770F91BF3BE
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 10:23:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6B8B48790F
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 10:23:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id QiZ+WZwsLuqO
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 10:23:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 797A582813
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 10:23:39 +0000 (UTC)
Received-SPF: Pass (esa2.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa2.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa2.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa2.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: ZjI8pSwe0BQ2CI0jH2Mpv4NoMn3rYD/0BUgdsNDszxI4IMCcchmWEOPzUKMrfByEPRKcdBbLJO
 OeSOpSfatyqbE7wCdE82fxtNDArroCc7TCOXdA0Xo9S4sRRMmioTAppbwWcT69KID2TFut4HLE
 VMp0LHUOcfQ3+0mssBDkH89pYm1DfFb7fsQrP8Pxat9yu+lxbJHQrhZ6ztLjrCvxcrNxGZ2abu
 xq+euoGW1QeT65Cvp/G0k2ujQ/Wqtdn6Mh5VnaCaweLwqdmJVl/ZO0if+bwM9bjPWphw6YTv+s
 Evw=
X-IronPort-AV: E=Sophos;i="5.70,459,1574146800"; d="scan'208";a="66353338"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Feb 2020 03:23:38 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 19 Feb 2020 03:23:38 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 19 Feb 2020 03:23:37 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v5 0/3] staging: most: move core module out of staging
Date: Wed, 19 Feb 2020 11:23:31 +0100
Message-ID: <1582107814-11866-1-git-send-email-christian.gromm@microchip.com>
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
 driverdev-devel@linuxdriverproject.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

v2:
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
        - use -M option to create patches
v3:
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
        - fix date range in comment section of core.c
        - move code to free up memory to release funtions
        - remove noisy log messages
        - use dev_* functions for logging
v4:
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
	- change owner of struct device that is registered with kernel's
	  device/driver model
	- fix linked list race condition
	- fix logging behaviour
	- fix possible NULL pointer dereference
v5:
	rebased and adapted

Christian Gromm (3):
  staging: most: move core files out of the staging area
  staging: most: Documentation: update ABI description
  staging: most: Documentation: move ABI description files out of
    staging area

 .../ABI/testing/configfs-most                      |  8 --------
 .../ABI/testing/sysfs-bus-most                     | 24 +++-------------------
 drivers/Kconfig                                    |  1 +
 drivers/Makefile                                   |  1 +
 drivers/most/Kconfig                               | 15 ++++++++++++++
 drivers/most/Makefile                              |  4 ++++
 drivers/{staging => }/most/configfs.c              |  3 +--
 drivers/{staging => }/most/core.c                  |  3 +--
 drivers/staging/most/Kconfig                       |  6 +++---
 drivers/staging/most/Makefile                      |  3 ---
 drivers/staging/most/cdev/cdev.c                   |  3 +--
 drivers/staging/most/dim2/dim2.c                   |  3 +--
 drivers/staging/most/i2c/i2c.c                     |  3 +--
 drivers/staging/most/net/net.c                     |  3 +--
 drivers/staging/most/sound/sound.c                 |  3 +--
 drivers/staging/most/usb/usb.c                     |  3 +--
 drivers/staging/most/video/video.c                 |  3 +--
 {drivers/staging/most => include/linux}/most.h     |  0
 18 files changed, 36 insertions(+), 53 deletions(-)
 rename drivers/staging/most/Documentation/ABI/configfs-most.txt => Documentation/ABI/testing/configfs-most (94%)
 rename drivers/staging/most/Documentation/ABI/sysfs-bus-most.txt => Documentation/ABI/testing/sysfs-bus-most (92%)
 create mode 100644 drivers/most/Kconfig
 create mode 100644 drivers/most/Makefile
 rename drivers/{staging => }/most/configfs.c (99%)
 rename drivers/{staging => }/most/core.c (99%)
 rename {drivers/staging/most => include/linux}/most.h (100%)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
