Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5FD8F8EC
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 04:33:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 646D486427;
	Fri, 16 Aug 2019 02:33:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Gm_6GdlYp00e; Fri, 16 Aug 2019 02:33:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D6B0E864C4;
	Fri, 16 Aug 2019 02:33:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7062A1BF2BD
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6DCC886932
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FFZ0miCV1_PG for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 02:33:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3759486191
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 02:33:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 19:33:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="194894538"
Received: from genxtest-ykzhao.sh.intel.com ([10.239.143.71])
 by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2019 19:33:17 -0700
From: Zhao Yakui <yakui.zhao@intel.com>
To: x86@kernel.org, linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [RFC PATCH 12/15] drivers/acrn: add driver-specific IRQ handle to
 dispatch IO_REQ request
Date: Fri, 16 Aug 2019 10:25:53 +0800
Message-Id: <1565922356-4488-13-git-send-email-yakui.zhao@intel.com>
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
 Jason Chen CJ <jason.cj.chen@intel.com>, Liu Shuo <shuo.a.liu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

After ACRN hypervisor captures the io_request(mmio, IO, PCI access) from
guest OS, it will send the IRQ interrupt to SOS system.
The HYPERVISOR_CALLBACK_VECTOR ISR handler will be executed and it
needs to call the driver-specific ISR handler to dispatch emulated
io_request.
After the emulation of ioreq request is finished, the ACRN hypervisor
is notified and then can resume the execution of guest OS.

Co-developed-by: Jason Chen CJ <jason.cj.chen@intel.com>
Signed-off-by: Jason Chen CJ <jason.cj.chen@intel.com>
Co-developed-by: Mingqiang Chi <mingqiang.chi@intel.com>
Signed-off-by: Mingqiang Chi <mingqiang.chi@intel.com>
Co-developed-by: Liu Shuo <shuo.a.liu@intel.com>
Signed-off-by: Liu Shuo <shuo.a.liu@intel.com>
Signed-off-by: Zhao Yakui <yakui.zhao@intel.com>
---
 drivers/staging/acrn/acrn_dev.c | 41 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 41 insertions(+)

diff --git a/drivers/staging/acrn/acrn_dev.c b/drivers/staging/acrn/acrn_dev.c
index 28258fb..93f45e3 100644
--- a/drivers/staging/acrn/acrn_dev.c
+++ b/drivers/staging/acrn/acrn_dev.c
@@ -18,6 +18,7 @@
 #include <linux/kdev_t.h>
 #include <linux/kernel.h>
 #include <linux/init.h>
+#include <linux/interrupt.h>
 #include <linux/io.h>
 #include <linux/mm.h>
 #include <linux/module.h>
@@ -41,6 +42,7 @@ static int	acrn_hsm_inited;
 static int	major;
 static struct class	*acrn_class;
 static struct device	*acrn_device;
+static struct tasklet_struct acrn_io_req_tasklet;
 
 static
 int acrn_dev_open(struct inode *inodep, struct file *filep)
@@ -416,6 +418,16 @@ long acrn_dev_ioctl(struct file *filep,
 		break;
 	}
 	case IC_CLEAR_VM_IOREQ: {
+		/*
+		 * we need to flush the current pending ioreq dispatch
+		 * tasklet and finish it before clearing all ioreq of this VM.
+		 * With tasklet_kill, there still be a very rare race which
+		 * might lost one ioreq tasklet for other VMs. So arm one after
+		 * the clearing. It's harmless.
+		 */
+		tasklet_schedule(&acrn_io_req_tasklet);
+		tasklet_kill(&acrn_io_req_tasklet);
+		tasklet_schedule(&acrn_io_req_tasklet);
 		acrn_ioreq_clear_request(vm);
 		break;
 	}
@@ -449,6 +461,28 @@ static int acrn_dev_release(struct inode *inodep, struct file *filep)
 	return 0;
 }
 
+static void io_req_tasklet(unsigned long data)
+{
+	struct acrn_vm *vm;
+	/* This is already in tasklet. Use read_lock for list_lock */
+
+	read_lock(&acrn_vm_list_lock);
+	list_for_each_entry(vm, &acrn_vm_list, list) {
+		if (!vm || !vm->req_buf)
+			break;
+
+		get_vm(vm);
+		acrn_ioreq_distribute_request(vm);
+		put_vm(vm);
+	}
+	read_unlock(&acrn_vm_list_lock);
+}
+
+static void acrn_intr_handler(void)
+{
+	tasklet_schedule(&acrn_io_req_tasklet);
+}
+
 static const struct file_operations fops = {
 	.open = acrn_dev_open,
 	.release = acrn_dev_release,
@@ -462,6 +496,7 @@ static const struct file_operations fops = {
 
 static int __init acrn_init(void)
 {
+	unsigned long flag;
 	struct api_version *api_version;
 	acrn_hsm_inited = 0;
 	if (x86_hyper_type != X86_HYPER_ACRN)
@@ -518,6 +553,10 @@ static int __init acrn_init(void)
 		return PTR_ERR(acrn_device);
 	}
 
+	tasklet_init(&acrn_io_req_tasklet, io_req_tasklet, 0);
+	local_irq_save(flag);
+	acrn_setup_intr_irq(acrn_intr_handler);
+	local_irq_restore(flag);
 	acrn_ioreq_driver_init();
 	pr_info("acrn: ACRN Hypervisor service module initialized\n");
 	acrn_hsm_inited = 1;
@@ -529,6 +568,8 @@ static void __exit acrn_exit(void)
 	if (!acrn_hsm_inited)
 		return;
 
+	tasklet_kill(&acrn_io_req_tasklet);
+	acrn_remove_intr_irq();
 	device_destroy(acrn_class, MKDEV(major, 0));
 	class_unregister(acrn_class);
 	class_destroy(acrn_class);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
