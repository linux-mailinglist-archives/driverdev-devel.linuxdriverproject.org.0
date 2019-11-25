Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBED109154
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Nov 2019 16:52:09 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9FD228671B;
	Mon, 25 Nov 2019 15:52:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J7K34JqkP+8l; Mon, 25 Nov 2019 15:52:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8BF1C86566;
	Mon, 25 Nov 2019 15:51:59 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9875B1BF3BF
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:51:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 952CF852FF
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:51:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h0wRNArgeT7w
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:51:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 64A20851E0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:51:54 +0000 (UTC)
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
IronPort-SDR: MtUJ+nKIOpVDZgBUJ+fD/jMFi1Z1xJ07l1K9YnanpkVb0tBEdXUWvXQbr+5R01huP53tVFqBPQ
 /AzV2xz1pSAy5+CrMfeKFrAarqx39S+yhj8E1nE/51wzmFCtwn85JltlrTz8thxXe/mNIc8fLD
 6A6FbfzGFiLhdAKHBGA1m1kv3cc1/N9ZdMzdipam0K4LmqSOhMk4+RGaTeYdOCPimVz8qYNX++
 dw3JB/7E4YBvqPxgqjiVFdrbjr2oGqvHA3sYtWFGIkTubmu9xmw08zC72MqG4EVB9gTpETzF9r
 TIU=
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="57842002"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Nov 2019 08:51:53 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 Nov 2019 08:51:52 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 25 Nov 2019 08:51:52 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC 6/6] staging: most: Documentation: move ABI description
 files out of staging area
Date: Mon, 25 Nov 2019 16:51:36 +0100
Message-ID: <1574697096-2942-7-git-send-email-christian.gromm@microchip.com>
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

This patch moves the ABI description fils sysfs-bus-most and
configfs-most to the kernel's documentation folder.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 Documentation/ABI/testing/configfs-most            | 196 ++++++++++++++
 Documentation/ABI/testing/sysfs-bus-most           | 295 +++++++++++++++++++++
 .../most/Documentation/ABI/configfs-most.txt       | 196 --------------
 .../most/Documentation/ABI/sysfs-bus-most.txt      | 295 ---------------------
 4 files changed, 491 insertions(+), 491 deletions(-)
 create mode 100644 Documentation/ABI/testing/configfs-most
 create mode 100644 Documentation/ABI/testing/sysfs-bus-most
 delete mode 100644 drivers/staging/most/Documentation/ABI/configfs-most.txt
 delete mode 100644 drivers/staging/most/Documentation/ABI/sysfs-bus-most.txt

