Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5244FCD8D0
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Oct 2019 21:10:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B6D8681B7B;
	Sun,  6 Oct 2019 19:10:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T1Jg0oLZySfi; Sun,  6 Oct 2019 19:10:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id AEFE987702;
	Sun,  6 Oct 2019 19:10:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 80D601BF23C
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 19:10:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7251A87702
 for <devel@linuxdriverproject.org>; Sun,  6 Oct 2019 19:10:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ZO837xPywF-X for <devel@linuxdriverproject.org>;
 Sun,  6 Oct 2019 19:10:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f195.google.com (mail-qt1-f195.google.com
 [209.85.160.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id B03D487699
 for <devel@driverdev.osuosl.org>; Sun,  6 Oct 2019 19:10:32 +0000 (UTC)
Received: by mail-qt1-f195.google.com with SMTP id o12so16223533qtf.3
 for <devel@driverdev.osuosl.org>; Sun, 06 Oct 2019 12:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tCwKqi1o+pVk0eCqSLaVvuDUC0Ngrzkx/4GvgrlbAtI=;
 b=mS7P9O3YIav8KEuZm3+CXz4iU8nGdp24dICzN6qTpCAj4FyyDIKphC91akWM3JaX3B
 NlHUo+PhefyQp5gX1NvaEIbsb77IcnHVcrt5lrCN8LLmWTkwyUmuepDsxxyghv/q8PE2
 ijoeLEBozBqnRaz+blVh4hzLwGgrNd6JeQAaCFF2edWP3/Esr06CZYIcFS8s4a7ajZeW
 2GOZ8vRTaeI8yQo0j0n+d6vCTbkzWv3MRQoDynqv5Hiu1AVON2pdtuwEs8dlH0zwtoqo
 cVeiSRmFWCq6nHnrPYHb5WfSy2xLWNCiJYD96V7SC48PGSGhYHZ8dz8/PdXLtZzUuXK2
 yIig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tCwKqi1o+pVk0eCqSLaVvuDUC0Ngrzkx/4GvgrlbAtI=;
 b=sPicxbsKNKIqHhR3IjzVWndF3GUxh48FfK8cALrEw5Tj23fVbnja3Z+rGH4kn9m8Ax
 FrZxBS01z3gCe/RzvxbZUTzlSipx1/uR05B1vP8WhbND/LDd/tpnRAk2Ysem/TMnToWB
 K4QZjfYsPTbTtCqk9UvyyRbbcPM8rP7WvQoEKjqxL0nHlIlahs0NWvbNjt3jdKwGTr2H
 KRbSsAaKUFzrcL/bVIbz2xlWTTv4jS5CRx0RnNST4SvMIv3+nnEw1l8nwftOVvUdi1RP
 lLpI2vCxEMvLjQgy6NYkGcxNgsTeyFI2tImXq/wDQBuNpDSNKwQHt3lST69VzYBdAKaY
 madA==
X-Gm-Message-State: APjAAAU32AqgzwWLJqhPBm9YUbYBoQI30BoasXTVmFv8pHg1JlqbfvO3
 9dPHQuhKu7cQ5Es758xDyD0=
X-Google-Smtp-Source: APXvYqwItOihsdzixZc6jmQdw0tZ+tKPcvSFsFBLii45UJYEemCFuLZyIDxttd4Gab/5f51kePxx1A==
X-Received: by 2002:ac8:6e8b:: with SMTP id c11mr26342411qtv.77.1570389031557; 
 Sun, 06 Oct 2019 12:10:31 -0700 (PDT)
Received: from GBdebian.terracota.local ([177.103.155.130])
 by smtp.gmail.com with ESMTPSA id u132sm6577518qka.50.2019.10.06.12.10.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 12:10:30 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net,
 gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: vt6656: align arguments with open parenthesis
Date: Sun,  6 Oct 2019 16:10:20 -0300
Message-Id: <20191006191020.7435-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Cleans up CHECKs of "Alignment should match open parenthesis"

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 63 +++++++++++++++++++++++------------
 1 file changed, 41 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 9def0748ffee..c7522841c8cf 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -285,14 +285,15 @@ static u16 vnt_rxtx_datahead_g(struct vnt_usb_send_context *tx_context,
 		buf->duration_b = dur;
 	} else {
 		buf->duration_a = vnt_get_duration_le(priv,
-						tx_context->pkt_type, need_ack);
+						      tx_context->pkt_type,
+						      need_ack);
 		buf->duration_b = vnt_get_duration_le(priv,
-							PK_TYPE_11B, need_ack);
+						      PK_TYPE_11B, need_ack);
 	}
 
 	buf->time_stamp_off_a = vnt_time_stamp_off(priv, rate);
 	buf->time_stamp_off_b = vnt_time_stamp_off(priv,
-					priv->top_cck_basic_rate);
+						   priv->top_cck_basic_rate);
 
 	tx_context->tx_hdr_size = vnt_mac_hdr_pos(tx_context, &buf->hdr);
 
@@ -325,7 +326,7 @@ static u16 vnt_rxtx_datahead_g_fb(struct vnt_usb_send_context *tx_context,
 
 	buf->time_stamp_off_a = vnt_time_stamp_off(priv, rate);
 	buf->time_stamp_off_b = vnt_time_stamp_off(priv,
-						priv->top_cck_basic_rate);
+						   priv->top_cck_basic_rate);
 
 	tx_context->tx_hdr_size = vnt_mac_hdr_pos(tx_context, &buf->hdr);
 
