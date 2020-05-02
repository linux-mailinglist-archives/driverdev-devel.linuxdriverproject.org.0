Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B217F1C24AD
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 May 2020 13:20:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 90DA320445;
	Sat,  2 May 2020 11:20:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A-BxB+tR9i5a; Sat,  2 May 2020 11:20:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 462EE20416;
	Sat,  2 May 2020 11:20:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 7DFA41BF859
 for <devel@linuxdriverproject.org>; Sat,  2 May 2020 11:20:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7A5498884E
 for <devel@linuxdriverproject.org>; Sat,  2 May 2020 11:20:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7N5lsLwOZTNY for <devel@linuxdriverproject.org>;
 Sat,  2 May 2020 11:20:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com
 [209.85.221.68])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 20E5588846
 for <devel@driverdev.osuosl.org>; Sat,  2 May 2020 11:20:17 +0000 (UTC)
Received: by mail-wr1-f68.google.com with SMTP id x18so14929026wrq.2
 for <devel@driverdev.osuosl.org>; Sat, 02 May 2020 04:20:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:subject:to:cc:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=zG92LUO0XKhl+2rKG8DLuLjU1DQt2zx+8L0OU1LdhEg=;
 b=CajDlDompy/b7v/KVRpoPSuTyFN6imZedHipJVWvDbARZcR7D4O4A8D+oyFNS4/4yl
 LEC7fkKEA9MiPWJ8fefGXvp9r8xfIGPwoX3YDJsM6geogeOiMFGpV5w8QCJAdIFinTkA
 XtIH31W+jf2kxGao58jqf9y6uZ2jTwxNv6TaMlYuFPuTS//lbrWP/nLZET73qo/anki5
 pQZzOpjqaj+sEp657osnWPMORd3l5ur0KA35vqIPdNltxllVhVBWxJxnFXyZgIrfPjgf
 joiPK4QrQbanEKg1dABYB+tF9+sER2yP6LwCjbpknWHRCxlSuMdjHFx3hiLkV3v9slr7
 kxRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:cc:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=zG92LUO0XKhl+2rKG8DLuLjU1DQt2zx+8L0OU1LdhEg=;
 b=Z9My586yEKzR+1lyIKOg8bMKQ6EL6c3kSfXNDZ1HD8Tf296aGqt1uu7rjFIJWvHe58
 vibM2LN9i+sNTHifrahRLk7+J/MJtiLZEQLFpru4o7fEjA67rn+BJf4wYBu0SBMBANVl
 0bBxeRSVMXAU6KB7BOeWX93cnFZXLdrombBl5HgOB/outFHvWQ3SmIV3FGMHSJl9zJRg
 Nk3uo6p047kHgDIA3RFUlcWSk+LOEOIzr6hiOGWuClhBrVOJoAOR7fc4Wh0ntw1r5/AA
 6Xa2YUQ501xDKs9CAqrmq0HXlkpJ0UbtNX+glK4P1B1RhRqRxzpd2houQ4xm5XVSyzpK
 wdYQ==
X-Gm-Message-State: AGi0PubLse4FEnvFVpkRDvv/itNGNjgDIxmkLxRnjrh2kB0b8XqWbPcc
 c1nHVapLpePZ4J9YAIrfGQQ=
X-Google-Smtp-Source: APiQypIq19iGDKSKYpeZF07PAnvlfWy0/zba4sLjDHej3+RyEDXWoQV9A4crYF20ogkLiGKD4TMVxw==
X-Received: by 2002:adf:f48a:: with SMTP id l10mr8514091wro.231.1588418415682; 
 Sat, 02 May 2020 04:20:15 -0700 (PDT)
Received: from [192.168.43.18] (94.197.121.192.threembb.co.uk.
 [94.197.121.192])
 by smtp.gmail.com with ESMTPSA id s11sm8867679wrp.79.2020.05.02.04.20.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 May 2020 04:20:15 -0700 (PDT)
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH v2] staging: vt6656: refactor power save operation
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <5a188bd8-7049-8063-f24d-96768ce9a6ed@gmail.com>
Date: Sat, 2 May 2020 12:20:13 +0100
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

At present the power save wake uses the listening interval and
the slow path to wake up.

The following using a beacon interval of 100 and
listen interval of 5.

The TBTT set at 100 wake-up sequence;
100 TBTT wake-up set to listen interval.
200 TBTT
300 TBTT
400 TBTT --> call vnt_next_tbtt_wakeup on slow path
	Beacon heard and passed through at the approx 500 interval.
500 TBTT
600 TBTT wake-up set to listen interval

The TBTT set at 500 wake-up sequence and always listen flagged on;
100 No TBTT
200 No TBTT
300 No TBTT
400 No TBTT
500 TBTT - beacon heard and passed through
600 No TBTT

A further enhancement because the TBTT is more precise
the dtim_period can be used instead.

When Power save is off the TBTT continues to run at the listen
interval but all the other beacons are passed.

