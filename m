Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id EA1778F8EE
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 04:33:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8A304878B5;
	Fri, 16 Aug 2019 02:33:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5bgIRjyS6JSc; Fri, 16 Aug 2019 02:33:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0EE6B878BD;
	Fri, 16 Aug 2019 02:33:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 01B031BF2BD
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id EEEFD86191
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oRl-3JyxbDJI for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 02:33:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B07C7863DC
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 02:33:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 19:33:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="194894516"
Received: from genxtest-ykzhao.sh.intel.com ([10.239.143.71])
 by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2019 19:33:10 -0700
From: Zhao Yakui <yakui.zhao@intel.com>
To: x86@kernel.org, linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [RFC PATCH 08/15] drivers/acrn: add VM memory management for ACRN
 char device
Date: Fri, 16 Aug 2019 10:25:49 +0800
Message-Id: <1565922356-4488-9-git-send-email-yakui.zhao@intel.com>
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
Cc: Zhao Yakui <yakui.zhao@intel.com>, Li@osuosl.org, Fei <lei1.li@intel.com>,
 Jason Chen CJ <jason.cj.chen@intel.com>, Liu Shuo <shuo.a.liu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In order to launch the ACRN guest system, it needs to setup the mapping
between GPA (guest physical address) and HPA (host physical address).
This is based on memory virtualization and configured in EPT table.
The ioctl related with memory management is added and then the hypercall
is called so that the ACRN hypervisor can help to setup the memory
mapping for ACRN guest.
The 1G/2M huge page is used to optimize the EPT table for guest VM. This
will simplify the memory allocation and also optimizes the TLB.
For the MMIO mapping: It can support 4K/2M page.

IC_SET_MEMSEG: This is used to setup the memory mapping for the memory
of guest system by using hugetlb(Guest physical address and host virtual
addr).It is also used to setup the device MMIO mapping for PCI device.
IC_UNSET_MEMSEG: This is used to remove the device MMIO mapping for PCI
device. This is used with updating the MMIO mapping together. As the
acrn hypervisor is mainly used for embedded IOT device, it doesn't support
the dynamica removal of memory mapping.

Co-developed-by: Jason Chen CJ <jason.cj.chen@intel.com>
Signed-off-by: Jason Chen CJ <jason.cj.chen@intel.com>
Co-developed-by: Li, Fei <lei1.li@intel.com>
Signed-off-by: Li, Fei <lei1.li@intel.com>
Co-developed-by: Liu Shuo <shuo.a.liu@intel.com>
Signed-off-by: Liu Shuo <shuo.a.liu@intel.com>
Signed-off-by: Zhao Yakui <yakui.zhao@intel.com>
---
 drivers/staging/acrn/Makefile             |   4 +-
 drivers/staging/acrn/acrn_dev.c           |  27 +++
 drivers/staging/acrn/acrn_drv_internal.h  |  90 +++++++---
 drivers/staging/acrn/acrn_mm.c            | 227 ++++++++++++++++++++++++
 drivers/staging/acrn/acrn_mm_hugetlb.c    | 281 ++++++++++++++++++++++++++++++
 drivers/staging/acrn/acrn_vm_mngt.c       |   2 +
 include/linux/acrn/acrn_drv.h             |  86 +++++++++
 include/uapi/linux/acrn/acrn_common_def.h |  25 +++
 include/uapi/linux/acrn/acrn_ioctl_defs.h |  41 +++++
 9 files changed, 759 insertions(+), 24 deletions(-)
 create mode 100644 drivers/staging/acrn/acrn_mm.c
 create mode 100644 drivers/staging/acrn/acrn_mm_hugetlb.c
 create mode 100644 include/linux/acrn/acrn_drv.h
 create mode 100644 include/uapi/linux/acrn/acrn_common_def.h

diff --git a/drivers/staging/acrn/Makefile b/drivers/staging/acrn/Makefile
index 426d6e8..ec62afe 100644
--- a/drivers/staging/acrn/Makefile
+++ b/drivers/staging/acrn/Makefile
@@ -1,4 +1,6 @@
 obj-$(CONFIG_ACRN_HSM)	:= acrn.o
 acrn-y := acrn_dev.o \
 	  acrn_hypercall.o \
