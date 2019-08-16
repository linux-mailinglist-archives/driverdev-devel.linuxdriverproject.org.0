Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D8BE28F8ED
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 04:33:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 89200230FE;
	Fri, 16 Aug 2019 02:33:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0RY3JLVoSzUr; Fri, 16 Aug 2019 02:33:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5FFFF23039;
	Fri, 16 Aug 2019 02:33:10 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 815641BF2BD
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7E582860C1
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IhO2kWE8vNNI for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 02:33:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B162886191
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 02:33:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 19:33:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="194894485"
Received: from genxtest-ykzhao.sh.intel.com ([10.239.143.71])
 by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2019 19:33:03 -0700
From: Zhao Yakui <yakui.zhao@intel.com>
To: x86@kernel.org, linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [RFC PATCH 04/15] drivers/acrn: add the basic framework of acrn char
 device driver
Date: Fri, 16 Aug 2019 10:25:45 +0800
Message-Id: <1565922356-4488-5-git-send-email-yakui.zhao@intel.com>
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
 Jack Ren <jack.ren@intel.com>, Jason Chen CJ <jason.cj.chen@intel.com>,
 Liu Shuo <shuo.a.liu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

ACRN hypervisor service module is the important middle layer that allows
the Linux kernel to communicate with the ACRN hypervisor. It includes
the management of virtualized CPU/memory/device/interrupt for other ACRN
guest. The user-space applications can use the provided ACRN ioctls to
interact with ACRN hypervisor through different hypercalls.

Add one basic framework firstly and the following patches will
add the corresponding implementations, which includes the management of
virtualized CPU/memory/interrupt and the emulation of MMIO/IO/PCI access.
The device file of /dev/acrn_hsm can be accessed in user-space to
communicate with ACRN module.

Co-developed-by: Jason Chen CJ <jason.cj.chen@intel.com>
Signed-off-by: Jason Chen CJ <jason.cj.chen@intel.com>
Co-developed-by: Jack Ren <jack.ren@intel.com>
Signed-off-by: Jack Ren <jack.ren@intel.com>
Co-developed-by: Mingqiang Chi <mingqiang.chi@intel.com>
Signed-off-by: Mingqiang Chi <mingqiang.chi@intel.com>
Co-developed-by: Liu Shuo <shuo.a.liu@intel.com>
Signed-off-by: Liu Shuo <shuo.a.liu@intel.com>
Signed-off-by: Zhao Yakui <yakui.zhao@intel.com>
---
 drivers/staging/Kconfig         |   2 +
 drivers/staging/Makefile        |   1 +
 drivers/staging/acrn/Kconfig    |  18 ++++++
 drivers/staging/acrn/Makefile   |   2 +
 drivers/staging/acrn/acrn_dev.c | 123 ++++++++++++++++++++++++++++++++++++++++
 5 files changed, 146 insertions(+)
 create mode 100644 drivers/staging/acrn/Kconfig
 create mode 100644 drivers/staging/acrn/Makefile
 create mode 100644 drivers/staging/acrn/acrn_dev.c

diff --git a/drivers/staging/Kconfig b/drivers/staging/Kconfig
index 7c96a01..0766de5 100644
--- a/drivers/staging/Kconfig
+++ b/drivers/staging/Kconfig
@@ -120,4 +120,6 @@ source "drivers/staging/kpc2000/Kconfig"
 
 source "drivers/staging/isdn/Kconfig"
 
+source "drivers/staging/acrn/Kconfig"
+
 endif # STAGING
diff --git a/drivers/staging/Makefile b/drivers/staging/Makefile
index fcaac96..f927eb0 100644
--- a/drivers/staging/Makefile
+++ b/drivers/staging/Makefile
@@ -49,4 +49,5 @@ obj-$(CONFIG_XIL_AXIS_FIFO)	+= axis-fifo/
 obj-$(CONFIG_EROFS_FS)		+= erofs/
 obj-$(CONFIG_FIELDBUS_DEV)     += fieldbus/
 obj-$(CONFIG_KPC2000)		+= kpc2000/
+obj-$(CONFIG_ACRN_HSM)		+= acrn/
 obj-$(CONFIG_ISDN_CAPI)		+= isdn/
