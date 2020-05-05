Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C60171C62B2
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 23:12:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 28C9E88855;
	Tue,  5 May 2020 21:12:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4BiE-5FKxxst; Tue,  5 May 2020 21:12:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id A43BB88800;
	Tue,  5 May 2020 21:12:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id E38C91BF3D4
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 21:12:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id D5CDA87D7F
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 21:12:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vyj-2SV-m0aw for <devel@linuxdriverproject.org>;
 Tue,  5 May 2020 21:12:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CDB7187E95
 for <devel@driverdev.osuosl.org>; Tue,  5 May 2020 21:12:08 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id e26so152086wmk.5
 for <devel@driverdev.osuosl.org>; Tue, 05 May 2020 14:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=bS/cZOt/hptvsdPV4RhZemHIC9RWIuhYXFdYJuvfz4Q=;
 b=RiKHfoTU0lmqEt9zFwCmUgcmU8yfa3rf3uHGQLGPH6JTAPoAAww7WlKWNxNgzLDt80
 0KV/EY6/v2KJJzFmPiBZJrBJB1xABlIEiENNLX+CsWXxJzZ9qU/f1/Go7OpFFatssXnc
 82IvFupbR72GbV/vMzyveSa3ADB5+sIBhMNtnFer5l58/vl6IY6J9FqZBXfCvNQh949D
 ivICHK1u3NxJn9kQRWj/Qi4hkliAZ529ooStE1z8Mf2axzq16phWAvcG42MgtbkmPUET
 7Q+CrN15u22bamCZcs/z5Pd5RWPBL0X9Q2mGsNAr/m5KbNU7v+eCeTEOt+7VVBIZLLEV
 ZgGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=bS/cZOt/hptvsdPV4RhZemHIC9RWIuhYXFdYJuvfz4Q=;
 b=HV4alPMUkvaHxEpxclM6KWCVUKc9zQtzAbbWCfbGYJ1I+GLey71RNaKWY6/S6XmVn0
 cOcdidqi/OXGujT8kQwng9jjLD4SFFQ8swxmnqBfAiKVOSbsgBhZcT5EjXgcVoAVgR34
 IRYNdBcKdyqaOkJ8ytja6XzRlz1yXkDzj2hNDF7zMjtDkwDdpvzO8Rduflw6579TLbzB
 gEWOST7/4idBYOPUxiuHbskpiMCy9dAn+QZept420C+HltodwfIApgezuw/yeROZkpEm
 VLyPPeEkjbqZtDXllww5S4PCPx+Nmnqy0QgFj11L2Umde+Dla3HUNJyEMcSrWQkG4N36
 imOA==
X-Gm-Message-State: AGi0PubVhnCFO4rcw4upDgwnb3fS4L+8WN/CnfHYVBFa3cKfG/P0N1c/
 pSm1vpjRMztBjUTnP0Xx+5s=
X-Google-Smtp-Source: APiQypJoIVCggnHBJVTQ/nK2vRO3YfMsPgL6hAJAdn4WVKzZ9rzKYPgNvWNvmCL63P/8680u75L/lw==
X-Received: by 2002:a7b:c390:: with SMTP id s16mr556784wmj.14.1588713127172;
 Tue, 05 May 2020 14:12:07 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.117.threembb.co.uk.
 [188.29.165.117])
 by smtp.gmail.com with ESMTPSA id k9sm5452228wrd.17.2020.05.05.14.12.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 14:12:06 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 1/6] staging: vt6656: vnt_rxtx_rsvtime_le16 to use
 ieee80211_generic_frame_duration.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <acff7fcc-0add-652b-7d07-22001b641257@gmail.com>
Date: Tue, 5 May 2020 22:12:04 +0100
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

ieee80211_generic_frame_duration is the mac80211 equivalent to
vnt_get_rsvtime use this to get our frame time.

There is a change where there is rrv_time_a and rrv_time_b
the frame duration is always the same so both are equal.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 32 ++++++++++++++------------------
 1 file changed, 14 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 68be0fa7b201..6724b213a723 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -216,11 +216,16 @@ static u32 vnt_get_rsvtime(struct vnt_private *priv, u8 pkt_type,
 	return data_time;
 }
 
