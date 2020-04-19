Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 833491AF94F
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Apr 2020 12:26:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D17AF80AE0;
	Sun, 19 Apr 2020 10:26:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ljFz2ZmhIITt; Sun, 19 Apr 2020 10:26:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 753C785535;
	Sun, 19 Apr 2020 10:26:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 727891BF2B4
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 10:26:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 6F4E285513
 for <devel@linuxdriverproject.org>; Sun, 19 Apr 2020 10:26:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lfxQ-cJTeXDt for <devel@linuxdriverproject.org>;
 Sun, 19 Apr 2020 10:26:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 42BDD854E7
 for <devel@driverdev.osuosl.org>; Sun, 19 Apr 2020 10:26:10 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id g12so7841291wmh.3
 for <devel@driverdev.osuosl.org>; Sun, 19 Apr 2020 03:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=cXlJdjHIYvgJredFxr6P4Ui/kJNSOl4LGkiNXTENQ+8=;
 b=AquepurCmvh0bNvzbQ89ytbelJOqj6RBFaMPPkCGancdt0kAO57xpaLSws/Sh7mqDh
 X/Hf6n3wkewETplAIRCC6SCL6ps3+5iUOqs8p0oEU2SvNElO0AYojLBfA/eUhn9q8HcG
 RVxGZXyVj+ffbZnu1PIpsapQWwzYPVXZjlS95+GIv55sd5U9aQI52aZ3wwLWQyY9BJsP
 1kkDZuWNJtODErs0z+nib/pu5lWiP4rFJoLRdY5KVv7pdfG8FTnGjOca1JRDNOO8D1L2
 mSATKgZntGvv1oCqFpi1U/sIhzlJrdTRwiuk2fDQqDvMuXHRUkHWai8izO/moHHTW4ES
 Re+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=cXlJdjHIYvgJredFxr6P4Ui/kJNSOl4LGkiNXTENQ+8=;
 b=E4unnLPqsDzGHFDLWkK4baYHGTnHLFHRIkHhZlPB4ncVEWAsuHetQvXvsZtR1+nF+5
 3aHg47RiSY/n+qHMguBZWkYwpyToPIM4mNctvIcJhSgQlropg83BPggiWgOSDUz+5tQv
 YRBRvMZ3AUDVPscUO4GfwisBhv6CGHYag4rYC7X8w44LoP/f3Q7jLmqgIiBNxB7EsBr9
 kiolRyYVlFFB2ke1OaH3wRdQJCc4QVwOOauTXM0bezgC43Mi5Tphjy7a6eWXDN+HDVZg
 a7Br5FrMV4YPbVVWaVhH5dR9/j2TXefJl1ENuOc4UT734eepF68e4wi7oZO8g7OT4uZq
 D8XA==
X-Gm-Message-State: AGi0PuYqN8c94b6vj69v2ljfVX7CHO2ZfVOOx4dWOiUjq0KFly6OXumt
 Qjjy6X3c8qEOg0u+HpTtxHY=
X-Google-Smtp-Source: APiQypLk/yW8O5YfajOYV1Du5b/WLNvAFNPXDeZFPiaoJs0680XPcZB/mnG7mBmDB8Jgh9K15+u7Ew==
X-Received: by 2002:a1c:6402:: with SMTP id y2mr12439639wmb.116.1587291968468; 
 Sun, 19 Apr 2020 03:26:08 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.57.threembb.co.uk. [188.29.165.57])
 by smtp.gmail.com with ESMTPSA id
 s14sm14744073wmh.18.2020.04.19.03.26.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 19 Apr 2020 03:26:08 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH] staging: vt6656: Move firmware functions into main_usb.
Message-ID: <7b384871-826b-9365-e3ed-5717ecefd31c@gmail.com>
Date: Sun, 19 Apr 2020 11:26:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>,
 Oscar Carter <oscar.carter@gmx.com>, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The firmware function are not that complicated so
move them into main_usb as static functions in callers
visibility

Firmware definitions moved to device.h and MODULE_FIRMWARE
move to below module_usb_driver.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/Makefile   |   3 +-
 drivers/staging/vt6656/device.h   |   4 ++
 drivers/staging/vt6656/firmware.c | 106 ------------------------------
 drivers/staging/vt6656/firmware.h |  25 -------
 drivers/staging/vt6656/main_usb.c |  81 ++++++++++++++++++++++-
 5 files changed, 85 insertions(+), 134 deletions(-)
 delete mode 100644 drivers/staging/vt6656/firmware.c
 delete mode 100644 drivers/staging/vt6656/firmware.h

