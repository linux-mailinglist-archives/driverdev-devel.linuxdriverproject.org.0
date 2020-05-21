Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26ADE1DCA81
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 11:54:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0FEDB89152;
	Thu, 21 May 2020 09:54:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Z7JeumY3gTAZ; Thu, 21 May 2020 09:54:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6D57689165;
	Thu, 21 May 2020 09:54:36 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 4E6A41BF47D
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:54:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 22EDF2306F
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:54:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ap5ZQIDOfmfk for <devel@linuxdriverproject.org>;
 Thu, 21 May 2020 09:54:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 7DA65204E9
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 09:54:32 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id l18so6044195wrn.6
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 02:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=5QeQ4he9h0xADmEWbOoDulC21CWqkbyqDnHh7T76EKo=;
 b=Kn+GS2GjsgZeE2Xk4ryfb00h4EBKZ6zR3fWSmjAj2dKsffKYVYYVodj8scDKH6R93A
 xGlOgDWRA4J1wE67EOu5Z+GJWQ3X+LHV1NNnYzxPJXzw5ilY22mQSmtIqRPeKrAggOQp
 rtwFtVg04mBGs4byajNCIvU9jMkSC/xYzix9fJLP2V8mZN/xjsyUaxD8epfAmtMHCxW7
 6LynC3jF6qdxnQ/ORlNNuTAr/lcvC3rLbwCJ33oLaLF/SB41KLmjuFTTZ/ySjEZ9zzmr
 8PRb3vtHRzfFqzEnV7Ly2Mx5bQ6wkrbRfoL6Ccffz0tpqrokUhXRawyLFuSy53fzIFrj
 440w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=5QeQ4he9h0xADmEWbOoDulC21CWqkbyqDnHh7T76EKo=;
 b=JqwoK51nQmtYrecrodHYeOuCOYsk/eT5O2NTZvv+HqiahsBJRy0ezAkQmP+Smcaefh
 I0ewpfy213SHcIxfYGnM/qBGHQ8C6ixa7pc8O5iKmTNlh9oYmAwuieBJYf90DcO9qx+0
 THfSCMLw6nV5/NDMll4HNbR35GmQLedLGaKor8AkgdliV7IhfYI0adDDf5CjVwIoiR7g
 a+NJDANOVWDY8yUwEeTe+GXkUTyi3AwBpzGo5+Pk9Ibz2Z/a4NzLCTNoq5wUzRgLkZ+R
 BhzGUGRHn5GGJ9fvPfIjBCn91XDwiJfmBnuvInntiARHA9c/5jze6XwNfpm0yzFPnXaV
 OuxA==
X-Gm-Message-State: AOAM532n4Yr/6n2RxpzxsGdQGwZHtxZxP02bNiGloy652ejVzXYqAGCj
 u5u/oQGaEuKw/D4ruUxa0q9XsITx0n1Jsg==
X-Google-Smtp-Source: ABdhPJz7KRZBSjlGdNM0DfJ2R+MxsYaiwL3K8y61pbBHazmB9QdsMbNr2NehwxvRG4r+rKu0urDL/Q==
X-Received: by 2002:adf:e441:: with SMTP id t1mr7664441wrm.347.1590054870889; 
 Thu, 21 May 2020 02:54:30 -0700 (PDT)
Received: from [192.168.43.18] ([85.255.237.70])
 by smtp.gmail.com with ESMTPSA id b12sm6295375wmj.0.2020.05.21.02.54.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 02:54:30 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 09/10] staging: vt6656: Move calling point of vnt_fill_txkey.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <f08a6f07-a77e-0b8e-cb05-505a1f995683@gmail.com>
Date: Thu, 21 May 2020 10:54:29 +0100
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

Change vnt_fill_txkey to return true if mic_hdr is needed and
change calling point at where it is to be placed.

tx_buffer is already in tx_context.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 191 +++++++++++++++++-----------------
 1 file changed, 95 insertions(+), 96 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index a0672ca51138..bbe449af8acf 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -295,94 +295,8 @@ static void vnt_fill_cts_head(struct vnt_usb_send_context *tx_context,
 	vnt_rxtx_datahead_g(tx_context, &buf->data_head);
 }
 
