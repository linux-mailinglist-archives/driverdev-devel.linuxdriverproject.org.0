Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id ECF811DCA67
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 11:47:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0B87187398;
	Thu, 21 May 2020 09:47:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wt3HP6Ap7dDB; Thu, 21 May 2020 09:47:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2909487379;
	Thu, 21 May 2020 09:47:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 9DF981BF47D
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:47:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 9A9BA88316
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:47:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id big20C6ckz4X for <devel@linuxdriverproject.org>;
 Thu, 21 May 2020 09:47:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id A64DD88310
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 09:47:28 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id g12so4825286wrw.1
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 02:47:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=JZE3YWU43/SedpISagSRSovxov9m1YwcPTRT1+qH7GU=;
 b=iNBmHpgu89/26tgoQV6hPE4K/0UELMRDzL8pg6EM8FAIUNdw6d4x/jyRbwG8Oskh82
 GFQjnT8YDShNZ4WXOy18TCUCXZrAN5B0kOKTuIRVR/H4RgK0fNLmE9RGNOEGFcTvWXL9
 w6okd3UEVfJMcVWPW7Vky2e/wV334MC+bW3xGk1eBNJX6bRwRJZRakuE7PsmVT+p7dV8
 AknwqVi/KDyEBgtXIf8/36n+qwSz1cy1E4Sa1V7mWI7x4Wcm7z4mya7Su96fIMN8VodA
 EQJbX9DQNEdEFrMaVvtY/isRnRhyqbvzEqFXBKXU8MIK7DavtpS5+Nt9XlSsNGPmu2Zu
 vWJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=JZE3YWU43/SedpISagSRSovxov9m1YwcPTRT1+qH7GU=;
 b=TEYEv1V6KeAeN8JRq3Xz/TEz5M3w8qn6jh+XQ8x5opNsyAsVp2KPw3bkjrUF7OK7CT
 6gyYOCmlUATKSRudLhdS22HlzzRHWXpFUMig3Ph4rpxFNXj/Ois5r13FLaEJQAVAjXZJ
 W74P85ZBpj/MGjz6bPB4VLAJpy6I6MAoEZCSIOUkCo3Ni4keahxAE1jrh8szTgJpsAg/
 PVbbAo1dcYe/s3uKY9EuesBgP7+KdIreLEyJ8+bzEpP1/l7WOVWG2SsObFYY8CNcaHZh
 AZcbtI/f3K81hcuHKquIANu7m8yEjUQpoHAe1EZ1IBjAvG4qJd2qwdslK3+puWj9BnEQ
 zKjA==
X-Gm-Message-State: AOAM530fJa99yajH9zsbnlV69S/7L5t2KjpFq9iy33uQ1wOikZcnxPG6
 NOqdvuKXSO1ymBJuIE2oIzsIiEVrphTnQQ==
X-Google-Smtp-Source: ABdhPJyOtqUOsV1YHo4zWUH3DUaCgWdkiqHwaIpR1V/PYqlzmbxvqfUgVV3p5V5nUslLkA06Ls+/Vw==
X-Received: by 2002:a05:6000:85:: with SMTP id
 m5mr7271879wrx.281.1590054447037; 
 Thu, 21 May 2020 02:47:27 -0700 (PDT)
Received: from [192.168.43.18] ([85.255.237.70])
 by smtp.gmail.com with ESMTPSA id z9sm5851379wrp.66.2020.05.21.02.47.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 02:47:26 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 07/10] staging: vt6656: move tx_body_size/payload_len to
 skb->len
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <12e96cb5-a2a5-de3c-ebe7-ca5a4e2b5594@gmail.com>
Date: Thu, 21 May 2020 10:47:25 +0100
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

both variables can be removed and replaced with skb->len.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 2d7a8fc70d92..b9164142e2b5 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -384,13 +384,14 @@ static void vnt_generate_tx_parameter(struct vnt_usb_send_context *tx_context,
 
 static void vnt_fill_txkey(struct vnt_tx_buffer *tx_buffer,
 			   struct ieee80211_key_conf *tx_key,
-			   struct sk_buff *skb, u16 payload_len)
+			   struct sk_buff *skb)
 {
 	struct vnt_tx_fifo_head *fifo = &tx_buffer->fifo_head;
 	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 	struct vnt_mic_hdr *mic_hdr;
 	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 	u64 pn64;
+	u16 payload_len = skb->len;
 	u8 *iv = ((u8 *)hdr + ieee80211_get_hdrlen_from_skb(skb));
 
 	/* strip header and icv len from payload */
@@ -505,7 +506,7 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	struct vnt_tx_fifo_head *tx_buffer_head;
 	struct vnt_usb_send_context *tx_context;
 	unsigned long flags;
-	u16 tx_bytes, tx_header_size, tx_body_size;
+	u16 tx_bytes, tx_header_size;
 	u8 pkt_type;
 
 	hdr = (struct ieee80211_hdr *)(skb->data);
@@ -546,8 +547,7 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	spin_unlock_irqrestore(&priv->lock, flags);
 
 	tx_header_size = vnt_get_hdr_size(info);
-	tx_body_size = skb->len;
-	tx_bytes = tx_header_size + tx_body_size;
+	tx_bytes = tx_header_size + skb->len;
 	tx_header_size += sizeof(struct vnt_tx_usb_header);
 
 	tx_buffer = skb_push(skb, tx_header_size);
@@ -629,7 +629,7 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	if (info->control.hw_key) {
 		tx_key = info->control.hw_key;
 		if (tx_key->keylen > 0)
-			vnt_fill_txkey(tx_buffer, tx_key, skb, tx_body_size);
+			vnt_fill_txkey(tx_buffer, tx_key, skb);
 	}
 
 	priv->seq_counter = (le16_to_cpu(hdr->seq_ctrl) &
-- 
2.25.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