diff --git a/drivers/staging/vt6656/Makefile b/drivers/staging/vt6656/Makefile
index 375f54e9f58b..a0f3862dea75 100644
--- a/drivers/staging/vt6656/Makefile
+++ b/drivers/staging/vt6656/Makefile
@@ -13,7 +13,6 @@ vt6656_stage-y +=	main_usb.o \
 			key.o \
 			rf.o \
 			usbpipe.o \
-			channel.o \
-			firmware.o
+			channel.o
 
 obj-$(CONFIG_VT6656) +=	vt6656_stage.o
diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index 1630d2163a23..613062ad0122 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -73,6 +73,10 @@
 
 #define DEVICE_VERSION			"mac80211"
 
+#define FIRMWARE_VERSION		0x133		/* version 1.51 */
+#define FIRMWARE_NAME			"vntwusb.fw"
+#define FIRMWARE_CHUNK_SIZE		0x400
+
 #define CONFIG_PATH			"/etc/vntconfiguration.dat"
 
 #define MAX_UINTS			8
diff --git a/drivers/staging/vt6656/firmware.c b/drivers/staging/vt6656/firmware.c
deleted file mode 100644
index 70358d427211..000000000000
--- a/drivers/staging/vt6656/firmware.c
+++ /dev/null
@@ -1,106 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0+
-/*
- * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
- * All rights reserved.
- *
- * File: baseband.c
- *
- * Purpose: Implement functions to access baseband
- *
- * Author: Yiching Chen
- *
- * Date: May 20, 2004
- *
- * Functions:
- *
- * Revision History:
- *
- */
-
-#include <linux/compiler.h>
-#include "firmware.h"
-#include "usbpipe.h"
-
-#define FIRMWARE_VERSION	0x133		/* version 1.51 */
-#define FIRMWARE_NAME		"vntwusb.fw"
-
-#define FIRMWARE_CHUNK_SIZE	0x400
-
-int vnt_download_firmware(struct vnt_private *priv)
-{
-	struct device *dev = &priv->usb->dev;
-	const struct firmware *fw;
-	u16 length;
-	int ii;
-	int ret = 0;
-
-	dev_dbg(dev, "---->Download firmware\n");
-
-	ret = request_firmware(&fw, FIRMWARE_NAME, dev);
-	if (ret) {
-		dev_err(dev, "firmware file %s request failed (%d)\n",
-			FIRMWARE_NAME, ret);
-		goto end;
-	}
-
-	for (ii = 0; ii < fw->size; ii += FIRMWARE_CHUNK_SIZE) {
-		length = min_t(int, fw->size - ii, FIRMWARE_CHUNK_SIZE);
-
-		ret = vnt_control_out(priv, 0, 0x1200 + ii, 0x0000, length,
-				      fw->data + ii);
-		if (ret)
-			goto free_fw;
-
-		dev_dbg(dev, "Download firmware...%d %zu\n", ii, fw->size);
-	}
-
-free_fw:
-	release_firmware(fw);
-end:
-	return ret;
-}
-MODULE_FIRMWARE(FIRMWARE_NAME);
-
-int vnt_firmware_branch_to_sram(struct vnt_private *priv)
-{
-	dev_dbg(&priv->usb->dev, "---->Branch to Sram\n");
-
-	return vnt_control_out(priv, 1, 0x1200, 0x0000, 0, NULL);
-}
-
-int vnt_check_firmware_version(struct vnt_private *priv)
-{
-	int ret = 0;
-
-	ret = vnt_control_in(priv, MESSAGE_TYPE_READ, 0,
-			     MESSAGE_REQUEST_VERSION, 2,
-			     (u8 *)&priv->firmware_version);
-	if (ret) {
-		dev_dbg(&priv->usb->dev,
-			"Could not get firmware version: %d.\n", ret);
-		goto end;
-	}
-
-	dev_dbg(&priv->usb->dev, "Firmware Version [%04x]\n",
-		priv->firmware_version);
-
-	if (priv->firmware_version == 0xFFFF) {
-		dev_dbg(&priv->usb->dev, "In Loader.\n");
-		ret = -EINVAL;
-		goto end;
-	}
-
-	if (priv->firmware_version < FIRMWARE_VERSION) {
-		/* branch to loader for download new firmware */
-		ret = vnt_firmware_branch_to_sram(priv);
-		if (ret) {
-			dev_dbg(&priv->usb->dev,
-				"Could not branch to SRAM: %d.\n", ret);
-		} else {
-			ret = -EINVAL;
-		}
-	}
-
-end:
-	return ret;
-}
diff --git a/drivers/staging/vt6656/firmware.h b/drivers/staging/vt6656/firmware.h
deleted file mode 100644
index 161126faf396..000000000000
--- a/drivers/staging/vt6656/firmware.h
+++ /dev/null
@@ -1,25 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0+ */
-/*
- * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
- * All rights reserved.
- *
- * File: firmware.h
- *
- * Purpose: Version and Release Information
- *
- * Author: Yiching Chen
- *
- * Date: May 20, 2004
- *
- */
-
-#ifndef __FIRMWARE_H__
-#define __FIRMWARE_H__
-
-#include "device.h"
-
-int vnt_download_firmware(struct vnt_private *priv);
-int vnt_firmware_branch_to_sram(struct vnt_private *priv);
-int vnt_check_firmware_version(struct vnt_private *priv);
-
-#endif /* __FIRMWARE_H__ */
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index b9e809ccd264..3268d86fe93b 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -33,7 +33,6 @@
 #include "wcmd.h"
 #include "rxtx.h"
 #include "rf.h"