@@ -595,17 +596,24 @@ static u16 vnt_rxtx_rts(struct vnt_usb_send_context *tx_context,
 	u8 need_ack = tx_context->need_ack;
 
 	buf->rts_rrv_time_aa = vnt_get_rtscts_rsvtime_le(priv, 2,
-			tx_context->pkt_type, frame_len, current_rate);
+							 tx_context->pkt_type,
+							 frame_len,
+							 current_rate);
 	buf->rts_rrv_time_ba = vnt_get_rtscts_rsvtime_le(priv, 1,
-			tx_context->pkt_type, frame_len, current_rate);
+							 tx_context->pkt_type,
+							 frame_len,
+							 current_rate);
 	buf->rts_rrv_time_bb = vnt_get_rtscts_rsvtime_le(priv, 0,
-			tx_context->pkt_type, frame_len, current_rate);
+							 tx_context->pkt_type,
+							 frame_len,
+							 current_rate);
 
 	buf->rrv_time_a = vnt_rxtx_rsvtime_le16(priv, tx_context->pkt_type,
 						frame_len, current_rate,
 						need_ack);
 	buf->rrv_time_b = vnt_rxtx_rsvtime_le16(priv, PK_TYPE_11B, frame_len,
-					priv->top_cck_basic_rate, need_ack);
+						priv->top_cck_basic_rate,
+						need_ack);
 
 	if (need_mic)
 		head = &tx_head->tx_rts.tx.mic.head;
@@ -627,12 +635,16 @@ static u16 vnt_rxtx_cts(struct vnt_usb_send_context *tx_context,
 	u8 need_ack = tx_context->need_ack;
 
 	buf->rrv_time_a = vnt_rxtx_rsvtime_le16(priv, tx_context->pkt_type,
-					frame_len, current_rate, need_ack);
-	buf->rrv_time_b = vnt_rxtx_rsvtime_le16(priv, PK_TYPE_11B,
-				frame_len, priv->top_cck_basic_rate, need_ack);
+						frame_len, current_rate,
+						need_ack);
+	buf->rrv_time_b = vnt_rxtx_rsvtime_le16(priv, PK_TYPE_11B, frame_len,
+						priv->top_cck_basic_rate,
+						need_ack);
 
 	buf->cts_rrv_time_ba = vnt_get_rtscts_rsvtime_le(priv, 3,
-			tx_context->pkt_type, frame_len, current_rate);
+							 tx_context->pkt_type,
+							 frame_len,
+							 current_rate);
 
 	if (need_mic)
 		head = &tx_head->tx_cts.tx.mic.head;
@@ -655,18 +667,25 @@ static u16 vnt_rxtx_ab(struct vnt_usb_send_context *tx_context,
 	u8 need_ack = tx_context->need_ack;
 
 	buf->rrv_time = vnt_rxtx_rsvtime_le16(priv, tx_context->pkt_type,
-			frame_len, current_rate, need_ack);
+					      frame_len, current_rate,
+					      need_ack);
 
 	if (need_mic)
 		head = &tx_head->tx_ab.tx.mic.head;
 
 	if (need_rts) {
 		if (tx_context->pkt_type == PK_TYPE_11B)
-			buf->rts_rrv_time = vnt_get_rtscts_rsvtime_le(priv, 0,
-				tx_context->pkt_type, frame_len, current_rate);
+			buf->rts_rrv_time =
+				vnt_get_rtscts_rsvtime_le(priv, 0,
+							  tx_context->pkt_type,
+							  frame_len,
+							  current_rate);
 		else /* PK_TYPE_11A */
-			buf->rts_rrv_time = vnt_get_rtscts_rsvtime_le(priv, 2,
-				tx_context->pkt_type, frame_len, current_rate);
+			buf->rts_rrv_time =
+				vnt_get_rtscts_rsvtime_le(priv, 2,
+							  tx_context->pkt_type,
+							  frame_len,
+							  current_rate);
 
 		if (tx_context->fb_option &&
 		    tx_context->pkt_type == PK_TYPE_11A)
@@ -767,10 +786,10 @@ static void vnt_fill_txkey(struct vnt_usb_send_context *tx_context,
 		ether_addr_copy(mic_hdr->addr2, hdr->addr2);
 		ether_addr_copy(mic_hdr->addr3, hdr->addr3);
 
-		mic_hdr->frame_control = cpu_to_le16(
-			le16_to_cpu(hdr->frame_control) & 0xc78f);
-		mic_hdr->seq_ctrl = cpu_to_le16(
-				le16_to_cpu(hdr->seq_ctrl) & 0xf);
+		mic_hdr->frame_control =
+			cpu_to_le16(le16_to_cpu(hdr->frame_control) & 0xc78f);
+		mic_hdr->seq_ctrl =
+			cpu_to_le16(le16_to_cpu(hdr->seq_ctrl) & 0xf);
 
 		if (ieee80211_has_a4(hdr->frame_control))
 			ether_addr_copy(mic_hdr->addr4, hdr->addr4);
@@ -1036,7 +1055,7 @@ static int vnt_beacon_xmit(struct vnt_private *priv, struct sk_buff *skb)
 
 		/* Get Duration and TimeStampOff */
 		short_head->duration = vnt_get_duration_le(priv,
-						PK_TYPE_11B, false);
+							   PK_TYPE_11B, false);
 		short_head->time_stamp_off =
 			vnt_time_stamp_off(priv, current_rate);
 	}
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
