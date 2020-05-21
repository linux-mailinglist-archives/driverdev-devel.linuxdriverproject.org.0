Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B902E1DCA54
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 11:40:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B6E41249CF;
	Thu, 21 May 2020 09:40:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VImR5LnMxBi4; Thu, 21 May 2020 09:40:25 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D47B5241AE;
	Thu, 21 May 2020 09:40:22 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2B4B71BF47D
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:40:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2700C88B22
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:40:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 93eYKR9m0ZcH for <devel@linuxdriverproject.org>;
 Thu, 21 May 2020 09:40:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 35FD588AEE
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 09:40:19 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id m12so5026615wmc.0
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 02:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=/pwdCDKjLF+e60HESsBhV0UAePDZFaCim4hK40cyzwA=;
 b=Zn1GURocLwVv1FHneGu28MRLLeF4Q1djtyuhV5Bb9sgDl0cC4K5A90QEfCbwEHFcqg
 k3JR8/RLEau0tIxz8ArgCiVcJDRqGQk19DDAg8iEN2IOkCIknBHI5gxUhJPZpjT54oLz
 z0YymAMBKm2wRIE6xHI3xzmVC1uvsYJ3HpdnWuNfdiVhOxwXgo3q+5hyYbWrTwsMWrvn
 3Ov/sVohqQDAL+/qDZVCDuKeO9n9AyGt6zA9zAwzibbegw2LNkFabNpyAMq1epIMP/ib
 P89rU6QV1zS9bNL1QSSoYRiyLrWMM89lpL6j04/kc8eTaxnPVOOerOHH+EFXKEXwIAl1
 ypwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=/pwdCDKjLF+e60HESsBhV0UAePDZFaCim4hK40cyzwA=;
 b=MWxpGhOreIIGBoLtUMFJKK/1Q8scHcpDFiJq67+dJ+BDYB0J+3pNwMrDOuBEU13Drk
 Hfl27Cp3HEoqHCE2z83wrVE+gBCvMorlY09IT2zDNWoLKCpGHtDOkJg52k08+WZiAm7Y
 b8toZdKordzhphxoMlGHRuEmzX3/5nzJeezAya9LtcXRCHg+xKRqDDp2Jy2u7m43k52i
 dtJYasVXzXhnlN6MJcCy3zFO7CcWCLSFlnJvWYF/5Lgjnt0viKbDVjOmzQ2naQQWOFKu
 UecQgRJfwf74mwIiRZOt/4f+lsmEHK+/VnUWkkKDrc7vBIsnLvx8w+b944vE2hiOgY1S
 0S3Q==
X-Gm-Message-State: AOAM531/mpqzpDRc+5HWvfaanpDUUvFlElgsAZzwaiP73+2z5axiaj7+
 fgMi++8h25w3E7L+WrhgadY=
X-Google-Smtp-Source: ABdhPJxDsCiFlcccVVUlVIMz9Z8lTmL2kVVlADYDenAoPU8toxDtwdxzxyNsz23M83mZOMb6fjCOkw==
X-Received: by 2002:a7b:c5cc:: with SMTP id n12mr8088744wmk.69.1590054017620; 
 Thu, 21 May 2020 02:40:17 -0700 (PDT)
Received: from [192.168.43.18] ([85.255.237.70])
 by smtp.gmail.com with ESMTPSA id 32sm5968714wrg.19.2020.05.21.02.40.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 02:40:17 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 04/10] staging: vt6656: use ieee80211_tx_info to replace
 need_mic
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <e8969f47-ffc7-6eb6-9f3c-72b06970c1b8@gmail.com>
Date: Thu, 21 May 2020 10:40:16 +0100
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

