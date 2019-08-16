Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id EABCE8F8EB
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 04:33:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8CF6586250;
	Fri, 16 Aug 2019 02:33:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bEtqVWd-8jRE; Fri, 16 Aug 2019 02:33:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AE9E486200;
	Fri, 16 Aug 2019 02:33:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AC4201BF2BD
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A360D8612E
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TSPR44uI9CcI for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 02:33:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 356438643D
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 02:33:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 19:33:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="194894521"
Received: from genxtest-ykzhao.sh.intel.com ([10.239.143.71])
 by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2019 19:33:12 -0700
From: Zhao Yakui <yakui.zhao@intel.com>
To: x86@kernel.org, linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [RFC PATCH 09/15] drivers/acrn: add passthrough device support
Date: Fri, 16 Aug 2019 10:25:50 +0800
Message-Id: <1565922356-4488-10-git-send-email-yakui.zhao@intel.com>
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
Cc: Zhao Yakui <yakui.zhao@intel.com>, Gao@osuosl.org,
 Shiqing <shiqing.gao@intel.com>, Jason Chen CJ <jason.cj.chen@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Pass-through device plays an important role for guest OS when it is
accessed exclusively by guest OS. This is critical for the performance
scenario. After one PCI device is assigned to guest OS, it can be
accessed exclusively by guest system. It can avoid the device emulation
and provide the better performance.
It provides the following operations for supporting pass-through device.
- assign, pass-through device
   ACRN_ASSIGN_PTDEV: Assign one PCI device to one guest OS
- deassign pass-through device
   ACRN_DEASSIGN_PTDEV: Return the assigned PCI device from
the guest OS so that it can be assigned to another guest OS.
- set, reset pass-through device intr info
   ACRN_SET_PTDEV_INTR_INFO
   ACRN_RESET_PTDEV_INTR_INFO : This is used to configure
the interrupt info for the assigned pass-through device so that
ACRN hypervisor can inject the interrupt into guest system after
the device interrupt is triggered.

Co-developed-by: Gao, Shiqing <shiqing.gao@intel.com>
Signed-off-by: Gao, Shiqing <shiqing.gao@intel.com>
Co-developed-by: Jason Chen CJ <jason.cj.chen@intel.com>
Signed-off-by: Jason Chen CJ <jason.cj.chen@intel.com>
Signed-off-by: Zhao Yakui <yakui.zhao@intel.com>
---
 drivers/staging/acrn/acrn_dev.c           | 77 +++++++++++++++++++++++++++++++
 drivers/staging/acrn/acrn_drv_internal.h  | 25 ++++++++++
 include/uapi/linux/acrn/acrn_ioctl_defs.h | 47 +++++++++++++++++++
 3 files changed, 149 insertions(+)

diff --git a/drivers/staging/acrn/acrn_dev.c b/drivers/staging/acrn/acrn_dev.c
index cb62819..28bbd78 100644
--- a/drivers/staging/acrn/acrn_dev.c
+++ b/drivers/staging/acrn/acrn_dev.c
@@ -239,6 +239,83 @@ long acrn_dev_ioctl(struct file *filep,
 		break;
 	}
 
+	case IC_ASSIGN_PTDEV: {
+		unsigned short bdf;
+
+		if (copy_from_user(&bdf, (void *)ioctl_param,
+				   sizeof(unsigned short)))
+			return -EFAULT;
+
+		ret = hcall_assign_ptdev(vm->vmid, bdf);
+		if (ret < 0) {
+			pr_err("acrn: failed to assign ptdev!\n");
+			return -EFAULT;
+		}
+		break;
+	}
+	case IC_DEASSIGN_PTDEV: {
+		unsigned short bdf;
+
+		if (copy_from_user(&bdf, (void *)ioctl_param,
+				   sizeof(unsigned short)))
+			return -EFAULT;
+
+		ret = hcall_deassign_ptdev(vm->vmid, bdf);
+		if (ret < 0) {
+			pr_err("acrn: failed to deassign ptdev!\n");
+			return -EFAULT;
+		}
+		break;
+	}
+
+	case IC_SET_PTDEV_INTR_INFO: {
+		struct ic_ptdev_irq ic_pt_irq;
+		struct hc_ptdev_irq *hc_pt_irq;
+
+		if (copy_from_user(&ic_pt_irq, (void *)ioctl_param,
+				   sizeof(ic_pt_irq)))
+			return -EFAULT;
+
+		hc_pt_irq = kmalloc(sizeof(*hc_pt_irq), GFP_KERNEL);
+		if (!hc_pt_irq)
+			return -ENOMEM;
+
+		memcpy(hc_pt_irq, &ic_pt_irq, sizeof(*hc_pt_irq));
+
+		ret = hcall_set_ptdev_intr_info(vm->vmid,
+						virt_to_phys(hc_pt_irq));
+		kfree(hc_pt_irq);
+		if (ret < 0) {
+			pr_err("acrn: failed to set intr info for ptdev!\n");
+			return -EFAULT;
+		}
+
+		break;
+	}
+	case IC_RESET_PTDEV_INTR_INFO: {
+		struct ic_ptdev_irq ic_pt_irq;
+		struct hc_ptdev_irq *hc_pt_irq;
+
+		if (copy_from_user(&ic_pt_irq, (void *)ioctl_param,
+				   sizeof(ic_pt_irq)))
+			return -EFAULT;
+
+		hc_pt_irq = kmalloc(sizeof(*hc_pt_irq), GFP_KERNEL);
+		if (!hc_pt_irq)
+			return -ENOMEM;
+
+		memcpy(hc_pt_irq, &ic_pt_irq, sizeof(*hc_pt_irq));
+
+		ret = hcall_reset_ptdev_intr_info(vm->vmid,
+						  virt_to_phys(hc_pt_irq));
+		kfree(hc_pt_irq);
+		if (ret < 0) {
+			pr_err("acrn: failed to reset intr info for ptdev!\n");
+			return -EFAULT;
+		}
+		break;
+	}
+
 	default:
 		pr_warn("Unknown IOCTL 0x%x\n", ioctl_num);
 		ret = -EFAULT;
