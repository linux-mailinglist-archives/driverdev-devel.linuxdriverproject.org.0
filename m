Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CD71CD8CB
	for <lists+driverdev-devel@lfdr.de>; Mon, 11 May 2020 13:47:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id E04668452D;
	Mon, 11 May 2020 11:47:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lhEJlEacPM4w; Mon, 11 May 2020 11:47:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id B5D8D85F78;
	Mon, 11 May 2020 11:47:19 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE7B51BF3F4
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 May 2020 11:47:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C7A8120349
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 May 2020 11:47:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SnLoPJqF5O3k
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 May 2020 11:47:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by silver.osuosl.org (Postfix) with ESMTPS id BF62B20020
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 11 May 2020 11:47:15 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1614420735;
 Mon, 11 May 2020 11:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589197635;
 bh=coWtS0LLhHR/HXiuPN4MWL0ZX8G+ckHAvWO3GJZoC68=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tEEH/PwL8ijXxDhwcfMnD2zvG/a7kdmA19ZvKv4yyH6zEYBAzx8l8e3W2yxW9HBwW
 8QyHc4B1rEOECwu06iYA8CFQaZtWTbtmE5yokuXyT8IqR5oEQh2Yf6Sq1LuY34Nhbg
 rlecQ29eeRMAol5cHfAbLdccr1qulRj6KqL9ce38=
Date: Mon, 11 May 2020 13:47:13 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Christian Gromm <christian.gromm@microchip.com>
Subject: Re: [PATCH RFC] drivers: most: add USB adapter driver
Message-ID: <20200511114713.GA1671075@kroah.com>
References: <1589190675-21145-1-git-send-email-christian.gromm@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589190675-21145-1-git-send-email-christian.gromm@microchip.com>
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
Cc: driverdev-devel@linuxdriverproject.org, linux-usb@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

On Mon, May 11, 2020 at 11:51:15AM +0200, Christian Gromm wrote:
> This patch adds the MOST USB adapter driver to the stable branch. This is
> a follow-up to commit <b276527>.

I do not understand the "a follow-up..." sentance.  Always use the
format of:
	b27652753918 ("staging: most: move core files out of the staging area")
when writing kernel commits in changelogs.

Also, that commit doesn't really mean anything here, this is a
stand-alone driver for the most subsystem.  This changelog needs work.

> 
> Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
> ---
>  drivers/most/Kconfig          |    6 +
>  drivers/most/Makefile         |    2 +
>  drivers/most/usb/Kconfig      |   14 +
>  drivers/most/usb/Makefile     |    4 +
>  drivers/most/usb/usb.c        | 1262 +++++++++++++++++++++++++++++++++++++++++

Why not just call this file most-usb.c so you don't have to do the
2-step Makefile work.  Also, why a whole subdir for a single .c file?

>  drivers/staging/most/Kconfig  |    2 -
>  drivers/staging/most/Makefile |    1 -

Why touch the staging directory for this patch?  We can delete the old
driver after this one is merged, no need for that here.

> diff --git a/drivers/most/usb/usb.c b/drivers/most/usb/usb.c
> new file mode 100644
> index 0000000..daa5e4b
> --- /dev/null
> +++ b/drivers/most/usb/usb.c
> @@ -0,0 +1,1262 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * usb.c - Hardware dependent module for USB
> + *
> + * Copyright (C) 2013-2015 Microchip Technology Germany II GmbH & Co. KG
> + */
> +
> +#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt

You shouldn't need any pr_*() calls because this is a driver and you
always have access to the struct device * it controls.  So drop this and
fix up the remaining pr_*() calls to be dev_*() instead.

