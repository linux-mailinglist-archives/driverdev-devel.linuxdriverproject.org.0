Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id CECA717FA1E
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Mar 2020 14:03:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 650E520794;
	Tue, 10 Mar 2020 13:02:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id P+Lq669oYXC0; Tue, 10 Mar 2020 13:02:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CA1D220796;
	Tue, 10 Mar 2020 13:02:56 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1861A1BF29F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 13:02:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 10E3520798
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 13:02:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hCSp6cTrkPEs
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 13:02:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 6506A2044D
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 13:02:52 +0000 (UTC)
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 6Pk2xom1x7WrfBwgrW+ta/PTZ9F1a95FIuMmlnrSx5lGNJYAQ49l2kGZ8bgnCDRPyLVY6xFH0A
 uzNdMT99szqm3SkjjPCwWGaTdqVLxhvdnKfvsTDzxwln/oEYeiqpzzVIX0sIo/EOryiRMMLnjJ
 neyT/Q0kni3CALrYiAGPfhRpndA3s2249I8RXAB+rK6Y5ih+werMUywSAPCEeJsOHqJMGvuJNa
 jhyOKBo0paGQ4trPkwnWXAQyh69Pf34LfKvNh4CxcNIYJ7sAWcyffLZnJNSYg+ewK/zYAyefGG
 w9c=
X-IronPort-AV: E=Sophos;i="5.70,537,1574146800"; d="scan'208";a="68285737"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Mar 2020 06:02:46 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Mar 2020 06:02:42 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 10 Mar 2020 06:02:44 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [RESEND PATCH v5 0/3] staging: most: move core module out of staging
Date: Tue, 10 Mar 2020 14:02:39 +0100
Message-ID: <1583845362-26707-1-git-send-email-christian.gromm@microchip.com>
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
