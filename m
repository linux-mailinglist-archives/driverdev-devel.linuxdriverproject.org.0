Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AAB31641EB
	for <lists+driverdev-devel@lfdr.de>; Wed, 19 Feb 2020 11:23:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 4A6A720365;
	Wed, 19 Feb 2020 10:23:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PNhmXtAn1Mm5; Wed, 19 Feb 2020 10:23:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AA018204F5;
	Wed, 19 Feb 2020 10:23:46 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 706DF1BF3BE
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 10:23:43 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6DBD982813
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 10:23:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9nrGpByEq3wG
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 10:23:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa4.microchip.iphmx.com (esa4.microchip.iphmx.com
 [68.232.154.123])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 58E6D8790F
 for <driverdev-devel@linuxdriverproject.org>;
 Wed, 19 Feb 2020 10:23:42 +0000 (UTC)
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Christian.Gromm@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="Christian.Gromm@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Christian.Gromm@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: F3DZJQFR+rG/j+clW+qXFuXtaZwXaCXARZLEsaVtJeP91PIqxaKHTjmK5TdQaEBR4ZT/DzuRta
 moA/q6ItB10KOeI7QxwaddD8skm1iV16PgY7LKlC9bUyKaquY6Q+vakdTJzZb61ecvSLLljEPm
 cUF5O1M8YoZp18Ot8diDWtgKLpwcTAV0E56tcAL2CYpheUMWata/b6SP1oj6VLymCXPHMU6hdc
 1ofnpvCbftOZg8E6c4FEKky0FAQaUuEME8qqceYrPKtuibCRjQHCuRTA/3UNBmkD/j/RBdCmb1
 uFE=
X-IronPort-AV: E=Sophos;i="5.70,459,1574146800"; d="scan'208";a="64671227"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 19 Feb 2020 03:23:42 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 19 Feb 2020 03:23:48 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 19 Feb 2020 03:23:41 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v5 3/3] staging: most: Documentation: move ABI description
 files out of staging area
Date: Wed, 19 Feb 2020 11:23:34 +0100
Message-ID: <1582107814-11866-4-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582107814-11866-1-git-send-email-christian.gromm@microchip.com>
References: <1582107814-11866-1-git-send-email-christian.gromm@microchip.com>
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

This patch moves the ABI description fils sysfs-bus-most and
configfs-most to the kernel's documentation folder.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v2:
v3:
v4:
v5: rebased and adapted

 .../ABI/configfs-most.txt => Documentation/ABI/testing/configfs-most      | 0
 .../ABI/sysfs-bus-most.txt => Documentation/ABI/testing/sysfs-bus-most    | 0
 2 files changed, 0 insertions(+), 0 deletions(-)
 rename drivers/staging/most/Documentation/ABI/configfs-most.txt => Documentation/ABI/testing/configfs-most (100%)
 rename drivers/staging/most/Documentation/ABI/sysfs-bus-most.txt => Documentation/ABI/testing/sysfs-bus-most (100%)

diff --git a/drivers/staging/most/Documentation/ABI/configfs-most.txt b/Documentation/ABI/testing/configfs-most
similarity index 100%
rename from drivers/staging/most/Documentation/ABI/configfs-most.txt
rename to Documentation/ABI/testing/configfs-most
diff --git a/drivers/staging/most/Documentation/ABI/sysfs-bus-most.txt b/Documentation/ABI/testing/sysfs-bus-most
similarity index 100%
rename from drivers/staging/most/Documentation/ABI/sysfs-bus-most.txt
rename to Documentation/ABI/testing/sysfs-bus-most
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
