Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 336381748E0
	for <lists+driverdev-devel@lfdr.de>; Sat, 29 Feb 2020 20:30:07 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C982185BD0;
	Sat, 29 Feb 2020 19:30:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 99pBSLpsprwz; Sat, 29 Feb 2020 19:30:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 882B785BB8;
	Sat, 29 Feb 2020 19:30:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 50E5B1BF358
 for <devel@linuxdriverproject.org>; Sat, 29 Feb 2020 19:30:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 49E7B8619A
 for <devel@linuxdriverproject.org>; Sat, 29 Feb 2020 19:30:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 36tHAU2N0waA for <devel@linuxdriverproject.org>;
 Sat, 29 Feb 2020 19:29:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 49686860D2
 for <devel@driverdev.osuosl.org>; Sat, 29 Feb 2020 19:29:59 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id p9so7086960wmc.2
 for <devel@driverdev.osuosl.org>; Sat, 29 Feb 2020 11:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=w5vEkyoOl+Ezm0+zDepgiNeDHkQLkere0DjeAVL4ezA=;
 b=qcqOA5nLHXm1JkABeNn0ekmYYuqGlo4k81IVZZ5/9FpQ8u2e0XpCUU6IiD78VSfjYC
 uNeWjgI8HXjkHBjYNMjq5XPNA4JvUyQ/Q5FpIv470NBEebOx7tp1suzW5HkaahEHO7x/
 pI4w59xE7LJ1+O9wbed3oqOvHUF11IP7xdyob4cp1Wy8jquT8qQ7hh0NvXb9yZWfqsZz
 Ti8jdLCey+i4mlj7oNoiXou/CwtFhlSHJh5wzwOLAqEMjv3t05YxK0XJkhfVmqwP5BSI
 8LtBZub52KqOrGzUS4GjoKYy6WCA8tw5mzEuQQGJPqVxL1Bguzh4nnEmltPU1PCLLAKD
 25Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=w5vEkyoOl+Ezm0+zDepgiNeDHkQLkere0DjeAVL4ezA=;
 b=ChF/+KyLgCprpprG1ezRZjp0iI4L763Zd2vL+zua4GPQ0qjXAn7+pme99SzhqG9vTW
 i5r01nNRUmpgBjqPqifAy2Qm7lwvOYIFj9TIlXaDGKTqqKr2uJ+fZFZtedM4WRdqDRLg
 FkrWFKpr0jeSM5G5mogSctbsyobXDSI0qcGT9sNA0krAJyqi1pQakFVnY5rSJGhrAND1
 ttHFpqeAjHcxdrn0QMsf+nvJYY8dZgkaWQVrdqEzt/4a3z0aIMmDKGCBbTtyg2HzWgHj
 DvRqg/uACOcxCEqw+LjUNFqWvvdrLq58z0vrOwcjABwgMYhAMGT7XHVkT8+sBYCme0ZZ
 qSvQ==
X-Gm-Message-State: APjAAAX8nqiM1ybMzZ/WEb0vY2jvCJHnX1e8gmm/VQXKOp1qMUZ5UGm8
 qFo3U1tUp+X8zNkbRae6Ol8=
X-Google-Smtp-Source: APXvYqzzZj/9nZgbdTCuloJJo+oYheRSlsRXmgCMX3q1dAwqW8FSaVAVaAZSXzOWj1B5SGlTg5Cneg==
X-Received: by 2002:a05:600c:294a:: with SMTP id
 n10mr11074048wmd.11.1583004597738; 
 Sat, 29 Feb 2020 11:29:57 -0800 (PST)
Received: from [192.168.43.18] (94.197.121.166.threembb.co.uk.
 [94.197.121.166])
 by smtp.gmail.com with ESMTPSA id o9sm19369573wrw.20.2020.02.29.11.29.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 29 Feb 2020 11:29:57 -0800 (PST)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH] staging: vt6656: Remove STATUS enums from TX path
Message-ID: <21bf299b-63e0-9f65-c7db-6e0b72e0f1d8@gmail.com>
Date: Sat, 29 Feb 2020 19:29:55 +0000
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

Returning standard error code or status variable.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/device.h  | 9 ---------
 drivers/staging/vt6656/rxtx.c    | 4 ++--
 drivers/staging/vt6656/usbpipe.c | 5 ++---
 3 files changed, 4 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index da868adba7c9..5c9991415432 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -256,15 +256,6 @@ struct vnt_interrupt_buffer {
 	bool in_use;
 };
 
-/*++ NDIS related */
-
-enum {
-	STATUS_SUCCESS = 0,
-	STATUS_FAILURE,
-	STATUS_RESOURCES,
-	STATUS_PENDING,
-};
-
 /* flags for options */
 #define DEVICE_FLAGS_UNPLUG		0
 #define DEVICE_FLAGS_DISCONNECTED	1
diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 1003808ac4ad..9439d190f431 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -704,7 +704,7 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 
 	spin_lock_irqsave(&priv->lock, flags);
 
-	if (vnt_tx_context(priv, tx_context) != STATUS_PENDING) {
+	if (vnt_tx_context(priv, tx_context)) {
 		spin_unlock_irqrestore(&priv->lock, flags);
 		return -EIO;
 	}
@@ -797,7 +797,7 @@ static int vnt_beacon_xmit(struct vnt_private *priv, struct sk_buff *skb)
 
 	spin_lock_irqsave(&priv->lock, flags);
 
-	if (vnt_tx_context(priv, context) != STATUS_PENDING)
+	if (vnt_tx_context(priv, context))
 		ieee80211_free_txskb(priv->hw, context->skb);
 
 	spin_unlock_irqrestore(&priv->lock, flags);
diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index 7bfccc48a366..e93c2175543f 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -317,7 +317,7 @@ int vnt_tx_context(struct vnt_private *priv,
 
 	if (test_bit(DEVICE_FLAGS_DISCONNECTED, &priv->flags)) {
 		context->in_use = false;
-		return STATUS_RESOURCES;
+		return -ENODEV;
 	}
 
 	usb_fill_bulk_urb(urb,
@@ -333,8 +333,7 @@ int vnt_tx_context(struct vnt_private *priv,
 		dev_dbg(&priv->usb->dev, "Submit Tx URB failed %d\n", status);
 
 		context->in_use = false;
-		return STATUS_FAILURE;
 	}
 
-	return STATUS_PENDING;
+	return status;
 }
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
