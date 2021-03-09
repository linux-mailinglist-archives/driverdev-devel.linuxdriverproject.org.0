Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9AA332428
	for <lists+driverdev-devel@lfdr.de>; Tue,  9 Mar 2021 12:35:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 09B6C4AD3F;
	Tue,  9 Mar 2021 11:35:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rpqIQmcVlBig; Tue,  9 Mar 2021 11:35:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5F94E4B59B;
	Tue,  9 Mar 2021 11:35:25 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 382D61BF288
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 11:35:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C6E3683252
 for <devel@linuxdriverproject.org>; Tue,  9 Mar 2021 11:35:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8NSXmaTV9Y5B for <devel@linuxdriverproject.org>;
 Tue,  9 Mar 2021 11:35:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp1.osuosl.org (Postfix) with ESMTPS id B5C39833FB
 for <devel@driverdev.osuosl.org>; Tue,  9 Mar 2021 11:35:07 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 t5-20020a1c77050000b029010e62cea9deso5770427wmi.0
 for <devel@driverdev.osuosl.org>; Tue, 09 Mar 2021 03:35:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=XZIwyJWJm6UmmLiM/vUXLXUQVFfnH4yAi4Y/iqdSy70=;
 b=N21n2TaqWooIw3nhwmappJWmUgVYXXA/FogIWRFTkpVUy/vx34m0aLqW8f9BSdgRzO
 Qwan8kGJgdalxM7JMytXMO23j1rafZsnIFy7wyAcHN10ajsiR56cwJq7/+kgSDFOM2hU
 /2RGnsKOmWTxRiGddnvylAsnoLOBjEwrnvWVm9hCWaLXEKFeWPLnI3Kd6m2UzpGaBV6N
 Pu72qC3QJRtWcHwQm46mt3awXkleKKVBeWDkqUT6X6VP0YOh5TOGumySNpXMdb+UpxYJ
 uYyNyi2/KB7gqrQgPo6PrL7XEvo9cXAWMkKVD9KJbU18sCmhFLcEQDUwtTLnNK1lm8h/
 CQ4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=XZIwyJWJm6UmmLiM/vUXLXUQVFfnH4yAi4Y/iqdSy70=;
 b=lBYsMiUkYZE7uhQtNpw9mCYt3yR5g2qgAI28KmigO35kH4zMEmZeEQaLQZdRhdo4c0
 xQfj/YMpZmCGLrnJcc+eqQgnNXGDy8Pzab0E5Re3+7Nj4ZKNsIs2CTsywSmrJgIJEDsT
 Ttf2zZXlCEOgweNNtzwN1IUK5g2aYfoH6Fw8YFrFZda4bQcd/nYnxb6IP5fdAlsejHgN
 foY3YVQi+A3c8lUc5wKB+MHcYnN+lZnu3/X43owjCIRQByIXjyXFKEHKmtt21+i6fjK5
 eAID1Mv8ViHmS3pQnKWNcJGSLi6zfKemEX1uwJr/rr4HCQlR0G17bBeeUEwW5kXNJwTg
 MVrw==
X-Gm-Message-State: AOAM532b31cIgEfpQLbyGeyMbKXOnumvu6Ceit+AeJ44eJHb0SZf07F4
 zSOqDvm6tWFj9Y8Ba5/J5No=
X-Google-Smtp-Source: ABdhPJxZAhmR/W/I50Fjfqxabo03BJ5uuPSBh3rhXq61VIg2qvmgGp5MkMz5q2Gtx4aNZTAi5mZGtg==
X-Received: by 2002:a1c:7905:: with SMTP id l5mr3548088wme.181.1615289705719; 
 Tue, 09 Mar 2021 03:35:05 -0800 (PST)
Received: from ruhe.localdomain (93-173-65-134.bb.netvision.net.il.
 [93.173.65.134])
 by smtp.gmail.com with ESMTPSA id z1sm23654327wru.95.2021.03.09.03.35.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Mar 2021 03:35:05 -0800 (PST)