Use the info->control.hw_key to replace need mic which is only
present when info->control.hw_key->cipher == WLAN_CIPHER_SUITE_CCMP.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 39 +++++++++++++++++++++--------------
 1 file changed, 23 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 87fe7df07f03..ea5bcc772668 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -296,8 +296,9 @@ static void vnt_fill_cts_head(struct vnt_usb_send_context *tx_context,
 }
 
 static void vnt_rxtx_rts(struct vnt_usb_send_context *tx_context,
-			 union vnt_tx_head *tx_head, bool need_mic)
+			 union vnt_tx_head *tx_head)
 {
+	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(tx_context->skb);
 	struct vnt_rrv_time_rts *buf = &tx_head->tx_rts.rts;
 	union vnt_tx_data_head *head = &tx_head->tx_rts.tx.head;
 
@@ -308,15 +309,18 @@ static void vnt_rxtx_rts(struct vnt_usb_send_context *tx_context,
 	buf->rrv_time_a = vnt_rxtx_rsvtime_le16(tx_context);
 	buf->rrv_time_b = buf->rrv_time_a;
 
-	if (need_mic)
-		head = &tx_head->tx_rts.tx.mic.head;
+	if (info->control.hw_key) {
+		if (info->control.hw_key->cipher == WLAN_CIPHER_SUITE_CCMP)
+			head = &tx_head->tx_rts.tx.mic.head;
+	}
 
 	vnt_rxtx_rts_g_head(tx_context, &head->rts_g);
 }
 
 static void vnt_rxtx_cts(struct vnt_usb_send_context *tx_context,
-			 union vnt_tx_head *tx_head, bool need_mic)
+			 union vnt_tx_head *tx_head)
 {
+	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(tx_context->skb);
 	struct vnt_rrv_time_cts *buf = &tx_head->tx_cts.cts;
 	union vnt_tx_data_head *head = &tx_head->tx_cts.tx.head;
 
@@ -325,23 +329,28 @@ static void vnt_rxtx_cts(struct vnt_usb_send_context *tx_context,
 
 	buf->cts_rrv_time_ba = vnt_get_cts_duration(tx_context);
 
-	if (need_mic)
-		head = &tx_head->tx_cts.tx.mic.head;
+	if (info->control.hw_key) {
+		if (info->control.hw_key->cipher == WLAN_CIPHER_SUITE_CCMP)
+			head = &tx_head->tx_cts.tx.mic.head;
+	}
 
 	vnt_fill_cts_head(tx_context, head);
 }
 
 static void vnt_rxtx_ab(struct vnt_usb_send_context *tx_context,
 			union vnt_tx_head *tx_head,
-			bool need_rts, bool need_mic)
+			bool need_rts)
 {
+	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(tx_context->skb);
 	struct vnt_rrv_time_ab *buf = &tx_head->tx_ab.ab;
 	union vnt_tx_data_head *head = &tx_head->tx_ab.tx.head;
 
 	buf->rrv_time = vnt_rxtx_rsvtime_le16(tx_context);
 
-	if (need_mic)
-		head = &tx_head->tx_ab.tx.mic.head;
+	if (info->control.hw_key) {
+		if (info->control.hw_key->cipher == WLAN_CIPHER_SUITE_CCMP)
+			head = &tx_head->tx_ab.tx.mic.head;
+	}
 
 	if (need_rts) {
 		buf->rts_rrv_time = vnt_get_rts_duration(tx_context);
@@ -356,22 +365,22 @@ static void vnt_rxtx_ab(struct vnt_usb_send_context *tx_context,
 
 static void vnt_generate_tx_parameter(struct vnt_usb_send_context *tx_context,
 				      struct vnt_tx_buffer *tx_buffer,
-				      u32 need_mic, bool need_rts)
+				      bool need_rts)
 {
 	if (tx_context->pkt_type == PK_TYPE_11GB ||
 	    tx_context->pkt_type == PK_TYPE_11GA) {
 		if (need_rts) {
-			vnt_rxtx_rts(tx_context, &tx_buffer->tx_head, need_mic);
+			vnt_rxtx_rts(tx_context, &tx_buffer->tx_head);
 
 			return;
 		}
 
-		vnt_rxtx_cts(tx_context, &tx_buffer->tx_head, need_mic);
+		vnt_rxtx_cts(tx_context, &tx_buffer->tx_head);
 
 		return;
 	}
 
-	vnt_rxtx_ab(tx_context, &tx_buffer->tx_head, need_rts, need_mic);
+	vnt_rxtx_ab(tx_context, &tx_buffer->tx_head, need_rts);
 }
 
 static void vnt_fill_txkey(struct vnt_tx_buffer *tx_buffer,
@@ -499,7 +508,6 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	u16 tx_bytes, tx_header_size, tx_body_size;
 	u8 pkt_type;
 	bool need_rts = false;
-	bool need_mic = false;
 
 	hdr = (struct ieee80211_hdr *)(skb->data);
 
@@ -609,7 +617,6 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 			break;
 		case WLAN_CIPHER_SUITE_CCMP:
 			tx_buffer_head->frag_ctl |= cpu_to_le16(FRAGCTL_AES);
-			need_mic = true;
 		default:
 			break;
 		}
@@ -618,7 +625,7 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 
 	tx_buffer_head->current_rate = cpu_to_le16(rate->hw_value);
 
-	vnt_generate_tx_parameter(tx_context, tx_buffer, need_mic, need_rts);
+	vnt_generate_tx_parameter(tx_context, tx_buffer, need_rts);
 
 	tx_buffer_head->frag_ctl |= cpu_to_le16(FRAGCTL_NONFRAG);
 
-- 
2.25.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
