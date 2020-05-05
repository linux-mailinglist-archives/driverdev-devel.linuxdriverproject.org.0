Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A001C62EA
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 23:19:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 85E478654C;
	Tue,  5 May 2020 21:19:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id m6QTZpLtbxmQ; Tue,  5 May 2020 21:19:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id A50F186481;
	Tue,  5 May 2020 21:19:51 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2EF891BF3D4
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 21:19:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 269C9875DA
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 21:19:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id h08QVwtAsNqc for <devel@linuxdriverproject.org>;
 Tue,  5 May 2020 21:19:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id DE6C786E26
 for <devel@driverdev.osuosl.org>; Tue,  5 May 2020 21:19:48 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id g12so67997wmh.3
 for <devel@driverdev.osuosl.org>; Tue, 05 May 2020 14:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=ovg5uG6Er2DJMMJWpEb2o36AuuxqZ1svjaaL2gfkOuo=;
 b=p/cFx7ahsIoKBGlAo7yncJg/d8vZiWmKJNBjP4A2PY37ho4qrl2f45naLlId8C+8uB
 VPpUeKc2erJDBNHuGPG8Xzwa1V2Q0jbqnjUr6gE7dqG83XWJoVXsGY4OIL9RrTE11Cke
 FTffgjLZ7/n0WXTHu8WE03aKCDUVng45jXUsqIOD0gShoiIoyJfx+D8CAZ7GM8TDt3N9
 tPSoHokVIVUiQ81fXylJ4U4z3/TO5lA8e+92DBkzL2SCcMkzvxuonPdehz7zgfn0L70V
 aWMb1jH2PPGameg/m3KEMN+8/RO6Hx+hOEJXU92Z6KTwJMS4CICPYA+63/pvbaSC4HJ0
 CsKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=ovg5uG6Er2DJMMJWpEb2o36AuuxqZ1svjaaL2gfkOuo=;
 b=hLWkd94LyaX21+Tj08+Kst+pA3GmEqbAXPHMJ6G6lmtz4rH61KRBtB09+MOWcxYrbs
 Yp9lMxGvtO6DIDCZyQe23N3ub6Xyj3hvDHYsnCfHz0dkAzxTZ5KgIYrX0Am8EqvGkYco
 PuinRtVcWG7eaIlHMHti6EDxuil7lWU/rsOS2vmCX1Rsy3qv7Uk9W41Hannz3zTTfgZO
 WgZrNkZwaEdtt68TGStcW1hN5OhmBcrsijbSaGAEZ2Y4ShbrTWz5pulLP3XXyc5YuD2f
 vrb2Ey650lLxSJERsOQwq0duVJKzkh3JYKWNQTZ3V2cwUB2vz9+p+KucwqNc6STx/MDS
 2EnA==
X-Gm-Message-State: AGi0PubM6V8M2TNyJI76N+gfLOHma6NgA8VUPeBmn2XhciIJ1QXzM7Dn
 L7gYsyrtJgakDHO2z7hkImY=
X-Google-Smtp-Source: APiQypL6uXQsQRD/vg7Kf8cYy0Uo1KmfKVQNNFvHXNq+lUBkhogp/udvkPVIvLZMxiWqAGxazSxUSQ==
X-Received: by 2002:a7b:c5d4:: with SMTP id n20mr618983wmk.92.1588713587308;
 Tue, 05 May 2020 14:19:47 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.117.threembb.co.uk.
 [188.29.165.117])
 by smtp.gmail.com with ESMTPSA id a67sm35988wmc.30.2020.05.05.14.19.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 14:19:46 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 5/6] staging: vt6656: vnt_get_rtscts_rsvtime_le replace with
 rts/cts duration.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <4c0fe356-7e08-bf66-58b7-5ab683ba9536@gmail.com>
Date: Tue, 5 May 2020 22:19:45 +0100
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

rsvtime is the time needed in firmware to process the received
frame time in firmware so they can be the same as vnt_get_rts_duration
or vnt_get_cts_duration where appropriate.

The rts_rrv_time are now all the same timing in vnt_rxtx_rts.

