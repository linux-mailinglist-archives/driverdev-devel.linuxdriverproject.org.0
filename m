Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9168F8F6
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 04:33:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C841B86250;
	Fri, 16 Aug 2019 02:33:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s6q4_pGdJqYA; Fri, 16 Aug 2019 02:33:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EFC1A86226;
	Fri, 16 Aug 2019 02:33:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA0F71BF2BD
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id B7EBA8643D
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OdnUnu2Ubafp for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 02:33:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BB5D086168
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 02:33:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 19:33:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="194894534"
Received: from genxtest-ykzhao.sh.intel.com ([10.239.143.71])
 by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2019 19:33:15 -0700
From: Zhao Yakui <yakui.zhao@intel.com>
To: x86@kernel.org, linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [RFC PATCH 11/15] drivers/acrn: add the support of handling emulated
 ioreq
Date: Fri, 16 Aug 2019 10:25:52 +0800
Message-Id: <1565922356-4488-12-git-send-email-yakui.zhao@intel.com>
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
Cc: Zhao Yakui <yakui.zhao@intel.com>, Yin FengWei <fengwei.yin@intel.com>,
 Jason Chen CJ <jason.cj.chen@intel.com>, Liu Shuo <shuo.a.liu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

After guest UOS is booted, the MMIO/IO access will cause that
it exits from VMX non-root env into ACRN hypervisor. Then the ACRN
hypervisor will inject virtual irq into the Linux guest with ACRN HSM
module. The ACRN_HSM handles this virtual irq (which is based on
HYPERVISOR_CALLBACK_VECTOR), parses corresponding IO request from shared
IOReq buffer and distributes it to different ioreq client. After the
ioreq emulation is finished, it will notify ACRN hypervisor and then
hypervisor will resume the execution of guest UOS.

ACRN HSM module will group some range of emulated MMIO/IO addr as
one ioreq_client. It will determine which ioreq_client should handle
the emulated MMIO/IO request based on the address and then dispatch it
into the ioreq_client thread. User-space device model will create one
default ioreq_client, which is used to handle the emulated MMIO/IO in
user-space thread.

Add ioreq service and defines IOReq APIs like below:
   int acrn_ioreq_create_client(unsigned long vmid,
		ioreq_handler_t handler,
		void *client_priv,
		char *name);
   void acrn_ioreq_destroy_client(int client_id);
   int acrn_ioreq_add_iorange(int client_id, enum request_type type,
       long start, long end);
   int acrn_ioreq_del_iorange(int client_id, enum request_type type,
       long start, long end);
   struct acrn_request * acrn_ioreq_get_reqbuf(int client_id);
   int acrn_ioreq_attach_client(int client_id);
   int acrn_ioreq_complete_request(int client_id);

Co-developed-by: Jason Chen CJ <jason.cj.chen@intel.com>
Signed-off-by: Jason Chen CJ <jason.cj.chen@intel.com>
Co-developed-by: Yin FengWei <fengwei.yin@intel.com>
Signed-off-by: Yin FengWei <fengwei.yin@intel.com>
Co-developed-by: Liu Shuo <shuo.a.liu@intel.com>
Signed-off-by: Liu Shuo <shuo.a.liu@intel.com>
Signed-off-by: Zhao Yakui <yakui.zhao@intel.com>
---
 drivers/staging/acrn/Makefile             |   3 +-
 drivers/staging/acrn/acrn_dev.c           |  58 ++
 drivers/staging/acrn/acrn_drv_internal.h  |  33 ++
 drivers/staging/acrn/acrn_ioreq.c         | 937 ++++++++++++++++++++++++++++++
 drivers/staging/acrn/acrn_vm_mngt.c       |   7 +
 include/linux/acrn/acrn_drv.h             | 102 ++++
 include/uapi/linux/acrn/acrn_common_def.h | 176 ++++++
 include/uapi/linux/acrn/acrn_ioctl_defs.h |  20 +
 8 files changed, 1335 insertions(+), 1 deletion(-)
 create mode 100644 drivers/staging/acrn/acrn_ioreq.c

diff --git a/drivers/staging/acrn/Makefile b/drivers/staging/acrn/Makefile
index ec62afe..a381944 100644
--- a/drivers/staging/acrn/Makefile
+++ b/drivers/staging/acrn/Makefile
@@ -3,4 +3,5 @@ acrn-y := acrn_dev.o \
 	  acrn_hypercall.o \
 	  acrn_vm_mngt.o \
 	  acrn_mm.o \
-	  acrn_mm_hugetlb.o
+	  acrn_mm_hugetlb.o \
+	  acrn_ioreq.o
diff --git a/drivers/staging/acrn/acrn_dev.c b/drivers/staging/acrn/acrn_dev.c
index 1476817..28258fb 100644
--- a/drivers/staging/acrn/acrn_dev.c
+++ b/drivers/staging/acrn/acrn_dev.c
@@ -26,6 +26,7 @@
 #include <asm/acrn.h>
 #include <asm/hypervisor.h>
 #include <linux/acrn/acrn_ioctl_defs.h>
+#include <linux/acrn/acrn_drv.h>
 
 #include "acrn_hypercall.h"
 #include "acrn_drv_internal.h"
@@ -59,6 +60,9 @@ int acrn_dev_open(struct inode *inodep, struct file *filep)
 		INIT_HLIST_HEAD(&vm->hugepage_hlist[i]);
 	mutex_init(&vm->hugepage_lock);
 
+	INIT_LIST_HEAD(&vm->ioreq_client_list);
+	spin_lock_init(&vm->ioreq_client_lock);
+
 	write_lock_bh(&acrn_vm_list_lock);
 	vm_list_add(&vm->list);
 	write_unlock_bh(&acrn_vm_list_lock);
