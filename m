Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6B1F50F3
	for <lists+driverdev-devel@lfdr.de>; Fri,  8 Nov 2019 17:21:20 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B234386204;
	Fri,  8 Nov 2019 16:21:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kmPBKgzhmvmM; Fri,  8 Nov 2019 16:21:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BBB6B85F0E;
	Fri,  8 Nov 2019 16:21:17 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 231811BF370
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 16:21:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 1B10A87E6C
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 16:21:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p1f-lTCt5e7p
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 16:21:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 343AE87E63
 for <driverdev-devel@linuxdriverproject.org>;
 Fri,  8 Nov 2019 16:21:14 +0000 (UTC)
Received-SPF: Pass (esa3.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa3.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa3.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa3.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: BH62hnAHu1QIvC3Og46mI5QH1qTpYChmTZPtu5aJRvkjtebPW0iUe4wZsTYASt6lBKdna4Yuc6
 obYSABFJJKij1hOnVRYr4LK4XN2llvn0gWF7xdtTbaiU1kFuVYwpd0Phnmu4Kx+F/lOeKLDn52
 lI5K9jWF/+t3k0+0LQeDi1tJBXCYZcjIL/xdL/PWtJMdxd2kCZEaBa4oXFdKzTOIOk/QXxVM0Q
 O3xlTRk01NOuY7srFMfjhBac9H4a7x8pVZjEq0DQh0ylpuRpx4P/jwHfFlUgKZ2pqORmsShXe8
 SBw=
X-IronPort-AV: E=Sophos;i="5.68,282,1569308400"; d="scan'208";a="56257993"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Nov 2019 09:21:13 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 8 Nov 2019 09:21:12 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.85.251) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 8 Nov 2019 09:21:11 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH 0/2] staging: most: prevent module removal if configfs
 directory is populated
Date: Fri, 8 Nov 2019 17:21:06 +0100
Message-ID: <1573230068-27658-1-git-send-email-christian.gromm@microchip.com>
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

Currently the core module does not hold any reference to component modules.
Hence, a component could be unloaded from the system anytime. Even if the
configuration interface is still being populated with configfs
items/groups.
User space then has no chance to fix the usage count by calling rmdir on
such a config item/group, as the respective directory does not exist
anymore. In this situation the core module cannot be unloaded anymore.
This patch set fixes this issue by holding a reference as long as the
configfs items exist.

Christian Gromm (2):
  staging: most: configfs: move configfs subsystems to container struct
  staging: most: block module removal while having active configfs items

 drivers/staging/most/cdev/cdev.c   |   1 +
 drivers/staging/most/configfs.c    | 118 +++++++++++++++++++++++++------------
 drivers/staging/most/core.h        |   1 +
 drivers/staging/most/net/net.c     |   1 +
 drivers/staging/most/sound/sound.c |   1 +
 drivers/staging/most/video/video.c |   1 +
 6 files changed, 85 insertions(+), 38 deletions(-)

-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
