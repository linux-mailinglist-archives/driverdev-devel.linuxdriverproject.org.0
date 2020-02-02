Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 001CA14FEF8
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Feb 2020 20:46:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 9B96820385;
	Sun,  2 Feb 2020 19:46:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ga0vbejuFqUV; Sun,  2 Feb 2020 19:46:27 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 100FE203BB;
	Sun,  2 Feb 2020 19:46:26 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 83B411BF334
 for <devel@linuxdriverproject.org>; Sun,  2 Feb 2020 19:46:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7D37A875F9
 for <devel@linuxdriverproject.org>; Sun,  2 Feb 2020 19:46:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ijp1VuVRHfiF for <devel@linuxdriverproject.org>;
 Sun,  2 Feb 2020 19:46:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f68.google.com (mail-wm1-f68.google.com
 [209.85.128.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 78D2D875F4
 for <devel@driverdev.osuosl.org>; Sun,  2 Feb 2020 19:46:23 +0000 (UTC)
Received: by mail-wm1-f68.google.com with SMTP id a9so14580078wmj.3
 for <devel@driverdev.osuosl.org>; Sun, 02 Feb 2020 11:46:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=kYRdlteX6xnlYowqJ6I6Jhl2LuIzKIz21T0VnHPw9/k=;
 b=fzAMFRw9JMowfuK1vMjKwqkbQ9JpuPTKgYPgV3V8Rfk1/rBFxmwcjHod1NKgq87pbS
 OdQFkHtJqZlUrb4iSLmGM1Vtt2p0ZHcxde4lXB4DIx5PDwL86dqSRsRDpcwn9KziyHt2
 zW+71McIhRSo8kpbfgIv6dT2GINS1huXzCgVixkndMY16fJth2rPBE3N96Txv8PRUK2q
 2ARF8Pr0L7CUdCyPgzIDmpduR2U9kzLHP6spfVffelHLQFjDB4YqT6fKHa0UAGbrzQOV
 +hQ2tC+/Ya3+vY7Hlz833v+Z4pczM8oA9wuZQtWJK8jpPL8H1D9am/I5EywB2zy7UOXr
 aOXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=kYRdlteX6xnlYowqJ6I6Jhl2LuIzKIz21T0VnHPw9/k=;
 b=Z1KZXGdvNHD5OucD7/YKEEip2u7KTaMBNGx2sDkDJznNK7lnMYfZkvroVc86R+M62w
 huQibj31Gup2uclMoEG7weT72ln2E1Pvb2XXDcA4RSXpL1RCP9ZGZtyb8RT6vUpb7cYT
 jsTcaqFEgz9MwSMflMtUxrluYwbW3AjaSOZkz3M5N610qBLk8UAoPZZbpcRkDM1sLjsY
 dynlfX2yms/DTG+nyPOtoHhvU9Im4c+yyQP39rjKqczSqUGWX7XQ4B0EKelMPOLe50ei
 Krmkqg0Hq12Gw73CVO3u9bKi6aN4aJxtnVcLH1UEUxJnQeSaFG5QsQyngPJz0eMnq3LY
 +5RQ==
X-Gm-Message-State: APjAAAUmwM9c9QInwg4NaZX4sOAzHETlWg2gfOIWDWx3dSIJEoaJp66N
 4GXDJn0R257MXmgDNnmWAKY=
X-Google-Smtp-Source: APXvYqyjttU1R9VOWupWt8Z3WaxbQn0XbOm65pAyXkxcQgWRsH5F1VuT46R3JwrnAdRejI4MTs0iJQ==
X-Received: by 2002:a05:600c:20c6:: with SMTP id
 y6mr24947737wmm.95.1580672781964; 
 Sun, 02 Feb 2020 11:46:21 -0800 (PST)
Received: from [192.168.43.18] (92.40.248.192.threembb.co.uk. [92.40.248.192])
 by smtp.gmail.com with ESMTPSA id
 p3sm3240064wrx.29.2020.02.02.11.46.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 02 Feb 2020 11:46:21 -0800 (PST)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH 1/2] staging: vt6656: Disable and remove fall back rates from
 driver.
Message-ID: <47cc31e5-226b-f84f-3655-51a269735130@gmail.com>
Date: Sun, 2 Feb 2020 19:46:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.2
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

The fall back rates are not properly implemented in driver and
form part of the legacy driver.

mac80211 has no indication that this is happening and it
does appear the driver does function considerably better
without them so remove them.

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
 drivers/staging/vt6656/int.c      | 38 -------------------------------
 drivers/staging/vt6656/main_usb.c |  4 ----
 drivers/staging/vt6656/rxtx.c     | 29 +----------------------
 3 files changed, 1 insertion(+), 70 deletions(-)

diff --git a/drivers/staging/vt6656/int.c b/drivers/staging/vt6656/int.c
index af215860be4c..3fa61c368464 100644
--- a/drivers/staging/vt6656/int.c
+++ b/drivers/staging/vt6656/int.c
@@ -23,22 +23,6 @@
 #include "power.h"
 #include "usbpipe.h"
 
-static const u8 fallback_rate0[5][5] = {
-	{RATE_18M, RATE_18M, RATE_12M, RATE_12M, RATE_12M},
-	{RATE_24M, RATE_24M, RATE_18M, RATE_12M, RATE_12M},
-	{RATE_36M, RATE_36M, RATE_24M, RATE_18M, RATE_18M},
-	{RATE_48M, RATE_48M, RATE_36M, RATE_24M, RATE_24M},
-	{RATE_54M, RATE_54M, RATE_48M, RATE_36M, RATE_36M}
-};
-
-static const u8 fallback_rate1[5][5] = {
-	{RATE_18M, RATE_18M, RATE_12M, RATE_6M, RATE_6M},
-	{RATE_24M, RATE_24M, RATE_18M, RATE_6M, RATE_6M},
-	{RATE_36M, RATE_36M, RATE_24M, RATE_12M, RATE_12M},
-	{RATE_48M, RATE_48M, RATE_24M, RATE_12M, RATE_12M},
-	{RATE_54M, RATE_54M, RATE_36M, RATE_18M, RATE_18M}
-};
-
 int vnt_int_start_interrupt(struct vnt_private *priv)
 {
 	int ret = 0;
@@ -59,7 +43,6 @@ static int vnt_int_report_rate(struct vnt_private *priv, u8 pkt_no, u8 tsr)
 {
 	struct vnt_usb_send_context *context;
 	struct ieee80211_tx_info *info;
-	struct ieee80211_rate *rate;
 	u8 tx_retry = (tsr & 0xf0) >> 4;
 	s8 idx;
 
@@ -74,27 +57,6 @@ static int vnt_int_report_rate(struct vnt_private *priv, u8 pkt_no, u8 tsr)
 	info = IEEE80211_SKB_CB(context->skb);
 	idx = info->control.rates[0].idx;
 
-	if (context->fb_option && !(tsr & (TSR_TMO | TSR_RETRYTMO))) {
-		u8 tx_rate;
-		u8 retry = tx_retry;
-
-		rate = ieee80211_get_tx_rate(priv->hw, info);
-		tx_rate = rate->hw_value - RATE_18M;
-
-		if (retry > 4)
-			retry = 4;
-
-		if (context->fb_option == AUTO_FB_0)
-			tx_rate = fallback_rate0[tx_rate][retry];
-		else if (context->fb_option == AUTO_FB_1)
-			tx_rate = fallback_rate1[tx_rate][retry];
-
-		if (info->band == NL80211_BAND_5GHZ)
-			idx = tx_rate - RATE_6M;
-		else
-			idx = tx_rate;
-	}
-
 	ieee80211_tx_info_clear_status(info);
 
 	info->status.rates[0].count = tx_retry;
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 6e5963adb501..9135aad0863d 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -99,7 +99,6 @@ static void vnt_set_options(struct vnt_private *priv)
 	priv->op_mode = NL80211_IFTYPE_UNSPECIFIED;
 	priv->bb_type = BBP_TYPE_DEF;
 	priv->packet_type = priv->bb_type;
-	priv->auto_fb_ctrl = AUTO_FB_0;
 	priv->preamble_type = 0;
 	priv->exist_sw_net_addr = false;
 }
@@ -261,9 +260,6 @@ static int vnt_init_registers(struct vnt_private *priv)
 	if (ret)
 		goto end;
 
-	/* get Auto Fall Back type */
-	priv->auto_fb_ctrl = AUTO_FB_0;
-
 	/* default Auto Mode */
 	priv->bb_type = BB_TYPE_11G;
 
diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
index 29caba728906..0fabeb396563 100644
--- a/drivers/staging/vt6656/rxtx.c
+++ b/drivers/staging/vt6656/rxtx.c
@@ -792,7 +792,7 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 	struct vnt_usb_send_context *tx_context;
 	unsigned long flags;
 	u16 tx_bytes, tx_header_size, tx_body_size, current_rate, duration_id;
-	u8 pkt_type, fb_option = AUTO_FB_NONE;
+	u8 pkt_type;
 	bool need_rts = false;
 	bool need_mic = false;
 
@@ -912,33 +912,6 @@ int vnt_tx_packet(struct vnt_private *priv, struct sk_buff *skb)
 
 	tx_buffer_head->current_rate = cpu_to_le16(current_rate);
 
-	/* legacy rates TODO use ieee80211_tx_rate */
-	if (current_rate >= RATE_18M && ieee80211_is_data(hdr->frame_control)) {
-		if (priv->auto_fb_ctrl == AUTO_FB_0) {
-			tx_buffer_head->fifo_ctl |=
-						cpu_to_le16(FIFOCTL_AUTO_FB_0);
-
-			priv->tx_rate_fb0 =
-				vnt_fb_opt0[FB_RATE0][current_rate - RATE_18M];
-			priv->tx_rate_fb1 =
-				vnt_fb_opt0[FB_RATE1][current_rate - RATE_18M];
-
-			fb_option = AUTO_FB_0;
-		} else if (priv->auto_fb_ctrl == AUTO_FB_1) {
-			tx_buffer_head->fifo_ctl |=
-						cpu_to_le16(FIFOCTL_AUTO_FB_1);
-
-			priv->tx_rate_fb0 =
-				vnt_fb_opt1[FB_RATE0][current_rate - RATE_18M];
-			priv->tx_rate_fb1 =
-				vnt_fb_opt1[FB_RATE1][current_rate - RATE_18M];
-
-			fb_option = AUTO_FB_1;
-		}
-	}
-
-	tx_context->fb_option = fb_option;
-
 	duration_id = vnt_generate_tx_parameter(tx_context, tx_buffer, &mic_hdr,
 						need_mic, need_rts);
 
-- 
2.25.0
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
