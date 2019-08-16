Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3488F8F5
	for <lists+driverdev-devel@lfdr.de>; Fri, 16 Aug 2019 04:33:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 1ECD123039;
	Fri, 16 Aug 2019 02:33:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id aHZI+ojFHIJu; Fri, 16 Aug 2019 02:33:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0E78F204E2;
	Fri, 16 Aug 2019 02:33:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A97B01BF2BD
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A6F9B86427
 for <devel@linuxdriverproject.org>; Fri, 16 Aug 2019 02:33:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aacWeAi-tz4R for <devel@linuxdriverproject.org>;
 Fri, 16 Aug 2019 02:33:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id ED88086374
 for <devel@driverdev.osuosl.org>; Fri, 16 Aug 2019 02:33:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Aug 2019 19:33:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="194894506"
Received: from genxtest-ykzhao.sh.intel.com ([10.239.143.71])
 by fmsmga001.fm.intel.com with ESMTP; 15 Aug 2019 19:33:07 -0700
From: Zhao Yakui <yakui.zhao@intel.com>
To: x86@kernel.org, linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [RFC PATCH 06/15] drivers/acrn: add the support of querying ACRN api
 version
Date: Fri, 16 Aug 2019 10:25:47 +0800
Message-Id: <1565922356-4488-7-git-send-email-yakui.zhao@intel.com>
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
Cc: Zhao Yakui <yakui.zhao@intel.com>, Jason Chen CJ <jason.cj.chen@intel.com>,
 Liu Shuo <shuo.a.liu@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

In order to assure that the ACRN module can work with the required ACRN
hypervisor, it needs to check whether the required version is consistent
with the queried version from ACRN ypervisor. If it is inconsistent, it
won't coninue the initialization of ACRN_HSM module.
Similarly the user-space module also needs to check the driver version.

Co-developed-by: Jason Chen CJ <jason.cj.chen@intel.com>
Signed-off-by: Jason Chen CJ <jason.cj.chen@intel.com>
Co-developed-by: Liu Shuo <shuo.a.liu@intel.com>
Signed-off-by: Liu Shuo <shuo.a.liu@intel.com>
Signed-off-by: Zhao Yakui <yakui.zhao@intel.com>
---
 drivers/staging/acrn/acrn_dev.c           | 47 +++++++++++++++++++++++++++++++
 include/uapi/linux/acrn/acrn_ioctl_defs.h | 32 +++++++++++++++++++++
 2 files changed, 79 insertions(+)
 create mode 100644 include/uapi/linux/acrn/acrn_ioctl_defs.h

diff --git a/drivers/staging/acrn/acrn_dev.c b/drivers/staging/acrn/acrn_dev.c
index 55a7612..57cd2bb 100644
--- a/drivers/staging/acrn/acrn_dev.c
+++ b/drivers/staging/acrn/acrn_dev.c
@@ -18,13 +18,22 @@
 #include <linux/kdev_t.h>
 #include <linux/kernel.h>
 #include <linux/init.h>
+#include <linux/io.h>
 #include <linux/module.h>
+#include <linux/uaccess.h>
+#include <linux/slab.h>
 #include <asm/acrn.h>
 #include <asm/hypervisor.h>
+#include <linux/acrn/acrn_ioctl_defs.h>
+
+#include "acrn_hypercall.h"
 
 #define  DEVICE_NAME "acrn_hsm"
 #define  CLASS_NAME  "acrn"
 
+#define ACRN_API_VERSION_MAJOR	1
+#define ACRN_API_VERSION_MINOR	0
+
 static int	acrn_hsm_inited;
 static int	major;
 static struct class	*acrn_class;
@@ -44,6 +53,19 @@ long acrn_dev_ioctl(struct file *filep,
 {
 	long ret = 0;
 
+	if (ioctl_num == IC_GET_API_VERSION) {
+		struct api_version api_version;
+
+		api_version.major_version = ACRN_API_VERSION_MAJOR;
+		api_version.minor_version = ACRN_API_VERSION_MINOR;
+
+		if (copy_to_user((void *)ioctl_param, &api_version,
+				 sizeof(api_version)))
+			return -EFAULT;
+
+		return 0;
+	}
+
 	return ret;
 }
 
@@ -59,9 +81,12 @@ static const struct file_operations fops = {
 };
 
 #define EAX_PRIVILEGE_VM	BIT(0)
+#define SUPPORT_HV_API_VERSION_MAJOR	1
+#define SUPPORT_HV_API_VERSION_MINOR	0
 
 static int __init acrn_init(void)
 {
+	struct api_version *api_version;
 	acrn_hsm_inited = 0;
 	if (x86_hyper_type != X86_HYPER_ACRN)
 		return -ENODEV;
@@ -69,6 +94,28 @@ static int __init acrn_init(void)
 	if (!(cpuid_eax(0x40000001) & EAX_PRIVILEGE_VM))
 		return -EPERM;
 
+	api_version = kmalloc(sizeof(*api_version), GFP_KERNEL);
+	if (!api_version)
+		return -ENOMEM;
+
+	if (hcall_get_api_version(virt_to_phys(api_version)) < 0) {
+		pr_err("acrn: failed to get api version from Hypervisor !\n");
+		kfree(api_version);
+		return -EINVAL;
+	}
+
+	if (api_version->major_version >= SUPPORT_HV_API_VERSION_MAJOR &&
+	    api_version->minor_version >= SUPPORT_HV_API_VERSION_MINOR) {
+		pr_info("acrn: hv api version %d.%d\n",
+			api_version->major_version, api_version->minor_version);
+		kfree(api_version);
+	} else {
+		pr_err("acrn: not support hv api version %d.%d!\n",
+		       api_version->major_version, api_version->minor_version);
+		kfree(api_version);
+		return -EINVAL;
+	}
+
 	/* Try to dynamically allocate a major number for the device */
 	major = register_chrdev(0, DEVICE_NAME, &fops);
 	if (major < 0) {
diff --git a/include/uapi/linux/acrn/acrn_ioctl_defs.h b/include/uapi/linux/acrn/acrn_ioctl_defs.h
new file mode 100644
index 0000000..8dbf69a
--- /dev/null
+++ b/include/uapi/linux/acrn/acrn_ioctl_defs.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause */
+/**
+ * @file acrn_ioctl_defs.h
+ *
+ * ACRN definition for ioctl to user space
+ */
+
+#ifndef __ACRN_IOCTL_DEFS_H__
+#define __ACRN_IOCTL_DEFS_H__
+
+/**
+ * struct api_version - data structure to track ACRN_SRV API version
+ *
+ * @major_version: major version of ACRN_SRV API
+ * @minor_version: minor version of ACRN_SRV API
+ */
+struct api_version {
+	uint32_t major_version;
+	uint32_t minor_version;
+};
+
+/*
+ * Common IOCTL ID definition for DM
+ */
+#define _IC_ID(x, y) (((x) << 24) | (y))
+#define IC_ID 0x43UL
+
+/* General */
+#define IC_ID_GEN_BASE                  0x0UL
+#define IC_GET_API_VERSION             _IC_ID(IC_ID, IC_ID_GEN_BASE + 0x00)
+
+#endif /* __ACRN_IOCTL_DEFS_H__ */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