So vnt_get_rtscts_rsvtime_le and and vnt_get_frame_time are no longer
required.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 113 ++--------------------------------
 1 file changed, 5 insertions(+), 108 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 47da9dabb133..8348ffe6ebfa 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -13,7 +13,6 @@
  *
  * Functions:
  *      vnt_generate_tx_parameter - Generate tx dma required parameter.
- *      vnt_get_rtscts_rsvtime_le- get rts/cts reserved time
  *      vnt_get_rsvtime- get frame reserved time
  *      vnt_fill_cts_head- fulfill CTS ctl header
  *
@@ -92,37 +91,6 @@ static struct vnt_usb_send_context
 	return NULL;
 }
 
-/* Frame time for Tx */
-static unsigned int vnt_get_frame_time(u8 preamble_type, u8 pkt_type,
-				       unsigned int frame_length, u16 tx_rate)
-{
-	unsigned int frame_time;
-	unsigned int preamble;
-	unsigned int rate;
-
-	if (tx_rate > RATE_54M)
-		return 0;
-
-	rate = (unsigned int)vnt_frame_time[tx_rate];
-
-	if (tx_rate <= RATE_11M) {
-		if (preamble_type == PREAMBLE_SHORT)
-			preamble = 96;
-		else
-			preamble = 192;
-
-		frame_time = DIV_ROUND_UP(frame_length * 80, rate);
-		return preamble + frame_time;
-	}
-
-	frame_time = DIV_ROUND_UP(frame_length * 8 + 22, rate);
-	frame_time = frame_time * 4;
-
-	if (pkt_type != PK_TYPE_11A)
-		frame_time += 6;
-	return 20 + frame_time;
-}
-
 /* Get Length, Service, and Signal fields of Phy for Tx */
 static void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
 			      u16 tx_rate, u8 pkt_type,
@@ -202,59 +170,6 @@ static __le16 vnt_rxtx_rsvtime_le16(struct vnt_usb_send_context *context)
 						 rate);
 }
 
