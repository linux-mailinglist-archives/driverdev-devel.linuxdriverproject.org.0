Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id A8F1B24B88E
	for <lists+driverdev-devel@lfdr.de>; Thu, 20 Aug 2020 13:23:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6847087EA6;
	Thu, 20 Aug 2020 11:23:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id X7pD49yXpFDX; Thu, 20 Aug 2020 11:23:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7763A87E77;
	Thu, 20 Aug 2020 11:23:27 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 1F4661BF355
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 11:23:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1B60087DF2
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 11:23:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id G4glZLVtmAuW
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 11:23:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from esa5.microchip.iphmx.com (esa5.microchip.iphmx.com
 [216.71.150.166])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 8A75887E0E
 for <driverdev-devel@linuxdriverproject.org>;
 Thu, 20 Aug 2020 11:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1597922603; x=1629458603;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=FPr5I1h3V4KyaDuTEtU9nRohfipoWeUHaOI08LgtGhw=;
 b=zPaFY711JRC9RZ3/gSAR8MkF4zIu2r8tE93hilm6ofAR6NOp7OBEGi22
 SpOphIgpG+wQM6X5qX9KpFrUEZ8K9gdvk3Zv4cE3ogoesE5Lk9ZXJZHYx
 Pg2QbESaeb5e/hT4qVYyaqJHW8bjQfzsG1toPajvGn0ehbM3IkCOlx26p
 uZomEUzNbmgbQZQn4X92kJ+SQNjhxs3Qn62b6THEwRCc7LFXpDkP22laV
 DVBLwqhXVSfy9PofBELNigluFPpv4lMvJKjd6SVuMMZzzV7dIM49w6a8+
 ukdpxOxFOPn9mBdBhUN+iG9nR6lejAjs/fiwECh2Bs9fMJge/qUcZNuKe w==;
IronPort-SDR: FqojrsjDa+5XRI2pmIFqYUbaXLp5ckIZRBOtWE2T5TFIz/Vk7gPdfU4Q0FtVFe/A9k0uZU/Aht
 Ri7a8q57ryzNfU4hQqftERYSrR4LbTdof/alKm9+Vb7VE50Ge2Vm0HBn/iYUv0JG9GvMeQ9UjU
 8qUSz49L5Q15gjY9rRYL9j69lOIRvPVIb2PmvoqVOhfzpTPmUIdMn9LCDBL6dH2AOhlPPDO19W
 qBw+Jy0O92MKnNij/a5h0seJkaftYOUoA+EuxNEwl+QHSGvCQRb0jqlRVUO0z3Ge+tohTjuFEV
 C8U=
