Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D993179931
	for <lists+driverdev-devel@lfdr.de>; Wed,  4 Mar 2020 20:46:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8012985264;
	Wed,  4 Mar 2020 19:46:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rWgFstV_6uKu; Wed,  4 Mar 2020 19:46:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 578FF83597;
	Wed,  4 Mar 2020 19:46:08 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D5D381BF589
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 19:46:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id D1DFD204C3
 for <devel@linuxdriverproject.org>; Wed,  4 Mar 2020 19:46:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dfq-6TpwuFfe for <devel@linuxdriverproject.org>;
 Wed,  4 Mar 2020 19:46:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id C698D204A8
 for <devel@driverdev.osuosl.org>; Wed,  4 Mar 2020 19:46:05 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id j16so3992928wrt.3
 for <devel@driverdev.osuosl.org>; Wed, 04 Mar 2020 11:46:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=yQqOnaNgqo9/pU61x9cE5W84q/MMvrOFd9j49w+kVT8=;
 b=oQkubaaCUXECeIMHdsEZ5kDdHWZI1vfkAkbD/bGVQTtzD0hECYz3g1mfG7NgAVOwA+
 RM7FzQUhX0MrzpDR6AyAnF99AyvbX0QA9m4gTgrc3+kzwdvb7waG7C5AmWdo5dABvW9E
 swObt4kml8Buz8sldjwIIb9unhu17/SFqTxoMjGwhXsByqinrrnfQE/IR4GHWADmSR/9
 YyqBoCYiVplGBt4mMRK2z1WfynEk1ynh+DTNgL0ynzP2p0rp21ZGzfMCLezpfaKfKRAG
 ECmOxv7ZcigrF4h+JN6eJGKpVRhNhgVcLMB95zkNeXEbmYDB/Hfl5HFQGLUa2r9btTUI
 d7Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=yQqOnaNgqo9/pU61x9cE5W84q/MMvrOFd9j49w+kVT8=;
 b=PljgKtZStb1oYOy1HF6Eb8BXOepoSRDxvTGPquDOMVOqkK0vwLmj59aHfAdDyXaSem
 YTRjDFgg0RpDvmnJlhRR+meN8qUDDWXfmNL6vezW+4LiLtQF15DhXkR1KfrpEOael6Cd
 wGqVI36Jgjv7lYVHmalLb+b+7gkGZUa7fo45nCBlh0oZL+Yr8SxID7OvmYuF/1P03md1
 MuWydq5YPpO4mDLRNO1BAltFrtkLKxiO5JkgiG8Xl9F1bHhlsPhAtO3LsUgEswG8gECq
 M0wznmoD5mAeJm0N+sucWPIyKDdJrmlB3RPuFF3wK9LCnd80eTXHMiOJ8QwFy8yZlRSN
 qloA==
X-Gm-Message-State: ANhLgQ3d+3RpRmaUa/O2QLD5jmellFfeKQRHNXRogNxZY2qNpCBTDSAU
 jPVhyWImFlnUdWBn4iFWyak=
X-Google-Smtp-Source: ADFU+vunlK+a37LieRWJlBzMTqmN8oDYgcLLYkHvqowrVp7siNYRP3fKIYbkjJy2iuf6t3M5Zba3sQ==
X-Received: by 2002:a5d:4e8b:: with SMTP id e11mr2502804wru.136.1583351164403; 
 Wed, 04 Mar 2020 11:46:04 -0800 (PST)
Received: from [192.168.43.18] (92.40.168.8.threembb.co.uk. [92.40.168.8])
 by smtp.gmail.com with ESMTPSA id a7sm5327252wmj.12.2020.03.04.11.46.03
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 04 Mar 2020 11:46:04 -0800 (PST)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 2/2] staging: vt6656: struct vnt_rcb remove unused in_use.
Message-ID: <130a4078-2502-a381-46c4-b473815e153b@gmail.com>
Date: Wed, 4 Mar 2020 19:46:02 +0000
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

The variable merely toggles true to false and is unused.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/device.h   |  1 -
 drivers/staging/vt6656/main_usb.c |  3 ---
 drivers/staging/vt6656/usbpipe.c  | 16 +++-------------
 3 files changed, 3 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index e94df4685b25..98793e15e80f 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -227,7 +227,6 @@ struct vnt_rcb {
 	void *priv;
 	struct urb *urb;
 	struct sk_buff *skb;
-	int in_use;
 };
 
 /* used to track bulk out irps */
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 41edadc74389..56f81785a118 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -478,9 +478,6 @@ static int vnt_alloc_bufs(struct vnt_private *priv)
 			ret = -ENOMEM;
 			goto free_rx_tx;
 		}
-
-		rcb->in_use = false;
-
 		/* submit rx urb */
 		ret = vnt_submit_rx_urb(priv, rcb);
 		if (ret)
diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index fd2c9d9d6eb4..eae211e5860f 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -393,10 +393,8 @@ static void vnt_submit_rx_urb_complete(struct urb *urb)
 	if (urb->actual_length) {
 		if (vnt_rx_data(priv, rcb, urb->actual_length)) {
 			rcb->skb = dev_alloc_skb(priv->rx_buf_sz);
-			if (!rcb->skb) {
-				rcb->in_use = false;
+			if (!rcb->skb)
 				return;
-			}
 		} else {
 			skb_push(rcb->skb, skb_headroom(rcb->skb));
 			skb_trim(rcb->skb, 0);
@@ -406,11 +404,8 @@ static void vnt_submit_rx_urb_complete(struct urb *urb)
 					       skb_tailroom(rcb->skb));
 	}
 
-	if (usb_submit_urb(urb, GFP_ATOMIC)) {
+	if (usb_submit_urb(urb, GFP_ATOMIC))
 		dev_dbg(&priv->usb->dev, "Failed to re submit rx skb\n");
-
-		rcb->in_use = false;
-	}
 }
 
 int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb)
@@ -433,13 +428,8 @@ int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb)
 			  rcb);
 
 	ret = usb_submit_urb(urb, GFP_ATOMIC);
-	if (ret) {
+	if (ret)
 		dev_dbg(&priv->usb->dev, "Submit Rx URB failed %d\n", ret);
-		goto end;
-	}
-
-	rcb->in_use = true;
-
 end:
 	return ret;
 }
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
