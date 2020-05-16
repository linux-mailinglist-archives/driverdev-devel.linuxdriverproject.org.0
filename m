Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 007481D606F
	for <lists+driverdev-devel@lfdr.de>; Sat, 16 May 2020 12:51:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8136420497;
	Sat, 16 May 2020 10:51:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1JPXHxMRocTE; Sat, 16 May 2020 10:51:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 5AE5120450;
	Sat, 16 May 2020 10:51:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CA2D31BF5DE
 for <devel@linuxdriverproject.org>; Sat, 16 May 2020 10:51:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C522F87A58
 for <devel@linuxdriverproject.org>; Sat, 16 May 2020 10:51:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LXVkLNKl4Uy3 for <devel@linuxdriverproject.org>;
 Sat, 16 May 2020 10:51:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 9CA9F86469
 for <devel@driverdev.osuosl.org>; Sat, 16 May 2020 10:50:42 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id l18so6303824wrn.6
 for <devel@driverdev.osuosl.org>; Sat, 16 May 2020 03:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=lEXuPvFGjE4malU7fQB2EUdQISjNfzYyGgcDPxh2TpY=;
 b=ROksojIEr6T11iwZiyy0Wxqos6BCJayDicZzAa9sQUtvbLFJ0UbHS2HaMPihlf+6rN
 rhKD5IGnTlR4TAlLOMxUDWFRBoHO3ettjdEMHkzYCMPP3M728lS0/xZ7LJhjyEshelSm
 k3GwtVvkLLVuYPS3g4c9Gn79j+ntnQhYuMrnZSw+vtTzbdyj2qK1YCAC1sleWZ5QU+nm
 r1AyAL5lMPc/oxlyr+WmvUovGuQ+eztk1+RfURedDA6+mgMhuMwXLkDk8GRQizkANOPK
 fEcDO/FYIsLJkOtqlYNx+KGTJqRo5b7B8S11JlT3o2D8B3YFkAFBoye9bUAJps9EJRCj
 iInA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=lEXuPvFGjE4malU7fQB2EUdQISjNfzYyGgcDPxh2TpY=;
 b=i6TpQVGXwkygRIp528brA/8wBe11cD+9mPPma79PCGIKrDKX1yl+S/q2nizELOWyfB
 fSs6dYhlLbu17FNtV/o5gmcms+SxW+Pld0/n3drt7BY8wS9FKtWi6e4HeeVCJdtxnbJg
 LKfTuAaQXp1CbkhW0Y7ebe4V/yU9YlC5y9wEC+ZjYp8WwZYRFv5AVn/klWx7uw2otazr
 7MGStP27P7MLH7LugoncUQA4S/4fBTP+jpR8GRayud/Q6pMA1lWElZnvfdUiWbPjNmJ/
 ufp+b1hZSnfJhQYlAlz2WxRwEAZ0mOD97XGQtkZJtZNZUsy1hbVSnjZdVhnaR3bV5J6v
 jsVw==
X-Gm-Message-State: AOAM5305FyZG6I5DlxYaG6EjSOBHpXP9i2f8YzBGeDmbrFM8/Rd8Kom3
 1+T7znED0Bu6RIJriMf/Szq74nJ6
X-Google-Smtp-Source: ABdhPJyNNGmFTmra3dAaZyz2R74a6zJ9M7LmM+cDlMsNyAeE8StPA2n6ZCUSMG5RugNNbetAP7Q96g==
X-Received: by 2002:a5d:4c86:: with SMTP id z6mr8702803wrs.279.1589626240978; 
 Sat, 16 May 2020 03:50:40 -0700 (PDT)
Received: from [192.168.43.18] ([185.69.145.77])
 by smtp.gmail.com with ESMTPSA id m65sm7413289wmm.17.2020.05.16.03.50.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 May 2020 03:50:40 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 4/4] staging: vt6656: use usb_anchor for tx queue.
Message-ID: <077f42f8-4f7f-adc4-5a14-955165cef9f1@gmail.com>
Date: Sat, 16 May 2020 11:50:39 +0100
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

