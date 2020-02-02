Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4E614FC06
	for <lists+driverdev-devel@lfdr.de>; Sun,  2 Feb 2020 08:03:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id E6A4486406;
	Sun,  2 Feb 2020 07:02:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w3K4XO7JsGNh; Sun,  2 Feb 2020 07:02:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F0D9A8637A;
	Sun,  2 Feb 2020 07:02:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id D5A471BF3A6
 for <devel@linuxdriverproject.org>; Sun,  2 Feb 2020 07:02:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D1941879A5
 for <devel@linuxdriverproject.org>; Sun,  2 Feb 2020 07:02:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Tn1QeLB6yQBA for <devel@linuxdriverproject.org>;
 Sun,  2 Feb 2020 07:02:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EFB8D879A3
 for <devel@driverdev.osuosl.org>; Sun,  2 Feb 2020 07:02:51 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id w21so229872pgl.9
 for <devel@driverdev.osuosl.org>; Sat, 01 Feb 2020 23:02:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CcaSBxkfasNdCHAZb50UgpDGQ3JLAdMMSsKdRUVDIfw=;
 b=CEF2/yYaWtlh0wePHQ5C+c7HyRMiO6eywU23EV62OjAi7LFJz2dUD5ELx+Xp/60qYL
 uIQtplp8sYEASPXBQdg2rVGRNhVHFD46wM0WPO2+XsFB7WEvrz0Wpk+XakCQjnb/Tw6P
 rIo4tqY77/UWfRAN9IXzqQ65uHnQ76P6Pees5OiFqi0LP0cQl5FiYU3mu+SH8WI9sylc
 /fzJNgnbGeBs0WnoWHilb49wqQlm4SEjeiv9F1D8oO3gsS13hIYq7msK0XCAP9xmdz8S
 eSvPwE6b7SduKQWCuA1XOEYA4ylaku0aoKdC/oGaLed3xFfCfZHDlnEttnXb/vsdu5a1
 7+dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CcaSBxkfasNdCHAZb50UgpDGQ3JLAdMMSsKdRUVDIfw=;
 b=g0yA0XW3EJMylH7k1sPxgO7zsIcoqHiSGJYo1if+v1QjH6NdYJSiuIg5PIlVAxTKP9
 qjfnhladDV8PRKl3UQBZ1MJinqSiiLxjMDMP6hVg7KsdzLMtEP0P8lcOvAvS625KHe2O
 bk7DBA4A3W9HNkYsixojwM8wSLDEs50bCqJHwgGTCH9qQEyqU8+2RP1JSUibnCUpTLYy
 6RKMs/ACjBk5gZE4b1mFvUtvmr93w0pdwTSGnr4uVGv2nHrzuo8EqLEFgcXhwR6OdWv3
 VXNaA2hf1UHcAjvZAIQYk71A+ikkk4ZLMTNwv812hdGw6NFY11SZwjjXY06T6zzQH6aB
 wrEw==
X-Gm-Message-State: APjAAAXyOfOJHlZ+WP/tCiHqkvZwzVOgzTjYAEOFxYVf/bOfi+Xp/gW0
 e6Izg74EmCc5JAiUQvafkuo=
X-Google-Smtp-Source: APXvYqzJzT3FXxuRS5FTHxWZkocY3TJNE8/7lEncNTbHDtft+LhGRuQvRI5k5/cmJHaelTrqKUaVjg==
X-Received: by 2002:a63:3c1b:: with SMTP id j27mr17588584pga.152.1580626971373; 
 Sat, 01 Feb 2020 23:02:51 -0800 (PST)
Received: from localhost.localdomain ([2407:7000:9b53:200:4fc7:b293:ef80:cdef])
 by smtp.gmail.com with ESMTPSA id o73sm16521451pje.7.2020.02.01.23.02.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 01 Feb 2020 23:02:50 -0800 (PST)
From: Derek Robson <robsonde@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8192e: style fix - Prefer using '"%s...",
 __func__'
Date: Sun,  2 Feb 2020 20:02:43 +1300
Message-Id: <20200202070243.112059-1-robsonde@gmail.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
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
Cc: Derek Robson <robsonde@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed checkpatch warnings, Prefer using '"%s...", __func__'

