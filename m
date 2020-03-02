Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BE41765B9
	for <lists+driverdev-devel@lfdr.de>; Mon,  2 Mar 2020 22:16:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CB153204C1;
	Mon,  2 Mar 2020 21:16:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oW9mFghbY-fb; Mon,  2 Mar 2020 21:16:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 8FFE62014A;
	Mon,  2 Mar 2020 21:16:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id ABC211BF366
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 21:16:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id A8ACF86FE7
 for <devel@linuxdriverproject.org>; Mon,  2 Mar 2020 21:16:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GOrjBrOMmRTL for <devel@linuxdriverproject.org>;
 Mon,  2 Mar 2020 21:16:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 30B5686EB1
 for <devel@driverdev.osuosl.org>; Mon,  2 Mar 2020 21:16:27 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id n7so1603083wrt.11
 for <devel@driverdev.osuosl.org>; Mon, 02 Mar 2020 13:16:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=8AnoNeDdMH20PXacSn59CEXHM7eY06izLZGO6XE29os=;
 b=WcULC1MazSLvQr+LcM5zwVVaXuY97FoKzhszrsw4F/LwFYLFLVXMHQX3tkfDyezwOa
 tEE7focHjQSacFVL9LLodx+TXUBIYiLuGUjtB0avZ0vFJZFsjeuDz3w+dfAYQVcUq602
 /PRLd50JJi+SjoP7JwnQvCIP7O4aaK2B3IAV3nrIsWZD86RZorxYIFnvrxBvhPko6vht
 iLAWVZlfPhfMWIsUW6USdGq9g1XcOCt7aOH/kG7bYblAkGxOiMdt0Tk0skhMkaj+jVc2
 8NmHYTGLftCpmjuCafaiyQkrsGjMJZWP49hHtRpNX1lJlKMwbbMEFC+yFVBCGiRaSDD2
 rb+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=8AnoNeDdMH20PXacSn59CEXHM7eY06izLZGO6XE29os=;
 b=l4wgc7abvXt2t9hO5WypmZtjww4bcS72WJOq59WbsX6kin6QH7cAkhv7ZUO5SYbROQ
 9zCrJpjipFK0/QNor/nrbuquI07dL2A8mecPMgiFDF2h9vajOpYTrErcp07L69bv7xC2
 9bLKYUWDn7QrJSNBUdFJDTrxY3exugiFkxBUd1qdanNGWgthPakDYzMCamLUtuoef8DZ
 bgxJuuh8WnzM67rmfAGreTkN9crpBOrR0r9hqfXgXSw17GShKR/MrP/+88cMXGaOPlOI
 9BBpUCJVQE8G3aAkW8R9TIJfZVTzpfAGZ0i9ar9ZepSSgbyYw6VDA36e5PmhzPxLblyV
 vghg==
X-Gm-Message-State: ANhLgQ2sUSfbkiX2SWbE/VPNFLzsAVZfk+MngwE+kJNeZSMyny4t+6rC
 XoaZFTVbKVOizmu9NLPYJ48=
X-Google-Smtp-Source: ADFU+vtS2cViV3B5jAAlKsErJxA4bYnUXiL5wU0FcRrtXG+wMXKEJx0OesI0WMOJE5oeQoXzG64PAQ==
X-Received: by 2002:a5d:4382:: with SMTP id i2mr1351265wrq.424.1583183785458; 
 Mon, 02 Mar 2020 13:16:25 -0800 (PST)
Received: from [192.168.43.18] (94.197.120.139.threembb.co.uk.
 [94.197.120.139])
 by smtp.gmail.com with ESMTPSA id m3sm9482886wrx.9.2020.03.02.13.16.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Mar 2020 13:16:25 -0800 (PST)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: PATCH 2/3] staging: vt6656: Remove function vnt_int_process_data.
Message-ID: <dff3a1d0-4d24-d9ea-2a15-c81fd544bc79@gmail.com>
Date: Mon, 2 Mar 2020 21:16:23 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
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
 linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

call vnt_start_interrupt_urb directly from vnt_start.

Move debug message to vnt_start_interrupt_urb.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/int.c      | 11 -----------
 drivers/staging/vt6656/int.h      |  1 -
 drivers/staging/vt6656/main_usb.c |  2 +-
 drivers/staging/vt6656/usbpipe.c  |  2 ++
 4 files changed, 3 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/vt6656/int.c b/drivers/staging/vt6656/int.c
index fcf92cd1234b..139be3f845c3 100644
--- a/drivers/staging/vt6656/int.c
+++ b/drivers/staging/vt6656/int.c
@@ -23,17 +23,6 @@
 #include "power.h"
 #include "usbpipe.h"
 
-int vnt_int_start_interrupt(struct vnt_private *priv)
-{
-	int ret = 0;
-
-	dev_dbg(&priv->usb->dev, "---->Interrupt Polling Thread\n");
-
-	ret = vnt_start_interrupt_urb(priv);
-
-	return ret;
-}
-
 static int vnt_int_report_rate(struct vnt_private *priv, u8 pkt_no, u8 tsr)
 {
 	struct vnt_usb_send_context *context;
diff --git a/drivers/staging/vt6656/int.h b/drivers/staging/vt6656/int.h
index 8a6d60569ceb..0b7473a7f190 100644
--- a/drivers/staging/vt6656/int.h
+++ b/drivers/staging/vt6656/int.h
@@ -41,7 +41,6 @@ struct vnt_interrupt_data {
 	u8 sw[2];
 } __packed;
 
-int vnt_int_start_interrupt(struct vnt_private *priv);
 void vnt_int_process_data(struct vnt_private *priv);
 
 #endif /* __INT_H__ */
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 9135aad0863d..a22f88b1f5e9 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -549,7 +549,7 @@ static int vnt_start(struct ieee80211_hw *hw)
 
 	priv->int_interval = 1;  /* bInterval is set to 1 */
 
-	ret = vnt_int_start_interrupt(priv);
+	ret = vnt_start_interrupt_urb(priv);
 	if (ret)
 		goto free_all;
 
diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index e93c2175543f..0e29dc2f4b0d 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -176,6 +176,8 @@ int vnt_start_interrupt_urb(struct vnt_private *priv)
 {
 	int ret = 0;
 
+	dev_dbg(&priv->usb->dev, "---->Interrupt Polling Thread\n");
+
 	if (priv->int_buf.in_use) {
 		ret = -EBUSY;
 		goto err;
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
