Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B4FCB1D606D
	for <lists+driverdev-devel@lfdr.de>; Sat, 16 May 2020 12:45:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 88E7C204AB;
	Sat, 16 May 2020 10:45:07 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C72HnQ1oV50s; Sat, 16 May 2020 10:45:06 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 48FD120447;
	Sat, 16 May 2020 10:45:05 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2700F1BF5DE
 for <devel@linuxdriverproject.org>; Sat, 16 May 2020 10:45:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 18CC920447
 for <devel@linuxdriverproject.org>; Sat, 16 May 2020 10:45:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xeK+FHMr+mdO for <devel@linuxdriverproject.org>;
 Sat, 16 May 2020 10:45:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by silver.osuosl.org (Postfix) with ESMTPS id B98DE203B0
 for <devel@driverdev.osuosl.org>; Sat, 16 May 2020 10:45:00 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id w7so6238642wre.13
 for <devel@driverdev.osuosl.org>; Sat, 16 May 2020 03:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=HBMtOIlLuh0dSxmXZrr/4mcZt+nHKej+x25g85wOizM=;
 b=MLIXTsyT8CTy2m0XpubsDcvvDcuAxwLuCPZ78AeihNMgaBYJWULU1KpF3h1aH1BTSR
 QGY76Nk+054FW1BPly5bw1WJ8x4wvaDXzjQBqd8WUl0pFvHqkyUc6Qz5qxsqnaaInuOH
 LRgPew2VFNfh5DYWh3HeiIGKX7UNH+5mtCJOJOOVNxMCOP9tJUiWb8nHvKTv5BIf+G6f
 sYDukxEycYSWCLWhVSE+oUSouviotwdfJm43wX3FJ5io2h4b30sDlUTAkVGMyFneRKI9
 tew2jLvOflj9oTvxDRa73m4AdOMxEwYh5yzyTYoQNJy+jXi0KJ2FrDqwTvQHcQiQgI6P
 WDMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=HBMtOIlLuh0dSxmXZrr/4mcZt+nHKej+x25g85wOizM=;
 b=ZobGXkhbotYaGLSm4HUSJlh4IPUhr0X6rK/Ljez0vYB6XJmtXcv4hwzu6nhXEGx++Z
 e9rLPuteyTCXn6eWgTeX8vV9SkL7xIVYBU1c37yurjBGa2crjGShafsWbweNXLfXytSS
 hd10Hlsz2gIvdtOYFtmrYH4mrMV2fcktva20W5NVCJtxgFvmmyRqx6ltyBjiusJEa95L
 bZ7r3rWiBkpb8PVHvkBOWijgAAHIpypTpOETkdiDOB7m0SpWElVa0wcWgN//udCm66er
 RIvX3DXuB3jnBZ4gWkTdGhS+vwqhVR4F1gdWSfnxyJKRZl5370dBziM9yJHpXqijpELj
 otDQ==
X-Gm-Message-State: AOAM533Z8kAAGXPbXsNhfX4Y8aj5DbS5+Po6J/mpHYFqyIf4CYjtvX8K
 4gWJ+xMw6ShL6fCiY6NvMho=
X-Google-Smtp-Source: ABdhPJzwfrXZ7NmvbG60R4IPwSAhn/Oo92R/5KY9FK7QdptvWa0iKqJBgZDe3FhMHzwhW8O4BG53Ig==
X-Received: by 2002:adf:f783:: with SMTP id q3mr9032517wrp.348.1589625899101; 
 Sat, 16 May 2020 03:44:59 -0700 (PDT)
Received: from [192.168.43.18] ([185.69.145.77])
 by smtp.gmail.com with ESMTPSA id a24sm7108957wmb.24.2020.05.16.03.44.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 May 2020 03:44:58 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 3/4] staging: vt6656: vnt_usb_send_context remove variable
 data.
Message-ID: <9416e1a8-bd72-ffb1-5366-78361d053907@gmail.com>
Date: Sat, 16 May 2020 11:44:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
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

A limit is also placed in vnt_tx_context of MAX_TOTAL_SIZE_WITH_ALL_HEADERS
limiting size.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/device.h  | 1 -
 drivers/staging/vt6656/rxtx.c    | 3 ---
 drivers/staging/vt6656/usbpipe.c | 5 +++++
 3 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index 074b98dfac91..08294b21c4e9 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -250,7 +250,6 @@ struct vnt_usb_send_context {
 	u8 pkt_type;
 	u8 need_ack;
 	bool in_use;
-	unsigned char data[MAX_TOTAL_SIZE_WITH_ALL_HEADERS];
 };
 
 /*
diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index cf194c95df03..8f9904c8045c 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -73,9 +73,6 @@ static struct vnt_usb_send_context
 		context = priv->tx_context[ii];
 		if (!context->in_use) {
 			context->in_use = true;
-			memset(context->data, 0,
-			       MAX_TOTAL_SIZE_WITH_ALL_HEADERS);
-
 			context->hdr = NULL;
 
 			return context;
diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index 904645fa0eb0..43f1ef32a9ce 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -463,6 +463,11 @@ int vnt_tx_context(struct vnt_private *priv,
 		return -ENODEV;
 	}
 
+	if (context->buf_len > MAX_TOTAL_SIZE_WITH_ALL_HEADERS) {
+		context->in_use = false;
+		return -E2BIG;
+	}
+
 	usb_fill_bulk_urb(urb,
 			  priv->usb,
 			  usb_sndbulkpipe(priv->usb, 3),
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
