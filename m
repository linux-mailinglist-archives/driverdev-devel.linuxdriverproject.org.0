Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B13F8F8F4
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 04:33:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id D81DE884DB;
	Fri, 16 Aug 2019 02:33:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vSe4BOP-DMSV; Fri, 16 Aug 2019 02:33:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1A41A880CB;
	Fri, 16 Aug 2019 02:33:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 407C41BF2BD
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3D9E986168
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XaE9HANc8h8o for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 02:33:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 5490E8647E
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 02:33:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 19:33:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="194894545"
Received: from genxtest-ykzhao.sh.intel.com ([10.239.143.71])
 by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2019 19:33:20 -0700
From: Zhao Yakui <yakui.zhao@intel.com>
To: x86@kernel.org, linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [RFC PATCH 14/15] drivers/acrn: add the support of irqfd and eventfd
Date: Fri, 16 Aug 2019 10:25:55 +0800
Message-Id: <1565922356-4488-15-git-send-email-yakui.zhao@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
References: <1565922356-4488-1-git-send-email-yakui.zhao@intel.com>
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
Cc: Zhao Yakui <yakui.zhao@intel.com>, Shuo Liu <shuo.a.liu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The ioventfd/irqfd based on eventfd is one mechanism that is widely used
to implement virtio kernel backend driver. After the ioreq is trigged from
virtio front driver, the eventfd_signal is called to notify the eventfd so
that the virtio kernel backend driver is waked up to handle the request.
After it is done, it will wake up the irqfd to inject the interrupt to
virtio front driver.

Each ioeventfd registered by userspace can map a PIO/MMIO range of the
guest to eventfd, and response to signal the eventfd when get the
in-range IO write from guest. Then the other side of eventfd can be
notified to process the IO request.

As we only use the ioeventfd to listen virtqueue's kick register, some
limitations are added:
      1) Length support can only be 1, 2, 4 or 8
      2) Only support write operation, read will get 0
      3) Same address, shorter length writing can be handled with the
         integral data matching

The irqfd based on eventfd provides a pipe for injecting guest interrupt
through a file description writing operation. Each irqfd registered by
userspace can map a interrupt of the guest to eventfd, and a writing
operation on one side of the eventfd will trigger the interrupt injection
on acrn_hsm side.

Co-developed-by: Shuo Liu <shuo.a.liu@intel.com>
Signed-off-by: Shuo Liu <shuo.a.liu@intel.com>
Signed-off-by: Zhao Yakui <yakui.zhao@intel.com>
---
 drivers/staging/acrn/Makefile             |   4 +-
 drivers/staging/acrn/acrn_dev.c           |  19 ++
 drivers/staging/acrn/acrn_drv_internal.h  |  10 +
 drivers/staging/acrn/acrn_ioeventfd.c     | 407 ++++++++++++++++++++++++++++++
 drivers/staging/acrn/acrn_irqfd.c         | 339 +++++++++++++++++++++++++
 drivers/staging/acrn/acrn_vm_mngt.c       |   9 +-
 include/uapi/linux/acrn/acrn_ioctl_defs.h |  25 ++
 7 files changed, 811 insertions(+), 2 deletions(-)
 create mode 100644 drivers/staging/acrn/acrn_ioeventfd.c
 create mode 100644 drivers/staging/acrn/acrn_irqfd.c

diff --git a/drivers/staging/acrn/Makefile b/drivers/staging/acrn/Makefile
index a381944..f8d8ee2 100644
--- a/drivers/staging/acrn/Makefile
+++ b/drivers/staging/acrn/Makefile
@@ -4,4 +4,6 @@ acrn-y := acrn_dev.o \
 	  acrn_vm_mngt.o \
 	  acrn_mm.o \
 	  acrn_mm_hugetlb.o \
