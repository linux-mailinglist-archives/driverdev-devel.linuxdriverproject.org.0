Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 622651E3C93
	for <lists+driverdev-devel@lfdr.de>; Wed, 27 May 2020 10:49:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 657C087D77;
	Wed, 27 May 2020 08:49:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ah65ruLZNavi; Wed, 27 May 2020 08:49:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6373B860D5;
	Wed, 27 May 2020 08:49:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D44151BF844
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 08:49:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id AF018231CB
 for <devel@linuxdriverproject.org>; Wed, 27 May 2020 08:49:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VYk5v6l6b+WR for <devel@linuxdriverproject.org>;
 Wed, 27 May 2020 08:49:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
 [209.85.128.67])
 by silver.osuosl.org (Postfix) with ESMTPS id 256BD231F2
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 08:49:22 +0000 (UTC)
Received: by mail-wm1-f67.google.com with SMTP id l26so2253659wme.3
 for <devel@driverdev.osuosl.org>; Wed, 27 May 2020 01:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=iuJaJSf0w8q+wcwKuU4TT506RpTyaAoUqC6QBZqFBjs=;
 b=KJEkFdabw29Nl7meOVf2kpE7hb/3cv9IfqGG0piPKwFRnMQgt2JLMH2GSkKqXgwUkV
 dFXts/xKcR6ojBpzbca+8L6KuT8iqqyD+g7R0DypUjpxtMsTMsEcZ39O1/+gaP0HiI8z
 1oPUAxJ0ptKckf70c5JwOhabxwAES2vBFtemhLr5m9DT9ua6wM4xFyd+5YIGLDGbz1Uq
 YJNDaXpQwnD7oibgZiu28xkW1lPv2IMqhlBDrlXZJBBByOcgpQN+gOxRkHdPU4QRA/CM
 6apY9ywNfq5WU7PcpyoXiA+FwyawflIAoJxuSfhDZT3CCzBvrfI70UgzN/x/jzZZTq8z
 jBhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=iuJaJSf0w8q+wcwKuU4TT506RpTyaAoUqC6QBZqFBjs=;
 b=IU0VTewFA1/k76T05aMMGY0XeaQerWpiBenp8Onb2BVY7Qjeaj1VJHjRpmCKxsukms
 hCC2mBfSRZVq5B7kAb5p6fKjpuRK5BOnjNRgm+xudxGf7SHMn9PTdcdNdBqayvBoKHH4
 EvR6jryqALLnEpjyrhs1yqIp8WlmwVTkg3yKZ8ZMGwaOp3wnApGFDKPfbBBPTKF3bPSj
 Ta58PFS6U/kmgBJD5b7dhffHDlZWkLLdGqjmWPJG9e+r1k6HiRX0ikl1vSjeZKNC2uc5
 RF2mbcRCjUv0aDw3dfYdfxppmA36m43lh6fp7fpzan8dkJu65b/b0kg50gdiwCGQWV3q
 L19Q==
X-Gm-Message-State: AOAM532DMqoe8YpWraOPafZWWEBgUeX6O5NKhQ+io2OO75ezTNJNQSEj
 Bg+mtQvqy5CsAgtnkUFJ5w0=
X-Google-Smtp-Source: ABdhPJyYpWWXGTfqBpgQP4q/ohVC38Yg2vlNwR07wjuranVo8a+V59ceHsJ4f3ipvqhLRbUxidpVHg==
X-Received: by 2002:a1c:dc02:: with SMTP id t2mr3223877wmg.8.1590569360403;
 Wed, 27 May 2020 01:49:20 -0700 (PDT)
Received: from [192.168.43.18] ([85.255.237.0])
 by smtp.gmail.com with ESMTPSA id v22sm2138991wml.21.2020.05.27.01.49.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 01:49:19 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 1/2] staging: vt6656: vnt_tx_packet use skb_clone to preserve
 sk_buff.
Message-ID: <b87e8cc1-f584-989d-830b-609d712f08c7@gmail.com>
Date: Wed, 27 May 2020 09:49:18 +0100
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

The sk_buff needs to preserved for copying to various parts
of context and passing back to mac80211

clone sk_buff in context so to continue to writing to orginal
sk_buff data area to send in vnt_tx_context.

dev_kfree_skb the context on error or dev_kfree_skb the
orignal when done. The error handling continues as before.

Only one place in function needs to change from
ieee80211_get_hdrlen_from_skb to ieee80211_hdrlen(hdr) which
is already to pointing to correct position.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index a1b16ef9b27f..05b9a9ee0e33 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -545,13 +545,18 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 		return -ENOMEM;
 	}
 
-	tx_context->skb = skb;
 	tx_context->pkt_type = pkt_type;
 	tx_context->frame_len = skb->len + 4;
 	tx_context->tx_rate =  rate->hw_value;
 
 	spin_unlock_irqrestore(&priv->lock, flags);
 
+	tx_context->skb = skb_clone(skb, GFP_ATOMIC);
+	if (!tx_context->skb) {
+		tx_context->in_use = false;
+		return -ENOMEM;
+	}
+
 	tx_header_size = vnt_get_hdr_size(info);
 	tx_bytes = tx_header_size + skb->len;
 	tx_header_size += sizeof(struct vnt_tx_usb_header);
@@ -565,12 +570,9 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	tx_buffer->usb.type = 0x00;
 
 	tx_context->type = CONTEXT_DATA_PACKET;
-	tx_context->tx_buffer = tx_buffer;
+	tx_context->tx_buffer = skb->data;
 	tx_context->buf_len = skb->len;
 
-	/* Return skb->data to mac80211 header */
-	skb_pull(skb, tx_header_size);
-
 	/*Set fifo controls */
 	if (pkt_type == PK_TYPE_11A)
 		tx_buffer_head->fifo_ctl = 0;
@@ -606,7 +608,7 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 		tx_buffer_head->fifo_ctl |= cpu_to_le16(FIFOCTL_LHEAD);
 
 	tx_buffer_head->frag_ctl =
-			cpu_to_le16(ieee80211_get_hdrlen_from_skb(skb) << 10);
+			cpu_to_le16(ieee80211_hdrlen(hdr->frame_control) << 10);
 
 	if (info->control.hw_key)
 		tx_context->frame_len += info->control.hw_key->icv_len;
@@ -623,10 +625,13 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	spin_lock_irqsave(&priv->lock, flags);
 
 	if (vnt_tx_context(priv, tx_context)) {
+		dev_kfree_skb(tx_context->skb);
 		spin_unlock_irqrestore(&priv->lock, flags);
 		return -EIO;
 	}
 
+	dev_kfree_skb(skb);
+
 	spin_unlock_irqrestore(&priv->lock, flags);
 
 	return 0;
-- 
2.27.0.rc0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