Signed-off-by: Derek Robson <robsonde@gmail.com>
---
 .../staging/rtl8192e/rtl8192e/r8192E_dev.c    | 10 +++---
 .../staging/rtl8192e/rtl8192e/r8192E_phy.c    | 36 +++++++------------
 drivers/staging/rtl8192e/rtl8192e/rtl_cam.c   |  6 ++--
 drivers/staging/rtl8192e/rtl8192e/rtl_core.c  | 24 ++++++-------
 drivers/staging/rtl8192e/rtl819x_BAProc.c     | 14 ++++----
 drivers/staging/rtl8192e/rtl819x_HTProc.c     |  2 +-
 drivers/staging/rtl8192e/rtl819x_TSProc.c     |  2 +-
 drivers/staging/rtl8192e/rtllib_tx.c          |  2 +-
 8 files changed, 43 insertions(+), 53 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
index 980b850d729a..ddcd7885d190 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_dev.c
@@ -304,7 +304,7 @@ static void _rtl92e_read_eeprom_info(struct net_device *dev)
 	u16 i, usValue, IC_Version;
 	u16 EEPROMId;
 
-	RT_TRACE(COMP_INIT, "====> _rtl92e_read_eeprom_info\n");
+	RT_TRACE(COMP_INIT, "====> %s\n", __func__);
 
 	EEPROMId = rtl92e_eeprom_read(dev, 0);
 	if (EEPROMId != RTL8190_EEPROM_ID) {
@@ -1354,8 +1354,8 @@ static u8 _rtl92e_rate_hw_to_mgn(bool bIsHT, u8 rate)
 
 		default:
 			RT_TRACE(COMP_RECV,
-				 "_rtl92e_rate_hw_to_mgn(): Non supportedRate [%x], bIsHT = %d!!!\n",
-				 rate, bIsHT);
+				 "%s: Non supportedRate [%x], bIsHT = %d!!!\n",
+				 __func__, rate, bIsHT);
 			break;
 		}
 
@@ -1415,8 +1415,8 @@ static u8 _rtl92e_rate_hw_to_mgn(bool bIsHT, u8 rate)
 
 		default:
 			RT_TRACE(COMP_RECV,
-				 "_rtl92e_rate_hw_to_mgn(): Non supported Rate [%x], bIsHT = %d!!!\n",
-				 rate, bIsHT);
+				 "%s: Non supported Rate [%x], bIsHT = %d!!!\n",
+				 __func__, rate, bIsHT);
 			break;
 		}
 	}
diff --git a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
index 7d78f16efc1d..411138102948 100644
--- a/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
+++ b/drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c
@@ -1124,14 +1124,14 @@ static void _rtl92e_cck_tx_power_track_bw_switch_thermal(struct net_device *dev)
 			priv->Record_CCK_20Mindex = 6;
 		priv->CCK_index = priv->Record_CCK_20Mindex;
 		RT_TRACE(COMP_POWER_TRACKING,
-			 "20MHz, _rtl92e_cck_tx_power_track_bw_switch_thermal(),CCK_index = %d\n",
+			 "20MHz, %s,CCK_index = %d\n", __func__,
 			 priv->CCK_index);
 	break;
 
 	case HT_CHANNEL_WIDTH_20_40:
 		priv->CCK_index = priv->Record_CCK_40Mindex;
 		RT_TRACE(COMP_POWER_TRACKING,
-			 "40MHz, _rtl92e_cck_tx_power_track_bw_switch_thermal(), CCK_index = %d\n",
+			 "40MHz, %s, CCK_index = %d\n", __func__,
 			 priv->CCK_index);
 	break;
 	}
@@ -1155,7 +1155,7 @@ static void _rtl92e_set_bw_mode_work_item(struct net_device *dev)
 	u8 regBwOpMode;
 
 	RT_TRACE(COMP_SWBW,
-		 "==>_rtl92e_set_bw_mode_work_item()  Switch to %s bandwidth\n",
+		 "==>%s Switch to %s bandwidth\n", __func__,
 		 priv->CurrentChannelBW == HT_CHANNEL_WIDTH_20 ?
 			 "20MHz" : "40MHz");
 
