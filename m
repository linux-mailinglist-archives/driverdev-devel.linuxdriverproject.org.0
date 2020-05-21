Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FAC1DCA12
	for <lists+driverdev-devel@lfdr.de>; Thu, 21 May 2020 11:33:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 65374891BC;
	Thu, 21 May 2020 09:33:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xsg5zPhpiWgF; Thu, 21 May 2020 09:33:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B960B89161;
	Thu, 21 May 2020 09:33:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C222F1BF47D
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:33:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BC92189161
 for <devel@linuxdriverproject.org>; Thu, 21 May 2020 09:33:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id EzeAaivF5Kte for <devel@linuxdriverproject.org>;
 Thu, 21 May 2020 09:33:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 94DF288AEE
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 09:33:14 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id l18so5983357wrn.6
 for <devel@driverdev.osuosl.org>; Thu, 21 May 2020 02:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=TRsInQSBwN+shLNJB6dj9nN2OgX9fcoBCx1Y8zTY1JE=;
 b=kqgstXurDIFYnkHExtT62KqsA7sxo8V5X8yBsY+QlbYBBsrH8oEFGFkOD8nhkCm8x+
 Slbed7rXS/DzANGdhdtfJhcvC0uwbdy/sI/+GuU7WLj4wO09I62QCfGzybutw8HSFry2
 Fw0rBUluxG/MlZ6zDbOjKO3X7z/1qq/0lKAgACmeIrNKKvl4xn3Yvc2d2TIl7/IYzNxe
 YdUZar/wsb/hz99bvqs1HRLn4Vv044mT8MvVQpxlFAO/AbwVXJKXcxR8Lg72E8lTLUvx
 L10KKDBnXj8S2Xwt10oknp7naZLXCqV2HcaAqnghSUyIGMFmqlqzAZ7MCZ88eO8NX3eU
 Hx7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=TRsInQSBwN+shLNJB6dj9nN2OgX9fcoBCx1Y8zTY1JE=;
 b=clvPxapeontucKQPVkHpmDbdvvojqhOnoVeQyJvDDOVvZfX5z4rBZrJKfbEXu6A7do
 rtUK12YSe+zpwcxDRk1GEmV9p6OPEiojAymEST1Cak0qFXnFHzAqUHAf9QQTSJRlFXBN
 JzsFWDFEVCGUGjdREHyZMCVNCONS5TkyG5did9JRxVDy0kOm8EJuKclv6zGwtXVzczUP
 B/l7PaIeX7HxLbtIamV7wK7vMFeqEsMK0oNj7HRD28I7kRdSE4/25qNAiwrxwfNaiZqZ
 uin2TUlforYrq2V+MF6U8LtbqMTxf94C5gnJsvdhJCmhtxKnljPRj25hOmk2s4iYhCJy
 Ew2Q==
X-Gm-Message-State: AOAM532h2ks8k5Ub2i+Rm8ySl3wy9+721Kt9fIJqbEnB3Z51LWFBcOzG
 rUGyD4uIzFKeeLNsHTJipKBpvEn1/FBRLQ==
X-Google-Smtp-Source: ABdhPJzAaHKK0g2fpCO5WomK+FhJORBjK6lJ0C8ilrGJjwYls4pqfsTh5rLTN3WJifhnZgS6CJ+Tzg==
X-Received: by 2002:adf:9d91:: with SMTP id p17mr7454308wre.119.1590053592966; 
 Thu, 21 May 2020 02:33:12 -0700 (PDT)
Received: from [192.168.43.18] ([85.255.237.70])
 by smtp.gmail.com with ESMTPSA id 89sm5966904wrj.37.2020.05.21.02.33.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 21 May 2020 02:33:12 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 02/10] staging: vt6656: rxtx remove unused need_ack
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <f19dfbde-23a6-ba79-d988-576d2e3bcf62@gmail.com>
Date: Thu, 21 May 2020 10:33:11 +0100
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

need_ack is no longer used by driver remove it.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/device.h | 1 -
 drivers/staging/vt6656/rxtx.c   | 5 +----
 2 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index 0486aabba061..d89f564a13c4 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -246,7 +246,6 @@ struct vnt_usb_send_context {
 	u8 type;
 	u8 pkt_no;
 	u8 pkt_type;
-	u8 need_ack;
 	bool in_use;
 };
 
diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index a47f42bedfa9..24acc2de0fb9 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -539,7 +539,6 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 
 	tx_context->skb = skb;
 	tx_context->pkt_type = pkt_type;
-	tx_context->need_ack = false;
 	tx_context->frame_len = skb->len + 4;
 	tx_context->tx_rate =  rate->hw_value;
 
@@ -587,10 +586,8 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 			cpu_to_le16(DEFAULT_MSDU_LIFETIME_RES_64us);
 	}
 
-	if (!(info->flags & IEEE80211_TX_CTL_NO_ACK)) {
+	if (!(info->flags & IEEE80211_TX_CTL_NO_ACK))
 		tx_buffer_head->fifo_ctl |= cpu_to_le16(FIFOCTL_NEEDACK);
-		tx_context->need_ack = true;
-	}
 
 	if (ieee80211_has_retry(hdr->frame_control))
 		tx_buffer_head->fifo_ctl |= cpu_to_le16(FIFOCTL_LRETRY);
-- 
2.25.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