X-IronPort-AV: E=Sophos;i="5.76,332,1592895600"; d="scan'208";a="87874158"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 20 Aug 2020 04:23:22 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 20 Aug 2020 04:23:18 -0700
Received: from kar-sv-agl01.mchp-main.com (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Thu, 20 Aug 2020 04:23:18 -0700
From: Christian Gromm <christian.gromm@microchip.com>
To: <gregkh@linuxfoundation.org>
Subject: [RESEND PATCH] drivers: most: add character device interface driver
Date: Thu, 20 Aug 2020 13:23:15 +0200
Message-ID: <1597922595-27493-1-git-send-email-christian.gromm@microchip.com>
X-Mailer: git-send-email 2.7.4
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

This patch adds the character device (cdev) driver source file
most_cdev.c and modifies the Makefiles and Kconfigs accordingly.

Signed-off-by: Christian Gromm <christian.gromm@microchip.com>
---
 drivers/most/Kconfig               |   9 +
 drivers/most/Makefile              |   1 +
 drivers/most/most_cdev.c           | 543 +++++++++++++++++++++++++++++++++++++
 drivers/staging/most/Kconfig       |   2 -
 drivers/staging/most/Makefile      |   1 -
 drivers/staging/most/cdev/Kconfig  |  13 -
 drivers/staging/most/cdev/Makefile |   4 -
 drivers/staging/most/cdev/cdev.c   | 543 -------------------------------------
 8 files changed, 553 insertions(+), 563 deletions(-)
 create mode 100644 drivers/most/most_cdev.c
 delete mode 100644 drivers/staging/most/cdev/Kconfig
 delete mode 100644 drivers/staging/most/cdev/Makefile
 delete mode 100644 drivers/staging/most/cdev/cdev.c

diff --git a/drivers/most/Kconfig b/drivers/most/Kconfig
index 60fc082..ebfe84e 100644
--- a/drivers/most/Kconfig
+++ b/drivers/most/Kconfig
@@ -23,4 +23,13 @@ config MOST_USB_HDM
 
 	  To compile this driver as a module, choose M here: the
 	  module will be called most_usb.
+
+config MOST_CDEV
+	tristate "Cdev"
+
+	help
+	  Say Y here if you want to commumicate via character devices.
+
+	  To compile this driver as a module, choose M here: the
+	  module will be called most_cdev.
 endif
diff --git a/drivers/most/Makefile b/drivers/most/Makefile
index 6a3cb90..8b53ca4 100644
--- a/drivers/most/Makefile
+++ b/drivers/most/Makefile
@@ -4,3 +4,4 @@ most_core-y :=	core.o \
 		configfs.o
 
 obj-$(CONFIG_MOST_USB_HDM) += most_usb.o
+obj-$(CONFIG_MOST_CDEV) += most_cdev.o
diff --git a/drivers/most/most_cdev.c b/drivers/most/most_cdev.c
new file mode 100644
index 0000000..0448807
--- /dev/null
+++ b/drivers/most/most_cdev.c
@@ -0,0 +1,543 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * cdev.c - Character device component for Mostcore
+ *
+ * Copyright (C) 2013-2015 Microchip Technology Germany II GmbH & Co. KG
+ */
+
+#include <linux/module.h>
+#include <linux/sched.h>
+#include <linux/fs.h>
+#include <linux/slab.h>
+#include <linux/device.h>
+#include <linux/cdev.h>
+#include <linux/poll.h>
+#include <linux/kfifo.h>
+#include <linux/uaccess.h>
+#include <linux/idr.h>
+#include <linux/most.h>
+
+#define CHRDEV_REGION_SIZE 50
+
+static struct cdev_component {
+	dev_t devno;
+	struct ida minor_id;
+	unsigned int major;
+	struct class *class;
+	struct most_component cc;
+} comp;
+
+struct comp_channel {
+	wait_queue_head_t wq;
+	spinlock_t unlink;	/* synchronization lock to unlink channels */
+	struct cdev cdev;
+	struct device *dev;
+	struct mutex io_mutex;
+	struct most_interface *iface;
+	struct most_channel_config *cfg;
+	unsigned int channel_id;
+	dev_t devno;
+	size_t mbo_offs;
+	DECLARE_KFIFO_PTR(fifo, typeof(struct mbo *));
+	int access_ref;
+	struct list_head list;
+};
+
+#define to_channel(d) container_of(d, struct comp_channel, cdev)
+static struct list_head channel_list;
+static spinlock_t ch_list_lock;
+
+static inline bool ch_has_mbo(struct comp_channel *c)
+{
+	return channel_has_mbo(c->iface, c->channel_id, &comp.cc) > 0;
+}
+
+static inline struct mbo *ch_get_mbo(struct comp_channel *c, struct mbo **mbo)
+{
+	if (!kfifo_peek(&c->fifo, mbo)) {
+		*mbo = most_get_mbo(c->iface, c->channel_id, &comp.cc);
+		if (*mbo)
+			kfifo_in(&c->fifo, mbo, 1);
+	}
+	return *mbo;
+}
+
+static struct comp_channel *get_channel(struct most_interface *iface, int id)
+{
+	struct comp_channel *c, *tmp;
+	unsigned long flags;
+
+	spin_lock_irqsave(&ch_list_lock, flags);
+	list_for_each_entry_safe(c, tmp, &channel_list, list) {
+		if ((c->iface == iface) && (c->channel_id == id)) {
+			spin_unlock_irqrestore(&ch_list_lock, flags);
+			return c;
+		}
+	}
+	spin_unlock_irqrestore(&ch_list_lock, flags);
+	return NULL;
+}
+
+static void stop_channel(struct comp_channel *c)
+{
+	struct mbo *mbo;
+
+	while (kfifo_out((struct kfifo *)&c->fifo, &mbo, 1))
+		most_put_mbo(mbo);
+	most_stop_channel(c->iface, c->channel_id, &comp.cc);
+}
+
+static void destroy_cdev(struct comp_channel *c)
+{
+	unsigned long flags;
+
+	device_destroy(comp.class, c->devno);
+	cdev_del(&c->cdev);
+	spin_lock_irqsave(&ch_list_lock, flags);
+	list_del(&c->list);
+	spin_unlock_irqrestore(&ch_list_lock, flags);
+}
+
+static void destroy_channel(struct comp_channel *c)
+{
+	ida_simple_remove(&comp.minor_id, MINOR(c->devno));
+	kfifo_free(&c->fifo);
+	kfree(c);
+}
+
+/**
+ * comp_open - implements the syscall to open the device
+ * @inode: inode pointer
+ * @filp: file pointer
+ *
+ * This stores the channel pointer in the private data field of
+ * the file structure and activates the channel within the core.
+ */
+static int comp_open(struct inode *inode, struct file *filp)
+{
+	struct comp_channel *c;
+	int ret;
+
+	c = to_channel(inode->i_cdev);
+	filp->private_data = c;
+
+	if (((c->cfg->direction == MOST_CH_RX) &&
+	     ((filp->f_flags & O_ACCMODE) != O_RDONLY)) ||
+	     ((c->cfg->direction == MOST_CH_TX) &&
+		((filp->f_flags & O_ACCMODE) != O_WRONLY))) {
+		return -EACCES;
+	}
+
+	mutex_lock(&c->io_mutex);
+	if (!c->dev) {
+		mutex_unlock(&c->io_mutex);
+		return -ENODEV;
+	}
+
+	if (c->access_ref) {
+		mutex_unlock(&c->io_mutex);
+		return -EBUSY;
+	}
+
+	c->mbo_offs = 0;
+	ret = most_start_channel(c->iface, c->channel_id, &comp.cc);
+	if (!ret)
+		c->access_ref = 1;
+	mutex_unlock(&c->io_mutex);
+	return ret;
+}
+
+/**
+ * comp_close - implements the syscall to close the device
+ * @inode: inode pointer
+ * @filp: file pointer
+ *
+ * This stops the channel within the core.
+ */
+static int comp_close(struct inode *inode, struct file *filp)
+{
+	struct comp_channel *c = to_channel(inode->i_cdev);
+
+	mutex_lock(&c->io_mutex);
+	spin_lock(&c->unlink);
+	c->access_ref = 0;
+	spin_unlock(&c->unlink);
+	if (c->dev) {
+		stop_channel(c);
+		mutex_unlock(&c->io_mutex);
+	} else {
+		mutex_unlock(&c->io_mutex);
+		destroy_channel(c);
+	}
+	return 0;
+}
+
+/**
+ * comp_write - implements the syscall to write to the device
+ * @filp: file pointer
+ * @buf: pointer to user buffer
+ * @count: number of bytes to write
+ * @offset: offset from where to start writing
+ */
+static ssize_t comp_write(struct file *filp, const char __user *buf,
+			  size_t count, loff_t *offset)
+{
+	int ret;
+	size_t to_copy, left;
+	struct mbo *mbo = NULL;
+	struct comp_channel *c = filp->private_data;
+
+	mutex_lock(&c->io_mutex);
+	while (c->dev && !ch_get_mbo(c, &mbo)) {
+		mutex_unlock(&c->io_mutex);
+
+		if ((filp->f_flags & O_NONBLOCK))
+			return -EAGAIN;
+		if (wait_event_interruptible(c->wq, ch_has_mbo(c) || !c->dev))
+			return -ERESTARTSYS;
+		mutex_lock(&c->io_mutex);
+	}
+
+	if (unlikely(!c->dev)) {
+		ret = -ENODEV;
+		goto unlock;
+	}
+
+	to_copy = min(count, c->cfg->buffer_size - c->mbo_offs);
+	left = copy_from_user(mbo->virt_address + c->mbo_offs, buf, to_copy);
+	if (left == to_copy) {
+		ret = -EFAULT;
+		goto unlock;
+	}
+
+	c->mbo_offs += to_copy - left;
+	if (c->mbo_offs >= c->cfg->buffer_size ||
+	    c->cfg->data_type == MOST_CH_CONTROL ||
+	    c->cfg->data_type == MOST_CH_ASYNC) {
+		kfifo_skip(&c->fifo);
+		mbo->buffer_length = c->mbo_offs;
+		c->mbo_offs = 0;
+		most_submit_mbo(mbo);
+	}
+
+	ret = to_copy - left;
+unlock:
+	mutex_unlock(&c->io_mutex);
+	return ret;
+}
+
+/**
+ * comp_read - implements the syscall to read from the device
+ * @filp: file pointer
+ * @buf: pointer to user buffer
+ * @count: number of bytes to read
+ * @offset: offset from where to start reading
+ */
+static ssize_t
+comp_read(struct file *filp, char __user *buf, size_t count, loff_t *offset)
+{
+	size_t to_copy, not_copied, copied;
+	struct mbo *mbo = NULL;
+	struct comp_channel *c = filp->private_data;
+
+	mutex_lock(&c->io_mutex);
+	while (c->dev && !kfifo_peek(&c->fifo, &mbo)) {
+		mutex_unlock(&c->io_mutex);
+		if (filp->f_flags & O_NONBLOCK)
+			return -EAGAIN;
+		if (wait_event_interruptible(c->wq,
+					     (!kfifo_is_empty(&c->fifo) ||
+					      (!c->dev))))
+			return -ERESTARTSYS;
+		mutex_lock(&c->io_mutex);
+	}
+
+	/* make sure we don't submit to gone devices */
+	if (unlikely(!c->dev)) {
+		mutex_unlock(&c->io_mutex);
+		return -ENODEV;
+	}
+
+	to_copy = min_t(size_t,
+			count,
+			mbo->processed_length - c->mbo_offs);
+
+	not_copied = copy_to_user(buf,
+				  mbo->virt_address + c->mbo_offs,
+				  to_copy);
+
+	copied = to_copy - not_copied;
+
+	c->mbo_offs += copied;
+	if (c->mbo_offs >= mbo->processed_length) {
+		kfifo_skip(&c->fifo);
+		most_put_mbo(mbo);
+		c->mbo_offs = 0;
+	}
+	mutex_unlock(&c->io_mutex);
+	return copied;
+}
+
+static __poll_t comp_poll(struct file *filp, poll_table *wait)
+{
+	struct comp_channel *c = filp->private_data;
+	__poll_t mask = 0;
+
+	poll_wait(filp, &c->wq, wait);
+
+	mutex_lock(&c->io_mutex);
+	if (c->cfg->direction == MOST_CH_RX) {
+		if (!c->dev || !kfifo_is_empty(&c->fifo))
+			mask |= EPOLLIN | EPOLLRDNORM;
+	} else {
+		if (!c->dev || !kfifo_is_empty(&c->fifo) || ch_has_mbo(c))
+			mask |= EPOLLOUT | EPOLLWRNORM;
+	}
+	mutex_unlock(&c->io_mutex);
+	return mask;
+}
+
+/**
+ * Initialization of struct file_operations
+ */
+static const struct file_operations channel_fops = {
+	.owner = THIS_MODULE,
+	.read = comp_read,
+	.write = comp_write,
+	.open = comp_open,
+	.release = comp_close,
+	.poll = comp_poll,
+};
+
+/**
+ * comp_disconnect_channel - disconnect a channel
+ * @iface: pointer to interface instance
+ * @channel_id: channel index
+ *
+ * This frees allocated memory and removes the cdev that represents this
+ * channel in user space.
+ */
+static int comp_disconnect_channel(struct most_interface *iface, int channel_id)
+{
+	struct comp_channel *c;
+
+	c = get_channel(iface, channel_id);
+	if (!c)
+		return -EINVAL;
+
+	mutex_lock(&c->io_mutex);
+	spin_lock(&c->unlink);
+	c->dev = NULL;
+	spin_unlock(&c->unlink);
+	destroy_cdev(c);
+	if (c->access_ref) {
+		stop_channel(c);
+		wake_up_interruptible(&c->wq);
+		mutex_unlock(&c->io_mutex);
+	} else {
+		mutex_unlock(&c->io_mutex);
+		destroy_channel(c);
+	}
+	return 0;
+}
+
+/**
+ * comp_rx_completion - completion handler for rx channels
+ * @mbo: pointer to buffer object that has completed
+ *
+ * This searches for the channel linked to this MBO and stores it in the local
+ * fifo buffer.
+ */
+static int comp_rx_completion(struct mbo *mbo)
+{
+	struct comp_channel *c;
+
+	if (!mbo)
+		return -EINVAL;
+
+	c = get_channel(mbo->ifp, mbo->hdm_channel_id);
+	if (!c)
+		return -EINVAL;
+
+	spin_lock(&c->unlink);
+	if (!c->access_ref || !c->dev) {
+		spin_unlock(&c->unlink);
+		return -ENODEV;
+	}
+	kfifo_in(&c->fifo, &mbo, 1);
+	spin_unlock(&c->unlink);
+#ifdef DEBUG_MESG
+	if (kfifo_is_full(&c->fifo))
+		dev_warn(c->dev, "Fifo is full\n");
+#endif
+	wake_up_interruptible(&c->wq);
+	return 0;
+}
+
+/**
+ * comp_tx_completion - completion handler for tx channels
+ * @iface: pointer to interface instance
+ * @channel_id: channel index/ID
+ *
+ * This wakes sleeping processes in the wait-queue.
+ */
+static int comp_tx_completion(struct most_interface *iface, int channel_id)
+{
+	struct comp_channel *c;
+
+	c = get_channel(iface, channel_id);
+	if (!c)
+		return -EINVAL;
+
+	if ((channel_id < 0) || (channel_id >= iface->num_channels)) {
+		dev_warn(c->dev, "Channel ID out of range\n");
+		return -EINVAL;
+	}
+
+	wake_up_interruptible(&c->wq);
+	return 0;
+}
+
+/**
+ * comp_probe - probe function of the driver module
+ * @iface: pointer to interface instance
+ * @channel_id: channel index/ID
+ * @cfg: pointer to actual channel configuration
+ * @name: name of the device to be created
+ *
+ * This allocates achannel object and creates the device node in /dev
+ *
+ * Returns 0 on success or error code otherwise.
+ */
+static int comp_probe(struct most_interface *iface, int channel_id,
+		      struct most_channel_config *cfg, char *name, char *args)
+{
+	struct comp_channel *c;
+	unsigned long cl_flags;
+	int retval;
+	int current_minor;
+
+	if (!cfg || !name)
+		return -EINVAL;
+
+	c = get_channel(iface, channel_id);
+	if (c)
+		return -EEXIST;
+
+	current_minor = ida_simple_get(&comp.minor_id, 0, 0, GFP_KERNEL);
+	if (current_minor < 0)
+		return current_minor;
+
+	c = kzalloc(sizeof(*c), GFP_KERNEL);
+	if (!c) {
+		retval = -ENOMEM;
+		goto err_remove_ida;
+	}
+
+	c->devno = MKDEV(comp.major, current_minor);
+	cdev_init(&c->cdev, &channel_fops);
+	c->cdev.owner = THIS_MODULE;
+	retval = cdev_add(&c->cdev, c->devno, 1);
+	if (retval < 0)
+		goto err_free_c;
+	c->iface = iface;
+	c->cfg = cfg;
+	c->channel_id = channel_id;
+	c->access_ref = 0;
+	spin_lock_init(&c->unlink);
+	INIT_KFIFO(c->fifo);
+	retval = kfifo_alloc(&c->fifo, cfg->num_buffers, GFP_KERNEL);
+	if (retval)
+		goto err_del_cdev_and_free_channel;
+	init_waitqueue_head(&c->wq);
+	mutex_init(&c->io_mutex);
+	spin_lock_irqsave(&ch_list_lock, cl_flags);
+	list_add_tail(&c->list, &channel_list);
+	spin_unlock_irqrestore(&ch_list_lock, cl_flags);
+	c->dev = device_create(comp.class, NULL, c->devno, NULL, "%s", name);
+
+	if (IS_ERR(c->dev)) {
+		retval = PTR_ERR(c->dev);
+		goto err_free_kfifo_and_del_list;
+	}
+	kobject_uevent(&c->dev->kobj, KOBJ_ADD);
+	return 0;
+
+err_free_kfifo_and_del_list:
+	kfifo_free(&c->fifo);
+	list_del(&c->list);
+err_del_cdev_and_free_channel:
+	cdev_del(&c->cdev);
+err_free_c:
+	kfree(c);
+err_remove_ida:
+	ida_simple_remove(&comp.minor_id, current_minor);
+	return retval;
+}
+
+static struct cdev_component comp = {
+	.cc = {
+		.mod = THIS_MODULE,
+		.name = "cdev",
+		.probe_channel = comp_probe,
+		.disconnect_channel = comp_disconnect_channel,
+		.rx_completion = comp_rx_completion,
+		.tx_completion = comp_tx_completion,
+	},
+};
+
+static int __init mod_init(void)
+{
+	int err;
+
+	comp.class = class_create(THIS_MODULE, "most_cdev");
+	if (IS_ERR(comp.class))
+		return PTR_ERR(comp.class);
+
+	INIT_LIST_HEAD(&channel_list);
+	spin_lock_init(&ch_list_lock);
+	ida_init(&comp.minor_id);
+
+	err = alloc_chrdev_region(&comp.devno, 0, CHRDEV_REGION_SIZE, "cdev");
+	if (err < 0)
+		goto dest_ida;
+	comp.major = MAJOR(comp.devno);
+	err = most_register_component(&comp.cc);
+	if (err)
+		goto free_cdev;
+	err = most_register_configfs_subsys(&comp.cc);
+	if (err)
+		goto deregister_comp;
+	return 0;
+
+deregister_comp:
+	most_deregister_component(&comp.cc);
+free_cdev:
+	unregister_chrdev_region(comp.devno, CHRDEV_REGION_SIZE);
+dest_ida:
+	ida_destroy(&comp.minor_id);
+	class_destroy(comp.class);
+	return err;
+}
+
+static void __exit mod_exit(void)
+{
+	struct comp_channel *c, *tmp;
+
+	most_deregister_configfs_subsys(&comp.cc);
+	most_deregister_component(&comp.cc);
+
+	list_for_each_entry_safe(c, tmp, &channel_list, list) {
+		destroy_cdev(c);
+		destroy_channel(c);
+	}
+	unregister_chrdev_region(comp.devno, CHRDEV_REGION_SIZE);
+	ida_destroy(&comp.minor_id);
+	class_destroy(comp.class);
+}
+
+module_init(mod_init);
+module_exit(mod_exit);
+MODULE_AUTHOR("Christian Gromm <christian.gromm@microchip.com>");
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("character device component for mostcore");
diff --git a/drivers/staging/most/Kconfig b/drivers/staging/most/Kconfig
index c35fb34f..535e6de 100644
--- a/drivers/staging/most/Kconfig
+++ b/drivers/staging/most/Kconfig
@@ -18,8 +18,6 @@ menuconfig MOST_COMPONENTS
 
 if MOST_COMPONENTS
 
-source "drivers/staging/most/cdev/Kconfig"
-
 source "drivers/staging/most/net/Kconfig"
 
 source "drivers/staging/most/sound/Kconfig"
diff --git a/drivers/staging/most/Makefile b/drivers/staging/most/Makefile
index 7c10b84..be94673 100644
--- a/drivers/staging/most/Makefile
+++ b/drivers/staging/most/Makefile
@@ -1,6 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
 
-obj-$(CONFIG_MOST_CDEV)	+= cdev/
 obj-$(CONFIG_MOST_NET)	+= net/
 obj-$(CONFIG_MOST_SOUND)	+= sound/
 obj-$(CONFIG_MOST_VIDEO)	+= video/
diff --git a/drivers/staging/most/cdev/Kconfig b/drivers/staging/most/cdev/Kconfig
deleted file mode 100644
index dab9947..0000000
--- a/drivers/staging/most/cdev/Kconfig
+++ /dev/null
@@ -1,13 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-#
-# MOST Cdev configuration
-#
-
-config MOST_CDEV
-	tristate "Cdev"
-
-	help
-	  Say Y here if you want to commumicate via character devices.
-
-	  To compile this driver as a module, choose M here: the
-	  module will be called most_cdev.
diff --git a/drivers/staging/most/cdev/Makefile b/drivers/staging/most/cdev/Makefile
deleted file mode 100644
index ef90cd7..0000000
--- a/drivers/staging/most/cdev/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_MOST_CDEV) += most_cdev.o
-
-most_cdev-objs := cdev.o
diff --git a/drivers/staging/most/cdev/cdev.c b/drivers/staging/most/cdev/cdev.c
deleted file mode 100644
index 0448807..0000000
--- a/drivers/staging/most/cdev/cdev.c
+++ /dev/null
@@ -1,543 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0
-/*
- * cdev.c - Character device component for Mostcore
- *
- * Copyright (C) 2013-2015 Microchip Technology Germany II GmbH & Co. KG
- */
-
-#include <linux/module.h>
-#include <linux/sched.h>
-#include <linux/fs.h>
-#include <linux/slab.h>
-#include <linux/device.h>
-#include <linux/cdev.h>
-#include <linux/poll.h>
-#include <linux/kfifo.h>
-#include <linux/uaccess.h>
-#include <linux/idr.h>
-#include <linux/most.h>
-
-#define CHRDEV_REGION_SIZE 50
-
-static struct cdev_component {
-	dev_t devno;
-	struct ida minor_id;
-	unsigned int major;
-	struct class *class;
-	struct most_component cc;
-} comp;
-
-struct comp_channel {
-	wait_queue_head_t wq;
-	spinlock_t unlink;	/* synchronization lock to unlink channels */
-	struct cdev cdev;
-	struct device *dev;
-	struct mutex io_mutex;
-	struct most_interface *iface;
-	struct most_channel_config *cfg;
-	unsigned int channel_id;
-	dev_t devno;
-	size_t mbo_offs;
-	DECLARE_KFIFO_PTR(fifo, typeof(struct mbo *));
-	int access_ref;
-	struct list_head list;
-};
-
-#define to_channel(d) container_of(d, struct comp_channel, cdev)
-static struct list_head channel_list;
-static spinlock_t ch_list_lock;
-
-static inline bool ch_has_mbo(struct comp_channel *c)
-{
-	return channel_has_mbo(c->iface, c->channel_id, &comp.cc) > 0;
-}
-
-static inline struct mbo *ch_get_mbo(struct comp_channel *c, struct mbo **mbo)
-{
-	if (!kfifo_peek(&c->fifo, mbo)) {
-		*mbo = most_get_mbo(c->iface, c->channel_id, &comp.cc);
-		if (*mbo)
-			kfifo_in(&c->fifo, mbo, 1);
-	}
-	return *mbo;
-}
-
-static struct comp_channel *get_channel(struct most_interface *iface, int id)
-{
-	struct comp_channel *c, *tmp;
-	unsigned long flags;
-
-	spin_lock_irqsave(&ch_list_lock, flags);
-	list_for_each_entry_safe(c, tmp, &channel_list, list) {
-		if ((c->iface == iface) && (c->channel_id == id)) {
-			spin_unlock_irqrestore(&ch_list_lock, flags);
-			return c;
-		}
-	}
-	spin_unlock_irqrestore(&ch_list_lock, flags);
-	return NULL;
-}
-
-static void stop_channel(struct comp_channel *c)
-{
-	struct mbo *mbo;
-
-	while (kfifo_out((struct kfifo *)&c->fifo, &mbo, 1))
-		most_put_mbo(mbo);
-	most_stop_channel(c->iface, c->channel_id, &comp.cc);
-}
-
-static void destroy_cdev(struct comp_channel *c)
-{
-	unsigned long flags;
-
-	device_destroy(comp.class, c->devno);
-	cdev_del(&c->cdev);
-	spin_lock_irqsave(&ch_list_lock, flags);
-	list_del(&c->list);
-	spin_unlock_irqrestore(&ch_list_lock, flags);
-}
-
-static void destroy_channel(struct comp_channel *c)
-{
-	ida_simple_remove(&comp.minor_id, MINOR(c->devno));
-	kfifo_free(&c->fifo);
-	kfree(c);
-}
-
-/**
- * comp_open - implements the syscall to open the device
- * @inode: inode pointer
- * @filp: file pointer
- *
- * This stores the channel pointer in the private data field of
- * the file structure and activates the channel within the core.
- */
-static int comp_open(struct inode *inode, struct file *filp)
-{
-	struct comp_channel *c;
-	int ret;
-
-	c = to_channel(inode->i_cdev);
-	filp->private_data = c;
-
-	if (((c->cfg->direction == MOST_CH_RX) &&
-	     ((filp->f_flags & O_ACCMODE) != O_RDONLY)) ||
-	     ((c->cfg->direction == MOST_CH_TX) &&
-		((filp->f_flags & O_ACCMODE) != O_WRONLY))) {
-		return -EACCES;
-	}
-
-	mutex_lock(&c->io_mutex);
-	if (!c->dev) {
-		mutex_unlock(&c->io_mutex);
-		return -ENODEV;
-	}
-
-	if (c->access_ref) {
-		mutex_unlock(&c->io_mutex);
-		return -EBUSY;
-	}
-
-	c->mbo_offs = 0;
-	ret = most_start_channel(c->iface, c->channel_id, &comp.cc);
-	if (!ret)
-		c->access_ref = 1;
-	mutex_unlock(&c->io_mutex);
-	return ret;
-}
-
-/**
- * comp_close - implements the syscall to close the device
- * @inode: inode pointer
- * @filp: file pointer
- *
- * This stops the channel within the core.
- */
-static int comp_close(struct inode *inode, struct file *filp)
-{
-	struct comp_channel *c = to_channel(inode->i_cdev);
-
-	mutex_lock(&c->io_mutex);
-	spin_lock(&c->unlink);
-	c->access_ref = 0;
-	spin_unlock(&c->unlink);
-	if (c->dev) {
-		stop_channel(c);
-		mutex_unlock(&c->io_mutex);
-	} else {
-		mutex_unlock(&c->io_mutex);
-		destroy_channel(c);
-	}
-	return 0;
-}
-
-/**
- * comp_write - implements the syscall to write to the device
- * @filp: file pointer
- * @buf: pointer to user buffer
- * @count: number of bytes to write
- * @offset: offset from where to start writing
- */
-static ssize_t comp_write(struct file *filp, const char __user *buf,
-			  size_t count, loff_t *offset)
-{
-	int ret;
-	size_t to_copy, left;
-	struct mbo *mbo = NULL;
-	struct comp_channel *c = filp->private_data;
-
-	mutex_lock(&c->io_mutex);
-	while (c->dev && !ch_get_mbo(c, &mbo)) {
-		mutex_unlock(&c->io_mutex);
-
-		if ((filp->f_flags & O_NONBLOCK))
-			return -EAGAIN;
-		if (wait_event_interruptible(c->wq, ch_has_mbo(c) || !c->dev))
-			return -ERESTARTSYS;
-		mutex_lock(&c->io_mutex);
-	}
-
-	if (unlikely(!c->dev)) {
-		ret = -ENODEV;
-		goto unlock;
-	}
-
-	to_copy = min(count, c->cfg->buffer_size - c->mbo_offs);
-	left = copy_from_user(mbo->virt_address + c->mbo_offs, buf, to_copy);
-	if (left == to_copy) {
-		ret = -EFAULT;
-		goto unlock;
-	}
-
-	c->mbo_offs += to_copy - left;
-	if (c->mbo_offs >= c->cfg->buffer_size ||
-	    c->cfg->data_type == MOST_CH_CONTROL ||
-	    c->cfg->data_type == MOST_CH_ASYNC) {
-		kfifo_skip(&c->fifo);
-		mbo->buffer_length = c->mbo_offs;
-		c->mbo_offs = 0;
-		most_submit_mbo(mbo);
-	}
-
-	ret = to_copy - left;
-unlock:
-	mutex_unlock(&c->io_mutex);
-	return ret;
-}
-
-/**
- * comp_read - implements the syscall to read from the device
- * @filp: file pointer
- * @buf: pointer to user buffer
- * @count: number of bytes to read
- * @offset: offset from where to start reading
- */
-static ssize_t
-comp_read(struct file *filp, char __user *buf, size_t count, loff_t *offset)
-{
-	size_t to_copy, not_copied, copied;
-	struct mbo *mbo = NULL;
-	struct comp_channel *c = filp->private_data;
-
-	mutex_lock(&c->io_mutex);
-	while (c->dev && !kfifo_peek(&c->fifo, &mbo)) {
-		mutex_unlock(&c->io_mutex);
-		if (filp->f_flags & O_NONBLOCK)
-			return -EAGAIN;
-		if (wait_event_interruptible(c->wq,
-					     (!kfifo_is_empty(&c->fifo) ||
-					      (!c->dev))))
-			return -ERESTARTSYS;
-		mutex_lock(&c->io_mutex);
-	}
-
-	/* make sure we don't submit to gone devices */
-	if (unlikely(!c->dev)) {
-		mutex_unlock(&c->io_mutex);
-		return -ENODEV;
-	}
-
-	to_copy = min_t(size_t,
-			count,
-			mbo->processed_length - c->mbo_offs);
-
-	not_copied = copy_to_user(buf,
-				  mbo->virt_address + c->mbo_offs,
-				  to_copy);
-
-	copied = to_copy - not_copied;
-
-	c->mbo_offs += copied;
-	if (c->mbo_offs >= mbo->processed_length) {
-		kfifo_skip(&c->fifo);
-		most_put_mbo(mbo);
-		c->mbo_offs = 0;
-	}
-	mutex_unlock(&c->io_mutex);
-	return copied;
-}
-
-static __poll_t comp_poll(struct file *filp, poll_table *wait)
-{
-	struct comp_channel *c = filp->private_data;
-	__poll_t mask = 0;
-
-	poll_wait(filp, &c->wq, wait);
-
-	mutex_lock(&c->io_mutex);
-	if (c->cfg->direction == MOST_CH_RX) {
-		if (!c->dev || !kfifo_is_empty(&c->fifo))
-			mask |= EPOLLIN | EPOLLRDNORM;
-	} else {
-		if (!c->dev || !kfifo_is_empty(&c->fifo) || ch_has_mbo(c))
-			mask |= EPOLLOUT | EPOLLWRNORM;
-	}
-	mutex_unlock(&c->io_mutex);
-	return mask;
-}
-
-/**
- * Initialization of struct file_operations
- */
-static const struct file_operations channel_fops = {
-	.owner = THIS_MODULE,
-	.read = comp_read,
-	.write = comp_write,
-	.open = comp_open,
-	.release = comp_close,
-	.poll = comp_poll,
-};
-
-/**
- * comp_disconnect_channel - disconnect a channel
- * @iface: pointer to interface instance
- * @channel_id: channel index
- *
- * This frees allocated memory and removes the cdev that represents this
- * channel in user space.
- */
-static int comp_disconnect_channel(struct most_interface *iface, int channel_id)
-{
-	struct comp_channel *c;
-
-	c = get_channel(iface, channel_id);
-	if (!c)
-		return -EINVAL;
-
-	mutex_lock(&c->io_mutex);
-	spin_lock(&c->unlink);
-	c->dev = NULL;
-	spin_unlock(&c->unlink);
-	destroy_cdev(c);
-	if (c->access_ref) {
-		stop_channel(c);
-		wake_up_interruptible(&c->wq);
-		mutex_unlock(&c->io_mutex);
-	} else {
-		mutex_unlock(&c->io_mutex);
-		destroy_channel(c);
-	}
-	return 0;
-}
-
-/**
- * comp_rx_completion - completion handler for rx channels
- * @mbo: pointer to buffer object that has completed
- *
- * This searches for the channel linked to this MBO and stores it in the local
- * fifo buffer.
- */
-static int comp_rx_completion(struct mbo *mbo)
-{
-	struct comp_channel *c;
-
-	if (!mbo)
-		return -EINVAL;
-
-	c = get_channel(mbo->ifp, mbo->hdm_channel_id);
-	if (!c)
-		return -EINVAL;
-
-	spin_lock(&c->unlink);
-	if (!c->access_ref || !c->dev) {
-		spin_unlock(&c->unlink);
-		return -ENODEV;
-	}
-	kfifo_in(&c->fifo, &mbo, 1);
-	spin_unlock(&c->unlink);
-#ifdef DEBUG_MESG
-	if (kfifo_is_full(&c->fifo))
-		dev_warn(c->dev, "Fifo is full\n");
-#endif
-	wake_up_interruptible(&c->wq);
-	return 0;
-}
-
-/**
- * comp_tx_completion - completion handler for tx channels
- * @iface: pointer to interface instance
- * @channel_id: channel index/ID
- *
- * This wakes sleeping processes in the wait-queue.
- */
-static int comp_tx_completion(struct most_interface *iface, int channel_id)
-{
-	struct comp_channel *c;
-
-	c = get_channel(iface, channel_id);
-	if (!c)
-		return -EINVAL;
-
-	if ((channel_id < 0) || (channel_id >= iface->num_channels)) {
-		dev_warn(c->dev, "Channel ID out of range\n");
-		return -EINVAL;
-	}
-
-	wake_up_interruptible(&c->wq);
-	return 0;
-}
-
-/**
- * comp_probe - probe function of the driver module
- * @iface: pointer to interface instance
- * @channel_id: channel index/ID
- * @cfg: pointer to actual channel configuration
- * @name: name of the device to be created
- *
- * This allocates achannel object and creates the device node in /dev
- *
- * Returns 0 on success or error code otherwise.
- */
-static int comp_probe(struct most_interface *iface, int channel_id,
-		      struct most_channel_config *cfg, char *name, char *args)
-{
-	struct comp_channel *c;
-	unsigned long cl_flags;
-	int retval;
-	int current_minor;
-
-	if (!cfg || !name)
-		return -EINVAL;
-
-	c = get_channel(iface, channel_id);
-	if (c)
-		return -EEXIST;
-
-	current_minor = ida_simple_get(&comp.minor_id, 0, 0, GFP_KERNEL);
-	if (current_minor < 0)
-		return current_minor;
-
-	c = kzalloc(sizeof(*c), GFP_KERNEL);
-	if (!c) {
-		retval = -ENOMEM;
-		goto err_remove_ida;
-	}
-
-	c->devno = MKDEV(comp.major, current_minor);
-	cdev_init(&c->cdev, &channel_fops);
-	c->cdev.owner = THIS_MODULE;
-	retval = cdev_add(&c->cdev, c->devno, 1);
-	if (retval < 0)
-		goto err_free_c;
-	c->iface = iface;
-	c->cfg = cfg;
-	c->channel_id = channel_id;
-	c->access_ref = 0;
-	spin_lock_init(&c->unlink);
-	INIT_KFIFO(c->fifo);
-	retval = kfifo_alloc(&c->fifo, cfg->num_buffers, GFP_KERNEL);
-	if (retval)
-		goto err_del_cdev_and_free_channel;
-	init_waitqueue_head(&c->wq);
-	mutex_init(&c->io_mutex);
-	spin_lock_irqsave(&ch_list_lock, cl_flags);
-	list_add_tail(&c->list, &channel_list);
-	spin_unlock_irqrestore(&ch_list_lock, cl_flags);
-	c->dev = device_create(comp.class, NULL, c->devno, NULL, "%s", name);
-
-	if (IS_ERR(c->dev)) {
-		retval = PTR_ERR(c->dev);
-		goto err_free_kfifo_and_del_list;
-	}
-	kobject_uevent(&c->dev->kobj, KOBJ_ADD);
-	return 0;
-
-err_free_kfifo_and_del_list:
-	kfifo_free(&c->fifo);
-	list_del(&c->list);
-err_del_cdev_and_free_channel:
-	cdev_del(&c->cdev);
-err_free_c:
-	kfree(c);
-err_remove_ida:
-	ida_simple_remove(&comp.minor_id, current_minor);
-	return retval;
-}
-
-static struct cdev_component comp = {
-	.cc = {
-		.mod = THIS_MODULE,
-		.name = "cdev",
-		.probe_channel = comp_probe,
-		.disconnect_channel = comp_disconnect_channel,
-		.rx_completion = comp_rx_completion,
-		.tx_completion = comp_tx_completion,
-	},
-};
-
-static int __init mod_init(void)
-{
-	int err;
-
-	comp.class = class_create(THIS_MODULE, "most_cdev");
-	if (IS_ERR(comp.class))
-		return PTR_ERR(comp.class);
-
-	INIT_LIST_HEAD(&channel_list);
-	spin_lock_init(&ch_list_lock);
-	ida_init(&comp.minor_id);
-
-	err = alloc_chrdev_region(&comp.devno, 0, CHRDEV_REGION_SIZE, "cdev");
-	if (err < 0)
-		goto dest_ida;
-	comp.major = MAJOR(comp.devno);
-	err = most_register_component(&comp.cc);
-	if (err)
-		goto free_cdev;
-	err = most_register_configfs_subsys(&comp.cc);
-	if (err)
-		goto deregister_comp;
-	return 0;
-
-deregister_comp:
-	most_deregister_component(&comp.cc);
-free_cdev:
-	unregister_chrdev_region(comp.devno, CHRDEV_REGION_SIZE);
-dest_ida:
-	ida_destroy(&comp.minor_id);
-	class_destroy(comp.class);
-	return err;
-}
-
-static void __exit mod_exit(void)
-{
-	struct comp_channel *c, *tmp;
-
-	most_deregister_configfs_subsys(&comp.cc);
-	most_deregister_component(&comp.cc);
-
-	list_for_each_entry_safe(c, tmp, &channel_list, list) {
-		destroy_cdev(c);
-		destroy_channel(c);
-	}
-	unregister_chrdev_region(comp.devno, CHRDEV_REGION_SIZE);
-	ida_destroy(&comp.minor_id);
-	class_destroy(comp.class);
-}
-
-module_init(mod_init);
-module_exit(mod_exit);
-MODULE_AUTHOR("Christian Gromm <christian.gromm@microchip.com>");
-MODULE_LICENSE("GPL");
-MODULE_DESCRIPTION("character device component for mostcore");
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