@@ -1416,15 +1416,14 @@ static bool _rtl92e_set_rf_power_state(struct net_device *dev,
 
 	if (priv->SetRFPowerStateInProgress)
 		return false;
-	RT_TRACE(COMP_PS, "===========> _rtl92e_set_rf_power_state()!\n");
+	RT_TRACE(COMP_PS, "===========> %s!\n", __func__);
 	priv->SetRFPowerStateInProgress = true;
 
 	switch (priv->rf_chip) {
 	case RF_8256:
 		switch (eRFPowerState) {
 		case eRfOn:
-			RT_TRACE(COMP_PS,
-				 "_rtl92e_set_rf_power_state() eRfOn!\n");
+			RT_TRACE(COMP_PS, "%s eRfOn!\n", __func__);
 			if ((priv->rtllib->eRFPowerState == eRfOff) &&
 			     RT_IN_PS_LEVEL(pPSC, RT_RF_OFF_LEVL_HALT_NIC)) {
 				bool rtstatus;
@@ -1490,10 +1489,8 @@ static bool _rtl92e_set_rf_power_state(struct net_device *dev,
 				}
 
 				if (i >= MAX_DOZE_WAITING_TIMES_9x) {
-					RT_TRACE(COMP_POWER,
-						 "\n\n\n TimeOut!! _rtl92e_set_rf_power_state(): eRfOff: %d times TcbBusyQueue[%d] != 0 !!!\n",
-						 MAX_DOZE_WAITING_TIMES_9x,
-						 QueueID);
+					RT_TRACE(COMP_POWER, "\n\n\n TimeOut!! %s: eRfOff: %d times TcbBusyQueue[%d] != 0 !!!\n",
+						 __func__, MAX_DOZE_WAITING_TIMES_9x, QueueID);
 					break;
 				}
 			}
@@ -1501,8 +1498,7 @@ static bool _rtl92e_set_rf_power_state(struct net_device *dev,
 			break;
 
 		case eRfOff:
-			RT_TRACE(COMP_PS,
-				 "_rtl92e_set_rf_power_state() eRfOff/Sleep !\n");
+			RT_TRACE(COMP_PS, "%s eRfOff/Sleep !\n", __func__);
 
 			for (QueueID = 0, i = 0; QueueID < MAX_TX_QUEUE; ) {
 				ring = &priv->tx_ring[QueueID];
@@ -1567,9 +1563,7 @@ static bool _rtl92e_set_rf_power_state(struct net_device *dev,
 	}
 
 	priv->SetRFPowerStateInProgress = false;
-	RT_TRACE(COMP_PS,
-		 "<=========== _rtl92e_set_rf_power_state() bResult = %d!\n",
-		 bResult);
+	RT_TRACE(COMP_PS, "<=========== %s bResult = %d!\n", __func__, bResult);
 	return bResult;
 }
 
@@ -1581,21 +1575,17 @@ bool rtl92e_set_rf_power_state(struct net_device *dev,
 	bool bResult = false;
 
 	RT_TRACE(COMP_PS,
-		 "---------> rtl92e_set_rf_power_state(): eRFPowerState(%d)\n",
-		 eRFPowerState);
+		 "---------> %s: eRFPowerState(%d)\n", __func__, eRFPowerState);
 	if (eRFPowerState == priv->rtllib->eRFPowerState &&
 	    priv->bHwRfOffAction == 0) {
-		RT_TRACE(COMP_PS,
-			 "<--------- rtl92e_set_rf_power_state(): discard the request for eRFPowerState(%d) is the same.\n",
-			 eRFPowerState);
+		RT_TRACE(COMP_PS, "<--------- %s: discard the request for eRFPowerState(%d) is the same.\n",
+			 __func__, eRFPowerState);
 		return bResult;
 	}
 
 	bResult = _rtl92e_set_rf_power_state(dev, eRFPowerState);
 
-	RT_TRACE(COMP_PS,
-		 "<--------- rtl92e_set_rf_power_state(): bResult(%d)\n",
-		 bResult);
+	RT_TRACE(COMP_PS, "<--------- %s: bResult(%d)\n", __func__, bResult);
 
 	return bResult;
 }
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_cam.c b/drivers/staging/rtl8192e/rtl8192e/rtl_cam.c
index 627ea1029509..c8506517cc8d 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_cam.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_cam.c
@@ -108,8 +108,8 @@ void rtl92e_set_key(struct net_device *dev, u8 EntryNo, u8 KeyIndex,
 	}
 
 	RT_TRACE(COMP_SEC,
-		 "====>to rtl92e_set_key(), dev:%p, EntryNo:%d, KeyIndex:%d,KeyType:%d, MacAddr %pM\n",
-		 dev, EntryNo, KeyIndex, KeyType, MacAddr);
+		 "====>to %s, dev:%p, EntryNo:%d, KeyIndex:%d,KeyType:%d, MacAddr %pM\n",
+		 __func__, dev, EntryNo, KeyIndex, KeyType, MacAddr);
 
 	if (DefaultKey)
 		usConfig |= BIT15 | (KeyType<<2);
@@ -163,7 +163,7 @@ void rtl92e_cam_restore(struct net_device *dev)
 		0xff, 0xff, 0xff, 0xff, 0xff, 0xff
 	};
 
-	RT_TRACE(COMP_SEC, "rtl92e_cam_restore:\n");
+	RT_TRACE(COMP_SEC, "%s:\n", __func__);
 
 
 	if ((priv->rtllib->pairwise_key_type == KEY_TYPE_WEP40) ||
diff --git a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
index 11183b9f757a..ce57bf35c3ed 100644
--- a/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
+++ b/drivers/staging/rtl8192e/rtl8192e/rtl_core.c
@@ -145,21 +145,21 @@ bool rtl92e_set_rf_state(struct net_device *dev,
 	unsigned long flag;
 
 	RT_TRACE((COMP_PS | COMP_RF),
-		 "===>rtl92e_set_rf_state(): StateToSet(%d)\n", StateToSet);
+		 "===>%s: StateToSet(%d)\n", __func__, StateToSet);
 
 	while (true) {
 		spin_lock_irqsave(&priv->rf_ps_lock, flag);
 		if (priv->RFChangeInProgress) {
 			spin_unlock_irqrestore(&priv->rf_ps_lock, flag);
 			RT_TRACE((COMP_PS | COMP_RF),
-				 "rtl92e_set_rf_state(): RF Change in progress! Wait to set..StateToSet(%d).\n",
-				 StateToSet);
+				 "%s: RF Change in progress! Wait to set..StateToSet(%d).\n",
+				 __func__, StateToSet);
 
 			while (priv->RFChangeInProgress) {
 				RFWaitCounter++;
 				RT_TRACE((COMP_PS | COMP_RF),
-					 "rtl92e_set_rf_state(): Wait 1 ms (%d times)...\n",
-					 RFWaitCounter);
+					 "%s: Wait 1 ms (%d times)...\n",
+					 __func__, RFWaitCounter);
 				mdelay(1);
 
 				if (RFWaitCounter > 100) {
@@ -195,8 +195,8 @@ bool rtl92e_set_rf_state(struct net_device *dev,
 				bConnectBySSID = true;
 		} else {
 			RT_TRACE((COMP_PS | COMP_RF),
-				 "rtl92e_set_rf_state - eRfon reject pMgntInfo->RfOffReason= 0x%x, ChangeSource=0x%X\n",
-				  priv->rtllib->RfOffReason, ChangeSource);
+				 "%s - eRfon reject pMgntInfo->RfOffReason= 0x%x, ChangeSource=0x%X\n",
+				 __func__, priv->rtllib->RfOffReason, ChangeSource);
 	}
 
 		break;
@@ -232,8 +232,8 @@ bool rtl92e_set_rf_state(struct net_device *dev,
 
 	if (bActionAllowed) {
 		RT_TRACE((COMP_PS | COMP_RF),
-			 "rtl92e_set_rf_state(): Action is allowed.... StateToSet(%d), RfOffReason(%#X)\n",
-			 StateToSet, priv->rtllib->RfOffReason);
+			 "%s: Action is allowed.... StateToSet(%d), RfOffReason(%#X)\n",
+			 __func__, StateToSet, priv->rtllib->RfOffReason);
 		PHY_SetRFPowerState(dev, StateToSet);
 		if (StateToSet == eRfOn) {
 
@@ -245,15 +245,15 @@ bool rtl92e_set_rf_state(struct net_device *dev,
 		}
 	} else {
 		RT_TRACE((COMP_PS | COMP_RF),
-			 "rtl92e_set_rf_state(): Action is rejected.... StateToSet(%d), ChangeSource(%#X), RfOffReason(%#X)\n",
-			 StateToSet, ChangeSource, priv->rtllib->RfOffReason);
+			 "%s: Action is rejected.... StateToSet(%d), ChangeSource(%#X), RfOffReason(%#X)\n",
+			 __func__, StateToSet, ChangeSource, priv->rtllib->RfOffReason);
 	}
 
 	spin_lock_irqsave(&priv->rf_ps_lock, flag);
 	priv->RFChangeInProgress = false;
 	spin_unlock_irqrestore(&priv->rf_ps_lock, flag);
 
-	RT_TRACE((COMP_PS | COMP_RF), "<===rtl92e_set_rf_state()\n");
+	RT_TRACE((COMP_PS | COMP_RF), "<===%s\n", __func__);
 	return bActionAllowed;
 }
 
diff --git a/drivers/staging/rtl8192e/rtl819x_BAProc.c b/drivers/staging/rtl8192e/rtl819x_BAProc.c
index 816d31c1d5c7..2d5e4a0330c6 100644
--- a/drivers/staging/rtl8192e/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_BAProc.c
@@ -119,8 +119,8 @@ static struct sk_buff *rtllib_ADDBA(struct rtllib_device *ieee, u8 *Dst,
 	}
 
 #ifdef VERBOSE_DEBUG
-	print_hex_dump_bytes("rtllib_ADDBA(): ", DUMP_PREFIX_NONE, skb->data,
-			     skb->len);
+	print_hex_dump_bytes("%s: ", DUMP_PREFIX_NONE, skb->data,
+			     __func__, skb->len);
 #endif
 	return skb;
 }
@@ -170,8 +170,8 @@ static struct sk_buff *rtllib_DELBA(struct rtllib_device *ieee, u8 *dst,
 	tag += 2;
 
 #ifdef VERBOSE_DEBUG
-	print_hex_dump_bytes("rtllib_DELBA(): ", DUMP_PREFIX_NONE, skb->data,
-			     skb->len);
+	print_hex_dump_bytes("%s: ", DUMP_PREFIX_NONE, skb->data,
+			     __func__, skb->len);
 #endif
 	return skb;
 }
@@ -235,7 +235,7 @@ int rtllib_rx_ADDBAReq(struct rtllib_device *ieee, struct sk_buff *skb)
 	}
 
 #ifdef VERBOSE_DEBUG
