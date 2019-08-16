Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3488F8E5
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 04:33:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 68F6086396;
	Fri, 16 Aug 2019 02:33:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sFmNxlpee8mr; Fri, 16 Aug 2019 02:33:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 3219F8612E;
	Fri, 16 Aug 2019 02:33:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2573C1BF2BD
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 223AA86243
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lk4Jh9ozlA_8 for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 02:33:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 91BCC86191
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 02:33:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 19:33:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="194894491"
Received: from genxtest-ykzhao.sh.intel.com ([10.239.143.71])
 by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2019 19:33:05 -0700
From: Zhao Yakui <yakui.zhao@intel.com>
To: x86@kernel.org, linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [RFC PATCH 05/15] drivers/acrn: add driver-specific hypercall for
 ACRN_HSM
Date: Fri, 16 Aug 2019 10:25:46 +0800
Message-Id: <1565922356-4488-6-git-send-email-yakui.zhao@intel.com>
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
Cc: Zhao Yakui <yakui.zhao@intel.com>, Jack Ren <jack.ren@intel.com>,
 Yin FengWei <fengwei.yin@intel.com>, Jason Chen CJ <jason.cj.chen@intel.com>,
 Liu Shuo <shuo.a.liu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

After the user-space calls the ioctls, the module will then call the
defined hypercall so that the ACRN hypervisor can take the corresponding
action. It includes the management of creating vcpu, guest memory
management and interrupt injection, pass-through device management.
The available driver-specific hypercalls for ACRN HSM module are added
so that the ACRN_HSM module can communicate with the low-level
ACRN hypervisor.

Co-developed-by: Jason Chen CJ <jason.cj.chen@intel.com>
Signed-off-by: Jason Chen CJ <jason.cj.chen@intel.com>
Co-developed-by: Jack Ren <jack.ren@intel.com>
Signed-off-by: Jack Ren <jack.ren@intel.com>
Co-developed-by: Yin FengWei <fengwei.yin@intel.com>
Signed-off-by: Yin FengWei <fengwei.yin@intel.com>
Co-developed-by: Liu Shuo <shuo.a.liu@intel.com>
Signed-off-by: Liu Shuo <shuo.a.liu@intel.com>
Signed-off-by: Zhao Yakui <yakui.zhao@intel.com>
---
 drivers/staging/acrn/Makefile         |   3 +-
 drivers/staging/acrn/acrn_hv_defs.h   |  65 ++++++++++++++++
 drivers/staging/acrn/acrn_hypercall.c | 136 ++++++++++++++++++++++++++++++++++
 drivers/staging/acrn/acrn_hypercall.h | 132 +++++++++++++++++++++++++++++++++
 4 files changed, 335 insertions(+), 1 deletion(-)
 create mode 100644 drivers/staging/acrn/acrn_hv_defs.h
 create mode 100644 drivers/staging/acrn/acrn_hypercall.c
 create mode 100644 drivers/staging/acrn/acrn_hypercall.h

