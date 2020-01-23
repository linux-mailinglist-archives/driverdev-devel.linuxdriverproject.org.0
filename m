Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F69D146D14
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jan 2020 16:38:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D881988393;
	Thu, 23 Jan 2020 15:38:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wiOHbOAhG7TC; Thu, 23 Jan 2020 15:38:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1E8B38834D;
	Thu, 23 Jan 2020 15:38:51 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 6FC5E1BF3B9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 6C588203B2
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Wa02JJ8bylgJ
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa6.microchip.iphmx.com (esa6.microchip.iphmx.com
 [216.71.154.253])
 by silver.osuosl.org (Postfix) with ESMTPS id A5D9820013
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:41 +0000 (UTC)
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
IronPort-SDR: IMojBsIq5KYYY7bjROvmRqn2ejyhdZOKHH3DcKbZ4GUB28S20QxQohdp9pvHzR8Py96CCQxFNq
 VQvqjYXygntI0t4SmT4NrqqM9T1RMnUpGVKrtvlpd5XyWrKPKRGonWMNxBm2QsIIr5VP5rNI13
 +oiGGgo/E7fAhKDtnAfCC8fx6/QrROc8wzROvrMFZaSfckS9JMt68vknL658xmVSYjf+mdlKJz
 ZFSM8V2h/cqKivGfsgUA6b27QWePnLXYnFzRBW+iEeonIwfsv7/TZJQRx3VUCxcm9EONJaZXQa
 JGc=
X-IronPort-AV: E=Sophos;i="5.70,354,1574146800"; d="scan'208";a="61810389"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jan 2020 08:38:41 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 23 Jan 2020 08:38:40 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 23 Jan 2020 08:38:40 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v4 10/10] staging: most: Documentation: move ABI description
 files out of staging area
Date: Thu, 23 Jan 2020 16:38:26 +0100
Message-ID: <1579793906-5054-11-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579793906-5054-1-git-send-email-christian.gromm@microchip.com>
References: <1579793906-5054-1-git-send-email-christian.gromm@microchip.com>
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
