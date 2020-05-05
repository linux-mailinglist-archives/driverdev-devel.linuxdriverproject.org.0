Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 65EE81C62D5
	for <lists+driverdev-devel@lfdr.de>; Tue,  5 May 2020 23:17:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0AF3087D7F;
	Tue,  5 May 2020 21:17:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id D2OOjMZYyhr1; Tue,  5 May 2020 21:17:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9317C87DDF;
	Tue,  5 May 2020 21:17:33 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 76A241BF3D4
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 21:17:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 681622045E
 for <devel@linuxdriverproject.org>; Tue,  5 May 2020 21:17:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8wlH-RmsrHKG for <devel@linuxdriverproject.org>;
 Tue,  5 May 2020 21:17:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by silver.osuosl.org (Postfix) with ESMTPS id E55FF203A8
 for <devel@driverdev.osuosl.org>; Tue,  5 May 2020 21:17:29 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id k12so176020wmj.3
 for <devel@driverdev.osuosl.org>; Tue, 05 May 2020 14:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=d0r3Leq0Re/fLKhqmXXw2a+2V44MmCt/uWMVWQ8KUMg=;
 b=UDoG4ITPPpw2kSqvRD8Z4DlHtr5C/cR2V+D7WQVfxjvMm8SwczHHj5KUl7Cn2uXoWN
 b0Ul6V6SrFudAfRkGIvyTH0cbG8OQ4ckuANs65157pVuoieW1WmTBuWkIfpdNNZaqHsM
 T8TwlW4FSlH5U6gtkHOj1UUWjlySVoVa7W2RjskotLA7EG/Jpmv1T+vZTerwKfQTG+u6
 JK171jY83fhqKOIOBodDDHv+sSF5Vb6AjHSEu05zdCzqcOBoLyVeIsh0WoXrs+tENvxw
 0hZwA+grTIu73wzCcGknLFROMkpZ0VDnAbyC1RjufAzMN25BIzplLlbrOVBgIwCcMp67
 ck2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=d0r3Leq0Re/fLKhqmXXw2a+2V44MmCt/uWMVWQ8KUMg=;
 b=QEeUHvYtEtqwKUc4wg2/wCQQL1nZoxe4xX++rixGk2wTNYU6zb6AF+3mYu3HDzPULJ
 yDi+ArskwAeFDSAQT/5rnhQP7X+y92C+p+RHHcrl2gCICCF6+BbM5q7kmndOwakhKwU6
 9P1zu71y+1U61/uS7Vf79Uq9TWbC+AhrxszHeFe+jf/5Gl0J8hlaiZlFmaMjgmS/ueKH
 dD2FAswRlc5bFYhwC9h9wwD+BwduI68E9xxgrkBxTs6srkwVO0qFOT3om175fs/xLqC1
 cdqiJBgBl+Ql4ABMBQeMiHriCDX4RtExE3pNXtnqzYMmy+TKez+KrGYDcNTr/snezzlH
 qiZw==
X-Gm-Message-State: AGi0PuaGPZEUmVvVfR3vXIdr6+d+mGnOy929VDHjX/fNmnbAu8rXJpwI
 O9lrt97rhM5WY2fDtiZV0zQ=
X-Google-Smtp-Source: APiQypLGKJQ5FC95V+/FJx9rKnFHnQ3ate0PTS/I4KRO7xPfXbBtG9kqjPRkymGMWkHpToDwuip0Lg==
X-Received: by 2002:a1c:6a06:: with SMTP id f6mr33662wmc.51.1588713448256;
 Tue, 05 May 2020 14:17:28 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.117.threembb.co.uk.
 [188.29.165.117])
 by smtp.gmail.com with ESMTPSA id v7sm7629977wmg.3.2020.05.05.14.17.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 14:17:27 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 4/6] staging: vt6656: Split RTS and CTS Duration functions
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <d2983161-7935-48ce-c0ca-a26ebafa3997@gmail.com>
Date: Tue, 5 May 2020 22:17:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
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
 Oscar Carter <oscar.carter@gmx.com>, linux-wireless@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

split vnt_get_rtscts_duration_le into vnt_get_rts_duration and
vnt_get_cts_duration.

The duration's are all the same in vnt_rxtx_rts_g_head.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/rxtx.c | 56 ++++++++++-------------------------
 1 file changed, 16 insertions(+), 40 deletions(-)

diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 27069ac60b15..47da9dabb133 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -13,7 +13,6 @@
  *
  * Functions:
  *      vnt_generate_tx_parameter - Generate tx dma required parameter.
- *      vnt_get_rtscts_duration_le- get rtx/cts required duration
  *      vnt_get_rtscts_rsvtime_le- get rts/cts reserved time
  *      vnt_get_rsvtime- get frame reserved time
  *      vnt_fill_cts_head- fulfill CTS ctl header
@@ -38,10 +37,6 @@ static const u16 vnt_time_stampoff[2][MAX_RATE] = {
 	{384, 192, 130, 113, 54, 43, 37, 31, 28, 25, 24, 23},
 };
 
