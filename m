Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2438F8FA
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 04:33:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5FFEC23042;
	Fri, 16 Aug 2019 02:33:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IGV-GLA26pfz; Fri, 16 Aug 2019 02:33:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 21CA722F05;
	Fri, 16 Aug 2019 02:33:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7B16C1BF2BD
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 74EB086250
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 53BANU_eOoqb for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 02:33:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 94D5086200
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 02:33:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 19:33:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="194894529"
Received: from genxtest-ykzhao.sh.intel.com ([10.239.143.71])
 by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2019 19:33:14 -0700
From: Zhao Yakui <yakui.zhao@intel.com>
To: x86@kernel.org, linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [RFC PATCH 10/15] drivers/acrn: add interrupt injection support
Date: Fri, 16 Aug 2019 10:25:51 +0800
Message-Id: <1565922356-4488-11-git-send-email-yakui.zhao@intel.com>
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
Cc: Zhao Yakui <yakui.zhao@intel.com>, Mingqiang Chi <mingqiang.chi@intel.com>,
 Jason Chen CJ <jason.cj.chen@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

After ACRN devicemodel finishes the emulation of trapped MMIO/IO/PCICFG
access, it needs to inject one interrupt to notify that the guest can be
resumed.
IC_SET_IRQLINE: This is used to inject virtual IOAPIC gsi interrupt
IC_INJECT_MSI: Inject virtual MSI interrupt to guest OS
IC_VM_INTR_MONITOR: monitor the interrupt info for one guest OS

Co-developed-by: Jason Chen CJ <jason.cj.chen@intel.com>
Signed-off-by: Jason Chen CJ <jason.cj.chen@intel.com>
Co-developed-by: Mingqiang Chi <mingqiang.chi@intel.com>
Signed-off-by: Mingqiang Chi <mingqiang.chi@intel.com>
Signed-off-by: Zhao Yakui <yakui.zhao@intel.com>
---
 drivers/staging/acrn/acrn_dev.c           | 48 +++++++++++++++++++++++++++++++
 drivers/staging/acrn/acrn_vm_mngt.c       | 28 ++++++++++++++++++
 include/linux/acrn/acrn_drv.h             | 12 ++++++++
 include/uapi/linux/acrn/acrn_ioctl_defs.h | 18 ++++++++++++
 4 files changed, 106 insertions(+)

diff --git a/drivers/staging/acrn/acrn_dev.c b/drivers/staging/acrn/acrn_dev.c
index 28bbd78..1476817 100644
--- a/drivers/staging/acrn/acrn_dev.c
+++ b/drivers/staging/acrn/acrn_dev.c
@@ -19,6 +19,7 @@
 #include <linux/kernel.h>
 #include <linux/init.h>
 #include <linux/io.h>
+#include <linux/mm.h>
 #include <linux/module.h>
 #include <linux/uaccess.h>
 #include <linux/slab.h>
@@ -316,6 +317,53 @@ long acrn_dev_ioctl(struct file *filep,
 		break;
 	}
 
+	case IC_SET_IRQLINE: {
+		ret = hcall_set_irqline(vm->vmid, ioctl_param);
+		if (ret < 0) {
+			pr_err("acrn: failed to set irqline!\n");
+			return -EFAULT;
+		}
+		break;
+	}
+
+	case IC_INJECT_MSI: {
+		struct acrn_msi_entry *msi;
+
+		msi = kmalloc(sizeof(*msi), GFP_KERNEL);
+		if (!msi)
+			return -ENOMEM;
+
+		if (copy_from_user(msi, (void *)ioctl_param, sizeof(*msi))) {
+			kfree(msi);
+			return -EFAULT;
+		}
+
+		ret = hcall_inject_msi(vm->vmid, virt_to_phys(msi));
+		kfree(msi);
+		if (ret < 0) {
+			pr_err("acrn: failed to inject!\n");
+			return -EFAULT;
+		}
+		break;
+	}
+
+	case IC_VM_INTR_MONITOR: {
+		struct page *page;
+
+		ret = get_user_pages_fast(ioctl_param, 1, 1, &page);
+		if (unlikely(ret != 1) || !page) {
+			pr_err("acrn-dev: failed to pin intr hdr buffer!\n");
+			return -ENOMEM;
+		}
+
+		ret = hcall_vm_intr_monitor(vm->vmid, page_to_phys(page));
+		if (ret < 0) {
+			pr_err("acrn-dev: monitor intr data err=%ld\n", ret);
+			return -EFAULT;
+		}
+		break;
+	}
+
 	default:
 		pr_warn("Unknown IOCTL 0x%x\n", ioctl_num);
 		ret = -EFAULT;