From: eli.billauer@gmail.com
To: gregkh@linuxfoundation.org,
	arnd@arndb.de
Subject: [PATCH v3 1/2] char: xillybus: Move class-related functions to new
 xillybus_class.c
Date: Tue,  9 Mar 2021 13:34:24 +0200
Message-Id: <20210309113425.61296-2-eli.billauer@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210309113425.61296-1-eli.billauer@gmail.com>
References: <20210309113425.61296-1-eli.billauer@gmail.com>
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
Cc: devel@driverdev.osuosl.org, Eli Billauer <eli.billauer@gmail.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Eli Billauer <eli.billauer@gmail.com>

This patch is a preparation for adding another related driver, XillyUSB.
In order to share some code between the existing Xillybus driver and the
one to be added, some functions are moved to xillybus_class.c

The header file, xillybus_class.h, is temporarily placed in include/linux/,
because the new XillyUSB driver is intended as a staging driver for the
time being.

Signed-off-by: Eli Billauer <eli.billauer@gmail.com>
---

Notes:
    Changelog:
    
    This patch did not exist prior to v3.

 drivers/char/xillybus/Kconfig          |   4 +
 drivers/char/xillybus/Makefile         |   1 +
 drivers/char/xillybus/xillybus.h       |  10 +-
 drivers/char/xillybus/xillybus_class.c | 263 +++++++++++++++++++++++++
 drivers/char/xillybus/xillybus_core.c  | 181 +++--------------
 include/linux/xillybus_class.h         |  30 +++
 6 files changed, 322 insertions(+), 167 deletions(-)
 create mode 100644 drivers/char/xillybus/xillybus_class.c
 create mode 100644 include/linux/xillybus_class.h

diff --git a/drivers/char/xillybus/Kconfig b/drivers/char/xillybus/Kconfig
index 130dbdce858f..e7800f025249 100644
--- a/drivers/char/xillybus/Kconfig
+++ b/drivers/char/xillybus/Kconfig
@@ -3,10 +3,14 @@
 # Xillybus devices
 #
 
+config XILLYBUS_CLASS
+	tristate
+
 config XILLYBUS
 	tristate "Xillybus generic FPGA interface"
 	depends on PCI || OF
 	select CRC32
+	select XILLYBUS_CLASS
 	help
 	  Xillybus is a generic interface for peripherals designed on
 	  programmable logic (FPGA). The driver probes the hardware for
diff --git a/drivers/char/xillybus/Makefile b/drivers/char/xillybus/Makefile
index 099e9a3585fc..591615264591 100644
--- a/drivers/char/xillybus/Makefile
+++ b/drivers/char/xillybus/Makefile
@@ -3,6 +3,7 @@
 # Makefile for Xillybus driver
 #
 
+obj-$(CONFIG_XILLYBUS_CLASS)	+= xillybus_class.o
 obj-$(CONFIG_XILLYBUS)		+= xillybus_core.o
 obj-$(CONFIG_XILLYBUS_PCIE)	+= xillybus_pcie.o
 obj-$(CONFIG_XILLYBUS_OF)	+= xillybus_of.o