Use usb_anchor to track tx submitted urbs and initialize the
urb as needed in vnt_tx_context.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/device.h   |  2 +-
 drivers/staging/vt6656/main_usb.c | 18 ++++--------------
 drivers/staging/vt6656/usbpipe.c  | 14 ++++++++++++--
 3 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index 08294b21c4e9..d1b19dcaf991 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -238,7 +238,6 @@ struct vnt_rcb {
 struct vnt_usb_send_context {
 	void *priv;
 	struct sk_buff *skb;
-	struct urb *urb;
 	struct ieee80211_hdr *hdr;
 	void *tx_buffer;
 	unsigned int buf_len;
@@ -292,6 +291,7 @@ struct vnt_private {
 
 	/* Variables to track resources for the BULK Out Pipe */
 	struct vnt_usb_send_context *tx_context[CB_MAX_TX_DESC];
+	struct usb_anchor tx_submitted;
 	u32 num_tx_context;
 
 	/* Variables to track resources for the Interrupt In Pipe */
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 930ee424ecdf..c0169e32621b 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -445,17 +445,13 @@ static void vnt_free_tx_bufs(struct vnt_private *priv)
 	struct vnt_usb_send_context *tx_context;
 	int ii;
 
+	usb_kill_anchored_urbs(&priv->tx_submitted);
+
 	for (ii = 0; ii < priv->num_tx_context; ii++) {
 		tx_context = priv->tx_context[ii];
 		if (!tx_context)
 			continue;
 
-		/* deallocate URBs */
-		if (tx_context->urb) {
-			usb_kill_urb(tx_context->urb);
-			usb_free_urb(tx_context->urb);
-		}
-
 		kfree(tx_context);
 	}
 }
@@ -496,6 +492,8 @@ static int vnt_alloc_bufs(struct vnt_private *priv)
 	struct vnt_rcb *rcb;
 	int ii;
 
+	init_usb_anchor(&priv->tx_submitted);
+
 	for (ii = 0; ii < priv->num_tx_context; ii++) {
 		tx_context = kmalloc(sizeof(*tx_context), GFP_KERNEL);
 		if (!tx_context) {
@@ -506,14 +504,6 @@ static int vnt_alloc_bufs(struct vnt_private *priv)
 		priv->tx_context[ii] = tx_context;
 		tx_context->priv = priv;
 		tx_context->pkt_no = ii;
-
-		/* allocate URBs */
-		tx_context->urb = usb_alloc_urb(0, GFP_KERNEL);
-		if (!tx_context->urb) {
-			ret = -ENOMEM;
-			goto free_tx;
-		}
-
 		tx_context->in_use = false;
 	}
 
diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index 43f1ef32a9ce..2164f45e13ab 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -456,7 +456,7 @@ int vnt_tx_context(struct vnt_private *priv,
 		   struct vnt_usb_send_context *context)
 {
 	int status;
-	struct urb *urb = context->urb;
+	struct urb *urb;
 
 	if (test_bit(DEVICE_FLAGS_DISCONNECTED, &priv->flags)) {
 		context->in_use = false;
@@ -468,6 +468,12 @@ int vnt_tx_context(struct vnt_private *priv,
 		return -E2BIG;
 	}
 
+	urb = usb_alloc_urb(0, GFP_ATOMIC);
+	if (!urb) {
+		context->in_use = false;
+		return -ENOMEM;
+	}
+
 	usb_fill_bulk_urb(urb,
 			  priv->usb,
 			  usb_sndbulkpipe(priv->usb, 3),
@@ -476,12 +482,16 @@ int vnt_tx_context(struct vnt_private *priv,
 			  vnt_tx_context_complete,
 			  context);
 
+	usb_anchor_urb(urb, &priv->tx_submitted);
+
 	status = usb_submit_urb(urb, GFP_ATOMIC);
 	if (status) {
 		dev_dbg(&priv->usb->dev, "Submit Tx URB failed %d\n", status);
-
+		usb_unanchor_urb(urb);
 		context->in_use = false;
 	}
 
+	usb_free_urb(urb);
+
 	return status;
 }
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