@@ -131,9 +135,20 @@ long acrn_dev_ioctl(struct file *filep,
 		vm->vmid = created_vm->vmid;
 		atomic_set(&vm->vcpu_num, 0);
 
+		ret = acrn_ioreq_init(vm, created_vm->req_buf);
+		if (ret < 0)
+			goto ioreq_buf_fail;
+
 		pr_info("acrn: VM %d created\n", created_vm->vmid);
 		kfree(created_vm);
 		break;
+
+ioreq_buf_fail:
+		hcall_destroy_vm(created_vm->vmid);
+		vm->vmid = ACRN_INVALID_VMID;
+		kfree(created_vm);
+		break;
+
 	}
 
 	case IC_START_VM: {
@@ -364,6 +379,47 @@ long acrn_dev_ioctl(struct file *filep,
 		break;
 	}
 
+	case IC_CREATE_IOREQ_CLIENT: {
+		int client_id;
+
+		client_id = acrn_ioreq_create_fallback_client(vm->vmid,
+							      "acrndm");
+		if (client_id < 0)
+			return -EFAULT;
+		return client_id;
+	}
+
+	case IC_DESTROY_IOREQ_CLIENT: {
+		int client = ioctl_param;
+
+		acrn_ioreq_destroy_client(client);
+		break;
+	}
+
+	case IC_ATTACH_IOREQ_CLIENT: {
+		int client = ioctl_param;
+
+		return acrn_ioreq_attach_client(client);
+	}
+
+	case IC_NOTIFY_REQUEST_FINISH: {
+		struct ioreq_notify notify;
+
+		if (copy_from_user(&notify, (void *)ioctl_param,
+				   sizeof(notify)))
+			return -EFAULT;
+
+		ret = acrn_ioreq_complete_request(notify.client_id,
+						  notify.vcpu, NULL);
+		if (ret < 0)
+			return -EFAULT;
+		break;
+	}
+	case IC_CLEAR_VM_IOREQ: {
+		acrn_ioreq_clear_request(vm);
+		break;
+	}
+
 	default:
 		pr_warn("Unknown IOCTL 0x%x\n", ioctl_num);
 		ret = -EFAULT;
@@ -397,6 +453,7 @@ static const struct file_operations fops = {
 	.open = acrn_dev_open,
 	.release = acrn_dev_release,
 	.unlocked_ioctl = acrn_dev_ioctl,
+	.poll = acrn_dev_poll,
 };
 
 #define EAX_PRIVILEGE_VM	BIT(0)
@@ -461,6 +518,7 @@ static int __init acrn_init(void)
 		return PTR_ERR(acrn_device);
 	}
 
+	acrn_ioreq_driver_init();
 	pr_info("acrn: ACRN Hypervisor service module initialized\n");
 	acrn_hsm_inited = 1;
 	return 0;
diff --git a/drivers/staging/acrn/acrn_drv_internal.h b/drivers/staging/acrn/acrn_drv_internal.h
index 3e633cd..7813387 100644
--- a/drivers/staging/acrn/acrn_drv_internal.h
+++ b/drivers/staging/acrn/acrn_drv_internal.h
@@ -10,6 +10,7 @@
 #include <linux/types.h>
 #include <linux/list.h>
 #include <linux/refcount.h>