-static __le16 vnt_get_rtscts_rsvtime_le(struct vnt_private *priv, u8 rsv_type,
-					u8 pkt_type, u32 frame_length,
-					u16 current_rate)
-{
-	u32 rrv_time, rts_time, cts_time, ack_time, data_time;
-
-	rrv_time = 0;
-	rts_time = 0;
-	cts_time = 0;
-	ack_time = 0;
-
-	data_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
-				       frame_length, current_rate);
-
-	if (rsv_type == 0) {
-		rts_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
-					      20, priv->top_cck_basic_rate);
-		ack_time = vnt_get_frame_time(priv->preamble_type,
-					      pkt_type, 14,
-					      priv->top_cck_basic_rate);
-		cts_time = ack_time;
-
-	} else if (rsv_type == 1) {
-		rts_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
-					      20, priv->top_cck_basic_rate);
-		cts_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
-					      14, priv->top_cck_basic_rate);
-		ack_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
-					      14, priv->top_ofdm_basic_rate);
-	} else if (rsv_type == 2) {
-		rts_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
-					      20, priv->top_ofdm_basic_rate);
-		ack_time = vnt_get_frame_time(priv->preamble_type,
-					      pkt_type, 14,
-					      priv->top_ofdm_basic_rate);
-		cts_time = ack_time;
-
-	} else if (rsv_type == 3) {
-		cts_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
-					      14, priv->top_cck_basic_rate);
-		ack_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
-					      14, priv->top_ofdm_basic_rate);
-
-		rrv_time = cts_time + ack_time + data_time + 2 * priv->sifs;
-
-		return cpu_to_le16((u16)rrv_time);
-	}
-
-	rrv_time = rts_time + cts_time + ack_time + data_time + 3 * priv->sifs;
-
-	return cpu_to_le16((u16)rrv_time);
-}
-
 static __le16 vnt_get_rts_duration(struct vnt_usb_send_context *context)
 {
 	struct vnt_private *priv = context->priv;
@@ -405,18 +320,12 @@ static void vnt_fill_cts_head(struct vnt_usb_send_context *tx_context,
 static void vnt_rxtx_rts(struct vnt_usb_send_context *tx_context,
 			 union vnt_tx_head *tx_head, bool need_mic)
 {
-	struct vnt_private *priv = tx_context->priv;
 	struct vnt_rrv_time_rts *buf = &tx_head->tx_rts.rts;
 	union vnt_tx_data_head *head = &tx_head->tx_rts.tx.head;
-	u32 frame_len = tx_context->frame_len;
-	u16 current_rate = tx_context->tx_rate;
 
-	buf->rts_rrv_time_aa = vnt_get_rtscts_rsvtime_le(priv, 2,
-			tx_context->pkt_type, frame_len, current_rate);
-	buf->rts_rrv_time_ba = vnt_get_rtscts_rsvtime_le(priv, 1,
-			tx_context->pkt_type, frame_len, current_rate);
-	buf->rts_rrv_time_bb = vnt_get_rtscts_rsvtime_le(priv, 0,
-			tx_context->pkt_type, frame_len, current_rate);
+	buf->rts_rrv_time_aa = vnt_get_rts_duration(tx_context);
+	buf->rts_rrv_time_ba = buf->rts_rrv_time_aa;
+	buf->rts_rrv_time_bb = buf->rts_rrv_time_aa;
 
 	buf->rrv_time_a = vnt_rxtx_rsvtime_le16(tx_context);
 	buf->rrv_time_b = buf->rrv_time_a;
@@ -430,17 +339,13 @@ static void vnt_rxtx_rts(struct vnt_usb_send_context *tx_context,
 static void vnt_rxtx_cts(struct vnt_usb_send_context *tx_context,
 			 union vnt_tx_head *tx_head, bool need_mic)
 {
-	struct vnt_private *priv = tx_context->priv;
 	struct vnt_rrv_time_cts *buf = &tx_head->tx_cts.cts;
 	union vnt_tx_data_head *head = &tx_head->tx_cts.tx.head;
-	u32 frame_len = tx_context->frame_len;
-	u16 current_rate = tx_context->tx_rate;
 
 	buf->rrv_time_a = vnt_rxtx_rsvtime_le16(tx_context);
 	buf->rrv_time_b = buf->rrv_time_a;
 
-	buf->cts_rrv_time_ba = vnt_get_rtscts_rsvtime_le(priv, 3,
-			tx_context->pkt_type, frame_len, current_rate);
+	buf->cts_rrv_time_ba = vnt_get_cts_duration(tx_context);
 
 	if (need_mic)
 		head = &tx_head->tx_cts.tx.mic.head;
@@ -452,11 +357,8 @@ static void vnt_rxtx_ab(struct vnt_usb_send_context *tx_context,
 			union vnt_tx_head *tx_head,
 			bool need_rts, bool need_mic)
 {
-	struct vnt_private *priv = tx_context->priv;
 	struct vnt_rrv_time_ab *buf = &tx_head->tx_ab.ab;
 	union vnt_tx_data_head *head = &tx_head->tx_ab.tx.head;
-	u32 frame_len = tx_context->frame_len;
-	u16 current_rate = tx_context->tx_rate;
 
 	buf->rrv_time = vnt_rxtx_rsvtime_le16(tx_context);
 
@@ -464,12 +366,7 @@ static void vnt_rxtx_ab(struct vnt_usb_send_context *tx_context,
 		head = &tx_head->tx_ab.tx.mic.head;
 
 	if (need_rts) {
-		if (tx_context->pkt_type == PK_TYPE_11B)
-			buf->rts_rrv_time = vnt_get_rtscts_rsvtime_le(priv, 0,
-				tx_context->pkt_type, frame_len, current_rate);
-		else /* PK_TYPE_11A */
-			buf->rts_rrv_time = vnt_get_rtscts_rsvtime_le(priv, 2,
-				tx_context->pkt_type, frame_len, current_rate);
+		buf->rts_rrv_time = vnt_get_rts_duration(tx_context);
 
 		vnt_rxtx_rts_ab_head(tx_context, &head->rts_ab);
 
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