diff --git a/drivers/staging/acrn/acrn_drv_internal.h b/drivers/staging/acrn/acrn_drv_internal.h
index 5098765..3e633cd 100644
--- a/drivers/staging/acrn/acrn_drv_internal.h
+++ b/drivers/staging/acrn/acrn_drv_internal.h
@@ -115,4 +115,29 @@ void hugepage_free_guest(struct acrn_vm *vm);
 void *hugepage_map_guest_phys(struct acrn_vm *vm, u64 guest_phys, size_t size);
 int hugepage_unmap_guest_phys(struct acrn_vm *vm, u64 guest_phys);
 int set_memory_regions(struct set_regions *regions);
+
+struct hc_ptdev_irq {
+#define IRQ_INTX 0
+#define IRQ_MSI 1
+#define IRQ_MSIX 2
+	u32 type;
+	u16 virt_bdf;	/* IN: Device virtual BDF# */
+	u16 phys_bdf;	/* IN: Device physical BDF# */
+	union {
+		struct {
+			u8 virt_pin;	/* IN: virtual IOAPIC pin */
+			u8 reserved0[3];	/* Reserved */
+			u8 phys_pin;	/* IN: physical IOAPIC pin */
+			u8 reserved1[3];	/* Reserved */
+			bool pic_pin;		/* IN: pin from PIC? */
+			u8 reserved2[3];	/* Reserved */
+		} intx;
+		struct {
+			/* IN: vector count of MSI/MSIX */
+			u32 vector_cnt;
+			u32 reserved0[3];	/* Reserved */
+		} msix;
+	};
+};
+
 #endif
diff --git a/include/uapi/linux/acrn/acrn_ioctl_defs.h b/include/uapi/linux/acrn/acrn_ioctl_defs.h
index 76e358f..ee259c2 100644
--- a/include/uapi/linux/acrn/acrn_ioctl_defs.h
+++ b/include/uapi/linux/acrn/acrn_ioctl_defs.h
@@ -137,6 +137,46 @@ struct acrn_set_vcpu_regs {
 	struct acrn_vcpu_regs vcpu_regs;
 };
 
+/**
+ * struct ic_ptdev_irq - pass thru device irq data structure
+ */
+struct ic_ptdev_irq {
+#define IRQ_INTX 0
+#define IRQ_MSI 1
+#define IRQ_MSIX 2
+	/** @type: irq type */
+	uint32_t type;
+	/** @virt_bdf: virtual bdf description of pass thru device */
+	uint16_t virt_bdf;	/* IN: Device virtual BDF# */
+	/** @phys_bdf: physical bdf description of pass thru device */
+	uint16_t phys_bdf;	/* IN: Device physical BDF# */
+	/** union */
+	union {
+		/** struct intx - info of IOAPIC/PIC interrupt */
+		struct {
+			/** @virt_pin: virtual IOAPIC pin */
+			uint32_t virt_pin;
+			/** @phys_pin: physical IOAPIC pin */
+			uint32_t phys_pin;
+			/** @is_pic_pin: PIC pin */
+			uint32_t is_pic_pin;
+		} intx;
+
+		/** struct msix - info of MSI/MSIX interrupt */
+		struct {
+			/* Keep this filed on top of msix */
+			/** @vector_cnt: vector count of MSI/MSIX */
+			uint32_t vector_cnt;
+
+			/** @table_size: size of MSIX table(round up to 4K) */
+			uint32_t table_size;
+
+			/** @table_paddr: physical address of MSIX table */
+			uint64_t table_paddr;
+		} msix;
+	};
+};
+
 #define VM_MEMMAP_SYSMEM       0
 #define VM_MEMMAP_MMIO         1
 
@@ -196,4 +236,11 @@ struct vm_memmap {
 #define IC_SET_MEMSEG                   _IC_ID(IC_ID, IC_ID_MEM_BASE + 0x01)
 #define IC_UNSET_MEMSEG                 _IC_ID(IC_ID, IC_ID_MEM_BASE + 0x02)
 
+/* PCI assignment*/
+#define IC_ID_PCI_BASE                  0x50UL
+#define IC_ASSIGN_PTDEV                _IC_ID(IC_ID, IC_ID_PCI_BASE + 0x00)
+#define IC_DEASSIGN_PTDEV              _IC_ID(IC_ID, IC_ID_PCI_BASE + 0x01)
+#define IC_SET_PTDEV_INTR_INFO         _IC_ID(IC_ID, IC_ID_PCI_BASE + 0x03)
+#define IC_RESET_PTDEV_INTR_INFO       _IC_ID(IC_ID, IC_ID_PCI_BASE + 0x04)
+
 #endif /* __ACRN_IOCTL_DEFS_H__ */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
