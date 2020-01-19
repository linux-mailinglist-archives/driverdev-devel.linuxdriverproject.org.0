Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F392141DB2
	for <lists+driverdev-devel@lfdr.de>; Sun, 19 Jan 2020 13:04:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EF92C874CF;
	Sun, 19 Jan 2020 12:04:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s92WVoW4PNID; Sun, 19 Jan 2020 12:04:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 820D5874E0;
	Sun, 19 Jan 2020 12:04:42 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 449801BF5A5
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 12:04:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 41C34840E4
 for <devel@linuxdriverproject.org>; Sun, 19 Jan 2020 12:04:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OJChnOEGhhi3 for <devel@linuxdriverproject.org>;
 Sun, 19 Jan 2020 12:04:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id B28C8840B9
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 12:04:38 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id y11so26701927wrt.6
 for <devel@driverdev.osuosl.org>; Sun, 19 Jan 2020 04:04:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=YPMrswRAvOoC2WpuKn1cHBM8FR/BV6hgZwoh3ljDWHQ=;
 b=c0CcjIctPCRQvhk9Egmcf9M5VRncNd3oax6bnvAUEPjOJVsdmB2m9/itliqQnKN5Um
 tCQ8jFEnYyDPLw4a324RnpvxMsy3xoYHjWtPP04wnbF+b0XGFtGtPyIhYsn5rra9Cs33
 tMz+flIfxCE6nrM4uCirkDMLmnAneHNfp3f+X0CJMpazgGWDemLDn5fDR845NEq8Puke
 uOydqCBtCxQtDjV0s2/9gUyYRreI4GwR3BPASTSYLZZDY23ccyEQQr7ACsOlfBe2o0CY
 cGnrjL/Y7/x3DiPWEO/7VAqjOdTrKddpUMTTCprHTRay4w4wKN0mf/VhR0/h9VEactB2
 axbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=YPMrswRAvOoC2WpuKn1cHBM8FR/BV6hgZwoh3ljDWHQ=;
 b=HYwOiigzfPwioxSOYH5JWg4DON2A6uvkZM6z9lXxSQCHy4uBGM2Aiw92Qh7Z2j+sex
 LpS9hFNcrtw4A/eBt/9wQ1iNE8Q1v7o8i6iKboQB/cpx/DEhE/uW2ZfSQWEiBE1ZmZ2W
 kYeq2hYPD+8mjl0zw8JUELPyZlUj+G5SFChHB2d7MgQnIAWgciUmfOrKAqWmQ7wJwP+K
 5XTWFlRZWZ/uNAzsvHmfvtkxyZW6SEe/pTnk2i7HBNO6puBrs/fuk3XaFDx35w+CT1nE
 5ZZWCElXd5IYqEqPMDQjXPBhp/kR+t/c7er5+PQuvKM/aOJ6KyMnY4auWjX2wXPy8LJJ
 ueKQ==
X-Gm-Message-State: APjAAAWdmTUfsZ4tZCZkd4fB8Hi1vchQFxK0aMBA+sJmMp6c0ltdj/ou
 KjMtPy7NvuTcC6fEGV0/QoYoqra4
X-Google-Smtp-Source: APXvYqwtRYCQaslKt66M2gbo6+7UyVSCDa+T16B2ez573iOLPAfzbiTtGFlGU0RiZWzFTSuSW2mviw==
X-Received: by 2002:a05:6000:11c6:: with SMTP id
 i6mr13681968wrx.178.1579435476728; 
 Sun, 19 Jan 2020 04:04:36 -0800 (PST)
Received: from [192.168.43.18] (92.40.176.73.threembb.co.uk. [92.40.176.73])
 by smtp.gmail.com with ESMTPSA id f1sm43852796wrp.93.2020.01.19.04.04.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 19 Jan 2020 04:04:36 -0800 (PST)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 5/5] staging: vt6656: Remove memory buffer from
 vnt_download_firmware.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <be025ed0-204d-e957-4bc9-963e841fcb2c@gmail.com>
Date: Sun, 19 Jan 2020 12:04:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
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
Cc: "devel@driverdev.osuosl.org" <devel@driverdev.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

The memory buffer is being done twice here as vnt_control_out passes
it straight to kmemdup.

Remove buffer and add const to the variable in vnt_control_out to pass
the pointer to it.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/firmware.c | 14 ++------------
 drivers/staging/vt6656/usbpipe.c  |  2 +-
 drivers/staging/vt6656/usbpipe.h  |  2 +-
 3 files changed, 4 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/vt6656/firmware.c b/drivers/staging/vt6656/firmware.c
index 60a00af250bf..70358d427211 100644
--- a/drivers/staging/vt6656/firmware.c
+++ b/drivers/staging/vt6656/firmware.c
@@ -30,7 +30,6 @@ int vnt_download_firmware(struct vnt_private *priv)
 {
 	struct device *dev = &priv->usb->dev;
 	const struct firmware *fw;
-	void *buffer = NULL;
 	u16 length;
 	int ii;
 	int ret = 0;
@@ -44,26 +43,17 @@ int vnt_download_firmware(struct vnt_private *priv)
 		goto end;
 	}
 
-	buffer = kmalloc(FIRMWARE_CHUNK_SIZE, GFP_KERNEL);
-	if (!buffer) {
-		ret = -ENOMEM;
-		goto free_fw;
-	}
-
 	for (ii = 0; ii < fw->size; ii += FIRMWARE_CHUNK_SIZE) {
 		length = min_t(int, fw->size - ii, FIRMWARE_CHUNK_SIZE);
-		memcpy(buffer, fw->data + ii, length);
 
 		ret = vnt_control_out(priv, 0, 0x1200 + ii, 0x0000, length,
-				      buffer);
+				      fw->data + ii);
 		if (ret)
-			goto free_buffer;
+			goto free_fw;
 
 		dev_dbg(dev, "Download firmware...%d %zu\n", ii, fw->size);
 	}
 
-free_buffer:
-	kfree(buffer);
 free_fw:
 	release_firmware(fw);
 end:
diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index d977d4777e4f..7bfccc48a366 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -34,7 +34,7 @@
 #define USB_CTL_WAIT	500 /* ms */
 
 int vnt_control_out(struct vnt_private *priv, u8 request, u16 value,
-		    u16 index, u16 length, u8 *buffer)
+		    u16 index, u16 length, const u8 *buffer)
 {
 	int ret = 0;
 	u8 *usb_buffer;
diff --git a/drivers/staging/vt6656/usbpipe.h b/drivers/staging/vt6656/usbpipe.h
index b65d9c01a211..4e3341bc3221 100644
--- a/drivers/staging/vt6656/usbpipe.h
+++ b/drivers/staging/vt6656/usbpipe.h
@@ -21,7 +21,7 @@
 #define VNT_REG_BLOCK_SIZE	64
 
 int vnt_control_out(struct vnt_private *priv, u8 request, u16 value,
-		    u16 index, u16 length, u8 *buffer);
+		    u16 index, u16 length, const u8 *buffer);
 int vnt_control_in(struct vnt_private *priv, u8 request, u16 value,
 		   u16 index, u16 length,  u8 *buffer);
 
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
