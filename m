Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5A31C2495
	for <lists+driverdev-devel@lfdr.de>; Sat,  2 May 2020 13:05:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC7C686934;
	Sat,  2 May 2020 11:05:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6D8wD6BYMvMu; Sat,  2 May 2020 11:05:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 24924862C9;
	Sat,  2 May 2020 11:05:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 195191BF859
 for <devel@linuxdriverproject.org>; Sat,  2 May 2020 11:05:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 0C5EC8863D
 for <devel@linuxdriverproject.org>; Sat,  2 May 2020 11:05:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Vcis6JNrQMpv for <devel@linuxdriverproject.org>;
 Sat,  2 May 2020 11:05:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com
 [209.85.221.67])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 1281A8863B
 for <devel@driverdev.osuosl.org>; Sat,  2 May 2020 11:05:16 +0000 (UTC)
Received: by mail-wr1-f67.google.com with SMTP id k1so14894978wrx.4
 for <devel@driverdev.osuosl.org>; Sat, 02 May 2020 04:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=RMuptJbJbjulTJohKmbdW41ZrhcsbjdJdZhgU26yP3s=;
 b=m136dddol7qXyrZQOrEVLCeoYpx/kpsFoA4iVZlO0JKs9oA1dRqqVC08BxSfcJBuSs
 /nM2MtYbywVleLpOe+G0o5tCVFIO4eqsXXQEMEIJF91HMitDpxg1C5fHKQFT5LwG0TUb
 tv2/P/rM31qPNX974Hjl0picqor8bET50H7XAK7Os8I7JuBZ9MXpKK4MSkSg2NHSONUu
 kiF+MRuQsd0NnDYXq7Zk4IeWf2vtgNqwPKghynAyH4aAY9CbOBmhmD9V6a7/Ea0TA1xJ
 oFRuRznVF0iMFWRA/YHdR83JZiT3oriSYgtW05txPKLldmdOrLJT+q2+6br6CS8HGx5s
 BU9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=RMuptJbJbjulTJohKmbdW41ZrhcsbjdJdZhgU26yP3s=;
 b=GTTRT3RGxjqpxy2qjByMfzoAowpU7CNz6AdYLhqh2rm2cwR+YcDsG14dAILgg+SnPS
 /Uu7agUOQn5hRMThnKSz+BteYdKFvGWWMdh2AmpWEFH6MQ8lIkRTBJmOZN/oNpPtqQ2Q
 YsMyIwk4oK77dBT0dw7Kzohuma11pJMslj7HypKG4xaLYSgxNpy3Xd/8eRcaAZNufSF5
 3aqsuTQhiruYGAliny/2mjiVLmw0WgXwKe0ug3j6Agr6CzWPe0ciGsPSDHeZw4gEVURv
 LlBTqRC7J/ubz5IEWtd7n8KbRaGEYCTZUk+3XdD0AvHMstldFiCicsfML9Ynugo/qvia
 HKIg==
X-Gm-Message-State: AGi0PubuJ85ZWMKPBQaa9qiwQGoDzLg6sCWs7q5vbwGtmjSpPm86qD4h
 7gLC/V8Or0UC54NvNHdsxYo=
X-Google-Smtp-Source: APiQypJb633Iabl5mydKD4TmXV9+wPUDtEA0xJEPHoroma1IFa6V+n6KEr9qrQgFsCXyClg0Yn12Bg==
X-Received: by 2002:adf:8302:: with SMTP id 2mr1297910wrd.114.1588417514396;
 Sat, 02 May 2020 04:05:14 -0700 (PDT)
Received: from [192.168.43.18] (94.197.121.192.threembb.co.uk.
 [94.197.121.192])
 by smtp.gmail.com with ESMTPSA id p6sm8374161wrt.3.2020.05.02.04.05.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 02 May 2020 04:05:13 -0700 (PDT)
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
From: Malcolm Priestley <tvboxspy@gmail.com>
Subject: [PATCH ] staging: vt6656: refactor power save operation
Message-ID: <5f32a399-bb35-2b77-7c37-a852393a9df7@gmail.com>
Date: Sat, 2 May 2020 12:05:12 +0100
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
100 TTBT wake-up set to listen interval.
200 TTBT
300 TTBT
400 TTBT --> call vnt_next_tbtt_wakeup on slow path
	Beacon heard and passed through at the approx 500 interval.
500 TTBT
600 TTBT wakeup set to listen interval

The TTBT set at 500 wake-up sequence and always listen flagged on;
100 No TTBT
200 No TTBT
300 No TTBT
400 No TTBT
500 TTBT - beacon heard and passed through
600 No TTBT

A further enhancement because the TTBT is more precise
the dtim_period can be used instead.

When Power save is off the TTBT continues to run at the listen
interval but all the other beacons are passed.

The code in vnt_int_process_data is no longer required. 

Signed-off-by: Malcolm Priestley <tvboxspy@gmail.com>
---
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