-#include "firmware.h"
 #include "usbpipe.h"
 #include "channel.h"
 
@@ -103,6 +102,84 @@ static void vnt_set_options(struct vnt_private *priv)
 	priv->exist_sw_net_addr = false;
 }
 
+static int vnt_download_firmware(struct vnt_private *priv)
+{
+	struct device *dev = &priv->usb->dev;
+	const struct firmware *fw;
+	u16 length;
+	int ii;
+	int ret = 0;
+
+	dev_dbg(dev, "---->Download firmware\n");
+
+	ret = request_firmware(&fw, FIRMWARE_NAME, dev);
+	if (ret) {
+		dev_err(dev, "firmware file %s request failed (%d)\n",
+			FIRMWARE_NAME, ret);
+		goto end;
+	}
+
+	for (ii = 0; ii < fw->size; ii += FIRMWARE_CHUNK_SIZE) {
+		length = min_t(int, fw->size - ii, FIRMWARE_CHUNK_SIZE);
+
+		ret = vnt_control_out(priv, 0, 0x1200 + ii, 0x0000, length,
+				      fw->data + ii);
+		if (ret)
+			goto free_fw;
+
+		dev_dbg(dev, "Download firmware...%d %zu\n", ii, fw->size);
+	}
+
+free_fw:
+	release_firmware(fw);
+end:
+	return ret;
+}
+
+static int vnt_firmware_branch_to_sram(struct vnt_private *priv)
+{
+	dev_dbg(&priv->usb->dev, "---->Branch to Sram\n");
+
+	return vnt_control_out(priv, 1, 0x1200, 0x0000, 0, NULL);
+}
+
+static int vnt_check_firmware_version(struct vnt_private *priv)
+{
+	int ret = 0;
+
+	ret = vnt_control_in(priv, MESSAGE_TYPE_READ, 0,
+			     MESSAGE_REQUEST_VERSION, 2,
+			     (u8 *)&priv->firmware_version);
+	if (ret) {
+		dev_dbg(&priv->usb->dev,
+			"Could not get firmware version: %d.\n", ret);
+		goto end;
+	}
+
+	dev_dbg(&priv->usb->dev, "Firmware Version [%04x]\n",
+		priv->firmware_version);
+
+	if (priv->firmware_version == 0xFFFF) {
+		dev_dbg(&priv->usb->dev, "In Loader.\n");
+		ret = -EINVAL;
+		goto end;
+	}
+
+	if (priv->firmware_version < FIRMWARE_VERSION) {
+		/* branch to loader for download new firmware */
+		ret = vnt_firmware_branch_to_sram(priv);
+		if (ret) {
+			dev_dbg(&priv->usb->dev,
+				"Could not branch to SRAM: %d.\n", ret);
+		} else {
+			ret = -EINVAL;
+		}
+	}
+
+end:
+	return ret;
+}
+
 /*
  * initialization of MAC & BBP registers
  */
@@ -1070,3 +1147,5 @@ static struct usb_driver vt6656_driver = {
 };
 
 module_usb_driver(vt6656_driver);
+
+MODULE_FIRMWARE(FIRMWARE_NAME);
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