diff --git a/Documentation/ABI/testing/configfs-most b/Documentation/ABI/testing/configfs-most
new file mode 100644
index 0000000..ed67a4d
--- /dev/null
+++ b/Documentation/ABI/testing/configfs-most
@@ -0,0 +1,196 @@
+What: 		/sys/kernel/config/most_<component>
+Date: 		March 8, 2019
+KernelVersion:  5.2
+Description: 	Interface is used to configure and connect device channels
+		to component drivers.
+
+		Attributes are visible only when configfs is mounted. To mount
+		configfs in /sys/kernel/config directory use:
+		# mount -t configfs none /sys/kernel/config/
+
+
+What: 		/sys/kernel/config/most_cdev/<link>
+Date: 		March 8, 2019
+KernelVersion:  5.2
+Description:
+		The attributes:
+
+		buffer_size	configure the buffer size for this channel
+
+		subbuffer_size	configure the sub-buffer size for this channel
+				(needed for synchronous and isochrnous data)
+
+
+		num_buffers	configure number of buffers used for this
+				channel
+
+		datatype	configure type of data that will travel over
+				this channel
+
+		direction	configure whether this link will be an input
+				or output
+
+		dbr_size	configure DBR data buffer size (this is used
+				for MediaLB communication only)
+
+		packets_per_xact
+				configure the number of packets that will be
+				collected from the network before being
+				transmitted via USB (this is used for USB
+				communication only)
+
+		device		name of the device the link is to be attached to
+
+		channel		name of the channel the link is to be attached to
+
+		comp_params	pass parameters needed by some components
+
+		create_link	write '1' to this attribute to trigger the
+				creation of the link. In case of speculative
+				configuration, the creation is post-poned until
+				a physical device is being attached to the bus.
+
+		destroy_link	write '1' to this attribute to destroy an
+				active link
+
+What: 		/sys/kernel/config/most_video/<link>
+Date: 		March 8, 2019
+KernelVersion:  5.2
+Description:
+		The attributes:
+
+		buffer_size	configure the buffer size for this channel
+
+		subbuffer_size	configure the sub-buffer size for this channel
+				(needed for synchronous and isochrnous data)
+
+
+		num_buffers	configure number of buffers used for this
+				channel
+
+		datatype	configure type of data that will travel over
+				this channel
+
+		direction	configure whether this link will be an input
+				or output
+
+		dbr_size	configure DBR data buffer size (this is used
+				for MediaLB communication only)
+
+		packets_per_xact
+				configure the number of packets that will be
+				collected from the network before being
+				transmitted via USB (this is used for USB
+				communication only)
+
+		device		name of the device the link is to be attached to
+
+		channel		name of the channel the link is to be attached to
+
+		comp_params	pass parameters needed by some components
+
+		create_link	write '1' to this attribute to trigger the
+				creation of the link. In case of speculative
+				configuration, the creation is post-poned until
+				a physical device is being attached to the bus.
+
+		destroy_link	write '1' to this attribute to destroy an
+				active link
+
+What: 		/sys/kernel/config/most_net/<link>
+Date: 		March 8, 2019
+KernelVersion:  5.2
+Description:
+		The attributes:
+
+		buffer_size	configure the buffer size for this channel
+
+		subbuffer_size	configure the sub-buffer size for this channel
+				(needed for synchronous and isochrnous data)
+
+
+		num_buffers	configure number of buffers used for this
+				channel
+
+		datatype	configure type of data that will travel over
+				this channel
+
+		direction	configure whether this link will be an input
+				or output
+
+		dbr_size	configure DBR data buffer size (this is used
+				for MediaLB communication only)
+
+		packets_per_xact
+				configure the number of packets that will be
+				collected from the network before being
+				transmitted via USB (this is used for USB
+				communication only)
+
+		device		name of the device the link is to be attached to
+
+		channel		name of the channel the link is to be attached to
+
+		comp_params	pass parameters needed by some components
+
+		create_link	write '1' to this attribute to trigger the
+				creation of the link. In case of speculative
+				configuration, the creation is post-poned until
+				a physical device is being attached to the bus.
+
+		destroy_link	write '1' to this attribute to destroy an
+				active link
+
+What: 		/sys/kernel/config/most_sound/<card>
+Date: 		March 8, 2019
+KernelVersion:  5.2
+Description:
+		The attributes:
+
+		create_card	write '1' to this attribute to trigger the
+                                registration of the sound card with the ALSA
+				subsystem.
+
+What: 		/sys/kernel/config/most_sound/<card>/<link>
+Date: 		March 8, 2019
+KernelVersion:  5.2
+Description:
+		The attributes:
+
+		buffer_size	configure the buffer size for this channel
+
+		subbuffer_size	configure the sub-buffer size for this channel
+				(needed for synchronous and isochrnous data)
+
+
+		num_buffers	configure number of buffers used for this
+				channel
+
+		datatype	configure type of data that will travel over
+				this channel
+
+		direction	configure whether this link will be an input
+				or output
+
+		dbr_size	configure DBR data buffer size (this is used
+				for MediaLB communication only)
+
+		packets_per_xact
+				configure the number of packets that will be
+				collected from the network before being
+				transmitted via USB (this is used for USB
+				communication only)
+
+		device		name of the device the link is to be attached to
+
+		channel		name of the channel the link is to be attached to
+
+		comp_params	pass parameters needed by some components
+
+		create_link	write '1' to this attribute to trigger the
+				creation of the link. In case of speculative
+				configuration, the creation is post-poned until
+				a physical device is being attached to the bus.
+
+		destroy_link	write '1' to this attribute to destroy an
+				active link
diff --git a/Documentation/ABI/testing/sysfs-bus-most b/Documentation/ABI/testing/sysfs-bus-most
new file mode 100644
index 0000000..6b1d06e
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-bus-most
@@ -0,0 +1,295 @@
+What:		/sys/bus/most/devices/.../description
+Date:		March 2017
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		Provides information about the interface type and the physical
+		location of the device. Hardware attached via USB, for instance,
+		might return <1-1.1:1.0>
+Users:
+
+What:		/sys/bus/most/devices/.../interface
+Date:		March 2017
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		Indicates the type of peripheral interface the device uses.
+Users:
+
+What:		/sys/bus/most/devices/.../dci
+Date:		June 2016
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		If the network interface controller is attached via USB, a dci
+		directory is created that allows applications to read and
+		write the controller's DCI registers.
+Users:
+
+What:		/sys/bus/most/devices/.../dci/arb_address
+Date:		June 2016
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		This is used to set an arbitrary DCI register address an
+		application wants to read from or write to.
+Users:
+
+What:		/sys/bus/most/devices/.../dci/arb_value
+Date:		June 2016
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		This is used to read and write the DCI register whose address
+		is stored in arb_address.
+Users:
+
+What:		/sys/bus/most/devices/.../dci/mep_eui48_hi
+Date:		June 2016
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		This is used to check and configure the MAC address.
+Users:
+
+What:		/sys/bus/most/devices/.../dci/mep_eui48_lo
+Date:		June 2016
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		This is used to check and configure the MAC address.
+Users:
+
+What:		/sys/bus/most/devices/.../dci/mep_eui48_mi
+Date:		June 2016
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		This is used to check and configure the MAC address.
+Users:
+
+What:		/sys/bus/most/devices/.../dci/mep_filter
+Date:		June 2016
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		This is used to check and configure the MEP filter address.
+Users:
+
+What:		/sys/bus/most/devices/.../dci/mep_hash0
+Date:		June 2016
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		This is used to check and configure the MEP hash table.
+Users:
+
+What:		/sys/bus/most/devices/.../dci/mep_hash1
+Date:		June 2016
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		This is used to check and configure the MEP hash table.
+Users:
+
+What:		/sys/bus/most/devices/.../dci/mep_hash2
+Date:		June 2016
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		This is used to check and configure the MEP hash table.
+Users:
+
+What:		/sys/bus/most/devices/.../dci/mep_hash3
+Date:		June 2016
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		This is used to check and configure the MEP hash table.
+Users:
+
+What:		/sys/bus/most/devices/.../dci/ni_state
+Date:		June 2016
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		Indicates the current network interface state.
+Users:
+
+What:		/sys/bus/most/devices/.../dci/node_address
+Date:		June 2016
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		Indicates the current node address.
+Users:
+
+What:		/sys/bus/most/devices/.../dci/node_position
+Date:		June 2016
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		Indicates the current node position.
+Users:
+
+What:		/sys/bus/most/devices/.../dci/packet_bandwidth
+Date:		June 2016
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		Indicates the configured packet bandwidth.
+Users:
+
+What:		/sys/bus/most/devices/.../dci/sync_ep
+Date:		June 2016
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		Triggers the controller's synchronization process for a certain
+		endpoint.
+Users:
+
+What:		/sys/bus/most/devices/.../<channel>/
+Date:		March 2017
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		For every channel of the device a directory is created, whose
+		name is dictated by the HDM. This enables an application to
+		collect information about the channel's capabilities and
+		configure it.
+Users:
+
+What:		/sys/bus/most/devices/.../<channel>/available_datatypes
+Date:		March 2017
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		Indicates the data types the current channel can transport.
+Users:
+
+What:		/sys/bus/most/devices/.../<channel>/available_directions
+Date:		March 2017
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		Indicates the directions the current channel is capable of.
+Users:
+
+What:		/sys/bus/most/devices/.../<channel>/number_of_packet_buffers
+Date:		March 2017
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		Indicates the number of packet buffers the current channel can
+		handle.
+Users:
+
+What:		/sys/bus/most/devices/.../<channel>/number_of_stream_buffers
+Date:		March 2017
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		Indicates the number of streaming buffers the current channel can
+		handle.
+Users:
+
+What:		/sys/bus/most/devices/.../<channel>/size_of_packet_buffer
+Date:		March 2017
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		Indicates the size of a packet buffer the current channel can
+		handle.
+Users:
+
+What:		/sys/bus/most/devices/.../<channel>/size_of_stream_buffer
+Date:		March 2017
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		Indicates the size of a streaming buffer the current channel can
+		handle.
+Users:
+
+What:		/sys/bus/most/devices/.../<channel>/set_number_of_buffers
+Date:		March 2017
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		This is to configure the number of buffers of the current channel.
+Users:
+
+What:		/sys/bus/most/devices/.../<channel>/set_buffer_size
+Date:		March 2017
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		This is to configure the size of a buffer of the current channel.
+Users:
+
+What:		/sys/bus/most/devices/.../<channel>/set_direction
+Date:		March 2017
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		This is to configure the direction of the current channel.
+		The following strings will be accepted:
+			'dir_tx',
+			'dir_rx'
+Users:
+
+What:		/sys/bus/most/devices/.../<channel>/set_datatype
+Date:		March 2017
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		This is to configure the data type of the current channel.
+		The following strings will be accepted:
+			'control',
+			'async',
+			'sync',
+			'isoc_avp'
+Users:
+
+What:		/sys/bus/most/devices/.../<channel>/set_subbuffer_size
+Date:		March 2017
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		This is to configure the subbuffer size of the current channel.
+Users:
+
+What:		/sys/bus/most/devices/.../<channel>/set_packets_per_xact
+Date:		March 2017
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		This is to configure the number of packets per transaction of
+		the current channel. This is only needed network interface
+		controller is attached via USB.
+Users:
+
+What:		/sys/bus/most/devices/.../<channel>/channel_starving
+Date:		March 2017
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		Indicates whether current channel ran out of buffers.
+Users:
+
+What:		/sys/bus/most/drivers/most_core/components
+Date:		March 2017
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		This is used to retrieve a list of registered components.
+Users:
+
+What:		/sys/bus/most/drivers/most_core/links
+Date:		March 2017
+KernelVersion:	4.15
+Contact:	Christian Gromm <christian.gromm@microchip.com>
+Description:
+		This is used to retrieve a list of established links.
+Users:
diff --git a/drivers/staging/most/Documentation/ABI/configfs-most.txt b/drivers/staging/most/Documentation/ABI/configfs-most.txt
deleted file mode 100644
index ed67a4d..0000000
--- a/drivers/staging/most/Documentation/ABI/configfs-most.txt
+++ /dev/null
@@ -1,196 +0,0 @@
-What: 		/sys/kernel/config/most_<component>
-Date: 		March 8, 2019
-KernelVersion:  5.2
-Description: 	Interface is used to configure and connect device channels
-		to component drivers.
-
-		Attributes are visible only when configfs is mounted. To mount
-		configfs in /sys/kernel/config directory use:
-		# mount -t configfs none /sys/kernel/config/
-
-
-What: 		/sys/kernel/config/most_cdev/<link>
-Date: 		March 8, 2019
-KernelVersion:  5.2
-Description:
-		The attributes:
-
-		buffer_size	configure the buffer size for this channel
-
-		subbuffer_size	configure the sub-buffer size for this channel
-				(needed for synchronous and isochrnous data)
-
-
-		num_buffers	configure number of buffers used for this
-				channel
-
-		datatype	configure type of data that will travel over
-				this channel
-
-		direction	configure whether this link will be an input
-				or output
-
-		dbr_size	configure DBR data buffer size (this is used
-				for MediaLB communication only)
-
-		packets_per_xact
-				configure the number of packets that will be
-				collected from the network before being
-				transmitted via USB (this is used for USB
-				communication only)
-
-		device		name of the device the link is to be attached to
-
-		channel		name of the channel the link is to be attached to
-
-		comp_params	pass parameters needed by some components
-
-		create_link	write '1' to this attribute to trigger the
-				creation of the link. In case of speculative
-				configuration, the creation is post-poned until
-				a physical device is being attached to the bus.
-
-		destroy_link	write '1' to this attribute to destroy an
-				active link
-
-What: 		/sys/kernel/config/most_video/<link>
-Date: 		March 8, 2019
-KernelVersion:  5.2
-Description:
-		The attributes:
-
-		buffer_size	configure the buffer size for this channel
-
-		subbuffer_size	configure the sub-buffer size for this channel
-				(needed for synchronous and isochrnous data)
-
-
-		num_buffers	configure number of buffers used for this
-				channel
-
-		datatype	configure type of data that will travel over
-				this channel
-
-		direction	configure whether this link will be an input
-				or output
-
-		dbr_size	configure DBR data buffer size (this is used
-				for MediaLB communication only)
-
-		packets_per_xact
-				configure the number of packets that will be
-				collected from the network before being
-				transmitted via USB (this is used for USB
-				communication only)
-
-		device		name of the device the link is to be attached to
-
-		channel		name of the channel the link is to be attached to
-
-		comp_params	pass parameters needed by some components
-
-		create_link	write '1' to this attribute to trigger the
-				creation of the link. In case of speculative
-				configuration, the creation is post-poned until
-				a physical device is being attached to the bus.
-
-		destroy_link	write '1' to this attribute to destroy an
-				active link
-
-What: 		/sys/kernel/config/most_net/<link>
-Date: 		March 8, 2019
-KernelVersion:  5.2
-Description:
-		The attributes:
-
-		buffer_size	configure the buffer size for this channel
-
-		subbuffer_size	configure the sub-buffer size for this channel
-				(needed for synchronous and isochrnous data)
-
-
-		num_buffers	configure number of buffers used for this
-				channel
-
-		datatype	configure type of data that will travel over
-				this channel
-
-		direction	configure whether this link will be an input
-				or output
-
-		dbr_size	configure DBR data buffer size (this is used
-				for MediaLB communication only)
-
-		packets_per_xact
-				configure the number of packets that will be
-				collected from the network before being
-				transmitted via USB (this is used for USB
-				communication only)
-
-		device		name of the device the link is to be attached to
-
-		channel		name of the channel the link is to be attached to
-
-		comp_params	pass parameters needed by some components
-
-		create_link	write '1' to this attribute to trigger the
-				creation of the link. In case of speculative
-				configuration, the creation is post-poned until
-				a physical device is being attached to the bus.
-
-		destroy_link	write '1' to this attribute to destroy an
-				active link
-
-What: 		/sys/kernel/config/most_sound/<card>
-Date: 		March 8, 2019
-KernelVersion:  5.2
-Description:
-		The attributes:
-
-		create_card	write '1' to this attribute to trigger the
-                                registration of the sound card with the ALSA
-				subsystem.
-
-What: 		/sys/kernel/config/most_sound/<card>/<link>
-Date: 		March 8, 2019
-KernelVersion:  5.2
-Description:
-		The attributes:
-
-		buffer_size	configure the buffer size for this channel
-
-		subbuffer_size	configure the sub-buffer size for this channel
-				(needed for synchronous and isochrnous data)
-
-
-		num_buffers	configure number of buffers used for this
-				channel
-
-		datatype	configure type of data that will travel over
-				this channel
-
-		direction	configure whether this link will be an input
-				or output
-
-		dbr_size	configure DBR data buffer size (this is used
-				for MediaLB communication only)
-
-		packets_per_xact
-				configure the number of packets that will be
-				collected from the network before being
-				transmitted via USB (this is used for USB
-				communication only)
-
-		device		name of the device the link is to be attached to
-
-		channel		name of the channel the link is to be attached to
-
-		comp_params	pass parameters needed by some components
-
-		create_link	write '1' to this attribute to trigger the
-				creation of the link. In case of speculative
-				configuration, the creation is post-poned until
-				a physical device is being attached to the bus.
-
-		destroy_link	write '1' to this attribute to destroy an
-				active link
diff --git a/drivers/staging/most/Documentation/ABI/sysfs-bus-most.txt b/drivers/staging/most/Documentation/ABI/sysfs-bus-most.txt
deleted file mode 100644
index 6b1d06e..0000000
--- a/drivers/staging/most/Documentation/ABI/sysfs-bus-most.txt
+++ /dev/null
@@ -1,295 +0,0 @@
-What:		/sys/bus/most/devices/.../description
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		Provides information about the interface type and the physical
-		location of the device. Hardware attached via USB, for instance,
-		might return <1-1.1:1.0>
-Users:
-
-What:		/sys/bus/most/devices/.../interface
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		Indicates the type of peripheral interface the device uses.
-Users:
-
-What:		/sys/bus/most/devices/.../dci
-Date:		June 2016
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		If the network interface controller is attached via USB, a dci
-		directory is created that allows applications to read and
-		write the controller's DCI registers.
-Users:
-
-What:		/sys/bus/most/devices/.../dci/arb_address
-Date:		June 2016
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is used to set an arbitrary DCI register address an
-		application wants to read from or write to.
-Users:
-
-What:		/sys/bus/most/devices/.../dci/arb_value
-Date:		June 2016
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is used to read and write the DCI register whose address
-		is stored in arb_address.
-Users:
-
-What:		/sys/bus/most/devices/.../dci/mep_eui48_hi
-Date:		June 2016
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is used to check and configure the MAC address.
-Users:
-
-What:		/sys/bus/most/devices/.../dci/mep_eui48_lo
-Date:		June 2016
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is used to check and configure the MAC address.
-Users:
-
-What:		/sys/bus/most/devices/.../dci/mep_eui48_mi
-Date:		June 2016
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is used to check and configure the MAC address.
-Users:
-
-What:		/sys/bus/most/devices/.../dci/mep_filter
-Date:		June 2016
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is used to check and configure the MEP filter address.
-Users:
-
-What:		/sys/bus/most/devices/.../dci/mep_hash0
-Date:		June 2016
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is used to check and configure the MEP hash table.
-Users:
-
-What:		/sys/bus/most/devices/.../dci/mep_hash1
-Date:		June 2016
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is used to check and configure the MEP hash table.
-Users:
-
-What:		/sys/bus/most/devices/.../dci/mep_hash2
-Date:		June 2016
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is used to check and configure the MEP hash table.
-Users:
-
-What:		/sys/bus/most/devices/.../dci/mep_hash3
-Date:		June 2016
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is used to check and configure the MEP hash table.
-Users:
-
-What:		/sys/bus/most/devices/.../dci/ni_state
-Date:		June 2016
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		Indicates the current network interface state.
-Users:
-
-What:		/sys/bus/most/devices/.../dci/node_address
-Date:		June 2016
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		Indicates the current node address.
-Users:
-
-What:		/sys/bus/most/devices/.../dci/node_position
-Date:		June 2016
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		Indicates the current node position.
-Users:
-
-What:		/sys/bus/most/devices/.../dci/packet_bandwidth
-Date:		June 2016
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		Indicates the configured packet bandwidth.
-Users:
-
-What:		/sys/bus/most/devices/.../dci/sync_ep
-Date:		June 2016
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		Triggers the controller's synchronization process for a certain
-		endpoint.
-Users:
-
-What:		/sys/bus/most/devices/.../<channel>/
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		For every channel of the device a directory is created, whose
-		name is dictated by the HDM. This enables an application to
-		collect information about the channel's capabilities and
-		configure it.
-Users:
-
-What:		/sys/bus/most/devices/.../<channel>/available_datatypes
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		Indicates the data types the current channel can transport.
-Users:
-
-What:		/sys/bus/most/devices/.../<channel>/available_directions
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		Indicates the directions the current channel is capable of.
-Users:
-
-What:		/sys/bus/most/devices/.../<channel>/number_of_packet_buffers
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		Indicates the number of packet buffers the current channel can
-		handle.
-Users:
-
-What:		/sys/bus/most/devices/.../<channel>/number_of_stream_buffers
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		Indicates the number of streaming buffers the current channel can
-		handle.
-Users:
-
-What:		/sys/bus/most/devices/.../<channel>/size_of_packet_buffer
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		Indicates the size of a packet buffer the current channel can
-		handle.
-Users:
-
-What:		/sys/bus/most/devices/.../<channel>/size_of_stream_buffer
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		Indicates the size of a streaming buffer the current channel can
-		handle.
-Users:
-
-What:		/sys/bus/most/devices/.../<channel>/set_number_of_buffers
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is to configure the number of buffers of the current channel.
-Users:
-
-What:		/sys/bus/most/devices/.../<channel>/set_buffer_size
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is to configure the size of a buffer of the current channel.
-Users:
-
-What:		/sys/bus/most/devices/.../<channel>/set_direction
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is to configure the direction of the current channel.
-		The following strings will be accepted:
-			'dir_tx',
-			'dir_rx'
-Users:
-
-What:		/sys/bus/most/devices/.../<channel>/set_datatype
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is to configure the data type of the current channel.
-		The following strings will be accepted:
-			'control',
-			'async',
-			'sync',
-			'isoc_avp'
-Users:
-
-What:		/sys/bus/most/devices/.../<channel>/set_subbuffer_size
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is to configure the subbuffer size of the current channel.
-Users:
-
-What:		/sys/bus/most/devices/.../<channel>/set_packets_per_xact
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is to configure the number of packets per transaction of
-		the current channel. This is only needed network interface
-		controller is attached via USB.
-Users:
-
-What:		/sys/bus/most/devices/.../<channel>/channel_starving
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		Indicates whether current channel ran out of buffers.
-Users:
-
-What:		/sys/bus/most/drivers/most_core/components
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is used to retrieve a list of registered components.
-Users:
-
-What:		/sys/bus/most/drivers/most_core/links
-Date:		March 2017
-KernelVersion:	4.15
-Contact:	Christian Gromm <christian.gromm@microchip.com>
-Description:
-		This is used to retrieve a list of established links.
-Users:
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