-static __le16 vnt_rxtx_rsvtime_le16(struct vnt_private *priv, u8 pkt_type,
-				    u32 frame_length, u16 rate, int need_ack)
+static __le16 vnt_rxtx_rsvtime_le16(struct vnt_usb_send_context *context)
 {
-	return cpu_to_le16((u16)vnt_get_rsvtime(priv, pkt_type,
-		frame_length, rate, need_ack));
+	struct vnt_private *priv = context->priv;
+	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(context->skb);
+	struct ieee80211_rate *rate = ieee80211_get_tx_rate(priv->hw, info);
+
+	return ieee80211_generic_frame_duration(priv->hw,
+						 info->control.vif, info->band,
+						 context->frame_len,
+						 rate);
 }
 
 static __le16 vnt_get_rtscts_rsvtime_le(struct vnt_private *priv, u8 rsv_type,
@@ -465,7 +470,6 @@ static void vnt_rxtx_rts(struct vnt_usb_send_context *tx_context,
 	union vnt_tx_data_head *head = &tx_head->tx_rts.tx.head;
 	u32 frame_len = tx_context->frame_len;
 	u16 current_rate = tx_context->tx_rate;
-	u8 need_ack = tx_context->need_ack;
 
 	buf->rts_rrv_time_aa = vnt_get_rtscts_rsvtime_le(priv, 2,
 			tx_context->pkt_type, frame_len, current_rate);
@@ -474,11 +478,8 @@ static void vnt_rxtx_rts(struct vnt_usb_send_context *tx_context,
 	buf->rts_rrv_time_bb = vnt_get_rtscts_rsvtime_le(priv, 0,
 			tx_context->pkt_type, frame_len, current_rate);
 
-	buf->rrv_time_a = vnt_rxtx_rsvtime_le16(priv, tx_context->pkt_type,
-						frame_len, current_rate,
-						need_ack);
-	buf->rrv_time_b = vnt_rxtx_rsvtime_le16(priv, PK_TYPE_11B, frame_len,
-					priv->top_cck_basic_rate, need_ack);
+	buf->rrv_time_a = vnt_rxtx_rsvtime_le16(tx_context);
+	buf->rrv_time_b = buf->rrv_time_a;
 
 	if (need_mic)
 		head = &tx_head->tx_rts.tx.mic.head;
@@ -494,12 +495,9 @@ static void vnt_rxtx_cts(struct vnt_usb_send_context *tx_context,
 	union vnt_tx_data_head *head = &tx_head->tx_cts.tx.head;
 	u32 frame_len = tx_context->frame_len;
 	u16 current_rate = tx_context->tx_rate;
-	u8 need_ack = tx_context->need_ack;
 
-	buf->rrv_time_a = vnt_rxtx_rsvtime_le16(priv, tx_context->pkt_type,
-					frame_len, current_rate, need_ack);
-	buf->rrv_time_b = vnt_rxtx_rsvtime_le16(priv, PK_TYPE_11B,
-				frame_len, priv->top_cck_basic_rate, need_ack);
+	buf->rrv_time_a = vnt_rxtx_rsvtime_le16(tx_context);
+	buf->rrv_time_b = buf->rrv_time_a;
 
 	buf->cts_rrv_time_ba = vnt_get_rtscts_rsvtime_le(priv, 3,
 			tx_context->pkt_type, frame_len, current_rate);
@@ -519,10 +517,8 @@ static void vnt_rxtx_ab(struct vnt_usb_send_context *tx_context,
 	union vnt_tx_data_head *head = &tx_head->tx_ab.tx.head;
 	u32 frame_len = tx_context->frame_len;
 	u16 current_rate = tx_context->tx_rate;
-	u8 need_ack = tx_context->need_ack;
 
-	buf->rrv_time = vnt_rxtx_rsvtime_le16(priv, tx_context->pkt_type,
-					      frame_len, current_rate, need_ack);
+	buf->rrv_time = vnt_rxtx_rsvtime_le16(tx_context);
 
 	if (need_mic)
 		head = &tx_head->tx_ab.tx.mic.head;
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
