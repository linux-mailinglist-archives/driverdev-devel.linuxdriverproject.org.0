Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC04134F08
	for <lists+driverdev-devel@lfdr.de>; Wed,  8 Jan 2020 22:42:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5F92685D6F;
	Wed,  8 Jan 2020 21:42:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tLNgG9riOpkJ; Wed,  8 Jan 2020 21:42:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 31A718448B;
	Wed,  8 Jan 2020 21:42:03 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 036461BF5AD
 for <devel@linuxdriverproject.org>; Wed,  8 Jan 2020 21:42:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 0001D203C7
 for <devel@linuxdriverproject.org>; Wed,  8 Jan 2020 21:42:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rHamdOG2O9Qk for <devel@linuxdriverproject.org>;
 Wed,  8 Jan 2020 21:42:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by silver.osuosl.org (Postfix) with ESMTPS id 0B4B8203B0
 for <devel@driverdev.osuosl.org>; Wed,  8 Jan 2020 21:42:00 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id d16so5022047wre.10
 for <devel@driverdev.osuosl.org>; Wed, 08 Jan 2020 13:41:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=GAzAmyAzAF4zTSG7g3OHIyY6h3DiJ0Nr2u3/Mv1Er3M=;
 b=EayTmQhwNZhDp5LF0kUqjhRtyjBgY7Qa8htMtA/2ob181rf5RORb7qgVuILb6T578U
 Rqp6LgsmgIwEOx9CcZ+wlTSlCtnQjb6O/s+1MM4/mpfiUlbBO6MKVsYsvR6DUpu2KlsY
 jzatc9WRCOjEvoPip5e2H7eZLFy93K6sKrQNcRA7MgH3vgmWIH03VJrpIwRnsVoXImuP
 K7rnOGFJk9Q/MwZpIKTMcgOE5x8/y0Mu7JO2XwBnvtmerya3dPnnNC/ojQaE42oeQBcJ
 UN21p+m1fsrtfYmbLBzG4kdZQLkDcDxpRNZZmp5JpsNqI+th4xERVyqS/+xoY3uF7Jm2
 BDLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=GAzAmyAzAF4zTSG7g3OHIyY6h3DiJ0Nr2u3/Mv1Er3M=;
 b=TTmkLixNX+4CWauYCVQKVyCQaz1mNhgTymUMqvpVKaBKLu9N0u1qeMh4uEOMwi04j8
 m0ceVz1/Wzr5t3S/xtzS9sKt0I0NCnSEWJl7GZvp6uW/AzXGoaO4jzE5/tb9/1fvASao
 r7/IOb+9vsQasyJbXMhqlhXrBGlivKM/VKfd147T56Ps/s4BT3ZgqF2JpIi4dL19wJnq
 /Z39Rsua2g3k4YXgTVAl3CCHkduk7IXPdiny7pmN/WInj5QLNWsHqSS+90JmJSiY6//9
 Zx1Dt7a1ek/TOKVGpWBtO0txX8ZNWergrgMfgJxKPTECWA0PyEshGnxDAuaLcPgCECHJ
 j8jg==
X-Gm-Message-State: APjAAAVBmcC68/olsIFwqtviSZr7NakopxZ03dxrDjiEioGETGi1j8tQ
 md9YWaXveBG8UcwjrUB1/XvzZ2aS
X-Google-Smtp-Source: APXvYqxA0SCiDk4p/xSngRH6N8EbiroLkSTiD8u/5SBsCQaoQ2HLdLtZKnoapFcSRva4yvULDtlTbA==
X-Received: by 2002:a5d:4a91:: with SMTP id o17mr7428004wrq.232.1578519718069; 
 Wed, 08 Jan 2020 13:41:58 -0800 (PST)
Received: from [192.168.43.18] (188.29.164.206.threembb.co.uk.
 [188.29.164.206])
 by smtp.gmail.com with ESMTPSA id x11sm5978227wre.68.2020.01.08.13.41.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jan 2020 13:41:57 -0800 (PST)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 4/4] staging: vt6656: Move ieee80211_rx_status off stack.
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <a66caba4-0c17-41af-a58f-3cdbb3243fb0@gmail.com>
Date: Wed, 8 Jan 2020 21:41:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>


ieee80211_rx_status off stack to IEEE80211_SKB_RXCB (skb->cb)
removing the need to copy on to it.

skb->cb is always present as a clean buffer so simply fill
it in.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/dpc.c | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/vt6656/dpc.c b/drivers/staging/vt6656/dpc.c
index 3b94e80f1d5e..2bcb29b11883 100644
--- a/drivers/staging/vt6656/dpc.c
+++ b/drivers/staging/vt6656/dpc.c
@@ -29,7 +29,7 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 	struct ieee80211_hw *hw = priv->hw;
 	struct ieee80211_supported_band *sband;
 	struct sk_buff *skb;
-	struct ieee80211_rx_status rx_status = { 0 };
+	struct ieee80211_rx_status *rx_status;
 	struct ieee80211_hdr *hdr;
 	__le16 fc;
 	u8 *rsr, *new_rsr, *rssi;
@@ -46,6 +46,7 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 	long rx_dbm;
 
 	skb = ptr_rcb->skb;
+	rx_status = IEEE80211_SKB_RXCB(skb);
 
 	/* [31:16]RcvByteCount ( not include 4-byte Status ) */
 	wbk_status = *((u32 *)(skb->data));
@@ -136,23 +137,23 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 	skb_pull(skb, 8);
 	skb_trim(skb, frame_size);
 
-	rx_status.mactime = priv->tsf_time;
-	rx_status.band = hw->conf.chandef.chan->band;
-	rx_status.signal = rx_dbm;
-	rx_status.flag = 0;
-	rx_status.freq = hw->conf.chandef.chan->center_freq;
+	rx_status->mactime = priv->tsf_time;
+	rx_status->band = hw->conf.chandef.chan->band;
+	rx_status->signal = rx_dbm;
+	rx_status->flag = 0;
+	rx_status->freq = hw->conf.chandef.chan->center_freq;
 
 	if (!(*rsr & RSR_CRCOK))
-		rx_status.flag |= RX_FLAG_FAILED_FCS_CRC;
+		rx_status->flag |= RX_FLAG_FAILED_FCS_CRC;
 
 	hdr = (struct ieee80211_hdr *)(skb->data);
 	fc = hdr->frame_control;
 
-	rx_status.rate_idx = rate_idx;
+	rx_status->rate_idx = rate_idx;
 
 	if (ieee80211_has_protected(fc)) {
 		if (priv->local_id > REV_ID_VT3253_A1) {
-			rx_status.flag |= RX_FLAG_DECRYPTED;
+			rx_status->flag |= RX_FLAG_DECRYPTED;
 
 			/* Drop packet */
 			if (!(*new_rsr & NEWRSR_DECRYPTOK)) {
@@ -162,8 +163,6 @@ int vnt_rx_data(struct vnt_private *priv, struct vnt_rcb *ptr_rcb,
 		}
 	}
 
-	memcpy(IEEE80211_SKB_RXCB(skb), &rx_status, sizeof(rx_status));
-
 	ieee80211_rx_irqsafe(priv->hw, skb);
 
 	return true;
-- 
2.24.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
