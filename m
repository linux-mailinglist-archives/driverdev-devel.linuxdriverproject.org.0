Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4D41DCA5D
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 11:44:08 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id DF4F524F0B;
	Thu, 21 May 2020 09:44:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id M3uD4l3Ib-SL; Thu, 21 May 2020 09:44:05 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 063ED245E3;
	Thu, 21 May 2020 09:44:04 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 79AE01BF47D
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:44:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 75EB22314E
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:44:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pYVlAzQQm0fi for <devel@linuxdriverproject.org>;
 Thu, 21 May 2020 09:44:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id 12959204E9
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 09:44:00 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id u1so5018231wmn.3
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 02:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=NTVAkejfWjyTo7BhK8Y0RFgpAEQ+hg4BcBIQrLv9Jg0=;
 b=or3At3+vnVNGd1BP8JClD0lCgdiTn8J9T6bzZu3g7Uak8IqNsRAn+HDLNRZ6cbMT3N
 qaJhVQJnKR8l8ErAp13b8HITNA66m+wYRe38MXwlDPdt8RAULvKh8Ltw1jAuI18BvEzs
 wcJKmh31giOv1DVodw/H8Mi99cgdV+h3YqoAcmInN9V+EbNhjrq/vumNcCCPWSAKlJFh
 nOIXoIfC0XK8n9WrxAApKoluRyZw7klHk3IV9xw2NUoOMVrVa7Of02O6LIZ5OWTqS4Ff
 d49SujfDVD4Zmvm4bunGfYquVQBQXyTye4PPLRLitVGeofZWdem9a0I42MW0OHPyZ9S1
 w4Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=NTVAkejfWjyTo7BhK8Y0RFgpAEQ+hg4BcBIQrLv9Jg0=;
 b=ZO7Zei4DW25y0piFjZvfkz26IE5+/HawIaMaR3EsmDjmbqaEhmSuwgHDFAxEnD2f/c
 iRbJloqDcCNrm7yeW0xungSVc83boUA8Hr+szK0JGSALIOV7KvxoNAuCn4NBlRCW1jzp
 XJRlQ7hLGFc8c60WkjXSOSOvdYiqING5uxqeLbeSNepfANmfPCkZjKuzUaYpgo9aHU2m
 EC3sbsJVQqlrK1kyoQI+I72kt/8G9CD73P+0bRNiDE5rOUgBtYOijGmBrfptAmVn4uFJ
 ko8D8KWc2oR7vcoPJfNujkAytmc65uOpE+wLodJ+9yNcybrCt2AhTN8RSvHgwBM7OfAZ
 6gzQ==
X-Gm-Message-State: AOAM531FjpnbyXxdK8+WX4SIrfD9sqAvOKhtBERZJ818Q2NPvFDnTmEr
 NCop0vRnS5ZuIspDHiHJFg8=
X-Google-Smtp-Source: ABdhPJypf8AGniJpVL9QoUsOpQ7x1p30DAxkPKMXrG0jtkJfXkQHrbdEdYNaD/YZSkkihf//UBeQ6g==
X-Received: by 2002:a1c:7205:: with SMTP id n5mr8741185wmc.189.1590054238661; 
 Thu, 21 May 2020 02:43:58 -0700 (PDT)
Received: from [192.168.43.18] ([85.255.237.70])
 by smtp.gmail.com with ESMTPSA id a10sm6041034wmf.46.2020.05.21.02.43.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 02:43:58 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 06/10] staging: vt6656: Move key_buffer inside vnt_fill_txkey.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <3631f327-1386-90a2-ba9a-bb62617f3c66@gmail.com>
Date: Thu, 21 May 2020 10:43:57 +0100
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

Use vnt_tx_fifo_head to point directly at tx_key removing key_buffer.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 310d0eccebd1..2d7a8fc70d92 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -383,9 +383,10 @@ static void vnt_generate_tx_parameter(struct vnt_usb_send_context *tx_context,
 }
 
 static void vnt_fill_txkey(struct vnt_tx_buffer *tx_buffer,
-			   u8 *key_buffer, struct ieee80211_key_conf *tx_key,
+			   struct ieee80211_key_conf *tx_key,
 			   struct sk_buff *skb, u16 payload_len)
 {
+	struct vnt_tx_fifo_head *fifo = &tx_buffer->fifo_head;
 	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 	struct vnt_mic_hdr *mic_hdr;
 	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
@@ -399,18 +400,18 @@ static void vnt_fill_txkey(struct vnt_tx_buffer *tx_buffer,
 	switch (tx_key->cipher) {
 	case WLAN_CIPHER_SUITE_WEP40:
 	case WLAN_CIPHER_SUITE_WEP104:
-		memcpy(key_buffer, iv, 3);
-		memcpy(key_buffer + 3, tx_key->key, tx_key->keylen);
+		memcpy(fifo->tx_key, iv, 3);
+		memcpy(fifo->tx_key + 3, tx_key->key, tx_key->keylen);
 
 		if (tx_key->keylen == WLAN_KEY_LEN_WEP40) {
-			memcpy(key_buffer + 8, iv, 3);
-			memcpy(key_buffer + 11,
+			memcpy(fifo->tx_key + 8, iv, 3);
+			memcpy(fifo->tx_key + 11,
 			       tx_key->key, WLAN_KEY_LEN_WEP40);
 		}
 
 		break;
 	case WLAN_CIPHER_SUITE_TKIP:
-		ieee80211_get_tkip_p2k(tx_key, skb, key_buffer);
+		ieee80211_get_tkip_p2k(tx_key, skb, fifo->tx_key);
 
 		break;
 	case WLAN_CIPHER_SUITE_CCMP:
@@ -452,7 +453,7 @@ static void vnt_fill_txkey(struct vnt_tx_buffer *tx_buffer,
 		if (ieee80211_has_a4(hdr->frame_control))
 			ether_addr_copy(mic_hdr->addr4, hdr->addr4);
 
-		memcpy(key_buffer, tx_key->key, WLAN_KEY_LEN_CCMP);
+		memcpy(fifo->tx_key, tx_key->key, WLAN_KEY_LEN_CCMP);
 
 		break;
 	default:
@@ -628,8 +629,7 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	if (info->control.hw_key) {
 		tx_key = info->control.hw_key;
 		if (tx_key->keylen > 0)
-			vnt_fill_txkey(tx_buffer, tx_buffer_head->tx_key,
-				       tx_key, skb, tx_body_size);
+			vnt_fill_txkey(tx_buffer, tx_key, skb, tx_body_size);
 	}
 
 	priv->seq_counter = (le16_to_cpu(hdr->seq_ctrl) &
-- 
2.25.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
