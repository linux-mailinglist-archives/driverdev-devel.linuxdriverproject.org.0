Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 751EE23B629
	for <lists+driverdev-devel@lfdr.de>; Tue,  4 Aug 2020 09:57:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C0AD87D6E;
	Tue,  4 Aug 2020 07:57:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NaL+3J9uwwIw; Tue,  4 Aug 2020 07:57:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 94E2C8757D;
	Tue,  4 Aug 2020 07:56:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 6B8281BF2A7
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 07:56:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 5943385FA4
 for <devel@linuxdriverproject.org>; Tue,  4 Aug 2020 07:56:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WwWET06IxyAr for <devel@linuxdriverproject.org>;
 Tue,  4 Aug 2020 07:56:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mailgw02.mediatek.com (unknown [210.61.82.184])
 by fraxinus.osuosl.org (Postfix) with ESMTP id F415C85F6F
 for <devel@driverdev.osuosl.org>; Tue,  4 Aug 2020 07:56:46 +0000 (UTC)
X-UUID: ed35060d1a1a41f9ac20f12c9845838e-20200804
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=txBt/7AQ2B2Kt5zNeQDUFBVK/taY6ewq9kstow/6poU=; 
 b=ofsXEWb5erDhLaO5ecFv82VSDpzv6ZC/VFmoExxhsaCfXyG8FyWVe7SfcJusjFSo0dZY7nrAwoPNttsGmwqvkVKnH/OZKDsk9YXYYxHp6ct0c2APxC1LxNDPdvlg52LPx+MdtUOhh+oomP/VLAZOdjk7LUnHKYmHJrtU6GAJMj8=;
X-UUID: ed35060d1a1a41f9ac20f12c9845838e-20200804
Received: from mtkexhb02.mediatek.inc [(172.21.101.103)] by
 mailgw02.mediatek.com (envelope-from <hongxu.zhao@mediatek.com>)
 (Cellopoint E-mail Firewall v4.1.10 Build 0809 with TLS)
 with ESMTP id 1584648763; Tue, 04 Aug 2020 15:56:43 +0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 4 Aug 2020 15:56:40 +0800
Received: from localhost.localdomain (10.15.20.246) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 4 Aug 2020 15:56:40 +0800
From: hongxu.zhao <hongxu.zhao@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: Add Mediatek High Frequency Manager Framework
Date: Tue, 4 Aug 2020 15:52:49 +0800
Message-ID: <20200804075339.9820-1-hongxu.zhao@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
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
Cc: "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
 wsd_upstream@mediatek.com, Weiqi Fu <weiqi.fu@mediatek.com>,
 Hongxu Zhao <hongxu.zhao@mediatek.com>,
 open list <linux-kernel@vger.kernel.org>,
 Cunliang Du <cunliang.du@mediatek.com>, "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Zhen jiang <zhen.jiang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add a new sensor framework into linux kernel which can support multi client request sensor data.
There are the following features:
    1.Ringbuffer between manager and client;
    2.Kernel space user interface;
    3.User space user interface with syscall;
    4.Each client hang detect mechanism;
    5.Polling timer management in framework no need driver concern;
    6.Polling kthread work intergrated into a single kthread
      worker to save system resources in framework no need driver concern;
    7.Proc file system to show manager device and client details;
    8.Compitable with android and widely used in many mediatek platform products;

Change-Id: I6361cdc2d51de50f66eede7df099c4575e7ec473
Signed-off-by: hongxu.zhao <hongxu.zhao@mediatek.com>
---
 drivers/staging/Kconfig                       |    2 +
 drivers/staging/Makefile                      |    1 +
 drivers/staging/hf_manager/Kconfig            |   11 +
 drivers/staging/hf_manager/Makefile           |    7 +
 drivers/staging/hf_manager/core/Makefile      |    6 +
 drivers/staging/hf_manager/core/hf_manager.c  | 1419 +++++++++++++++++
 drivers/staging/hf_manager/core/hf_manager.h  |  181 +++
 .../staging/hf_manager/core/hf_sensor_io.h    |   69 +
 .../staging/hf_manager/core/hf_sensor_type.h  |   56 +
 drivers/staging/hf_manager/test/Makefile      |   11 +
 drivers/staging/hf_manager/test/test.c        |  182 +++
 drivers/staging/hf_manager/test/test_app.c    |  174 ++
 drivers/staging/hf_manager/test/test_app1.c   |  143 ++
 drivers/staging/hf_manager/test/test_app2.c   |  162 ++
 14 files changed, 2424 insertions(+)
 create mode 100644 drivers/staging/hf_manager/Kconfig
 create mode 100644 drivers/staging/hf_manager/Makefile
 create mode 100644 drivers/staging/hf_manager/core/Makefile
 create mode 100644 drivers/staging/hf_manager/core/hf_manager.c
 create mode 100644 drivers/staging/hf_manager/core/hf_manager.h
 create mode 100644 drivers/staging/hf_manager/core/hf_sensor_io.h
 create mode 100644 drivers/staging/hf_manager/core/hf_sensor_type.h
 create mode 100644 drivers/staging/hf_manager/test/Makefile
 create mode 100644 drivers/staging/hf_manager/test/test.c
 create mode 100644 drivers/staging/hf_manager/test/test_app.c
 create mode 100644 drivers/staging/hf_manager/test/test_app1.c
 create mode 100644 drivers/staging/hf_manager/test/test_app2.c

diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
index 4ec5528f89fa..ef8f9dc957b3 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -120,4 +120,6 @@ source "drivers/staging/qlge/Kconfig"
 
 source "drivers/staging/wfx/Kconfig"
 
+source "drivers/staging/hf_manager/Kconfig"
+
 endif # STAGING
diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
index 4d34198151b3..64bf769c0131 100644
--- a/drivers/staging/Makefile
+++ b/drivers/staging/Makefile
@@ -50,3 +50,4 @@ obj-$(CONFIG_FIELDBUS_DEV)     += fieldbus/
 obj-$(CONFIG_KPC2000)		+= kpc2000/
 obj-$(CONFIG_QLGE)		+= qlge/
 obj-$(CONFIG_WFX)		+= wfx/