+#include <linux/poll.h>
 
 struct vm_memory_region {
 #define MR_ADD		0
@@ -66,6 +67,7 @@ struct wp_data {
 
 enum ACRN_VM_FLAGS {
 	ACRN_VM_DESTROYED = 0,
+	ACRN_VM_IOREQ_FREE,
 };
 
 extern struct list_head acrn_vm_list;
@@ -88,6 +90,12 @@ void vm_list_add(struct list_head *list);
  * @vcpu_num: vcpu number
  * @flags: VM flag bits
  * @hugepage_hlist: hash list of hugepage
+ * @ioreq_fallback_client: default ioreq client
+ * @ioreq_client_lock: spinlock to protect ioreq_client_list
+ * @ioreq_client_list: list of ioreq clients
+ * @req_buf: request buffer shared between HV, SOS and UOS
+ * @pg: pointer to linux page which holds req_buf
+ * @pci_conf_addr: the saved pci_conf1_addr for 0xCF8
  */
 struct acrn_vm {
 	struct device *dev;
@@ -100,6 +108,13 @@ struct acrn_vm {
 	/* mutex to protect hugepage_hlist */
 	struct mutex hugepage_lock;
 	struct hlist_head hugepage_hlist[HUGEPAGE_HLIST_ARRAY_SIZE];
+	int ioreq_fallback_client;
+	/* the spin_lock to protect ioreq_client_list */
+	spinlock_t ioreq_client_lock;
+	struct list_head ioreq_client_list;
+	struct acrn_request_buffer *req_buf;
+	struct page *pg;
+	u32 pci_conf_addr;
 };
 
 int acrn_vm_destroy(struct acrn_vm *vm);
@@ -140,4 +155,22 @@ struct hc_ptdev_irq {
 	};
 };
 
+/**
+ * @brief Info to set ioreq buffer for a created VM
+ *
+ * the parameter for HC_SET_IOREQ_BUFFER hypercall
+ */
+struct acrn_set_ioreq_buffer {
+	/** host physical address of VM request_buffer */
+	u64 req_buf;
+};
+
+int acrn_ioreq_init(struct acrn_vm *vm, unsigned long vma);
+void acrn_ioreq_free(struct acrn_vm *vm);
+int acrn_ioreq_create_fallback_client(unsigned short vmid, char *name);
+unsigned int acrn_dev_poll(struct file *filep, poll_table *wait);
+void acrn_ioreq_driver_init(void);
+void acrn_ioreq_clear_request(struct acrn_vm *vm);
+int acrn_ioreq_distribute_request(struct acrn_vm *vm);
+
 #endif
diff --git a/drivers/staging/acrn/acrn_ioreq.c b/drivers/staging/acrn/acrn_ioreq.c
new file mode 100644
index 0000000..a6cf0c1
--- /dev/null
+++ b/drivers/staging/acrn/acrn_ioreq.c
@@ -0,0 +1,937 @@
+// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
+/*
+ * ACRN_HSM: handle the ioreq_request in ioreq_client
+ * Copyright (C) 2019 Intel Corporation. All rights reserved.
+ *
+ * Jason Chen CJ <jason.cj.chen@intel.com>
+ * Zhao Yakui <yakui.zhao@intel.com>
+ * Jack Ren <jack.ren@intel.com>
+ * FengWei yin <fengwei.yin@intel.com>
+ *
+ */
+
+#include <linux/slab.h>
+#include <linux/wait.h>
+#include <linux/freezer.h>
+#include <linux/sched.h>
+#include <linux/kthread.h>
+#include <linux/list.h>
+#include <linux/mm.h>
+#include <linux/poll.h>
+#include <linux/delay.h>
+#include <linux/bitops.h>
+#include <linux/acrn/acrn_ioctl_defs.h>
+#include <linux/acrn/acrn_drv.h>
+
+#include <linux/idr.h>
+#include <linux/refcount.h>
+#include <linux/rwlock_types.h>
+
+#include "acrn_drv_internal.h"
+#include "acrn_hypercall.h"
+
+/* rwlock that is used to protect IDR client */
+static DEFINE_RWLOCK(client_lock);
+static struct idr	idr_client;
+
+struct ioreq_range {
+	struct list_head list;
+	u32 type;
+	long start;
+	long end;
+};
+
+enum IOREQ_CLIENT_BITS {
+	IOREQ_CLIENT_DESTROYING = 0,
+	IOREQ_CLIENT_EXIT,
+};
+
+struct ioreq_client {
+	/* client name */
+	char name[16];
+	/* client id */
+	int id;
+	/* vm this client belongs to */
+	unsigned short vmid;
+	/* list node for this ioreq_client */
+	struct list_head list;
+	/*
+	 * is this client fallback?
+	 * there is only one fallback client in a vm - dm
+	 * a fallback client shares IOReq buffer pages
+	 * a fallback client handles all left IOReq not handled by other clients
+	 * a fallback client does not need add io ranges
+	 * a fallback client handles ioreq in its own context
+	 */
+	bool fallback;
+
+	unsigned long flags;
+
+	/* client covered io ranges - N/A for fallback client */
+	struct list_head range_list;
+	rwlock_t range_lock;
+
+	/*
+	 *   this req records the req number this client need handle
+	 */
+	DECLARE_BITMAP(ioreqs_map, ACRN_REQUEST_MAX);
+
+	/*
+	 * client ioreq handler:
+	 *   if client provides a handler, it means acrn need create a kthread
+	 *   to call the handler while there is ioreq.
+	 *   if client doesn't provide a handler, client should handle ioreq
+	 *   in its own context when calls acrn_ioreq_attach_client.
+	 *
+	 *   NOTE: for fallback client, there is no ioreq handler.
+	 */
+	ioreq_handler_t handler;
+	bool acrn_create_kthread;
+	struct task_struct *thread;
+	wait_queue_head_t wq;
+
+	refcount_t refcnt;
+	/* add the ref_vm of ioreq_client */
+	struct acrn_vm *ref_vm;
+	void *client_priv;
+};
+
+#define MAX_CLIENT 1024
+static void acrn_ioreq_notify_client(struct ioreq_client *client);
+
+static inline bool has_pending_request(struct ioreq_client *client)
+{
+	if (client)
+		return !bitmap_empty(client->ioreqs_map, ACRN_REQUEST_MAX);
+	else
+		return false;
+}
+
+static int alloc_client(void)
+{
+	struct ioreq_client *client;
+	int ret;
+
+	client = kzalloc(sizeof(*client), GFP_KERNEL);
+	if (!client)
+		return -ENOMEM;
+	refcount_set(&client->refcnt, 1);
+
+	write_lock_bh(&client_lock);
+	ret = idr_alloc_cyclic(&idr_client, client, 1, MAX_CLIENT, GFP_NOWAIT);
+	write_unlock_bh(&client_lock);
+
+	if (ret < 0) {
+		kfree(client);
+		return -EINVAL;
+	}
+
+	client->id = ret;
+
+	return ret;
+}
+
+static struct ioreq_client *acrn_ioreq_get_client(int client_id)
+{
+	struct ioreq_client *obj;
+
+	read_lock_bh(&client_lock);
+	obj = idr_find(&idr_client, client_id);
+	if (obj)
+		refcount_inc(&obj->refcnt);
+	read_unlock_bh(&client_lock);
+
+	return obj;
+}
+
+static void acrn_ioreq_put_client(struct ioreq_client *client)
+{
+	if (refcount_dec_and_test(&client->refcnt)) {
+		struct acrn_vm *ref_vm = client->ref_vm;
+		/* The client should be released when refcnt = 0 */
+		kfree(client);
+		put_vm(ref_vm);
+	}
+}
+
+int acrn_ioreq_create_client(unsigned short vmid,
+			     ioreq_handler_t handler,
+			     void *client_priv,
+			     char *name)
+{
+	struct acrn_vm *vm;
+	struct ioreq_client *client;
+	int client_id;
+
+	might_sleep();
+
+	vm = find_get_vm(vmid);
+	if (unlikely(!vm || !vm->req_buf)) {
+		pr_err("acrn-ioreq: failed to find vm from vmid %d\n", vmid);
+		put_vm(vm);
+		return -EINVAL;
+	}
+
+	client_id = alloc_client();
+	if (unlikely(client_id < 0)) {
+		pr_err("acrn-ioreq: vm[%d] failed to alloc ioreq client\n",
+		       vmid);
+		put_vm(vm);
+		return -EINVAL;
+	}
+
+	client = acrn_ioreq_get_client(client_id);
+	if (unlikely(!client)) {
+		pr_err("failed to get the client.\n");
+		put_vm(vm);
+		return -EINVAL;
+	}
+
+	if (handler) {
+		client->handler = handler;
+		client->acrn_create_kthread = true;
+	}
+
+	client->ref_vm = vm;
+	client->vmid = vmid;
+	client->client_priv = client_priv;
+	if (name)
+		strncpy(client->name, name, sizeof(client->name) - 1);
+	rwlock_init(&client->range_lock);
+	INIT_LIST_HEAD(&client->range_list);
+	init_waitqueue_head(&client->wq);
+
+	/* When it is added to ioreq_client_list, the refcnt is increased */
+	spin_lock_bh(&vm->ioreq_client_lock);
+	list_add(&client->list, &vm->ioreq_client_list);
+	spin_unlock_bh(&vm->ioreq_client_lock);
+
+	pr_info("acrn-ioreq: created ioreq client %d\n", client_id);
+
+	return client_id;
+}
+
+void acrn_ioreq_clear_request(struct acrn_vm *vm)
+{
+	struct ioreq_client *client;
+	struct list_head *pos;
+	bool has_pending = false;
+	int retry_cnt = 10;
+	int bit;
+
+	/*
+	 * Now, ioreq clearing only happens when do VM reset. Current
+	 * implementation is waiting all ioreq clients except the DM
+	 * one have no pending ioreqs in 10ms per loop
+	 */
+
+	do {
+		spin_lock_bh(&vm->ioreq_client_lock);
+		list_for_each(pos, &vm->ioreq_client_list) {
+			client = container_of(pos, struct ioreq_client, list);
+			if (vm->ioreq_fallback_client == client->id)
+				continue;
+			has_pending = has_pending_request(client);
+			if (has_pending)
+				break;
+		}
+		spin_unlock_bh(&vm->ioreq_client_lock);
+
+		if (has_pending)
+			schedule_timeout_interruptible(HZ / 100);
+	} while (has_pending && --retry_cnt > 0);
+
+	if (retry_cnt == 0)
+		pr_warn("ioreq client[%d] cannot flush pending request!\n",
+			client->id);
+
+	/* Clear all ioreqs belong to DM. */
+	if (vm->ioreq_fallback_client > 0) {
+		client = acrn_ioreq_get_client(vm->ioreq_fallback_client);
+		if (!client)
+			return;
+
+		bit = find_next_bit(client->ioreqs_map, ACRN_REQUEST_MAX, 0);
+		while (bit < ACRN_REQUEST_MAX) {
+			acrn_ioreq_complete_request(client->id, bit, NULL);
+			bit = find_next_bit(client->ioreqs_map,
+					    ACRN_REQUEST_MAX,
+					    bit + 1);
+		}
+		acrn_ioreq_put_client(client);
+	}
+}
+
+int acrn_ioreq_create_fallback_client(unsigned short vmid, char *name)
+{
+	struct acrn_vm *vm;
+	int client_id;
+	struct ioreq_client *client;
+
+	vm = find_get_vm(vmid);
+	if (unlikely(!vm)) {
+		pr_err("acrn-ioreq: failed to find vm from vmid %d\n",
+		       vmid);
+		return -EINVAL;
+	}
+
+	if (unlikely(vm->ioreq_fallback_client > 0)) {
+		pr_err("acrn-ioreq: there is already fallback client exist for vm %d\n",
+		       vmid);
+		put_vm(vm);
+		return -EINVAL;
+	}
+
+	client_id = acrn_ioreq_create_client(vmid, NULL, NULL, name);
+	if (unlikely(client_id < 0)) {
+		put_vm(vm);
+		return -EINVAL;
+	}
+
+	client = acrn_ioreq_get_client(client_id);
+	if (unlikely(!client)) {
+		pr_err("failed to get the client.\n");
+		put_vm(vm);
+		return -EINVAL;
+	}
+
+	client->fallback = true;
+	vm->ioreq_fallback_client = client_id;
+
+	acrn_ioreq_put_client(client);
+	put_vm(vm);
+
+	return client_id;
+}
+
+/* When one client is removed from VM, the refcnt is decreased */
+static void acrn_ioreq_remove_client_pervm(struct ioreq_client *client,
+					   struct acrn_vm *vm)
+{
+	struct list_head *pos, *tmp;
+
+	set_bit(IOREQ_CLIENT_DESTROYING, &client->flags);
+
+	if (client->acrn_create_kthread) {
+		/* when the kthread is already started, the kthread_stop is
+		 * used to terminate the ioreq_client_thread
+		 */
+		if (client->thread &&
+		    !test_bit(IOREQ_CLIENT_EXIT, &client->flags))
+			kthread_stop(client->thread);
+
+		/* decrease the refcount as it is increased when creating
+		 * ioreq_client_thread kthread
+		 */
+		acrn_ioreq_put_client(client);
+	} else {
+		set_bit(IOREQ_CLIENT_DESTROYING, &client->flags);
+		acrn_ioreq_notify_client(client);
+	}
+
+	write_lock_bh(&client->range_lock);
+	list_for_each_safe(pos, tmp, &client->range_list) {
+		struct ioreq_range *range =
+			container_of(pos, struct ioreq_range, list);
+		list_del(&range->list);
+		kfree(range);
+	}
+	write_unlock_bh(&client->range_lock);
+
+	spin_lock_bh(&vm->ioreq_client_lock);
+	list_del(&client->list);
+	spin_unlock_bh(&vm->ioreq_client_lock);
+
+	if (client->id == vm->ioreq_fallback_client)
+		vm->ioreq_fallback_client = -1;
+
+	acrn_ioreq_put_client(client);
+}
+
+void acrn_ioreq_destroy_client(int client_id)
+{
+	struct ioreq_client *client;
+
+	if (client_id < 0 || client_id >= MAX_CLIENT) {
+		pr_err("acrn-ioreq: no client for id %d\n", client_id);
+		return;
+	}
+
+	write_lock_bh(&client_lock);
+	client = idr_remove(&idr_client, client_id);
+	write_unlock_bh(&client_lock);
+
+	/* When client_id is released, just keep silence and return */
+	if (!client)
+		return;
+
+	might_sleep();
+
+	acrn_ioreq_remove_client_pervm(client, client->ref_vm);
+	acrn_ioreq_put_client(client);
+}
+
+/*
+ * NOTE: here just add iorange entry directly, no check for the overlap..
+ * please client take care of it
+ */
+int acrn_ioreq_add_iorange(int client_id, uint32_t type,
+			   long start, long end)
+{
+	struct ioreq_client *client;
+	struct ioreq_range *range;
+
+	if (client_id < 0 || client_id >= MAX_CLIENT) {
+		pr_err("acrn-ioreq: no client for id %d\n", client_id);
+		return -EFAULT;
+	}
+	if (end < start) {
+		pr_err("acrn-ioreq: end < start\n");
+		return -EFAULT;
+	}
+
+	client = acrn_ioreq_get_client(client_id);
+	if (!client) {
+		pr_err("acrn-ioreq: no client for id %d\n", client_id);
+		return -EFAULT;
+	}
+
+	might_sleep();
+
+	range = kzalloc(sizeof(*range), GFP_KERNEL);
+	if (!range) {
+		acrn_ioreq_put_client(client);
+		return -ENOMEM;
+	}
+	range->type = type;
+	range->start = start;
+	range->end = end;
+
+	write_lock_bh(&client->range_lock);
+	list_add(&range->list, &client->range_list);
+	write_unlock_bh(&client->range_lock);
+	acrn_ioreq_put_client(client);
+
+	return 0;
+}
+
+int acrn_ioreq_del_iorange(int client_id, uint32_t type,
+			   long start, long end)
+{
+	struct ioreq_client *client;
+	struct ioreq_range *range;
+	struct list_head *pos, *tmp;
+
+	if (client_id < 0 || client_id >= MAX_CLIENT) {
+		pr_err("acrn-ioreq: no client for id %d\n", client_id);
+		return -EFAULT;
+	}
+	if (end < start) {
+		pr_err("acrn-ioreq: end < start\n");
+		return -EFAULT;
+	}
+
+	client = acrn_ioreq_get_client(client_id);
+	if (!client) {
+		pr_err("acrn-ioreq: no client for id %d\n", client_id);
+		return -EFAULT;
+	}
+
+	might_sleep();
+
+	read_lock_bh(&client->range_lock);
+	list_for_each_safe(pos, tmp, &client->range_list) {
+		range = container_of(pos, struct ioreq_range, list);
+		if ((range->type == type) &&
+		    (start == range->start) &&
+		    (end == range->end)) {
+			list_del(&range->list);
+			kfree(range);
+			break;
+		}
+	}
+	read_unlock_bh(&client->range_lock);
+	acrn_ioreq_put_client(client);
+
+	return 0;
+}
+
+static inline bool is_destroying(struct ioreq_client *client)
+{
+	if (client)
+		return test_bit(IOREQ_CLIENT_DESTROYING, &client->flags);
+	else
+		return true;
+}
+
+struct acrn_request *acrn_ioreq_get_reqbuf(int client_id)
+{
+	struct ioreq_client *client;
+	struct acrn_vm *vm;
+
+	if (client_id < 0 || client_id >= MAX_CLIENT) {
+		pr_err("acrn-ioreq: no client for id %d\n", client_id);
+		return NULL;
+	}
+	client = acrn_ioreq_get_client(client_id);
+	if (!client) {
+		pr_err("acrn-ioreq: no client for id %d\n", client_id);
+		return NULL;
+	}
+
+	vm = client->ref_vm;
+	if (unlikely(!vm || !vm->req_buf)) {
+		pr_err("acrn-ioreq: failed to find vm from vmid %d\n",
+		       client->vmid);
+		acrn_ioreq_put_client(client);
+		return NULL;
+	}
+
+	acrn_ioreq_put_client(client);
+	return (struct acrn_request *)vm->req_buf;
+}
+
+static int ioreq_client_thread(void *data)
+{
+	struct ioreq_client *client;
+	int ret;
+	struct acrn_vm *vm;
+
+	client = (struct ioreq_client *)data;
+
+	/* This should never happen */
+	if (unlikely(!client)) {
+		pr_err("acrn-ioreq: pass the NULL parameter\n");
+		return 0;
+	}
+
+	vm = client->ref_vm;
+	if (unlikely(!vm)) {
+		pr_err("acrn-ioreq: failed to find vm from vmid %d\n",
+		       client->vmid);
+		set_bit(IOREQ_CLIENT_EXIT, &client->flags);
+		return -EINVAL;
+	}
+
+	/* add refcnt for client */
+	refcount_inc(&client->refcnt);
+
+	while (!kthread_should_stop()) {
+		if (has_pending_request(client)) {
+			if (client->handler) {
+				ret = client->handler(client->id,
+					client->ioreqs_map,
+					client->client_priv);
+				if (ret < 0) {
+					pr_err("acrn-ioreq: err:%d\n", ret);
+					break;
+				}
+			} else {
+				pr_err("acrn-ioreq: no ioreq handler\n");
+				break;
+			}
+			continue;
+		}
+		wait_event_freezable(client->wq,
+				     (has_pending_request(client) ||
+				      kthread_should_stop()));
+	}
+
+	set_bit(IOREQ_CLIENT_EXIT, &client->flags);
+	acrn_ioreq_put_client(client);
+	return 0;
+}
+
+int acrn_ioreq_attach_client(int client_id)
+{
+	struct ioreq_client *client;
+
+	if (client_id < 0 || client_id >= MAX_CLIENT) {
+		pr_err("acrn-ioreq: no client for id %d\n", client_id);
+		return -EFAULT;
+	}
+	client = acrn_ioreq_get_client(client_id);
+	if (!client) {
+		pr_err("acrn-ioreq: no client for id %d\n", client_id);
+		return -EFAULT;
+	}
+
+	if (client->acrn_create_kthread) {
+		if (client->thread) {
+			pr_warn("acrn-ioreq: kthread already exist for client %s\n",
+				client->name);
+			acrn_ioreq_put_client(client);
+			return 0;
+		}
+		client->thread = kthread_run(ioreq_client_thread,
+					     client,
+					     "ict[%d]:%s",
+					     client->vmid, client->name);
+		if (IS_ERR_OR_NULL(client->thread)) {
+			pr_err("acrn-ioreq: failed to run kthread for client %s\n",
+			       client->name);
+			client->thread = NULL;
+			acrn_ioreq_put_client(client);
+			return -ENOMEM;
+		}
+	} else {
+		wait_event_freezable(client->wq,
+				     (has_pending_request(client) ||
+				      is_destroying(client)));
+
+		if (is_destroying(client)) {
+			acrn_ioreq_put_client(client);
+			return 1;
+		}
+		acrn_ioreq_put_client(client);
+	}
+
+	return 0;
+}
+
+static void acrn_ioreq_notify_client(struct ioreq_client *client)
+{
+	/* if client thread is in waitqueue, wake up it */
+	if (waitqueue_active(&client->wq))
+		wake_up_interruptible(&client->wq);
+}
+
+static int ioreq_complete_request(unsigned short vmid, int vcpu,
+				  struct acrn_request *acrn_req)
+{
+	bool polling_mode;
+
+	/* add barrier before reading the completion mode */
+	smp_rmb();
+	polling_mode = acrn_req->completion_polling;
+	atomic_set(&acrn_req->processed, REQ_STATE_COMPLETE);
+	/*
+	 * In polling mode, HV will poll ioreqs' completion.
+	 * Once marked the ioreq as REQ_STATE_COMPLETE, hypervisor side
+	 * can poll the result and continue the IO flow. Thus, we don't
+	 * need to notify hypervisor by hypercall.
+	 * Please note, we need get completion_polling before set the request
+	 * as complete, or we will race with hypervisor.
+	 */
+	if (!polling_mode) {
+		if (hcall_notify_req_finish(vmid, vcpu) < 0) {
+			pr_err("acrn-ioreq: notify request complete failed!\n");
+			return -EFAULT;
+		}
+	}
+
+	return 0;
+}
+
+static bool req_in_range(struct ioreq_range *range, struct acrn_request *req)
+{
+	bool ret = false;
+
+	if (range->type == req->type) {
+		switch (req->type) {
+		case REQ_MMIO:
+		case REQ_WP:
+		{
+			if (req->reqs.mmio_request.address >= range->start &&
+			    (req->reqs.mmio_request.address +
+			     req->reqs.mmio_request.size) <= range->end)
+				ret = true;
+			break;
+		}
+		case REQ_PORTIO: {
+			if (req->reqs.pio_request.address >= range->start &&
+			    (req->reqs.pio_request.address +
+			     req->reqs.pio_request.size) <= range->end)
+				ret = true;
+			break;
+		}
+
+		default:
+			ret = false;
+			break;
+		}
+	}
+
+	return ret;
+}
+
+static bool is_cfg_addr(struct acrn_request *req)
+{
+	return ((req->type == REQ_PORTIO) &&
+		(req->reqs.pio_request.address == 0xcf8));
+}
+
+static bool is_cfg_data(struct acrn_request *req)
+{
+	return (req->type == REQ_PORTIO &&
+		(req->reqs.pio_request.address >= 0xcfc &&
+		 req->reqs.pio_request.address < (0xcfc + 4)));
+}
+
+#define PCI_LOWREG_MASK  0xFC   /* the low 8-bit of supported pci_reg addr.*/
+#define PCI_HIGHREG_MASK 0xF00  /* the high 4-bit of supported pci_reg addr */
+#define PCI_FUNCMAX	7       /* highest supported function number */
+#define PCI_SLOTMAX	31      /* highest supported slot number */
+#define PCI_BUSMAX	255     /* highest supported bus number */
+#define CONF1_ENABLE	0x80000000ul
+static int handle_cf8cfc(struct acrn_vm *vm, struct acrn_request *req, int vcpu)
+{
+	int req_handled = 0;
+	int err = 0;
+
+	/*XXX: like DM, assume cfg address write is size 4 */
+	if (is_cfg_addr(req)) {
+		if (req->reqs.pio_request.direction == REQUEST_WRITE) {
+			if (req->reqs.pio_request.size == 4) {
+				vm->pci_conf_addr = req->reqs.pio_request.value;
+				req_handled = 1;
+			}
+		} else {
+			if (req->reqs.pio_request.size == 4) {
+				req->reqs.pio_request.value = vm->pci_conf_addr;
+				req_handled = 1;
+			}
+		}
+	} else if (is_cfg_data(req)) {
+		if (!(vm->pci_conf_addr & CONF1_ENABLE)) {
+			if (req->reqs.pio_request.direction == REQUEST_READ)
+				req->reqs.pio_request.value = 0xffffffff;
+			req_handled = 1;
+		} else {
+			/* pci request is same as io request at top */
+			int offset = req->reqs.pio_request.address - 0xcfc;
+			int pci_reg;
+			u32 pci_cfg_addr;
+
+			req->type = REQ_PCICFG;
+			pci_cfg_addr = vm->pci_conf_addr;
+			req->reqs.pci_request.bus = (pci_cfg_addr >> 16) &
+						     PCI_BUSMAX;
+			req->reqs.pci_request.dev = (pci_cfg_addr >> 11) &
+						     PCI_SLOTMAX;
+			req->reqs.pci_request.func = (pci_cfg_addr >> 8) &
+						      PCI_FUNCMAX;
+			pci_reg = (pci_cfg_addr & PCI_LOWREG_MASK) +
+				   ((pci_cfg_addr >> 16) & PCI_HIGHREG_MASK);
+			req->reqs.pci_request.reg = pci_reg + offset;
+		}
+	}
+
+	if (req_handled)
+		err = ioreq_complete_request(vm->vmid, vcpu, req);
+
+	return err ? err : req_handled;
+}
+
+static
+struct ioreq_client *find_ioreq_client_by_request(struct acrn_vm *vm,
+						  struct acrn_request *req)
+{
+	struct list_head *pos, *range_pos;
+	struct ioreq_client *client;
+	int target_client, fallback_client;
+	struct ioreq_range *range;
+	bool found = false;
+
+	target_client = 0;
+	fallback_client = 0;
+	spin_lock_bh(&vm->ioreq_client_lock);
+	list_for_each(pos, &vm->ioreq_client_list) {
+		client = container_of(pos, struct ioreq_client, list);
+
+		if (client->fallback) {
+			fallback_client = client->id;
+			continue;
+		}
+
+		read_lock_bh(&client->range_lock);
+		list_for_each(range_pos, &client->range_list) {
+			range =
+			container_of(range_pos, struct ioreq_range, list);
+			if (req_in_range(range, req)) {
+				found = true;
+				target_client = client->id;
+				break;
+			}
+		}
+		read_unlock_bh(&client->range_lock);
+
+		if (found)
+			break;
+	}
+	spin_unlock_bh(&vm->ioreq_client_lock);
+
+	if (target_client > 0)
+		return acrn_ioreq_get_client(target_client);
+
+	if (fallback_client > 0)
+		return acrn_ioreq_get_client(fallback_client);
+
+	return NULL;
+}
+
+int acrn_ioreq_distribute_request(struct acrn_vm *vm)
+{
+	struct acrn_request *req;
+	struct list_head *pos;
+	struct ioreq_client *client;
+	int i, vcpu_num;
+
+	vcpu_num = atomic_read(&vm->vcpu_num);
+	for (i = 0; i < vcpu_num; i++) {
+		req = vm->req_buf->req_queue + i;
+
+		/* This function is called in tasklet only on SOS. Thus it
+		 * is safe to read the state first and update it later as
+		 * long as the update is atomic.
+		 */
+		if (atomic_read(&req->processed) == REQ_STATE_PENDING) {
+			if (handle_cf8cfc(vm, req, i))
+				continue;
+			client = find_ioreq_client_by_request(vm, req);
+			if (!client) {
+				pr_err("acrn-ioreq: failed to find ioreq client\n");
+				return -EINVAL;
+			}
+			req->client = client->id;
+			atomic_set(&req->processed, REQ_STATE_PROCESSING);
+			set_bit(i, client->ioreqs_map);
+			acrn_ioreq_put_client(client);
+		}
+	}
+
+	spin_lock_bh(&vm->ioreq_client_lock);
+	list_for_each(pos, &vm->ioreq_client_list) {
+		client = container_of(pos, struct ioreq_client, list);
+		if (has_pending_request(client))
+			acrn_ioreq_notify_client(client);
+	}
+	spin_unlock_bh(&vm->ioreq_client_lock);
+
+	return 0;
+}
+
+int acrn_ioreq_complete_request(int client_id, uint64_t vcpu,
+				struct acrn_request *acrn_req)
+{
+	struct ioreq_client *client;
+	int ret;
+
+	if (client_id < 0 || client_id >= MAX_CLIENT) {
+		pr_err("acrn-ioreq: no client for id %d\n", client_id);
+		return -EINVAL;
+	}
+	client = acrn_ioreq_get_client(client_id);
+	if (!client) {
+		pr_err("acrn-ioreq: no client for id %d\n", client_id);
+		return -EINVAL;
+	}
+
+	clear_bit(vcpu, client->ioreqs_map);
+	if (!acrn_req) {
+		acrn_req = acrn_ioreq_get_reqbuf(client_id);
+		if (!acrn_req) {
+			acrn_ioreq_put_client(client);
+			return -EINVAL;
+		}
+		acrn_req += vcpu;
+	}
+
+	ret = ioreq_complete_request(client->vmid, vcpu, acrn_req);
+	acrn_ioreq_put_client(client);
+
+	return ret;
+}
+
+unsigned int acrn_dev_poll(struct file *filep, poll_table *wait)
+{
+	struct acrn_vm *vm = filep->private_data;
+	struct ioreq_client *fallback_client;
+	unsigned int ret = 0;
+
+	if (!vm || !vm->req_buf ||
+	    (vm->ioreq_fallback_client <= 0)) {
+		pr_err("acrn: invalid VM !\n");
+		ret = POLLERR;
+		return ret;
+	}
+
+	fallback_client = acrn_ioreq_get_client(vm->ioreq_fallback_client);
+	if (!fallback_client) {
+		pr_err("acrn-ioreq: no client for id %d\n",
+		       vm->ioreq_fallback_client);
+		return -EINVAL;
+	}
+
+	poll_wait(filep, &fallback_client->wq, wait);
+	if (has_pending_request(fallback_client) ||
+	    is_destroying(fallback_client))
+		ret = POLLIN | POLLRDNORM;
+
+	acrn_ioreq_put_client(fallback_client);
+
+	return ret;
+}
+
+int acrn_ioreq_init(struct acrn_vm *vm, unsigned long vma)
+{
+	struct acrn_set_ioreq_buffer *set_buffer;
+	struct page *page;
+	int ret;
+
+	if (vm->req_buf)
+		return -EEXIST;
+
+	set_buffer = kmalloc(sizeof(*set_buffer), GFP_KERNEL);
+	if (!set_buffer)
+		return -ENOMEM;
+
+	ret = get_user_pages_fast(vma, 1, 1, &page);
+	if (unlikely(ret != 1) || !page) {
+		pr_err("acrn-ioreq: failed to pin request buffer!\n");
+		kfree(set_buffer);
+		return -ENOMEM;
+	}
+
+	vm->req_buf = page_address(page);
+	vm->pg = page;
+
+	set_buffer->req_buf = page_to_phys(page);
+
+	ret = hcall_set_ioreq_buffer(vm->vmid, virt_to_phys(set_buffer));
+	kfree(set_buffer);
+	if (ret < 0) {
+		pr_err("acrn-ioreq: failed to set request buffer !\n");
+		return -EFAULT;
+	}
+
+	pr_debug("acrn-ioreq: init request buffer @ %p!\n",
+		 vm->req_buf);
+
+	return 0;
+}
+
+void acrn_ioreq_free(struct acrn_vm *vm)
+{
+	struct list_head *pos, *tmp;
+
+	/* When acrn_ioreq_destroy_client is called, it will be released
+	 * and removed from vm->ioreq_client_list.
+	 * The below is used to assure that the client is still released
+	 * even when it is not called.
+	 */
+	if (!test_and_set_bit(ACRN_VM_IOREQ_FREE, &vm->flags)) {
+		get_vm(vm);
+		list_for_each_safe(pos, tmp, &vm->ioreq_client_list) {
+			struct ioreq_client *client =
+				container_of(pos, struct ioreq_client, list);
+			acrn_ioreq_destroy_client(client->id);
+		}
+		put_vm(vm);
+	}
+}
+
+void acrn_ioreq_driver_init(void)
+{
+	idr_init(&idr_client);
+}
diff --git a/drivers/staging/acrn/acrn_vm_mngt.c b/drivers/staging/acrn/acrn_vm_mngt.c
index 4287595..8de380c 100644
--- a/drivers/staging/acrn/acrn_vm_mngt.c
+++ b/drivers/staging/acrn/acrn_vm_mngt.c
@@ -12,6 +12,7 @@
 #include <linux/slab.h>
 #include <linux/init.h>
 #include <linux/io.h>
+#include <linux/mm.h>
 #include <linux/rwlock_types.h>
 #include <linux/acrn/acrn_ioctl_defs.h>
 #include <linux/acrn/acrn_drv.h>
@@ -47,6 +48,12 @@ void put_vm(struct acrn_vm *vm)
 {
 	if (refcount_dec_and_test(&vm->refcnt)) {
 		free_guest_mem(vm);
+		if (vm->req_buf && vm->pg) {
+			put_page(vm->pg);
+			vm->pg = NULL;
+			vm->req_buf = NULL;
+		}
+
 		kfree(vm);
 		pr_debug("hsm: freed vm\n");
 	}
diff --git a/include/linux/acrn/acrn_drv.h b/include/linux/acrn/acrn_drv.h
index bcdfcaf..74a9e89 100644
--- a/include/linux/acrn/acrn_drv.h
+++ b/include/linux/acrn/acrn_drv.h
@@ -95,4 +95,106 @@ extern int acrn_write_protect_page(unsigned short vmid, unsigned long gpa,
 extern int acrn_inject_msi(unsigned short vmid, unsigned long msi_addr,
 			   unsigned long msi_data);
 
+
+/* the API related with emulated mmio ioreq */
+typedef	int (*ioreq_handler_t)(int client_id,
+			       unsigned long *ioreqs_map,
+			       void *client_priv);
+
+/**
+ * acrn_ioreq_create_client - create ioreq client
+ *
+ * @vmid: ID to identify guest
+ * @handler: ioreq_handler of ioreq client
+ *           If client wants to handle request in client thread context, set
+ *           this parameter to NULL. If client wants to handle request out of
+ *           client thread context, set handler function pointer of its own.
+ *           acrn_hsm will create kernel thread and call handler to handle
+ *           request(This is recommended).
+ *
+ * @client_priv: the private structure for the given client.
+ *           When handler is not NULL, this is required and used as the
+ *           third argument of ioreq_handler callback
+ *
+ * @name: the name of ioreq client
+ *
+ * Return: client id on success, <0 on error
+ */
+int acrn_ioreq_create_client(unsigned short vmid,
+			     ioreq_handler_t handler,
+			     void *client_priv,
+			     char *name);
+
+/**
+ * acrn_ioreq_destroy_client - destroy ioreq client
+ *
+ * @client_id: client id to identify ioreq client
+ *
+ * Return:
+ */
+void acrn_ioreq_destroy_client(int client_id);
+
+/**
+ * acrn_ioreq_add_iorange - add iorange monitored by ioreq client
+ *
+ * @client_id: client id to identify ioreq client
+ * @type: iorange type
+ * @start: iorange start address
+ * @end: iorange end address
+ *
+ * Return: 0 on success, <0 on error
+ */
+int acrn_ioreq_add_iorange(int client_id, uint32_t type,
+			   long start, long end);
+
+/**
+ * acrn_ioreq_del_iorange - del iorange monitored by ioreq client
+ *
+ * @client_id: client id to identify ioreq client
+ * @type: iorange type
+ * @start: iorange start address
+ * @end: iorange end address
+ *
+ * Return: 0 on success, <0 on error
+ */
+int acrn_ioreq_del_iorange(int client_id, uint32_t type,
+			   long start, long end);
+
+/**
+ * acrn_ioreq_get_reqbuf - get request buffer
+ * request buffer is shared by all clients in one guest
+ *
+ * @client_id: client id to identify ioreq client
+ *
+ * Return: pointer to request buffer, NULL on error
+ */
+struct acrn_request *acrn_ioreq_get_reqbuf(int client_id);
+
+/**
+ * acrn_ioreq_attach_client - start handle request for ioreq client
+ * If request is handled out of client thread context, this function is
+ * only called once to be ready to handle new request.
+ *
+ * If request is handled in client thread context, this function must
+ * be called every time after the previous request handling is completed
+ * to be ready to handle new request.
+ *
+ * @client_id: client id to identify ioreq client
+ *
+ * Return: 0 on success, <0 on error, 1 if ioreq client is destroying
+ */
+int acrn_ioreq_attach_client(int client_id);
+
+/**
+ * acrn_ioreq_complete_request - notify guest request handling is completed
+ *
+ * @client_id: client id to identify ioreq client
+ * @vcpu: identify request submitter
+ * @req: the acrn_request that is marked as completed
+ *
+ * Return: 0 on success, <0 on error
+ */
+int acrn_ioreq_complete_request(int client_id, uint64_t vcpu,
+				struct acrn_request *req);
+
 #endif
diff --git a/include/uapi/linux/acrn/acrn_common_def.h b/include/uapi/linux/acrn/acrn_common_def.h
index a0f90a3..e2ad9b5 100644
--- a/include/uapi/linux/acrn/acrn_common_def.h
+++ b/include/uapi/linux/acrn/acrn_common_def.h
@@ -22,4 +22,180 @@
 #define	MEM_TYPE_WP                     0x00000400
 #define MEM_TYPE_MASK                   0x000007C0
 
+/*
+ * IO request
+ */
+#define ACRN_REQUEST_MAX 16
+
+#define REQ_STATE_PENDING	0
+#define REQ_STATE_COMPLETE	1
+#define REQ_STATE_PROCESSING	2
+#define REQ_STATE_FREE		3
+
+#define REQ_PORTIO	0
+#define REQ_MMIO	1
+#define REQ_PCICFG	2
+#define REQ_WP		3
+
+#define REQUEST_READ	0
+#define REQUEST_WRITE	1
+
+/**
+ * @brief Hypercall
+ *
+ * @addtogroup acrn_hypercall ACRN Hypercall
+ * @{
+ */
+
+struct mmio_request {
+	uint32_t direction;
+	uint32_t reserved;
+	uint64_t address;
+	uint64_t size;
+	uint64_t value;
+};
+
+struct pio_request {
+	uint32_t direction;
+	uint32_t reserved;
+	uint64_t address;
+	uint64_t size;
+	uint32_t value;
+};
+
+struct pci_request {
+	uint32_t direction;
+	uint32_t reserved[3];/* need keep same header fields with pio_request */
+	int64_t size;
+	int32_t value;
+	int32_t bus;
+	int32_t dev;
+	int32_t func;
+	int32_t reg;
+};
+
+/**
+ * struct acrn_request - 256-byte ACRN request
+ *
+ * The state transitions of a ACRN request are:
+ *
+ *    FREE -> PENDING -> PROCESSING -> COMPLETE -> FREE -> ...
+ *                                \              /
+ *                                 +--> FAILED -+
+ *
+ * When a request is in COMPLETE or FREE state, the request is owned by the
+ * hypervisor. SOS (HSM or DM) shall not read or write the internals of the
+ * request except the state.
+ *
+ * When a request is in PENDING or PROCESSING state, the request is owned by
+ * SOS. The hypervisor shall not read or write the request other than the state.
+ *
+ * Based on the rules above, a typical ACRN request lifecycle should looks like
+ * the following.
+ *
+ *                     (assume the initial state is FREE)
+ *
+ *       SOS vCPU 0                SOS vCPU x                    UOS vCPU y
+ *
+ *                                                 hypervisor:
+ *                                                     fill in type, addr, etc.
+ *                                                     pause UOS vcpu y
+ *                                                     set state to PENDING (a)
+ *                                                     fire upcall to SOS vCPU 0
+ *
+ *  HSM:
+ *      scan for pending requests
+ *      set state to PROCESSING (b)
+ *      assign requests to clients (c)
+ *
+ *                            client:
+ *                                scan for assigned requests
+ *                                handle the requests (d)
+ *                                set state to COMPLETE
+ *                                notify the hypervisor
+ *
+ *                            hypervisor:
+ *                                resume UOS vcpu y (e)
+ *
+ *                                                 hypervisor:
+ *                                                     post-work (f)
+ *                                                     set state to FREE
+ *
+ * Note that the following shall hold.
+ *
+ *   1. (a) happens before (b)
+ *   2. (c) happens before (d)
+ *   3. (e) happens before (f)
+ *   4. One vCPU cannot trigger another I/O request before the previous one has
+ *      completed (i.e. the state switched to FREE)
+ *
+ * Accesses to the state of a acrn_request shall be atomic and proper barriers
+ * are needed to ensure that:
+ *
+ *   1. Setting state to PENDING is the last operation when issuing a request in
+ *      the hypervisor, as the hypervisor shall not access the request any more.
+ *
+ *   2. Due to similar reasons, setting state to COMPLETE is the last operation
+ *      of request handling in HSM or clients in SOS.
+ */
+struct acrn_request {
+	/**
+	 * @type: Type of this request. Byte offset: 0.
+	 */
+	uint32_t type;
+
+	/**
+	 * @completion_polling: Hypervisor will poll completion if set.
+	 *
+	 * Byte offset: 4.
+	 */
+	uint32_t completion_polling;
+
+
+	/**
+	 * @reserved0: Reserved fields. Byte offset: 4.
+	 */
+	uint32_t reserved0[14];
+
+	/**
+	 * @reqs: Details about this request.
+	 *
+	 * For REQ_PORTIO, this has type pio_request. For REQ_MMIO and REQ_WP,
+	 * this has type mmio_request. For REQ_PCICFG, this has type
+	 * pci_request. Byte offset: 64.
+	 */
+	union {
+		struct pio_request pio_request;
+		struct pci_request pci_request;
+		struct mmio_request mmio_request;
+		uint64_t reserved1[8];
+	} reqs;
+
+	/**
+	 * @reserved1: Reserved fields. Byte offset: 128.
+	 */
+	uint32_t reserved1;
+
+	/**
+	 * @client: The client which is distributed to handle this request.
+	 *
+	 * Accessed by ACRN_HSM only. Byte offset: 132.
+	 */
+	int32_t client;
+
+	/**
+	 * @processed: The status of this request.
+	 *
+	 * Take REQ_STATE_xxx as values. Byte offset: 136.
+	 */
+	atomic_t processed;
+} __aligned(256);
+
+struct acrn_request_buffer {
+	union {
+		struct acrn_request req_queue[ACRN_REQUEST_MAX];
+		uint8_t reserved[4096];
+	};
+};
+
 #endif /* _ACRN_COMMON_DEF_H */
diff --git a/include/uapi/linux/acrn/acrn_ioctl_defs.h b/include/uapi/linux/acrn/acrn_ioctl_defs.h
index 371904c..c3c4f98 100644
--- a/include/uapi/linux/acrn/acrn_ioctl_defs.h
+++ b/include/uapi/linux/acrn/acrn_ioctl_defs.h
@@ -223,6 +223,17 @@ struct acrn_msi_entry {
 	uint64_t msi_data;
 };
 
+/**
+ * struct ioreq_notify - data structure to notify hypervisor ioreq is handled
+ *
+ * @client_id: client id to identify ioreq client
+ * @vcpu: identify the ioreq submitter
+ */
+struct ioreq_notify {
+	int32_t client_id;
+	uint32_t vcpu;
+};
+
 /*
  * Common IOCTL ID definition for DM
  */
@@ -249,6 +260,15 @@ struct acrn_msi_entry {
 #define IC_VM_INTR_MONITOR             _IC_ID(IC_ID, IC_ID_IRQ_BASE + 0x04)
 #define IC_SET_IRQLINE                 _IC_ID(IC_ID, IC_ID_IRQ_BASE + 0x05)
 
+/* DM ioreq management */
+#define IC_ID_IOREQ_BASE                0x30UL
+#define IC_SET_IOREQ_BUFFER             _IC_ID(IC_ID, IC_ID_IOREQ_BASE + 0x00)
+#define IC_NOTIFY_REQUEST_FINISH        _IC_ID(IC_ID, IC_ID_IOREQ_BASE + 0x01)
+#define IC_CREATE_IOREQ_CLIENT          _IC_ID(IC_ID, IC_ID_IOREQ_BASE + 0x02)
+#define IC_ATTACH_IOREQ_CLIENT          _IC_ID(IC_ID, IC_ID_IOREQ_BASE + 0x03)
+#define IC_DESTROY_IOREQ_CLIENT         _IC_ID(IC_ID, IC_ID_IOREQ_BASE + 0x04)
+#define IC_CLEAR_VM_IOREQ               _IC_ID(IC_ID, IC_ID_IOREQ_BASE + 0x05)
+
 /* Guest memory management */
 #define IC_ID_MEM_BASE                  0x40UL
 #define IC_SET_MEMSEG                   _IC_ID(IC_ID, IC_ID_MEM_BASE + 0x01)
-- 
2.7.4


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