-static void vnt_rxtx_rts(struct vnt_usb_send_context *tx_context,
-			 union vnt_tx_head *tx_head)
-{
-	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(tx_context->skb);
-	struct vnt_rrv_time_rts *buf = &tx_head->tx_rts.rts;
-	union vnt_tx_data_head *head = &tx_head->tx_rts.tx.head;
-
-	buf->rts_rrv_time_aa = vnt_get_rts_duration(tx_context);
-	buf->rts_rrv_time_ba = buf->rts_rrv_time_aa;
-	buf->rts_rrv_time_bb = buf->rts_rrv_time_aa;
-
-	buf->rrv_time_a = vnt_rxtx_rsvtime_le16(tx_context);
-	buf->rrv_time_b = buf->rrv_time_a;
-
-	if (info->control.hw_key) {
-		if (info->control.hw_key->cipher == WLAN_CIPHER_SUITE_CCMP)
-			head = &tx_head->tx_rts.tx.mic.head;
-	}
-
-	vnt_rxtx_rts_g_head(tx_context, &head->rts_g);
-}
-
-static void vnt_rxtx_cts(struct vnt_usb_send_context *tx_context,
-			 union vnt_tx_head *tx_head)
-{
-	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(tx_context->skb);
-	struct vnt_rrv_time_cts *buf = &tx_head->tx_cts.cts;
-	union vnt_tx_data_head *head = &tx_head->tx_cts.tx.head;
-
-	buf->rrv_time_a = vnt_rxtx_rsvtime_le16(tx_context);
-	buf->rrv_time_b = buf->rrv_time_a;
-
-	buf->cts_rrv_time_ba = vnt_get_cts_duration(tx_context);
-
-	if (info->control.hw_key) {
-		if (info->control.hw_key->cipher == WLAN_CIPHER_SUITE_CCMP)
-			head = &tx_head->tx_cts.tx.mic.head;
-	}
-
-	vnt_fill_cts_head(tx_context, head);
-}
-
-static void vnt_rxtx_ab(struct vnt_usb_send_context *tx_context,
-			union vnt_tx_head *tx_head)
-{
-	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(tx_context->skb);
-	struct vnt_rrv_time_ab *buf = &tx_head->tx_ab.ab;
-	union vnt_tx_data_head *head = &tx_head->tx_ab.tx.head;
-
-	buf->rrv_time = vnt_rxtx_rsvtime_le16(tx_context);
-
-	if (info->control.hw_key) {
-		if (info->control.hw_key->cipher == WLAN_CIPHER_SUITE_CCMP)
-			head = &tx_head->tx_ab.tx.mic.head;
-	}
-
-	if (info->control.use_rts) {
-		buf->rts_rrv_time = vnt_get_rts_duration(tx_context);
-
-		vnt_rxtx_rts_ab_head(tx_context, &head->rts_ab);
-
-		return;
-	}
-
-	vnt_rxtx_datahead_ab(tx_context, &head->data_head_ab);
-}
-
-static void vnt_generate_tx_parameter(struct vnt_usb_send_context *tx_context,
-				      struct vnt_tx_buffer *tx_buffer)
-{
-	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(tx_context->skb);
-
-	if (info->control.use_cts_prot) {
-		if (info->control.use_rts) {
-			vnt_rxtx_rts(tx_context, &tx_buffer->tx_head);
-
-			return;
-		}
-
-		vnt_rxtx_cts(tx_context, &tx_buffer->tx_head);
-
-		return;
-	}
-
-	vnt_rxtx_ab(tx_context, &tx_buffer->tx_head);
-}
-
-static void vnt_fill_txkey(struct vnt_tx_buffer *tx_buffer, struct sk_buff *skb)
+/* returns true if mic_hdr is needed */
+static bool vnt_fill_txkey(struct vnt_tx_buffer *tx_buffer, struct sk_buff *skb)
 {
 	struct vnt_tx_fifo_head *fifo = &tx_buffer->fifo_head;
 	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
@@ -455,10 +369,101 @@ static void vnt_fill_txkey(struct vnt_tx_buffer *tx_buffer, struct sk_buff *skb)
 
 		memcpy(fifo->tx_key, tx_key->key, WLAN_KEY_LEN_CCMP);
 
-		break;
+		return true;
 	default:
 		break;
 	}