> +#include <linux/module.h>
> +#include <linux/fs.h>
> +#include <linux/usb.h>
> +#include <linux/slab.h>
> +#include <linux/init.h>
> +#include <linux/cdev.h>
> +#include <linux/device.h>
> +#include <linux/list.h>
> +#include <linux/completion.h>
> +#include <linux/mutex.h>
> +#include <linux/spinlock.h>
> +#include <linux/interrupt.h>
> +#include <linux/workqueue.h>
> +#include <linux/sysfs.h>
> +#include <linux/dma-mapping.h>
> +#include <linux/etherdevice.h>
> +#include <linux/uaccess.h>
> +#include <linux/most.h>
> +
> +#define USB_MTU			512
> +#define NO_ISOCHRONOUS_URB	0
> +#define AV_PACKETS_PER_XACT	2
> +#define BUF_CHAIN_SIZE		0xFFFF
> +#define MAX_NUM_ENDPOINTS	30
> +#define MAX_SUFFIX_LEN		10
> +#define MAX_STRING_LEN		80
> +#define MAX_BUF_SIZE		0xFFFF
> +
> +#define USB_VENDOR_ID_SMSC	0x0424  /* VID: SMSC */
> +#define USB_DEV_ID_BRDG		0xC001  /* PID: USB Bridge */
> +#define USB_DEV_ID_OS81118	0xCF18  /* PID: USB OS81118 */
> +#define USB_DEV_ID_OS81119	0xCF19  /* PID: USB OS81119 */
> +#define USB_DEV_ID_OS81210	0xCF30  /* PID: USB OS81210 */
> +/* DRCI Addresses */
> +#define DRCI_REG_NI_STATE	0x0100
> +#define DRCI_REG_PACKET_BW	0x0101
> +#define DRCI_REG_NODE_ADDR	0x0102
> +#define DRCI_REG_NODE_POS	0x0103
> +#define DRCI_REG_MEP_FILTER	0x0140
> +#define DRCI_REG_HASH_TBL0	0x0141
> +#define DRCI_REG_HASH_TBL1	0x0142
> +#define DRCI_REG_HASH_TBL2	0x0143
> +#define DRCI_REG_HASH_TBL3	0x0144
> +#define DRCI_REG_HW_ADDR_HI	0x0145
> +#define DRCI_REG_HW_ADDR_MI	0x0146
> +#define DRCI_REG_HW_ADDR_LO	0x0147
> +#define DRCI_REG_BASE		0x1100
> +#define DRCI_COMMAND		0x02
> +#define DRCI_READ_REQ		0xA0
> +#define DRCI_WRITE_REQ		0xA1
> +
> +/**
> + * struct most_dci_obj - Direct Communication Interface
> + * @kobj:position in sysfs
> + * @usb_device: pointer to the usb device
> + * @reg_addr: register address for arbitrary DCI access
> + */
> +struct most_dci_obj {
> +	struct device dev;

Wait, why is a USB driver creating something with a separate struct
device embedded in it?  Shouldn't the most core handle stuff like this?

> +	struct usb_device *usb_device;
> +	u16 reg_addr;
> +};
> +
> +#define to_dci_obj(p) container_of(p, struct most_dci_obj, dev)
> +
> +struct most_dev;

Don't you already have this in the most.h file?

> +
> +struct clear_hold_work {
> +	struct work_struct ws;
> +	struct most_dev *mdev;
> +	unsigned int channel;
> +	int pipe;
> +};
> +
> +#define to_clear_hold_work(w) container_of(w, struct clear_hold_work, ws)
> +
> +/**
> + * struct most_dev - holds all usb interface specific stuff
> + * @usb_device: pointer to usb device
> + * @iface: hardware interface
> + * @cap: channel capabilities
> + * @conf: channel configuration
> + * @dci: direct communication interface of hardware
> + * @ep_address: endpoint address table
> + * @description: device description
> + * @suffix: suffix for channel name
> + * @channel_lock: synchronize channel access
> + * @padding_active: indicates channel uses padding
> + * @is_channel_healthy: health status table of each channel
> + * @busy_urbs: list of anchored items
> + * @io_mutex: synchronize I/O with disconnect
> + * @link_stat_timer: timer for link status reports
> + * @poll_work_obj: work for polling link status
> + */
> +struct most_dev {
> +	struct device dev;
> +	struct usb_device *usb_device;
> +	struct most_interface iface;
> +	struct most_channel_capability *cap;
> +	struct most_channel_config *conf;
> +	struct most_dci_obj *dci;
> +	u8 *ep_address;
> +	char description[MAX_STRING_LEN];
> +	char suffix[MAX_NUM_ENDPOINTS][MAX_SUFFIX_LEN];
> +	spinlock_t channel_lock[MAX_NUM_ENDPOINTS]; /* sync channel access */
> +	bool padding_active[MAX_NUM_ENDPOINTS];
> +	bool is_channel_healthy[MAX_NUM_ENDPOINTS];
> +	struct clear_hold_work clear_work[MAX_NUM_ENDPOINTS];
> +	struct usb_anchor *busy_urbs;
> +	struct mutex io_mutex;
> +	struct timer_list link_stat_timer;
> +	struct work_struct poll_work_obj;
> +	void (*on_netinfo)(struct most_interface *most_iface,
> +			   unsigned char link_state, unsigned char *addrs);
> +};

