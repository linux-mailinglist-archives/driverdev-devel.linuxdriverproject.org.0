Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A20DF1D2BE5
	for <lists+driverdev-devel@lfdr.de>; Thu, 14 May 2020 11:53:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 49FF688B89;
	Thu, 14 May 2020 09:53:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G9xS6r-k-e1P; Thu, 14 May 2020 09:53:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4784788B47;
	Thu, 14 May 2020 09:53:25 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id D03041BF342
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CCF4788B8A
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ngNMun-L4CbL
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 80EC388B69
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 14 May 2020 09:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589449990; x=1620985990;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=7sr8R+a8FhyrV5tLGE/O2dQuzK7UJ6QXJnSbaWaRDsg=;
 b=O3aFuV41qQWq61Eif5czvJET0kfe4dtu6x4Q6ycctCYXdbhvaZq4x+m2
 W8IMQz3PAzEo0TBBtklstNIK2fGwk9aR9PchEZaQXqIZ2CTQfpm0CBaCZ
 +vFn8emNy7FNKTOjnG7MzZscNgefqaKBiiQDVEA525O7tGUffV2bjgCJL
 mXKxXMZiHLLph/bYHL8J21CWKFitPTSFE84L3JsidIGFA9L4EGof9+KgG
 +A7Zg/cGFYcMrauym3nvzU3L1Iqn2yRFJwnSzKSY3b6Bz0dsQXRhsQmk+
 C8ctyD2/oS6QQ9B3wzBFbi8CfbNKiALb1EcLyH0oCKjE7BUP5Int6lCSn g==;
IronPort-SDR: OXuutMCp8Emz1+Nws1o5GmhUbzS4NwyRH6BfmY7EhmSIyBtoyXnNYn9tnzYQKDtTacBOHtA8tr
 Smxjbo/uAzZtDZ29Pt9zUOiG+9OREJBvRa87z2/EEFnUaRs9831HE+DF0iBTZxWMPG23Z8vowO
 JzsiosqQJp65QJEHPpjdiP50cDDrK4i/ko5NTgCiUf01wAypWX0FwbPnrbpG6n1rU79PxVoy/5
 10MpQvf0rSzDorUlCp3avM8k4Uf53JvV4VrhBN3NowSSYZE0elNrbelGJ7iEuTyCPskL9d575a
 OW0=
X-IronPort-AV: E=Sophos;i="5.73,390,1583218800"; d="scan'208";a="75245175"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 14 May 2020 02:53:10 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 14 May 2020 02:53:09 -0700
Received: from localhost.localdomain (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Thu, 14 May 2020 02:53:08 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH v2 8/8] Documentation: ABI: correct sysfs attribute
 description of MOST driver
Date: Thu, 14 May 2020 11:52:56 +0200
Message-ID: <1589449976-11378-9-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1589449976-11378-1-git-send-email-christian.gromm@microchip.com>
References: <1589449976-11378-1-git-send-email-christian.gromm@microchip.com>
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
