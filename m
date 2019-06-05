Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 84148365DD
	for <lists+driverdev-devel@lfdr.de>; Wed,  5 Jun 2019 22:44:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 160962046D;
	Wed,  5 Jun 2019 20:44:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7l9T1nika+nf; Wed,  5 Jun 2019 20:44:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B56552046A;
	Wed,  5 Jun 2019 20:44:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 89A981BF2EC
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 20:44:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8667520465
 for <devel@linuxdriverproject.org>; Wed,  5 Jun 2019 20:44:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4LL1u8j8LEnF for <devel@linuxdriverproject.org>;
 Wed,  5 Jun 2019 20:44:40 +0000 (UTC)
X-Greylist: delayed 00:14:07 by SQLgrey-1.7.6
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
 by silver.osuosl.org (Postfix) with ESMTPS id 79C6120464
 for <devel@driverdev.osuosl.org>; Wed,  5 Jun 2019 20:44:40 +0000 (UTC)
Received: from svr-orw-mbx-01.mgc.mentorg.com ([147.34.90.201])
 by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 id 1hYcYK-0007fr-Kt from George_Davis@mentor.com ;
 Wed, 05 Jun 2019 13:30:32 -0700
Received: from localhost (147.34.91.1) by svr-orw-mbx-01.mgc.mentorg.com
 (147.34.90.201) with Microsoft SMTP Server (TLS) id 15.0.1320.4; Wed, 5 Jun
 2019 13:30:30 -0700
From: "George G. Davis" <george_davis@mentor.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Kosina
 <trivial@kernel.org>, Christian Gromm <christian.gromm@microchip.com>,
 "George G. Davis" <george_davis@mentor.com>, Dan Carpenter
 <dan.carpenter@oracle.com>, "open list:STAGING SUBSYSTEM"
 <devel@driverdev.osuosl.org>, open list <linux-kernel@vger.kernel.org>
Subject: [PATCH 3/3] staging: most: trivial: fix a couple of typos
Date: Wed, 5 Jun 2019 16:30:11 -0400
Message-ID: <1559766612-12178-3-git-send-email-george_davis@mentor.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1559766612-12178-1-git-send-email-george_davis@mentor.com>
References: <1559766612-12178-1-git-send-email-george_davis@mentor.com>
MIME-Version: 1.0
X-ClientProxiedBy: svr-orw-mbx-02.mgc.mentorg.com (147.34.90.202) To
 svr-orw-mbx-01.mgc.mentorg.com (147.34.90.201)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix the following typos:

	"comoponent" -> "component"
	"communiction" -> "communication"

Cc: Jiri Kosina <trivial@kernel.org>
Signed-off-by: George G. Davis <george_davis@mentor.com>
---
 drivers/staging/most/Documentation/ABI/configfs-most.txt | 16 ++++++++--------
 drivers/staging/most/Documentation/driver_usage.txt      |  8 ++++----
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/most/Documentation/ABI/configfs-most.txt b/drivers/staging/most/Documentation/ABI/configfs-most.txt
index 25b3e18c4d91..2bf811449b0b 100644
--- a/drivers/staging/most/Documentation/ABI/configfs-most.txt
+++ b/drivers/staging/most/Documentation/ABI/configfs-most.txt
@@ -31,13 +31,13 @@ Description:
 				or output
 
 		dbr_size	configure DBR data buffer size (this is used
-				for MediaLB communiction only)
+				for MediaLB communication only)
 
 		packets_per_xact
 				configure the number of packets that will be
 				collected from the network before being
 				transmitted via USB (this is used for USB
-				communiction only)
+				communication only)
 
 		device		name of the device the link is to be attached to
 
@@ -75,13 +75,13 @@ Description:
 				or output
 
 		dbr_size	configure DBR data buffer size (this is used
-				for MediaLB communiction only)
+				for MediaLB communication only)
 
 		packets_per_xact
 				configure the number of packets that will be
 				collected from the network before being
 				transmitted via USB (this is used for USB
-				communiction only)
+				communication only)
 
 		device		name of the device the link is to be attached to
 
@@ -119,13 +119,13 @@ Description:
 				or output
 
 		dbr_size	configure DBR data buffer size (this is used
-				for MediaLB communiction only)
+				for MediaLB communication only)
 
 		packets_per_xact
 				configure the number of packets that will be
 				collected from the network before being
 				transmitted via USB (this is used for USB
-				communiction only)
+				communication only)
 
 		device		name of the device the link is to be attached to
 
@@ -173,13 +173,13 @@ Description:
 				or output
 
 		dbr_size	configure DBR data buffer size (this is used
-				for MediaLB communiction only)
+				for MediaLB communication only)
 
 		packets_per_xact
 				configure the number of packets that will be
 				collected from the network before being
 				transmitted via USB (this is used for USB
-				communiction only)
+				communication only)
 
 		device		name of the device the link is to be attached to
 
diff --git a/drivers/staging/most/Documentation/driver_usage.txt b/drivers/staging/most/Documentation/driver_usage.txt
index 56d79195bb3c..2fa8dea1da4d 100644
--- a/drivers/staging/most/Documentation/driver_usage.txt
+++ b/drivers/staging/most/Documentation/driver_usage.txt
@@ -42,7 +42,7 @@ the attached network interface controller hardware. Hence, a given module
 of this layer is designed to handle exactly one of the peripheral
 interfaces (e.g. USB, MediaLB, I2C) the hardware provides.
 
-A module of the application layer is referred to as a core comoponent,
+A module of the application layer is referred to as a core component,
 which kind of extends the core by providing connectivity to the user space.
 Applications, then, can access a MOST network via character devices, an
 ALSA soundcard, a Network adapter or a V4L2 capture device.
@@ -119,7 +119,7 @@ following components are available
 
 The driver is to be configured via configfs. Each loaded component kernel
 object (see section 1.3) registers a subsystem with configfs, which is used to
-configure and establish communiction pathways (links) to attached devices on
+configure and establish communication pathways (links) to attached devices on
 the bus. To do so, the user has to descend into the component's configuration
 directory and create a new directory (child config itmes). The name of this
 directory will be used as a reference for the link and it will contain the
@@ -137,12 +137,12 @@ following attributes:
 	- direction
 	  configure whether this link will be an input or output
 	- dbr_size
-	  configure DBR data buffer size (this is used for MediaLB communiction
+	  configure DBR data buffer size (this is used for MediaLB communication
 	  only)
 	- packets_per_xact
 	  configure the number of packets that will be collected from the
 	  network before being transmitted via USB (this is used for USB
-	  communiction only)
+	  communication only)
 	- device
 	  name of the device the link is to be attached to
 	- channel
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
