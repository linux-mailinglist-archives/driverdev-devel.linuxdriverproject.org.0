Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C251DCA56
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 11:42:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3D67C88331;
	Thu, 21 May 2020 09:42:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5tudAzZ+SnfB; Thu, 21 May 2020 09:42:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 11C1D8831B;
	Thu, 21 May 2020 09:42:20 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4FCC51BF47D
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:42:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4C91387379
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:42:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id X1BUFjcxOeE5 for <devel@linuxdriverproject.org>;
 Thu, 21 May 2020 09:42:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 72A2B87278
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 09:42:17 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id i15so5974069wrx.10
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 02:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=usJtu7R5Hhl5Z8TUzvQCBPkQWGFxbJL90BBgLqwpdIk=;
 b=ooEt1Hk7utn7Qm4uNttmPvtDsV3s7zI0OmcwuzGJBvDeYSRB9dT2mm/kg7q1C8sbCn
 XdPMeE7Ks+Qvca3wIB7N+Cr4amqY5EK9TxhtsbIy2jJQcx7InuD/zM9HDt4MGfmW87MA
 MXJg61qH4iLC5nP9vZ6x02/GNWY6CVCghjNgzN/bXsBO7sUtnJtUtMHeXp+95WDuLfCJ
 9UryTqHZnJmpeISL1ZTbPv5UyiKVVl2F7a0uIy4rrEmVqKVhpMRSE7V+fLvfWZk/5mXx
 zh8jmBE8u4ReQsDE3K81oMj3Exmp9AbaeyCHdTSeuj+TQZ9w2xCjv5PPEFcyW+bpoXTT
 5SZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=usJtu7R5Hhl5Z8TUzvQCBPkQWGFxbJL90BBgLqwpdIk=;
 b=MWWoABtrJEdpDh8dWt8r8KR9RqQq1UQOjnMHpwuXB1szXknccVhy5up2QRH35+1esx
 IxKg+ONa1pQzrlZ9DWnhZec2ac8VsirMSv8IeCvqWEQlg4C9zabYejfY1EKCYyixWQCF
 fQg8V5qU0NX9u5ZsrhsS9lmtbwNmrJNA6FPrRRwhvC3m+313hX6dJEwyjCxk48WitXpI
 LMVq3El25aM74BPJs2s9Dj074tmOis4JnKAjofcnSphSBo+yZmbIdGiS4U6BNoROc6Sf
 2xums3DwBuxkGcwbqFnYZjpmxi8mRyxzjPNNy8/gghBLM4oxcPiqi45640/8zL7wxCoK
 FE0g==
X-Gm-Message-State: AOAM531BxFT+AQFbXbkr8YbvrcmLfCYJzxN28CQe6xu4qNez8ZLXNXqu
 KROF1jTabuygkPbgFEoAQLmD5u87Ixf1HA==
X-Google-Smtp-Source: ABdhPJxiLG5qiRNjsAXF07VxPFnfbRskoYUxrb0zVqUB/bv0v8atJjlSVybhquwsWliQKebfQHFrYA==
X-Received: by 2002:adf:fdc5:: with SMTP id i5mr7517714wrs.176.1590054135855; 
 Thu, 21 May 2020 02:42:15 -0700 (PDT)
Received: from [192.168.43.18] ([85.255.237.70])
 by smtp.gmail.com with ESMTPSA id u65sm5937594wmg.8.2020.05.21.02.42.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 02:42:15 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 05/10] staging: vt6656: rxtx use ieee80211_tx_info for rts/cts
 control
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <1b21b3db-b9ef-c167-8f88-b32646ba5a19@gmail.com>
Date: Thu, 21 May 2020 10:42:14 +0100
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

Use the control for rts/cts exhanges replacing need_rts and use_cts_prot for
packet type PK_TYPE_11GB / PK_TYPE_11GA

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 24 ++++++++++--------------
 1 file changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index ea5bcc772668..310d0eccebd1 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -338,8 +338,7 @@ static void vnt_rxtx_cts(struct vnt_usb_send_context *tx_context,
 }
 
 static void vnt_rxtx_ab(struct vnt_usb_send_context *tx_context,
-			union vnt_tx_head *tx_head,
-			bool need_rts)
+			union vnt_tx_head *tx_head)
 {
 	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(tx_context->skb);
 	struct vnt_rrv_time_ab *buf = &tx_head->tx_ab.ab;
@@ -352,7 +351,7 @@ static void vnt_rxtx_ab(struct vnt_usb_send_context *tx_context,
 			head = &tx_head->tx_ab.tx.mic.head;
 	}
 
-	if (need_rts) {
+	if (info->control.use_rts) {
 		buf->rts_rrv_time = vnt_get_rts_duration(tx_context);
 
 		vnt_rxtx_rts_ab_head(tx_context, &head->rts_ab);
@@ -364,12 +363,12 @@ static void vnt_rxtx_ab(struct vnt_usb_send_context *tx_context,
 }
 
 static void vnt_generate_tx_parameter(struct vnt_usb_send_context *tx_context,
-				      struct vnt_tx_buffer *tx_buffer,
-				      bool need_rts)
+				      struct vnt_tx_buffer *tx_buffer)
 {
-	if (tx_context->pkt_type == PK_TYPE_11GB ||
-	    tx_context->pkt_type == PK_TYPE_11GA) {
-		if (need_rts) {
+	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(tx_context->skb);
+
+	if (info->control.use_cts_prot) {
+		if (info->control.use_rts) {
 			vnt_rxtx_rts(tx_context, &tx_buffer->tx_head);
 
 			return;
@@ -380,7 +379,7 @@ static void vnt_generate_tx_parameter(struct vnt_usb_send_context *tx_context,
 		return;
 	}
 
-	vnt_rxtx_ab(tx_context, &tx_buffer->tx_head, need_rts);
+	vnt_rxtx_ab(tx_context, &tx_buffer->tx_head);
 }
 
 static void vnt_fill_txkey(struct vnt_tx_buffer *tx_buffer,
@@ -507,7 +506,6 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	unsigned long flags;
 	u16 tx_bytes, tx_header_size, tx_body_size;
 	u8 pkt_type;
-	bool need_rts = false;
 
 	hdr = (struct ieee80211_hdr *)(skb->data);
 
@@ -594,10 +592,8 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	if (ieee80211_has_retry(hdr->frame_control))
 		tx_buffer_head->fifo_ctl |= cpu_to_le16(FIFOCTL_LRETRY);
 
-	if (tx_rate->flags & IEEE80211_TX_RC_USE_RTS_CTS) {
-		need_rts = true;
+	if (info->control.use_rts)
 		tx_buffer_head->fifo_ctl |= cpu_to_le16(FIFOCTL_RTS);
-	}
 
 	if (ieee80211_has_a4(hdr->frame_control))
 		tx_buffer_head->fifo_ctl |= cpu_to_le16(FIFOCTL_LHEAD);
@@ -625,7 +621,7 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 
 	tx_buffer_head->current_rate = cpu_to_le16(rate->hw_value);
 
-	vnt_generate_tx_parameter(tx_context, tx_buffer, need_rts);
+	vnt_generate_tx_parameter(tx_context, tx_buffer);
 
 	tx_buffer_head->frag_ctl |= cpu_to_le16(FRAGCTL_NONFRAG);
 
-- 
2.25.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
