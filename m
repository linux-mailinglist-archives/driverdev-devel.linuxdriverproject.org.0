Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8D41DFB9D
	for <lists+driverdev-devel@lfdr.de>; Sun, 24 May 2020 01:12:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 717F386B5B;
	Sat, 23 May 2020 23:12:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id saKmaHwOE9Sk; Sat, 23 May 2020 23:12:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4B0E086B19;
	Sat, 23 May 2020 23:12:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 06A631BF3A8
 for <devel@linuxdriverproject.org>; Sat, 23 May 2020 23:12:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 032EB88364
 for <devel@linuxdriverproject.org>; Sat, 23 May 2020 23:12:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id aJ5tKvAsM9uz for <devel@linuxdriverproject.org>;
 Sat, 23 May 2020 23:12:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1E1C28835A
 for <devel@driverdev.osuosl.org>; Sat, 23 May 2020 23:12:45 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id y5so145047wmi.5
 for <devel@driverdev.osuosl.org>; Sat, 23 May 2020 16:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=JmYrO0plrEP12CDs2l0y0uFQRQ9e6H6nwDIO9eVDLRQ=;
 b=B8RI7XDAkvSAtcSE/6JvRb0SJRj9aFJU06wIoHIQPi0ojIArr00WI5QASxzA+PmUPj
 FhcpjnitOH5chrQ31t2qYPgr2hQy0dyC8tWZIgglqSXAeXCLnq2duPEmvKYo+W7LgfLo
 Vhkj0GN7/R7vqvn8tAO5ScBP2m78EeJ0A7SQGUhus/Zij3DCCSeOBCXUrnsK693Yxyr+
 xNNvEbxoOwvwKHo3w4XyARBfeskQbgcoE8AVwHsCLDOT3a1Klkbf3AKY72g1vDhtFhIP
 b1ge/f66+JZd0BD//q00OC8nfD1MS0xX1urhKFUabng7ZykduiO2uwlNDeRhMSIPtTEe
 F6UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=JmYrO0plrEP12CDs2l0y0uFQRQ9e6H6nwDIO9eVDLRQ=;
 b=HsfnxLRaK/oyeBsN8TPuP0Yp5tNOifkXQo/KlDm+nbgs5cXNcaqakfeFsGKY06cIQs
 3QAgza/9hJOch7G326AbdPROpXr8yiGKW8q3LTWu3qnCSTOzj4Ko7qGWHus9RT5G0bSB
 lm7VGD5nvo06JTuFbTIArnVuI1PqLMRr6J49coO6VlxQHtHHbR6ciAXKWQ6L19/ayj16
 z+p1CZ89L3LfxdmayVOLFGpC2TlSxaC98AYP1KOwLkB03H1L6wTDWL9RucgEtLf1+Ljw
 ytC1isXBQEvpMiMThLP1Gn4JMvGPFvWI3I86aRy91uQz9V0b4k1CC2kK1PuSx/fYyLi8
 xsxg==
X-Gm-Message-State: AOAM5310HrKYUVv/IyNVggcHf88k/pNMnbkpSZWDKyZ3J8wWd/3C8xcJ
 gN6/JUSHQxSK6r55KZ843QI=
X-Google-Smtp-Source: ABdhPJxjZXpEmBTyaPUtdzFGRipSkstDLhKjYz48SqJEQ9vwIEeWid4o0OtLK0peCMiA/R3s4cRfEg==
X-Received: by 2002:a1c:49:: with SMTP id 70mr17852711wma.184.1590275563369;
 Sat, 23 May 2020 16:12:43 -0700 (PDT)
Received: from [192.168.43.18] ([85.255.236.81])
 by smtp.gmail.com with ESMTPSA id s8sm12951131wrt.69.2020.05.23.16.12.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 23 May 2020 16:12:42 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH] staging: vt6656: Fix vnt_tx_usb_header static checker warning
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <9818e564-81f6-a683-caa0-69423fded401@gmail.com>
Date: Sun, 24 May 2020 00:12:41 +0100
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
 linux-wireless@vger.kernel.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

drivers/staging/vt6656/rxtx.c:729 vnt_beacon_xmit()
warn: struct type mismatch 'vnt_beacon_buffer vs vnt_tx_usb_header'

Since the only part of vnt_beacon_buffer is used remove and
replace it with vnt_tx_usb_header.

Fixes: 9deca1e3e2b6 ("staging: vt6656: vnt_beacon_xmit use extra_tx_headroom.")
Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 12 ++++++------
 drivers/staging/vt6656/rxtx.h |  5 -----
 2 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 9ee57f7c0c88..a1b16ef9b27f 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -634,7 +634,7 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 
 static int vnt_beacon_xmit(struct vnt_private *priv, struct sk_buff *skb)
 {
-	struct vnt_beacon_buffer *beacon_buffer;
+	struct vnt_tx_usb_header *usb;
 	struct vnt_tx_short_buf_head *short_head;
 	struct ieee80211_tx_info *info;
 	struct vnt_usb_send_context *context;
@@ -701,13 +701,13 @@ static int vnt_beacon_xmit(struct vnt_private *priv, struct sk_buff *skb)
 	if (priv->seq_counter > 0x0fff)
 		priv->seq_counter = 0;
 
-	beacon_buffer = skb_push(skb, sizeof(struct vnt_tx_usb_header));
-	beacon_buffer->usb.tx_byte_count = cpu_to_le16(count);
-	beacon_buffer->usb.pkt_no = context->pkt_no;
-	beacon_buffer->usb.type = 0x01;
+	usb = skb_push(skb, sizeof(*usb));
+	usb->tx_byte_count = cpu_to_le16(count);
+	usb->pkt_no = context->pkt_no;
+	usb->type = 0x01;
 
 	context->type = CONTEXT_BEACON_PACKET;
-	context->tx_buffer = beacon_buffer;
+	context->tx_buffer = usb;
 	context->buf_len = skb->len;
 
 	spin_lock_irqsave(&priv->lock, flags);
diff --git a/drivers/staging/vt6656/rxtx.h b/drivers/staging/vt6656/rxtx.h
index fd64d0838e34..f3c7b99cda73 100644
--- a/drivers/staging/vt6656/rxtx.h
+++ b/drivers/staging/vt6656/rxtx.h
@@ -179,11 +179,6 @@ struct vnt_tx_short_buf_head {
 	__le16 time_stamp_off;
 } __packed;
 
-struct vnt_beacon_buffer {
-	struct vnt_tx_usb_header usb;
-	struct vnt_tx_short_buf_head short_head;
-} __packed;
-
 int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb);
 int vnt_beacon_make(struct vnt_private *priv, struct ieee80211_vif *vif);
 int vnt_beacon_enable(struct vnt_private *priv, struct ieee80211_vif *vif,
-- 
2.27.0.rc0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
