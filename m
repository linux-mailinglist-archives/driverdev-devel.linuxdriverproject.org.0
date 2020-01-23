Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F504146D0D
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jan 2020 16:38:39 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id EA6508763C;
	Thu, 23 Jan 2020 15:38:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w7LighEDgJfW; Thu, 23 Jan 2020 15:38:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 5D3FC8761F;
	Thu, 23 Jan 2020 15:38:35 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 656091BF3B9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 60D7388309
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RluFOSnzGnqg
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:31 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 39C4E882CC
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:31 +0000 (UTC)
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
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: eSnpI6VUImHyb1EELu/lbrdyQnvDU4rJ3xiZK42RbD/JJcnnZCWtWlIdGlu4UTLaIyXJC2KCHy
 ucuGelHJOwGb9zMZy2mz28r5yALP3hU+2aGjTGQiuU8JT57IjHosLL3kwEVpPbgeUm8Rz1OPGh
 rY4iCI6HfnhHjsQvoffAU6+DRm1vYrJiei+theK3ISfNwJLeXgaiQNLcdLMqvJuZIlGoXnMgDQ
 4lW5YGU5IOuvoziHRSt43JsgYRsrOqvO5Ni2xSNhx/+MV2SLYSsJ25pIb96D87Zy50a90lyuVW
 NJU=
X-IronPort-AV: E=Sophos;i="5.70,354,1574146800"; d="scan'208";a="62896515"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jan 2020 08:38:31 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 23 Jan 2020 08:38:29 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 23 Jan 2020 08:38:28 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v4 00/10] staging: most: move core module out of staging
Date: Thu, 23 Jan 2020 16:38:16 +0100
Message-ID: <1579793906-5054-1-git-send-email-christian.gromm@microchip.com>
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

Christian Gromm (10):
  staging: most: remove device from interface structure
  staging: most: core: drop device reference
  staging: most: remove struct device core driver
  staging: most: core: remove container struct
  staging: most: core: fix logging messages
  staging: next: configfs: fix release link
  staging: most: usb: check for NULL device
  staging: most: move core files out of the staging area
  staging: most: Documentation: update ABI description
  staging: most: Documentation: move ABI description files out of
    staging area

 .../ABI/testing/configfs-most                      |   8 -
 .../ABI/testing/sysfs-bus-most                     |  24 +--
 drivers/Kconfig                                    |   1 +
 drivers/Makefile                                   |   1 +
 drivers/most/Kconfig                               |  15 ++
 drivers/most/Makefile                              |   4 +
 drivers/{staging => }/most/configfs.c              |  28 +++-
 drivers/{staging => }/most/core.c                  | 164 +++++++++------------
 drivers/staging/most/Kconfig                       |   6 +-
 drivers/staging/most/Makefile                      |   5 -
 drivers/staging/most/cdev/cdev.c                   |   2 +-
 drivers/staging/most/dim2/dim2.c                   |   5 +-
 drivers/staging/most/i2c/i2c.c                     |   2 +-
 drivers/staging/most/net/net.c                     |   2 +-
 drivers/staging/most/sound/sound.c                 |   2 +-
 drivers/staging/most/usb/usb.c                     |  25 +++-
 drivers/staging/most/video/video.c                 |   2 +-
 {drivers/staging/most => include/linux}/most.h     |   4 +-
 18 files changed, 145 insertions(+), 155 deletions(-)
 rename drivers/staging/most/Documentation/ABI/configfs-most.txt => Documentation/ABI/testing/configfs-most (94%)
 rename drivers/staging/most/Documentation/ABI/sysfs-bus-most.txt => Documentation/ABI/testing/sysfs-bus-most (92%)
 create mode 100644 drivers/most/Kconfig
 create mode 100644 drivers/most/Makefile
 rename drivers/{staging => }/most/configfs.c (98%)
 rename drivers/{staging => }/most/core.c (91%)
 rename {drivers/staging/most => include/linux}/most.h (99%)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