The code in vnt_int_process_data is no longer required. 

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
v2 Corrected TTBT to TBTT
 
 drivers/staging/vt6656/device.h   |  2 --
 drivers/staging/vt6656/main_usb.c | 11 +++++++++--
 drivers/staging/vt6656/power.c    | 12 ++----------
 drivers/staging/vt6656/usbpipe.c  | 13 -------------
 4 files changed, 11 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/vt6656/device.h b/drivers/staging/vt6656/device.h
index 4d596853a3ee..d19d802b5d4f 100644
--- a/drivers/staging/vt6656/device.h
+++ b/drivers/staging/vt6656/device.h
@@ -383,8 +383,6 @@ struct vnt_private {
 	u8 bb_pre_ed_rssi;
 	u8 bb_pre_ed_index;
 
-	u16 wake_up_count;
-
 	/* command timer */
 	struct delayed_work run_command_work;
 
diff --git a/drivers/staging/vt6656/main_usb.c b/drivers/staging/vt6656/main_usb.c
index 7db1e044ad26..b5790d4d7152 100644
--- a/drivers/staging/vt6656/main_usb.c
+++ b/drivers/staging/vt6656/main_usb.c
@@ -824,10 +824,17 @@ static void vnt_bss_info_changed(struct ieee80211_hw *hw,
 	if (changed & (BSS_CHANGED_ASSOC | BSS_CHANGED_BEACON_INFO) &&
 	    priv->op_mode != NL80211_IFTYPE_AP) {
 		if (conf->assoc && conf->beacon_rate) {
+			u16 ps_beacon_int = conf->beacon_int;
+
+			if (conf->dtim_period)
+				ps_beacon_int *= conf->dtim_period;
+			else if (hw->conf.listen_interval)
+				ps_beacon_int *= hw->conf.listen_interval;
+
 			vnt_mac_reg_bits_on(priv, MAC_REG_TFTCTL,
 					    TFTCTL_TSFCNTREN);
 
-			vnt_mac_set_beacon_interval(priv, conf->beacon_int);
+			vnt_mac_set_beacon_interval(priv, ps_beacon_int);
 
 			vnt_reset_next_tbtt(priv, conf->beacon_int);
 
@@ -835,7 +842,7 @@ static void vnt_bss_info_changed(struct ieee80211_hw *hw,
 				       conf->sync_tsf, priv->current_tsf);
 
 			vnt_update_next_tbtt(priv,
-					     conf->sync_tsf, conf->beacon_int);
+					     conf->sync_tsf, ps_beacon_int);
 		} else {
 			vnt_clear_current_tsf(priv);
 
diff --git a/drivers/staging/vt6656/power.c b/drivers/staging/vt6656/power.c
index d160a0773943..2f49c870272a 100644
--- a/drivers/staging/vt6656/power.c
+++ b/drivers/staging/vt6656/power.c
@@ -63,16 +63,8 @@ void vnt_enable_power_saving(struct vnt_private *priv, u16 listen_interval)
 	 */
 	vnt_mac_reg_bits_on(priv, MAC_REG_PSCTL, PSCTL_GO2DOZE);
 
-	if (listen_interval >= 2) {
-		/* clear always listen beacon */
-		vnt_mac_reg_bits_off(priv, MAC_REG_PSCTL, PSCTL_ALBCN);
-
-		/* first time set listen next beacon */
-		vnt_mac_reg_bits_on(priv, MAC_REG_PSCTL, PSCTL_LNBCN);
-	} else {
-		/* always listen beacon */
-		vnt_mac_reg_bits_on(priv, MAC_REG_PSCTL, PSCTL_ALBCN);
-	}
+	/* always listen beacon */
+	vnt_mac_reg_bits_on(priv, MAC_REG_PSCTL, PSCTL_ALBCN);
 
 	dev_dbg(&priv->usb->dev,  "PS:Power Saving Mode Enable...\n");
 }
diff --git a/drivers/staging/vt6656/usbpipe.c b/drivers/staging/vt6656/usbpipe.c
index e8efdeadb1a7..5603f3cbb33c 100644
--- a/drivers/staging/vt6656/usbpipe.c
+++ b/drivers/staging/vt6656/usbpipe.c
@@ -202,19 +202,6 @@ static void vnt_int_process_data(struct vnt_private *priv)
 	if (int_data->isr0 & ISR_BNTX && priv->op_mode == NL80211_IFTYPE_AP)
 		vnt_schedule_command(priv, WLAN_CMD_BECON_SEND);
 
-	if (int_data->isr0 & ISR_TBTT &&
-	    priv->hw->conf.flags & IEEE80211_CONF_PS) {
-		if (!priv->wake_up_count)
-			priv->wake_up_count = priv->hw->conf.listen_interval;
-
-		if (priv->wake_up_count)
-			--priv->wake_up_count;
-
-		/* Turn on wake up to listen next beacon */
-		if (priv->wake_up_count == 1)
-			vnt_schedule_command(priv, WLAN_CMD_TBTT_WAKEUP);
-	}
-
 	priv->current_tsf = le64_to_cpu(int_data->tsf);
 
 	low_stats->dot11RTSSuccessCount += int_data->rts_success;
-- 
2.25.1
_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
