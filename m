Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 975D217FA20
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Mar 2020 14:03:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3660024F56;
	Tue, 10 Mar 2020 13:03:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cqpFNN47txjJ; Tue, 10 Mar 2020 13:03:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 448E52083F;
	Tue, 10 Mar 2020 13:03:02 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 880181BF29F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 13:02:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 83FD92044D
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 13:02:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iM7n0IeIjIBB
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 13:02:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by silver.osuosl.org (Postfix) with ESMTPS id 327D32076F
 for <driverdev-devel@linuxdriverproject.org>;
 Tue, 10 Mar 2020 13:02:53 +0000 (UTC)
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
IronPort-SDR: N9c/X563VqcM2k5OhLi9iWDiPCqBFM8O92NpCQkammEMDbf3e0hMtKtD0knVio7Z7VLNpDM5Kn
 QoGyAvAMpkinu8mGFRBIqNBc+yQzog/m9jdQGdbvBRyVvanZSHWWIzQ1rwBDbWhU+dmAiHAdG+
 RH0rR/FQagaba8BwVj0vuLtaz2cq/j609MnmGjHjfdN2MmEytqQUD8msRjBepCLhSLus9Qk8CJ
 3XqP3NTuZMqET0f+Qcm8sYPtTHpr3dNMR4gqxDV9fi9qo5Ys280ElDrGPeyB3OVHPWIff1GmDS
 AxA=
X-IronPort-AV: E=Sophos;i="5.70,537,1574146800"; d="scan'208";a="68285743"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Mar 2020 06:02:49 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 10 Mar 2020 06:02:44 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 10 Mar 2020 06:02:46 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [RESEND PATCH v5 2/3] staging: most: Documentation: update ABI
 description
Date: Tue, 10 Mar 2020 14:02:41 +0100
Message-ID: <1583845362-26707-3-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583845362-26707-1-git-send-email-christian.gromm@microchip.com>
References: <1583845362-26707-1-git-send-email-christian.gromm@microchip.com>
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
v5: rebased and adapted

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
