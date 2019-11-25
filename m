Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15281109156
	for <lists+driverdev-devel@lfdr.de>; Mon, 25 Nov 2019 16:52:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 96E6320554;
	Mon, 25 Nov 2019 15:52:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id InPAi93cA7dB; Mon, 25 Nov 2019 15:52:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8396720789;
	Mon, 25 Nov 2019 15:51:57 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5682F1BF3BF
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:51:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 53482852FF
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:51:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bZIzHEDj+On6
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:51:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa2.microchip.iphmx.com (esa2.microchip.iphmx.com
 [68.232.149.84])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3E3C5851E0
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 25 Nov 2019 15:51:50 +0000 (UTC)
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
IronPort-SDR: KlMrQvbOlGpWIEpg3FMaaEGHYMSBfwGURn1neMKQvQd1jTFCU5b3CdTsC2NpkSRh2h5AahiqQn
 6jn86risWq6f4MVFPP2eLZHKKsu92Z5W+bhIyTAtvaXxGj8jGvHuOA2x2kSc9meusXhq1UZBR9
 WgJhKZOqv6dUOLZj2VFHd3hS3pOpdhIBBLYi5gjIcsdvTvuZtbsMeOJKk1ScygTSpPPHnXF/7U
 H7cS3Tp/VVBHIpl2sXQ24yDYs2OjeJTY8t2N9IRGB4QRDOWDPz4Sw7p5n9xvs8iTtxoSOsBJGv
 T5A=
X-IronPort-AV: E=Sophos;i="5.69,241,1571727600"; d="scan'208";a="57841947"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 25 Nov 2019 08:51:49 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 25 Nov 2019 08:51:47 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.85.251) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Mon, 25 Nov 2019 08:51:47 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [PATCH RFC 2/6] staging: most: rename core.h to most.h
Date: Mon, 25 Nov 2019 16:51:32 +0100
Message-ID: <1574697096-2942-3-git-send-email-christian.gromm@microchip.com>
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

This patch renames the core header file core.h to most.h. The intention
behind this is to have a meaningful name once this file is moved to the
/include/linux directory.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/staging/most/cdev/cdev.c   |   2 +-
 drivers/staging/most/configfs.c    |   2 +-
 drivers/staging/most/core.c        |   2 +-
 drivers/staging/most/core.h        | 339 -------------------------------------
 drivers/staging/most/dim2/dim2.c   |   2 +-
 drivers/staging/most/i2c/i2c.c     |   2 +-
 drivers/staging/most/most.h        | 339 +++++++++++++++++++++++++++++++++++++
 drivers/staging/most/net/net.c     |   2 +-
 drivers/staging/most/sound/sound.c |   2 +-
 drivers/staging/most/usb/usb.c     |   2 +-
 drivers/staging/most/video/video.c |   2 +-
 11 files changed, 348 insertions(+), 348 deletions(-)
 delete mode 100644 drivers/staging/most/core.h
 create mode 100644 drivers/staging/most/most.h

diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
index f880147..df4cb5a 100644
--- a/drivers/staging/most/cdev/cdev.c
+++ b/drivers/staging/most/cdev/cdev.c
@@ -16,7 +16,7 @@
 #include <linux/kfifo.h>
 #include <linux/uaccess.h>
 #include <linux/idr.h>
-#include "most/core.h"
+#include "most/most.h"
 
 #define CHRDEV_REGION_SIZE 50
 
diff --git a/drivers/staging/most/configfs.c b/drivers/staging/most/configfs.c
index 34a9fb5..e17d846 100644
--- a/drivers/staging/most/configfs.c
+++ b/drivers/staging/most/configfs.c
@@ -10,7 +10,7 @@
 #include <linux/slab.h>
 #include <linux/init.h>
 #include <linux/configfs.h>
