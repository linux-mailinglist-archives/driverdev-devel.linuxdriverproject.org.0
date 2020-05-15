Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 812021D495B
	for <lists+driverdev-devel@lfdr.de>; Fri, 15 May 2020 11:21:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 436AF88D9F;
	Fri, 15 May 2020 09:21:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fw9B7Y9zEBYv; Fri, 15 May 2020 09:21:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4061288C69;
	Fri, 15 May 2020 09:21:34 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9D3CE1BF2C1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 99FF3894E1
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AE1oPrrzY4Vu
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa3.microchip.iphmx.com (esa3.microchip.iphmx.com
 [68.232.153.233])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3564587804
 for <driverdev-devel@linuxdriverproject.org>;
 Fri, 15 May 2020 09:21:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589534483; x=1621070483;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=sXf4CEdCdtuaK+DZf7i9G1wvSjI7DitwSwyLSOPAi3E=;
 b=d4sdjMLlGkAgwI9IwGMlvjmBzjvPvV+KSwPv/qAtflI/p+xrIUDPNmbK
 sqvqO+RaVF4BgB/EtFuVMM3/P/MoXPAyYEp10iCvxczEvi4sqXX9ZH1FY
 xDNgIKZliXGlFnoqVxB7p9OxriVs6DPkBNgU2SuDX0IkRCKb3mqtmGgAE
 J7Ipg0m7VRbVoVNR+5ql+RWuvB2nOGjKpupwqJkBRaQXxBGpTOPKDAz+C
 AniBOKnTgvp4SpfxFFHQRSeGU1tXJNjsCUfLLdi+pw86mPNT8Ro9im24p
 YpK9Acj/NpZOpKw9wndUzUo2DRqkabK2i1tEjT519IpUAsyYXuNOoDZTW w==;
IronPort-SDR: gFGBLKd1E7kIqXPD1Ot4bM8v+yn89O+3VX9XZeNIpz8G5u+WBl8t4Kbt997B1+PpEN2dpc/CoQ
 fXQY6upNO+nsjMIkp4HqpLX2n3yGzsVKhpB1uOXQZeY7DOkMQcwegg74FCkKQiI5LGCGpjYQUt
 ucFHaN1ebSn3Oe1MIhEAhB/Tj4Rbr6W9u5d9gteAUSUpOTr3KbqLZXZj3OOSAgnaWOUqeer/MM
 ZjXxqjPdOBuSHSSjdBqyf/Ttxh5eIwzaN0LuuDOyGnF7dc7HQJrWZ5oVpX6fRj1WxMOafSNR52
 Rtk=
X-IronPort-AV: E=Sophos;i="5.73,394,1583218800"; d="scan'208";a="76782023"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 02:21:22 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 02:21:17 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 15 May 2020 02:21:16 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v3 7/7] Documentation: ABI: correct sysfs attribute
 description of MOST driver
Date: Fri, 15 May 2020 11:21:05 +0200
Message-ID: <1589534465-7423-8-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589534465-7423-1-git-send-email-christian.gromm@microchip.com>
References: <1589534465-7423-1-git-send-email-christian.gromm@microchip.com>
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
 driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes the ABI description file sysfs-bus-most.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
v2:
v3:

 Documentation/ABI/testing/sysfs-bus-most | 104 ++++++++++++++++---------------
 1 file changed, 53 insertions(+), 51 deletions(-)

diff --git a/Documentation/ABI/testing/sysfs-bus-most b/Documentation/ABI/testing/sysfs-bus-most
index 6b1d06e..ec0a603 100644
--- a/Documentation/ABI/testing/sysfs-bus-most
+++ b/Documentation/ABI/testing/sysfs-bus-most
@@ -1,14 +1,14 @@
-What:		/sys/bus/most/devices/.../description
+What:		/sys/bus/most/devices/<dev>/description
 Date:		March 2017
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
 Description:
-		Provides information about the interface type and the physical
-		location of the device. Hardware attached via USB, for instance,
+		Provides information about the physical location of the
+		device. Hardware attached via USB, for instance,
 		might return <1-1.1:1.0>
 Users:
 
-What:		/sys/bus/most/devices/.../interface
+What:		/sys/bus/most/devices/<dev>/interface
 Date:		March 2017
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -16,7 +16,7 @@ Description:
 		Indicates the type of peripheral interface the device uses.
 Users:
 
-What:		/sys/bus/most/devices/.../dci
+What:		/sys/bus/most/devices/<dev>/dci
 Date:		June 2016
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -26,7 +26,7 @@ Description:
 		write the controller's DCI registers.
 Users:
 