Why isn't this all in the most core?  Why does the USB adapter need to
do this?

> +/**
> + * hdm_read_completion - completion function for submitted Rx URBs
> + * @urb: the URB that has been completed
> + *
> + * This checks the status of the completed URB. In case the URB has been
> + * unlinked before it is immediately freed. On any other error the MBO transfer
> + * flag is set. On success it frees allocated resources, removes
> + * padding bytes -if necessary- and calls the completion function.
> + *
> + * Context: interrupt!
> + *
> + * **************************************************************************
> + *                   Error codes returned by in urb->status
> + *                   or in iso_frame_desc[n].status (for ISO)
> + * *************************************************************************
> + *
> + * USB device drivers may only test urb status values in completion handlers.
> + * This is because otherwise there would be a race between HCDs updating
> + * these values on one CPU, and device drivers testing them on another CPU.
> + *
> + * A transfer's actual_length may be positive even when an error has been
> + * reported.  That's because transfers often involve several packets, so that
> + * one or more packets could finish before an error stops further endpoint I/O.
> + *
> + * For isochronous URBs, the urb status value is non-zero only if the URB is
> + * unlinked, the device is removed, the host controller is disabled or the total
> + * transferred length is less than the requested length and the URB_SHORT_NOT_OK
> + * flag is set.  Completion handlers for isochronous URBs should only see
> + * urb->status set to zero, -ENOENT, -ECONNRESET, -ESHUTDOWN, or -EREMOTEIO.
> + * Individual frame descriptor status fields may report more status codes.
> + *
> + *
> + * 0			Transfer completed successfully
> + *
> + * -ENOENT		URB was synchronously unlinked by usb_unlink_urb
> + *
> + * -EINPROGRESS		URB still pending, no results yet
> + *			(That is, if drivers see this it's a bug.)
> + *
> + * -EPROTO (*, **)	a) bitstuff error
> + *			b) no response packet received within the
> + *			   prescribed bus turn-around time
> + *			c) unknown USB error
> + *
> + * -EILSEQ (*, **)	a) CRC mismatch
> + *			b) no response packet received within the
> + *			   prescribed bus turn-around time
> + *			c) unknown USB error
> + *
> + *			Note that often the controller hardware does not
> + *			distinguish among cases a), b), and c), so a
> + *			driver cannot tell whether there was a protocol
> + *			error, a failure to respond (often caused by
> + *			device disconnect), or some other fault.
> + *
> + * -ETIME (**)		No response packet received within the prescribed
> + *			bus turn-around time.  This error may instead be
> + *			reported as -EPROTO or -EILSEQ.
> + *
> + * -ETIMEDOUT		Synchronous USB message functions use this code
> + *			to indicate timeout expired before the transfer
> + *			completed, and no other error was reported by HC.
> + *
> + * -EPIPE (**)		Endpoint stalled.  For non-control endpoints,
> + *			reset this status with usb_clear_halt().
> + *
> + * -ECOMM		During an IN transfer, the host controller
> + *			received data from an endpoint faster than it
> + *			could be written to system memory
> + *
> + * -ENOSR		During an OUT transfer, the host controller
> + *			could not retrieve data from system memory fast
> + *			enough to keep up with the USB data rate
> + *
> + * -EOVERFLOW (*)	The amount of data returned by the endpoint was
> + *			greater than either the max packet size of the
> + *			endpoint or the remaining buffer size.  "Babble".
> + *
> + * -EREMOTEIO		The data read from the endpoint did not fill the
> + *			specified buffer, and URB_SHORT_NOT_OK was set in
> + *			urb->transfer_flags.
> + *
> + * -ENODEV		Device was removed.  Often preceded by a burst of
> + *			other errors, since the hub driver doesn't detect
> + *			device removal events immediately.
> + *
> + * -EXDEV		ISO transfer only partially completed
> + *			(only set in iso_frame_desc[n].status, not urb->status)
> + *
> + * -EINVAL		ISO madness, if this happens: Log off and go home
> + *
> + * -ECONNRESET		URB was asynchronously unlinked by usb_unlink_urb
> + *
> + * -ESHUTDOWN		The device or host controller has been disabled due
> + *			to some problem that could not be worked around,
> + *			such as a physical disconnect.
> + *
> + *
> + * (*) Error codes like -EPROTO, -EILSEQ and -EOVERFLOW normally indicate
> + * hardware problems such as bad devices (including firmware) or cables.
> + *
> + * (**) This is also one of several codes that different kinds of host
> + * controller use to indicate a transfer has failed because of device
> + * disconnect.  In the interval before the hub driver starts disconnect
> + * processing, devices may receive such fault reports for every request.
> + *
> + * See <https://www.kernel.org/doc/Documentation/driver-api/usb/error-codes.rst>

No need to provide a whole copy of this existing kernel file here in a
comment, right?

> +static ssize_t value_show(struct device *dev, struct device_attribute *attr,
> +			  char *buf)
> +{
> +	const char *name = attr->attr.name;
> +	struct most_dci_obj *dci_obj = to_dci_obj(dev);
> +	u16 val;
> +	u16 reg_addr;
> +	int err;
> +
> +	if (!strcmp(name, "arb_address"))
> +		return snprintf(buf, PAGE_SIZE, "%04x\n", dci_obj->reg_addr);
> +
> +	if (!strcmp(name, "arb_value"))
> +		reg_addr = dci_obj->reg_addr;
> +	else if (get_static_reg_addr(ro_regs, name, &reg_addr) &&
> +		 get_static_reg_addr(rw_regs, name, &reg_addr))
> +		return -EFAULT;
> +
> +	err = drci_rd_reg(dci_obj->usb_device, reg_addr, &val);
> +	if (err < 0)
> +		return err;
> +
> +	return snprintf(buf, PAGE_SIZE, "%04x\n", val);
> +}
> +
> +static ssize_t value_store(struct device *dev, struct device_attribute *attr,
> +			   const char *buf, size_t count)
> +{
> +	u16 val;
> +	u16 reg_addr;
> +	const char *name = attr->attr.name;
> +	struct most_dci_obj *dci_obj = to_dci_obj(dev);
> +	struct usb_device *usb_dev = dci_obj->usb_device;
> +	int err = kstrtou16(buf, 16, &val);
> +
> +	if (err)
> +		return err;
> +
> +	if (!strcmp(name, "arb_address")) {
> +		dci_obj->reg_addr = val;
> +		return count;
> +	}
> +
> +	if (!strcmp(name, "arb_value"))
> +		err = drci_wr_reg(usb_dev, dci_obj->reg_addr, val);
> +	else if (!strcmp(name, "sync_ep"))
> +		err = start_sync_ep(usb_dev, val);
> +	else if (!get_static_reg_addr(rw_regs, name, &reg_addr))
> +		err = drci_wr_reg(usb_dev, reg_addr, val);
> +	else
> +		return -EFAULT;
> +
> +	if (err < 0)
> +		return err;
> +
> +	return count;
> +}
> +
> +static DEVICE_ATTR(ni_state, 0444, value_show, NULL);
> +static DEVICE_ATTR(packet_bandwidth, 0444, value_show, NULL);
> +static DEVICE_ATTR(node_address, 0444, value_show, NULL);
> +static DEVICE_ATTR(node_position, 0444, value_show, NULL);
> +static DEVICE_ATTR(sync_ep, 0200, NULL, value_store);
> +static DEVICE_ATTR(mep_filter, 0644, value_show, value_store);
> +static DEVICE_ATTR(mep_hash0, 0644, value_show, value_store);
> +static DEVICE_ATTR(mep_hash1, 0644, value_show, value_store);
> +static DEVICE_ATTR(mep_hash2, 0644, value_show, value_store);
> +static DEVICE_ATTR(mep_hash3, 0644, value_show, value_store);
> +static DEVICE_ATTR(mep_eui48_hi, 0644, value_show, value_store);
> +static DEVICE_ATTR(mep_eui48_mi, 0644, value_show, value_store);
> +static DEVICE_ATTR(mep_eui48_lo, 0644, value_show, value_store);
> +static DEVICE_ATTR(arb_address, 0644, value_show, value_store);
> +static DEVICE_ATTR(arb_value, 0644, value_show, value_store);

Loads of sysfs files with no documentation for them?


> +
> +static struct attribute *dci_attrs[] = {
> +	&dev_attr_ni_state.attr,
> +	&dev_attr_packet_bandwidth.attr,
> +	&dev_attr_node_address.attr,
> +	&dev_attr_node_position.attr,
> +	&dev_attr_sync_ep.attr,
> +	&dev_attr_mep_filter.attr,
> +	&dev_attr_mep_hash0.attr,
> +	&dev_attr_mep_hash1.attr,
> +	&dev_attr_mep_hash2.attr,
> +	&dev_attr_mep_hash3.attr,
> +	&dev_attr_mep_eui48_hi.attr,
> +	&dev_attr_mep_eui48_mi.attr,
> +	&dev_attr_mep_eui48_lo.attr,
> +	&dev_attr_arb_address.attr,
> +	&dev_attr_arb_value.attr,
> +	NULL,
> +};
> +
> +static struct attribute_group dci_attr_group = {
> +	.attrs = dci_attrs,
> +};
> +
> +static const struct attribute_group *dci_attr_groups[] = {
> +	&dci_attr_group,
> +	NULL,
> +};

ATTRIBUTE_GROUPS()?

> +
> +static void release_dci(struct device *dev)
> +{
> +	struct most_dci_obj *dci = to_dci_obj(dev);
> +
> +	kfree(dci);
> +}
> +
> +static void release_mdev(struct device *dev)
> +{
> +	struct most_dev *mdev = to_mdev_from_dev(dev);
> +
> +	kfree(mdev);
> +}
> +/**
> + * hdm_probe - probe function of USB device driver
> + * @interface: Interface of the attached USB device
> + * @id: Pointer to the USB ID table.
> + *
> + * This allocates and initializes the device instance, adds the new
> + * entry to the internal list, scans the USB descriptors and registers
> + * the interface with the core.
> + * Additionally, the DCI objects are created and the hardware is sync'd.
> + *
> + * Return 0 on success. In case of an error a negative number is returned.
> + */
> +static int
> +hdm_probe(struct usb_interface *interface, const struct usb_device_id *id)
> +{
> +	struct usb_host_interface *usb_iface_desc = interface->cur_altsetting;
> +	struct usb_device *usb_dev = interface_to_usbdev(interface);
> +	struct device *dev = &usb_dev->dev;
> +	struct most_dev *mdev = kzalloc(sizeof(*mdev), GFP_KERNEL);
> +	unsigned int i;
> +	unsigned int num_endpoints;
> +	struct most_channel_capability *tmp_cap;
> +	struct usb_endpoint_descriptor *ep_desc;
> +	int ret = 0;
> +
> +	if (!mdev)
> +		goto err_out_of_memory;
> +
> +	usb_set_intfdata(interface, mdev);
> +	num_endpoints = usb_iface_desc->desc.bNumEndpoints;

No error checking if you have the wrong number of expected endpoints
because you have a "fake" device plugged in?  The syzbot fuzzer will
test this eventually...


> +	mutex_init(&mdev->io_mutex);
> +	INIT_WORK(&mdev->poll_work_obj, wq_netinfo);
> +	timer_setup(&mdev->link_stat_timer, link_stat_timer_handler, 0);
> +
> +	mdev->usb_device = usb_dev;
> +	mdev->link_stat_timer.expires = jiffies + (2 * HZ);
> +
> +	mdev->iface.mod = hdm_usb_fops.owner;
> +	mdev->iface.dev = &mdev->dev;
> +	mdev->iface.driver_dev = &interface->dev;
> +	mdev->iface.interface = ITYPE_USB;
> +	mdev->iface.configure = hdm_configure_channel;
> +	mdev->iface.request_netinfo = hdm_request_netinfo;
> +	mdev->iface.enqueue = hdm_enqueue;
> +	mdev->iface.poison_channel = hdm_poison_channel;
> +	mdev->iface.dma_alloc = hdm_dma_alloc;
> +	mdev->iface.dma_free = hdm_dma_free;
> +	mdev->iface.description = mdev->description;
> +	mdev->iface.num_channels = num_endpoints;
> +
> +	snprintf(mdev->description, sizeof(mdev->description),
> +		 "%d-%s:%d.%d",
> +		 usb_dev->bus->busnum,
> +		 usb_dev->devpath,
> +		 usb_dev->config->desc.bConfigurationValue,
> +		 usb_iface_desc->desc.bInterfaceNumber);
> +
> +	mdev->dev.init_name = mdev->description;
> +	mdev->dev.parent = &interface->dev;
> +	mdev->dev.release = release_mdev;

I find it odd a USB driver creates another device, I thought the most
core handled this.

> +	mdev->conf = kcalloc(num_endpoints, sizeof(*mdev->conf), GFP_KERNEL);
> +	if (!mdev->conf)
> +		goto err_free_mdev;
> +
> +	mdev->cap = kcalloc(num_endpoints, sizeof(*mdev->cap), GFP_KERNEL);
> +	if (!mdev->cap)
> +		goto err_free_conf;
> +
> +	mdev->iface.channel_vector = mdev->cap;
> +	mdev->ep_address =
> +		kcalloc(num_endpoints, sizeof(*mdev->ep_address), GFP_KERNEL);
> +	if (!mdev->ep_address)
> +		goto err_free_cap;
> +
> +	mdev->busy_urbs =
> +		kcalloc(num_endpoints, sizeof(*mdev->busy_urbs), GFP_KERNEL);
> +	if (!mdev->busy_urbs)
> +		goto err_free_ep_address;
> +
> +	tmp_cap = mdev->cap;
> +	for (i = 0; i < num_endpoints; i++) {
> +		ep_desc = &usb_iface_desc->endpoint[i].desc;
> +		mdev->ep_address[i] = ep_desc->bEndpointAddress;
> +		mdev->padding_active[i] = false;
> +		mdev->is_channel_healthy[i] = true;
> +
> +		snprintf(&mdev->suffix[i][0], MAX_SUFFIX_LEN, "ep%02x",
> +			 mdev->ep_address[i]);
> +
> +		tmp_cap->name_suffix = &mdev->suffix[i][0];
> +		tmp_cap->buffer_size_packet = MAX_BUF_SIZE;
> +		tmp_cap->buffer_size_streaming = MAX_BUF_SIZE;
> +		tmp_cap->num_buffers_packet = BUF_CHAIN_SIZE;
> +		tmp_cap->num_buffers_streaming = BUF_CHAIN_SIZE;
> +		tmp_cap->data_type = MOST_CH_CONTROL | MOST_CH_ASYNC |
> +				     MOST_CH_ISOC | MOST_CH_SYNC;
> +		if (usb_endpoint_dir_in(ep_desc))
> +			tmp_cap->direction = MOST_CH_RX;
> +		else
> +			tmp_cap->direction = MOST_CH_TX;
> +		tmp_cap++;
> +		init_usb_anchor(&mdev->busy_urbs[i]);
> +		spin_lock_init(&mdev->channel_lock[i]);
> +	}
> +	dev_notice(dev, "claimed gadget: Vendor=%4.4x ProdID=%4.4x Bus=%02x Device=%02x\n",
> +		   le16_to_cpu(usb_dev->descriptor.idVendor),
> +		   le16_to_cpu(usb_dev->descriptor.idProduct),
> +		   usb_dev->bus->busnum,
> +		   usb_dev->devnum);

That's really loud, why?  If drivers work properly, they should be
quiet, make this a debug call please.

> +
> +	dev_notice(dev, "device path: /sys/bus/usb/devices/%d-%s:%d.%d\n",
> +		   usb_dev->bus->busnum,
> +		   usb_dev->devpath,
> +		   usb_dev->config->desc.bConfigurationValue,
> +		   usb_iface_desc->desc.bInterfaceNumber);

Same here.

thanks,

greg k-h
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
