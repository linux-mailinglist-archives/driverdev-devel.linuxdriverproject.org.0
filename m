Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E9F171C62C5
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 23:15:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6A1A7230A4;
	Tue,  5 May 2020 21:15:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u0dFqYu15dUt; Tue,  5 May 2020 21:15:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 02B9F203A8;
	Tue,  5 May 2020 21:15:18 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 5A3A31BF3D4
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 21:15:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 56B6888800
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 21:15:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id antdEz3m3HmF for <devel@linuxdriverproject.org>;
 Tue,  5 May 2020 21:15:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 88DE78880C
 for <devel@driverdev.osuosl.org>; Tue,  5 May 2020 21:15:15 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id x4so182048wmj.1
 for <devel@driverdev.osuosl.org>; Tue, 05 May 2020 14:15:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=EGVbbPzyVO01/FIopW3nxXbQ2QWRQV9JRxf2+f7pU/4=;
 b=P6UvQqflx2ZYERn4eaqY506W5Rur02ytOd9iAp3fhiX4TboDGEdGzxcvDCr5I7Osjl
 7pRzLT9GwIUgNFlOJ0S8AGI4AIH3IJWEg7EokoPNsFRK+18JotIzsCQIT/d6n+AoTeyM
 yShcJtOHQDHsDgt41qOf4nk00EU73qs3AzoGPuSWwjjOHPnvQCUBWD0rxB51p3b8Q50t
 gZai9+2CmLPODDxy1n+7N5ySATlkxaIFjssCrx24PyzowQI7qJ6dO1AvpXhtvB1pCAHi
 z04XJr1EGGag2UWWApHgdR725ORJ4ZQZniyt8n6eaAZSdo5M7dtIjNnrsNXDJ3fS9Ny2
 ZmyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=EGVbbPzyVO01/FIopW3nxXbQ2QWRQV9JRxf2+f7pU/4=;
 b=GBA299Gqu2nssspaxhsjdQ2kuUwtTrJ2x+ouli8XlQoyX+4eZ9L6RfKXr1jaZkg6Kl
 Se9rmzIItJroGZQwk8qJ/QB+WRBPz7Qb8B/ktYCT91RfgtOJZpauXrC9iRDKalxwMM0Z
 iHmfe97PY0nYD8bixTvopKYYjgZ2vkthzd8UK5AhLqHL5giab5SbzRgvWY04AoFmRnA3
 t3yrgZSQo/KJlrrqjHHYKfpSwqMtbpioLM8EXMbu7uYvNw7BWFUToDhe+jYTf8mTBIIV
 vK/87ItO6EgFX887kWQtc+xd4/FUoQV5ObCYU42ZxXgz00Jj3W9n1MSU8/IAA1VfnmS5
 ViAw==
X-Gm-Message-State: AGi0Puac5cfFuIY2QoQfXjC3Z/cRPGNP1RVAvE0Td+63caBnPXWfqfZI
 A6kJARF+oVoVM5XywT5lAIY=
X-Google-Smtp-Source: APiQypKV8F3AYlmVJISg2XtrkQm49hI0dMxlxUu0DXgIwqB2WAr6o/1OsZu4cXhcCO65eCr/qDSWLA==
X-Received: by 2002:a7b:c417:: with SMTP id k23mr546692wmi.147.1588713314066; 
 Tue, 05 May 2020 14:15:14 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.117.threembb.co.uk.
 [188.29.165.117])
 by smtp.gmail.com with ESMTPSA id 145sm64647wma.1.2020.05.05.14.15.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 14:15:13 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 3/6] staging: vt6656: vnt_get_rtscts_duration_le use
 ieee80211_ctstoself_duration
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <f12b3d71-eb61-340b-e473-83509d9bc38a@gmail.com>
Date: Tue, 5 May 2020 22:15:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
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
 Oscar Carter <oscar.carter@gmx.com>, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

use the mac80211 ieee80211_ctstoself_duration for CTS to self frames.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 32 +++-----------------------------
 1 file changed, 3 insertions(+), 29 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 48fe16c27d3f..27069ac60b15 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -195,27 +195,6 @@ static __le16 vnt_time_stamp_off(struct vnt_private *priv, u16 rate)
 							[rate % MAX_RATE]);
 }
 
-static u32 vnt_get_rsvtime(struct vnt_private *priv, u8 pkt_type,
-			   u32 frame_length, u16 rate, int need_ack)
-{
-	u32 data_time, ack_time;
-
-	data_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
-				       frame_length, rate);
-
-	if (pkt_type == PK_TYPE_11B)
-		ack_time = vnt_get_frame_time(priv->preamble_type, pkt_type, 14,
-					      (u16)priv->top_cck_basic_rate);
-	else
-		ack_time = vnt_get_frame_time(priv->preamble_type, pkt_type, 14,
-					      (u16)priv->top_ofdm_basic_rate);
-
-	if (need_ack)
-		return data_time + priv->sifs + ack_time;
-
-	return data_time;
-}
-
 static __le16 vnt_rxtx_rsvtime_le16(struct vnt_usb_send_context *context)
 {
 	struct vnt_private *priv = context->priv;
@@ -285,9 +264,6 @@ static __le16 vnt_get_rtscts_duration_le(struct vnt_usb_send_context *context,
 					 u8 dur_type, u8 pkt_type, u16 rate)
 {
 	struct vnt_private *priv = context->priv;
-	u32 dur_time = 0;
-	u32 frame_length = context->frame_len;
-	u8 need_ack = context->need_ack;
 	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(context->skb);
 
 	switch (dur_type) {
@@ -298,15 +274,13 @@ static __le16 vnt_get_rtscts_duration_le(struct vnt_usb_send_context *context,
 		return ieee80211_rts_duration(priv->hw, priv->vif,
 					      context->frame_len, info);
 	case CTSDUR_BA:
-		dur_time = priv->sifs + vnt_get_rsvtime(priv,
-				pkt_type, frame_length, rate, need_ack);
-		break;
-
+		return ieee80211_ctstoself_duration(priv->hw, priv->vif,
+						    context->frame_len, info);
 	default:
 		break;
 	}
 
-	return cpu_to_le16((u16)dur_time);
+	return cpu_to_le16(0);
 }
 
 static u16 vnt_mac_hdr_pos(struct vnt_usb_send_context *tx_context,
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