-#define RTSDUR_BB       0
-#define RTSDUR_BA       1
-#define RTSDUR_AA       2
-#define CTSDUR_BA       3
 #define DATADUR_B       10
 #define DATADUR_A       11
 
@@ -260,27 +255,22 @@ static __le16 vnt_get_rtscts_rsvtime_le(struct vnt_private *priv, u8 rsv_type,
 	return cpu_to_le16((u16)rrv_time);
 }
 
-static __le16 vnt_get_rtscts_duration_le(struct vnt_usb_send_context *context,
-					 u8 dur_type, u8 pkt_type, u16 rate)
+static __le16 vnt_get_rts_duration(struct vnt_usb_send_context *context)
 {
 	struct vnt_private *priv = context->priv;
 	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(context->skb);
 
-	switch (dur_type) {
-	/* fall through */
-	case RTSDUR_BB:
-	case RTSDUR_BA:
-	case RTSDUR_AA:
-		return ieee80211_rts_duration(priv->hw, priv->vif,
-					      context->frame_len, info);
-	case CTSDUR_BA:
-		return ieee80211_ctstoself_duration(priv->hw, priv->vif,
-						    context->frame_len, info);
-	default:
-		break;
-	}
+	return ieee80211_rts_duration(priv->hw, priv->vif,
+				      context->frame_len, info);
+}
 
-	return cpu_to_le16(0);
+static __le16 vnt_get_cts_duration(struct vnt_usb_send_context *context)
+{
+	struct vnt_private *priv = context->priv;
+	struct ieee80211_tx_info *info = IEEE80211_SKB_CB(context->skb);
+
+	return ieee80211_ctstoself_duration(priv->hw, priv->vif,
+					    context->frame_len, info);
 }
 
 static u16 vnt_mac_hdr_pos(struct vnt_usb_send_context *tx_context,
@@ -359,22 +349,15 @@ static void vnt_rxtx_rts_g_head(struct vnt_usb_send_context *tx_context,
 {
 	struct vnt_private *priv = tx_context->priv;
 	u16 rts_frame_len = 20;
-	u16 current_rate = tx_context->tx_rate;
 
 	vnt_get_phy_field(priv, rts_frame_len, priv->top_cck_basic_rate,
 			  PK_TYPE_11B, &buf->b);
 	vnt_get_phy_field(priv, rts_frame_len, priv->top_ofdm_basic_rate,
 			  tx_context->pkt_type, &buf->a);
 
-	buf->duration_bb = vnt_get_rtscts_duration_le(tx_context, RTSDUR_BB,
-						      PK_TYPE_11B,
-						      priv->top_cck_basic_rate);
-	buf->duration_aa = vnt_get_rtscts_duration_le(tx_context, RTSDUR_AA,
-						      tx_context->pkt_type,
-						      current_rate);
-	buf->duration_ba = vnt_get_rtscts_duration_le(tx_context, RTSDUR_BA,
-						      tx_context->pkt_type,
-						      current_rate);
+	buf->duration_bb = vnt_get_rts_duration(tx_context);
+	buf->duration_aa = buf->duration_bb;
+	buf->duration_ba = buf->duration_bb;
 
 	vnt_fill_ieee80211_rts(tx_context, &buf->data, buf->duration_aa);
 
@@ -385,15 +368,12 @@ static void vnt_rxtx_rts_ab_head(struct vnt_usb_send_context *tx_context,
 				 struct vnt_rts_ab *buf)
 {
 	struct vnt_private *priv = tx_context->priv;
-	u16 current_rate = tx_context->tx_rate;
 	u16 rts_frame_len = 20;
 
 	vnt_get_phy_field(priv, rts_frame_len, priv->top_ofdm_basic_rate,
 			  tx_context->pkt_type, &buf->ab);
 
-	buf->duration = vnt_get_rtscts_duration_le(tx_context, RTSDUR_AA,
-						   tx_context->pkt_type,
-						   current_rate);
+	buf->duration = vnt_get_rts_duration(tx_context);
 
 	vnt_fill_ieee80211_rts(tx_context, &buf->data, buf->duration);
 
@@ -406,16 +386,12 @@ static void vnt_fill_cts_head(struct vnt_usb_send_context *tx_context,
 	struct vnt_private *priv = tx_context->priv;
 	struct vnt_cts *buf = &head->cts_g;
 	u32 cts_frame_len = 14;
-	u16 current_rate = tx_context->tx_rate;
 
 	/* Get SignalField,ServiceField,Length */
 	vnt_get_phy_field(priv, cts_frame_len, priv->top_cck_basic_rate,
 			  PK_TYPE_11B, &buf->b);
 	/* Get CTSDuration_ba */
-	buf->duration_ba =
-		vnt_get_rtscts_duration_le(tx_context, CTSDUR_BA,
-					   tx_context->pkt_type,
-					   current_rate);
+	buf->duration_ba = vnt_get_cts_duration(tx_context);
 	/*Get CTS Frame body*/
 	buf->data.duration = buf->duration_ba;
 	buf->data.frame_control =
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