+
+	return false;
+}
+
+static void vnt_rxtx_rts(struct vnt_usb_send_context *tx_context)
+{
+	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(tx_context->skb);
+	struct vnt_tx_buffer *tx_buffer = tx_context->tx_buffer;
+	union vnt_tx_head *tx_head = &tx_buffer->tx_head;
+	struct vnt_rrv_time_rts *buf = &tx_head->tx_rts.rts;
+	union vnt_tx_data_head *head = &tx_head->tx_rts.tx.head;
+
+	buf->rts_rrv_time_aa = vnt_get_rts_duration(tx_context);
+	buf->rts_rrv_time_ba = buf->rts_rrv_time_aa;
+	buf->rts_rrv_time_bb = buf->rts_rrv_time_aa;
+
+	buf->rrv_time_a = vnt_rxtx_rsvtime_le16(tx_context);
+	buf->rrv_time_b = buf->rrv_time_a;
+
+	if (info->control.hw_key) {
+		if (vnt_fill_txkey(tx_buffer, tx_context->skb))
+			head = &tx_head->tx_rts.tx.mic.head;
+	}
+
+	vnt_rxtx_rts_g_head(tx_context, &head->rts_g);
+}
+
+static void vnt_rxtx_cts(struct vnt_usb_send_context *tx_context)
+{
+	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(tx_context->skb);
+	struct vnt_tx_buffer *tx_buffer = tx_context->tx_buffer;
+	union vnt_tx_head *tx_head = &tx_buffer->tx_head;
+	struct vnt_rrv_time_cts *buf = &tx_head->tx_cts.cts;
+	union vnt_tx_data_head *head = &tx_head->tx_cts.tx.head;
+
+	buf->rrv_time_a = vnt_rxtx_rsvtime_le16(tx_context);
+	buf->rrv_time_b = buf->rrv_time_a;
+
+	buf->cts_rrv_time_ba = vnt_get_cts_duration(tx_context);
+
+	if (info->control.hw_key) {
+		if (vnt_fill_txkey(tx_buffer, tx_context->skb))
+			head = &tx_head->tx_cts.tx.mic.head;
+	}
+
+	vnt_fill_cts_head(tx_context, head);
+}
+
+static void vnt_rxtx_ab(struct vnt_usb_send_context *tx_context)
+{
+	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(tx_context->skb);
+	struct vnt_tx_buffer *tx_buffer = tx_context->tx_buffer;
+	union vnt_tx_head *tx_head = &tx_buffer->tx_head;
+	struct vnt_rrv_time_ab *buf = &tx_head->tx_ab.ab;
+	union vnt_tx_data_head *head = &tx_head->tx_ab.tx.head;
+
+	buf->rrv_time = vnt_rxtx_rsvtime_le16(tx_context);
+
+	if (info->control.hw_key) {
+		if (vnt_fill_txkey(tx_buffer, tx_context->skb))
+			head = &tx_head->tx_ab.tx.mic.head;
+	}
+
+	if (info->control.use_rts) {
+		buf->rts_rrv_time = vnt_get_rts_duration(tx_context);
+
+		vnt_rxtx_rts_ab_head(tx_context, &head->rts_ab);
+
+		return;
+	}
+
+	vnt_rxtx_datahead_ab(tx_context, &head->data_head_ab);
+}
+
+static void vnt_generate_tx_parameter(struct vnt_usb_send_context *tx_context)
+{
+	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(tx_context->skb);
+
+	if (info->control.use_cts_prot) {
+		if (info->control.use_rts) {
+			vnt_rxtx_rts(tx_context);
+
+			return;
+		}
+
+		vnt_rxtx_cts(tx_context);
+
+		return;
+	}
+
+	vnt_rxtx_ab(tx_context);
 }
 
 static u16 vnt_get_hdr_size(struct ieee80211_tx_info *info)
@@ -621,16 +626,10 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 
 	tx_buffer_head->current_rate = cpu_to_le16(rate->hw_value);
 
-	vnt_generate_tx_parameter(tx_context, tx_buffer);
+	vnt_generate_tx_parameter(tx_context);
 
 	tx_buffer_head->frag_ctl |= cpu_to_le16(FRAGCTL_NONFRAG);
 
-	if (info->control.hw_key) {
-		tx_key = info->control.hw_key;
-		if (tx_key->keylen > 0)
-			vnt_fill_txkey(tx_buffer, skb);
-	}
-
 	priv->seq_counter = (le16_to_cpu(hdr->seq_ctrl) &
 						IEEE80211_SCTL_SEQ) >> 4;
 
-- 
2.25.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