-	print_hex_dump_bytes("rtllib_rx_ADDBAReq(): ", DUMP_PREFIX_NONE,
+	print_hex_dump_bytes("%s: ", DUMP_PREFIX_NONE, __func__,
 			     skb->data, skb->len);
 #endif
 
@@ -433,8 +433,8 @@ int rtllib_rx_DELBA(struct rtllib_device *ieee, struct sk_buff *skb)
 	}
 
 #ifdef VERBOSE_DEBUG
-	print_hex_dump_bytes("rtllib_rx_DELBA(): ", DUMP_PREFIX_NONE, skb->data,
-			     skb->len);
+	print_hex_dump_bytes("%s: ", DUMP_PREFIX_NONE, skb->data,
+			     __func__, skb->len);
 #endif
 	delba = (struct rtllib_hdr_3addr *)skb->data;
 	dst = (u8 *)(&delba->addr2[0]);
diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index f02263af9624..d83d72594312 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -545,7 +545,7 @@ void HTOnAssocRsp(struct rtllib_device *ieee)
 
 
 #ifdef VERBOSE_DEBUG
-	print_hex_dump_bytes("HTOnAssocRsp(): ", DUMP_PREFIX_NONE,
+	print_hex_dump_bytes("%s: ", __func__, DUMP_PREFIX_NONE,
 			     pPeerHTCap, sizeof(struct ht_capab_ele));
 #endif
 	HTSetConnectBwMode(ieee, (enum ht_channel_width)(pPeerHTCap->ChlWidth),
diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index 672bf0987943..47b2669a3a8e 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -440,7 +440,7 @@ void RemovePeerTS(struct rtllib_device *ieee, u8 *Addr)
 {
 	struct ts_common_info *pTS, *pTmpTS;
 
-	netdev_info(ieee->dev, "===========>RemovePeerTS, %pM\n", Addr);
+	netdev_info(ieee->dev, "===========>%s, %pM\n", __func__, Addr);
 
 	list_for_each_entry_safe(pTS, pTmpTS, &ieee->Tx_TS_Pending_List, List) {
 		if (memcmp(pTS->Addr, Addr, 6) == 0) {
diff --git a/drivers/staging/rtl8192e/rtllib_tx.c b/drivers/staging/rtl8192e/rtllib_tx.c
index 8cddb2e12dc4..79d7ad7c0a4a 100644
--- a/drivers/staging/rtl8192e/rtllib_tx.c
+++ b/drivers/staging/rtl8192e/rtllib_tx.c
@@ -241,7 +241,7 @@ static int rtllib_classify(struct sk_buff *skb, u8 bIsAmsdu)
 		return 0;
 
 #ifdef VERBOSE_DEBUG
-	print_hex_dump_bytes("rtllib_classify(): ", DUMP_PREFIX_NONE, skb->data,
+	print_hex_dump_bytes("%s: ", __func__, DUMP_PREFIX_NONE, skb->data,
 			     skb->len);
 #endif
 	ip = ip_hdr(skb);
-- 
2.25.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
