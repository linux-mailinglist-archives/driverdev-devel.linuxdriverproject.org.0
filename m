Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 80A431D6068
	for <lists+driverdev-devel@lfdr.de>; Sat, 16 May 2020 12:39:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 118F988E5F;
	Sat, 16 May 2020 10:39:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EyGo8WwBPQF9; Sat, 16 May 2020 10:39:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DD3F688E27;
	Sat, 16 May 2020 10:39:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 723691BF5DE
 for <devel@linuxdriverproject.org>; Sat, 16 May 2020 10:39:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5FC0A20447
 for <devel@linuxdriverproject.org>; Sat, 16 May 2020 10:39:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tYb5iYlB067r for <devel@linuxdriverproject.org>;
 Sat, 16 May 2020 10:39:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 5BF622041F
 for <devel@driverdev.osuosl.org>; Sat, 16 May 2020 10:39:37 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id h4so4617797wmb.4
 for <devel@driverdev.osuosl.org>; Sat, 16 May 2020 03:39:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=F/l24gqVi6+zqyOP90zR/e+IEIcM46kA4/Twj4qiqXM=;
 b=aQ5fEr6NurRoHEV1waDICNTNS3pLGPTVIUq5KOvTnfeoC8ooLa4NnzM00Tw8hnzywK
 uNyXolm4F+z9r0VMD3zRdyZtzoLVP87BXTDgVhlC+JNDCZTRmP51G2yxun1WYZK/mYoU
 dqwxWdXZLfczo2KqzDflrhAWSLJhmcTuw1usgw19ygZhj6C06TqtWu4kwcma9Hkqr1C9
 AW9ETDBVeHDduN7nxXS/XfezJE9ZeL7t783Wk1BgszkYn4yHyrxPzPzObwv0SAEyIk6X
 7G3cYH2hmNKIqKFdsiMUbTuWAGOGMafl7t5x30R3IlYmNRIoWEAYYNMKRqh7HHbfJNwH
 zNmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=F/l24gqVi6+zqyOP90zR/e+IEIcM46kA4/Twj4qiqXM=;
 b=WxuyeXDedo/8Wp2cN8xHe9PRqgKM38aYURgNulW/ZG5bsxulLEzsAa9ucpULUlimgD
 N4OvIghUJGa7Um2YWPi5u9+pZJNa1MXQJDPhfaSVAXRs9pYwi8yK/aQYfuWYj+dmnp9N
 OAmgctsP8593uZlOZc2lAOwYQZSX8QuNkdtnUIdlpsBxfbbi5I9W04H0VE7R2vIbv3pT
 lG3mQQnfgLgi09Xb8R26ke9QlEHRX8WR5mg7MRPCR6phcD5wiCUONc6GIwAx/0N3Spjr
 1N0v6HJZgeIE1AKVozNuagBeHsMyjDkkriiVtzM4gW+kPluBUrUmDwE8vE52bZXAJOtA
 3GQQ==
X-Gm-Message-State: AOAM5315iuOBnUdSouIiXL7rD1kfMFybSJCfhPp+Wx+pCo8cvCvfEa87
 QqmPJra/IWt7FygEVPgIYbY7P83u
X-Google-Smtp-Source: ABdhPJyhSeG4eqrNyARkidbYiQIx0AN/5ZfRbtwpJst8UdsjeDJN3h3QdxVlZ/TCBJ/sLORSPALScg==
X-Received: by 2002:a1c:7407:: with SMTP id p7mr9319690wmc.114.1589625575923; 
 Sat, 16 May 2020 03:39:35 -0700 (PDT)
Received: from [192.168.43.18] ([185.69.145.77])
 by smtp.gmail.com with ESMTPSA id b7sm7207389wmj.29.2020.05.16.03.39.35
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 16 May 2020 03:39:35 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 2/4] staging: vt6656: vnt_beacon_xmit use extra_tx_headroom.
Message-ID: <5f00d319-9242-65b2-d100-dcfe9b0e32be@gmail.com>
Date: Sat, 16 May 2020 11:39:34 +0100
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

Create room for vnt_tx_short_buf_head in sk_buff and vnt_tx_usb_header.

The struct ieee80211_mgmt is not longer in the header and is at
the initial skb->data point.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 22 +++++++++-------------
 drivers/staging/vt6656/rxtx.h |  5 +----
 2 files changed, 10 insertions(+), 17 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 792833f8192a..cf194c95df03 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -684,8 +684,9 @@ static int vnt_beacon_xmit(struct vnt_private *priv, struct sk_buff *skb)
 
 	spin_unlock_irqrestore(&priv->lock, flags);
 
-	beacon_buffer = (struct vnt_beacon_buffer *)&context->data[0];
-	short_head = &beacon_buffer->short_head;
+	mgmt_hdr = (struct ieee80211_mgmt *)skb->data;
+	short_head = skb_push(skb, sizeof(*short_head));
+	count = skb->len;
 
 	if (priv->bb_type == BB_TYPE_11A) {
 		current_rate = RATE_6M;
@@ -710,10 +711,6 @@ static int vnt_beacon_xmit(struct vnt_private *priv, struct sk_buff *skb)
 			vnt_time_stamp_off(priv, current_rate);
 	}
 
-	/* Generate Beacon Header */
-	mgmt_hdr = &beacon_buffer->mgmt_hdr;
-	memcpy(mgmt_hdr, skb->data, skb->len);
-
 	/* Get Duration */
 	short_head->duration = mgmt_hdr->duration;
 
@@ -732,15 +729,14 @@ static int vnt_beacon_xmit(struct vnt_private *priv, struct sk_buff *skb)
 	if (priv->seq_counter > 0x0fff)
 		priv->seq_counter = 0;
 
-	count = sizeof(struct vnt_tx_short_buf_head) + skb->len;
-
-	beacon_buffer->tx_byte_count = cpu_to_le16(count);
-	beacon_buffer->pkt_no = context->pkt_no;
-	beacon_buffer->type = 0x01;
+	beacon_buffer = skb_push(skb, sizeof(struct vnt_tx_usb_header));
+	beacon_buffer->usb.tx_byte_count = cpu_to_le16(count);
+	beacon_buffer->usb.pkt_no = context->pkt_no;
+	beacon_buffer->usb.type = 0x01;
 
 	context->type = CONTEXT_BEACON_PACKET;
-	context->tx_buffer = &context->data;
-	context->buf_len = count + 4; /* USB header */
+	context->tx_buffer = beacon_buffer;
+	context->buf_len = skb->len;
 
 	spin_lock_irqsave(&priv->lock, flags);
 
diff --git a/drivers/staging/vt6656/rxtx.h b/drivers/staging/vt6656/rxtx.h
index 819b45394673..fd64d0838e34 100644
--- a/drivers/staging/vt6656/rxtx.h
+++ b/drivers/staging/vt6656/rxtx.h
@@ -180,11 +180,8 @@ struct vnt_tx_short_buf_head {
 } __packed;
 
 struct vnt_beacon_buffer {
-	u8 type;
-	u8 pkt_no;
-	__le16 tx_byte_count;
+	struct vnt_tx_usb_header usb;
 	struct vnt_tx_short_buf_head short_head;
-	struct ieee80211_mgmt mgmt_hdr;
 } __packed;
 
 int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb);
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