diff --git a/drivers/staging/acrn/Kconfig b/drivers/staging/acrn/Kconfig
new file mode 100644
index 0000000..a047d5f
--- /dev/null
+++ b/drivers/staging/acrn/Kconfig
@@ -0,0 +1,18 @@
+config ACRN_HSM
+	tristate "Intel ACRN Hypervisor service Module"
+	depends on ACRN_GUEST
+	depends on HUGETLBFS
+	depends on PCI_MSI
+	default n
+	help
+	  This is the Hypervisor service Module (ACRN.ko) for ACRN guest
+	  to communicate with ACRN hypervisor. It includes the management
+	  of virtualized CPU/memory/device/interrupt for other ACRN guest.
+
+	  It is required if it needs to manage other ACRN guests. User-guest
+	  OS does not need it.
+
+	  If unsure, say N.
+	  If you wish to work on this driver, to help improve it, or to
+	  report problems you have with them, please use the
+	  acrn-dev@lists.projectacrn.org mailing list.
diff --git a/drivers/staging/acrn/Makefile b/drivers/staging/acrn/Makefile
new file mode 100644
index 0000000..48fca38
--- /dev/null
+++ b/drivers/staging/acrn/Makefile
@@ -0,0 +1,2 @@
+obj-$(CONFIG_ACRN_HSM)	:= acrn.o
+acrn-y := acrn_dev.o
diff --git a/drivers/staging/acrn/acrn_dev.c b/drivers/staging/acrn/acrn_dev.c
new file mode 100644
index 0000000..55a7612
--- /dev/null
+++ b/drivers/staging/acrn/acrn_dev.c
@@ -0,0 +1,123 @@
+// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
+/*
+ * ACRN hyperviosr service module (HSM): main framework
+ *
+ * Copyright (C) 2019 Intel Corporation. All rights reserved.
+ *
+ * Jason Chen CJ <jason.cj.chen@intel.com>
+ * Zhao Yakui <yakui.zhao@intel.com>
+ * Jack Ren <jack.ren@intel.com>
+ * Mingqiang Chi <mingqiang.chi@intel.com>
+ * Liu Shuo <shuo.a.liu@intel.com>
+ *
+ */
+
+#include <linux/bits.h>
+#include <linux/device.h>
+#include <linux/fs.h>
+#include <linux/kdev_t.h>
+#include <linux/kernel.h>
+#include <linux/init.h>
+#include <linux/module.h>
+#include <asm/acrn.h>
+#include <asm/hypervisor.h>
+
+#define  DEVICE_NAME "acrn_hsm"
+#define  CLASS_NAME  "acrn"
+
+static int	acrn_hsm_inited;
+static int	major;
+static struct class	*acrn_class;
+static struct device	*acrn_device;
+
+static
+int acrn_dev_open(struct inode *inodep, struct file *filep)
+{
+	pr_info("%s: opening device node\n", __func__);
+
+	return 0;
+}
+
+static
+long acrn_dev_ioctl(struct file *filep,
+		    unsigned int ioctl_num, unsigned long ioctl_param)
+{
+	long ret = 0;
+
+	return ret;
+}
+
+static int acrn_dev_release(struct inode *inodep, struct file *filep)
+{
+	return 0;
+}
+
+static const struct file_operations fops = {
+	.open = acrn_dev_open,
+	.release = acrn_dev_release,
+	.unlocked_ioctl = acrn_dev_ioctl,
+};
+
+#define EAX_PRIVILEGE_VM	BIT(0)
+
+static int __init acrn_init(void)
+{
+	acrn_hsm_inited = 0;
+	if (x86_hyper_type != X86_HYPER_ACRN)
+		return -ENODEV;
+
+	if (!(cpuid_eax(0x40000001) & EAX_PRIVILEGE_VM))
+		return -EPERM;
+
+	/* Try to dynamically allocate a major number for the device */
+	major = register_chrdev(0, DEVICE_NAME, &fops);
+	if (major < 0) {
+		pr_warn("acrn: failed to register a major number\n");
+		return major;
+	}
+	pr_info("acrn: registered correctly with major number %d\n", major);
+
+	/* Register the device class */
+	acrn_class = class_create(THIS_MODULE, CLASS_NAME);
+	if (IS_ERR(acrn_class)) {
+		unregister_chrdev(major, DEVICE_NAME);
+		pr_warn("acrn: failed to register device class\n");
+		return PTR_ERR(acrn_class);
+	}
+
+	/* Register the device driver */
+	acrn_device = device_create(acrn_class, NULL, MKDEV(major, 0),
+				    NULL, DEVICE_NAME);
+	if (IS_ERR(acrn_device)) {
+		class_destroy(acrn_class);
+		unregister_chrdev(major, DEVICE_NAME);
+		pr_warn("acrn: failed to create the device\n");
+		return PTR_ERR(acrn_device);
+	}
+
+	pr_info("acrn: ACRN Hypervisor service module initialized\n");
+	acrn_hsm_inited = 1;
+	return 0;
+}
+
+static void __exit acrn_exit(void)
+{
+	if (!acrn_hsm_inited)
+		return;
+
+	device_destroy(acrn_class, MKDEV(major, 0));
+	class_unregister(acrn_class);
+	class_destroy(acrn_class);
+	unregister_chrdev(major, DEVICE_NAME);
+	pr_info("acrn: exit\n");
+}
+
+module_init(acrn_init);
+module_exit(acrn_exit);
+
+MODULE_AUTHOR("Intel");
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("This is a char device driver, acts as a route\n"
+		"responsible for transferring IO requsts from other modules\n"
+		"either in user-space or in kernel to and from ACRN hypervisor\n");
+MODULE_VERSION("0.1");
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
