Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A9B19FD71
	for <lists+driverdev-devel@lfdr.de>; Mon,  6 Apr 2020 20:47:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 6BF77885A8;
	Mon,  6 Apr 2020 18:47:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NuMW9Jatdpqx; Mon,  6 Apr 2020 18:47:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D2C4C87582;
	Mon,  6 Apr 2020 18:47:47 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 35BD21BF2F2
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 18:47:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 328098855F
 for <devel@linuxdriverproject.org>; Mon,  6 Apr 2020 18:47:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2oxfVzw-IVrO for <devel@linuxdriverproject.org>;
 Mon,  6 Apr 2020 18:47:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3102F88534
 for <devel@driverdev.osuosl.org>; Mon,  6 Apr 2020 18:47:44 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id h2so479623wmb.4
 for <devel@driverdev.osuosl.org>; Mon, 06 Apr 2020 11:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=lzcBKkjxp8VNlvoc55S9INhyKVtvaQvjMFisDWaOmFc=;
 b=o4Zp5hm1A5OMVJwq3HaaoVe/Hp6/rIZDguvsv1FczUTBbCXJ0lLy6SuwpJ2TLBtzcR
 HWs6DsaynG8OSkjTfL3UrZ8zvPRfoixj6zSoIYVrK9e/SxRYsRv5JrZ7WeMVadTnJ6o0
 VemPZEYzSu7OAbHvwVycndthAzG3ueht8RBHLvCYF441m6ezQBXbfrEk8CRLoQj7Fk3u
 KfFZleagosmWEB9x0wPaYeE1/DKNLXirQsDpSBKRO5WgUQMVbiu4VELvVFqn1dOp52cj
 s5V8ptdyQnT7aG2P20BqkZ51VEBfIi68HpHjEWInTKvxkoVyy2sb+yFyFLoLMrkEb14n
 mChQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=lzcBKkjxp8VNlvoc55S9INhyKVtvaQvjMFisDWaOmFc=;
 b=Nfjkj7KP5MQWuAdFWXk9FWZRrP4Ywq3BjjonPuO2gCtvk5ZbbGce53X04PiJAUkUxt
 ZdbDsOyQYSdurTxd5ksq7hJ+4KDaFfY8H1S5t9ueaVKSR7HMA00q35P8H1XVxS7FdIHF
 12aOpNndtwcb7nBmtv7sDp6KrTWHq0NAMv+I+x6IMJFAnkwbN+r3vuI84cQv7eBoQrR8
 g29DkIeblUlTY/bi8eVmZk0U8BoPlZMCV5Ys2nSrda+dkPOKu6zIlPg516KXQvw4+wwi
 /wD7GHAwVycC0N6HY3QT14O3/GKisAE6V/W45A+5JsbgEtwlrBRKLbh7QUaleHyda9Ap
 kGyg==
X-Gm-Message-State: AGi0PuYu8vmBmoH3HLbJZYSHhqay3HC9nnyka5OweisnVd8xFOpdrhuP
 EiTW2dAjkBUDMtTKZ90rp/E=
X-Google-Smtp-Source: APiQypIEskwnx2I6rgoRkJY8/pDXIBx7JaLmEjxKhwWKhLvk5gVbRv+/hqq4h22JUaR5eOA51Cxrog==
X-Received: by 2002:a7b:c012:: with SMTP id c18mr459851wmb.22.1586198862626;
 Mon, 06 Apr 2020 11:47:42 -0700 (PDT)
Received: from [192.168.43.18] (188.29.165.56.threembb.co.uk. [188.29.165.56])
 by smtp.gmail.com with ESMTPSA id
 f1sm29161144wrv.37.2020.04.06.11.47.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Apr 2020 11:47:42 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 1/2] staging: vt6556: vnt_rf_setpower convert to use
 ieee80211_channel.
Message-ID: <6e9ffe4d-a651-d17e-ebf2-2bd6f766e6dd@gmail.com>
Date: Mon, 6 Apr 2020 19:47:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
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

ieee80211_channel contains all the necessary information to change
power according to tx mode required.

vnt_rf_setpower is moved and so that vnt_rf_set_txpower the only
caller becomes static.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/main_usb.c | 16 ++-----
 drivers/staging/vt6656/rf.c       | 79 +++++++++++++++----------------
 drivers/staging/vt6656/rf.h       |  3 +-
 drivers/staging/vt6656/wcmd.c     |  3 +-
 4 files changed, 43 insertions(+), 58 deletions(-)

diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index dd89f98cc18c..3c76d3cb5bbe 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -685,15 +685,8 @@ static int vnt_config(struct ieee80211_hw *hw, u32 changed)
 			priv->bb_type = BB_TYPE_11G;
 	}
 
-	if (changed & IEEE80211_CONF_CHANGE_POWER) {
-		if (priv->bb_type == BB_TYPE_11B)
-			priv->current_rate = RATE_1M;
-		else
-			priv->current_rate = RATE_54M;
-
-		vnt_rf_setpower(priv, priv->current_rate,
-				conf->chandef.chan->hw_value);
-	}
+	if (changed & IEEE80211_CONF_CHANGE_POWER)
+		vnt_rf_setpower(priv, conf->chandef.chan);
 
 	return 0;
 }
@@ -747,9 +740,8 @@ static void vnt_bss_info_changed(struct ieee80211_hw *hw,
 		vnt_update_pre_ed_threshold(priv, false);
 	}
 
-	if (changed & BSS_CHANGED_TXPOWER)
-		vnt_rf_setpower(priv, priv->current_rate,
-				conf->chandef.chan->hw_value);
+	if (changed & (BSS_CHANGED_TXPOWER | BSS_CHANGED_BANDWIDTH))
+		vnt_rf_setpower(priv, conf->chandef.chan);
 
 	if (changed & BSS_CHANGED_BEACON_ENABLED) {
 		dev_dbg(&priv->usb->dev,
diff --git a/drivers/staging/vt6656/rf.c b/drivers/staging/vt6656/rf.c
index 4f9aba0f21b0..633e2b9aca7a 100644
--- a/drivers/staging/vt6656/rf.c
+++ b/drivers/staging/vt6656/rf.c
@@ -537,42 +537,6 @@ int vnt_rf_write_embedded(struct vnt_private *priv, u32 data)
 	return true;
 }
 
-/* Set Tx power by rate and channel number */
-int vnt_rf_setpower(struct vnt_private *priv, u32 rate, u32 channel)
-{
-	u8 power = priv->cck_pwr;
-
-	if (channel == 0)
-		return -EINVAL;
-
-	switch (rate) {
-	case RATE_1M:
-	case RATE_2M:
-	case RATE_5M:
-	case RATE_11M:
-		channel--;
-
-		if (channel < sizeof(priv->cck_pwr_tbl))
-			power = priv->cck_pwr_tbl[channel];
-		break;
-	case RATE_6M:
-	case RATE_9M:
-	case RATE_12M:
-	case RATE_18M:
-	case RATE_24M:
-	case RATE_36M:
-	case RATE_48M:
-	case RATE_54M:
-		if (channel > CB_MAX_CHANNEL_24G)
-			power = priv->ofdm_a_pwr_tbl[channel - 15];
-		else
-			power = priv->ofdm_pwr_tbl[channel - 1];
-		break;
-	}
-
-	return vnt_rf_set_txpower(priv, power, rate);
-}
-
 static u8 vnt_rf_addpower(struct vnt_private *priv)
 {
 	s32 rssi = -priv->current_rssi;
@@ -600,7 +564,8 @@ static u8 vnt_rf_addpower(struct vnt_private *priv)
 }
 
 /* Set Tx power by power level and rate */
-int vnt_rf_set_txpower(struct vnt_private *priv, u8 power, u32 rate)
+static int vnt_rf_set_txpower(struct vnt_private *priv, u8 power,
+			      struct ieee80211_channel *ch)
 {
 	u32 power_setting = 0;
 	int ret = true;
@@ -620,7 +585,7 @@ int vnt_rf_set_txpower(struct vnt_private *priv, u8 power, u32 rate)
 
 		ret &= vnt_rf_write_embedded(priv, power_setting);
 
-		if (rate <= RATE_11M)
+		if (ch->flags & IEEE80211_CHAN_NO_OFDM)
 			ret &= vnt_rf_write_embedded(priv, 0x0001b400);
 		else
 			ret &= vnt_rf_write_embedded(priv, 0x0005a400);
@@ -630,7 +595,7 @@ int vnt_rf_set_txpower(struct vnt_private *priv, u8 power, u32 rate)
 
 		ret &= vnt_rf_write_embedded(priv, power_setting);
 
-		if (rate <= RATE_11M) {
+		if (ch->flags & IEEE80211_CHAN_NO_OFDM) {
 			ret &= vnt_rf_write_embedded(priv, 0x040c1400);
 			ret &= vnt_rf_write_embedded(priv, 0x00299b00);
 		} else {
@@ -640,7 +605,7 @@ int vnt_rf_set_txpower(struct vnt_private *priv, u8 power, u32 rate)
 		break;
 
 	case RF_AIROHA7230:
-		if (rate <= RATE_11M)
+		if (ch->flags & IEEE80211_CHAN_NO_OFDM)
 			ret &= vnt_rf_write_embedded(priv, 0x111bb900);
 		else
 			ret &= vnt_rf_write_embedded(priv, 0x221bb900);
@@ -670,8 +635,8 @@ int vnt_rf_set_txpower(struct vnt_private *priv, u8 power, u32 rate)
 		if (power >= VT3226_PWR_IDX_LEN)
 			return false;
 
-		if (rate <= RATE_11M) {
-			u16 hw_value = priv->hw->conf.chandef.chan->hw_value;
+		if (ch->flags & IEEE80211_CHAN_NO_OFDM) {
+			u16 hw_value = ch->hw_value;
 
 			power_setting = ((0x3f - power) << 20) | (0xe07 << 8);
 
@@ -716,6 +681,36 @@ int vnt_rf_set_txpower(struct vnt_private *priv, u8 power, u32 rate)
 	return ret;
 }
 
+/* Set Tx power by channel number type */
+int vnt_rf_setpower(struct vnt_private *priv,
+		    struct ieee80211_channel *ch)
+{
+	u16 channel;
+	u8 power = priv->cck_pwr;
+
+	if (!ch)
+		return -EINVAL;
+
+	/* set channel number to array number */
+	channel = ch->hw_value - 1;
+
+	if (ch->flags & IEEE80211_CHAN_NO_OFDM) {
+		if (channel < ARRAY_SIZE(priv->cck_pwr_tbl))
+			power = priv->cck_pwr_tbl[channel];
+	} else if (ch->band == NL80211_BAND_5GHZ) {
+		/* remove 14 channels to array size */
+		channel -= 14;
+
+		if (channel < ARRAY_SIZE(priv->ofdm_a_pwr_tbl))
+			power = priv->ofdm_a_pwr_tbl[channel];
+	} else {
+		if (channel < ARRAY_SIZE(priv->ofdm_a_pwr_tbl))
+			power = priv->ofdm_pwr_tbl[channel];
+	}
+
+	return vnt_rf_set_txpower(priv, power, ch);
+}
+
 /* Convert rssi to dbm */
 void vnt_rf_rssi_to_dbm(struct vnt_private *priv, u8 rssi, long *dbm)
 {
diff --git a/drivers/staging/vt6656/rf.h b/drivers/staging/vt6656/rf.h
index 7494546d71b8..493faaf4e2b5 100644
--- a/drivers/staging/vt6656/rf.h
+++ b/drivers/staging/vt6656/rf.h
@@ -41,8 +41,7 @@
 #define	VNT_RF_REG_LEN      0x17 /* 24 bit length */
 
 int vnt_rf_write_embedded(struct vnt_private *priv, u32 data);
-int vnt_rf_setpower(struct vnt_private *priv, u32 rate, u32 channel);
-int vnt_rf_set_txpower(struct vnt_private *priv, u8 power, u32 rate);
+int vnt_rf_setpower(struct vnt_private *priv, struct ieee80211_channel *ch);
 void vnt_rf_rssi_to_dbm(struct vnt_private *priv, u8 rssi, long *dbm);
 int vnt_rf_table_download(struct vnt_private *priv);
 
diff --git a/drivers/staging/vt6656/wcmd.c b/drivers/staging/vt6656/wcmd.c
index 2c5250ca2801..0ccc87da394e 100644
--- a/drivers/staging/vt6656/wcmd.c
+++ b/drivers/staging/vt6656/wcmd.c
@@ -122,8 +122,7 @@ void vnt_run_command(struct work_struct *work)
 
 	case WLAN_CMD_SETPOWER_START:
 
-		vnt_rf_setpower(priv, priv->current_rate,
-				priv->hw->conf.chandef.chan->hw_value);
+		vnt_rf_setpower(priv, priv->hw->conf.chandef.chan);
 
 		break;
 
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
