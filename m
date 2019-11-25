Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ADE0109152
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Nov 2019 16:52:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 487E385644;
	Mon, 25 Nov 2019 15:52:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cZMZfMSEdZKf; Mon, 25 Nov 2019 15:51:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B9ADE85B04;
	Mon, 25 Nov 2019 15:51:58 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C63BE1BF3BF
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:51:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id C2491852FF
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:51:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PkPf42ZHMya3
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:51:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1DF9C851E0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:51:53 +0000 (UTC)
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
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Christian.Gromm@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: xA2BMiA1S4p0nme7zbrxkVEd4kEj4fI0FQlkbA/27MszVUVlZqUB+XrbumXIBk8/ygO51ve2cV
 yaGKV0ljwqFHr6x00aKu5kv1mzyXIZOHDsFtXrdCg2iQFhNhwSiDctxOhIQL7TxyjDLAWBCOb5
 RS0bWPsHHHOP59GbxNyIhQ29Dat6lU0Ie0EEC49msK1xZVqqDEmy5oEjodQAHurMq9QN6SFT2Z
 WCiPcAt8KPS3NY/Cob+DveYIUrCDI8kwhGDWnfXFwFRzOAauoV/xrFLir1/v3E2lx0T3Tt3t6K
 EAs=
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="57841989"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Nov 2019 08:51:52 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 Nov 2019 08:51:52 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 25 Nov 2019 08:51:51 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC 5/6] staging: most: Documentation: update ABI description
Date: Mon, 25 Nov 2019 16:51:35 +0100
Message-ID: <1574697096-2942-6-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1574697096-2942-1-git-send-email-christian.gromm@microchip.com>
References: <1574697096-2942-1-git-send-email-christian.gromm@microchip.com>
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
