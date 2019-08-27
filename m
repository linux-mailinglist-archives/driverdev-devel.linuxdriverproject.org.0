Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 297189F4A3
	for <lists+driverdev-devel@lfdr.de>; Tue, 27 Aug 2019 22:59:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 583B588634;
	Tue, 27 Aug 2019 20:59:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GOS34HoKMzCO; Tue, 27 Aug 2019 20:59:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C9FE0885A8;
	Tue, 27 Aug 2019 20:59:53 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id BF5671BF20D
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 20:59:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id B624D2154C
 for <devel@linuxdriverproject.org>; Tue, 27 Aug 2019 20:59:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ogQJAvS3pUz2 for <devel@linuxdriverproject.org>;
 Tue, 27 Aug 2019 20:59:50 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
 [209.85.221.52])
 by silver.osuosl.org (Postfix) with ESMTPS id 3F297214EB
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 20:59:50 +0000 (UTC)
Received: by mail-wr1-f52.google.com with SMTP id s18so235178wrn.1
 for <devel@driverdev.osuosl.org>; Tue, 27 Aug 2019 13:59:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jTWT9NH+cRtP9RbnuJ4gIRSqzgVacE3VGQ/0s2AHQOc=;
 b=IpLeSh+aPKJqSgtwBU4F1PHET6AmUVRW4BdeEeTU2Kfev1d5Iia3qO3jQ0+pajyAcs
 6hgYjYLZkBMOvwGj5cJ9iW1PSgbJzkPpN75tLjzih+vWBumPr+Qo4o+Zt36gfJSNehJh
 qakYM8onSOS/7ydtqKRGt+/wrVBGIDTfOtmaPvnDohbaLAkI86S7kU9eEf/mvdRnHSbS
 BjfW6D64QmigZvAr9HG5FVZYzqQB2Zeg4wXuTcLTW5J62Gl1WSRessXVn3Ht/Qf/sx4b
 lR0H2VQ1YI3zyVOlIY0dfAVBgHmuhawWGoKNfEsMkJFfIWtVUFCuq7fB+TACRVjgSch7
 e1zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jTWT9NH+cRtP9RbnuJ4gIRSqzgVacE3VGQ/0s2AHQOc=;
 b=B1oVnWUkhVUa+P40o0oS/7+ObKtOGrFLgRjf2z6JdOMmf2/dzNyJp76wFnaDroJn24
 GjzLSx55fRT593DGSLYOjduJo7PyUL/CKeLwAF/nzLMPmn/e8MPTJRVAS8ibCwvU1NQK
 PGhaFBCNYirn5jW1mVsbBYQ97uprMBjvjA8ekv9KZ3MOOPXxxtBQ7sINg7iSF4yNCM9Z
 gRADaV4l2nCze335a3a1/UrnepbyU0yaiNlDH63vNinct/klSHWC/I6Rt9w7wohUUBoV
 2IvhpBe4fFIUx7qIPDxGRktcHkCr4EZ/Y9RvNWVwvf3Cf7jH7Zw8YhgGTyXPp+0C1YfZ
 1csA==
X-Gm-Message-State: APjAAAUdNaxPb7QMBzmwPP+VXste4RAPDBcr7HEV+j+EPq1uTp+l+nak
 OBXcOpPlSjdmwpVPxZO9yTuSKA==
X-Google-Smtp-Source: APXvYqztMDWtJ3k2+NO+tD8kybKY9qWdDqe4CouhQt3sU01/wwgA1VQpyWWS1r1HQf9Tx3GSX3v/ng==
X-Received: by 2002:a5d:4284:: with SMTP id k4mr209985wrq.6.1566939588640;
 Tue, 27 Aug 2019 13:59:48 -0700 (PDT)