diff --git a/drivers/char/xillybus/xillybus.h b/drivers/char/xillybus/xillybus.h
index 8e3ed4d1bb7f..c63ffc56637c 100644
--- a/drivers/char/xillybus/xillybus.h
+++ b/drivers/char/xillybus/xillybus.h
@@ -30,7 +30,8 @@ struct xilly_buffer {
 
 struct xilly_idt_handle {
 	unsigned char *chandesc;
-	unsigned char *idt;
+	unsigned char *names;
+	int names_len;
 	int entries;
 };
 
@@ -94,7 +95,6 @@ struct xilly_endpoint {
 	struct device *dev;
 	struct xilly_endpoint_hardware *ephw;
 
-	struct list_head ep_list;
 	int dma_using_dac; /* =1 if 64-bit DMA is used, =0 otherwise. */
 	__iomem void *registers;
 	int fatal_error;
@@ -102,12 +102,6 @@ struct xilly_endpoint {
 	struct mutex register_mutex;
 	wait_queue_head_t ep_wait;
 
-	/* Channels and message handling */
-	struct cdev cdev;
-
-	int major;
-	int lowest_minor; /* Highest minor = lowest_minor + num_channels - 1 */
-
 	int num_channels; /* EXCLUDING message buffer */
 	struct xilly_channel **channels;
 	int msg_counter;
diff --git a/drivers/char/xillybus/xillybus_class.c b/drivers/char/xillybus/xillybus_class.c
new file mode 100644
index 000000000000..f3cfb76623c8
--- /dev/null
+++ b/drivers/char/xillybus/xillybus_class.c
@@ -0,0 +1,263 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright 2021 Xillybus Ltd, http://xillybus.com
+ *
+ * Driver for the Xillybus class
+ */
+
+#include <linux/types.h>
+#include <linux/module.h>
+#include <linux/device.h>
+#include <linux/fs.h>
+#include <linux/cdev.h>
+#include <linux/slab.h>
+#include <linux/list.h>
+#include <linux/mutex.h>
+
+#include <linux/xillybus_class.h>
+
+MODULE_DESCRIPTION("Driver for Xillybus class");
+MODULE_AUTHOR("Eli Billauer, Xillybus Ltd.");
+MODULE_VERSION("1.0");
+MODULE_ALIAS("xillybus_class");
+MODULE_LICENSE("GPL v2");
+
+static DEFINE_MUTEX(unit_mutex);
+static LIST_HEAD(unit_list);
+static struct class *xillybus_class;
+
+#define UNITNAMELEN 16
+
+struct xilly_unit {
+	struct list_head list_entry;
+	void *private_data;
+
+	struct cdev *cdev;
+	char name[UNITNAMELEN];
+	int major;
+	int lowest_minor;
+	int num_nodes;
+};
+
+int xillybus_init_chrdev(struct device *dev,
+			 const struct file_operations *fops,
+			 struct module *owner,
+			 void *private_data,
+			 unsigned char *idt, unsigned int len,
+			 int num_nodes,
+			 const char *prefix, bool enumerate)
+{
+	int rc;
+	dev_t mdev;
+	int i;
+	char devname[48];
+
+	struct device *device;
+	size_t namelen;
+	struct xilly_unit *unit, *u;
+
+	unit = kzalloc(sizeof(*unit), GFP_KERNEL);
+
+	if (!unit)
+		return -ENOMEM;
+
+	mutex_lock(&unit_mutex);
+
+	if (!enumerate)
+		snprintf(unit->name, UNITNAMELEN, "%s", prefix);
+
+	for (i = 0; enumerate; i++) {
+		snprintf(unit->name, UNITNAMELEN, "%s_%02d",
+			 prefix, i);
+
+		enumerate = false;
+		list_for_each_entry(u, &unit_list, list_entry)
+			if (!strcmp(unit->name, u->name)) {
+				enumerate = true;
+				break;
+			}
+	}
+
+	rc = alloc_chrdev_region(&mdev, 0, num_nodes, unit->name);
+
+	if (rc) {
+		dev_warn(dev, "Failed to obtain major/minors");
+		goto fail_obtain;
+		return rc;
+	}
+
+	unit->major = MAJOR(mdev);
+	unit->lowest_minor = MINOR(mdev);
+	unit->num_nodes = num_nodes;
+	unit->private_data = private_data;
+
+	unit->cdev = cdev_alloc();
+	if (!unit->cdev)
+		goto unregister_chrdev;
+
+	unit->cdev->ops = fops;
+	unit->cdev->owner = owner;
+
+	rc = cdev_add(unit->cdev, MKDEV(unit->major, unit->lowest_minor),
+		      unit->num_nodes);
+	if (rc) {
+		dev_err(dev, "Failed to add cdev.\n");
+		/* kobject_put() is normally done by cdev_del() */
+		kobject_put(&unit->cdev->kobj);
+		goto unregister_chrdev;
+	}
+
+	for (i = 0; i < num_nodes; i++) {
+		namelen = strnlen(idt, len);
+
+		if (namelen == len) {
+			dev_err(dev, "IDT's list of names is too short. This is exceptionally weird, because its CRC is OK\n");
+			rc = -ENODEV;
+			goto unroll_device_create;
+		}
+
+		snprintf(devname, sizeof(devname), "%s_%s",
+			 unit->name, idt);
+
+		len -= namelen + 1;
+		idt += namelen + 1;
+
+		device = device_create(xillybus_class,
+				       NULL,
+				       MKDEV(unit->major,
+					     i + unit->lowest_minor),
+				       NULL,
+				       "%s", devname);
+
+		if (IS_ERR(device)) {
+			dev_err(dev, "Failed to create %s device. Aborting.\n",
+				devname);
+			rc = -ENODEV;
+			goto unroll_device_create;
+		}
+	}
+
+	if (len) {
+		dev_err(dev, "IDT's list of names is too long. This is exceptionally weird, because its CRC is OK\n");
+		rc = -ENODEV;
+		goto unroll_device_create;
+	}
+
+	list_add_tail(&unit->list_entry, &unit_list);
+
+	dev_info(dev, "Created %d device files.\n", num_nodes);
+
+	mutex_unlock(&unit_mutex);
+
+	return 0;
+
+unroll_device_create:
+	for (i--; i >= 0; i--)
+		device_destroy(xillybus_class, MKDEV(unit->major,
+						     i + unit->lowest_minor));
+
+	cdev_del(unit->cdev);
+
+unregister_chrdev:
+	unregister_chrdev_region(MKDEV(unit->major, unit->lowest_minor),
+				 unit->num_nodes);
+
+fail_obtain:
+	mutex_unlock(&unit_mutex);
+
+	kfree(unit);
+
+	return rc;
+}
+EXPORT_SYMBOL(xillybus_init_chrdev);
+
+void xillybus_cleanup_chrdev(void *private_data,
+			     struct device *dev)
+{
+	int minor;
+	struct xilly_unit *unit;
+	bool found = false;
+
+	mutex_lock(&unit_mutex);
+
+	list_for_each_entry(unit, &unit_list, list_entry)
+		if (unit->private_data == private_data) {
+			found = true;
+			break;
+		}
+
+	if (!found) {
+		dev_err(dev, "Weird bug: Failed to find unit\n");
+		mutex_unlock(&unit_mutex);
+		return;
+	}
+
+	for (minor = unit->lowest_minor;
+	     minor < (unit->lowest_minor + unit->num_nodes);
+	     minor++)
+		device_destroy(xillybus_class, MKDEV(unit->major, minor));
+
+	cdev_del(unit->cdev);
+
+	unregister_chrdev_region(MKDEV(unit->major, unit->lowest_minor),
+				 unit->num_nodes);
+
+	dev_info(dev, "Removed %d device files.\n",
+		 unit->num_nodes);
+
+	list_del(&unit->list_entry);
+	kfree(unit);
+
+	mutex_unlock(&unit_mutex);
+}
+EXPORT_SYMBOL(xillybus_cleanup_chrdev);
+
+int xillybus_find_inode(struct inode *inode,
+			void **private_data, int *index)
+{
+	int minor = iminor(inode);
+	int major = imajor(inode);
+	struct xilly_unit *unit;
+	bool found = false;
+
+	mutex_lock(&unit_mutex);
+
+	list_for_each_entry(unit, &unit_list, list_entry)
+		if (unit->major == major &&
+		    minor >= unit->lowest_minor &&
+		    minor < (unit->lowest_minor + unit->num_nodes)) {
+			found = true;
+			break;
+		}
+
+	mutex_unlock(&unit_mutex);
+
+	if (!found)
+		return -ENODEV;
+
+	*private_data = unit->private_data;
+	*index = minor - unit->lowest_minor;
+
+	return 0;
+}
+EXPORT_SYMBOL(xillybus_find_inode);
+
+static int __init xillybus_class_init(void)
+{
+	xillybus_class = class_create(THIS_MODULE, "xillybus");
+
+	if (IS_ERR(xillybus_class)) {
+		pr_warn("Failed to register xillybus class\n");
+
+		return PTR_ERR(xillybus_class);
+	}
+	return 0;
+}
+
+static void __exit xillybus_class_exit(void)
+{
+	class_destroy(xillybus_class);
+}
+
+module_init(xillybus_class_init);
+module_exit(xillybus_class_exit);
diff --git a/drivers/char/xillybus/xillybus_core.c b/drivers/char/xillybus/xillybus_core.c
index 57fa68834981..57884fdd07d8 100644
--- a/drivers/char/xillybus/xillybus_core.c
+++ b/drivers/char/xillybus/xillybus_core.c
@@ -21,7 +21,6 @@
 #include <linux/interrupt.h>
 #include <linux/sched.h>
 #include <linux/fs.h>
-#include <linux/cdev.h>
 #include <linux/spinlock.h>
 #include <linux/mutex.h>
 #include <linux/crc32.h>
@@ -30,10 +29,11 @@
 #include <linux/slab.h>
 #include <linux/workqueue.h>
 #include "xillybus.h"
+#include <linux/xillybus_class.h>
 
 MODULE_DESCRIPTION("Xillybus core functions");
 MODULE_AUTHOR("Eli Billauer, Xillybus Ltd.");
-MODULE_VERSION("1.07");
+MODULE_VERSION("1.10");
 MODULE_ALIAS("xillybus_core");
 MODULE_LICENSE("GPL v2");
 
@@ -58,16 +58,6 @@ MODULE_LICENSE("GPL v2");
 
 static const char xillyname[] = "xillybus";
 
-static struct class *xillybus_class;
-
-/*
- * ep_list_lock is the last lock to be taken; No other lock requests are
- * allowed while holding it. It merely protects list_of_endpoints, and not
- * the endpoints listed in it.
- */
-
-static LIST_HEAD(list_of_endpoints);
-static struct mutex ep_list_lock;
 static struct workqueue_struct *xillybus_wq;
 
 /*
@@ -570,10 +560,8 @@ static int xilly_scan_idt(struct xilly_endpoint *endpoint,
 	unsigned char *scan;
 	int len;
 
-	scan = idt;
-	idt_handle->idt = idt;
-
-	scan++; /* Skip version number */
+	scan = idt + 1;
+	idt_handle->names = scan;
 
 	while ((scan <= end_of_idt) && *scan) {
 		while ((scan <= end_of_idt) && *scan++)
@@ -581,6 +569,8 @@ static int xilly_scan_idt(struct xilly_endpoint *endpoint,
 		count++;
 	}
 
+	idt_handle->names_len = scan - idt_handle->names;
+
 	scan++;
 
 	if (scan > end_of_idt) {
@@ -1407,36 +1397,20 @@ static ssize_t xillybus_write(struct file *filp, const char __user *userbuf,
 
 static int xillybus_open(struct inode *inode, struct file *filp)
 {
-	int rc = 0;
+	int rc;
 	unsigned long flags;
-	int minor = iminor(inode);
-	int major = imajor(inode);
-	struct xilly_endpoint *ep_iter, *endpoint = NULL;
+	struct xilly_endpoint *endpoint;
 	struct xilly_channel *channel;
+	int index;
 
-	mutex_lock(&ep_list_lock);
-
-	list_for_each_entry(ep_iter, &list_of_endpoints, ep_list) {
-		if ((ep_iter->major == major) &&
-		    (minor >= ep_iter->lowest_minor) &&
-		    (minor < (ep_iter->lowest_minor +
-			      ep_iter->num_channels))) {
-			endpoint = ep_iter;
-			break;
-		}
-	}
-	mutex_unlock(&ep_list_lock);
-
-	if (!endpoint) {
-		pr_err("xillybus: open() failed to find a device for major=%d and minor=%d\n",
-		       major, minor);
-		return -ENODEV;
-	}
+	rc = xillybus_find_inode(inode, (void **)&endpoint, &index);
+	if (rc)
+		return rc;
 
 	if (endpoint->fatal_error)
 		return -EIO;
 
-	channel = endpoint->channels[1 + minor - endpoint->lowest_minor];
+	channel = endpoint->channels[1 + index];
 	filp->private_data = channel;
 
 	/*
@@ -1799,95 +1773,6 @@ static const struct file_operations xillybus_fops = {
 	.poll       = xillybus_poll,
 };
 
-static int xillybus_init_chrdev(struct xilly_endpoint *endpoint,
-				const unsigned char *idt)
-{
-	int rc;
-	dev_t dev;
-	int devnum, i, minor, major;
-	char devname[48];
-	struct device *device;
-
-	rc = alloc_chrdev_region(&dev, 0, /* minor start */
-				 endpoint->num_channels,
-				 xillyname);
-	if (rc) {
-		dev_warn(endpoint->dev, "Failed to obtain major/minors");
-		return rc;
-	}
-
-	endpoint->major = major = MAJOR(dev);
-	endpoint->lowest_minor = minor = MINOR(dev);
-
-	cdev_init(&endpoint->cdev, &xillybus_fops);
-	endpoint->cdev.owner = endpoint->ephw->owner;
-	rc = cdev_add(&endpoint->cdev, MKDEV(major, minor),
-		      endpoint->num_channels);
-	if (rc) {
-		dev_warn(endpoint->dev, "Failed to add cdev. Aborting.\n");
-		goto unregister_chrdev;
-	}
-
-	idt++;
-
-	for (i = minor, devnum = 0;
-	     devnum < endpoint->num_channels;
-	     devnum++, i++) {
-		snprintf(devname, sizeof(devname)-1, "xillybus_%s", idt);
-
-		devname[sizeof(devname)-1] = 0; /* Should never matter */
-
-		while (*idt++)
-			/* Skip to next */;
-
-		device = device_create(xillybus_class,
-				       NULL,
-				       MKDEV(major, i),
-				       NULL,
-				       "%s", devname);
-
-		if (IS_ERR(device)) {
-			dev_warn(endpoint->dev,
-				 "Failed to create %s device. Aborting.\n",
-				 devname);
-			rc = -ENODEV;
-			goto unroll_device_create;
-		}
-	}
-
-	dev_info(endpoint->dev, "Created %d device files.\n",
-		 endpoint->num_channels);
-	return 0; /* succeed */
-
-unroll_device_create:
-	devnum--; i--;
-	for (; devnum >= 0; devnum--, i--)
-		device_destroy(xillybus_class, MKDEV(major, i));
-
-	cdev_del(&endpoint->cdev);
-unregister_chrdev:
-	unregister_chrdev_region(MKDEV(major, minor), endpoint->num_channels);
-
-	return rc;
-}
-
-static void xillybus_cleanup_chrdev(struct xilly_endpoint *endpoint)
-{
-	int minor;
-
-	for (minor = endpoint->lowest_minor;
-	     minor < (endpoint->lowest_minor + endpoint->num_channels);
-	     minor++)
-		device_destroy(xillybus_class, MKDEV(endpoint->major, minor));
-	cdev_del(&endpoint->cdev);
-	unregister_chrdev_region(MKDEV(endpoint->major,
-				       endpoint->lowest_minor),
-				 endpoint->num_channels);
-
-	dev_info(endpoint->dev, "Removed %d device files.\n",
-		 endpoint->num_channels);
-}
-
 struct xilly_endpoint *xillybus_init_endpoint(struct pci_dev *pdev,
 					      struct device *dev,
 					      struct xilly_endpoint_hardware
@@ -2027,28 +1912,20 @@ int xillybus_endpoint_discovery(struct xilly_endpoint *endpoint)
 	if (rc)
 		goto failed_idt;
 
-	/*
-	 * endpoint is now completely configured. We put it on the list
-	 * available to open() before registering the char device(s)
-	 */
-
-	mutex_lock(&ep_list_lock);
-	list_add_tail(&endpoint->ep_list, &list_of_endpoints);
-	mutex_unlock(&ep_list_lock);
+	rc = xillybus_init_chrdev(dev, &xillybus_fops,
+				  endpoint->ephw->owner, endpoint,
+				  idt_handle.names,
+				  idt_handle.names_len,
+				  endpoint->num_channels,
+				  xillyname, false);
 
-	rc = xillybus_init_chrdev(endpoint, idt_handle.idt);
 	if (rc)
-		goto failed_chrdevs;
+		goto failed_idt;
 
 	devres_release_group(dev, bootstrap_resources);
 
 	return 0;
 
-failed_chrdevs:
-	mutex_lock(&ep_list_lock);
-	list_del(&endpoint->ep_list);
-	mutex_unlock(&ep_list_lock);
-
 failed_idt:
 	xilly_quiesce(endpoint);
 	flush_workqueue(xillybus_wq);
@@ -2059,11 +1936,7 @@ EXPORT_SYMBOL(xillybus_endpoint_discovery);
 
 void xillybus_endpoint_remove(struct xilly_endpoint *endpoint)
 {
-	xillybus_cleanup_chrdev(endpoint);
-
-	mutex_lock(&ep_list_lock);
-	list_del(&endpoint->ep_list);
-	mutex_unlock(&ep_list_lock);
+	xillybus_cleanup_chrdev(endpoint, endpoint->dev);
 
 	xilly_quiesce(endpoint);
 
@@ -2077,17 +1950,9 @@ EXPORT_SYMBOL(xillybus_endpoint_remove);
 
 static int __init xillybus_init(void)
 {
-	mutex_init(&ep_list_lock);
-
-	xillybus_class = class_create(THIS_MODULE, xillyname);
-	if (IS_ERR(xillybus_class))
-		return PTR_ERR(xillybus_class);
-
 	xillybus_wq = alloc_workqueue(xillyname, 0, 0);
-	if (!xillybus_wq) {
-		class_destroy(xillybus_class);
+	if (!xillybus_wq)
 		return -ENOMEM;
-	}
 
 	return 0;
 }
@@ -2096,8 +1961,6 @@ static void __exit xillybus_exit(void)
 {
 	/* flush_workqueue() was called for each endpoint released */
 	destroy_workqueue(xillybus_wq);
-
-	class_destroy(xillybus_class);
 }
 
 module_init(xillybus_init);
diff --git a/include/linux/xillybus_class.h b/include/linux/xillybus_class.h
new file mode 100644
index 000000000000..5dbfdfc95c65
--- /dev/null
+++ b/include/linux/xillybus_class.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright 2021 Xillybus Ltd, http://www.xillybus.com
+ *
+ * Header file for the Xillybus class
+ */
+
+#ifndef __XILLYBUS_CLASS_H
+#define __XILLYBUS_CLASS_H
+
+#include <linux/types.h>
+#include <linux/device.h>
+#include <linux/fs.h>
+#include <linux/module.h>
+
+int xillybus_init_chrdev(struct device *dev,
+			 const struct file_operations *fops,
+			 struct module *owner,
+			 void *private_data,
+			 unsigned char *idt, unsigned int len,
+			 int num_nodes,
+			 const char *prefix, bool enumerate);
+
+void xillybus_cleanup_chrdev(void *private_data,
+			     struct device *dev);
+
+int xillybus_find_inode(struct inode *inode,
+			void **private_data, int *index);
+
+#endif /* __XILLYBUS_CLASS_H */
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