+obj-$(CONFIG_HF_MANAGER) += hf_manager/
diff --git a/drivers/staging/hf_manager/Kconfig b/drivers/staging/hf_manager/Kconfig
new file mode 100644
index 000000000000..af8914c97af8
--- /dev/null
+++ b/drivers/staging/hf_manager/Kconfig
@@ -0,0 +1,11 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# high frequency manager subsystem configuration
+#
+
+menuconfig HF_MANAGER
+	tristate "High frequency manager support"
+	help
+	  The high frequency manager subsystem provides a unified framework for
+	  drivers for many different types of embedded mems sensors using a
+	  number of different physical interfaces (i2c, spi, etc).
\ No newline at end of file
diff --git a/drivers/staging/hf_manager/Makefile b/drivers/staging/hf_manager/Makefile
new file mode 100644
index 000000000000..4f00192801c1
--- /dev/null
+++ b/drivers/staging/hf_manager/Makefile
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Makefile for high frequency manager.
+#
+
+obj-y += core/
+# obj-y += test/
diff --git a/drivers/staging/hf_manager/core/Makefile b/drivers/staging/hf_manager/core/Makefile
new file mode 100644
index 000000000000..23a7cc349363
--- /dev/null
+++ b/drivers/staging/hf_manager/core/Makefile
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Makefile for high frequency manager core
+#
+
+obj-y += hf_manager.o
diff --git a/drivers/staging/hf_manager/core/hf_manager.c b/drivers/staging/hf_manager/core/hf_manager.c
new file mode 100644
index 000000000000..a4d4298d5265
--- /dev/null
+++ b/drivers/staging/hf_manager/core/hf_manager.c
@@ -0,0 +1,1419 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2020 MediaTek Inc.
+ * Author: Hongxu Zhao <hongxu.zhao@mediatek.com>
+ */
+
+#define pr_fmt(fmt) "[hf_manager]" fmt
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/device.h>
+#include <linux/fs.h>
+#include <linux/cdev.h>
+#include <linux/slab.h>
+#include <linux/list.h>
+#include <linux/poll.h>
+#include <linux/bitmap.h>
+#include <linux/proc_fs.h>
+#include <linux/seq_file.h>
+#include <uapi/linux/sched/types.h>
+#include <linux/sched_clock.h>
+#include <linux/log2.h>
+
+#include "hf_manager.h"
+
+static const struct coordinate coordinates[] = {
+	{ { 1, 1, 1}, {0, 1, 2} },
+	{ { -1, 1, 1}, {1, 0, 2} },
+	{ { -1, -1, 1}, {0, 1, 2} },
+	{ { 1, -1, 1}, {1, 0, 2} },
+
+	{ { -1, 1, -1}, {0, 1, 2} },
+	{ { 1, 1, -1}, {1, 0, 2} },
+	{ { 1, -1, -1}, {0, 1, 2} },
+	{ { -1, -1, -1}, {1, 0, 2} },
+};
+
+static DECLARE_BITMAP(sensor_list_bitmap, SENSOR_TYPE_SENSOR_MAX);
+static struct hf_core hfcore;
+
+static int hf_manager_find_client(struct hf_core *core,
+				  struct hf_manager_event *event);
+
+static void init_hf_core(struct hf_core *core)
+{
+	int i = 0;
+
+	mutex_init(&core->manager_lock);
+	INIT_LIST_HEAD(&core->manager_list);
+	for (i = 0; i < SENSOR_TYPE_SENSOR_MAX; ++i) {
+		core->state[i].delay = S64_MAX;
+		core->state[i].latency = S64_MAX;
+		atomic64_set(&core->state[i].start_time, S64_MAX);
+	}
+
+	spin_lock_init(&core->client_lock);
+	INIT_LIST_HEAD(&core->client_list);
+
+	kthread_init_worker(&core->kworker);
+}
+
+void coordinate_map(unsigned char direction, s32 *data)
+{
+	s32 temp[3] = {0};
+
+	if (direction >= ARRAY_SIZE(coordinates))
+		return;
+
+	temp[coordinates[direction].map[0]] =
+		coordinates[direction].sign[0] * data[0];
+	temp[coordinates[direction].map[1]] =
+		coordinates[direction].sign[1] * data[1];
+	temp[coordinates[direction].map[2]] =
+		coordinates[direction].sign[2] * data[2];
+
+	data[0] = temp[0];
+	data[1] = temp[1];
+	data[2] = temp[2];
+}
+EXPORT_SYMBOL_GPL(coordinate_map);
+
+static bool filter_event_by_timestamp(struct hf_client_fifo *hf_fifo,
+				      struct hf_manager_event *event)
+{
+	if (hf_fifo->last_time_stamp[event->sensor_type] ==
+			event->timestamp) {
+		return true;
+	}
+	hf_fifo->last_time_stamp[event->sensor_type] = event->timestamp;
+	return false;
+}
+
+static int hf_manager_report_event(struct hf_client *client,
+				   struct hf_manager_event *event)
+{
+	unsigned long flags;
+	unsigned int next = 0;
+	s64 hang_time = 0;
+	const s64 max_hang_time = 1000000000LL;
+	struct hf_client_fifo *hf_fifo = &client->hf_fifo;
+
+	spin_lock_irqsave(&hf_fifo->buffer_lock, flags);
+	if (unlikely(hf_fifo->buffull)) {
+		hang_time = ktime_get_boottime_ns() - hf_fifo->hang_begin;
+		if (hang_time >= max_hang_time) {
+			/* reset buffer */
+			hf_fifo->buffull = false;
+			hf_fifo->head = 0;
+			hf_fifo->tail = 0;
+			pr_err_ratelimited("[%s][%d:%d] buffer reset %lld\n",
+					   client->proc_comm,
+					   client->leader_pid,
+					   client->ppid,
+					   hang_time);
+		} else {
+			pr_err_ratelimited("[%s][%d:%d] buffer full %d %lld\n",
+					   client->proc_comm,
+					   client->leader_pid,
+					   client->ppid,
+					   event->sensor_type,
+					   event->timestamp);
+			spin_unlock_irqrestore(&hf_fifo->buffer_lock, flags);
+			wake_up_interruptible(&hf_fifo->wait);
+			/*
+			 * must return -EAGAIN when buffer full,
+			 * tell caller retry send data some times later.
+			 */
+			return -EAGAIN;
+		}
+	}
+	/* only data action run filter event */
+	if (likely(event->action == DATA_ACTION) &&
+	    unlikely(filter_event_by_timestamp(hf_fifo, event))) {
+		pr_err_ratelimited("[%s][%d:%d] buffer filter %d %lld\n",
+				   client->proc_comm, client->leader_pid,
+				   client->ppid, event->sensor_type,
+				   event->timestamp);
+		spin_unlock_irqrestore(&hf_fifo->buffer_lock, flags);
+		/*
+		 * must return 0 when timestamp filtered, tell caller data
+		 * already in buffer, don't need send again.
+		 */
+		return 0;
+	}
+	hf_fifo->buffer[hf_fifo->head++] = *event;
+	hf_fifo->head &= hf_fifo->bufsize - 1;
+	/* remain 1 count */
+	next = hf_fifo->head + 1;
+	next &= hf_fifo->bufsize - 1;
+	if (unlikely(next == hf_fifo->tail)) {
+		hf_fifo->buffull = true;
+		if (hf_fifo->hang_begin > hf_fifo->client_active) {
+			hang_time = hf_fifo->hang_begin -
+				hf_fifo->client_active;
+			if (hang_time < max_hang_time)
+				hf_fifo->hang_begin = ktime_get_boottime_ns();
+		} else {
+			hf_fifo->hang_begin = ktime_get_boottime_ns();
+		}
+	}
+	spin_unlock_irqrestore(&hf_fifo->buffer_lock, flags);
+
+	wake_up_interruptible(&hf_fifo->wait);
+	return 0;
+}
+
+static void hf_manager_io_schedule(struct hf_manager *manager, s64 timestamp)
+{
+	if (!atomic_read(&manager->io_enabled))
+		return;
+	set_interrupt_timestamp(manager, timestamp);
+	if (READ_ONCE(manager->hf_dev->device_bus) == HF_DEVICE_IO_ASYNC)
+		tasklet_schedule(&manager->io_work_tasklet);
+	else if (READ_ONCE(manager->hf_dev->device_bus) == HF_DEVICE_IO_SYNC)
+		kthread_queue_work(&manager->core->kworker,
+				   &manager->io_kthread_work);
+}
+
+static int hf_manager_io_report(struct hf_manager *manager,
+				struct hf_manager_event *event)
+{
+	/* must return 0 when sensor_type exceed and no need to retry */
+	if (unlikely(event->sensor_type >= SENSOR_TYPE_SENSOR_MAX)) {
+		pr_err_ratelimited("Report failed, %u exceed max\n",
+				   event->sensor_type);
+		return 0;
+	}
+	return hf_manager_find_client(manager->core, event);
+}
+
+static void hf_manager_io_complete(struct hf_manager *manager)
+{
+	clear_bit(HF_MANAGER_IO_IN_PROGRESS, &manager->flags);
+}
+
+static void hf_manager_io_sample(struct hf_manager *manager)
+{
+	int retval;
+
+	if (!manager->hf_dev || !manager->hf_dev->sample)
+		return;
+
+	if (!test_and_set_bit(HF_MANAGER_IO_IN_PROGRESS, &manager->flags)) {
+		retval = manager->hf_dev->sample(manager->hf_dev);
+		if (retval) {
+			clear_bit(HF_MANAGER_IO_IN_PROGRESS,
+				  &manager->flags);
+		}
+	}
+}
+
+static void hf_manager_io_tasklet(unsigned long data)
+{
+	struct hf_manager *manager = (struct hf_manager *)data;
+
+	hf_manager_io_sample(manager);
+}
+
+static void hf_manager_io_kthread_work(struct kthread_work *work)
+{
+	struct hf_manager *manager =
+		container_of(work, struct hf_manager, io_kthread_work);
+
+	hf_manager_io_sample(manager);
+}
+
+static void hf_manager_sched_sample(struct hf_manager *manager, s64 timestamp)
+{
+	hf_manager_io_schedule(manager, timestamp);
+}
+
+static enum hrtimer_restart hf_manager_io_poll(struct hrtimer *timer)
+{
+	s64 interval = 0;
+
+	struct hf_manager *manager =
+		(struct hf_manager *)container_of(timer,
+			struct hf_manager, io_poll_timer);
+
+	hf_manager_sched_sample(manager, ktime_get_boottime_ns());
+	interval = atomic64_read(&manager->io_poll_interval);
+	hrtimer_forward_now(&manager->io_poll_timer, ns_to_ktime(interval));
+	return HRTIMER_RESTART;
+}
+
+static void hf_manager_io_interrupt(struct hf_manager *manager, s64 timestamp)
+{
+	hf_manager_sched_sample(manager, timestamp);
+}
+
+int hf_manager_create(struct hf_device *device)
+{
+	u8 sensor_type = 0;
+	int i = 0, err = 0;
+	u32 gain = 0;
+	struct hf_manager *manager = NULL;
+
+	if (!device || !device->dev_name ||
+	    !device->support_list || !device->support_size)
+		return -EINVAL;
+
+	manager = kzalloc(sizeof(*manager), GFP_KERNEL);
+	if (!manager)
+		return -ENOMEM;
+
+	manager->hf_dev = device;
+	manager->core = &hfcore;
+	device->manager = manager;
+
+	atomic_set(&manager->io_enabled, 0);
+	atomic64_set(&manager->io_poll_interval, S64_MAX);
+
+	clear_bit(HF_MANAGER_IO_IN_PROGRESS, &manager->flags);
+	clear_bit(HF_MANAGER_IO_READY, &manager->flags);
+
+	if (device->device_poll == HF_DEVICE_IO_POLLING) {
+		hrtimer_init(&manager->io_poll_timer,
+			     CLOCK_MONOTONIC, HRTIMER_MODE_REL);
+		manager->io_poll_timer.function = hf_manager_io_poll;
+	} else if (device->device_poll == HF_DEVICE_IO_INTERRUPT) {
+		manager->interrupt = hf_manager_io_interrupt;
+	}
+	manager->report = hf_manager_io_report;
+	manager->complete = hf_manager_io_complete;
+
+	if (device->device_bus == HF_DEVICE_IO_ASYNC)
+		tasklet_init(&manager->io_work_tasklet,
+			     hf_manager_io_tasklet, (unsigned long)manager);
+	else if (device->device_bus == HF_DEVICE_IO_SYNC)
+		kthread_init_work(&manager->io_kthread_work,
+				  hf_manager_io_kthread_work);
+
+	for (i = 0; i < device->support_size; ++i) {
+		sensor_type = device->support_list[i].sensor_type;
+		gain = device->support_list[i].gain;
+		if (unlikely(sensor_type >= SENSOR_TYPE_SENSOR_MAX || !gain)) {
+			pr_err("Device:%s register failed, %u invalid gain\n",
+			       device->dev_name, sensor_type);
+			err = -EINVAL;
+			goto out_err;
+		}
+		if (test_and_set_bit(sensor_type, sensor_list_bitmap)) {
+			pr_err("Device:%s register failed, %u repeat\n",
+			       device->dev_name, sensor_type);
+			err = -EBUSY;
+			goto out_err;
+		}
+	}
+
+	INIT_LIST_HEAD(&manager->list);
+	mutex_lock(&manager->core->manager_lock);
+	list_add(&manager->list, &manager->core->manager_list);
+	mutex_unlock(&manager->core->manager_lock);
+
+	return 0;
+out_err:
+	kfree(manager);
+	device->manager = NULL;
+	return err;
+}
+EXPORT_SYMBOL_GPL(hf_manager_create);
+
+int hf_manager_destroy(struct hf_manager *manager)
+{
+	u8 sensor_type = 0;
+	int i = 0;
+	struct hf_device *device = NULL;
+
+	if (!manager || !manager->hf_dev || !manager->hf_dev->support_list)
+		return -EINVAL;
+
+	device = manager->hf_dev;
+	for (i = 0; i < device->support_size; ++i) {
+		sensor_type = device->support_list[i].sensor_type;
+		if (unlikely(sensor_type >= SENSOR_TYPE_SENSOR_MAX)) {
+			pr_err("Device:%s unregister failed, %u exceed max\n",
+			       device->dev_name, sensor_type);
+			continue;
+		}
+		clear_bit(sensor_type, sensor_list_bitmap);
+	}
+	mutex_lock(&manager->core->manager_lock);
+	list_del(&manager->list);
+	mutex_unlock(&manager->core->manager_lock);
+	if (device->device_poll == HF_DEVICE_IO_POLLING)
+		hrtimer_cancel(&manager->io_poll_timer);
+	if (device->device_bus == HF_DEVICE_IO_ASYNC)
+		tasklet_kill(&manager->io_work_tasklet);
+	else if (device->device_bus == HF_DEVICE_IO_SYNC)
+		kthread_flush_work(&manager->io_kthread_work);
+
+	while (test_bit(HF_MANAGER_IO_IN_PROGRESS, &manager->flags))
+		cpu_relax();
+
+	kfree(manager);
+	return 0;
+}
+EXPORT_SYMBOL_GPL(hf_manager_destroy);
+
+static int hf_manager_distinguish_event(struct hf_client *client,
+					struct hf_manager_event *event)
+{
+	int err = 0;
+	unsigned long flags;
+	struct sensor_state *request = &client->request[event->sensor_type];
+
+	switch (event->action) {
+	case DATA_ACTION:
+		/* must relay on enable status client requested */
+		if (READ_ONCE(request->enable) &&
+		    (event->timestamp > atomic64_read(&request->start_time)))
+			err = hf_manager_report_event(client, event);
+		break;
+	case FLUSH_ACTION:
+		/*
+		 * flush relay on flush count client requested,
+		 * must not relay on enable status.
+		 * flush may report both by looper thread and disable thread.
+		 * spinlock prevent flush count report more than request.
+		 * sequence:
+		 * flush = 1
+		 * looper thread flush > 0
+		 *    looper thread hf_manager_report_event
+		 *        disable thread flush > 0
+		 *            disable thread hf_manager_report_event
+		 * flush complete report 2 times but request is 1.
+		 */
+		spin_lock_irqsave(&client->request_lock, flags);
+		if (atomic_read(&request->flush) > 0) {
+			err = hf_manager_report_event(client, event);
+			/* return < 0, don't decrease flush count */
+			if (err < 0) {
+				spin_unlock_irqrestore(&client->request_lock,
+						       flags);
+				return err;
+			}
+			atomic_dec_if_positive(&request->flush);
+		}
+		spin_unlock_irqrestore(&client->request_lock, flags);
+		break;
+	case BIAS_ACTION:
+		/* relay on status client requested, don't check return */
+		if (READ_ONCE(request->bias))
+			hf_manager_report_event(client, event);
+		break;
+	case CALI_ACTION:
+		/* cali on status client requested, don't check return */
+		if (READ_ONCE(request->cali))
+			hf_manager_report_event(client, event);
+		break;
+	case TEMP_ACTION:
+		/* temp on status  client requested, don't check return */
+		if (READ_ONCE(request->temp))
+			hf_manager_report_event(client, event);
+		break;
+	case TEST_ACTION:
+		/* test on status client requested, don't check return */
+		if (READ_ONCE(request->test))
+			hf_manager_report_event(client, event);
+		break;
+	case RAW_ACTION:
+		/* raw on status client requested, don't check return */
+		if (READ_ONCE(request->raw))
+			hf_manager_report_event(client, event);
+		break;
+	default:
+		pr_err("Report %u failed, unknown action %u\n",
+		       event->sensor_type, event->action);
+		/* unknown action must return 0 */
+		err = 0;
+		break;
+	}
+	return err;
+}
+
+static int hf_manager_find_client(struct hf_core *core,
+				  struct hf_manager_event *event)
+{
+	int err = 0;
+	unsigned long flags;
+	struct hf_client *client = NULL;
+
+	spin_lock_irqsave(&core->client_lock, flags);
+	list_for_each_entry(client, &core->client_list, list) {
+		/* must (err |=), collect all err to decide retry */
+		err |= hf_manager_distinguish_event(client, event);
+	}
+	spin_unlock_irqrestore(&core->client_lock, flags);
+
+	return err;
+}
+
+static struct hf_manager *hf_manager_find_manager(struct hf_core *core,
+						  u8 sensor_type)
+{
+	int i = 0;
+	struct hf_manager *manager = NULL;
+	struct hf_device *device = NULL;
+
+	list_for_each_entry(manager, &core->manager_list, list) {
+		device = READ_ONCE(manager->hf_dev);
+		if (!device || !device->support_list)
+			continue;
+		for (i = 0; i < device->support_size; ++i) {
+			if (sensor_type == device->support_list[i].sensor_type)
+				return manager;
+		}
+	}
+	pr_err("Failed to find manager, %u unregistered\n", sensor_type);
+	return NULL;
+}
+
+static void hf_manager_update_client_param(struct hf_client *client,
+					   struct hf_manager_cmd *cmd,
+					   struct sensor_state *old)
+{
+	struct sensor_state *request = &client->request[cmd->sensor_type];
+
+	/* only enable disable update action delay and latency */
+	if (cmd->action == HF_MANAGER_SENSOR_ENABLE) {
+		/* save enable delay latency and start_time to old */
+		old->enable = request->enable;
+		old->delay = request->delay;
+		old->latency = request->latency;
+		atomic64_set(&old->start_time,
+			     atomic64_read(&request->start_time));
+		/* update new */
+		if (!request->enable)
+			atomic64_set(&request->start_time,
+				     ktime_get_boottime_ns());
+		request->enable = true;
+		request->delay = cmd->delay;
+		request->latency = cmd->latency;
+	} else if (cmd->action == HF_MANAGER_SENSOR_DISABLE) {
+		atomic64_set(&request->start_time, S64_MAX);
+		request->enable = false;
+		request->delay = S64_MAX;
+		request->latency = S64_MAX;
+	}
+}
+
+static void hf_manager_clear_client_param(struct hf_client *client,
+					  struct hf_manager_cmd *cmd,
+					  struct sensor_state *old)
+{
+	struct sensor_state *request = &client->request[cmd->sensor_type];
+
+	if (cmd->action == HF_MANAGER_SENSOR_ENABLE) {
+		/*
+		 * restore enable delay latency and start_time
+		 * remember must not restore bias raw etc
+		 */
+		atomic64_set(&request->start_time,
+			     atomic64_read(&old->start_time));
+		request->enable = old->enable;
+		request->delay = old->delay;
+		request->latency = old->latency;
+	} else if (cmd->action == HF_MANAGER_SENSOR_DISABLE) {
+		atomic64_set(&request->start_time, S64_MAX);
+		request->enable = false;
+		request->delay = S64_MAX;
+		request->latency = S64_MAX;
+	}
+}
+
+static void hf_manager_find_best_param(struct hf_core *core,
+				       u8 sensor_type, bool *action,
+				       s64 *delay, s64 *latency)
+{
+	unsigned long flags;
+	struct hf_client *client = NULL;
+	struct sensor_state *request = NULL;
+	bool tmp_enable = false;
+	s64 tmp_delay = S64_MAX;
+	s64 tmp_latency = S64_MAX;
+
+	spin_lock_irqsave(&core->client_lock, flags);
+	list_for_each_entry(client, &core->client_list, list) {
+		request = &client->request[sensor_type];
+		if (request->enable) {
+			tmp_enable = true;
+			if (request->delay < tmp_delay)
+				tmp_delay = request->delay;
+			if (request->latency < tmp_latency)
+				tmp_latency = request->latency;
+		}
+	}
+	spin_unlock_irqrestore(&core->client_lock, flags);
+	*action = tmp_enable;
+	*delay = tmp_delay;
+	*latency = tmp_latency;
+
+#ifdef HF_MANAGER_DEBUG
+	if (tmp_enable)
+		pr_notice("Find best command %u %u %lld %lld\n",
+			  sensor_type, tmp_enable, tmp_delay, tmp_latency);
+	else
+		pr_notice("Find best command %u %u\n",
+			  sensor_type, tmp_enable);
+#endif
+}
+
+static inline bool device_rebatch(struct hf_core *core, u8 sensor_type,
+				  s64 best_delay, s64 best_latency)
+{
+	if (core->state[sensor_type].delay != best_delay ||
+	    core->state[sensor_type].latency != best_latency) {
+		core->state[sensor_type].delay = best_delay;
+		core->state[sensor_type].latency = best_latency;
+		return true;
+	}
+	return false;
+}
+
+static inline bool device_reenable(struct hf_core *core, u8 sensor_type,
+				   bool best_enable)
+{
+	if (core->state[sensor_type].enable != best_enable) {
+		core->state[sensor_type].enable = best_enable;
+		return true;
+	}
+	return false;
+}
+
+static inline bool device_redisable(struct hf_core *core, u8 sensor_type,
+				    bool best_enable, s64 best_delay,
+				    s64 best_latency)
+{
+	if (core->state[sensor_type].enable != best_enable) {
+		core->state[sensor_type].enable = best_enable;
+		core->state[sensor_type].delay = best_delay;
+		core->state[sensor_type].latency = best_latency;
+		return true;
+	}
+	return false;
+}
+
+static inline void device_request_update(struct hf_core *core,
+					 u8 sensor_type,
+					 struct sensor_state *old)
+{
+	/* save enable delay and latency to old */
+	old->enable = core->state[sensor_type].enable;
+	old->delay = core->state[sensor_type].delay;
+	old->latency = core->state[sensor_type].latency;
+}
+
+static inline void device_request_clear(struct hf_core *core,
+					u8 sensor_type,
+					struct sensor_state *old)
+{
+	/*
+	 * restore enable delay and latency
+	 * remember must not restore bias raw etc
+	 */
+	core->state[sensor_type].enable = old->enable;
+	core->state[sensor_type].delay = old->delay;
+	core->state[sensor_type].latency = old->latency;
+}
+
+static s64 device_poll_min_interval(struct hf_device *device)
+{
+	int i = 0;
+	u8 j = 0;
+	s64 interval = S64_MAX;
+	struct hf_core *core = device->manager->core;
+
+	for (i = 0; i < device->support_size; ++i) {
+		j = device->support_list[i].sensor_type;
+		if (core->state[j].enable) {
+			if (core->state[j].delay < interval)
+				interval = core->state[j].delay;
+		}
+	}
+	return interval;
+}
+
+static void device_poll_trigger(struct hf_device *device, bool enable)
+{
+	s64 min_interval = S64_MAX;
+	struct hf_manager *manager = device->manager;
+
+	WARN_ON(enable && !atomic_read(&manager->io_enabled));
+	min_interval = device_poll_min_interval(device);
+	WARN_ON(atomic_read(&manager->io_enabled) && min_interval == S64_MAX);
+	if (atomic64_read(&manager->io_poll_interval) == min_interval)
+		return;
+	atomic64_set(&manager->io_poll_interval, min_interval);
+	if (atomic_read(&manager->io_enabled))
+		hrtimer_start(&manager->io_poll_timer,
+			      ns_to_ktime(min_interval), HRTIMER_MODE_REL);
+	else
+		hrtimer_cancel(&manager->io_poll_timer);
+}
+
+static int hf_manager_device_enable(struct hf_device *device, u8 sensor_type)
+{
+	int err = 0;
+	struct sensor_state old;
+	struct hf_manager *manager = device->manager;
+	struct hf_core *core = device->manager->core;
+	bool best_enable = false;
+	s64 best_delay = S64_MAX;
+	s64 best_latency = S64_MAX;
+
+	if (!device->enable || !device->batch)
+		return -EINVAL;
+
+	hf_manager_find_best_param(core, sensor_type, &best_enable,
+				   &best_delay, &best_latency);
+
+	if (best_enable) {
+		device_request_update(core, sensor_type, &old);
+		if (device_rebatch(core, sensor_type,
+				   best_delay, best_latency)) {
+			err = device->batch(device, sensor_type,
+					    best_delay, best_latency);
+			/* handle error to return when batch fail */
+			if (err < 0) {
+				device_request_clear(core, sensor_type, &old);
+				return err;
+			}
+		}
+		if (device_reenable(core, sensor_type, best_enable)) {
+			/* must update io_enabled before enable */
+			atomic_inc(&manager->io_enabled);
+			err = device->enable(device, sensor_type, best_enable);
+			/* handle error to clear prev request */
+			if (err < 0) {
+				atomic_dec_if_positive(&manager->io_enabled);
+				/*
+				 * rebatch success and enable fail.
+				 * update prev request from old.
+				 */
+				device_request_clear(core, sensor_type, &old);
+				return err;
+			}
+		}
+		if (device->device_poll == HF_DEVICE_IO_POLLING)
+			device_poll_trigger(device, best_enable);
+	} else {
+		if (device_redisable(core, sensor_type, best_enable,
+				     best_delay, best_latency)) {
+			atomic_dec_if_positive(&manager->io_enabled);
+			err = device->enable(device, sensor_type, best_enable);
+			/*
+			 * disable fail no need to handle error.
+			 * run next to update hrtimer or tasklet.
+			 */
+		}
+		if (device->device_poll == HF_DEVICE_IO_POLLING)
+			device_poll_trigger(device, best_enable);
+		if (device->device_bus == HF_DEVICE_IO_ASYNC &&
+		    !atomic_read(&manager->io_enabled))
+			tasklet_kill(&manager->io_work_tasklet);
+	}
+
+	return err;
+}
+
+static int hf_manager_device_flush(struct hf_device *device, u8 sensor_type)
+{
+	if (!device->flush)
+		return -EINVAL;
+
+	return device->flush(device, sensor_type);
+}
+
+static int hf_manager_device_calibration(struct hf_device *device,
+					 u8 sensor_type)
+{
+	if (device->calibration)
+		return device->calibration(device, sensor_type);
+	return 0;
+}
+
+static int hf_manager_device_config_cali(struct hf_device *device,
+					 u8 sensor_type, s32 *data)
+{
+	if (device->config_cali)
+		return device->config_cali(device, sensor_type, data);
+	return 0;
+}
+
+static int hf_manager_device_selftest(struct hf_device *device, u8 sensor_type)
+{
+	if (device->selftest)
+		return device->selftest(device, sensor_type);
+	return 0;
+}
+
+static int hf_manager_device_rawdata(struct hf_device *device, u8 sensor_type)
+{
+	int err = 0;
+	unsigned long flags;
+	struct hf_core *core = device->manager->core;
+	struct hf_client *client = NULL;
+	struct sensor_state *request = NULL;
+	bool best_enable = false;
+
+	spin_lock_irqsave(&core->client_lock, flags);
+	list_for_each_entry(client, &core->client_list, list) {
+		request = &client->request[sensor_type];
+		if (request->raw)
+			best_enable = true;
+	}
+	spin_unlock_irqrestore(&core->client_lock, flags);
+
+	if (!device->rawdata)
+		return 0;
+	if (core->state[sensor_type].raw == best_enable)
+		return 0;
+	core->state[sensor_type].raw = best_enable;
+	err = device->rawdata(device, sensor_type, best_enable);
+	if (err < 0)
+		core->state[sensor_type].raw = false;
+	return err;
+}
+
+static int hf_manager_device_info(struct hf_client *client, u8 sensor_type,
+				  struct sensor_info *info)
+{
+	int i = 0;
+	int ret = 0;
+	struct hf_manager *manager = NULL;
+	struct hf_device *device = NULL;
+	struct sensor_info *si = NULL;
+
+	mutex_lock(&client->core->manager_lock);
+	manager = hf_manager_find_manager(client->core, sensor_type);
+	if (!manager) {
+		ret = -EINVAL;
+		goto err_out;
+	}
+	device = manager->hf_dev;
+	if (!device || !device->support_list ||
+	    !device->support_size) {
+		ret = -EINVAL;
+		goto err_out;
+	}
+	for (i = 0; i < device->support_size; ++i) {
+		if (device->support_list[i].sensor_type == sensor_type) {
+			si = &device->support_list[i];
+			break;
+		}
+	}
+	if (!si) {
+		ret = -EINVAL;
+		goto err_out;
+	}
+	*info = *si;
+
+err_out:
+	mutex_unlock(&client->core->manager_lock);
+	return ret;
+}
+
+static int hf_manager_custom_cmd(struct hf_client *client, u8 sensor_type,
+				 struct custom_cmd *cust_cmd)
+{
+	struct hf_manager *manager = NULL;
+	struct hf_device *device = NULL;
+	int ret = 0;
+
+	mutex_lock(&client->core->manager_lock);
+	manager = hf_manager_find_manager(client->core, sensor_type);
+	if (!manager) {
+		ret = -EINVAL;
+		goto err_out;
+	}
+	device = manager->hf_dev;
+	if (!device || !device->dev_name) {
+		ret = -EINVAL;
+		goto err_out;
+	}
+	if (device->custom_cmd)
+		ret = device->custom_cmd(device, sensor_type, cust_cmd);
+
+err_out:
+	mutex_unlock(&client->core->manager_lock);
+	return ret;
+}
+
+static int hf_manager_drive_device(struct hf_client *client,
+				   struct hf_manager_cmd *cmd)
+{
+	int err = 0;
+	struct sensor_state old;
+	struct hf_manager *manager = NULL;
+	struct hf_device *device = NULL;
+	struct sensor_state *request = NULL;
+	struct hf_core *core = client->core;
+	u8 sensor_type = cmd->sensor_type;
+
+	if (unlikely(sensor_type >= SENSOR_TYPE_SENSOR_MAX))
+		return -EINVAL;
+
+	mutex_lock(&core->manager_lock);
+	manager = hf_manager_find_manager(core, sensor_type);
+	if (!manager) {
+		mutex_unlock(&core->manager_lock);
+		return -EINVAL;
+	}
+	device = manager->hf_dev;
+	if (!device || !device->dev_name) {
+		mutex_unlock(&core->manager_lock);
+		return -EINVAL;
+	}
+
+#ifdef HF_MANAGER_DEBUG
+	pr_notice("Drive device:%s command %u %u %lld %lld\n",
+		  device->dev_name, cmd->sensor_type, cmd->action,
+		  cmd->delay, cmd->latency);
+#endif
+
+	switch (cmd->action) {
+	case HF_MANAGER_SENSOR_ENABLE:
+	case HF_MANAGER_SENSOR_DISABLE:
+		hf_manager_update_client_param(client, cmd, &old);
+		err = hf_manager_device_enable(device, sensor_type);
+		if (err < 0)
+			hf_manager_clear_client_param(client, cmd, &old);
+		break;
+	case HF_MANAGER_SENSOR_FLUSH:
+		request = &client->request[sensor_type];
+		atomic_inc(&request->flush);
+		err = hf_manager_device_flush(device, sensor_type);
+		if (err < 0)
+			atomic_dec_if_positive(&request->flush);
+		break;
+	case HF_MANAGER_SENSOR_ENABLE_CALI:
+		err = hf_manager_device_calibration(device, sensor_type);
+		break;
+	case HF_MANAGER_SENSOR_CONFIG_CALI:
+		err = hf_manager_device_config_cali(device, sensor_type,
+						    cmd->data);
+		break;
+	case HF_MANAGER_SENSOR_SELFTEST:
+		err = hf_manager_device_selftest(device, sensor_type);
+		break;
+	case HF_MANAGER_SENSOR_RAWDATA:
+		client->request[sensor_type].raw =
+			cmd->data[0] ? true : false;
+		err = hf_manager_device_rawdata(device, sensor_type);
+		if (err < 0)
+			client->request[sensor_type].raw = false;
+		break;
+	default:
+		pr_err("Unknown action %u\n", cmd->action);
+		err = -EINVAL;
+		break;
+	}
+	mutex_unlock(&core->manager_lock);
+	return err;
+}
+
+static int hf_manager_get_sensor_info(struct hf_client *client, u8 sensor_type,
+				      struct sensor_info *info)
+{
+	return hf_manager_device_info(client, sensor_type, info);
+}
+
+struct hf_client *hf_client_create(void)
+{
+	unsigned long flags;
+	struct hf_client *client = NULL;
+	struct hf_client_fifo *hf_fifo = NULL;
+
+	client = kzalloc(sizeof(*client), GFP_KERNEL);
+	if (!client)
+		goto err_out;
+
+	/* record process id and thread id for debug */
+	strlcpy(client->proc_comm, current->comm, sizeof(client->proc_comm));
+	client->leader_pid = current->group_leader->pid;
+	client->pid = current->pid;
+	client->core = &hfcore;
+
+#ifdef HF_MANAGER_DEBUG
+	pr_notice("Client create\n");
+#endif
+
+	INIT_LIST_HEAD(&client->list);
+
+	hf_fifo = &client->hf_fifo;
+	hf_fifo->head = 0;
+	hf_fifo->tail = 0;
+	hf_fifo->bufsize = roundup_pow_of_two(HF_CLIENT_FIFO_SIZE);
+	hf_fifo->buffull = false;
+	spin_lock_init(&hf_fifo->buffer_lock);
+	init_waitqueue_head(&hf_fifo->wait);
+	hf_fifo->buffer =
+		kcalloc(hf_fifo->bufsize, sizeof(*hf_fifo->buffer),
+			GFP_KERNEL);
+	if (!hf_fifo->buffer)
+		goto err_free;
+
+	spin_lock_init(&client->request_lock);
+
+	spin_lock_irqsave(&client->core->client_lock, flags);
+	list_add(&client->list, &client->core->client_list);
+	spin_unlock_irqrestore(&client->core->client_lock, flags);
+
+	return client;
+err_free:
+	kfree(client);
+err_out:
+	return NULL;
+}
+EXPORT_SYMBOL_GPL(hf_client_create);
+
+void hf_client_destroy(struct hf_client *client)
+{
+	unsigned long flags;
+
+#ifdef HF_MANAGER_DEBUG
+	pr_notice("Client destroy\n");
+#endif
+
+	spin_lock_irqsave(&client->core->client_lock, flags);
+	list_del(&client->list);
+	spin_unlock_irqrestore(&client->core->client_lock, flags);
+
+	kfree(client->hf_fifo.buffer);
+	kfree(client);
+}
+EXPORT_SYMBOL_GPL(hf_client_destroy);
+
+int hf_client_find_sensor(struct hf_client *client, u8 sensor_type)
+{
+	if (unlikely(sensor_type >= SENSOR_TYPE_SENSOR_MAX))
+		return -EINVAL;
+	if (!test_bit(sensor_type, sensor_list_bitmap))
+		return -EINVAL;
+	return 0;
+}
+EXPORT_SYMBOL_GPL(hf_client_find_sensor);
+
+int hf_client_get_sensor_info(struct hf_client *client, u8 sensor_type,
+			      struct sensor_info *info)
+{
+	if (unlikely(sensor_type >= SENSOR_TYPE_SENSOR_MAX))
+		return -EINVAL;
+	if (!test_bit(sensor_type, sensor_list_bitmap))
+		return -EINVAL;
+	return hf_manager_device_info(client, sensor_type, info);
+}
+EXPORT_SYMBOL_GPL(hf_client_get_sensor_info);
+
+int hf_client_request_sensor_cali(struct hf_client *client, u8 sensor_type,
+				  unsigned int cmd, bool status)
+{
+	if (unlikely(sensor_type >= SENSOR_TYPE_SENSOR_MAX))
+		return -EINVAL;
+	if (!test_bit(sensor_type, sensor_list_bitmap))
+		return -EINVAL;
+	switch (cmd) {
+	case HF_MANAGER_REQUEST_BIAS_DATA:
+		client->request[sensor_type].bias = status;
+		break;
+	case HF_MANAGER_REQUEST_CALI_DATA:
+		client->request[sensor_type].cali = status;
+		break;
+	case HF_MANAGER_REQUEST_TEMP_DATA:
+		client->request[sensor_type].temp = status;
+		break;
+	case HF_MANAGER_REQUEST_TEST_DATA:
+		client->request[sensor_type].test = status;
+		break;
+	default:
+		pr_err("Unknown command %u\n", cmd);
+		return -EINVAL;
+	}
+	return 0;
+}
+EXPORT_SYMBOL_GPL(hf_client_request_sensor_cali);
+
+int hf_client_control_sensor(struct hf_client *client,
+			     struct hf_manager_cmd *cmd)
+{
+	return hf_manager_drive_device(client, cmd);
+}
+EXPORT_SYMBOL_GPL(hf_client_control_sensor);
+
+static int fetch_next(struct hf_client_fifo *hf_fifo,
+		      struct hf_manager_event *event)
+{
+	unsigned long flags;
+	int have_event;
+
+	spin_lock_irqsave(&hf_fifo->buffer_lock, flags);
+	have_event = hf_fifo->head != hf_fifo->tail;
+	if (have_event) {
+		*event = hf_fifo->buffer[hf_fifo->tail++];
+		hf_fifo->tail &= hf_fifo->bufsize - 1;
+		hf_fifo->buffull = false;
+		hf_fifo->client_active = ktime_get_boottime_ns();
+	}
+	spin_unlock_irqrestore(&hf_fifo->buffer_lock, flags);
+	return have_event;
+}
+
+/* timeout: MAX_SCHEDULE_TIMEOUT or msecs_to_jiffies(ms) */
+int hf_client_poll_sensor_timeout(struct hf_client *client,
+				  struct hf_manager_event *data,
+				  int count,
+				  long timeout)
+{
+	long ret = 0;
+	int read = 0;
+	struct hf_client_fifo *hf_fifo = &client->hf_fifo;
+
+	/* ret must be long to fill timeout(MAX_SCHEDULE_TIMEOUT) */
+	ret = wait_event_interruptible_timeout(hf_fifo->wait,
+					       hf_fifo->head != hf_fifo->tail,
+					       timeout);
+
+	if (!ret)
+		return -ETIMEDOUT;
+	if (ret < 0)
+		return ret;
+
+	for (;;) {
+		if (hf_fifo->head == hf_fifo->tail)
+			return 0;
+		if (count == 0)
+			break;
+		while (read < count &&
+		       fetch_next(hf_fifo, &data[read])) {
+			read++;
+		}
+		if (read)
+			break;
+	}
+	return read;
+}
+EXPORT_SYMBOL_GPL(hf_client_poll_sensor_timeout);
+
+int hf_client_custom_cmd(struct hf_client *client, u8 sensor_type,
+			 struct custom_cmd *cust_cmd)
+{
+	if (unlikely(sensor_type >= SENSOR_TYPE_SENSOR_MAX))
+		return -EINVAL;
+	if (!test_bit(sensor_type, sensor_list_bitmap))
+		return -EINVAL;
+	return hf_manager_custom_cmd(client, sensor_type, cust_cmd);
+}
+EXPORT_SYMBOL_GPL(hf_client_custom_cmd);
+
+static int hf_manager_open(struct inode *inode, struct file *filp)
+{
+	struct hf_client *client = hf_client_create();
+
+	if (!client)
+		return -ENOMEM;
+
+	filp->private_data = client;
+	nonseekable_open(inode, filp);
+	return 0;
+}
+
+static int hf_manager_release(struct inode *inode, struct file *filp)
+{
+	struct hf_client *client = filp->private_data;
+
+	filp->private_data = NULL;
+	hf_client_destroy(client);
+	return 0;
+}
+
+static ssize_t hf_manager_read(struct file *filp,
+			       char __user *buf,
+			       size_t count,
+			       loff_t *f_pos)
+{
+	struct hf_client *client = filp->private_data;
+	struct hf_client_fifo *hf_fifo = &client->hf_fifo;
+	struct hf_manager_event event;
+	size_t read = 0;
+
+	if (count != 0 && count < sizeof(struct hf_manager_event))
+		return -EINVAL;
+
+	for (;;) {
+		if (hf_fifo->head == hf_fifo->tail)
+			return 0;
+		if (count == 0)
+			break;
+		while (read + sizeof(event) <= count &&
+		       fetch_next(hf_fifo, &event)) {
+			if (copy_to_user(buf + read, &event, sizeof(event)))
+				return -EFAULT;
+			read += sizeof(event);
+		}
+		if (read)
+			break;
+	}
+	return read;
+}
+
+static ssize_t hf_manager_write(struct file *filp,
+				const char __user *buf,
+				size_t count,
+				loff_t *f_pos)
+{
+	struct hf_manager_cmd cmd;
+	struct hf_client *client = filp->private_data;
+
+	memset(&cmd, 0, sizeof(cmd));
+
+	if (count != sizeof(struct hf_manager_cmd))
+		return -EINVAL;
+
+	if (copy_from_user(&cmd, buf, count))
+		return -EFAULT;
+
+	return hf_manager_drive_device(client, &cmd);
+}
+
+static unsigned int hf_manager_poll(struct file *filp,
+				    struct poll_table_struct *wait)
+{
+	struct hf_client *client = filp->private_data;
+	struct hf_client_fifo *hf_fifo = &client->hf_fifo;
+	unsigned int mask = 0;
+
+	client->ppid = current->pid;
+
+	poll_wait(filp, &hf_fifo->wait, wait);
+
+	if (hf_fifo->head != hf_fifo->tail)
+		mask |= POLLIN | POLLRDNORM;
+
+	return mask;
+}
+
+static long hf_manager_ioctl(struct file *filp,
+			     unsigned int cmd, unsigned long arg)
+{
+	struct hf_client *client = filp->private_data;
+	unsigned int size = _IOC_SIZE(cmd);
+	void __user *ubuf = (void __user *)arg;
+	u8 sensor_type = 0;
+	struct ioctl_packet packet;
+	struct sensor_info info;
+	struct custom_cmd cust_cmd;
+
+	memset(&packet, 0, sizeof(packet));
+
+	if (size != sizeof(struct ioctl_packet))
+		return -EINVAL;
+	if (copy_from_user(&packet, ubuf, sizeof(packet)))
+		return -EFAULT;
+	sensor_type = packet.sensor_type;
+	if (unlikely(sensor_type >= SENSOR_TYPE_SENSOR_MAX))
+		return -EINVAL;
+
+	switch (cmd) {
+	case HF_MANAGER_REQUEST_REGISTER_STATUS:
+		packet.status = test_bit(sensor_type, sensor_list_bitmap);
+		if (copy_to_user(ubuf, &packet, sizeof(packet)))
+			return -EFAULT;
+		break;
+	case HF_MANAGER_REQUEST_BIAS_DATA:
+		client->request[sensor_type].bias = packet.status;
+		break;
+	case HF_MANAGER_REQUEST_CALI_DATA:
+		client->request[sensor_type].cali = packet.status;
+		break;
+	case HF_MANAGER_REQUEST_TEMP_DATA:
+		client->request[sensor_type].temp = packet.status;
+		break;
+	case HF_MANAGER_REQUEST_TEST_DATA:
+		client->request[sensor_type].test = packet.status;
+		break;
+	case HF_MANAGER_REQUEST_SENSOR_INFO:
+		if (!test_bit(sensor_type, sensor_list_bitmap))
+			return -EINVAL;
+		memset(&info, 0, sizeof(info));
+		if (hf_manager_get_sensor_info(client, sensor_type, &info))
+			return -EINVAL;
+		if (sizeof(packet.byte) < sizeof(info))
+			return -EINVAL;
+		memcpy(packet.byte, &info, sizeof(info));
+		if (copy_to_user(ubuf, &packet, sizeof(packet)))
+			return -EFAULT;
+		break;
+	case HF_MANAGER_REQUEST_CUST_DATA:
+		if (!test_bit(sensor_type, sensor_list_bitmap))
+			return -EINVAL;
+		memset(&cust_cmd, 0, sizeof(cust_cmd));
+		memcpy(cust_cmd.data, packet.byte, sizeof(cust_cmd.data));
+		if (hf_manager_custom_cmd(client, sensor_type, &cust_cmd))
+			return -EINVAL;
+		if (sizeof(packet.byte) < sizeof(cust_cmd))
+			return -EINVAL;
+		memcpy(packet.byte, &cust_cmd, sizeof(cust_cmd));
+		if (copy_to_user(ubuf, &packet, sizeof(packet)))
+			return -EFAULT;
+		break;
+	default:
+		pr_err("Unknown command %u\n", cmd);
+		return -EINVAL;
+	}
+	return 0;
+}
+
+static const struct file_operations hf_manager_fops = {
+	.owner          = THIS_MODULE,
+	.open           = hf_manager_open,
+	.release        = hf_manager_release,
+	.read           = hf_manager_read,
+	.write          = hf_manager_write,
+	.poll           = hf_manager_poll,
+	.unlocked_ioctl = hf_manager_ioctl,
+	.compat_ioctl   = hf_manager_ioctl,
+};
+
+static int hf_manager_proc_show(struct seq_file *m, void *v)
+{
+	int i = 0, j = 0, k = 0;
+	u8 sensor_type = 0;
+	s64 interval = 0, start_time = 0;
+	unsigned long flags;
+	struct hf_core *core = (struct hf_core *)m->private;
+	struct hf_manager *manager = NULL;
+	struct hf_client *client = NULL;
+	struct hf_device *device = NULL;
+
+	seq_puts(m, "**************************************************\n");
+	seq_puts(m, "Manager List:\n");
+	mutex_lock(&core->manager_lock);
+	j = 1;
+	k = 1;
+	list_for_each_entry(manager, &core->manager_list, list) {
+		device = READ_ONCE(manager->hf_dev);
+		if (!device || !device->support_list)
+			continue;
+		interval = atomic64_read(&manager->io_poll_interval);
+		interval = (interval == S64_MAX) ? -1 : interval;
+		seq_printf(m, "%d. manager:[%d,%lld]\n", j++,
+			   atomic_read(&manager->io_enabled), interval);
+		seq_printf(m, " device:%s poll:%s bus:%s online\n",
+			   device->dev_name,
+			   device->device_poll ? "io_polling" : "io_interrupt",
+			   device->device_bus ? "io_async" : "io_sync");
+		for (i = 0; i < device->support_size; ++i) {
+			sensor_type = device->support_list[i].sensor_type;
+			seq_printf(m, "  (%d) type:%u info:[%u,%s,%s]\n",
+				   k++,
+				   sensor_type,
+				   device->support_list[i].gain,
+				   device->support_list[i].name,
+				   device->support_list[i].vendor);
+		}
+	}
+	mutex_unlock(&core->manager_lock);
+
+	seq_puts(m, "**************************************************\n");
+	seq_puts(m, "Client List:\n");
+	spin_lock_irqsave(&core->client_lock, flags);
+	j = 1;
+	k = 1;
+	list_for_each_entry(client, &core->client_list, list) {
+		seq_printf(m, "%d. client:%s pid:[%d:%d,%d] online\n",
+			   j++,
+			   client->proc_comm,
+			   client->leader_pid,
+			   client->pid,
+			   client->ppid);
+		for (i = 0; i < SENSOR_TYPE_SENSOR_MAX; ++i) {
+			if (!client->request[i].enable)
+				continue;
+			start_time =
+				atomic64_read(&client->request[i].start_time);
+			seq_printf(m, " (%d) type:%d param:[%lld,%lld,%lld]\n",
+				   k++,
+				   i,
+				   client->request[i].delay,
+				   client->request[i].latency,
+				   start_time);
+		}
+	}
+	spin_unlock_irqrestore(&core->client_lock, flags);
+
+	seq_puts(m, "**************************************************\n");
+	seq_puts(m, "Active List:\n");
+	mutex_lock(&core->manager_lock);
+	j = 1;
+	for (i = 0; i < SENSOR_TYPE_SENSOR_MAX; ++i) {
+		if (!core->state[i].enable)
+			continue;
+		seq_printf(m, " (%d) type:%d param:[%lld,%lld]\n",
+			   j++,
+			   i,
+			   core->state[i].delay,
+			   core->state[i].latency);
+	}
+	mutex_unlock(&core->manager_lock);
+	return 0;
+}
+
+static int hf_manager_proc_open(struct inode *inode, struct file *filp)
+{
+	return single_open(filp, hf_manager_proc_show, PDE_DATA(inode));
+}
+
+static const struct proc_ops hf_manager_proc_ops = {
+	.proc_open           = hf_manager_proc_open,
+	.proc_release        = single_release,
+	.proc_read           = seq_read,
+	.proc_lseek         = seq_lseek,
+};
+
+static int __init hf_manager_init(void)
+{
+	int major = -1;
+	struct class *hf_manager_class;
+	struct device *dev;
+	struct task_struct *task;
+	struct sched_param param = { .sched_priority = MAX_RT_PRIO / 2 };
+
+	init_hf_core(&hfcore);
+
+	major = register_chrdev(0, "hf_manager", &hf_manager_fops);
+	if (major < 0) {
+		pr_err("Unable to get major\n");
+		return major;
+	}
+	hf_manager_class = class_create(THIS_MODULE, "hf_manager");
+	if (IS_ERR(hf_manager_class)) {
+		pr_err("Failed to create class\n");
+		return PTR_ERR(hf_manager_class);
+	}
+	dev = device_create(hf_manager_class, NULL, MKDEV(major, 0),
+			    NULL, "hf_manager");
+	if (IS_ERR(dev)) {
+		pr_err("Failed to create device\n");
+		return PTR_ERR(dev);
+	}
+
+	if (!proc_create_data("hf_manager", 0440, NULL,
+			      &hf_manager_proc_ops, &hfcore))
+		pr_err("Failed to create proc\n");
+
+	task = kthread_run(kthread_worker_fn,
+			   &hfcore.kworker, "hf_manager");
+	if (IS_ERR(task)) {
+		pr_err("Failed to create kthread\n");
+		return PTR_ERR(task);
+	}
+	sched_setscheduler(task, SCHED_FIFO, &param);
+	return 0;
+}
+subsys_initcall(hf_manager_init);
+
+MODULE_DESCRIPTION("high frequency manager");
+MODULE_AUTHOR("Hongxu Zhao <hongxu.zhao@mediatek.com>");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/staging/hf_manager/core/hf_manager.h b/drivers/staging/hf_manager/core/hf_manager.h
new file mode 100644
index 000000000000..b6a94a2f937d
--- /dev/null
+++ b/drivers/staging/hf_manager/core/hf_manager.h
@@ -0,0 +1,181 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (c) 2020 MediaTek Inc.
+ * Author: Hongxu Zhao <hongxu.zhao@mediatek.com>
+ */
+
+#ifndef _HF_SENSOR_MANAGER_H_
+#define _HF_SENSOR_MANAGER_H_
+
+#include <linux/hrtimer.h>
+#include <linux/interrupt.h>
+#include <linux/kthread.h>
+#include <linux/ioctl.h>
+#include <linux/types.h>
+
+#include "hf_sensor_type.h"
+#include "hf_sensor_io.h"
+
+#define HF_MANAGER_IO_IN_PROGRESS 0
+#define HF_MANAGER_IO_READY       1
+
+#define HF_DEVICE_IO_SYNC  0
+#define HF_DEVICE_IO_ASYNC 1
+
+#define HF_DEVICE_IO_INTERRUPT 0
+#define HF_DEVICE_IO_POLLING   1
+
+#define HF_CLIENT_FIFO_SIZE 128
+
+struct coordinate {
+	s8 sign[3];
+	u8 map[3];
+};
+
+struct sensor_state {
+	bool enable;
+	bool bias;
+	bool cali;
+	bool temp;
+	bool test;
+	bool raw;
+	s64 delay;
+	s64 latency;
+	atomic_t flush;
+	atomic64_t start_time;
+};
+
+struct sensor_info {
+	u8 sensor_type;
+	u32 gain;
+	char name[16];
+	char vendor[16];
+};
+
+struct custom_cmd {
+	int data[16];
+};
+
+enum custom_action {
+	CUST_CMD_CALI = 0,
+	/*Add custom cmd action here!*/
+};
+
+struct hf_core {
+	struct mutex manager_lock;
+	struct list_head manager_list;
+	struct sensor_state state[SENSOR_TYPE_SENSOR_MAX];
+
+	spinlock_t client_lock;
+	struct list_head client_list;
+
+	struct kthread_worker kworker;
+};
+
+struct hf_device {
+	int (*sample)(struct hf_device *hfdev);
+	int (*enable)(struct hf_device *hfdev, int sensor_type, int en);
+	int (*batch)(struct hf_device *hfdev, int sensor_type,
+		     s64 delay, s64 latency);
+	int (*flush)(struct hf_device *hfdev, int sensor_type);
+	int (*calibration)(struct hf_device *hfdev, int sensor_type);
+	int (*config_cali)(struct hf_device *hfdev,
+			   int sensor_type, s32 *data);
+	int (*selftest)(struct hf_device *hfdev, int sensor_type);
+	int (*rawdata)(struct hf_device *hfdev, int sensor_type, int en);
+	int (*custom_cmd)(struct hf_device *hfdev, int sensor_type,
+			  struct custom_cmd *cust_cmd);
+
+	char *dev_name;
+	unsigned char device_poll;
+	unsigned char device_bus;
+
+	struct sensor_info *support_list;
+	unsigned int support_size;
+
+	struct hf_manager *manager;
+	void *private_data;
+};
+
+struct hf_client_fifo {
+	spinlock_t buffer_lock;
+	unsigned int head;
+	unsigned int tail;
+	unsigned int bufsize;
+	unsigned int buffull;
+	s64 hang_begin;
+	s64 client_active;
+	s64 last_time_stamp[SENSOR_TYPE_SENSOR_MAX];
+	struct hf_manager_event *buffer;
+	wait_queue_head_t wait;
+};
+
+struct hf_manager {
+	struct list_head list;
+	struct tasklet_struct io_work_tasklet;
+	struct kthread_work io_kthread_work;
+	struct hrtimer io_poll_timer;
+	atomic64_t io_poll_interval;
+	atomic64_t timestamp;
+	atomic_t io_enabled;
+	unsigned long flags;
+	struct hf_device *hf_dev;
+	struct hf_core *core;
+
+	int (*report)(struct hf_manager *manager,
+		      struct hf_manager_event *event);
+	void (*complete)(struct hf_manager *manager);
+	void (*interrupt)(struct hf_manager *manager, s64 timestamp);
+};
+
+struct hf_client {
+	struct list_head list;
+	struct hf_client_fifo hf_fifo;
+	struct sensor_state request[SENSOR_TYPE_SENSOR_MAX];
+	spinlock_t request_lock;
+	struct hf_core *core;
+
+	/* record process info */
+	char proc_comm[TASK_COMM_LEN];
+	pid_t leader_pid;
+	pid_t pid;
+	pid_t ppid;
+};
+
+#define set_interrupt_timestamp(m, t) (atomic64_set(&m->timestamp, t))
+#define get_interrupt_timestamp(m) (atomic64_read(&m->timestamp))
+
+static inline void hf_device_set_private_data(struct hf_device *device,
+					      void *data)
+{
+	device->private_data = data;
+}
+
+static inline void *hf_device_get_private_data(struct hf_device *device)
+{
+	return device->private_data;
+}
+
+int hf_manager_create(struct hf_device *device);
+int hf_manager_destroy(struct hf_manager *manager);
+void coordinate_map(unsigned char direction, s32 *data);
+struct hf_client *hf_client_create(void);
+void hf_client_destroy(struct hf_client *client);
+int hf_client_find_sensor(struct hf_client *client, u8 sensor_type);
+int hf_client_get_sensor_info(struct hf_client *client,
+			      u8 sensor_type, struct sensor_info *info);
+int hf_client_request_sensor_cali(struct hf_client *client, u8 sensor_type,
+				  unsigned int cmd, bool status);
+int hf_client_control_sensor(struct hf_client *client,
+			     struct hf_manager_cmd *cmd);
+int hf_client_poll_sensor_timeout(struct hf_client *client,
+				  struct hf_manager_event *data,
+				  int count,
+				  long timeout);
+#define hf_client_poll_sensor(client, data, count)		\
+	hf_client_poll_sensor_timeout(client, data, count,	\
+				      MAX_SCHEDULE_TIMEOUT)
+int hf_client_custom_cmd(struct hf_client *client, u8 sensor_type,
+			 struct custom_cmd *cust_cmd);
+
+#endif
diff --git a/drivers/staging/hf_manager/core/hf_sensor_io.h b/drivers/staging/hf_manager/core/hf_sensor_io.h
new file mode 100644
index 000000000000..663cf06ecaf9
--- /dev/null
+++ b/drivers/staging/hf_manager/core/hf_sensor_io.h
@@ -0,0 +1,69 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (c) 2020 MediaTek Inc.
+ * Author: Hongxu Zhao <hongxu.zhao@mediatek.com>
+ */
+
+#ifndef _HF_SENSOR_IO_H_
+#define _HF_SENSOR_IO_H_
+
+#include <linux/ioctl.h>
+#include <linux/types.h>
+
+enum {
+	HF_MANAGER_SENSOR_DISABLE,
+	HF_MANAGER_SENSOR_ENABLE,
+	HF_MANAGER_SENSOR_FLUSH,
+	HF_MANAGER_SENSOR_ENABLE_CALI,
+	HF_MANAGER_SENSOR_CONFIG_CALI,
+	HF_MANAGER_SENSOR_SELFTEST,
+	HF_MANAGER_SENSOR_RAWDATA,
+};
+
+enum {
+	DATA_ACTION,
+	FLUSH_ACTION,
+	BIAS_ACTION,
+	CALI_ACTION,
+	TEMP_ACTION,
+	TEST_ACTION,
+	RAW_ACTION,
+};
+
+struct hf_manager_cmd {
+	u8 sensor_type;
+	u8 action;
+	s64 delay;
+	s64 latency;
+	s32 data[12];
+} __packed;
+
+struct hf_manager_event {
+	s64 timestamp;
+	u8 sensor_type;
+	u8 accurancy;
+	u8 action;
+	u8 reserved;
+	union {
+		s32 word[6];
+		s8 byte[0];
+	};
+} __packed;
+
+struct ioctl_packet {
+	u8 sensor_type;
+	union {
+		bool status;
+		s8 byte[64];
+	};
+} __packed;
+
+#define HF_MANAGER_REQUEST_REGISTER_STATUS  _IOWR('a', 1, struct ioctl_packet)
+#define HF_MANAGER_REQUEST_BIAS_DATA        _IOW('a', 2, struct ioctl_packet)
+#define HF_MANAGER_REQUEST_CALI_DATA        _IOW('a', 3, struct ioctl_packet)
+#define HF_MANAGER_REQUEST_TEMP_DATA        _IOW('a', 4, struct ioctl_packet)
+#define HF_MANAGER_REQUEST_TEST_DATA        _IOW('a', 5, struct ioctl_packet)
+#define HF_MANAGER_REQUEST_SENSOR_INFO      _IOWR('a', 6, struct ioctl_packet)
+#define HF_MANAGER_REQUEST_CUST_DATA        _IOWR('a', 7, struct ioctl_packet)
+
+#endif
diff --git a/drivers/staging/hf_manager/core/hf_sensor_type.h b/drivers/staging/hf_manager/core/hf_sensor_type.h
new file mode 100644
index 000000000000..7884739a8746
--- /dev/null
+++ b/drivers/staging/hf_manager/core/hf_sensor_type.h
@@ -0,0 +1,56 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Copyright (c) 2020 MediaTek Inc.
+ * Author: Hongxu Zhao <hongxu.zhao@mediatek.com>
+ */
+
+#ifndef _HF_SENSOR_TYPE_H_
+#define _HF_SENSOR_TYPE_H_
+
+enum {
+	SENSOR_TYPE_ACCELEROMETER = 1,
+	SENSOR_TYPE_MAGNETIC_FIELD,
+	SENSOR_TYPE_ORIENTATION,
+	SENSOR_TYPE_GYROSCOPE,
+	SENSOR_TYPE_LIGHT,
+	SENSOR_TYPE_PRESSURE,
+	SENSOR_TYPE_TEMPERATURE,
+	SENSOR_TYPE_PROXIMITY,
+	SENSOR_TYPE_GRAVITY,
+	SENSOR_TYPE_LINEAR_ACCELERATION,
+	SENSOR_TYPE_ROTATION_VECTOR,
+	SENSOR_TYPE_RELATIVE_HUMIDITY,
+	SENSOR_TYPE_AMBIENT_TEMPERATURE,
+	SENSOR_TYPE_MAGNETIC_FIELD_UNCALIBRATED,
+	SENSOR_TYPE_GAME_ROTATION_VECTOR,
+	SENSOR_TYPE_GYROSCOPE_UNCALIBRATED,
+	SENSOR_TYPE_SIGNIFICANT_MOTION,
+	SENSOR_TYPE_STEP_DETECTOR,
+	SENSOR_TYPE_STEP_COUNTER,
+	SENSOR_TYPE_GEOMAGNETIC_ROTATION_VECTOR,
+	SENSOR_TYPE_HEART_RATE,
+	SENSOR_TYPE_TILT_DETECTOR,
+	SENSOR_TYPE_WAKE_GESTURE,
+	SENSOR_TYPE_GLANCE_GESTURE,
+	SENSOR_TYPE_PICK_UP_GESTURE,
+	SENSOR_TYPE_WRIST_TILT_GESTURE,
+	SENSOR_TYPE_DEVICE_ORIENTATION,
+	SENSOR_TYPE_POSE_6DOF,
+	SENSOR_TYPE_STATIONARY_DETECT,
+	SENSOR_TYPE_MOTION_DETECT,
+	SENSOR_TYPE_HEART_BEAT,
+	SENSOR_TYPE_DYNAMIC_SENSOR_META,
+	SENSOR_TYPE_ADDITIONAL_INFO,
+	SENSOR_TYPE_LOW_LATENCY_OFFBODY_DETECT,
+	SENSOR_TYPE_ACCELEROMETER_UNCALIBRATED,
+	SENSOR_TYPE_SENSOR_MAX,
+};
+
+enum {
+	SENSOR_ACCURANCY_UNRELIALE,
+	SENSOR_ACCURANCY_LOW,
+	SENSOR_ACCURANCY_MEDIUM,
+	SENSOR_ACCURANCY_HIGH,
+};
+
+#endif
diff --git a/drivers/staging/hf_manager/test/Makefile b/drivers/staging/hf_manager/test/Makefile
new file mode 100644
index 000000000000..5d7be5b9d48c
--- /dev/null
+++ b/drivers/staging/hf_manager/test/Makefile
@@ -0,0 +1,11 @@
+# SPDX-License-Identifier: GPL-2.0
+#
+# Makefile for high frequency manager test
+#
+
+ccflags-y += -I$(srctree)/drivers/staging/hf_manager/core
+
+obj-y += test.o
+obj-y += test_app.o
+obj-y += test_app1.o
+obj-y += test_app2.o
diff --git a/drivers/staging/hf_manager/test/test.c b/drivers/staging/hf_manager/test/test.c
new file mode 100644
index 000000000000..c80a2b64d640
--- /dev/null
+++ b/drivers/staging/hf_manager/test/test.c
@@ -0,0 +1,182 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2020 MediaTek Inc.
+ * Author: Hongxu Zhao <hongxu.zhao@mediatek.com>
+ */
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+
+#include "hf_manager.h"
+
+struct test_device {
+	struct hf_device hf_dev;
+};
+
+struct test_device test_driver1;
+struct test_device test_driver2;
+struct test_device test_driver3;
+struct test_device test_driver4;
+
+static struct sensor_info support_sensors1[] = {
+	{
+		.sensor_type = SENSOR_TYPE_ACCELEROMETER,
+		.gain = 1,
+		.name = {'a', 'c', 'c', 'e', 'l'},
+		.vendor = {'m', 't', 'k'},
+	},
+};
+
+static struct sensor_info support_sensors2[] = {
+	{
+		.sensor_type = SENSOR_TYPE_MAGNETIC_FIELD,
+		.gain = 1,
+		.name = {'m', 'a', 'g'},
+		.vendor = {'m', 't', 'k'},
+	},
+};
+
+static struct sensor_info support_sensors3[] = {
+	{
+		.sensor_type = SENSOR_TYPE_GYROSCOPE,
+		.gain = 1,
+		.name = {'g', 'y', 'r', 'o'},
+		.vendor = {'m', 't', 'k'},
+	},
+};
+
+static struct sensor_info support_sensors4[] = {
+	{
+		.sensor_type = SENSOR_TYPE_PRESSURE,
+		.gain = 1,
+		.name = {'p', 'r', 'e', 's', 's'},
+		.vendor = {'m', 't', 'k'},
+	},
+};
+
+static int test_enable(struct hf_device *hfdev, int sensor_type, int en)
+{
+	pr_debug("%s id:%d en:%d\n", __func__, sensor_type, en);
+	return 0;
+}
+
+static int test_batch(struct hf_device *hfdev, int sensor_type,
+		      s64 delay, s64 latency)
+{
+	pr_debug("%s id:%d delay:%lld latency:%lld\n", __func__, sensor_type,
+		 delay, latency);
+	return 0;
+}
+
+static int test_sample(struct hf_device *hfdev)
+{
+	struct test_device *driver_dev = hf_device_get_private_data(hfdev);
+	struct hf_manager *manager = driver_dev->hf_dev.manager;
+	struct hf_manager_event event;
+
+	pr_debug("%s %s\n", __func__, driver_dev->hf_dev.dev_name);
+
+	memset(&event, 0, sizeof(struct hf_manager_event));
+	event.timestamp = get_interrupt_timestamp(manager);
+	event.sensor_type = driver_dev->hf_dev.support_list[0].sensor_type;
+	event.accurancy = SENSOR_ACCURANCY_HIGH;
+	event.action = DATA_ACTION;
+	event.word[0] = 0;
+	event.word[1] = 0;
+	event.word[2] = 0;
+	manager->report(manager, &event);
+	manager->complete(manager);
+	return 0;
+}
+
+static int tests_init(void)
+{
+	int err = 0;
+
+	test_driver1.hf_dev.dev_name = "test_driver1";
+	test_driver1.hf_dev.device_poll = HF_DEVICE_IO_POLLING;
+	test_driver1.hf_dev.device_bus = HF_DEVICE_IO_SYNC;
+	test_driver1.hf_dev.support_list = support_sensors1;
+	test_driver1.hf_dev.support_size = ARRAY_SIZE(support_sensors1);
+	test_driver1.hf_dev.enable = test_enable;
+	test_driver1.hf_dev.batch = test_batch;
+	test_driver1.hf_dev.sample = test_sample;
+
+	err = hf_manager_create(&test_driver1.hf_dev);
+	if (err < 0) {
+		pr_err("%s hf_manager_create fail\n", __func__);
+		goto out1;
+	}
+	hf_device_set_private_data(&test_driver1.hf_dev, &test_driver1);
+
+	test_driver2.hf_dev.dev_name = "test_driver2";
+	test_driver2.hf_dev.device_poll = HF_DEVICE_IO_POLLING;
+	test_driver2.hf_dev.device_bus = HF_DEVICE_IO_SYNC;
+	test_driver2.hf_dev.support_list = support_sensors2;
+	test_driver2.hf_dev.support_size = ARRAY_SIZE(support_sensors2);
+	test_driver2.hf_dev.enable = test_enable;
+	test_driver2.hf_dev.batch = test_batch;
+	test_driver2.hf_dev.sample = test_sample;
+
+	err = hf_manager_create(&test_driver2.hf_dev);
+	if (err < 0) {
+		pr_err("%s hf_manager_create fail\n", __func__);
+		goto out2;
+	}
+	hf_device_set_private_data(&test_driver2.hf_dev, &test_driver2);
+
+	test_driver3.hf_dev.dev_name = "test_driver3";
+	test_driver3.hf_dev.device_poll = HF_DEVICE_IO_POLLING;
+	test_driver3.hf_dev.device_bus = HF_DEVICE_IO_ASYNC;
+	test_driver3.hf_dev.support_list = support_sensors3;
+	test_driver3.hf_dev.support_size = ARRAY_SIZE(support_sensors3);
+	test_driver3.hf_dev.enable = test_enable;
+	test_driver3.hf_dev.batch = test_batch;
+	test_driver3.hf_dev.sample = test_sample;
+
+	err = hf_manager_create(&test_driver3.hf_dev);
+	if (err < 0) {
+		pr_err("%s hf_manager_create fail\n", __func__);
+		goto out3;
+	}
+	hf_device_set_private_data(&test_driver3.hf_dev, &test_driver3);
+
+	test_driver4.hf_dev.dev_name = "test_driver4";
+	test_driver4.hf_dev.device_poll = HF_DEVICE_IO_POLLING;
+	test_driver4.hf_dev.device_bus = HF_DEVICE_IO_ASYNC;
+	test_driver4.hf_dev.support_list = support_sensors4;
+	test_driver4.hf_dev.support_size = ARRAY_SIZE(support_sensors4);
+	test_driver4.hf_dev.enable = test_enable;
+	test_driver4.hf_dev.batch = test_batch;
+	test_driver4.hf_dev.sample = test_sample;
+
+	err = hf_manager_create(&test_driver4.hf_dev);
+	if (err < 0) {
+		pr_err("%s hf_manager_create fail\n", __func__);
+		goto out4;
+	}
+	hf_device_set_private_data(&test_driver4.hf_dev, &test_driver4);
+	return 0;
+
+out4:
+	hf_manager_destroy(test_driver3.hf_dev.manager);
+out3:
+	hf_manager_destroy(test_driver2.hf_dev.manager);
+out2:
+	hf_manager_destroy(test_driver1.hf_dev.manager);
+out1:
+	return -EINVAL;
+}
+
+static int __init test_init(void)
+{
+	tests_init();
+	return 0;
+}
+
+module_init(test_init);
+
+MODULE_DESCRIPTION("high frequency manager test");
+MODULE_AUTHOR("Hongxu Zhao <hongxu.zhao@mediatek.com>");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/staging/hf_manager/test/test_app.c b/drivers/staging/hf_manager/test/test_app.c
new file mode 100644
index 000000000000..c345544a3b24
--- /dev/null
+++ b/drivers/staging/hf_manager/test/test_app.c
@@ -0,0 +1,174 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2020 MediaTek Inc.
+ * Author: Hongxu Zhao <hongxu.zhao@mediatek.com>
+ */
+
+#define pr_fmt(fmt) "[test_app] " fmt
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/kthread.h>
+#include <linux/kobject.h>
+
+#include "hf_manager.h"
+
+struct test_app_t {
+	struct task_struct *task;
+	struct hf_client *client;
+	struct kobject *kobj;
+	int sensor_type;
+	int val1;
+	int val2;
+};
+
+static struct test_app_t test_app;
+
+static void test_app_request_cali(u8 action, bool enable)
+{
+	switch (action) {
+	case CALI_ACTION:
+		hf_client_request_sensor_cali(test_app.client,
+					      test_app.sensor_type,
+					      HF_MANAGER_REQUEST_CALI_DATA,
+					      enable);
+		break;
+	case TEST_ACTION:
+		hf_client_request_sensor_cali(test_app.client,
+					      test_app.sensor_type,
+					      HF_MANAGER_REQUEST_TEST_DATA,
+					      enable);
+		break;
+	}
+}
+
+static int test_app_kthread(void *arg)
+{
+	struct hf_client *client = NULL;
+	struct hf_manager_event data[4];
+	int size = 0, i = 0;
+
+	client = hf_client_create();
+	if (!client) {
+		pr_err("hf_client_create fail\n");
+		return -ENOMEM;
+	}
+	test_app.client = client;
+
+	while (!kthread_should_stop()) {
+		memset(data, 0, sizeof(data));
+		size = hf_client_poll_sensor(client, data, ARRAY_SIZE(data));
+		if (size < 0)
+			continue;
+		for (i = 0; i < size; ++i) {
+			pr_info("[%d,%d,%lld,%d,%d,%d]\n",
+				data[i].sensor_type,
+				data[i].action,
+				data[i].timestamp,
+				data[i].word[0],
+				data[i].word[1],
+				data[i].word[2]);
+
+			/* need derequest sensor cali */
+			test_app_request_cali(data[i].action, false);
+		}
+	}
+	return 0;
+}
+
+#define test_app_attr(_name) \
+static struct kobj_attribute _name##_attr = {	\
+	.attr	= {				\
+		.name = __stringify(_name),	\
+		.mode = 0644,			\
+	},					\
+	.show	= _name##_show,			\
+	.store	= _name##_store,		\
+}
+
+static ssize_t control_show(struct kobject *kobj,
+			    struct kobj_attribute *attr,
+			    char *buf)
+{
+	return sprintf(buf, "sensor_type=%u,val1=%u,val2=%u\n",
+		       test_app.sensor_type,
+		       test_app.val1,
+		       test_app.val2);
+}
+
+static ssize_t control_store(struct kobject *kobj,
+			     struct kobj_attribute *attr,
+			     const char *buf, size_t n)
+{
+	int ret = 0;
+	struct hf_manager_cmd cmd;
+
+	if (!test_app.client)
+		goto out;
+
+	ret = sscanf(buf, "%u,%u,%u", &test_app.sensor_type,
+		     &test_app.val1, &test_app.val2);
+	if (ret != 3) {
+		pr_err("control store param error\n");
+		goto out;
+	}
+
+	ret = hf_client_find_sensor(test_app.client, test_app.sensor_type);
+	if (ret < 0) {
+		pr_err("hf_client_find_sensor %u fail\n",
+		       test_app.sensor_type);
+		goto out;
+	}
+
+	test_app_request_cali(test_app.val1, true);
+
+	memset(&cmd, 0, sizeof(cmd));
+	cmd.sensor_type = test_app.sensor_type;
+	cmd.action = test_app.val1;
+	cmd.delay = test_app.val2;
+	cmd.latency = 0;
+	ret = hf_client_control_sensor(test_app.client, &cmd);
+	if (ret < 0) {
+		pr_err("hf_client_control_sensor %u fail\n",
+		       test_app.sensor_type);
+		goto out;
+	}
+out:
+	return n;
+}
+
+test_app_attr(control);
+
+static struct attribute *attr[] = {
+	&control_attr.attr,
+	NULL,
+};
+
+static const struct attribute_group attr_group = {
+	.attrs = attr,
+};
+
+static int __init test_app_init(void)
+{
+	test_app.task = kthread_run(test_app_kthread,
+				    &test_app, "test_app");
+	if (IS_ERR(test_app.task))
+		pr_err("kthread_run create fail\n");
+
+	test_app.kobj = kobject_create_and_add("test_app", NULL);
+	if (!test_app.kobj) {
+		pr_err("kobject create fail\n");
+		return -ENOMEM;
+	}
+	if (sysfs_create_group(test_app.kobj, &attr_group)) {
+		pr_err("sysfs create fail\n");
+		return -EFAULT;
+	}
+	return 0;
+}
+
+module_init(test_app_init);
+
+MODULE_DESCRIPTION("high frequency manager test");
+MODULE_AUTHOR("Hongxu Zhao <hongxu.zhao@mediatek.com>");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/staging/hf_manager/test/test_app1.c b/drivers/staging/hf_manager/test/test_app1.c
new file mode 100644
index 000000000000..d099e1f3cfe1
--- /dev/null
+++ b/drivers/staging/hf_manager/test/test_app1.c
@@ -0,0 +1,143 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2020 MediaTek Inc.
+ * Author: Hongxu Zhao <hongxu.zhao@mediatek.com>
+ */
+
+#define pr_fmt(fmt) "[test_app1] " fmt
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/kobject.h>
+
+#include "hf_manager.h"
+
+#define test_app_attr(_name) \
+static struct kobj_attribute _name##_attr = {	\
+	.attr	= {				\
+		.name = __stringify(_name),	\
+		.mode = 0644,			\
+	},					\
+	.show	= _name##_show,			\
+}
+
+static ssize_t test_app1_cmd(char *buf, int sensor_type,
+			     int action, unsigned int request)
+{
+	ssize_t ret = 0;
+	struct hf_client *client = NULL;
+	struct hf_manager_cmd cmd;
+	struct hf_manager_event data[1];
+
+	client = hf_client_create();
+	if (!client) {
+		pr_err("hf_client_create fail\n");
+		return -ENOMEM;
+	}
+	ret = hf_client_find_sensor(client, sensor_type);
+	if (ret < 0) {
+		pr_err("hf_client_find_sensor %u fail\n", sensor_type);
+		goto out;
+	}
+	hf_client_request_sensor_cali(client, sensor_type,
+				      request, true);
+	memset(&cmd, 0, sizeof(cmd));
+	cmd.sensor_type = sensor_type;
+	cmd.action = action;
+	ret = hf_client_control_sensor(client, &cmd);
+	if (ret < 0) {
+		pr_err("hf_client_control_sensor %u %u fail\n",
+		       sensor_type, action);
+		goto out;
+	}
+	ret = hf_client_poll_sensor_timeout(client, data, ARRAY_SIZE(data),
+					    msecs_to_jiffies(3000));
+	hf_client_request_sensor_cali(client, sensor_type,
+				      request, false);
+	if (ret >= 0)
+		ret = sprintf(buf, "[%d,%d,%d,%lld,%d,%d,%d]\n",
+			      data[0].sensor_type,
+			      data[0].action,
+			      data[0].accurancy,
+			      data[0].timestamp,
+			      data[0].word[0],
+			      data[0].word[1],
+			      data[0].word[2]);
+out:
+	hf_client_destroy(client);
+	return ret;
+}
+
+static ssize_t acc_cali_show(struct kobject *kobj,
+			     struct kobj_attribute *attr,
+			     char *buf)
+{
+	return test_app1_cmd(buf, SENSOR_TYPE_ACCELEROMETER,
+			     HF_MANAGER_SENSOR_ENABLE_CALI,
+			     HF_MANAGER_REQUEST_CALI_DATA);
+}
+
+static ssize_t acc_seltest_show(struct kobject *kobj,
+				struct kobj_attribute *attr,
+				char *buf)
+{
+	return test_app1_cmd(buf, SENSOR_TYPE_ACCELEROMETER,
+			     HF_MANAGER_SENSOR_SELFTEST,
+			     HF_MANAGER_REQUEST_TEST_DATA);
+}
+
+static ssize_t gyro_cali_show(struct kobject *kobj,
+			      struct kobj_attribute *attr,
+			      char *buf)
+{
+	return test_app1_cmd(buf, SENSOR_TYPE_GYROSCOPE,
+			     HF_MANAGER_SENSOR_ENABLE_CALI,
+			     HF_MANAGER_REQUEST_CALI_DATA);
+}
+
+static ssize_t gyro_selftest_show(struct kobject *kobj,
+				  struct kobj_attribute *attr,
+				  char *buf)
+{
+	return test_app1_cmd(buf, SENSOR_TYPE_GYROSCOPE,
+			     HF_MANAGER_SENSOR_SELFTEST,
+			     HF_MANAGER_REQUEST_TEST_DATA);
+}
+
+test_app_attr(acc_cali);
+test_app_attr(acc_seltest);
+test_app_attr(gyro_cali);
+test_app_attr(gyro_selftest);
+
+static struct attribute *attr[] = {
+	&acc_cali_attr.attr,
+	&acc_seltest_attr.attr,
+	&gyro_cali_attr.attr,
+	&gyro_selftest_attr.attr,
+	NULL,
+};
+
+static const struct attribute_group attr_group = {
+	.attrs = attr,
+};
+
+static int __init test_app_init(void)
+{
+	struct kobject *kobj = kobject_create_and_add("test_app1", NULL);
+
+	if (!kobj) {
+		pr_err("kobject create fail\n");
+		return -ENOMEM;
+	}
+	if (sysfs_create_group(kobj, &attr_group)) {
+		pr_err("sysfs create fail\n");
+		return -EFAULT;
+	}
+	return 0;
+}
+
+module_init(test_app_init);
+
+MODULE_DESCRIPTION("high frequency manager test");
+MODULE_AUTHOR("Hongxu Zhao <hongxu.zhao@mediatek.com>");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/staging/hf_manager/test/test_app2.c b/drivers/staging/hf_manager/test/test_app2.c
new file mode 100644
index 000000000000..373cb97af894
--- /dev/null
+++ b/drivers/staging/hf_manager/test/test_app2.c
@@ -0,0 +1,162 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2020 MediaTek Inc.
+ * Author: Hongxu Zhao <hongxu.zhao@mediatek.com>
+ */
+
+#define pr_fmt(fmt) "[test_app2] " fmt
+
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/kthread.h>
+#include <linux/kobject.h>
+
+#include "hf_manager.h"
+
+struct test_app_t {
+	struct task_struct *task;
+	struct hf_client *client;
+};
+
+static struct test_app_t test_app;
+
+static int test_app_kthread(void *arg)
+{
+	struct hf_client *client = test_app.client;
+	struct hf_manager_event data[4];
+	int size = 0, i = 0;
+
+	if (!client)
+		return -EINVAL;
+
+	while (!kthread_should_stop()) {
+		memset(data, 0, sizeof(data));
+		/*
+		 * must use timeout api to wakeup kthread and do exit
+		 * otherwise kthread_stop will be blocked forever
+		 */
+		size = hf_client_poll_sensor_timeout(client, data,
+						     ARRAY_SIZE(data),
+						     msecs_to_jiffies(500));
+		if (size < 0)
+			continue;
+		for (i = 0; i < size; ++i) {
+			pr_info("[%d,%d,%lld,%d,%d,%d]\n",
+				data[i].sensor_type,
+				data[i].action,
+				data[i].timestamp,
+				data[i].word[0],
+				data[i].word[1],
+				data[i].word[2]);
+		}
+	}
+	return 0;
+}
+
+#define test_app_attr(_name) \
+static struct kobj_attribute _name##_attr = {	\
+	.attr	= {				\
+		.name = __stringify(_name),	\
+		.mode = 0644,			\
+	},					\
+	.store	= _name##_store,		\
+}
+
+static ssize_t control_store(struct kobject *kobj,
+			     struct kobj_attribute *attr,
+			     const char *buf, size_t n)
+{
+	int ret = 0;
+	int sensor_type = 0, val1 = 0, val2 = 0;
+	struct hf_manager_cmd cmd;
+
+	ret = sscanf(buf, "%u,%u,%u", &sensor_type, &val1, &val2);
+	if (ret != 3) {
+		pr_err("control store param error\n");
+		return -EINVAL;
+	}
+
+	if (val1 == HF_MANAGER_SENSOR_ENABLE) {
+		if (test_app.client)
+			return -EINVAL;
+		test_app.client = hf_client_create();
+		if (!test_app.client) {
+			pr_err("hf_client_create fail\n");
+			return -ENOMEM;
+		}
+		if (!test_app.task) {
+			test_app.task = kthread_run(test_app_kthread,
+						    &test_app, "test_app2");
+			if (IS_ERR(test_app.task)) {
+				pr_err("kthread_run create fail\n");
+				return -ENOMEM;
+			}
+		}
+		ret = hf_client_find_sensor(test_app.client, sensor_type);
+		if (ret < 0) {
+			pr_err("hf_client_find_sensor %u fail\n",
+			       sensor_type);
+			return -EINVAL;
+		}
+		memset(&cmd, 0, sizeof(cmd));
+		cmd.sensor_type = sensor_type;
+		cmd.action = val1;
+		cmd.delay = val2;
+		cmd.latency = 0;
+		ret = hf_client_control_sensor(test_app.client, &cmd);
+		if (ret < 0) {
+			pr_err("hf_client_control_sensor %u fail\n",
+			       sensor_type);
+			return -EINVAL;
+		}
+	} else if (val1 == HF_MANAGER_SENSOR_DISABLE) {
+		if (test_app.client) {
+			memset(&cmd, 0, sizeof(cmd));
+			cmd.sensor_type = sensor_type;
+			cmd.action = val1;
+			hf_client_control_sensor(test_app.client, &cmd);
+		}
+		if (test_app.task) {
+			kthread_stop(test_app.task);
+			test_app.task = NULL;
+		}
+		if (test_app.client) {
+			hf_client_destroy(test_app.client);
+			test_app.client = NULL;
+		}
+	}
+
+	return n;
+}
+
+test_app_attr(control);
+
+static struct attribute *attr[] = {
+	&control_attr.attr,
+	NULL,
+};
+
+static const struct attribute_group attr_group = {
+	.attrs = attr,
+};
+
+static int __init test_app_init(void)
+{
+	struct kobject *kobj = kobject_create_and_add("test_app2", NULL);
+
+	if (!kobj) {
+		pr_err("kobject create fail\n");
+		return -ENOMEM;
+	}
+	if (sysfs_create_group(kobj, &attr_group)) {
+		pr_err("sysfs create fail\n");
+		return -EFAULT;
+	}
+	return 0;
+}
+
+module_init(test_app_init);
+
+MODULE_DESCRIPTION("high frequency manager test");
+MODULE_AUTHOR("Hongxu Zhao <hongxu.zhao@mediatek.com>");
+MODULE_LICENSE("GPL v2");
-- 
2.18.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