diff --git a/drivers/staging/acrn/acrn_vm_mngt.c b/drivers/staging/acrn/acrn_vm_mngt.c
index 9c6dd6d..4287595 100644
--- a/drivers/staging/acrn/acrn_vm_mngt.c
+++ b/drivers/staging/acrn/acrn_vm_mngt.c
@@ -11,8 +11,10 @@
 #include <linux/list.h>
 #include <linux/slab.h>
 #include <linux/init.h>
+#include <linux/io.h>
 #include <linux/rwlock_types.h>
 #include <linux/acrn/acrn_ioctl_defs.h>
+#include <linux/acrn/acrn_drv.h>
 
 #include "acrn_hypercall.h"
 #include "acrn_drv_internal.h"
@@ -72,3 +74,29 @@ int acrn_vm_destroy(struct acrn_vm *vm)
 	vm->vmid = ACRN_INVALID_VMID;
 	return 0;
 }
+
+int acrn_inject_msi(unsigned short vmid, unsigned long msi_addr,
+		    unsigned long msi_data)
+{
+	struct acrn_msi_entry *msi;
+	int ret;
+
+	msi = kzalloc(sizeof(*msi), GFP_KERNEL);
+
+	if (!msi)
+		return -ENOMEM;
+
+	/* msi_addr: addr[19:12] with dest vcpu id */
+	/* msi_data: data[7:0] with vector */
+	msi->msi_addr = msi_addr;
+	msi->msi_data = msi_data;
+	ret = hcall_inject_msi(vmid, virt_to_phys(msi));
+	kfree(msi);
+	if (ret < 0) {
+		pr_err("acrn: failed to inject MSI for vmid %d, msi_addr %lx msi_data%lx!\n",
+		       vmid, msi_addr, msi_data);
+		return -EFAULT;
+	}
+	return 0;
+}
+EXPORT_SYMBOL_GPL(acrn_inject_msi);
diff --git a/include/linux/acrn/acrn_drv.h b/include/linux/acrn/acrn_drv.h
index 62b03f0..bcdfcaf 100644
--- a/include/linux/acrn/acrn_drv.h
+++ b/include/linux/acrn/acrn_drv.h
@@ -83,4 +83,16 @@ extern int acrn_del_memory_region(unsigned short vmid, unsigned long gpa,
 extern int acrn_write_protect_page(unsigned short vmid, unsigned long gpa,
 				   unsigned char set);
 
+/**
+ * acrn_inject_msi() - inject MSI interrupt to guest
+ *
+ * @vmid: guest vmid
+ * @msi_addr: MSI addr matches MSI spec
+ * @msi_data: MSI data matches MSI spec
+ *
+ * Return: 0 on success, <0 on error
+ */
+extern int acrn_inject_msi(unsigned short vmid, unsigned long msi_addr,
+			   unsigned long msi_data);
+
 #endif
diff --git a/include/uapi/linux/acrn/acrn_ioctl_defs.h b/include/uapi/linux/acrn/acrn_ioctl_defs.h
index ee259c2..371904c 100644
--- a/include/uapi/linux/acrn/acrn_ioctl_defs.h
+++ b/include/uapi/linux/acrn/acrn_ioctl_defs.h
@@ -210,6 +210,19 @@ struct vm_memmap {
 	uint32_t prot;	/* RWX */
 };
 
+/**
+ * @brief Info to inject a MSI interrupt to VM
+ *
+ * the parameter for HC_INJECT_MSI hypercall
+ */
+struct acrn_msi_entry {
+	/** MSI addr[19:12] with dest VCPU ID */
+	uint64_t msi_addr;
+
+	/** MSI data[7:0] with vector */
+	uint64_t msi_data;
+};
+
 /*
  * Common IOCTL ID definition for DM
  */
@@ -230,6 +243,11 @@ struct vm_memmap {
 #define IC_RESET_VM                    _IC_ID(IC_ID, IC_ID_VM_BASE + 0x05)
 #define IC_SET_VCPU_REGS               _IC_ID(IC_ID, IC_ID_VM_BASE + 0x06)
 
+/* IRQ and Interrupts */
+#define IC_ID_IRQ_BASE                 0x20UL
+#define IC_INJECT_MSI                  _IC_ID(IC_ID, IC_ID_IRQ_BASE + 0x03)
+#define IC_VM_INTR_MONITOR             _IC_ID(IC_ID, IC_ID_IRQ_BASE + 0x04)
+#define IC_SET_IRQLINE                 _IC_ID(IC_ID, IC_ID_IRQ_BASE + 0x05)
 
 /* Guest memory management */
 #define IC_ID_MEM_BASE                  0x40UL
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