-	  acrn_vm_mngt.o
+	  acrn_vm_mngt.o \
+	  acrn_mm.o \
+	  acrn_mm_hugetlb.o
diff --git a/drivers/staging/acrn/acrn_dev.c b/drivers/staging/acrn/acrn_dev.c
index 7372316..cb62819 100644
--- a/drivers/staging/acrn/acrn_dev.c
+++ b/drivers/staging/acrn/acrn_dev.c
@@ -44,6 +44,7 @@ static
 int acrn_dev_open(struct inode *inodep, struct file *filep)
 {
 	struct acrn_vm *vm;
+	int i;
 
 	vm = kzalloc(sizeof(*vm), GFP_KERNEL);
 	if (!vm)
@@ -53,6 +54,10 @@ int acrn_dev_open(struct inode *inodep, struct file *filep)
 	vm->vmid = ACRN_INVALID_VMID;
 	vm->dev = acrn_device;
 
+	for (i = 0; i < HUGEPAGE_HLIST_ARRAY_SIZE; i++)
+		INIT_HLIST_HEAD(&vm->hugepage_hlist[i]);
+	mutex_init(&vm->hugepage_lock);
+
 	write_lock_bh(&acrn_vm_list_lock);
 	vm_list_add(&vm->list);
 	write_unlock_bh(&acrn_vm_list_lock);
@@ -212,6 +217,28 @@ long acrn_dev_ioctl(struct file *filep,
 		return ret;
 	}
 
+	case IC_SET_MEMSEG: {
+		struct vm_memmap memmap;
+
+		if (copy_from_user(&memmap, (void *)ioctl_param,
+				   sizeof(memmap)))
+			return -EFAULT;
+
+		ret = map_guest_memseg(vm, &memmap);
+		break;
+	}
+
+	case IC_UNSET_MEMSEG: {
+		struct vm_memmap memmap;
+
+		if (copy_from_user(&memmap, (void *)ioctl_param,
+				   sizeof(memmap)))
+			return -EFAULT;
+
+		ret = unmap_guest_memseg(vm, &memmap);
+		break;
+	}
+
 	default:
 		pr_warn("Unknown IOCTL 0x%x\n", ioctl_num);
 		ret = -EFAULT;
diff --git a/drivers/staging/acrn/acrn_drv_internal.h b/drivers/staging/acrn/acrn_drv_internal.h
index 6758dea..5098765 100644
--- a/drivers/staging/acrn/acrn_drv_internal.h
+++ b/drivers/staging/acrn/acrn_drv_internal.h
@@ -11,6 +11,57 @@
 #include <linux/list.h>
 #include <linux/refcount.h>
 
+struct vm_memory_region {
+#define MR_ADD		0
+#define MR_DEL		2
+	u32 type;
+
+	/* IN: mem attr */
+	u32 prot;
+
+	/* IN: beginning guest GPA to map */
+	u64 gpa;
+
+	/* IN: VM0's GPA which foreign gpa will be mapped to */
+	u64 vm0_gpa;
+
+	/* IN: size of the region */
+	u64 size;
+};
+
+struct set_regions {
+	/*IN: vmid for this hypercall */
+	u16 vmid;
+
+	/** Reserved */
+	u16 reserved[3];
+
+	/* IN: multi memmaps numbers */
+	u32 mr_num;
+
+	/** Reserved */
+	u32 reserved1;
+	/* IN:
+	 * the gpa of memmaps buffer, point to the memmaps array:
+	 * struct memory_map memmap_array[memmaps_num]
+	 * the max buffer size is one page.
+	 */
+	u64 regions_gpa;
+};
+
+struct wp_data {
+	/** set page write protect permission.
+	 *  true: set the wp; flase: clear the wp
+	 */
+	u8 set;
+
+	/** Reserved */
+	u8 reserved[7];
+
+	/** the guest physical address of the page to change */
+	u64 gpa;
+};
+
 #define ACRN_INVALID_VMID (-1)
 
 enum ACRN_VM_FLAGS {
@@ -22,6 +73,10 @@ extern rwlock_t acrn_vm_list_lock;
 
 void vm_list_add(struct list_head *list);
 
+#define HUGEPAGE_2M_HLIST_ARRAY_SIZE	32
+#define HUGEPAGE_1G_HLIST_ARRAY_SIZE	1
+#define HUGEPAGE_HLIST_ARRAY_SIZE	(HUGEPAGE_2M_HLIST_ARRAY_SIZE + \
+					 HUGEPAGE_1G_HLIST_ARRAY_SIZE)
 /**
  * struct acrn_vm - data structure to track guest
  *
@@ -32,6 +87,7 @@ void vm_list_add(struct list_head *list);
  * @max_gfn: maximum guest page frame number
  * @vcpu_num: vcpu number
  * @flags: VM flag bits
+ * @hugepage_hlist: hash list of hugepage
  */
 struct acrn_vm {
 	struct device *dev;
@@ -41,34 +97,22 @@ struct acrn_vm {
 	int max_gfn;
 	atomic_t vcpu_num;
 	unsigned long flags;
+	/* mutex to protect hugepage_hlist */
+	struct mutex hugepage_lock;
+	struct hlist_head hugepage_hlist[HUGEPAGE_HLIST_ARRAY_SIZE];
 };
 
 int acrn_vm_destroy(struct acrn_vm *vm);
 
-/**
- * find_get_vm() - find and keep guest acrn_vm based on the vmid
- *
- * @vmid: guest vmid
- *
- * Return: pointer to acrn_vm, NULL if can't find vm matching vmid
- */
 struct acrn_vm *find_get_vm(unsigned short vmid);
-
-/**
- * get_vm() - increase the refcnt of acrn_vm
- * @vm: pointer to acrn_vm which identify specific guest
- *
- * Return:
- */
 void get_vm(struct acrn_vm *vm);
-
-/**
- * put_vm() - release acrn_vm of guest according to guest vmid
- * If the latest reference count drops to zero, free acrn_vm as well
- * @vm: pointer to acrn_vm which identify specific guest
- *
- * Return:
- */
 void put_vm(struct acrn_vm *vm);
-
+void free_guest_mem(struct acrn_vm *vm);
+int map_guest_memseg(struct acrn_vm *vm, struct vm_memmap *memmap);
+int unmap_guest_memseg(struct acrn_vm *vm, struct vm_memmap *memmap);
+int hugepage_map_guest(struct acrn_vm *vm, struct vm_memmap *memmap);
+void hugepage_free_guest(struct acrn_vm *vm);
+void *hugepage_map_guest_phys(struct acrn_vm *vm, u64 guest_phys, size_t size);
+int hugepage_unmap_guest_phys(struct acrn_vm *vm, u64 guest_phys);
+int set_memory_regions(struct set_regions *regions);
 #endif
diff --git a/drivers/staging/acrn/acrn_mm.c b/drivers/staging/acrn/acrn_mm.c
new file mode 100644
index 0000000..4a7af7e
--- /dev/null
+++ b/drivers/staging/acrn/acrn_mm.c
@@ -0,0 +1,227 @@
+// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
+/*
+ * ACRN: memory map management for each VM
+ *
+ * Copyright (C) 2019 Intel Corporation. All rights reserved.
+ *
+ * Jason Chen CJ <jason.cj.chen@intel.com>
+ * Zhao Yakui <yakui.zhao@intel.com>
+ * Li Fei <lei1.li@intel.com>
+ * Liu Shuo <shuo.a.liu@intel.com>
+ *
+ */
+
+#include <linux/init.h>
+#include <linux/module.h>
+#include <linux/device.h>
+#include <linux/kernel.h>
+#include <linux/gfp.h>
+#include <linux/mm.h>
+#include <linux/fs.h>
+#include <linux/slab.h>
+#include <linux/list.h>
+#include <linux/uaccess.h>
+#include <linux/io.h>
+
+#include <linux/acrn/acrn_ioctl_defs.h>
+#include <linux/acrn/acrn_drv.h>
+
+#include "acrn_drv_internal.h"
+#include "acrn_hypercall.h"
+
+static int set_memory_region(unsigned short vmid,
+			     struct vm_memory_region *region)
+{
+	struct set_regions *regions;
+	int ret;
+
+	regions = kzalloc(sizeof(*regions), GFP_KERNEL);
+	if (!regions)
+		return -ENOMEM;
+
+	regions->vmid = vmid;
+	regions->mr_num = 1;
+	regions->regions_gpa = virt_to_phys(region);
+
+	ret = set_memory_regions(regions);
+	kfree(regions);
+	if (ret < 0) {
+		pr_err("acrn: failed to set memory region for vm[%d]!\n",
+		       vmid);
+		return -EFAULT;
+	}
+
+	return 0;
+}
+
+int acrn_add_memory_region(unsigned short vmid, unsigned long gpa,
+			   unsigned long host_gpa, unsigned long size,
+			   unsigned int mem_type, unsigned int mem_access_right)
+{
+	struct vm_memory_region *region;
+	int ret = 0;
+
+	region = kzalloc(sizeof(*region), GFP_KERNEL);
+	if (!region)
+		return -ENOMEM;
+
+	region->type = MR_ADD;
+	region->gpa = gpa;
+	region->vm0_gpa = host_gpa;
+	region->size = size;
+	region->prot = ((mem_type & MEM_TYPE_MASK) |
+			(mem_access_right & MEM_ACCESS_RIGHT_MASK));
+	ret = set_memory_region(vmid, region);
+	kfree(region);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(acrn_add_memory_region);
+
+int acrn_del_memory_region(unsigned short vmid, unsigned long gpa,
+			   unsigned long size)
+{
+	struct vm_memory_region *region;
+	int ret = 0;
+
+	region = kzalloc(sizeof(*region), GFP_KERNEL);
+	if (!region)
+		return -ENOMEM;
+
+	region->type = MR_DEL;
+	region->gpa = gpa;
+	region->vm0_gpa = 0;
+	region->size = size;
+	region->prot = 0;
+
+	ret = set_memory_region(vmid, region);
+	kfree(region);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(acrn_del_memory_region);
+
+int set_memory_regions(struct set_regions *regions)
+{
+	if (!regions)
+		return -EINVAL;
+
+	if (regions->mr_num > 0) {
+		if (hcall_set_memory_regions(virt_to_phys(regions)) < 0) {
+			pr_err("acrn: failed to set memory regions!\n");
+			return -EFAULT;
+		}
+	}
+
+	return 0;
+}
+
+/*
+ * when set is true, set page write protection,
+ * else clear page write protection.
+ */
+int acrn_write_protect_page(unsigned short vmid,
+			    unsigned long gpa, unsigned char set)
+{
+	struct wp_data *wp;
+	int ret = 0;
+
+	wp = kzalloc(sizeof(*wp), GFP_KERNEL);
+	if (!wp)
+		return -ENOMEM;
+
+	wp->set = set;
+	wp->gpa = gpa;
+	ret = hcall_write_protect_page(vmid, virt_to_phys(wp));
+	kfree(wp);
+
+	if (ret < 0) {
+		pr_err("acrn: vm[%d] %s failed !\n", vmid, __func__);
+		return -EFAULT;
+	}
+
+	pr_debug("VHM: %s, gpa: 0x%lx, set: %d\n", __func__, gpa, set);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(acrn_write_protect_page);
+
+int map_guest_memseg(struct acrn_vm *vm, struct vm_memmap *memmap)
+{
+	/* hugetlb use vma to do the mapping */
+	if (memmap->type == VM_MEMMAP_SYSMEM && memmap->using_vma)
+		return hugepage_map_guest(vm, memmap);
+
+	/* mmio */
+	if (memmap->type != VM_MEMMAP_MMIO) {
+		pr_err("acrn: %s invalid memmap type: %d\n",
+		       __func__, memmap->type);
+		return -EINVAL;
+	}
+
+	if (acrn_add_memory_region(vm->vmid, memmap->gpa,
+				   memmap->hpa, memmap->len,
+				   MEM_TYPE_UC, memmap->prot) < 0){
+		pr_err("acrn: failed to set memory region %d!\n", vm->vmid);
+		return -EFAULT;
+	}
+
+	return 0;
+}
+
+int unmap_guest_memseg(struct acrn_vm *vm, struct vm_memmap *memmap)
+{
+	/* only handle mmio */
+	if (memmap->type != VM_MEMMAP_MMIO) {
+		pr_err("hsm: %s invalid memmap type: %d for unmap\n",
+		       __func__, memmap->type);
+		return -EINVAL;
+	}
+
+	if (acrn_del_memory_region(vm->vmid, memmap->gpa, memmap->len) < 0) {
+		pr_err("hsm: failed to del memory region %d!\n", vm->vmid);
+		return -EFAULT;
+	}
+
+	return 0;
+}
+
+void free_guest_mem(struct acrn_vm *vm)
+{
+	return hugepage_free_guest(vm);
+}
+
+void *acrn_map_guest_phys(unsigned short vmid, u64 guest_phys, size_t size)
+{
+	struct acrn_vm *vm;
+	void *ret;
+
+	vm = find_get_vm(vmid);
+	if (!vm)
+		return NULL;
+
+	ret = hugepage_map_guest_phys(vm, guest_phys, size);
+
+	put_vm(vm);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(acrn_map_guest_phys);
+
+int acrn_unmap_guest_phys(unsigned short vmid, u64 guest_phys)
+{
+	struct acrn_vm *vm;
+	int ret;
+
+	vm = find_get_vm(vmid);
+	if (!vm) {
+		pr_warn("vm_list corrupted\n");
+		return -ESRCH;
+	}
+
+	ret = hugepage_unmap_guest_phys(vm, guest_phys);
+
+	put_vm(vm);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(acrn_unmap_guest_phys);
diff --git a/drivers/staging/acrn/acrn_mm_hugetlb.c b/drivers/staging/acrn/acrn_mm_hugetlb.c
new file mode 100644
index 0000000..69c5e02
--- /dev/null
+++ b/drivers/staging/acrn/acrn_mm_hugetlb.c
@@ -0,0 +1,281 @@
+// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
+/*
+ * ACRN: VM memory map based on hugetlb.
+ *
+ * Copyright (C) 2019 Intel Corporation. All rights reserved.
+ *
+ * Jason Chen CJ <jason.cj.chen@intel.com>
+ * Zhao Yakui <yakui.zhao@intel.com>
+ * Li Fei <lei1.li@intel.com>
+ * Liu Shuo <shuo.a.liu@intel.com>
+ *
+ */
+
+#include <linux/kernel.h>
+#include <linux/gfp.h>
+#include <linux/mm.h>
+#include <linux/list.h>
+#include <linux/slab.h>
+
+#include <linux/acrn/acrn_ioctl_defs.h>
+#include <linux/acrn/acrn_drv.h>
+#include "acrn_drv_internal.h"
+#include "acrn_hypercall.h"
+
+#define HUGEPAGE_2M_SHIFT	21
+#define HUGEPAGE_1G_SHIFT	30
+
+#define HUGEPAGE_1G_HLIST_IDX	(HUGEPAGE_HLIST_ARRAY_SIZE - 1)
+
+struct hugepage_map {
+	struct hlist_node hlist;
+	u64 vm0_gpa;
+	size_t size;
+	u64 guest_gpa;
+	atomic_t refcount;
+};
+
+static inline
+struct hlist_head *hlist_2m_hash(struct acrn_vm *vm,
+				 unsigned long guest_gpa)
+{
+	return &vm->hugepage_hlist[guest_gpa >> HUGEPAGE_2M_SHIFT &
+			(HUGEPAGE_2M_HLIST_ARRAY_SIZE - 1)];
+}
+
+static int add_guest_map(struct acrn_vm *vm, unsigned long vm0_gpa,
+			 unsigned long guest_gpa, unsigned long size)
+{
+	struct hugepage_map *map;
+	int max_gfn;
+
+	map = kzalloc(sizeof(*map), GFP_KERNEL);
+	if (!map)
+		return -ENOMEM;
+
+	map->vm0_gpa = vm0_gpa;
+	map->guest_gpa = guest_gpa;
+	map->size = size;
+	atomic_set(&map->refcount, 1);
+
+	INIT_HLIST_NODE(&map->hlist);
+
+	max_gfn = (map->guest_gpa + map->size) >> PAGE_SHIFT;
+	if (vm->max_gfn < max_gfn)
+		vm->max_gfn = max_gfn;
+
+	pr_debug("HSM: add hugepage with size=0x%lx,vm0_hpa=0x%llx and its guest gpa = 0x%llx\n",
+		 map->size, map->vm0_gpa, map->guest_gpa);
+
+	mutex_lock(&vm->hugepage_lock);
+	/* 1G hugepage? */
+	if (map->size == (1UL << HUGEPAGE_1G_SHIFT))
+		hlist_add_head(&map->hlist,
+			       &vm->hugepage_hlist[HUGEPAGE_1G_HLIST_IDX]);
+	else
+		hlist_add_head(&map->hlist,
+			       hlist_2m_hash(vm, map->guest_gpa));
+	mutex_unlock(&vm->hugepage_lock);
+
+	return 0;
+}
+
+int hugepage_map_guest(struct acrn_vm *vm, struct vm_memmap *memmap)
+{
+	struct page *page = NULL, *regions_buf_pg = NULL;
+	unsigned long len, guest_gpa, vma;
+	struct vm_memory_region *region_array;
+	struct set_regions *regions;
+	int max_size = PAGE_SIZE / sizeof(struct vm_memory_region);
+	int ret;
+
+	if (!vm || !memmap)
+		return -EINVAL;
+
+	len = memmap->len;
+	vma = memmap->vma_base;
+	guest_gpa = memmap->gpa;
+
+	/* prepare set_memory_regions info */
+	regions_buf_pg = alloc_page(GFP_KERNEL);
+	if (!regions_buf_pg)
+		return -ENOMEM;
+
+	regions = kzalloc(sizeof(*regions), GFP_KERNEL);
+	if (!regions) {
+		__free_page(regions_buf_pg);
+		return -ENOMEM;
+	}
+	regions->mr_num = 0;
+	regions->vmid = vm->vmid;
+	regions->regions_gpa = page_to_phys(regions_buf_pg);
+	region_array = page_to_virt(regions_buf_pg);
+
+	while (len > 0) {
+		unsigned long vm0_gpa, pagesize;
+
+		ret = get_user_pages_fast(vma, 1, 1, &page);
+		if (unlikely(ret != 1) || (!page)) {
+			pr_err("failed to pin huge page!\n");
+			ret = -ENOMEM;
+			goto err;
+		}
+
+		vm0_gpa = page_to_phys(page);
+		pagesize = PAGE_SIZE << compound_order(page);
+
+		ret = add_guest_map(vm, vm0_gpa, guest_gpa, pagesize);
+		if (ret < 0) {
+			pr_err("failed to add memseg for huge page!\n");
+			goto err;
+		}
+
+		/* fill each memory region into region_array */
+		region_array[regions->mr_num].type = MR_ADD;
+		region_array[regions->mr_num].gpa = guest_gpa;
+		region_array[regions->mr_num].vm0_gpa = vm0_gpa;
+		region_array[regions->mr_num].size = pagesize;
+		region_array[regions->mr_num].prot =
+				(MEM_TYPE_WB & MEM_TYPE_MASK) |
+				(memmap->prot & MEM_ACCESS_RIGHT_MASK);
+		regions->mr_num++;
+		if (regions->mr_num == max_size) {
+			pr_debug("region buffer full, set & renew regions!\n");
+			ret = set_memory_regions(regions);
+			if (ret < 0) {
+				pr_err("failed to set regions,ret=%d!\n", ret);
+				goto err;
+			}
+			regions->mr_num = 0;
+		}
+
+		len -= pagesize;
+		vma += pagesize;
+		guest_gpa += pagesize;
+	}
+
+	ret = set_memory_regions(regions);
+	if (ret < 0) {
+		pr_err("failed to set regions, ret=%d!\n", ret);
+		goto err;
+	}
+
+	__free_page(regions_buf_pg);
+	kfree(regions);
+
+	return 0;
+err:
+	if (regions_buf_pg)
+		__free_page(regions_buf_pg);
+	if (page)
+		put_page(page);
+	kfree(regions);
+	return ret;
+}
+
+void hugepage_free_guest(struct acrn_vm *vm)
+{
+	struct hlist_node *htmp;
+	struct hugepage_map *map;
+	int i;
+
+	mutex_lock(&vm->hugepage_lock);
+	for (i = 0; i < HUGEPAGE_HLIST_ARRAY_SIZE; i++) {
+		if (!hlist_empty(&vm->hugepage_hlist[i])) {
+			hlist_for_each_entry_safe(map, htmp,
+						  &vm->hugepage_hlist[i],
+						  hlist) {
+				hlist_del(&map->hlist);
+				/* put_page to unpin huge page */
+				put_page(pfn_to_page(PHYS_PFN(map->vm0_gpa)));
+				if (!atomic_dec_and_test(&map->refcount)) {
+					pr_warn("failed to unmap for gpa %llx in vm %d\n",
+						map->guest_gpa, vm->vmid);
+				}
+				kfree(map);
+			}
+		}
+	}
+	mutex_unlock(&vm->hugepage_lock);
+}
+
+void *hugepage_map_guest_phys(struct acrn_vm *vm, u64 guest_phys, size_t size)
+{
+	struct hlist_node *htmp;
+	struct hugepage_map *map;
+	struct hlist_head *hpage_head;
+
+	mutex_lock(&vm->hugepage_lock);
+	/* check 1G hlist first */
+	if (!hlist_empty(&vm->hugepage_hlist[HUGEPAGE_1G_HLIST_IDX])) {
+		hpage_head = &vm->hugepage_hlist[HUGEPAGE_1G_HLIST_IDX];
+		hlist_for_each_entry_safe(map, htmp, hpage_head, hlist) {
+			if (guest_phys < map->guest_gpa ||
+			    guest_phys >= (map->guest_gpa + map->size))
+				continue;
+
+			if (guest_phys + size > map->guest_gpa + map->size)
+				goto err;
+
+			atomic_inc(&map->refcount);
+			mutex_unlock(&vm->hugepage_lock);
+			return phys_to_virt(map->vm0_gpa +
+					    guest_phys - map->guest_gpa);
+		}
+	}
+
+	/* check 2m hlist */
+	hlist_for_each_entry_safe(map, htmp,
+				  hlist_2m_hash(vm, guest_phys), hlist) {
+		if (guest_phys < map->guest_gpa ||
+		    guest_phys >= (map->guest_gpa + map->size))
+			continue;
+
+		if (guest_phys + size > map->guest_gpa + map->size)
+			goto err;
+
+		atomic_inc(&map->refcount);
+		mutex_unlock(&vm->hugepage_lock);
+		return phys_to_virt(map->vm0_gpa +
+				    guest_phys - map->guest_gpa);
+	}
+
+err:
+	mutex_unlock(&vm->hugepage_lock);
+	pr_warn("incorrect mem map, input %llx,size %lx\n",
+		guest_phys, size);
+	return NULL;
+}
+
+int hugepage_unmap_guest_phys(struct acrn_vm *vm, u64 guest_phys)
+{
+	struct hlist_node *htmp;
+	struct hugepage_map *map;
+	struct hlist_head *hpage_head;
+
+	mutex_lock(&vm->hugepage_lock);
+	/* check 1G hlist first */
+	if (!hlist_empty(&vm->hugepage_hlist[HUGEPAGE_1G_HLIST_IDX])) {
+		hpage_head = &vm->hugepage_hlist[HUGEPAGE_1G_HLIST_IDX];
+		hlist_for_each_entry_safe(map, htmp, hpage_head, hlist) {
+			if (guest_phys >= map->guest_gpa &&
+			    guest_phys < (map->guest_gpa + map->size)) {
+				atomic_dec(&map->refcount);
+				mutex_unlock(&vm->hugepage_lock);
+				return 0;
+			}
+		}
+	}
+	/* check 2m hlist */
+	hlist_for_each_entry_safe(map, htmp,
+				  hlist_2m_hash(vm, guest_phys), hlist) {
+		if (guest_phys >= map->guest_gpa &&
+		    guest_phys < (map->guest_gpa + map->size)) {
+			atomic_dec(&map->refcount);
+			mutex_unlock(&vm->hugepage_lock);
+			return 0;
+		}
+	}
+	mutex_unlock(&vm->hugepage_lock);
+	return -ESRCH;
+}
diff --git a/drivers/staging/acrn/acrn_vm_mngt.c b/drivers/staging/acrn/acrn_vm_mngt.c
index 04c551d..9c6dd6d 100644
--- a/drivers/staging/acrn/acrn_vm_mngt.c
+++ b/drivers/staging/acrn/acrn_vm_mngt.c
@@ -12,6 +12,7 @@
 #include <linux/slab.h>
 #include <linux/init.h>
 #include <linux/rwlock_types.h>
+#include <linux/acrn/acrn_ioctl_defs.h>
 
 #include "acrn_hypercall.h"
 #include "acrn_drv_internal.h"
@@ -43,6 +44,7 @@ void get_vm(struct acrn_vm *vm)
 void put_vm(struct acrn_vm *vm)
 {
 	if (refcount_dec_and_test(&vm->refcnt)) {
+		free_guest_mem(vm);
 		kfree(vm);
 		pr_debug("hsm: freed vm\n");
 	}
diff --git a/include/linux/acrn/acrn_drv.h b/include/linux/acrn/acrn_drv.h
new file mode 100644
index 0000000..62b03f0
--- /dev/null
+++ b/include/linux/acrn/acrn_drv.h
@@ -0,0 +1,86 @@
+/* SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause */
+/**
+ * @file acrn_drv.h
+ *
+ * ACRN HSM exported API for other modules.
+ */
+
+#ifndef _ACRN_DRV_H
+#define _ACRN_DRV_H
+
+#include <linux/acrn/acrn_common_def.h>
+
+/**
+ * acrn_map_guest_phys - map guest physical address to SOS kernel
+ *			 virtual address
+ *
+ * @vmid: guest vmid
+ * @uos_phys: physical address in guest
+ * @size: the memory size mapped
+ *
+ * Return: SOS kernel virtual address, NULL on error
+ */
+extern void *acrn_map_guest_phys(unsigned short vmid, u64 uos_phys,
+				 size_t size);
+
+/**
+ * acrn_unmap_guest_phys - unmap guest physical address
+ *
+ * @vmid: guest vmid
+ * @uos_phys: physical address in guest
+ *
+ * Return: 0 on success, <0 for error.
+ */
+extern int acrn_unmap_guest_phys(unsigned short vmid, u64 uos_phys);
+
+/**
+ * acrn_add_memory_region - add a guest memory region
+ *
+ * @vmid: guest vmid
+ * @gpa: gpa of UOS
+ * @host_gpa: gpa of SOS
+ * @size: memory region size
+ * @mem_type: memory mapping type. Possible value could be:
+ *                    MEM_TYPE_WB
+ *                    MEM_TYPE_WT
+ *                    MEM_TYPE_UC
+ *                    MEM_TYPE_WC
+ *                    MEM_TYPE_WP
+ * @mem_access_right: memory mapping access. Possible value could be:
+ *                    MEM_ACCESS_READ
+ *                    MEM_ACCESS_WRITE
+ *                    MEM_ACCESS_EXEC
+ *                    MEM_ACCESS_RWX
+ *
+ * Return: 0 on success, <0 for error.
+ */
+extern int acrn_add_memory_region(unsigned short vmid, unsigned long gpa,
+				  unsigned long host_gpa, unsigned long size,
+				  unsigned int mem_type,
+				  unsigned int mem_access_right);
+
+/**
+ * acrn_del_memory_region - delete a guest memory region
+ *
+ * @vmid: guest vmid
+ * @gpa: gpa of UOS
+ * @size: memory region size
+ *
+ * Return: 0 on success, <0 for error.
+ */
+extern int acrn_del_memory_region(unsigned short vmid, unsigned long gpa,
+			   unsigned long size);
+
+/**
+ * write_protect_page - change one page write protection
+ *
+ * @vmid: guest vmid
+ * @gpa: gpa in guest vmid
+ * @set: set or clear page write protection
+ *
+ * Return: 0 on success, <0 for error.
+ */
+extern int acrn_write_protect_page(unsigned short vmid, unsigned long gpa,
+				   unsigned char set);
+
+#endif
diff --git a/include/uapi/linux/acrn/acrn_common_def.h b/include/uapi/linux/acrn/acrn_common_def.h
new file mode 100644
index 0000000..a0f90a3
--- /dev/null
+++ b/include/uapi/linux/acrn/acrn_common_def.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause */
+/**
+ * @file acrn_common_def.h
+ *
+ * Common structure/definitions for acrn_ioctl/acrn_drv
+ */
+
+#ifndef _ACRN_COMMON_DEF_H
+#define _ACRN_COMMON_DEF_H
+
+/* Generic memory attributes */
+#define	MEM_ACCESS_READ                 0x00000001
+#define	MEM_ACCESS_WRITE                0x00000002
+#define	MEM_ACCESS_EXEC	                0x00000004
+#define	MEM_ACCESS_RWX			(MEM_ACCESS_READ | MEM_ACCESS_WRITE | \
+						MEM_ACCESS_EXEC)
+#define MEM_ACCESS_RIGHT_MASK           0x00000007
+#define	MEM_TYPE_WB                     0x00000040
+#define	MEM_TYPE_WT                     0x00000080
+#define	MEM_TYPE_UC                     0x00000100
+#define	MEM_TYPE_WC                     0x00000200
+#define	MEM_TYPE_WP                     0x00000400
+#define MEM_TYPE_MASK                   0x000007C0
+
+#endif /* _ACRN_COMMON_DEF_H */
diff --git a/include/uapi/linux/acrn/acrn_ioctl_defs.h b/include/uapi/linux/acrn/acrn_ioctl_defs.h
index ebcf812..76e358f 100644
--- a/include/uapi/linux/acrn/acrn_ioctl_defs.h
+++ b/include/uapi/linux/acrn/acrn_ioctl_defs.h
@@ -8,6 +8,8 @@
 #ifndef __ACRN_IOCTL_DEFS_H__
 #define __ACRN_IOCTL_DEFS_H__
 
+#include "acrn_common_def.h"
+
 /**
  * struct api_version - data structure to track ACRN_SRV API version
  *
@@ -135,6 +137,39 @@ struct acrn_set_vcpu_regs {
 	struct acrn_vcpu_regs vcpu_regs;
 };
 
+#define VM_MEMMAP_SYSMEM       0
+#define VM_MEMMAP_MMIO         1
+
+/**
+ * struct vm_memmap - EPT memory mapping info for guest
+ */
+struct vm_memmap {
+	/** @type: memory mapping type */
+	uint32_t type;
+	/** @using_vma: using vma_base to get vm0_gpa,
+	 * only for type == VM_SYSTEM
+	 */
+	uint32_t using_vma;
+	/** @gpa: user OS guest physical start address of memory mapping */
+	uint64_t gpa;
+	/** union */
+	union {
+		/** @hpa: host physical start address of memory,
+		 * only for type == VM_MEMMAP_MMIO
+		 */
+		uint64_t hpa;
+		/** @vma_base: service OS user virtual start address of
+		 * memory, only for type == VM_MEMMAP_SYSMEM &&
+		 * using_vma == true
+		 */
+		uint64_t vma_base;
+	};
+	/** @len: the length of memory range mapped */
+	uint64_t len;	/* mmap length */
+	/** @prot: memory mapping attribute */
+	uint32_t prot;	/* RWX */
+};
+
 /*
  * Common IOCTL ID definition for DM
  */
@@ -155,4 +190,10 @@ struct acrn_set_vcpu_regs {
 #define IC_RESET_VM                    _IC_ID(IC_ID, IC_ID_VM_BASE + 0x05)
 #define IC_SET_VCPU_REGS               _IC_ID(IC_ID, IC_ID_VM_BASE + 0x06)
 
+
+/* Guest memory management */
+#define IC_ID_MEM_BASE                  0x40UL
+#define IC_SET_MEMSEG                   _IC_ID(IC_ID, IC_ID_MEM_BASE + 0x01)
+#define IC_UNSET_MEMSEG                 _IC_ID(IC_ID, IC_ID_MEM_BASE + 0x02)
+
 #endif /* __ACRN_IOCTL_DEFS_H__ */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