-	  acrn_ioreq.o
+	  acrn_ioreq.o  \
+	  acrn_ioeventfd.o \
+	  acrn_irqfd.o
diff --git a/drivers/staging/acrn/acrn_dev.c b/drivers/staging/acrn/acrn_dev.c
index ef0ec50..0602125 100644
--- a/drivers/staging/acrn/acrn_dev.c
+++ b/drivers/staging/acrn/acrn_dev.c
@@ -141,6 +141,8 @@ long acrn_dev_ioctl(struct file *filep,
 		if (ret < 0)
 			goto ioreq_buf_fail;
 
+		acrn_ioeventfd_init(vm->vmid);
+		acrn_irqfd_init(vm->vmid);
 		pr_info("acrn: VM %d created\n", created_vm->vmid);
 		kfree(created_vm);
 		break;
@@ -506,6 +508,23 @@ long acrn_dev_ioctl(struct file *filep,
 
 		break;
 	}
+	case IC_EVENT_IOEVENTFD: {
+		struct acrn_ioeventfd args;
+
+		if (copy_from_user(&args, (void *)ioctl_param, sizeof(args)))
+			return -EFAULT;
+		ret = acrn_ioeventfd_config(vm->vmid, &args);
+		break;
+	}
+
+	case IC_EVENT_IRQFD: {
+		struct acrn_irqfd args;
+
+		if (copy_from_user(&args, (void *)ioctl_param, sizeof(args)))
+			return -EFAULT;
+		ret = acrn_irqfd_config(vm->vmid, &args);
+		break;
+	}
 
 	default:
 		pr_warn("Unknown IOCTL 0x%x\n", ioctl_num);
diff --git a/drivers/staging/acrn/acrn_drv_internal.h b/drivers/staging/acrn/acrn_drv_internal.h
index 7813387..b9ded9a 100644
--- a/drivers/staging/acrn/acrn_drv_internal.h
+++ b/drivers/staging/acrn/acrn_drv_internal.h
@@ -173,4 +173,14 @@ void acrn_ioreq_driver_init(void);
 void acrn_ioreq_clear_request(struct acrn_vm *vm);
 int acrn_ioreq_distribute_request(struct acrn_vm *vm);
 
+/* ioeventfd APIs */
+int acrn_ioeventfd_init(unsigned short vmid);
+int acrn_ioeventfd_config(unsigned short vmid, struct acrn_ioeventfd *args);
+void acrn_ioeventfd_deinit(unsigned short vmid);
+
+/* irqfd APIs */
+int acrn_irqfd_init(unsigned short vmid);
+int acrn_irqfd_config(unsigned short vmid, struct acrn_irqfd *args);
+void acrn_irqfd_deinit(unsigned short vmid);
+
 #endif
diff --git a/drivers/staging/acrn/acrn_ioeventfd.c b/drivers/staging/acrn/acrn_ioeventfd.c
new file mode 100644
index 0000000..b330625
--- /dev/null
+++ b/drivers/staging/acrn/acrn_ioeventfd.c
@@ -0,0 +1,407 @@
+// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
+/*
+ * ACRN hyperviosr service module (SRV): ioeventfd based on eventfd
+ *
+ * Copyright (C) 2019 Intel Corporation. All rights reserved.
+ * Liu Shuo <shuo.a.liu@intel.com>
+ * Zhao Yakui <yakui.zhao@intel.com>
+ */
+#include <linux/types.h>
+#include <linux/wait.h>
+#include <linux/poll.h>
+#include <linux/file.h>
+#include <linux/list.h>
+#include <linux/eventfd.h>
+#include <linux/kernel.h>
+#include <linux/slab.h>
+
+#include <linux/acrn/acrn_ioctl_defs.h>
+#include <linux/acrn/acrn_drv.h>
+
+#include "acrn_drv_internal.h"
+#include "acrn_hypercall.h"
+
+static LIST_HEAD(acrn_ioeventfd_clients);
+static DEFINE_MUTEX(acrn_ioeventfds_mutex);
+
+/* use internally to record properties of each ioeventfd */
+struct acrn_hsm_ioeventfd {
+	/* list to link all ioventfd together */
+	struct list_head list;
+	/* eventfd of this ioeventfd */
+	struct eventfd_ctx *eventfd;
+	/* start address for IO range*/
+	u64 addr;
+	/* match data */
+	u64 data;
+	/* length for IO range */
+	int length;
+	/* IO range type, can be REQ_PORTIO and REQ_MMIO */
+	int type;
+	/* ignore match data if true */
+	bool wildcard;
+};
+
+/* instance to bind ioeventfds of each VM */
+struct acrn_ioeventfd_info {
+	struct list_head list;
+	atomic_t refcnt;
+	/* vmid of VM */
+	unsigned short vmid;
+	/* acrn ioreq client for this instance */
+	int acrn_client_id;
+	/* vcpu number of this VM */
+	int vcpu_num;
+	/* ioreq shared buffer of this VM */
+	struct acrn_request *req_buf;
+
+	/* the mutex lock to protect ioeventfd list attached to VM */
+	struct mutex ioeventfds_lock;
+	/* ioeventfds in this instance */
+	struct list_head ioeventfds;
+};
+
+static
+struct acrn_ioeventfd_info *get_ioeventfd_info_by_vm(unsigned short vmid)
+{
+	struct acrn_ioeventfd_info *info = NULL;
+
+	mutex_lock(&acrn_ioeventfds_mutex);
+	list_for_each_entry(info, &acrn_ioeventfd_clients, list) {
+		if (info->vmid == vmid) {
+			atomic_inc(&info->refcnt);
+			mutex_unlock(&acrn_ioeventfds_mutex);
+			return info;
+		}
+	}
+	mutex_unlock(&acrn_ioeventfds_mutex);
+	return NULL;
+}
+
+static void put_ioeventfd_info(struct acrn_ioeventfd_info *info)
+{
+	mutex_lock(&acrn_ioeventfds_mutex);
+	if (atomic_dec_and_test(&info->refcnt)) {
+		list_del(&info->list);
+		mutex_unlock(&acrn_ioeventfds_mutex);
+		kfree(info);
+		return;
+	}
+	mutex_unlock(&acrn_ioeventfds_mutex);
+}
+
+/* assumes info->ioeventfds_lock held */
+static void acrn_ioeventfd_shutdown(struct acrn_hsm_ioeventfd *p)
+{
+	eventfd_ctx_put(p->eventfd);
+	list_del(&p->list);
+	kfree(p);
+}
+
+static inline int ioreq_type_from_flags(int flags)
+{
+	return flags & ACRN_IOEVENTFD_FLAG_PIO ?
+			REQ_PORTIO : REQ_MMIO;
+}
+
+/* assumes info->ioeventfds_lock held */
+static bool acrn_ioeventfd_is_duplicated(struct acrn_ioeventfd_info *info,
+					 struct acrn_hsm_ioeventfd *ioeventfd)
+{
+	struct acrn_hsm_ioeventfd *p;
+
+	/*
+	 * Treat same addr/type/data with different length combination
+	 * as the same one.
+	 *   Register PIO[0x100~0x107] with data 0x10 as ioeventfd A, later
+	 *   PIO[0x100~0x103] with data 0x10 will be failed to register.
+	 */
+	list_for_each_entry(p, &info->ioeventfds, list)
+		if (p->addr == ioeventfd->addr &&
+		    p->type == ioeventfd->type &&
+		    (p->wildcard || ioeventfd->wildcard ||
+		     p->data == ioeventfd->data))
+			return true;
+
+	return false;
+}
+
+static int acrn_assign_ioeventfd(struct acrn_ioeventfd_info *info,
+				 struct acrn_ioeventfd *args)
+{
+	struct eventfd_ctx *eventfd;
+	struct acrn_hsm_ioeventfd *p;
+	int ret = -ENOENT;
+
+	/* check for range overflow */
+	if (args->addr + args->len < args->addr)
+		return -EINVAL;
+
+	/* Only support 1,2,4,8 width registers */
+	if (!(args->len == 1 || args->len == 2 ||
+	      args->len == 4 || args->len == 8))
+		return -EINVAL;
+
+	eventfd = eventfd_ctx_fdget(args->fd);
+	if (IS_ERR(eventfd))
+		return PTR_ERR(eventfd);
+
+	p = kzalloc(sizeof(*p), GFP_KERNEL);
+	if (!p) {
+		ret = -ENOMEM;
+		goto fail;
+	}
+
+	INIT_LIST_HEAD(&p->list);
+	p->addr    = args->addr;
+	p->length  = args->len;
+	p->eventfd = eventfd;
+	p->type	   = ioreq_type_from_flags(args->flags);
+
+	/* If datamatch enabled, we compare the data
+	 * otherwise this is a wildcard
+	 */
+	if (args->flags & ACRN_IOEVENTFD_FLAG_DATAMATCH)
+		p->data = args->data;
+	else
+		p->wildcard = true;
+
+	mutex_lock(&info->ioeventfds_lock);
+
+	/* Verify that there isn't a match already */
+	if (acrn_ioeventfd_is_duplicated(info, p)) {
+		ret = -EEXIST;
+		goto unlock_fail;
+	}
+
+	/* register the IO range into acrn client */
+	ret = acrn_ioreq_add_iorange(info->acrn_client_id, p->type,
+				     p->addr, p->addr + p->length - 1);
+	if (ret < 0)
+		goto unlock_fail;
+
+	list_add_tail(&p->list, &info->ioeventfds);
+	mutex_unlock(&info->ioeventfds_lock);
+
+	return 0;
+
+unlock_fail:
+	mutex_unlock(&info->ioeventfds_lock);
+fail:
+	kfree(p);
+	eventfd_ctx_put(eventfd);
+	return ret;
+}
+
+static int acrn_deassign_ioeventfd(struct acrn_ioeventfd_info *info,
+				   struct acrn_ioeventfd *args)
+{
+	struct acrn_hsm_ioeventfd *p, *tmp;
+	struct eventfd_ctx *eventfd;
+	int ret = 0;
+
+	eventfd = eventfd_ctx_fdget(args->fd);
+	if (IS_ERR(eventfd))
+		return PTR_ERR(eventfd);
+
+	mutex_lock(&info->ioeventfds_lock);
+
+	list_for_each_entry_safe(p, tmp, &info->ioeventfds, list) {
+		if (p->eventfd != eventfd)
+			continue;
+
+		ret = acrn_ioreq_del_iorange(info->acrn_client_id, p->type,
+					     p->addr,
+					     p->addr + p->length - 1);
+		if (ret)
+			break;
+		acrn_ioeventfd_shutdown(p);
+		break;
+	}
+
+	mutex_unlock(&info->ioeventfds_lock);
+
+	eventfd_ctx_put(eventfd);
+
+	return ret;
+}
+
+static struct acrn_hsm_ioeventfd *
+acrn_ioeventfd_match(struct acrn_ioeventfd_info *info,
+		     u64 addr, u64 data,
+		     int length, int type)
+{
+	struct acrn_hsm_ioeventfd *p = NULL;
+
+	/*
+	 * Same addr/type/data will be treated as hit, otherwise ignore.
+	 *   Register PIO[0x100~0x107] with data 0x10 as ioeventfd A, later
+	 *   request PIO[0x100~0x103] with data 0x10 will hit A.
+	 */
+	list_for_each_entry(p, &info->ioeventfds, list) {
+		if (p->type == type && p->addr == addr &&
+		    (p->wildcard || p->data == data))
+			return p;
+	}
+
+	return NULL;
+}
+
+static int acrn_ioeventfd_handler(int client_id,
+				  unsigned long *ioreqs_map,
+				  void *client_priv)
+{
+	struct acrn_request *req;
+	struct acrn_hsm_ioeventfd *p;
+	struct acrn_ioeventfd_info *info;
+	u64 addr;
+	u64 val;
+	int size;
+	int vcpu;
+
+	info = (struct acrn_ioeventfd_info *)client_priv;
+	if (!info)
+		return -EINVAL;
+
+	/* get req buf */
+	if (!info->req_buf) {
+		info->req_buf = acrn_ioreq_get_reqbuf(info->acrn_client_id);
+		if (!info->req_buf) {
+			pr_err("Failed to get req_buf for client %d\n",
+			       info->acrn_client_id);
+			return -EINVAL;
+		}
+	}
+
+	while (1) {
+		vcpu = find_first_bit(ioreqs_map, info->vcpu_num);
+		if (vcpu == info->vcpu_num)
+			break;
+		req = &info->req_buf[vcpu];
+		if (atomic_read(&req->processed) == REQ_STATE_PROCESSING &&
+		    req->client == client_id) {
+			if (req->type == REQ_MMIO) {
+				if (req->reqs.mmio_request.direction ==
+						REQUEST_READ) {
+					/* reading does nothing and return 0 */
+					req->reqs.mmio_request.value = 0;
+					goto next_ioreq;
+				}
+				addr = req->reqs.mmio_request.address;
+				size = req->reqs.mmio_request.size;
+				val = req->reqs.mmio_request.value;
+			} else {
+				if (req->reqs.pio_request.direction ==
+						REQUEST_READ) {
+					/* reading does nothing and return 0 */
+					req->reqs.pio_request.value = 0;
+					goto next_ioreq;
+				}
+				addr = req->reqs.pio_request.address;
+				size = req->reqs.pio_request.size;
+				val = req->reqs.pio_request.value;
+			}
+
+			mutex_lock(&info->ioeventfds_lock);
+			p = acrn_ioeventfd_match(info, addr, val, size,
+						 req->type);
+			if (p)
+				eventfd_signal(p->eventfd, 1);
+			mutex_unlock(&info->ioeventfds_lock);
+
+next_ioreq:
+			acrn_ioreq_complete_request(client_id, vcpu, req);
+		}
+	}
+
+	return 0;
+}
+
+int acrn_ioeventfd_init(unsigned short vmid)
+{
+	int ret = 0;
+	char name[16];
+	struct acrn_ioeventfd_info *info;
+
+	info = get_ioeventfd_info_by_vm(vmid);
+	if (info) {
+		put_ioeventfd_info(info);
+		return -EEXIST;
+	}
+
+	info = kzalloc(sizeof(*info), GFP_KERNEL);
+	if (!info)
+		return -ENOMEM;
+	mutex_init(&info->ioeventfds_lock);
+	info->vmid = vmid;
+	atomic_set(&info->refcnt, 1);
+	INIT_LIST_HEAD(&info->ioeventfds);
+	info->vcpu_num = ACRN_REQUEST_MAX;
+
+	snprintf(name, sizeof(name), "ioeventfd-%hu", vmid);
+	info->acrn_client_id = acrn_ioreq_create_client(vmid,
+							acrn_ioeventfd_handler,
+							info, name);
+	if (info->acrn_client_id < 0) {
+		pr_err("Failed to create ioeventfd client for ioreq!\n");
+		ret = -EINVAL;
+		goto fail;
+	}
+
+	ret = acrn_ioreq_attach_client(info->acrn_client_id);
+	if (ret < 0) {
+		pr_err("Failed to attach acrn client %d!\n",
+		       info->acrn_client_id);
+		goto client_fail;
+	}
+
+	mutex_lock(&acrn_ioeventfds_mutex);
+	list_add(&info->list, &acrn_ioeventfd_clients);
+	mutex_unlock(&acrn_ioeventfds_mutex);
+
+	pr_info("ACRN hsm ioeventfd init done!\n");
+	return 0;
+client_fail:
+	acrn_ioreq_destroy_client(info->acrn_client_id);
+fail:
+	kfree(info);
+	return ret;
+}
+
+void acrn_ioeventfd_deinit(unsigned short vmid)
+{
+	struct acrn_hsm_ioeventfd *p, *tmp;
+	struct acrn_ioeventfd_info *info = NULL;
+
+	info = get_ioeventfd_info_by_vm(vmid);
+	if (!info)
+		return;
+
+	acrn_ioreq_destroy_client(info->acrn_client_id);
+	mutex_lock(&info->ioeventfds_lock);
+	list_for_each_entry_safe(p, tmp, &info->ioeventfds, list)
+		acrn_ioeventfd_shutdown(p);
+	mutex_unlock(&info->ioeventfds_lock);
+
+	put_ioeventfd_info(info);
+	/* put one more as we count it in finding */
+	put_ioeventfd_info(info);
+}
+
+int acrn_ioeventfd_config(unsigned short vmid, struct acrn_ioeventfd *args)
+{
+	struct acrn_ioeventfd_info *info = NULL;
+	int ret;
+
+	info = get_ioeventfd_info_by_vm(vmid);
+	if (!info)
+		return -ENOENT;
+
+	if (args->flags & ACRN_IOEVENTFD_FLAG_DEASSIGN)
+		ret = acrn_deassign_ioeventfd(info, args);
+	else
+		ret = acrn_assign_ioeventfd(info, args);
+
+	put_ioeventfd_info(info);
+	return ret;
+}
diff --git a/drivers/staging/acrn/acrn_irqfd.c b/drivers/staging/acrn/acrn_irqfd.c
new file mode 100644
index 0000000..578e05c
--- /dev/null
+++ b/drivers/staging/acrn/acrn_irqfd.c
@@ -0,0 +1,339 @@
+// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
+/*
+ * ACRN hyperviosr service module (SRV): irqfd based on eventfd
+ *
+ * Copyright (C) 2019 Intel Corporation. All rights reserved.
+ * Liu Shuo <shuo.a.liu@intel.com>
+ * Zhao Yakui <yakui.zhao@intel.com>
+ */
+
+#include <linux/device.h>
+#include <linux/wait.h>
+#include <linux/poll.h>
+#include <linux/file.h>
+#include <linux/list.h>
+#include <linux/eventfd.h>
+#include <linux/kernel.h>
+#include <linux/async.h>
+#include <linux/slab.h>
+
+#include <linux/acrn/acrn_ioctl_defs.h>
+#include <linux/acrn/acrn_drv.h>
+
+#include "acrn_drv_internal.h"
+#include "acrn_hypercall.h"
+
+static LIST_HEAD(acrn_irqfd_clients);
+static DEFINE_MUTEX(acrn_irqfds_mutex);
+
+/* instance to bind irqfds of each VM */
+struct acrn_irqfd_info {
+	struct list_head list;
+	int refcnt;
+	/* vmid of VM */
+	unsigned short  vmid;
+	/* workqueue for async shutdown work */
+	struct workqueue_struct *wq;
+
+	/* the lock to protect the irqfds list */
+	spinlock_t irqfds_lock;
+	/* irqfds in this instance */
+	struct list_head irqfds;
+};
+
+/* use internally to record properties of each irqfd */
+struct acrn_hsm_irqfd {
+	/* acrn_irqfd_info which this irqfd belong to */
+	struct acrn_irqfd_info *info;
+	/* wait queue node */
+	wait_queue_entry_t wait;
+	/* async shutdown work */
+	struct work_struct shutdown;
+	/* eventfd of this irqfd */
+	struct eventfd_ctx *eventfd;
+	/* list to link all ioventfd together */
+	struct list_head list;
+	/* poll_table of this irqfd */
+	poll_table pt;
+	/* msi to send when this irqfd triggerd */
+	struct acrn_msi_entry msi;
+};
+
+static struct acrn_irqfd_info *get_irqfd_info_by_vm(uint16_t vmid)
+{
+	struct acrn_irqfd_info *info = NULL;
+
+	mutex_lock(&acrn_irqfds_mutex);
+	list_for_each_entry(info, &acrn_irqfd_clients, list) {
+		if (info->vmid == vmid) {
+			info->refcnt++;
+			mutex_unlock(&acrn_irqfds_mutex);
+			return info;
+		}
+	}
+	mutex_unlock(&acrn_irqfds_mutex);
+	return NULL;
+}
+
+static void put_irqfd_info(struct acrn_irqfd_info *info)
+{
+	mutex_lock(&acrn_irqfds_mutex);
+	info->refcnt--;
+	if (info->refcnt == 0) {
+		list_del(&info->list);
+		kfree(info);
+	}
+	mutex_unlock(&acrn_irqfds_mutex);
+}
+
+static void acrn_irqfd_inject(struct acrn_hsm_irqfd *irqfd)
+{
+	struct acrn_irqfd_info *info = irqfd->info;
+
+	acrn_inject_msi(info->vmid, irqfd->msi.msi_addr,
+			irqfd->msi.msi_data);
+}
+
+/*
+ * Try to find if the irqfd still in list info->irqfds
+ *
+ * assumes info->irqfds_lock is held
+ */
+static bool acrn_irqfd_is_active(struct acrn_irqfd_info *info,
+				 struct acrn_hsm_irqfd *irqfd)
+{
+	struct acrn_hsm_irqfd *_irqfd;
+
+	list_for_each_entry(_irqfd, &info->irqfds, list)
+		if (_irqfd == irqfd)
+			return true;
+
+	return false;
+}
+
+/*
+ * Remove irqfd and free it.
+ *
+ * assumes info->irqfds_lock is held
+ */
+static void acrn_irqfd_shutdown(struct acrn_hsm_irqfd *irqfd)
+{
+	u64 cnt;
+
+	/* remove from wait queue */
+	list_del_init(&irqfd->list);
+	eventfd_ctx_remove_wait_queue(irqfd->eventfd, &irqfd->wait, &cnt);
+	eventfd_ctx_put(irqfd->eventfd);
+	kfree(irqfd);
+}
+
+static void acrn_irqfd_shutdown_work(struct work_struct *work)
+{
+	struct acrn_hsm_irqfd *irqfd =
+		container_of(work, struct acrn_hsm_irqfd, shutdown);
+	struct acrn_irqfd_info *info = irqfd->info;
+
+	spin_lock(&info->irqfds_lock);
+	if (acrn_irqfd_is_active(info, irqfd))
+		acrn_irqfd_shutdown(irqfd);
+	spin_unlock(&info->irqfds_lock);
+}
+
+/*
+ * Called with wqh->lock held and interrupts disabled
+ */
+static int acrn_irqfd_wakeup(wait_queue_entry_t *wait, unsigned int mode,
+			     int sync, void *key)
+{
+	struct acrn_hsm_irqfd *irqfd =
+		container_of(wait, struct acrn_hsm_irqfd, wait);
+	unsigned long poll_bits = (unsigned long)key;
+	struct acrn_irqfd_info *info = irqfd->info;
+
+	if (poll_bits & POLLIN)
+		/* An event has been signaled, inject an interrupt */
+		acrn_irqfd_inject(irqfd);
+
+	if (poll_bits & POLLHUP)
+		/* async close eventfd as shutdown need hold wqh->lock */
+		queue_work(info->wq, &irqfd->shutdown);
+
+	return 0;
+}
+
+static void acrn_irqfd_poll_func(struct file *file, wait_queue_head_t *wqh,
+				 poll_table *pt)
+{
+	struct acrn_hsm_irqfd *irqfd =
+		container_of(pt, struct acrn_hsm_irqfd, pt);
+	add_wait_queue(wqh, &irqfd->wait);
+}
+
+static
+int acrn_irqfd_assign(struct acrn_irqfd_info *info, struct acrn_irqfd *args)
+{
+	struct acrn_hsm_irqfd *irqfd, *tmp;
+	struct fd f;
+	struct eventfd_ctx *eventfd = NULL;
+	int ret = 0;
+	unsigned int events;
+
+	irqfd = kzalloc(sizeof(*irqfd), GFP_KERNEL);
+	if (!irqfd)
+		return -ENOMEM;
+
+	irqfd->info = info;
+	memcpy(&irqfd->msi, &args->msi, sizeof(args->msi));
+	INIT_LIST_HEAD(&irqfd->list);
+	INIT_WORK(&irqfd->shutdown, acrn_irqfd_shutdown_work);
+
+	f = fdget(args->fd);
+	if (!f.file) {
+		ret = -EBADF;
+		goto out;
+	}
+
+	eventfd = eventfd_ctx_fileget(f.file);
+	if (IS_ERR(eventfd)) {
+		ret = PTR_ERR(eventfd);
+		goto fail;
+	}
+
+	irqfd->eventfd = eventfd;
+
+	/*
+	 * Install our own custom wake-up handling so we are notified via
+	 * a callback whenever someone signals the underlying eventfd
+	 */
+	init_waitqueue_func_entry(&irqfd->wait, acrn_irqfd_wakeup);
+	init_poll_funcptr(&irqfd->pt, acrn_irqfd_poll_func);
+
+	spin_lock(&info->irqfds_lock);
+
+	list_for_each_entry(tmp, &info->irqfds, list) {
+		if (irqfd->eventfd != tmp->eventfd)
+			continue;
+		/* This fd is used for another irq already. */
+		ret = -EBUSY;
+		spin_unlock(&info->irqfds_lock);
+		goto fail;
+	}
+	list_add_tail(&irqfd->list, &info->irqfds);
+
+	spin_unlock(&info->irqfds_lock);
+
+	/* Check the pending event in this stage */
+	events = f.file->f_op->poll(f.file, &irqfd->pt);
+
+	if (events & POLLIN)
+		acrn_irqfd_inject(irqfd);
+
+	fdput(f);
+
+	return 0;
+fail:
+	if (eventfd && !IS_ERR(eventfd))
+		eventfd_ctx_put(eventfd);
+
+	fdput(f);
+out:
+	kfree(irqfd);
+	return ret;
+}
+
+static int acrn_irqfd_deassign(struct acrn_irqfd_info *info,
+			       struct acrn_irqfd *args)
+{
+	struct acrn_hsm_irqfd *irqfd, *tmp;
+	struct eventfd_ctx *eventfd;
+
+	eventfd = eventfd_ctx_fdget(args->fd);
+	if (IS_ERR(eventfd))
+		return PTR_ERR(eventfd);
+
+	spin_lock(&info->irqfds_lock);
+
+	list_for_each_entry_safe(irqfd, tmp, &info->irqfds, list) {
+		if (irqfd->eventfd == eventfd) {
+			acrn_irqfd_shutdown(irqfd);
+			break;
+		}
+	}
+
+	spin_unlock(&info->irqfds_lock);
+	eventfd_ctx_put(eventfd);
+
+	return 0;
+}
+
+int acrn_irqfd_config(unsigned short vmid, struct acrn_irqfd *args)
+{
+	struct acrn_irqfd_info *info;
+	int ret;
+
+	info = get_irqfd_info_by_vm(vmid);
+	if (!info)
+		return -ENOENT;
+
+	if (args->flags & ACRN_IRQFD_FLAG_DEASSIGN)
+		ret = acrn_irqfd_deassign(info, args);
+	else
+		ret = acrn_irqfd_assign(info, args);
+
+	put_irqfd_info(info);
+	return ret;
+}
+
+int acrn_irqfd_init(unsigned short vmid)
+{
+	struct acrn_irqfd_info *info;
+
+	info = get_irqfd_info_by_vm(vmid);
+	if (info) {
+		put_irqfd_info(info);
+		return -EEXIST;
+	}
+
+	info = kzalloc(sizeof(*info), GFP_KERNEL);
+	if (!info)
+		return -ENOMEM;
+	info->vmid = vmid;
+	info->refcnt = 1;
+	INIT_LIST_HEAD(&info->irqfds);
+	spin_lock_init(&info->irqfds_lock);
+
+	info->wq = alloc_workqueue("acrn_irqfd-%d", 0, 0, vmid);
+	if (!info->wq) {
+		kfree(info);
+		return -ENOMEM;
+	}
+
+	mutex_lock(&acrn_irqfds_mutex);
+	list_add(&info->list, &acrn_irqfd_clients);
+	mutex_unlock(&acrn_irqfds_mutex);
+
+	pr_info("ACRN HSM irqfd init done!\n");
+	return 0;
+}
+
+void acrn_irqfd_deinit(uint16_t vmid)
+{
+	struct acrn_hsm_irqfd *irqfd, *tmp;
+	struct acrn_irqfd_info *info;
+
+	info = get_irqfd_info_by_vm(vmid);
+	if (!info)
+		return;
+
+	put_irqfd_info(info);
+
+	destroy_workqueue(info->wq);
+
+	spin_lock(&info->irqfds_lock);
+	list_for_each_entry_safe(irqfd, tmp, &info->irqfds, list)
+		acrn_irqfd_shutdown(irqfd);
+	spin_unlock(&info->irqfds_lock);
+
+	/* put one more to release it */
+	put_irqfd_info(info);
+}
diff --git a/drivers/staging/acrn/acrn_vm_mngt.c b/drivers/staging/acrn/acrn_vm_mngt.c
index 8de380c..13ed719 100644
--- a/drivers/staging/acrn/acrn_vm_mngt.c
+++ b/drivers/staging/acrn/acrn_vm_mngt.c
@@ -71,6 +71,8 @@ int acrn_vm_destroy(struct acrn_vm *vm)
 	if (test_and_set_bit(ACRN_VM_DESTROYED, &vm->flags))
 		return 0;
 
+	acrn_ioeventfd_deinit(vm->vmid);
+	acrn_irqfd_deinit(vm->vmid);
 	ret = hcall_destroy_vm(vm->vmid);
 	if (ret < 0) {
 		pr_warn("failed to destroy VM %d\n", vm->vmid);
@@ -88,7 +90,12 @@ int acrn_inject_msi(unsigned short vmid, unsigned long msi_addr,
 	struct acrn_msi_entry *msi;
 	int ret;
 
-	msi = kzalloc(sizeof(*msi), GFP_KERNEL);
+	/* acrn_inject_msi is called in acrn_irqfd_inject from eventfd_signal
+	 * and the interrupt is disabled.
+	 * So the GFP_ATOMIC should be used instead of GFP_KERNEL to
+	 * avoid the sleeping with interrupt disabled.
+	 */
+	msi = kzalloc(sizeof(*msi), GFP_ATOMIC);
 
 	if (!msi)
 		return -ENOMEM;
diff --git a/include/uapi/linux/acrn/acrn_ioctl_defs.h b/include/uapi/linux/acrn/acrn_ioctl_defs.h
index c762bd2..3a4f7c1 100644
--- a/include/uapi/linux/acrn/acrn_ioctl_defs.h
+++ b/include/uapi/linux/acrn/acrn_ioctl_defs.h
@@ -267,6 +267,25 @@ enum pm_cmd_type {
 	PMCMD_GET_CX_DATA,
 };
 
+#define ACRN_IOEVENTFD_FLAG_PIO		0x01
+#define ACRN_IOEVENTFD_FLAG_DATAMATCH	0x02
+#define ACRN_IOEVENTFD_FLAG_DEASSIGN	0x04
+struct acrn_ioeventfd {
+	int32_t fd;
+	uint32_t flags;
+	uint64_t addr;
+	uint32_t len;
+	uint32_t reserved;
+	uint64_t data;
+};
+
+#define ACRN_IRQFD_FLAG_DEASSIGN	0x01
+struct acrn_irqfd {
+	int32_t fd;
+	uint32_t flags;
+	struct acrn_msi_entry msi;
+};
+
 /*
  * Common IOCTL ID definition for DM
  */
@@ -317,4 +336,10 @@ enum pm_cmd_type {
 /* Power management */
 #define IC_ID_PM_BASE                   0x60UL
 #define IC_PM_GET_CPU_STATE            _IC_ID(IC_ID, IC_ID_PM_BASE + 0x00)
+
+/* VHM eventfd */
+#define IC_ID_EVENT_BASE		0x70UL
+#define IC_EVENT_IOEVENTFD		_IC_ID(IC_ID, IC_ID_EVENT_BASE + 0x00)
+#define IC_EVENT_IRQFD			_IC_ID(IC_ID, IC_ID_EVENT_BASE + 0x01)
+
 #endif /* __ACRN_IOCTL_DEFS_H__ */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
