Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6A411E332
	for <lists+driverdev-devel@lfdr.de>; Fri, 13 Dec 2019 13:06:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AF18388548;
	Fri, 13 Dec 2019 12:06:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 40pXukKUfpxi; Fri, 13 Dec 2019 12:06:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 896CD88529;
	Fri, 13 Dec 2019 12:06:23 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D3F651BF2AE
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B429187297
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WERhN90Lj8FN
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 06DB2872DD
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 13 Dec 2019 12:05:15 +0000 (UTC)
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
IronPort-SDR: RuVdmD97z0wpYrCtExk3gmhS6874CGti9g0AYctTeSuYstX1sy4VX8uTaIxqKurwX3XleFia1m
 XF309aEvCLid3IjjEAwmSOLtlNFOtDsI6ELS3TZFRt/IE/wQ6icEGG6hhmrhaxJ9jKDRJfJiCE
 v85RhGqD/5miqGOiEgwj3U7W0A9ovAHRy7ZoyhmL3MYiCiCBkqKHq2r/uVWJdjPQz7LabeFFN2
 ODaOnstZNLIvYWzF2PL1Un+eIjKPf6dfaEqG/zFUt7bQkExdLTt8W1OYnczXmC3uFhISvg7Fbz
 xEI=
X-IronPort-AV: E=Sophos;i="5.69,309,1571727600"; d="scan'208";a="58898042"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 Dec 2019 05:05:16 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 13 Dec 2019 05:05:15 -0700
Received: from localhost.localdomain (10.10.85.251) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 13 Dec 2019 05:05:14 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC v2 8/9] staging: most: Documentation: update ABI
 description
Date: Fri, 13 Dec 2019 13:04:21 +0100
Message-ID: <1576238662-16512-9-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
References: <1576238662-16512-1-git-send-email-christian.gromm@microchip.com>
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
