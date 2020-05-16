Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7114E1D6066
	for <lists+driverdev-devel@lfdr.de>; Sat, 16 May 2020 12:35:35 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6020D86E24;
	Sat, 16 May 2020 10:35:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zaNZPovDI8_j; Sat, 16 May 2020 10:35:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 30A9B86B92;
	Sat, 16 May 2020 10:35:30 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 39BEB1BF5DE
 for <devel@linuxdriverproject.org>; Sat, 16 May 2020 10:35:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id E471920425
 for <devel@linuxdriverproject.org>; Sat, 16 May 2020 10:35:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id zXNmzOmqH4Oy for <devel@linuxdriverproject.org>;
 Sat, 16 May 2020 10:35:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 01C2920403
 for <devel@driverdev.osuosl.org>; Sat, 16 May 2020 10:35:25 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id h4so4612146wmb.4
 for <devel@driverdev.osuosl.org>; Sat, 16 May 2020 03:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=PI57yVFsMFnYb9rbLm40xiBPmWGcJoRd3kiI6gVBkeE=;
 b=rVEcPKiU4ubqlT0Xpt8FphZOlW+i/1KJlqLoRu1i1LzokJAx1trHqNoMPMxFldgws4
 0u1vvCQhlwmd6g2j4zjZztXRwTGJkF8qOqQhuq2Be/GZ3A9T4et0DoLboTK+MnkkQ/f7
 HC3YqZ5RnPvknnf/Snym4nMENA37O+tx/qC7k4eL3ZiQI39QjzS+92PKPGOyPr90JoHT
 LJi7IO+2JT2PLHQLQoMt12+r04mAH8F0rkpJF8PZ4J56bjnzITH/oKaLsa2NkOkbFLNp
 9T+INFNWOp7ZsKFT/SPCYwXtbnE5ceB/wfeyf6Tb0YQLNnsIyky3UD8TvRu6lKo9DK4Q
 vK6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=PI57yVFsMFnYb9rbLm40xiBPmWGcJoRd3kiI6gVBkeE=;
 b=RAX87rD6/Iv+9MPrkyZHJeO7+vTa9tOuyBvifW1HEC0s99cFfeODn8zTlBVbv6OdGL
 FrxiNm/9sUrF/4Fs+v1lwoyjPt0RSFclGHQbT1DwLFNMqrVC8rs1S6d4pXt2Z2eFj7Ja
 sJB0sTphXGQAi8Q8UJ6nzoeMRMH+1b9hH6UBeRF6+ZVfoglJdCkgU0z3Fh56fq3EMzfb
 fTS12SVAI9vlbICri7biJiiCMGkxfczmhbOLppxmqITgFZzPIbFpqZ80Wq1mGdp8YBAA
 Iz1xGmQgzba7R+1J6ClAVvjPiIIYkDkzBsiuhkoKt9iyvzlMwebXvyXwFAoGKj/lXW7G
 q0jA==
X-Gm-Message-State: AOAM533F90v6RfY/XkUCVNG7upAC+IZSHjjdszSZY8OkPdgCONyO1W7y
 IRPBOINqlkM2YG9UQFzNDkA=
X-Google-Smtp-Source: ABdhPJxtYwKqEAUiLE+HWFWrVdxjJ/jfGhaM1JWlWsUO08JBe1HMp7ECBirVEtt4xTK4cdsgFgh3pQ==
X-Received: by 2002:a7b:c951:: with SMTP id i17mr8306422wml.63.1589625324388; 
 Sat, 16 May 2020 03:35:24 -0700 (PDT)
Received: from [192.168.43.18] ([185.69.145.77])
 by smtp.gmail.com with ESMTPSA id m7sm7219904wmc.40.2020.05.16.03.35.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 May 2020 03:35:23 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 1/4] staging: vt6656: Use sk_buff buffer for tx header
Message-ID: <7b967bfc-1d4b-4b45-efab-d54f16cca226@gmail.com>
Date: Sat, 16 May 2020 11:35:22 +0100
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

mac80211 can provide space for the driver to put a tx header on
the skb buffer instead coping the entire frame on to a local
buffer with the header.

To use this extra_tx_headroom must be set in mac80211 with the largest
possible header which is struct vnt_tx_buffer.

The driver has 8 possible combinations of tx header size which
are found in vnt_get_hdr_size replacing vnt_mac_hdr_pos.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/device.h   |  1 +
 drivers/staging/vt6656/main_usb.c |  1 +
 drivers/staging/vt6656/rxtx.c     | 91 ++++++++++++++++++-------------
 drivers/staging/vt6656/rxtx.h     |  8 ++-
 drivers/staging/vt6656/usbpipe.c  |  2 +-
 5 files changed, 61 insertions(+), 42 deletions(-)

diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index d19d802b5d4f..074b98dfac91 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -240,6 +240,7 @@ struct vnt_usb_send_context {
 	struct sk_buff *skb;
 	struct urb *urb;
 	struct ieee80211_hdr *hdr;
+	void *tx_buffer;
 	unsigned int buf_len;
 	u32 frame_len;
 	u16 tx_hdr_size;
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index b5790d4d7152..930ee424ecdf 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -1053,6 +1053,7 @@ vt6656_probe(struct usb_interface *intf, const struct usb_device_id *id)
 	ieee80211_hw_set(priv->hw, SUPPORTS_PS);
 	ieee80211_hw_set(priv->hw, PS_NULLFUNC_STACK);
 
+	priv->hw->extra_tx_headroom = sizeof(struct vnt_tx_buffer);
 	priv->hw->max_signal = 100;
 
 	SET_IEEE80211_DEV(priv->hw, &intf->dev);
diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 8348ffe6ebfa..792833f8192a 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -188,19 +188,6 @@ static __le16 vnt_get_cts_duration(struct vnt_usb_send_context *context)
 					    context->frame_len, info);
 }
 
-static u16 vnt_mac_hdr_pos(struct vnt_usb_send_context *tx_context,
-			   struct ieee80211_hdr *hdr)
-{
-	u8 *head = tx_context->data + offsetof(struct vnt_tx_buffer, fifo_head);
-	u8 *hdr_pos = (u8 *)hdr;
-
-	tx_context->hdr = hdr;
-	if (!tx_context->hdr)
-		return 0;
-
-	return (u16)(hdr_pos - head);
-}
-
 static void vnt_rxtx_datahead_g(struct vnt_usb_send_context *tx_context,
 				struct vnt_tx_datahead_g *buf)
 {
@@ -221,8 +208,6 @@ static void vnt_rxtx_datahead_g(struct vnt_usb_send_context *tx_context,
 	buf->time_stamp_off_a = vnt_time_stamp_off(priv, rate);
 	buf->time_stamp_off_b = vnt_time_stamp_off(priv,
 						   priv->top_cck_basic_rate);
-
-	tx_context->tx_hdr_size = vnt_mac_hdr_pos(tx_context, &buf->hdr);
 }
 
 static void vnt_rxtx_datahead_ab(struct vnt_usb_send_context *tx_context,
@@ -241,8 +226,6 @@ static void vnt_rxtx_datahead_ab(struct vnt_usb_send_context *tx_context,
 	/* Get Duration and TimeStampOff */
 	buf->duration = hdr->duration_id;
 	buf->time_stamp_off = vnt_time_stamp_off(priv, rate);
-
-	tx_context->tx_hdr_size = vnt_mac_hdr_pos(tx_context, &buf->hdr);
 }
 
 static void vnt_fill_ieee80211_rts(struct vnt_usb_send_context *tx_context,
@@ -479,6 +462,39 @@ static void vnt_fill_txkey(struct vnt_usb_send_context *tx_context,
 	}
 }
 
+static u16 vnt_get_hdr_size(struct ieee80211_tx_info *info)
+{
+	u16 size = sizeof(struct vnt_tx_datahead_ab);
+
+	if (info->control.use_cts_prot) {
+		if (info->control.use_rts)
+			size = sizeof(struct vnt_rts_g);
+		else
+			size = sizeof(struct vnt_cts);
+	} else if (info->control.use_rts) {
+		size = sizeof(struct vnt_rts_ab);
+	}
+
+	if (info->control.hw_key) {
+		if (info->control.hw_key->cipher == WLAN_CIPHER_SUITE_CCMP)
+			size += sizeof(struct vnt_mic_hdr);
+	}
+
+	/* Get rrv_time header */
+	if (info->control.use_cts_prot) {
+		if (info->control.use_rts)
+			size += sizeof(struct vnt_rrv_time_rts);
+		else
+			size += sizeof(struct vnt_rrv_time_cts);
+	} else {
+		size += sizeof(struct vnt_rrv_time_ab);
+	}
+
+	size += sizeof(struct vnt_tx_fifo_head);
+
+	return size;
+}
+
 int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 {
 	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
@@ -531,12 +547,29 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	tx_context->need_ack = false;
 	tx_context->frame_len = skb->len + 4;
 	tx_context->tx_rate =  rate->hw_value;
+	tx_context->hdr = hdr;
 
 	spin_unlock_irqrestore(&priv->lock, flags);
 
-	tx_buffer = (struct vnt_tx_buffer *)tx_context->data;
-	tx_buffer_head = &tx_buffer->fifo_head;
+	tx_header_size = vnt_get_hdr_size(info);
 	tx_body_size = skb->len;
+	tx_bytes = tx_header_size + tx_body_size;
+	tx_header_size += sizeof(struct vnt_tx_usb_header);
+
+	tx_buffer = skb_push(skb, tx_header_size);
+	tx_buffer_head = &tx_buffer->fifo_head;
+
+	/* Fill USB header */
+	tx_buffer->usb.tx_byte_count = cpu_to_le16(tx_bytes);
+	tx_buffer->usb.pkt_no = tx_context->pkt_no;
+	tx_buffer->usb.type = 0x00;
+
+	tx_context->type = CONTEXT_DATA_PACKET;
+	tx_context->tx_buffer = tx_buffer;
+	tx_context->buf_len = skb->len;
+
+	/* Return skb->data to mac80211 header */
+	skb_pull(skb, tx_header_size);
 
 	/*Set fifo controls */
 	if (pkt_type == PK_TYPE_11A)
@@ -603,18 +636,8 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	vnt_generate_tx_parameter(tx_context, tx_buffer, &mic_hdr,
 				  need_mic, need_rts);
 
-	tx_header_size = tx_context->tx_hdr_size;
-	if (!tx_header_size) {
-		tx_context->in_use = false;
-		return -ENOMEM;
-	}
-
 	tx_buffer_head->frag_ctl |= cpu_to_le16(FRAGCTL_NONFRAG);
 
-	tx_bytes = tx_header_size + tx_body_size;
-
-	memcpy(tx_context->hdr, skb->data, tx_body_size);
-
 	if (info->control.hw_key) {
 		tx_key = info->control.hw_key;
 		if (tx_key->keylen > 0)
@@ -625,15 +648,6 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	priv->seq_counter = (le16_to_cpu(hdr->seq_ctrl) &
 						IEEE80211_SCTL_SEQ) >> 4;
 
-	tx_buffer->tx_byte_count = cpu_to_le16(tx_bytes);
-	tx_buffer->pkt_no = tx_context->pkt_no;
-	tx_buffer->type = 0x00;
-
-	tx_bytes += 4;
-
-	tx_context->type = CONTEXT_DATA_PACKET;
-	tx_context->buf_len = tx_bytes;
-
 	spin_lock_irqsave(&priv->lock, flags);
 
 	if (vnt_tx_context(priv, tx_context)) {
@@ -725,6 +739,7 @@ static int vnt_beacon_xmit(struct vnt_private *priv, struct sk_buff *skb)
 	beacon_buffer->type = 0x01;
 
 	context->type = CONTEXT_BEACON_PACKET;
+	context->tx_buffer = &context->data;
 	context->buf_len = count + 4; /* USB header */
 
 	spin_lock_irqsave(&priv->lock, flags);
diff --git a/drivers/staging/vt6656/rxtx.h b/drivers/staging/vt6656/rxtx.h
index 3c36a4b893dc..819b45394673 100644
--- a/drivers/staging/vt6656/rxtx.h
+++ b/drivers/staging/vt6656/rxtx.h
@@ -77,14 +77,12 @@ struct vnt_tx_datahead_g {
 	__le16 duration_a;
 	__le16 time_stamp_off_b;
 	__le16 time_stamp_off_a;
-	struct ieee80211_hdr hdr;
 } __packed;
 
 struct vnt_tx_datahead_ab {
 	struct vnt_phy_field ab;
 	__le16 duration;
 	__le16 time_stamp_off;
-	struct ieee80211_hdr hdr;
 } __packed;
 
 /* RTS buffer header */
@@ -161,10 +159,14 @@ struct vnt_tx_fifo_head {
 	__le16 current_rate;
 } __packed;
 
-struct vnt_tx_buffer {
+struct vnt_tx_usb_header {
 	u8 type;
 	u8 pkt_no;
 	__le16 tx_byte_count;
+} __packed;
+
+struct vnt_tx_buffer {
+	struct vnt_tx_usb_header usb;
 	struct vnt_tx_fifo_head fifo_head;
 	union vnt_tx_head tx_head;
 } __packed;
diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index 06dedf291db2..904645fa0eb0 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -466,7 +466,7 @@ int vnt_tx_context(struct vnt_private *priv,
 	usb_fill_bulk_urb(urb,
 			  priv->usb,
 			  usb_sndbulkpipe(priv->usb, 3),
-			  context->data,
+			  context->tx_buffer,
 			  context->buf_len,
 			  vnt_tx_context_complete,
 			  context);
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
