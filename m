Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D2271E3CBB
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 10:54:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6C87D86B2A;
	Wed, 27 May 2020 08:54:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BC0izjLN_3GL; Wed, 27 May 2020 08:54:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 572D984432;
	Wed, 27 May 2020 08:54:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A3DE91BF844
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 08:54:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9F2A6876E7
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 08:54:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b4pbdFdxdp7h for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 08:54:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 636C5876C4
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 08:54:47 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id c3so18917059wru.12
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 01:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=ZMCzFBVJDRT5IaHoNBcbsiWhHcA1gtpx/p/q/7NaI7M=;
 b=aZOQea4w62/wofb5itJP9RhDG/qVhl3KmsEZpqIavK/T3iZ0tsc8bep4lCEaQ9Pu/8
 LY/cZDZ5oeU1k0ZPk1yvtXnUhAn/oHU3zYyQPBIM14nUmqZsGbcl/P/x+JBVV97vbyWn
 TUoLzVL/XVpBy1i12iv0uyo5PZ6E+752b7o09QXn6Qc/GQOxPWkSUJUIPYArHjLwvXPt
 jH9qwYZscglAFM3cyHWXoVPuV/UAqTbld7zeTl4Cw419P3ZxoIUS2VLMDASbp9Hz4IVI
 gxAE+yLDL6RjjWoczOR1ZadlfmfaSY/YmrjuHv3lAKGf9lIllSC1C5RkJqO2zUoxwpCe
 b3lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=ZMCzFBVJDRT5IaHoNBcbsiWhHcA1gtpx/p/q/7NaI7M=;
 b=NSE1aSW0sNopLZwODIN8sLQt7nReeUwqQeOziWLuF6Ow2K14ODU7ivykxFqkklbQEz
 Ocx74atV3FbYLpJr15gYPrlLDfN7SCbbJiQPZaEwUjGHQtj4altwzRmL58kXMYQdAesi
 fFuxGvHQvU11Ac8o8zduU3FvRZWFV48av2zyuxpfLOMGlLTftoIanmetyKQId7+vKBuM
 OS0qXla2PWOQ8Sc5g7pTOmQm05BP7l0OGxAQT9q/0pU++XZ2Th1Ib6PapUDbr8JJJZMf
 6gOt1dv5ji24EaohHwOUeA4J9qYjo2Yv80ICVuJpo/gUez3CDq4buBzGTitSaL555LsG
 DX5w==
X-Gm-Message-State: AOAM533F4uLuY3ncpZry3M+UBp72FSFxQcxN5gMlrfMccgqi0AdtVh5m
 W15WzzAfSQgAh64+kqfxqTk=
X-Google-Smtp-Source: ABdhPJzMa+N07uavW4Kr44sxtOgMfVSk5G63jBtadVDWDn0ZAZpEIWwB2u+pOmhc62L31ZY4H8fklg==
X-Received: by 2002:adf:e587:: with SMTP id l7mr17115499wrm.352.1590569685800; 
 Wed, 27 May 2020 01:54:45 -0700 (PDT)
Received: from [192.168.43.18] ([85.255.237.0])
 by smtp.gmail.com with ESMTPSA id i21sm2201111wml.5.2020.05.27.01.54.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 01:54:45 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 2/2] staging: vt6656: Move vnt_tx_usb_header to vnt_tx_context
Message-ID: <aa6257eb-1758-4e75-ab39-2a15ff6ffa7c@gmail.com>
Date: Wed, 27 May 2020 09:54:44 +0100
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

Move the USB element out of vnt_tx_packet and vnt_beacon_xmit to
vnt_tx_context with sk_buff passed in parameters with the data now
between skb->data and skb->len.

The vnt_tx_usb header is moved from vnt_tx_buffer to usbpipe.h with the
size added to extra_tx_headroom the largest possible size.

The CONTEXT enums types are aligned with usb ones and CONTEXT_MGMT_PACKET
is removed and is never be used.

The skb_push in vnt_tx_packet is now only ever used with
vnt_get_hdr_size with variables tx_bytes and tx_header_size removed.

buf_len in vnt_usb_send_context is no longer used and replaced with
urb->actual_length in vnt_tx_context_complete.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/device.h   |  4 +---
 drivers/staging/vt6656/main_usb.c |  3 ++-
 drivers/staging/vt6656/rxtx.c     | 30 +++++-------------------------
 drivers/staging/vt6656/rxtx.h     |  7 -------
 drivers/staging/vt6656/usbpipe.c  | 21 +++++++++++++++------
 drivers/staging/vt6656/usbpipe.h  |  9 ++++++++-
 6 files changed, 31 insertions(+), 43 deletions(-)

diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index d89f564a13c4..947530fefe94 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -206,8 +206,7 @@ struct vnt_rsp_card_init {
  * Enum of context types for SendPacket
  */
 enum {
-	CONTEXT_DATA_PACKET = 1,
-	CONTEXT_MGMT_PACKET,
+	CONTEXT_DATA_PACKET = 0,
 	CONTEXT_BEACON_PACKET
 };
 
@@ -239,7 +238,6 @@ struct vnt_usb_send_context {
 	void *priv;
 	struct sk_buff *skb;
 	void *tx_buffer;
-	unsigned int buf_len;
 	u32 frame_len;
 	u16 tx_hdr_size;
 	u16 tx_rate;
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index c0169e32621b..8bf851c53f4e 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -1043,7 +1043,8 @@ vt6656_probe(struct usb_interface *intf, const struct usb_device_id *id)
 	ieee80211_hw_set(priv->hw, SUPPORTS_PS);
 	ieee80211_hw_set(priv->hw, PS_NULLFUNC_STACK);
 
-	priv->hw->extra_tx_headroom = sizeof(struct vnt_tx_buffer);
+	priv->hw->extra_tx_headroom =
+		sizeof(struct vnt_tx_buffer) + sizeof(struct vnt_tx_usb_header);
 	priv->hw->max_signal = 100;
 
 	SET_IEEE80211_DEV(priv->hw, &intf->dev);
diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 05b9a9ee0e33..5530c06ffd40 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -512,7 +512,6 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	struct vnt_tx_fifo_head *tx_buffer_head;
 	struct vnt_usb_send_context *tx_context;
 	unsigned long flags;
-	u16 tx_bytes, tx_header_size;
 	u8 pkt_type;
 
 	hdr = (struct ieee80211_hdr *)(skb->data);
@@ -557,21 +556,11 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 		return -ENOMEM;
 	}
 
-	tx_header_size = vnt_get_hdr_size(info);
-	tx_bytes = tx_header_size + skb->len;
-	tx_header_size += sizeof(struct vnt_tx_usb_header);
-
-	tx_buffer = skb_push(skb, tx_header_size);
+	tx_buffer = skb_push(skb, vnt_get_hdr_size(info));
+	tx_context->tx_buffer = tx_buffer;
 	tx_buffer_head = &tx_buffer->fifo_head;
 
-	/* Fill USB header */
-	tx_buffer->usb.tx_byte_count = cpu_to_le16(tx_bytes);
-	tx_buffer->usb.pkt_no = tx_context->pkt_no;
-	tx_buffer->usb.type = 0x00;
-
 	tx_context->type = CONTEXT_DATA_PACKET;
-	tx_context->tx_buffer = skb->data;
-	tx_context->buf_len = skb->len;
 
 	/*Set fifo controls */
 	if (pkt_type == PK_TYPE_11A)
@@ -624,7 +613,7 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 
 	spin_lock_irqsave(&priv->lock, flags);
 
-	if (vnt_tx_context(priv, tx_context)) {
+	if (vnt_tx_context(priv, tx_context, skb)) {
 		dev_kfree_skb(tx_context->skb);
 		spin_unlock_irqrestore(&priv->lock, flags);
 		return -EIO;
@@ -639,14 +628,13 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 
 static int vnt_beacon_xmit(struct vnt_private *priv, struct sk_buff *skb)
 {
-	struct vnt_tx_usb_header *usb;
 	struct vnt_tx_short_buf_head *short_head;
 	struct ieee80211_tx_info *info;
 	struct vnt_usb_send_context *context;
 	struct ieee80211_mgmt *mgmt_hdr;
 	unsigned long flags;
 	u32 frame_size = skb->len + 4;
-	u16 current_rate, count;
+	u16 current_rate;
 
 	spin_lock_irqsave(&priv->lock, flags);
 
@@ -663,7 +651,6 @@ static int vnt_beacon_xmit(struct vnt_private *priv, struct sk_buff *skb)
 
 	mgmt_hdr = (struct ieee80211_mgmt *)skb->data;
 	short_head = skb_push(skb, sizeof(*short_head));
-	count = skb->len;
 
 	if (priv->bb_type == BB_TYPE_11A) {
 		current_rate = RATE_6M;
@@ -706,18 +693,11 @@ static int vnt_beacon_xmit(struct vnt_private *priv, struct sk_buff *skb)
 	if (priv->seq_counter > 0x0fff)
 		priv->seq_counter = 0;
 
-	usb = skb_push(skb, sizeof(*usb));
-	usb->tx_byte_count = cpu_to_le16(count);
-	usb->pkt_no = context->pkt_no;
-	usb->type = 0x01;
-
 	context->type = CONTEXT_BEACON_PACKET;
-	context->tx_buffer = usb;
-	context->buf_len = skb->len;
 
 	spin_lock_irqsave(&priv->lock, flags);
 
-	if (vnt_tx_context(priv, context))
+	if (vnt_tx_context(priv, context, skb))
 		ieee80211_free_txskb(priv->hw, context->skb);
 
 	spin_unlock_irqrestore(&priv->lock, flags);
diff --git a/drivers/staging/vt6656/rxtx.h b/drivers/staging/vt6656/rxtx.h
index f3c7b99cda73..6ca2ca32d036 100644
--- a/drivers/staging/vt6656/rxtx.h
+++ b/drivers/staging/vt6656/rxtx.h
@@ -159,14 +159,7 @@ struct vnt_tx_fifo_head {
 	__le16 current_rate;
 } __packed;
 
-struct vnt_tx_usb_header {
-	u8 type;
-	u8 pkt_no;
-	__le16 tx_byte_count;
-} __packed;
-
 struct vnt_tx_buffer {
-	struct vnt_tx_usb_header usb;
 	struct vnt_tx_fifo_head fifo_head;
 	union vnt_tx_head tx_head;
 } __packed;
diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index 2164f45e13ab..82b774be6485 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -428,7 +428,8 @@ static void vnt_tx_context_complete(struct urb *urb)
 
 	switch (urb->status) {
 	case 0:
-		dev_dbg(&priv->usb->dev, "Write %d bytes\n", context->buf_len);
+		dev_dbg(&priv->usb->dev,
+			"Write %d bytes\n", urb->actual_length);
 		break;
 	case -ECONNRESET:
 	case -ENOENT:
@@ -453,17 +454,25 @@ static void vnt_tx_context_complete(struct urb *urb)
 }
 
 int vnt_tx_context(struct vnt_private *priv,
-		   struct vnt_usb_send_context *context)
+		   struct vnt_usb_send_context *context,
+		   struct sk_buff *skb)
 {
-	int status;
+	struct vnt_tx_usb_header *usb;
 	struct urb *urb;
+	int status;
+	u16 count = skb->len;
+
+	usb = skb_push(skb, sizeof(*usb));
+	usb->tx_byte_count = cpu_to_le16(count);
+	usb->pkt_no = context->pkt_no;
+	usb->type = context->type;
 
 	if (test_bit(DEVICE_FLAGS_DISCONNECTED, &priv->flags)) {
 		context->in_use = false;
 		return -ENODEV;
 	}
 
-	if (context->buf_len > MAX_TOTAL_SIZE_WITH_ALL_HEADERS) {
+	if (skb->len > MAX_TOTAL_SIZE_WITH_ALL_HEADERS) {
 		context->in_use = false;
 		return -E2BIG;
 	}
@@ -477,8 +486,8 @@ int vnt_tx_context(struct vnt_private *priv,
 	usb_fill_bulk_urb(urb,
 			  priv->usb,
 			  usb_sndbulkpipe(priv->usb, 3),
-			  context->tx_buffer,
-			  context->buf_len,
+			  skb->data,
+			  skb->len,
 			  vnt_tx_context_complete,
 			  context);
 
diff --git a/drivers/staging/vt6656/usbpipe.h b/drivers/staging/vt6656/usbpipe.h
index 1f0b2566c288..52c2a928c9c1 100644
--- a/drivers/staging/vt6656/usbpipe.h
+++ b/drivers/staging/vt6656/usbpipe.h
@@ -41,6 +41,12 @@ struct vnt_interrupt_data {
 	u8 sw[2];
 } __packed;
 
+struct vnt_tx_usb_header {
+	u8 type;
+	u8 pkt_no;
+	__le16 tx_byte_count;
+} __packed;
+
 #define VNT_REG_BLOCK_SIZE	64
 
 int vnt_control_out(struct vnt_private *priv, u8 request, u16 value,
@@ -57,6 +63,7 @@ int vnt_control_out_blocks(struct vnt_private *priv,
 int vnt_start_interrupt_urb(struct vnt_private *priv);
 int vnt_submit_rx_urb(struct vnt_private *priv, struct vnt_rcb *rcb);
 int vnt_tx_context(struct vnt_private *priv,
-		   struct vnt_usb_send_context *context);
+		   struct vnt_usb_send_context *context,
+		   struct sk_buff *skb);
 
 #endif /* __USBPIPE_H__ */
-- 
2.27.0.rc0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