diff --git a/drivers/staging/acrn/Makefile b/drivers/staging/acrn/Makefile
index 48fca38..a58b0d1 100644
--- a/drivers/staging/acrn/Makefile
+++ b/drivers/staging/acrn/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_ACRN_HSM)	:= acrn.o
-acrn-y := acrn_dev.o
+acrn-y := acrn_dev.o \
+	  acrn_hypercall.o
diff --git a/drivers/staging/acrn/acrn_hv_defs.h b/drivers/staging/acrn/acrn_hv_defs.h
new file mode 100644
index 0000000..55417d2
--- /dev/null
+++ b/drivers/staging/acrn/acrn_hv_defs.h
@@ -0,0 +1,65 @@
+/* SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause */
+/*
+ * hypercall ID definition
+ *
+ */
+
+#ifndef _ACRN_HV_DEFS_H
+#define _ACRN_HV_DEFS_H
+
+/*
+ * Common structures for HV/HSM
+ */
+
+#define _HC_ID(x, y) (((x) << 24) | (y))
+
+#define HC_ID 0x80UL
+
+/* general */
+#define HC_ID_GEN_BASE               0x0UL
+#define HC_GET_API_VERSION          _HC_ID(HC_ID, HC_ID_GEN_BASE + 0x00)
+#define HC_SOS_OFFLINE_CPU          _HC_ID(HC_ID, HC_ID_GEN_BASE + 0x01)
+#define HC_GET_PLATFORM_INFO        _HC_ID(HC_ID, HC_ID_GEN_BASE + 0x03)
+
+/* VM management */
+#define HC_ID_VM_BASE               0x10UL
+#define HC_CREATE_VM                _HC_ID(HC_ID, HC_ID_VM_BASE + 0x00)
+#define HC_DESTROY_VM               _HC_ID(HC_ID, HC_ID_VM_BASE + 0x01)
+#define HC_START_VM                 _HC_ID(HC_ID, HC_ID_VM_BASE + 0x02)
+#define HC_PAUSE_VM                 _HC_ID(HC_ID, HC_ID_VM_BASE + 0x03)
+#define HC_CREATE_VCPU              _HC_ID(HC_ID, HC_ID_VM_BASE + 0x04)
+#define HC_RESET_VM                 _HC_ID(HC_ID, HC_ID_VM_BASE + 0x05)
+#define HC_SET_VCPU_REGS            _HC_ID(HC_ID, HC_ID_VM_BASE + 0x06)
+
+/* IRQ and Interrupts */
+#define HC_ID_IRQ_BASE              0x20UL
+#define HC_INJECT_MSI               _HC_ID(HC_ID, HC_ID_IRQ_BASE + 0x03)
+#define HC_VM_INTR_MONITOR          _HC_ID(HC_ID, HC_ID_IRQ_BASE + 0x04)
+#define HC_SET_IRQLINE              _HC_ID(HC_ID, HC_ID_IRQ_BASE + 0x05)
+
+/* DM ioreq management */
+#define HC_ID_IOREQ_BASE            0x30UL
+#define HC_SET_IOREQ_BUFFER         _HC_ID(HC_ID, HC_ID_IOREQ_BASE + 0x00)
+#define HC_NOTIFY_REQUEST_FINISH    _HC_ID(HC_ID, HC_ID_IOREQ_BASE + 0x01)
+
+/* Guest memory management */
+#define HC_ID_MEM_BASE              0x40UL
+#define HC_VM_SET_MEMORY_REGIONS    _HC_ID(HC_ID, HC_ID_MEM_BASE + 0x02)
+#define HC_VM_WRITE_PROTECT_PAGE    _HC_ID(HC_ID, HC_ID_MEM_BASE + 0x03)
+
+/* PCI assignment*/
+#define HC_ID_PCI_BASE              0x50UL
+#define HC_ASSIGN_PTDEV             _HC_ID(HC_ID, HC_ID_PCI_BASE + 0x00)
+#define HC_DEASSIGN_PTDEV           _HC_ID(HC_ID, HC_ID_PCI_BASE + 0x01)
+#define HC_SET_PTDEV_INTR_INFO      _HC_ID(HC_ID, HC_ID_PCI_BASE + 0x03)
+#define HC_RESET_PTDEV_INTR_INFO    _HC_ID(HC_ID, HC_ID_PCI_BASE + 0x04)
+
+/* DEBUG */
+#define HC_ID_DBG_BASE              0x60UL
+
+/* Power management */
+#define HC_ID_PM_BASE               0x80UL
+#define HC_PM_GET_CPU_STATE         _HC_ID(HC_ID, HC_ID_PM_BASE + 0x00)
+#define HC_PM_SET_SSTATE_DATA       _HC_ID(HC_ID, HC_ID_PM_BASE + 0x01)
+
+#endif /* __ACRN_HV_DEFS_H */
diff --git a/drivers/staging/acrn/acrn_hypercall.c b/drivers/staging/acrn/acrn_hypercall.c
new file mode 100644
index 0000000..6d83475
--- /dev/null
+++ b/drivers/staging/acrn/acrn_hypercall.c
@@ -0,0 +1,136 @@
+// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
+/*
+ * ACRN hyperviosr service module (HSM): driver-specific hypercall
+ *
+ * Copyright (C) 2019 Intel Corporation. All rights reserved.
+ * Jason Chen CJ <jason.cj.chen@intel.com>
+ * Zhao Yakui <yakui.zhao@intel.com>
+ * Jack Ren <jack.ren@intel.com>
+ * Yin FengWei <fengwei.yin@intel.com>
+ * Liu Shuo <shuo.a.liu@intel.com>
+ */
+
+#include <linux/types.h>
+#include <asm/ptrace.h>
+#include <asm/acrn.h>
+#include "acrn_hv_defs.h"
+#include "acrn_hypercall.h"
+
+/* General */
+long hcall_get_api_version(unsigned long api_version)
+{
+	return acrn_hypercall1(HC_GET_API_VERSION, api_version);
+}
+
+long hcall_sos_offline_cpu(unsigned long cpu)
+{
+	return acrn_hypercall1(HC_SOS_OFFLINE_CPU, cpu);
+}
+
+long hcall_get_platform_info(unsigned long platform_info)
+{
+	return acrn_hypercall1(HC_GET_PLATFORM_INFO, platform_info);
+}
+
+/* VM management */
+long hcall_create_vm(unsigned long vminfo)
+{
+	return acrn_hypercall1(HC_CREATE_VM, vminfo);
+}
+
+long hcall_start_vm(unsigned long vmid)
+{
+	return  acrn_hypercall1(HC_START_VM, vmid);
+}
+
+long hcall_pause_vm(unsigned long vmid)
+{
+	return acrn_hypercall1(HC_PAUSE_VM, vmid);
+}
+
+long hcall_reset_vm(unsigned long vmid)
+{
+	return acrn_hypercall1(HC_RESET_VM, vmid);
+}
+
+long hcall_destroy_vm(unsigned long vmid)
+{
+	return acrn_hypercall1(HC_DESTROY_VM, vmid);
+}
+
+long hcall_create_vcpu(unsigned long vmid, unsigned long vcpu)
+{
+	return acrn_hypercall2(HC_CREATE_VCPU, vmid, vcpu);
+}
+
+long hcall_set_vcpu_regs(unsigned long vmid,
+			 unsigned long regs_state)
+{
+	return acrn_hypercall2(HC_SET_VCPU_REGS, vmid, regs_state);
+}
+
+/* IRQ and Interrupts */
+long hcall_inject_msi(unsigned long vmid, unsigned long msi)
+{
+	return acrn_hypercall2(HC_INJECT_MSI, vmid, msi);
+}
+
+long hcall_vm_intr_monitor(unsigned long vmid, unsigned long addr)
+{
+	return  acrn_hypercall2(HC_VM_INTR_MONITOR, vmid, addr);
+}
+
+long hcall_set_irqline(unsigned long vmid, unsigned long op)
+{
+	return acrn_hypercall2(HC_SET_IRQLINE, vmid, op);
+}
+
+/* DM ioreq management */
+long hcall_set_ioreq_buffer(unsigned long vmid, unsigned long buffer)
+{
+	return acrn_hypercall2(HC_SET_IOREQ_BUFFER, vmid, buffer);
+}
+
+long hcall_notify_req_finish(unsigned long vmid, unsigned long vcpu)
+{
+	return acrn_hypercall2(HC_NOTIFY_REQUEST_FINISH, vmid, vcpu);
+}
+
+/* Guest memory management */
+long hcall_set_memory_regions(unsigned long pa_regions)
+{
+	return acrn_hypercall1(HC_VM_SET_MEMORY_REGIONS, pa_regions);
+}
+
+long hcall_write_protect_page(unsigned long vmid, unsigned long wp)
+{
+	return acrn_hypercall2(HC_VM_WRITE_PROTECT_PAGE, vmid, wp);
+}
+
+/* PCI device assignment */
+long hcall_assign_ptdev(unsigned long vmid, unsigned long bdf)
+{
+	return acrn_hypercall2(HC_ASSIGN_PTDEV, vmid, bdf);
+}
+
+long hcall_deassign_ptdev(unsigned long vmid, unsigned long bdf)
+{
+	return acrn_hypercall2(HC_DEASSIGN_PTDEV, vmid, bdf);
+}
+
+long hcall_set_ptdev_intr_info(unsigned long vmid, unsigned long pt_irq)
+{
+	return acrn_hypercall2(HC_SET_PTDEV_INTR_INFO, vmid, pt_irq);
+}
+
+long hcall_reset_ptdev_intr_info(unsigned long vmid,
+				 unsigned long pt_irq)
+{
+	return acrn_hypercall2(HC_RESET_PTDEV_INTR_INFO, vmid, pt_irq);
+}
+
+/* Power Management */
+long hcall_get_cpu_state(unsigned long cmd, unsigned long state_pa)
+{
+	return acrn_hypercall2(HC_PM_GET_CPU_STATE, cmd, state_pa);
+}
diff --git a/drivers/staging/acrn/acrn_hypercall.h b/drivers/staging/acrn/acrn_hypercall.h
new file mode 100644
index 0000000..104f84c
--- /dev/null
+++ b/drivers/staging/acrn/acrn_hypercall.h
@@ -0,0 +1,132 @@
+/* SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause */
+/*
+ * ACRN hyperviosr service module (HSM): driver-specific hypercall
+ * (header definition)
+ */
+#ifndef _ACRN_HSM_HYPERCALL_H
+#define _ACRN_HSM_HYPERCALL_H
+
+/* General */
+/* notify the hypervisor to offline one vcpu for SOS
+ * cpu is the cpu number that needs to be offlined
+ */
+long hcall_sos_offline_cpu(unsigned long cpu);
+/* return the API_VERSION of hypervisor
+ * api_version points to the gpa of returned info
+ */
+long hcall_get_api_version(unsigned long api_version);
+/* return the platform info of hypervisor
+ * platform_info points to the gpa of returned info
+ */
+long hcall_get_platform_info(unsigned long platform_info);
+
+/* VM management */
+/* ask the hypervisor to create one Guest VM.
+ * vminfo points to the gpa of created VM(in/out)
+ */
+long hcall_create_vm(unsigned long vminfo);
+/* ask the hypervisor to start the given VM based on vmid.
+ * vmid is the identifier for the given VM
+ */
+long hcall_start_vm(unsigned long vmid);
+/* ask the hypervisor to pause the given VM based on vmid.
+ * vmid is the identifier for the given VM
+ */
+long hcall_pause_vm(unsigned long vmid);
+/* ask the hypervisor to release  the given VM based on vmid.
+ * vmid is the identifier for the given VM
+ */
+long hcall_destroy_vm(unsigned long vmid);
+/* ask the hypervisor to reset the given VM based on vmid.
+ * vmid is the identifier for the given VM
+ */
+long hcall_reset_vm(unsigned long vmid);
+/* ask the hypervisor to create one vcpu based on vmid.
+ * vmid is the identifier for the given VM
+ * vcpu is the cpu number that needs to be created
+ */
+long hcall_create_vcpu(unsigned long vmid, unsigned long vcpu);
+/* ask the hypervisor to configure the regs_state for one vcpu in VM
+ * vmid is the identifier for the given VM
+ * regs_state points to the gpa of configured register state: cpu_id and
+ *         register value.
+ */
+long hcall_set_vcpu_regs(unsigned long vmid, unsigned long regs_state);
+
+/* IRQ and interrupt management */
+/* notify the hypervisor to deliver MSI interrupt to target vm
+ * vmid is the identifier of target VM
+ * msi points to the gpa of MSI message
+ */
+long hcall_inject_msi(unsigned long vmid, unsigned long msi);
+/* notify the hypervisor to query interrupt_count info for target VM
+ * vmid is the identifier of target VM
+ * addr is the GPA address that points to interrupt_count page of target VM
+ */
+long hcall_vm_intr_monitor(unsigned long vmid, unsigned long addr);
+/* notify the hypervisor to handle the passed irq op
+ * vmid is the identifier of target VM.
+ * op is the defined irq op
+ */
+long hcall_set_irqline(unsigned long vmid, unsigned long op);
+
+/* DM IOREQ management */
+/* ask the hypervisor to setup the shared buffer for IO Request.
+ * vmdi is the identifier of target VM
+ * buffer points to the gpa address of the ioreq_buffer structure
+ */
+long hcall_set_ioreq_buffer(unsigned long vmid, unsigned long buffer);
+/* notify that the ioreq on cpu of VMID is done
+ * vmid is the identifier of target VM
+ * cpu is the vCPU that triggers the iorequest
+ */
+long hcall_notify_req_finish(unsigned long vmid, unsigned long vcpu);
+
+/* Guest Memory mamangement */
+/* ask the hypervisor to setup EPT for the given VM.
+ * pa_regions points to the gpa for memory_region that includes the
+ * mapping between HPA and UOS GPA. The vmid is also included.
+ */
+long hcall_set_memory_regions(unsigned long pa_regions);
+
+/* ask the hypervisor to enable/disable the EPT_WP for one 4K page on
+ *    one given VM
+ * vmid is the identifier of target VM
+ * wp points to the gpa address that contains the wp_data structure
+ */
+long hcall_write_protect_page(unsigned long vmid, unsigned long wp);
+
+/* PCI device assignement */
+/* notify the hypervisor to assign one PCI device to target vm
+ * vmid is the identifier of target VM
+ * bdf is the assigned PCI device(bus:dev:func)
+ */
+long hcall_assign_ptdev(unsigned long vmid, unsigned long bdf);
+/* notify the hypervisor to deassign one PCI device to target vm
+ * vmid is the identifier of target VM
+ * bdf is the deassigned PCI device(bus:dev:func)
+ */
+long hcall_deassign_ptdev(unsigned long vmid, unsigned long bdf);
+/* notify the hypervisor to configure the interrupt_info for the assigned
+ *        PCI device
+ * vmid is the identifier of target VM
+ * pt_irq is the GPA address that points to the pt_irq info
+ */
+long hcall_set_ptdev_intr_info(unsigned long vmid, unsigned long pt_irq);
+/* notify the hypervisor to reset the interrupt_info for the assigned
+ *        PCI device
+ * vmid is the identifier of target VM
+ * pt_irq is the GPA address that points to the pt_irq info
+ */
+long hcall_reset_ptdev_intr_info(unsigned long vmid, unsigned long pt_irq);
+
+/* Debug assignment */
+/* TBD: It will be added when adding debug module */
+
+/* Power management */
+/* get the cpu px/cx state from hypervisor.
+ * state_pa points to the gpa of px/cx state buffer
+ */
+long hcall_get_cpu_state(unsigned long cmd, unsigned long state_pa);
+
+#endif /* __ACRN_HSM_HYPERCALL_H */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
