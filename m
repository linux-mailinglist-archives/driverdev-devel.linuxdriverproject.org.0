Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 127F61729EA
	for <lists+driverdev-devel@lfdr.de>; Thu, 27 Feb 2020 22:06:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 35E1186DCC;
	Thu, 27 Feb 2020 21:06:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ocu_xAZlz92R; Thu, 27 Feb 2020 21:06:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A80B286D8F;
	Thu, 27 Feb 2020 21:06:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7F5AA1BF3AE
 for <devel@linuxdriverproject.org>; Thu, 27 Feb 2020 21:06:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id AB9B181654
 for <devel@linuxdriverproject.org>; Thu, 27 Feb 2020 21:06:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AO9QUcAWsD8u for <devel@linuxdriverproject.org>;
 Thu, 27 Feb 2020 21:06:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0897987EAE
 for <devel@driverdev.osuosl.org>; Thu, 27 Feb 2020 21:06:22 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id c13so472164wrq.10
 for <devel@driverdev.osuosl.org>; Thu, 27 Feb 2020 13:06:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=6qVCcTtx4XIU7xAV+gUQpqRSYhBtGmwIDIGSLU4HtJU=;
 b=HYwKyugxoEFLrGSjQARW7m5Ud9IsZGxM+5KIBevGcU6ZeIAelRc+GTDx4di7q82oZ4
 QXx0BNatxUF0JLQrGeat5veeInovvffZxHm5+GLao6GrOODNvIERd6bITQp0r92B3qdn
 YKr8NEZ17FVClt99HCUnERZFRrPNib8f6oWqD7BsGUVi6KLjg9GymxoGYIs15AoVkHLv
 Qz/s5+pwha9+GPopAHHKaa+E89s9kbK4zdQYfs/9gK3EkhZAZ2gC3y6dR/YUTVtOwyCm
 qvdOlY2atPDLsiP1sqPl83To0nxCQmXrZcA6u+8wk3/dLuKfISuRrhmyqY4AEl/Md2+q
 Apag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=6qVCcTtx4XIU7xAV+gUQpqRSYhBtGmwIDIGSLU4HtJU=;
 b=K+whk0yh+ollmDCItOHIaKFzowA/EbXojj2U3flWO3yVfEEg7ydQdMUeN8zT9t6cWM
 WbKERfB7psWoHE+3P6OSIxgc/Xn5TExWZwn24BeLYXQ6aBbD4iL05pAexu5v1wtlsLif
 WV9dnibcycbUIjUthFhx7BieBiX6AJMaDf6BXrzxwJApIxAKSIW8TaK28CLe3sBlpV88
 MxXPsWRepnnJjj+V1YN2bQ6cv475YhD24YYGEo/lTYuT5bLY1sixpuLaXRFZFdVgUCFU
 eI4C3RLLAzyxascbwcy0aEv0rWR0j/B+I9sN8NiYmc2MaBZdMubVYZCRKIB0VyFHuNIW
 PFjA==
X-Gm-Message-State: APjAAAUO22HyfICVGaOn8xiNDRYBVzqKINFyn624jeKkPkqcIa7keHF0
 t3UMzIvb52srPFVWmj2QuVA=
X-Google-Smtp-Source: APXvYqy4TvSFOJMhCtRr1x9QW/sBzOwkxjyrb2IxSZWUwED8FCoMx00AiyvmNQHnWWQQnYFV7YH9YQ==
X-Received: by 2002:adf:f6c8:: with SMTP id y8mr729818wrp.167.1582837580312;
 Thu, 27 Feb 2020 13:06:20 -0800 (PST)
Received: from [192.168.43.18] (188.29.165.79.threembb.co.uk. [188.29.165.79])
 by smtp.gmail.com with ESMTPSA id
 a198sm9475980wme.12.2020.02.27.13.06.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Feb 2020 13:06:19 -0800 (PST)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH] staging: vt6656: Use mac80211 duration for tx headers
Message-ID: <0cdde611-119b-b223-e8c8-b59fb497a7b9@gmail.com>
Date: Thu, 27 Feb 2020 21:06:17 +0000
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

mac80211 already provides the correct duration simply
copy it to the tx headers removing the need for driver
to find it with vnt_get_duration_le.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 57 +++++------------------------------
 1 file changed, 8 insertions(+), 49 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 74c1062dbaaa..1003808ac4ad 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -13,7 +13,6 @@
  *
  * Functions:
  *      vnt_generate_tx_parameter - Generate tx dma required parameter.
- *      vnt_get_duration_le - get tx data required duration
  *      vnt_get_rtscts_duration_le- get rtx/cts required duration
  *      vnt_get_rtscts_rsvtime_le- get rts/cts reserved time
  *      vnt_get_rsvtime- get frame reserved time
@@ -166,27 +165,6 @@ static __le16 vnt_get_rtscts_rsvtime_le(struct vnt_private *priv, u8 rsv_type,
 	return cpu_to_le16((u16)rrv_time);
 }
 