Received: from arch-late.local (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
 by smtp.gmail.com with ESMTPSA id c15sm439058wrb.80.2019.08.27.13.59.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 13:59:47 -0700 (PDT)
From: Rui Miguel Silva <rui.silva@linaro.org>
To: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: greybus: add missing includes
Date: Tue, 27 Aug 2019 21:59:17 +0100
Message-Id: <20190827205917.8308-1-rui.silva@linaro.org>
X-Mailer: git-send-email 2.22.1
MIME-Version: 1.0
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
Cc: devel@driverdev.osuosl.org, greybus-dev@lists.linaro.org,
 Rui Miguel Silva <rui.silva@linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Before moving greybus core out of staging and moving header files to
include/linux some greybus header files were missing the necessary
includes. This would trigger compilation faillures with some example
errors logged bellow for with CONFIG_KERNEL_HEADER_TEST=y.

So, add the necessary headers to compile clean before relocating the
header files.

./include/linux/greybus/hd.h:23:50: error: unknown type name 'u16'
  int (*cport_disable)(struct gb_host_device *hd, u16 cport_id); ^~~
./include/linux/greybus/greybus_protocols.h:1314:2: error: unknown type name '__u8'
  __u8 data[0];
  ^~~~
./include/linux/greybus/hd.h:24:52: error: unknown type name 'u16'
  int (*cport_connected)(struct gb_host_device *hd, u16 cport_id); ^~~
./include/linux/greybus/hd.h:25:48: error: unknown type name 'u16'
  int (*cport_flush)(struct gb_host_device *hd, u16 cport_id); ^~~
./include/linux/greybus/hd.h:26:51: error: unknown type name 'u16'
  int (*cport_shutdown)(struct gb_host_device *hd, u16 cport_id, ^~~
./include/linux/greybus/hd.h:27:5: error: unknown type name 'u8'
u8 phase, unsigned int timeout);
     ^~
./include/linux/greybus/hd.h:28:50: error: unknown type name 'u16'
  int (*cport_quiesce)(struct gb_host_device *hd, u16 cport_id, ^~~
./include/linux/greybus/hd.h:29:5: error: unknown type name 'size_t'
     size_t peer_space, unsigned int timeout);
     ^~~~~~
./include/linux/greybus/hd.h:29:5: note: 'size_t' is defined in header '<stddef.h>'; did you forget to '#include <stddef.h>'?
./include/linux/greybus/hd.h:1:1:
+#include <stddef.h>
 /* SPDX-License-Identifier: GPL-2.0 */
./include/linux/greybus/hd.h:29:5:
     size_t peer_space, unsigned int timeout);
     ^~~~~~
./include/linux/greybus/hd.h:30:48: error: unknown type name 'u16'
  int (*cport_clear)(struct gb_host_device *hd, u16 cport_id); ^~~
./include/linux/greybus/hd.h:32:49: error: unknown type name 'u16'
  int (*message_send)(struct gb_host_device *hd, u16 dest_cport_id, ^~~
./include/linux/greybus/hd.h:33:32: error: unknown type name 'gfp_t'
struct gb_message *message, gfp_t gfp_mask); ^~~~~
./include/linux/greybus/hd.h:35:55: error: unknown type name 'u16'
  int (*latency_tag_enable)(struct gb_host_device *hd, u16 cport_id);

Reported-by: kbuild test robot <lkp@intel.com>
Reported-by: Gao Xiang <hsiangkao@aol.com>
Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
Acked-by: Alex Elder <elder@kernel.org>
---

v1->v2:
lkp@intel:
  - added greybus_protocols.h include to svc.h header
Alex Elder:
  - remove extra line in operation.h

Looks like lkp can now find missing headers that we can not :),
it must be the config. but it is right.

Greg please note the new include in svc.h may need to be changed
when moving headers to include/linux

 drivers/staging/greybus/bundle.h            | 3 +++
 drivers/staging/greybus/connection.h        | 3 +++
 drivers/staging/greybus/control.h           | 3 +++
 drivers/staging/greybus/greybus_manifest.h  | 3 +++
 drivers/staging/greybus/greybus_protocols.h | 2 ++
 drivers/staging/greybus/hd.h                | 3 +++
 drivers/staging/greybus/interface.h         | 3 +++
 drivers/staging/greybus/manifest.h          | 2 ++
 drivers/staging/greybus/module.h            | 3 +++
 drivers/staging/greybus/operation.h         | 4 ++++
 drivers/staging/greybus/svc.h               | 5 +++++
 11 files changed, 34 insertions(+)

diff --git a/drivers/staging/greybus/bundle.h b/drivers/staging/greybus/bundle.h
index 8734d2055657..69fe5610bb42 100644
--- a/drivers/staging/greybus/bundle.h
+++ b/drivers/staging/greybus/bundle.h
@@ -9,7 +9,10 @@
 #ifndef __BUNDLE_H
 #define __BUNDLE_H
 
+#include <linux/device.h>
 #include <linux/list.h>
+#include <linux/pm_runtime.h>
+#include <linux/types.h>
 
 #define	BUNDLE_ID_NONE	U8_MAX
 
diff --git a/drivers/staging/greybus/connection.h b/drivers/staging/greybus/connection.h
index 5ca3befc0636..d59b7fc1de3e 100644
--- a/drivers/staging/greybus/connection.h
+++ b/drivers/staging/greybus/connection.h
@@ -9,8 +9,11 @@
 #ifndef __CONNECTION_H
 #define __CONNECTION_H
 
+#include <linux/bits.h>
 #include <linux/list.h>
 #include <linux/kfifo.h>
+#include <linux/kref.h>
+#include <linux/workqueue.h>
 
 #define GB_CONNECTION_FLAG_CSD		BIT(0)
 #define GB_CONNECTION_FLAG_NO_FLOWCTRL	BIT(1)
diff --git a/drivers/staging/greybus/control.h b/drivers/staging/greybus/control.h
index 3a29ec05f631..0d4e2ed20fe4 100644
--- a/drivers/staging/greybus/control.h
+++ b/drivers/staging/greybus/control.h
@@ -9,6 +9,9 @@
 #ifndef __CONTROL_H
 #define __CONTROL_H
 