-#include <most/core.h>
+#include <most/most.h>
 
 struct mdev_link {
 	struct config_item item;
diff --git a/drivers/staging/most/core.c b/drivers/staging/most/core.c
index 51a6b41..e32030c 100644
--- a/drivers/staging/most/core.c
+++ b/drivers/staging/most/core.c
@@ -21,7 +21,7 @@
 #include <linux/kthread.h>
 #include <linux/dma-mapping.h>
 #include <linux/idr.h>
-#include <most/core.h>
+#include <most/most.h>
 
 #define MAX_CHANNELS	64
 #define STRING_SIZE	80
diff --git a/drivers/staging/most/core.h b/drivers/staging/most/core.h
deleted file mode 100644
index 1380e75..0000000
--- a/drivers/staging/most/core.h
+++ /dev/null
@@ -1,339 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-/*
- * most.h - API for component and adapter drivers
- *
- * Copyright (C) 2013-2015, Microchip Technology Germany II GmbH & Co. KG
- */
-
-#ifndef __MOST_CORE_H__
-#define __MOST_CORE_H__
-
-#include <linux/types.h>
-#include <linux/device.h>
-
-struct module;
-struct interface_private;
-
-/**
- * Interface type
- */
-enum most_interface_type {
-	ITYPE_LOOPBACK = 1,
-	ITYPE_I2C,
-	ITYPE_I2S,
-	ITYPE_TSI,
-	ITYPE_HBI,
-	ITYPE_MEDIALB_DIM,
-	ITYPE_MEDIALB_DIM2,
-	ITYPE_USB,
-	ITYPE_PCIE
-};
-
-/**
- * Channel direction.
- */
-enum most_channel_direction {
-	MOST_CH_RX = 1 << 0,
-	MOST_CH_TX = 1 << 1,
-};
-
-/**
- * Channel data type.
- */
-enum most_channel_data_type {
-	MOST_CH_CONTROL = 1 << 0,
-	MOST_CH_ASYNC = 1 << 1,
-	MOST_CH_ISOC = 1 << 2,
-	MOST_CH_SYNC = 1 << 5,
-};
-
-enum mbo_status_flags {
-	/* MBO was processed successfully (data was send or received )*/
-	MBO_SUCCESS = 0,
-	/* The MBO contains wrong or missing information.  */
-	MBO_E_INVAL,
-	/* MBO was completed as HDM Channel will be closed */
-	MBO_E_CLOSE,
-};
-
-/**
- * struct most_channel_capability - Channel capability
- * @direction: Supported channel directions.
- * The value is bitwise OR-combination of the values from the
- * enumeration most_channel_direction. Zero is allowed value and means
- * "channel may not be used".
- * @data_type: Supported channel data types.
- * The value is bitwise OR-combination of the values from the
- * enumeration most_channel_data_type. Zero is allowed value and means
- * "channel may not be used".
- * @num_buffers_packet: Maximum number of buffers supported by this channel
- * for packet data types (Async,Control,QoS)
- * @buffer_size_packet: Maximum buffer size supported by this channel
- * for packet data types (Async,Control,QoS)
- * @num_buffers_streaming: Maximum number of buffers supported by this channel
- * for streaming data types (Sync,AV Packetized)
- * @buffer_size_streaming: Maximum buffer size supported by this channel
- * for streaming data types (Sync,AV Packetized)
- * @name_suffix: Optional suffix providean by an HDM that is attached to the
- * regular channel name.
- *
- * Describes the capabilities of a MOST channel like supported Data Types
- * and directions. This information is provided by an HDM for the MostCore.
- *
- * The Core creates read only sysfs attribute files in
- * /sys/devices/most/mdev#/<channel>/ with the
- * following attributes:
- *	-available_directions
- *	-available_datatypes
- *	-number_of_packet_buffers
- *	-number_of_stream_buffers
- *	-size_of_packet_buffer
- *	-size_of_stream_buffer
- * where content of each file is a string with all supported properties of this
- * very channel attribute.
- */
-struct most_channel_capability {
-	u16 direction;
-	u16 data_type;
-	u16 num_buffers_packet;
-	u16 buffer_size_packet;
-	u16 num_buffers_streaming;
-	u16 buffer_size_streaming;
-	const char *name_suffix;
-};
-
-/**
- * struct most_channel_config - stores channel configuration
- * @direction: direction of the channel
- * @data_type: data type travelling over this channel
- * @num_buffers: number of buffers
- * @buffer_size: size of a buffer for AIM.
- * Buffer size may be cutted down by HDM in a configure callback
- * to match to a given interface and channel type.
- * @extra_len: additional buffer space for internal HDM purposes like padding.
- * May be set by HDM in a configure callback if needed.
- * @subbuffer_size: size of a subbuffer
- * @packets_per_xact: number of MOST frames that are packet inside one USB
- *		      packet. This is USB specific
- *
- * Describes the configuration for a MOST channel. This information is
- * provided from the MostCore to a HDM (like the Medusa PCIe Interface) as a
- * parameter of the "configure" function call.
- */
-struct most_channel_config {
-	enum most_channel_direction direction;
-	enum most_channel_data_type data_type;
-	u16 num_buffers;
-	u16 buffer_size;
-	u16 extra_len;
-	u16 subbuffer_size;
-	u16 packets_per_xact;
-	u16 dbr_size;
-};
-
-/*
- * struct mbo - MOST Buffer Object.
- * @context: context for core completion handler
- * @priv: private data for HDM
- *
- *	public: documented fields that are used for the communications
- *	between MostCore and HDMs
- *
- * @list: list head for use by the mbo's current owner
- * @ifp: (in) associated interface instance
- * @num_buffers_ptr: amount of pool buffers
- * @hdm_channel_id: (in) HDM channel instance
- * @virt_address: (in) kernel virtual address of the buffer
- * @bus_address: (in) bus address of the buffer
- * @buffer_length: (in) buffer payload length
- * @processed_length: (out) processed length
- * @status: (out) transfer status
- * @complete: (in) completion routine
- *
- * The core allocates and initializes the MBO.
- *
- * The HDM receives MBO for transfer from the core with the call to enqueue().
- * The HDM copies the data to- or from the buffer depending on configured
- * channel direction, set "processed_length" and "status" and completes
- * the transfer procedure by calling the completion routine.
- *
- * Finally, the MBO is being deallocated or recycled for further
- * transfers of the same or a different HDM.
- *
- * Directions of usage:
- * The core driver should never access any MBO fields (even if marked
- * as "public") while the MBO is owned by an HDM. The ownership starts with
- * the call of enqueue() and ends with the call of its complete() routine.
- *
- *					II.
- * Every HDM attached to the core driver _must_ ensure that it returns any MBO
- * it owns (due to a previous call to enqueue() by the core driver) before it
- * de-registers an interface or gets unloaded from the kernel. If this direction
- * is violated memory leaks will occur, since the core driver does _not_ track
- * MBOs it is currently not in control of.
- *
- */
-struct mbo {
-	void *context;
-	void *priv;
-	struct list_head list;
-	struct most_interface *ifp;
-	int *num_buffers_ptr;
-	u16 hdm_channel_id;
-	void *virt_address;
-	dma_addr_t bus_address;
-	u16 buffer_length;
-	u16 processed_length;
-	enum mbo_status_flags status;
-	void (*complete)(struct mbo *mbo);
-};
-
-/**
- * Interface instance description.
- *
- * Describes an interface of a MOST device the core driver is bound to.
- * This structure is allocated and initialized in the HDM. MostCore may not
- * modify this structure.
- *
- * @dev: the actual device
- * @mod: module
- * @interface Interface type. \sa most_interface_type.
- * @description PRELIMINARY.
- *   Unique description of the device instance from point of view of the
- *   interface in free text form (ASCII).
- *   It may be a hexadecimal presentation of the memory address for the MediaLB
- *   IP or USB device ID with USB properties for USB interface, etc.
- * @num_channels Number of channels and size of the channel_vector.
- * @channel_vector Properties of the channels.
- *   Array index represents channel ID by the driver.
- * @configure Callback to change data type for the channel of the
- *   interface instance. May be zero if the instance of the interface is not
- *   configurable. Parameter channel_config describes direction and data
- *   type for the channel, configured by the higher level. The content of
- * @enqueue Delivers MBO to the HDM for processing.
- *   After HDM completes Rx- or Tx- operation the processed MBO shall
- *   be returned back to the MostCore using completion routine.
- *   The reason to get the MBO delivered from the MostCore after the channel
- *   is poisoned is the re-opening of the channel by the application.
- *   In this case the HDM shall hold MBOs and service the channel as usual.
- *   The HDM must be able to hold at least one MBO for each channel.
- *   The callback returns a negative value on error, otherwise 0.
- * @poison_channel Informs HDM about closing the channel. The HDM shall
- *   cancel all transfers and synchronously or asynchronously return
- *   all enqueued for this channel MBOs using the completion routine.
- *   The callback returns a negative value on error, otherwise 0.
- * @request_netinfo: triggers retrieving of network info from the HDM by
- *   means of "Message exchange over MDP/MEP"
- *   The call of the function request_netinfo with the parameter on_netinfo as
- *   NULL prohibits use of the previously obtained function pointer.
- * @priv Private field used by mostcore to store context information.
- */
-struct most_interface {
-	struct device dev;
-	struct device *driver_dev;
-	struct module *mod;
-	enum most_interface_type interface;
-	const char *description;
-	unsigned int num_channels;
-	struct most_channel_capability *channel_vector;
-	void *(*dma_alloc)(struct mbo *mbo, u32 size);
-	void (*dma_free)(struct mbo *mbo, u32 size);
-	int (*configure)(struct most_interface *iface, int channel_idx,
-			 struct most_channel_config *channel_config);
-	int (*enqueue)(struct most_interface *iface, int channel_idx,
-		       struct mbo *mbo);
-	int (*poison_channel)(struct most_interface *iface, int channel_idx);
-	void (*request_netinfo)(struct most_interface *iface, int channel_idx,
-				void (*on_netinfo)(struct most_interface *iface,
-						   unsigned char link_stat,
-						   unsigned char *mac_addr));
-	void *priv;
-	struct interface_private *p;
-};
-
-#define to_most_interface(d) container_of(d, struct most_interface, dev)
-
-/**
- * struct core_component - identifies a loadable component for the mostcore
- * @list: list_head
- * @name: component name
- * @probe_channel: function for core to notify driver about channel connection
- * @disconnect_channel: callback function to disconnect a certain channel
- * @rx_completion: completion handler for received packets
- * @tx_completion: completion handler for transmitted packets
- */
-struct core_component {
-	struct list_head list;
-	const char *name;
-	struct module *mod;
-	int (*probe_channel)(struct most_interface *iface, int channel_idx,
-			     struct most_channel_config *cfg, char *name,
-			     char *param);
-	int (*disconnect_channel)(struct most_interface *iface,
-				  int channel_idx);
-	int (*rx_completion)(struct mbo *mbo);
-	int (*tx_completion)(struct most_interface *iface, int channel_idx);
-	int (*cfg_complete)(void);
-};
-
-/**
- * most_register_interface - Registers instance of the interface.
- * @iface: Pointer to the interface instance description.
- *
- * Returns a pointer to the kobject of the generated instance.
- *
- * Note: HDM has to ensure that any reference held on the kobj is
- * released before deregistering the interface.
- */
-int most_register_interface(struct most_interface *iface);
-
-/**
- * Deregisters instance of the interface.
- * @intf_instance Pointer to the interface instance description.
- */
-void most_deregister_interface(struct most_interface *iface);
-void most_submit_mbo(struct mbo *mbo);
-
-/**
- * most_stop_enqueue - prevents core from enqueing MBOs
- * @iface: pointer to interface
- * @channel_idx: channel index
- */
-void most_stop_enqueue(struct most_interface *iface, int channel_idx);
-
-/**
- * most_resume_enqueue - allow core to enqueue MBOs again
- * @iface: pointer to interface
- * @channel_idx: channel index
- *
- * This clears the enqueue halt flag and enqueues all MBOs currently
- * in wait fifo.
- */
-void most_resume_enqueue(struct most_interface *iface, int channel_idx);
-int most_register_component(struct core_component *comp);
-int most_deregister_component(struct core_component *comp);
-struct mbo *most_get_mbo(struct most_interface *iface, int channel_idx,
-			 struct core_component *comp);
-void most_put_mbo(struct mbo *mbo);
-int channel_has_mbo(struct most_interface *iface, int channel_idx,
-		    struct core_component *comp);
-int most_start_channel(struct most_interface *iface, int channel_idx,
-		       struct core_component *comp);
-int most_stop_channel(struct most_interface *iface, int channel_idx,
-		      struct core_component *comp);
-int __init configfs_init(void);
-int most_register_configfs_subsys(struct core_component *comp);
-void most_deregister_configfs_subsys(struct core_component *comp);
-int most_add_link(char *mdev, char *mdev_ch, char *comp_name, char *link_name,
-		  char *comp_param);
-int most_remove_link(char *mdev, char *mdev_ch, char *comp_name);
-int most_set_cfg_buffer_size(char *mdev, char *mdev_ch, u16 val);
-int most_set_cfg_subbuffer_size(char *mdev, char *mdev_ch, u16 val);
-int most_set_cfg_dbr_size(char *mdev, char *mdev_ch, u16 val);
-int most_set_cfg_num_buffers(char *mdev, char *mdev_ch, u16 val);
-int most_set_cfg_datatype(char *mdev, char *mdev_ch, char *buf);
-int most_set_cfg_direction(char *mdev, char *mdev_ch, char *buf);
-int most_set_cfg_packets_xact(char *mdev, char *mdev_ch, u16 val);
-int most_cfg_complete(char *comp_name);
-void most_interface_register_notify(const char *mdev_name);
-#endif /* MOST_CORE_H_ */
diff --git a/drivers/staging/most/dim2/dim2.c b/drivers/staging/most/dim2/dim2.c
index 64c9791..e15e847 100644
--- a/drivers/staging/most/dim2/dim2.c
+++ b/drivers/staging/most/dim2/dim2.c
@@ -21,7 +21,7 @@
 #include <linux/sched.h>
 #include <linux/kthread.h>
 
-#include "most/core.h"
+#include "most/most.h"
 #include "hal.h"
 #include "errors.h"
 #include "sysfs.h"
diff --git a/drivers/staging/most/i2c/i2c.c b/drivers/staging/most/i2c/i2c.c
index 4a4fc10..d4606ac 100644
--- a/drivers/staging/most/i2c/i2c.c
+++ b/drivers/staging/most/i2c/i2c.c
@@ -14,7 +14,7 @@
 #include <linux/interrupt.h>
 #include <linux/err.h>
 
-#include "most/core.h"
+#include "most/most.h"
 
 enum { CH_RX, CH_TX, NUM_CHANNELS };
 
diff --git a/drivers/staging/most/most.h b/drivers/staging/most/most.h
new file mode 100644
index 0000000..1380e75
--- /dev/null
+++ b/drivers/staging/most/most.h
@@ -0,0 +1,339 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * most.h - API for component and adapter drivers
+ *
+ * Copyright (C) 2013-2015, Microchip Technology Germany II GmbH & Co. KG
+ */
+
+#ifndef __MOST_CORE_H__
+#define __MOST_CORE_H__
+
+#include <linux/types.h>
+#include <linux/device.h>
+
+struct module;
+struct interface_private;
+
+/**
+ * Interface type
+ */
+enum most_interface_type {
+	ITYPE_LOOPBACK = 1,
+	ITYPE_I2C,
+	ITYPE_I2S,
+	ITYPE_TSI,
+	ITYPE_HBI,
+	ITYPE_MEDIALB_DIM,
+	ITYPE_MEDIALB_DIM2,
+	ITYPE_USB,
+	ITYPE_PCIE
+};
+
+/**
+ * Channel direction.
+ */
+enum most_channel_direction {
+	MOST_CH_RX = 1 << 0,
+	MOST_CH_TX = 1 << 1,
+};
+
+/**
+ * Channel data type.
+ */
+enum most_channel_data_type {
+	MOST_CH_CONTROL = 1 << 0,
+	MOST_CH_ASYNC = 1 << 1,
+	MOST_CH_ISOC = 1 << 2,
+	MOST_CH_SYNC = 1 << 5,
+};
+
+enum mbo_status_flags {
+	/* MBO was processed successfully (data was send or received )*/
+	MBO_SUCCESS = 0,
+	/* The MBO contains wrong or missing information.  */
+	MBO_E_INVAL,
+	/* MBO was completed as HDM Channel will be closed */
+	MBO_E_CLOSE,
+};
+
+/**
+ * struct most_channel_capability - Channel capability
+ * @direction: Supported channel directions.
+ * The value is bitwise OR-combination of the values from the
+ * enumeration most_channel_direction. Zero is allowed value and means
+ * "channel may not be used".
+ * @data_type: Supported channel data types.
+ * The value is bitwise OR-combination of the values from the
+ * enumeration most_channel_data_type. Zero is allowed value and means
+ * "channel may not be used".
+ * @num_buffers_packet: Maximum number of buffers supported by this channel
+ * for packet data types (Async,Control,QoS)
+ * @buffer_size_packet: Maximum buffer size supported by this channel
+ * for packet data types (Async,Control,QoS)
+ * @num_buffers_streaming: Maximum number of buffers supported by this channel
+ * for streaming data types (Sync,AV Packetized)
+ * @buffer_size_streaming: Maximum buffer size supported by this channel
+ * for streaming data types (Sync,AV Packetized)
+ * @name_suffix: Optional suffix providean by an HDM that is attached to the
+ * regular channel name.
+ *
+ * Describes the capabilities of a MOST channel like supported Data Types
+ * and directions. This information is provided by an HDM for the MostCore.
+ *
+ * The Core creates read only sysfs attribute files in
+ * /sys/devices/most/mdev#/<channel>/ with the
+ * following attributes:
+ *	-available_directions
+ *	-available_datatypes
+ *	-number_of_packet_buffers
+ *	-number_of_stream_buffers
+ *	-size_of_packet_buffer
+ *	-size_of_stream_buffer
+ * where content of each file is a string with all supported properties of this
+ * very channel attribute.
+ */
+struct most_channel_capability {
+	u16 direction;
+	u16 data_type;
+	u16 num_buffers_packet;
+	u16 buffer_size_packet;
+	u16 num_buffers_streaming;
+	u16 buffer_size_streaming;
+	const char *name_suffix;
+};
+
+/**
+ * struct most_channel_config - stores channel configuration
+ * @direction: direction of the channel
+ * @data_type: data type travelling over this channel
+ * @num_buffers: number of buffers
+ * @buffer_size: size of a buffer for AIM.
+ * Buffer size may be cutted down by HDM in a configure callback
+ * to match to a given interface and channel type.
+ * @extra_len: additional buffer space for internal HDM purposes like padding.
+ * May be set by HDM in a configure callback if needed.
+ * @subbuffer_size: size of a subbuffer
+ * @packets_per_xact: number of MOST frames that are packet inside one USB
+ *		      packet. This is USB specific
+ *
+ * Describes the configuration for a MOST channel. This information is
+ * provided from the MostCore to a HDM (like the Medusa PCIe Interface) as a
+ * parameter of the "configure" function call.
+ */
+struct most_channel_config {
+	enum most_channel_direction direction;
+	enum most_channel_data_type data_type;
+	u16 num_buffers;
+	u16 buffer_size;
+	u16 extra_len;
+	u16 subbuffer_size;
+	u16 packets_per_xact;
+	u16 dbr_size;
+};
+
+/*
+ * struct mbo - MOST Buffer Object.
+ * @context: context for core completion handler
+ * @priv: private data for HDM
+ *
+ *	public: documented fields that are used for the communications
+ *	between MostCore and HDMs
+ *
+ * @list: list head for use by the mbo's current owner
+ * @ifp: (in) associated interface instance
+ * @num_buffers_ptr: amount of pool buffers
+ * @hdm_channel_id: (in) HDM channel instance
+ * @virt_address: (in) kernel virtual address of the buffer
+ * @bus_address: (in) bus address of the buffer
+ * @buffer_length: (in) buffer payload length
+ * @processed_length: (out) processed length
+ * @status: (out) transfer status
+ * @complete: (in) completion routine
+ *
+ * The core allocates and initializes the MBO.
+ *
+ * The HDM receives MBO for transfer from the core with the call to enqueue().
+ * The HDM copies the data to- or from the buffer depending on configured
+ * channel direction, set "processed_length" and "status" and completes
+ * the transfer procedure by calling the completion routine.
+ *
+ * Finally, the MBO is being deallocated or recycled for further
+ * transfers of the same or a different HDM.
+ *
+ * Directions of usage:
+ * The core driver should never access any MBO fields (even if marked
+ * as "public") while the MBO is owned by an HDM. The ownership starts with
+ * the call of enqueue() and ends with the call of its complete() routine.
+ *
+ *					II.
+ * Every HDM attached to the core driver _must_ ensure that it returns any MBO
+ * it owns (due to a previous call to enqueue() by the core driver) before it
+ * de-registers an interface or gets unloaded from the kernel. If this direction
+ * is violated memory leaks will occur, since the core driver does _not_ track
+ * MBOs it is currently not in control of.
+ *
+ */
+struct mbo {
+	void *context;
+	void *priv;
+	struct list_head list;
+	struct most_interface *ifp;
+	int *num_buffers_ptr;
+	u16 hdm_channel_id;
+	void *virt_address;
+	dma_addr_t bus_address;
+	u16 buffer_length;
+	u16 processed_length;
+	enum mbo_status_flags status;
+	void (*complete)(struct mbo *mbo);
+};
+
+/**
+ * Interface instance description.
+ *
+ * Describes an interface of a MOST device the core driver is bound to.
+ * This structure is allocated and initialized in the HDM. MostCore may not
+ * modify this structure.
+ *
+ * @dev: the actual device
+ * @mod: module
+ * @interface Interface type. \sa most_interface_type.
+ * @description PRELIMINARY.
+ *   Unique description of the device instance from point of view of the
+ *   interface in free text form (ASCII).
+ *   It may be a hexadecimal presentation of the memory address for the MediaLB
+ *   IP or USB device ID with USB properties for USB interface, etc.
+ * @num_channels Number of channels and size of the channel_vector.
+ * @channel_vector Properties of the channels.
+ *   Array index represents channel ID by the driver.
+ * @configure Callback to change data type for the channel of the
+ *   interface instance. May be zero if the instance of the interface is not
+ *   configurable. Parameter channel_config describes direction and data
+ *   type for the channel, configured by the higher level. The content of
+ * @enqueue Delivers MBO to the HDM for processing.
+ *   After HDM completes Rx- or Tx- operation the processed MBO shall
+ *   be returned back to the MostCore using completion routine.
+ *   The reason to get the MBO delivered from the MostCore after the channel
+ *   is poisoned is the re-opening of the channel by the application.
+ *   In this case the HDM shall hold MBOs and service the channel as usual.
+ *   The HDM must be able to hold at least one MBO for each channel.
+ *   The callback returns a negative value on error, otherwise 0.
+ * @poison_channel Informs HDM about closing the channel. The HDM shall
+ *   cancel all transfers and synchronously or asynchronously return
+ *   all enqueued for this channel MBOs using the completion routine.
+ *   The callback returns a negative value on error, otherwise 0.
+ * @request_netinfo: triggers retrieving of network info from the HDM by
+ *   means of "Message exchange over MDP/MEP"
+ *   The call of the function request_netinfo with the parameter on_netinfo as
+ *   NULL prohibits use of the previously obtained function pointer.
+ * @priv Private field used by mostcore to store context information.
+ */
+struct most_interface {
+	struct device dev;
+	struct device *driver_dev;
+	struct module *mod;
+	enum most_interface_type interface;
+	const char *description;
+	unsigned int num_channels;
+	struct most_channel_capability *channel_vector;
+	void *(*dma_alloc)(struct mbo *mbo, u32 size);
+	void (*dma_free)(struct mbo *mbo, u32 size);
+	int (*configure)(struct most_interface *iface, int channel_idx,
+			 struct most_channel_config *channel_config);
+	int (*enqueue)(struct most_interface *iface, int channel_idx,
+		       struct mbo *mbo);
+	int (*poison_channel)(struct most_interface *iface, int channel_idx);
+	void (*request_netinfo)(struct most_interface *iface, int channel_idx,
+				void (*on_netinfo)(struct most_interface *iface,
+						   unsigned char link_stat,
+						   unsigned char *mac_addr));
+	void *priv;
+	struct interface_private *p;
+};
+
+#define to_most_interface(d) container_of(d, struct most_interface, dev)
+
+/**
+ * struct core_component - identifies a loadable component for the mostcore
+ * @list: list_head
+ * @name: component name
+ * @probe_channel: function for core to notify driver about channel connection
+ * @disconnect_channel: callback function to disconnect a certain channel
+ * @rx_completion: completion handler for received packets
+ * @tx_completion: completion handler for transmitted packets
+ */
+struct core_component {
+	struct list_head list;
+	const char *name;
+	struct module *mod;
+	int (*probe_channel)(struct most_interface *iface, int channel_idx,
+			     struct most_channel_config *cfg, char *name,
+			     char *param);
+	int (*disconnect_channel)(struct most_interface *iface,
+				  int channel_idx);
+	int (*rx_completion)(struct mbo *mbo);
+	int (*tx_completion)(struct most_interface *iface, int channel_idx);
+	int (*cfg_complete)(void);
+};
+
+/**
+ * most_register_interface - Registers instance of the interface.
+ * @iface: Pointer to the interface instance description.
+ *
+ * Returns a pointer to the kobject of the generated instance.
+ *
+ * Note: HDM has to ensure that any reference held on the kobj is
+ * released before deregistering the interface.
+ */
+int most_register_interface(struct most_interface *iface);
+
+/**
+ * Deregisters instance of the interface.
+ * @intf_instance Pointer to the interface instance description.
+ */
+void most_deregister_interface(struct most_interface *iface);
+void most_submit_mbo(struct mbo *mbo);
+
+/**
+ * most_stop_enqueue - prevents core from enqueing MBOs
+ * @iface: pointer to interface
+ * @channel_idx: channel index
+ */
+void most_stop_enqueue(struct most_interface *iface, int channel_idx);
+
+/**
+ * most_resume_enqueue - allow core to enqueue MBOs again
+ * @iface: pointer to interface
+ * @channel_idx: channel index
+ *
+ * This clears the enqueue halt flag and enqueues all MBOs currently
+ * in wait fifo.
+ */
+void most_resume_enqueue(struct most_interface *iface, int channel_idx);
+int most_register_component(struct core_component *comp);
+int most_deregister_component(struct core_component *comp);
+struct mbo *most_get_mbo(struct most_interface *iface, int channel_idx,
+			 struct core_component *comp);
+void most_put_mbo(struct mbo *mbo);
+int channel_has_mbo(struct most_interface *iface, int channel_idx,
+		    struct core_component *comp);
+int most_start_channel(struct most_interface *iface, int channel_idx,
+		       struct core_component *comp);
+int most_stop_channel(struct most_interface *iface, int channel_idx,
+		      struct core_component *comp);
+int __init configfs_init(void);
+int most_register_configfs_subsys(struct core_component *comp);
+void most_deregister_configfs_subsys(struct core_component *comp);
+int most_add_link(char *mdev, char *mdev_ch, char *comp_name, char *link_name,
+		  char *comp_param);
+int most_remove_link(char *mdev, char *mdev_ch, char *comp_name);
+int most_set_cfg_buffer_size(char *mdev, char *mdev_ch, u16 val);
+int most_set_cfg_subbuffer_size(char *mdev, char *mdev_ch, u16 val);
+int most_set_cfg_dbr_size(char *mdev, char *mdev_ch, u16 val);
+int most_set_cfg_num_buffers(char *mdev, char *mdev_ch, u16 val);
+int most_set_cfg_datatype(char *mdev, char *mdev_ch, char *buf);
+int most_set_cfg_direction(char *mdev, char *mdev_ch, char *buf);
+int most_set_cfg_packets_xact(char *mdev, char *mdev_ch, u16 val);
+int most_cfg_complete(char *comp_name);
+void most_interface_register_notify(const char *mdev_name);
+#endif /* MOST_CORE_H_ */
diff --git a/drivers/staging/most/net/net.c b/drivers/staging/most/net/net.c
index 6cab1bb..34d93c4 100644
--- a/drivers/staging/most/net/net.c
+++ b/drivers/staging/most/net/net.c
@@ -15,7 +15,7 @@
 #include <linux/list.h>
 #include <linux/wait.h>
 #include <linux/kobject.h>
-#include "most/core.h"
+#include "most/most.h"
 
 #define MEP_HDR_LEN 8
 #define MDP_HDR_LEN 16
diff --git a/drivers/staging/most/sound/sound.c b/drivers/staging/most/sound/sound.c
index 1359f28..4b00c35 100644
--- a/drivers/staging/most/sound/sound.c
+++ b/drivers/staging/most/sound/sound.c
@@ -17,7 +17,7 @@
 #include <sound/pcm_params.h>
 #include <linux/sched.h>
 #include <linux/kthread.h>
-#include <most/core.h>
+#include <most/most.h>
 
 #define DRIVER_NAME "sound"
 #define STRING_SIZE	80
diff --git a/drivers/staging/most/usb/usb.c b/drivers/staging/most/usb/usb.c
index 360cb5b..69756ca 100644
--- a/drivers/staging/most/usb/usb.c
+++ b/drivers/staging/most/usb/usb.c
@@ -23,7 +23,7 @@
 #include <linux/dma-mapping.h>
 #include <linux/etherdevice.h>
 #include <linux/uaccess.h>
-#include "most/core.h"
+#include "most/most.h"
 
 #define USB_MTU			512
 #define NO_ISOCHRONOUS_URB	0
diff --git a/drivers/staging/most/video/video.c b/drivers/staging/most/video/video.c
index 10c1ef7..b75ccc8 100644
--- a/drivers/staging/most/video/video.c
+++ b/drivers/staging/most/video/video.c
@@ -21,7 +21,7 @@
 #include <media/v4l2-ctrls.h>
 #include <media/v4l2-fh.h>
 
-#include "most/core.h"
+#include "most/most.h"
 
 #define V4L2_CMP_MAX_INPUT  1
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
