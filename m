Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 856C51DCA44
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 11:38:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 582C124CEB;
	Thu, 21 May 2020 09:38:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0Qfd0ke7Lxka; Thu, 21 May 2020 09:38:33 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CB4E2241AE;
	Thu, 21 May 2020 09:38:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id EE9BF1BF47D
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:38:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id E8E3288B22
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:38:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id p3pk0eToVGVQ for <devel@linuxdriverproject.org>;
 Thu, 21 May 2020 09:38:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DCCAF88AEE
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 09:38:29 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id g12so4799599wrw.1
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 02:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=OgyKLtsl9tNNZ+v+VLvWxQraa+qu3UB9bjlUpwB1inI=;
 b=kFN0jhhJnSIpf27pQnJxKA3G7ECLmLhcTQoiAu2pGIBpKqn8lQNBFvWEjdxEJuAL9E
 T+RNjyehSBZk51qqRYYRCJXMQMJcwOHr0/PmONibbePBVo5FjGyrYQcC0evwTZTQRP0m
 JB1I8RM9HLyTTbjzSW+sOXzAClB/dR0V0nR9WmNfata8nP2cNyw5ZxOwa6XTqIKCWMvT
 DE0zbikggO7Ja0K2OewPVAEgLJsjhR70R6f+gP/Gyv1MtC7qs2xdKwtlnOdjnqIQq4Z8
 rPvGT16/TvlL7mtHK40K9/EnvmqMG6HTvVuY79p/rv/kjMXN2HuVWBMBv5W5ZgnWMET5
 z1nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=OgyKLtsl9tNNZ+v+VLvWxQraa+qu3UB9bjlUpwB1inI=;
 b=ZTuFhRks3llA/MDjvgOF9DK+in29RrILusmZEY1nkNbUX1eIvo/7MBXEcRylBOwOQi
 Pfm7LWAgXb2Yj6uTUgFKKE5Qs/0w02UDnjI/WlE6qVBpKFjKkz3fzVZYcExeCMLp3yYf
 We/3bh4Rp0ermxcjPEb7scC32+7HwjyHFD3/NLE3Mkksu4uWVlsmSDhFpQzASBwUBPsD
 aSe0GYq6cIYw2RLQcIdulSFNfQxqt9kTD1S+LV/upQQC4FeHQA+goUoDaFeuC1Fu7Y+A
 Rp7tYaZf43PDth8GZ1hSffWAgo/fzZaXz2y2ts63QO78wY9d617rKEkX1dyc0LMknGow
 x27g==
X-Gm-Message-State: AOAM533FmCD2zSLpouYTblI/l3QWR9uGVcx43e4fCohlI+B4ZrbfzH6f
 mnLkuoeecu0Am1pLadHYJnOYaW49BhWflg==
X-Google-Smtp-Source: ABdhPJyQ2cs17INGlJLY+RvMyXNB1VzYC+aF4aMyXhxT1NEgIo3yqdwW4TIiKjW5rR8eXjYXBmKk6A==
X-Received: by 2002:a5d:4041:: with SMTP id w1mr7746562wrp.245.1590053908476; 
 Thu, 21 May 2020 02:38:28 -0700 (PDT)
Received: from [192.168.43.18] ([85.255.237.70])
 by smtp.gmail.com with ESMTPSA id e22sm5553779wrc.41.2020.05.21.02.38.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 02:38:28 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 03/10] staging: vt6656: Move vnt_mic_hdr pointers to
 vnt_fill_txkey
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <6420a6ae-82eb-f794-fa7c-bac419222ad6@gmail.com>
Date: Thu, 21 May 2020 10:38:26 +0100
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

mic_hdr has three possible locations ieee80211_tx_info can controls
these with control.use_cts_prot for rts or cts exchange or otherwise
the rts/data position.