+#include <linux/device.h>
+#include <linux/types.h>
+
 struct gb_control {
 	struct device dev;
 	struct gb_interface *intf;
diff --git a/drivers/staging/greybus/greybus_manifest.h b/drivers/staging/greybus/greybus_manifest.h
index 2cec5cf7a846..1cb60af4febd 100644
--- a/drivers/staging/greybus/greybus_manifest.h
+++ b/drivers/staging/greybus/greybus_manifest.h
@@ -14,6 +14,9 @@
 #ifndef __GREYBUS_MANIFEST_H
 #define __GREYBUS_MANIFEST_H
 
+#include <linux/bits.h>
+#include <linux/types.h>
+
 enum greybus_descriptor_type {
 	GREYBUS_TYPE_INVALID		= 0x00,
 	GREYBUS_TYPE_INTERFACE		= 0x01,
diff --git a/drivers/staging/greybus/greybus_protocols.h b/drivers/staging/greybus/greybus_protocols.h
index ddc73f10eb22..e883edb50ed8 100644
--- a/drivers/staging/greybus/greybus_protocols.h
+++ b/drivers/staging/greybus/greybus_protocols.h
@@ -53,6 +53,8 @@
 #ifndef __GREYBUS_PROTOCOLS_H
 #define __GREYBUS_PROTOCOLS_H
 
+#include <linux/types.h>
+
 /* Fixed IDs for control/svc protocols */
 
 /* SVC switch-port device ids */
diff --git a/drivers/staging/greybus/hd.h b/drivers/staging/greybus/hd.h
index 6cf024a20a58..7be5c065e7c4 100644
--- a/drivers/staging/greybus/hd.h
+++ b/drivers/staging/greybus/hd.h
@@ -9,6 +9,9 @@
 #ifndef __HD_H
 #define __HD_H
 
+#include <linux/device.h>
+#include <linux/types.h>
+
 struct gb_host_device;
 struct gb_message;
 
diff --git a/drivers/staging/greybus/interface.h b/drivers/staging/greybus/interface.h
index 1c00c5bb3ec9..f5ab937348f6 100644
--- a/drivers/staging/greybus/interface.h
+++ b/drivers/staging/greybus/interface.h
@@ -9,6 +9,9 @@
 #ifndef __INTERFACE_H
 #define __INTERFACE_H
 
+#include <linux/device.h>
+#include <linux/types.h>
+
 enum gb_interface_type {
 	GB_INTERFACE_TYPE_INVALID = 0,
 	GB_INTERFACE_TYPE_UNKNOWN,
diff --git a/drivers/staging/greybus/manifest.h b/drivers/staging/greybus/manifest.h
index f3c95a255631..b101af4c2c72 100644
--- a/drivers/staging/greybus/manifest.h
+++ b/drivers/staging/greybus/manifest.h
@@ -9,6 +9,8 @@
 #ifndef __MANIFEST_H
 #define __MANIFEST_H
 
+#include <linux/types.h>
+
 struct gb_interface;
 bool gb_manifest_parse(struct gb_interface *intf, void *data, size_t size);
 
diff --git a/drivers/staging/greybus/module.h b/drivers/staging/greybus/module.h
index b1ebcc6636db..722c344a3a5a 100644
--- a/drivers/staging/greybus/module.h
+++ b/drivers/staging/greybus/module.h
@@ -9,6 +9,9 @@
 #ifndef __MODULE_H
 #define __MODULE_H
 
+#include <linux/device.h>
+#include <linux/types.h>
+
 struct gb_module {
 	struct device dev;
 	struct gb_host_device *hd;
diff --git a/drivers/staging/greybus/operation.h b/drivers/staging/greybus/operation.h
index 40b7b02fff88..96cb99e89034 100644
--- a/drivers/staging/greybus/operation.h
+++ b/drivers/staging/greybus/operation.h
@@ -10,6 +10,10 @@
 #define __OPERATION_H
 
 #include <linux/completion.h>
+#include <linux/kref.h>
+#include <linux/timer.h>
+#include <linux/types.h>
+#include <linux/workqueue.h>
 
 struct gb_operation;
 
diff --git a/drivers/staging/greybus/svc.h b/drivers/staging/greybus/svc.h
index ad01783bac9c..5e400e0c27c8 100644
--- a/drivers/staging/greybus/svc.h
+++ b/drivers/staging/greybus/svc.h
@@ -9,6 +9,11 @@
 #ifndef __SVC_H
 #define __SVC_H
 
+#include <linux/device.h>
+#include <linux/types.h>
+
+#include "greybus_protocols.h"
+
 #define GB_SVC_CPORT_FLAG_E2EFC		BIT(0)
 #define GB_SVC_CPORT_FLAG_CSD_N		BIT(1)
 #define GB_SVC_CPORT_FLAG_CSV_N		BIT(2)
-- 
2.22.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