-static __le16 vnt_get_duration_le(struct vnt_private *priv, u8 pkt_type,
-				  int need_ack)
-{
-	u32 ack_time = 0;
-
-	if (need_ack) {
-		if (pkt_type == PK_TYPE_11B)
-			ack_time = vnt_get_frame_time(priv->preamble_type,
-						      pkt_type, 14,
-						      priv->top_cck_basic_rate);
-		else
-			ack_time = vnt_get_frame_time(priv->preamble_type,
-						      pkt_type, 14,
-						      priv->top_ofdm_basic_rate);
-
-		return cpu_to_le16((u16)(priv->sifs + ack_time));
-	}
-
-	return 0;
-}
-
 static __le16 vnt_get_rtscts_duration_le(struct vnt_usb_send_context *context,
 					 u8 dur_type, u8 pkt_type, u16 rate)
 {
@@ -246,7 +224,6 @@ static u16 vnt_rxtx_datahead_g(struct vnt_usb_send_context *tx_context,
 				(struct ieee80211_hdr *)tx_context->skb->data;
 	u32 frame_len = tx_context->frame_len;
 	u16 rate = tx_context->tx_rate;
-	u8 need_ack = tx_context->need_ack;
 
 	/* Get SignalField,ServiceField,Length */
 	vnt_get_phy_field(priv, frame_len, rate, tx_context->pkt_type, &buf->a);
@@ -254,16 +231,8 @@ static u16 vnt_rxtx_datahead_g(struct vnt_usb_send_context *tx_context,
 			  PK_TYPE_11B, &buf->b);
 
 	/* Get Duration and TimeStamp */
-	if (ieee80211_is_nullfunc(hdr->frame_control)) {
-		buf->duration_a = hdr->duration_id;
-		buf->duration_b = hdr->duration_id;
-	} else {
-		buf->duration_a = vnt_get_duration_le(priv,
-						tx_context->pkt_type, need_ack);
-		buf->duration_b = vnt_get_duration_le(priv,
-						      PK_TYPE_11B, need_ack);
-	}
-
+	buf->duration_a = hdr->duration_id;
+	buf->duration_b = hdr->duration_id;
 	buf->time_stamp_off_a = vnt_time_stamp_off(priv, rate);
 	buf->time_stamp_off_b = vnt_time_stamp_off(priv,
 						   priv->top_cck_basic_rate);
@@ -281,20 +250,13 @@ static u16 vnt_rxtx_datahead_ab(struct vnt_usb_send_context *tx_context,
 				(struct ieee80211_hdr *)tx_context->skb->data;
 	u32 frame_len = tx_context->frame_len;
 	u16 rate = tx_context->tx_rate;
-	u8 need_ack = tx_context->need_ack;
 
 	/* Get SignalField,ServiceField,Length */
 	vnt_get_phy_field(priv, frame_len, rate,
 			  tx_context->pkt_type, &buf->ab);
 
 	/* Get Duration and TimeStampOff */
-	if (ieee80211_is_nullfunc(hdr->frame_control)) {
-		buf->duration = hdr->duration_id;
-	} else {
-		buf->duration = vnt_get_duration_le(priv, tx_context->pkt_type,
-						    need_ack);
-	}
-
+	buf->duration = hdr->duration_id;
 	buf->time_stamp_off = vnt_time_stamp_off(priv, rate);
 
 	tx_context->tx_hdr_size = vnt_mac_hdr_pos(tx_context, &buf->hdr);
@@ -721,8 +683,6 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 
 	memcpy(tx_context->hdr, skb->data, tx_body_size);
 
-	hdr->duration_id = cpu_to_le16(duration_id);
-
 	if (info->control.hw_key) {
 		tx_key = info->control.hw_key;
 		if (tx_key->keylen > 0)
@@ -788,9 +748,7 @@ static int vnt_beacon_xmit(struct vnt_private *priv, struct sk_buff *skb)
 		vnt_get_phy_field(priv, frame_size, current_rate,
 				  PK_TYPE_11A, &short_head->ab);
 
-		/* Get Duration and TimeStampOff */
-		short_head->duration = vnt_get_duration_le(priv,
-							   PK_TYPE_11A, false);
+		/* Get TimeStampOff */
 		short_head->time_stamp_off =
 				vnt_time_stamp_off(priv, current_rate);
 	} else {
@@ -801,9 +759,7 @@ static int vnt_beacon_xmit(struct vnt_private *priv, struct sk_buff *skb)
 		vnt_get_phy_field(priv, frame_size, current_rate,
 				  PK_TYPE_11B, &short_head->ab);
 
-		/* Get Duration and TimeStampOff */
-		short_head->duration = vnt_get_duration_le(priv,
-							   PK_TYPE_11B, false);
+		/* Get TimeStampOff */
 		short_head->time_stamp_off =
 			vnt_time_stamp_off(priv, current_rate);
 	}
@@ -812,6 +768,9 @@ static int vnt_beacon_xmit(struct vnt_private *priv, struct sk_buff *skb)
 	mgmt_hdr = &beacon_buffer->mgmt_hdr;
 	memcpy(mgmt_hdr, skb->data, skb->len);
 
+	/* Get Duration */
+	short_head->duration = mgmt_hdr->duration;
+
 	/* time stamp always 0 */
 	mgmt_hdr->u.beacon.timestamp = 0;
 
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
