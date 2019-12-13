Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F153C11E32B
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 13:05:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5030B872D8;
	Fri, 13 Dec 2019 12:05:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9Ni2Xmq_UlAM; Fri, 13 Dec 2019 12:05:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id CA78B872C2;
	Fri, 13 Dec 2019 12:05:45 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 24B6F1BF2AE
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0992386D9B
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bccKLj4QCwBx
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 43F9D8733B
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:07 +0000 (UTC)
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: G6JGDCg4ZpW+A4VL2qhbfXHXpZAUJ4T1D5xfV59gOM+BP30m6jETpr8bK9pVVMY5waDnSQGukJ
 /bam/8cwkmbxS0M4c4MSMxfWO/XB2kCdVkqQ+lDntQP0QYe8ySJi5JTByF+Issx7pXwQrOAoDC
 zL5eCD63sb4r10XL8SEi9q+S8ZznR735neTzRuA2guE1S9mv+s1boQqt0PtKN6MM/oybDuLMSC
 3LUq74IQVRBsXDun2aC8yh7wJopKFrytM2fJhujM4IhhvRlL335m9dP1ySq0R9X/goy1vh6jYd
 URA=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="57666919"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 05:05:06 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 05:05:06 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 13 Dec 2019 05:05:05 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC v2 0/9] staging: most: move core module out of staging
Date: Fri, 13 Dec 2019 13:04:13 +0100
Message-ID: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
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

v2:
Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
	- use -M option to create patches

Christian Gromm (9):
  staging: most: rename core.h to most.h
  staging: most: rename struct core_component
  staging: most: rename enum mbo_status_flags
  staging: most: configfs: use strlcpy
  staging: most: configfs: reduce array size
  staging: most: use angle brackets in include path
  staging: most: move core files out of the staging area
  staging: most: Documentation: update ABI description
  staging: most: Documentation: move ABI description files out of
    staging area

 .../ABI/testing/configfs-most                      |  8 -----
 .../ABI/testing/sysfs-bus-most                     | 24 ++-------------
 drivers/Kconfig                                    |  1 +
 drivers/Makefile                                   |  1 +
 drivers/most/Kconfig                               | 15 ++++++++++
 drivers/most/Makefile                              |  4 +++
 drivers/{staging => }/most/configfs.c              | 32 +++++++++++---------
 drivers/{staging => }/most/core.c                  | 34 +++++++++++-----------
 drivers/staging/most/Kconfig                       |  6 ++--
 drivers/staging/most/Makefile                      |  5 ----
 drivers/staging/most/cdev/cdev.c                   |  4 +--
 drivers/staging/most/dim2/dim2.c                   |  2 +-
 drivers/staging/most/i2c/i2c.c                     |  2 +-
 drivers/staging/most/net/net.c                     |  6 ++--
 drivers/staging/most/sound/sound.c                 |  8 ++---
 drivers/staging/most/usb/usb.c                     |  2 +-
 drivers/staging/most/video/video.c                 |  6 ++--
 .../staging/most/core.h => include/linux/most.h    | 24 +++++++--------
 18 files changed, 89 insertions(+), 95 deletions(-)
 rename drivers/staging/most/Documentation/ABI/configfs-most.txt => Documentation/ABI/testing/configfs-most (94%)
 rename drivers/staging/most/Documentation/ABI/sysfs-bus-most.txt => Documentation/ABI/testing/sysfs-bus-most (92%)
 create mode 100644 drivers/most/Kconfig
 create mode 100644 drivers/most/Makefile
 rename drivers/{staging => }/most/configfs.c (96%)
 rename drivers/{staging => }/most/core.c (98%)
 rename drivers/staging/most/core.h => include/linux/most.h (95%)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