Removing double pointer.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 37 ++++++++++++++---------------------
 1 file changed, 15 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 24acc2de0fb9..87fe7df07f03 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -356,40 +356,30 @@ static void vnt_rxtx_ab(struct vnt_usb_send_context *tx_context,
 
 static void vnt_generate_tx_parameter(struct vnt_usb_send_context *tx_context,
 				      struct vnt_tx_buffer *tx_buffer,
-				      struct vnt_mic_hdr **mic_hdr,
 				      u32 need_mic, bool need_rts)
 {
 	if (tx_context->pkt_type == PK_TYPE_11GB ||
 	    tx_context->pkt_type == PK_TYPE_11GA) {
 		if (need_rts) {
-			if (need_mic)
-				*mic_hdr =
-					&tx_buffer->tx_head.tx_rts.tx.mic.hdr;
-
 			vnt_rxtx_rts(tx_context, &tx_buffer->tx_head, need_mic);
 
 			return;
 		}
 
-		if (need_mic)
-			*mic_hdr = &tx_buffer->tx_head.tx_cts.tx.mic.hdr;
-
 		vnt_rxtx_cts(tx_context, &tx_buffer->tx_head, need_mic);
 
 		return;
 	}
 
-	if (need_mic)
-		*mic_hdr = &tx_buffer->tx_head.tx_ab.tx.mic.hdr;
-
 	vnt_rxtx_ab(tx_context, &tx_buffer->tx_head, need_rts, need_mic);
 }
 
-static void vnt_fill_txkey(struct vnt_usb_send_context *tx_context,
+static void vnt_fill_txkey(struct vnt_tx_buffer *tx_buffer,
 			   u8 *key_buffer, struct ieee80211_key_conf *tx_key,
-			   struct sk_buff *skb, u16 payload_len,
-			   struct vnt_mic_hdr *mic_hdr)
+			   struct sk_buff *skb, u16 payload_len)
 {
+	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
+	struct vnt_mic_hdr *mic_hdr;
 	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 	u64 pn64;
 	u8 *iv = ((u8 *)hdr + ieee80211_get_hdrlen_from_skb(skb));
@@ -416,9 +406,14 @@ static void vnt_fill_txkey(struct vnt_usb_send_context *tx_context,
 
 		break;
 	case WLAN_CIPHER_SUITE_CCMP:
-
-		if (!mic_hdr)
-			return;
+		if (info->control.use_cts_prot) {
+			if (info->control.use_rts)
+				mic_hdr = &tx_buffer->tx_head.tx_rts.tx.mic.hdr;
+			else
+				mic_hdr = &tx_buffer->tx_head.tx_cts.tx.mic.hdr;
+		} else {
+			mic_hdr = &tx_buffer->tx_head.tx_ab.tx.mic.hdr;
+		}
 
 		mic_hdr->id = 0x59;
 		mic_hdr->payload_len = cpu_to_be16(payload_len);
@@ -497,7 +492,6 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	struct ieee80211_rate *rate;
 	struct ieee80211_key_conf *tx_key;
 	struct ieee80211_hdr *hdr;
-	struct vnt_mic_hdr *mic_hdr = NULL;
 	struct vnt_tx_buffer *tx_buffer;
 	struct vnt_tx_fifo_head *tx_buffer_head;
 	struct vnt_usb_send_context *tx_context;
@@ -624,16 +618,15 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 
 	tx_buffer_head->current_rate = cpu_to_le16(rate->hw_value);
 
-	vnt_generate_tx_parameter(tx_context, tx_buffer, &mic_hdr,
-				  need_mic, need_rts);
+	vnt_generate_tx_parameter(tx_context, tx_buffer, need_mic, need_rts);
 
 	tx_buffer_head->frag_ctl |= cpu_to_le16(FRAGCTL_NONFRAG);
 
 	if (info->control.hw_key) {
 		tx_key = info->control.hw_key;
 		if (tx_key->keylen > 0)
-			vnt_fill_txkey(tx_context, tx_buffer_head->tx_key,
-				       tx_key, skb, tx_body_size, mic_hdr);
+			vnt_fill_txkey(tx_buffer, tx_buffer_head->tx_key,
+				       tx_key, skb, tx_body_size);
 	}
 
 	priv->seq_counter = (le16_to_cpu(hdr->seq_ctrl) &
-- 
2.25.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
