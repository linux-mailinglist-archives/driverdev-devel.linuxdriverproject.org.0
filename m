Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 06EF9109151
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Nov 2019 16:52:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 677F221552;
	Mon, 25 Nov 2019 15:51:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Or66p+0JwcOp; Mon, 25 Nov 2019 15:51:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9D84520C92;
	Mon, 25 Nov 2019 15:51:54 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C239D1BF96B
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:51:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id BD690855CB
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:51:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id V2EIpcucKJ7d
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:51:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa1.microchip.iphmx.com (esa1.microchip.iphmx.com
 [68.232.147.91])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EA4CC855C6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:51:49 +0000 (UTC)
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: cvA5qRWXmXOseDVCkAep5Nf/6Ed7cmgxiXBs3D15g8RMjWyR20vWAArry3C5VZsQjf38AaDWSZ
 579jBRPpI3xgQ1iuyl0AFQdZNt9mSLgPTBEE6JAZ4POnjjNABkSxuRoygeeZK99GlKC/P652H8
 uBQ4fMmZ+clCtLFetrm9c/idotVP4aEIg669QbWQRxNBMl7b2g+xHoxr0O6WJuRMqmh3qEfW4D
 AzqjP3WUPul8Upnv/b09trWnFyEMNzrrYTIp+uVV/g0+vDPAlFnEY/wkCpPGGJeOvyVzAKhNDY
 vBg=
X-IronPort-AV: E=Sophos;i="5.69,242,1571727600"; d="scan'208";a="59635709"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Nov 2019 08:51:45 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 Nov 2019 08:51:45 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 25 Nov 2019 08:51:44 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC 0/6] staging: most: move core module out of staging area
Date: Mon, 25 Nov 2019 16:51:30 +0100
Message-ID: <1574697096-2942-1-git-send-email-christian.gromm@microchip.com>
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

The MOST driver was pushed to the staging area with kernel 4.3. Since then
it has encountered many refinements by the community and should be ready
for an upstream audit and to be moved out of the staging area. Since the
driver consists of multiple modules the core module is about to go first
and the other modules will follow subsequently. This patchset executes the
necessary steps to move the core module out of staging.                                                                  

Christian Gromm (6):
  staging: most: fix improper SPDX-License comment style
  staging: most: rename core.h to most.h
  staging: most: use angle brackets in include path
  staging: most: move core files out of the staging area
  staging: most: Documentation: update ABI description
  staging: most: Documentation: move ABI description files out of
    staging area

 Documentation/ABI/testing/configfs-most            |  196 +++
 Documentation/ABI/testing/sysfs-bus-most           |  295 ++++
 drivers/Kconfig                                    |    1 +
 drivers/Makefile                                   |    1 +
 drivers/most/Kconfig                               |   15 +
 drivers/most/Makefile                              |    4 +
 drivers/most/configfs.c                            |  708 +++++++++
 drivers/most/core.c                                | 1523 ++++++++++++++++++++
 .../most/Documentation/ABI/configfs-most.txt       |  204 ---
 .../most/Documentation/ABI/sysfs-bus-most.txt      |  313 ----
 drivers/staging/most/Kconfig                       |    6 +-
 drivers/staging/most/Makefile                      |    5 -
 drivers/staging/most/cdev/cdev.c                   |    2 +-
 drivers/staging/most/configfs.c                    |  708 ---------
 drivers/staging/most/core.c                        | 1523 --------------------
 drivers/staging/most/core.h                        |  339 -----
 drivers/staging/most/dim2/dim2.c                   |    2 +-
 drivers/staging/most/i2c/i2c.c                     |    2 +-
 drivers/staging/most/net/net.c                     |    2 +-
 drivers/staging/most/sound/sound.c                 |    2 +-
 drivers/staging/most/usb/usb.c                     |    2 +-
 drivers/staging/most/video/video.c                 |    2 +-
 include/linux/most.h                               |  339 +++++
 23 files changed, 3092 insertions(+), 3102 deletions(-)
 create mode 100644 Documentation/ABI/testing/configfs-most
 create mode 100644 Documentation/ABI/testing/sysfs-bus-most
 create mode 100644 drivers/most/Kconfig
 create mode 100644 drivers/most/Makefile
 create mode 100644 drivers/most/configfs.c
 create mode 100644 drivers/most/core.c
 delete mode 100644 drivers/staging/most/Documentation/ABI/configfs-most.txt
 delete mode 100644 drivers/staging/most/Documentation/ABI/sysfs-bus-most.txt
 delete mode 100644 drivers/staging/most/configfs.c
 delete mode 100644 drivers/staging/most/core.c
 delete mode 100644 drivers/staging/most/core.h
 create mode 100644 include/linux/most.h

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
