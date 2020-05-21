Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BFFB1DCA0C
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 11:31:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 7C9D888FD0;
	Thu, 21 May 2020 09:31:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0tkiYMojNWgf; Thu, 21 May 2020 09:31:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id DFFA287AAE;
	Thu, 21 May 2020 09:31:43 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8137B1BF47D
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:31:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7BA6123067
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:31:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nZdGeOE2itUw for <devel@linuxdriverproject.org>;
 Thu, 21 May 2020 09:31:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id E626C228B3
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 09:31:39 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id x14so600441wrp.2
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 02:31:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=8Xy4F09kjG4qIrtXe0CxsoffCIloB6B/lxDeVupgx+c=;
 b=WOMHCO5r/+JSEOLRQoG3VeYHZXyajd4nIwrHzdZTMVxYgAVcJtB05oRN/b7D3TolcF
 uxhlTyhchzznNp8zN1t0/ne9LK1wzUoU5Pja8+R89KkeL+ZkrcNJa9pB9nxL2QCHygXk
 aKeW5qI5OhqFMMjcfYSfAXZnhGLfDsLFyvcHjUs9gb2PAbBh6ZcdG3jiujodbAQPlKXu
 MCowsC4d/ZAMmETSsVaQ/Yeil47+p6EZT2su6Up/Xt5gGi0GqaEBTXaXahHkDUe+I4Oq
 bpRN1Z3SWe3uQkQ+GD3ndyhBPGXvMzL0EtZ36BLKvmLkW0NHsttmlEml55oRnI9UD8EQ
 Axqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=8Xy4F09kjG4qIrtXe0CxsoffCIloB6B/lxDeVupgx+c=;
 b=f+Pug8x3VrJ6gKp2P7MGGQ5p2ywpC4ozcR2Bnv9AeZ6lEvruFZAp6/YGl59itGDcgc
 +SSGORcPihX+CqPwA+gYmM1B6zAoqr3BATdBXNVo0+trI4kskNxPP8BU176Qsq9RiDZT
 KBQPjjo5UuZ7bRGsLh4hokhtdVG4GZ9fSPp9TD84GQYsuQDyIdmV6AwmiTgI0X4NF6Au
 B/heNlUDR+fSNCoqz76VhqjdeKxetxMGVDtCCkiubGbDiMydflC77Ehf1Lln5H5KUym5
 HByRfAlybHpGqzjlWoiyrG2hrEsXs9Ddlf9o1kfXwoz7XLSSsEOCOuO26AFDNFrsoy33
 sXpQ==
X-Gm-Message-State: AOAM531JP49jDocv/giwEMkOnn+7SgZQMsKU1yLnpT47axCslmec7FVy
 onnRBufQsn4pNg9kQXEdZiM=
X-Google-Smtp-Source: ABdhPJx+RjkbunaR4c0lPQOZgi/mZNT9ej++tVyCFe65wtpfyzXVGccrQLe7AQBay545mTqhhbQYLw==
X-Received: by 2002:adf:a15c:: with SMTP id r28mr2922817wrr.337.1590053498236; 
 Thu, 21 May 2020 02:31:38 -0700 (PDT)
Received: from [192.168.43.18] ([85.255.237.70])
 by smtp.gmail.com with ESMTPSA id g69sm929660wmg.15.2020.05.21.02.31.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 02:31:37 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 01/10] staging: vt6656: remove ieee80211_hdr from
 vnt_usb_send_context.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <556fab01-aa1e-154e-149e-c04feeb76efa@gmail.com>
Date: Thu, 21 May 2020 10:31:36 +0100
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

It is only used in one place were it can be pointed to at skb->data.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/device.h | 1 -
 drivers/staging/vt6656/rxtx.c   | 5 +----
 2 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index d1b19dcaf991..0486aabba061 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -238,7 +238,6 @@ struct vnt_rcb {
 struct vnt_usb_send_context {
 	void *priv;
 	struct sk_buff *skb;
-	struct ieee80211_hdr *hdr;
 	void *tx_buffer;
 	unsigned int buf_len;
 	u32 frame_len;
diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 8f9904c8045c..a47f42bedfa9 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -73,8 +73,6 @@ static struct vnt_usb_send_context
 		context = priv->tx_context[ii];
 		if (!context->in_use) {
 			context->in_use = true;
-			context->hdr = NULL;
-
 			return context;
 		}
 	}
@@ -392,7 +390,7 @@ static void vnt_fill_txkey(struct vnt_usb_send_context *tx_context,
 			   struct sk_buff *skb, u16 payload_len,
 			   struct vnt_mic_hdr *mic_hdr)
 {
-	struct ieee80211_hdr *hdr = tx_context->hdr;
+	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
 	u64 pn64;
 	u8 *iv = ((u8 *)hdr + ieee80211_get_hdrlen_from_skb(skb));
 
@@ -544,7 +542,6 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	tx_context->need_ack = false;
 	tx_context->frame_len = skb->len + 4;
 	tx_context->tx_rate =  rate->hw_value;
-	tx_context->hdr = hdr;
 
 	spin_unlock_irqrestore(&priv->lock, flags);
 
-- 
2.25.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