-What:		/sys/bus/most/devices/.../dci/arb_address
+What:		/sys/bus/most/devices/<dev>/dci/arb_address
 Date:		June 2016
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -35,7 +35,7 @@ Description:
 		application wants to read from or write to.
 Users:
 
-What:		/sys/bus/most/devices/.../dci/arb_value
+What:		/sys/bus/most/devices/<dev>/dci/arb_value
 Date:		June 2016
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -44,7 +44,7 @@ Description:
 		is stored in arb_address.
 Users:
 
-What:		/sys/bus/most/devices/.../dci/mep_eui48_hi
+What:		/sys/bus/most/devices/<dev>/dci/mep_eui48_hi
 Date:		June 2016
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -52,7 +52,7 @@ Description:
 		This is used to check and configure the MAC address.
 Users:
 
-What:		/sys/bus/most/devices/.../dci/mep_eui48_lo
+What:		/sys/bus/most/devices/<dev>/dci/mep_eui48_lo
 Date:		June 2016
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -60,7 +60,7 @@ Description:
 		This is used to check and configure the MAC address.
 Users:
 
-What:		/sys/bus/most/devices/.../dci/mep_eui48_mi
+What:		/sys/bus/most/devices/<dev>/dci/mep_eui48_mi
 Date:		June 2016
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -68,7 +68,7 @@ Description:
 		This is used to check and configure the MAC address.
 Users:
 
-What:		/sys/bus/most/devices/.../dci/mep_filter
+What:		/sys/bus/most/devices/<dev>/dci/mep_filter
 Date:		June 2016
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -76,7 +76,7 @@ Description:
 		This is used to check and configure the MEP filter address.
 Users:
 
-What:		/sys/bus/most/devices/.../dci/mep_hash0
+What:		/sys/bus/most/devices/<dev>/dci/mep_hash0
 Date:		June 2016
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -84,7 +84,7 @@ Description:
 		This is used to check and configure the MEP hash table.
 Users:
 
-What:		/sys/bus/most/devices/.../dci/mep_hash1
+What:		/sys/bus/most/devices/<dev>/dci/mep_hash1
 Date:		June 2016
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -92,7 +92,7 @@ Description:
 		This is used to check and configure the MEP hash table.
 Users:
 
-What:		/sys/bus/most/devices/.../dci/mep_hash2
+What:		/sys/bus/most/devices/<dev>/dci/mep_hash2
 Date:		June 2016
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -100,7 +100,7 @@ Description:
 		This is used to check and configure the MEP hash table.
 Users:
 
-What:		/sys/bus/most/devices/.../dci/mep_hash3
+What:		/sys/bus/most/devices/<dev>/dci/mep_hash3
 Date:		June 2016
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -108,7 +108,7 @@ Description:
 		This is used to check and configure the MEP hash table.
 Users:
 
-What:		/sys/bus/most/devices/.../dci/ni_state
+What:		/sys/bus/most/devices/<dev>/dci/ni_state
 Date:		June 2016
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -116,7 +116,7 @@ Description:
 		Indicates the current network interface state.
 Users:
 
-What:		/sys/bus/most/devices/.../dci/node_address
+What:		/sys/bus/most/devices/<dev>/dci/node_address
 Date:		June 2016
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -124,7 +124,7 @@ Description:
 		Indicates the current node address.
 Users:
 
-What:		/sys/bus/most/devices/.../dci/node_position
+What:		/sys/bus/most/devices/<dev>/dci/node_position
 Date:		June 2016
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -132,7 +132,7 @@ Description:
 		Indicates the current node position.
 Users:
 
-What:		/sys/bus/most/devices/.../dci/packet_bandwidth
+What:		/sys/bus/most/devices/<dev>/dci/packet_bandwidth
 Date:		June 2016
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -140,7 +140,7 @@ Description:
 		Indicates the configured packet bandwidth.
 Users:
 
-What:		/sys/bus/most/devices/.../dci/sync_ep
+What:		/sys/bus/most/devices/<dev>/dci/sync_ep
 Date:		June 2016
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -149,7 +149,7 @@ Description:
 		endpoint.
 Users:
 
-What:		/sys/bus/most/devices/.../<channel>/
+What:		/sys/bus/most/devices/<dev>/<channel>/
 Date:		March 2017
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
@@ -160,91 +160,92 @@ Description:
 		configure it.
 Users:
 
-What:		/sys/bus/most/devices/.../<channel>/available_datatypes
+What:		/sys/bus/most/devices/<dev>/<channel>/available_datatypes
 Date:		March 2017
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
 Description:
-		Indicates the data types the current channel can transport.
+		Indicates the data types the channel can transport.
 Users:
 
-What:		/sys/bus/most/devices/.../<channel>/available_directions
+What:		/sys/bus/most/devices/<dev>/<channel>/available_directions
 Date:		March 2017
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
 Description:
-		Indicates the directions the current channel is capable of.
+		Indicates the directions the channel is capable of.
 Users:
 
-What:		/sys/bus/most/devices/.../<channel>/number_of_packet_buffers
+What:		/sys/bus/most/devices/<dev>/<channel>/number_of_packet_buffers
 Date:		March 2017
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
 Description:
-		Indicates the number of packet buffers the current channel can
+		Indicates the number of packet buffers the channel can
 		handle.
 Users:
 
-What:		/sys/bus/most/devices/.../<channel>/number_of_stream_buffers
+What:		/sys/bus/most/devices/<dev>/<channel>/number_of_stream_buffers
 Date:		March 2017
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
 Description:
-		Indicates the number of streaming buffers the current channel can
+		Indicates the number of streaming buffers the channel can
 		handle.
 Users:
 
-What:		/sys/bus/most/devices/.../<channel>/size_of_packet_buffer
+What:		/sys/bus/most/devices/<dev>/<channel>/size_of_packet_buffer
 Date:		March 2017
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
 Description:
-		Indicates the size of a packet buffer the current channel can
+		Indicates the size of a packet buffer the channel can
 		handle.
 Users:
 
-What:		/sys/bus/most/devices/.../<channel>/size_of_stream_buffer
+What:		/sys/bus/most/devices/<dev>/<channel>/size_of_stream_buffer
 Date:		March 2017
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
 Description:
-		Indicates the size of a streaming buffer the current channel can
+		Indicates the size of a streaming buffer the channel can
 		handle.
 Users:
 
-What:		/sys/bus/most/devices/.../<channel>/set_number_of_buffers
+What:		/sys/bus/most/devices/<dev>/<channel>/set_number_of_buffers
 Date:		March 2017
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
 Description:
-		This is to configure the number of buffers of the current channel.
+		This is to read back the configured number of buffers of
+		the channel.
 Users:
 
-What:		/sys/bus/most/devices/.../<channel>/set_buffer_size
+What:		/sys/bus/most/devices/<dev>/<channel>/set_buffer_size
 Date:		March 2017
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
 Description:
-		This is to configure the size of a buffer of the current channel.
+		This is to read back the configured buffer size of the channel.
 Users:
 
-What:		/sys/bus/most/devices/.../<channel>/set_direction
+What:		/sys/bus/most/devices/<dev>/<channel>/set_direction
 Date:		March 2017
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
 Description:
-		This is to configure the direction of the current channel.
+		This is to read back the configured direction of the channel.
 		The following strings will be accepted:
-			'dir_tx',
-			'dir_rx'
+			'tx',
+			'rx'
 Users:
 
-What:		/sys/bus/most/devices/.../<channel>/set_datatype
+What:		/sys/bus/most/devices/<dev>/<channel>/set_datatype
 Date:		March 2017
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
 Description:
-		This is to configure the data type of the current channel.
+		This is to read back the configured data type of the channel.
 		The following strings will be accepted:
 			'control',
 			'async',
@@ -252,30 +253,31 @@ Description:
 			'isoc_avp'
 Users:
 
-What:		/sys/bus/most/devices/.../<channel>/set_subbuffer_size
+What:		/sys/bus/most/devices/<dev>/<channel>/set_subbuffer_size
 Date:		March 2017
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
 Description:
-		This is to configure the subbuffer size of the current channel.
+		This is to read back the configured subbuffer size of
+		the channel.
 Users:
 
-What:		/sys/bus/most/devices/.../<channel>/set_packets_per_xact
+What:		/sys/bus/most/devices/<dev>/<channel>/set_packets_per_xact
 Date:		March 2017
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
 Description:
-		This is to configure the number of packets per transaction of
-		the current channel. This is only needed network interface
-		controller is attached via USB.
+		This is to read back the configured number of packets per
+		transaction of the channel. This is only applicable when
+		connected via USB.
 Users:
 
-What:		/sys/bus/most/devices/.../<channel>/channel_starving
+What:		/sys/bus/most/devices/<dev>/<channel>/channel_starving
 Date:		March 2017
 KernelVersion:	4.15
 Contact:	Christian Gromm <christian.gromm@microchip.com>
 Description:
-		Indicates whether current channel ran out of buffers.
+		Indicates whether channel ran out of buffers.
 Users:
 
 What:		/sys/bus/most/drivers/most_core/components
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
