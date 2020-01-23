Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 489CB146D18
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 Jan 2020 16:39:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 02153221D9;
	Thu, 23 Jan 2020 15:39:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8bPKqv6j-bsg; Thu, 23 Jan 2020 15:39:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id EF294203B2;
	Thu, 23 Jan 2020 15:38:49 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 091501BF3B9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0458984CEB
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id geNQwOdIGLxv
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 212FD868C9
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 23 Jan 2020 15:38:41 +0000 (UTC)
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
IronPort-SDR: FOZaXqfqJvY/SdKw6sDZaHHwPqsJs3xSSRmsn+Ib8rsZVlJOrz1kfsROBZ1Q8kZm8190nWL9Xa
 01fPpCa73vAQFtB0P+SaRhJxHpnLogWPY4e6PNWf+zk/qz7krHqgs+7LkMKXUTrjsw2LzhSUfc
 yC3+6jfDrn5nk793wCnT6r2oIIgKL93oBHITKGrGblcpHepE8FvHGk7cG9z3/grpWmMyDBNJdH
 nCkHUlIK3acYUcniWnFLOrENqhFBw7gvo3AfjUh2xzVofOmi++OiuMI6Ep+wT9MMeeKIko+SOs
 Ag4=
X-IronPort-AV: E=Sophos;i="5.70,354,1574146800"; d="scan'208";a="62896533"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 23 Jan 2020 08:38:41 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 23 Jan 2020 08:38:39 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 23 Jan 2020 08:38:38 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v4 09/10] staging: most: Documentation: update ABI description
Date: Thu, 23 Jan 2020 16:38:25 +0100
Message-ID: <1579793906-5054-10-git-send-email-christian.gromm@microchip.com>
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

This patch updates the ABI description files to be in sync
with current implementation.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v2:
v3:
v4:

 .../most/Documentation/ABI/configfs-most.txt       |  8 --------
 .../most/Documentation/ABI/sysfs-bus-most.txt      | 24 +++-------------------
 2 files changed, 3 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/most/Documentation/ABI/configfs-most.txt b/drivers/staging/most/Documentation/ABI/configfs-most.txt
index 2bf8114..ed67a4d 100644
--- a/drivers/staging/most/Documentation/ABI/configfs-most.txt
+++ b/drivers/staging/most/Documentation/ABI/configfs-most.txt
@@ -194,11 +194,3 @@ Description:
 
 		destroy_link	write '1' to this attribute to destroy an
 				active link
-
-What: 		/sys/kernel/config/rdma_cm/<hca>/ports/<port-num>/default_roce_tos
-Date: 		March 8, 2019
-KernelVersion:  5.2
-Description: 	RDMA-CM QPs from HCA <hca> at port <port-num>
-		will be created with this TOS as default.
-		This can be overridden by using the rdma_set_option API.
-		The possible RoCE TOS values are 0-255.
diff --git a/drivers/staging/most/Documentation/ABI/sysfs-bus-most.txt b/drivers/staging/most/Documentation/ABI/sysfs-bus-most.txt
index d8fa841..6b1d06e 100644
--- a/drivers/staging/most/Documentation/ABI/sysfs-bus-most.txt
+++ b/drivers/staging/most/Documentation/ABI/sysfs-bus-most.txt
@@ -5,7 +5,7 @@ Contact:	Christian Gromm <christian.gromm@microchip.com>
 Description:
 		Provides information about the interface type and the physical
 		location of the device. Hardware attached via USB, for instance,
-		might return <usb_device 1-1.1:1.0>
+		might return <1-1.1:1.0>
 Users:
 
 What:		/sys/bus/most/devices/.../interface
@@ -278,25 +278,7 @@ Description:
 		Indicates whether current channel ran out of buffers.
 Users:
 
-What:		/sys/bus/most/drivers/mostcore/add_link
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is used to link a channel to a component of the
-		mostcore. A link created by writing to this file is
-		referred to as pipe.
-Users:
-
-What:		/sys/bus/most/drivers/mostcore/remove_link
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is used to unlink a channel from a component.
-Users:
-
-What:		/sys/bus/most/drivers/mostcore/components
+What:		/sys/bus/most/drivers/most_core/components
 Date:		March 2017
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -304,7 +286,7 @@ Description:
 		This is used to retrieve a list of registered components.
 Users:
 
-What:		/sys/bus/most/drivers/mostcore/links
+What:		/sys/bus/most/drivers/most_core/links
 Date:		March 2017
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
