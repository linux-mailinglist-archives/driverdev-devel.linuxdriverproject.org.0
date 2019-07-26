Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C1E58770E5
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 20:05:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6719588EC8;
	Fri, 26 Jul 2019 18:05:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id JnwSF95Hf+9t; Fri, 26 Jul 2019 18:05:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7DC8988E36;
	Fri, 26 Jul 2019 18:05:06 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2D1A91BF3BD
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 18:05:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2A9DC87F44
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 18:05:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 92u0v45PgMcu for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 18:05:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 10D6B87F3E
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 18:05:03 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id p17so55289867wrf.11
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 11:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qr/tVRHimbuQXcEAGTxIyxSWW0oV4v68EkRQtT+1XB8=;
 b=PmL97F6P0tadb+qIzTM4YdJ9w3HPpN1vTkVFxrYq4B0pS2LuhsNQv6k9kxgaCbZCb+
 OFAAFoHAk/AyC8Ot6RRiX20YdQm6YHh8ZiPR4DXmQsdoADCUPr9gfFDvGSUzL/f5ElzF
 +HHXvwEhmSEscg1sM9y3lLrTW7RgBZ76ejsFPu5hwtY44Z8XNm88U7Ij4V2axc8d9TLf
 Tlj09qjoyXr6kjsyyYd2xLHCWoPsu+wVn9QoXPdNE5xOXcqzSzWKFApUyihiKDRDCtta
 FRcoxvTok3Q0LtBbjT0mxtsulKD5ZVh+0PTi5bYHUSOVQ/S0Qf3OF/5Pmv6bicaQs71K
 ZDsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qr/tVRHimbuQXcEAGTxIyxSWW0oV4v68EkRQtT+1XB8=;
 b=FfJQj1nmQWpFuAdDS0Mj71D3JkhcMxQwx9pLCW5xVGfH8bITlKpmlEPU0+PVzlSfKN
 lI+uCkhxFafD5oS372tNZyqzYZaVKvmhYc+ozxstQDlEpvZKHljEsw8iM6JgC4mx1aW6
 KpEFjrwIwoavrJq/znMeJo9CZCJTcFSJDfvxJPh+gj9DfMw5P95Yx+qBPzsY/ICvQDHd
 itDdSZrQplM1fOTN9D4N1jP6c8y4eZJOgdHAvlFmHqS66qsqmd9soD40iiSh78i+yKXs
 hYer3u30GNbQzMDUBzt+OP9PPWvkD4Dv34WLvBho0WmgigE4ynGaDz8cS5rFnxQh/I5J
 bSBA==
X-Gm-Message-State: APjAAAXn9cE6onF86ANOEv18tLpFbOLqT1TJqnELbMRkdSOkxrU1zh8P
 obRssJOqpw/82k1tyAy+IlE=
X-Google-Smtp-Source: APXvYqx5YfN9KBzr/kb8wjRvXGK+It5lgf9QTGXhEfPOOVA/3BLXt8opvxb0L81QvbVbnrNPGKh8XA==
X-Received: by 2002:adf:dd8e:: with SMTP id
 x14mr101277048wrl.344.1564164301265; 
 Fri, 26 Jul 2019 11:05:01 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id p14sm43535931wrx.17.2019.07.26.11.05.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 11:05:00 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/6] staging: rtl8188eu: add spaces around '&' in usb_halinit.c
Date: Fri, 26 Jul 2019 20:04:44 +0200
Message-Id: <20190726180448.2290-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726180448.2290-1-straube.linux@gmail.com>
References: <20190726180448.2290-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add spaces around '&' to improve readability and follow kernel
coding style. Reported by checkpatch.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 38 ++++++++++-----------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index c2e1b000cf89..fe68af7eaf85 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -633,7 +633,7 @@ enum rt_rf_power_state RfOnOffDetect(struct adapter *adapt)
 		DBG_88E("pwrdown, 0x5c(BIT(7))=%02x\n", val8);
 		rfpowerstate = (val8 & BIT(7)) ? rf_off : rf_on;
 	} else { /*  rf on/off */
-		usb_write8(adapt, REG_MAC_PINMUX_CFG, usb_read8(adapt, REG_MAC_PINMUX_CFG)&~(BIT(3)));
+		usb_write8(adapt, REG_MAC_PINMUX_CFG, usb_read8(adapt, REG_MAC_PINMUX_CFG) & ~(BIT(3)));
 		val8 = usb_read8(adapt, REG_GPIO_IO_SEL);
 		DBG_88E("GPIO_IN=%02x\n", val8);
 		rfpowerstate = (val8 & BIT(3)) ? rf_on : rf_off;
@@ -880,7 +880,7 @@ static void CardDisableRTL8188EU(struct adapter *Adapter)
 
 	/* Stop Tx Report Timer. 0x4EC[Bit1]=b'0 */
 	val8 = usb_read8(Adapter, REG_TX_RPT_CTRL);
-	usb_write8(Adapter, REG_TX_RPT_CTRL, val8&(~BIT(1)));
+	usb_write8(Adapter, REG_TX_RPT_CTRL, val8 & (~BIT(1)));
 
 	/*  stop rx */
 	usb_write8(Adapter, REG_CR, 0x0);
@@ -905,7 +905,7 @@ static void CardDisableRTL8188EU(struct adapter *Adapter)
 	/* YJ,add,111212 */
 	/* Disable 32k */
 	val8 = usb_read8(Adapter, REG_32K_CTRL);
-	usb_write8(Adapter, REG_32K_CTRL, val8&(~BIT(0)));
+	usb_write8(Adapter, REG_32K_CTRL, val8 & (~BIT(0)));
 
 	/*  Card disable power action flow */
 	rtl88eu_pwrseqcmdparsing(Adapter, PWR_CUT_ALL_MSK,
@@ -913,7 +913,7 @@ static void CardDisableRTL8188EU(struct adapter *Adapter)
 
 	/*  Reset MCU IO Wrapper */
 	val8 = usb_read8(Adapter, REG_RSV_CTRL + 1);
-	usb_write8(Adapter, REG_RSV_CTRL + 1, (val8&(~BIT(3))));
+	usb_write8(Adapter, REG_RSV_CTRL + 1, (val8 & (~BIT(3))));
 	val8 = usb_read8(Adapter, REG_RSV_CTRL + 1);
 	usb_write8(Adapter, REG_RSV_CTRL + 1, val8 | BIT(3));
 
@@ -1135,7 +1135,7 @@ static void hw_var_set_opmode(struct adapter *Adapter, u8 variable, u8 *val)
 	usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL) | BIT(4));
 
 	/*  set net_type */
-	val8 = usb_read8(Adapter, MSR)&0x0c;
+	val8 = usb_read8(Adapter, MSR) & 0x0c;
 	val8 |= mode;
 	usb_write8(Adapter, MSR, val8);
 
@@ -1214,7 +1214,7 @@ static void hw_var_set_bcn_func(struct adapter *Adapter, u8 variable, u8 *val)
 	if (*((u8 *)val))
 		usb_write8(Adapter, bcn_ctrl_reg, (EN_BCN_FUNCTION | EN_TXBCN_RPT));
 	else
-		usb_write8(Adapter, bcn_ctrl_reg, usb_read8(Adapter, bcn_ctrl_reg)&(~(EN_BCN_FUNCTION | EN_TXBCN_RPT)));
+		usb_write8(Adapter, bcn_ctrl_reg, usb_read8(Adapter, bcn_ctrl_reg) & (~(EN_BCN_FUNCTION | EN_TXBCN_RPT)));
 }
 
 void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
@@ -1228,7 +1228,7 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 		{
 			u8 val8;
 
-			val8 = usb_read8(Adapter, MSR)&0x0c;
+			val8 = usb_read8(Adapter, MSR) & 0x0c;
 			val8 |= *((u8 *)val);
 			usb_write8(Adapter, MSR, val8);
 		}
@@ -1275,7 +1275,7 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 			/*  Set RRSR rate table. */
 			usb_write8(Adapter, REG_RRSR, BrateCfg & 0xff);
 			usb_write8(Adapter, REG_RRSR + 1, (BrateCfg >> 8) & 0xff);
-			usb_write8(Adapter, REG_RRSR + 2, usb_read8(Adapter, REG_RRSR + 2)&0xf0);
+			usb_write8(Adapter, REG_RRSR + 2, usb_read8(Adapter, REG_RRSR + 2) & 0xf0);
 
 			/*  Set RTS initial rate */
 			while (BrateCfg > 0x1) {
@@ -1300,11 +1300,11 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 
 			tsf = pmlmeext->TSFValue - do_div(pmlmeext->TSFValue, (pmlmeinfo->bcn_interval*1024)) - 1024; /* us */
 
-			if (((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) || ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE))
+			if (((pmlmeinfo->state & 0x03) == WIFI_FW_ADHOC_STATE) || ((pmlmeinfo->state & 0x03) == WIFI_FW_AP_STATE))
 				StopTxBeacon(Adapter);
 
 			/* disable related TSF function */
-			usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL)&(~BIT(3)));
+			usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL) & (~BIT(3)));
 
 			usb_write32(Adapter, REG_TSFTR, tsf);
 			usb_write32(Adapter, REG_TSFTR + 4, tsf>>32);
@@ -1312,7 +1312,7 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 			/* enable related TSF function */
 			usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL) | BIT(3));
 
-			if (((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) || ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE))
+			if (((pmlmeinfo->state & 0x03) == WIFI_FW_ADHOC_STATE) || ((pmlmeinfo->state & 0x03) == WIFI_FW_AP_STATE))
 				ResumeTxBeacon(Adapter);
 		}
 		break;
@@ -1357,16 +1357,16 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 			struct mlme_ext_info	*pmlmeinfo = &pmlmeext->mlmext_info;
 
 			if ((is_client_associated_to_ap(Adapter)) ||
-			    ((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE)) {
+			    ((pmlmeinfo->state & 0x03) == WIFI_FW_ADHOC_STATE)) {
 				/* enable to rx data frame */
 				usb_write16(Adapter, REG_RXFLTMAP2, 0xFFFF);
 
 				/* enable update TSF */
-				usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL)&(~BIT(4)));
-			} else if ((pmlmeinfo->state&0x03) == WIFI_FW_AP_STATE) {
+				usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL) & (~BIT(4)));
+			} else if ((pmlmeinfo->state & 0x03) == WIFI_FW_AP_STATE) {
 				usb_write16(Adapter, REG_RXFLTMAP2, 0xFFFF);
 				/* enable update TSF */
-				usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL)&(~BIT(4)));
+				usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL) & (~BIT(4)));
 			}
 
 			usb_write32(Adapter, REG_RCR, usb_read32(Adapter, REG_RCR)|RCR_CBSSID_BCN);
@@ -1394,7 +1394,7 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 			} else if (type == 2) {
 				/* sta add event call back */
 				/* enable update TSF */
-				usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL)&(~BIT(4)));
+				usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL) & (~BIT(4)));
 
 				if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE|WIFI_ADHOC_MASTER_STATE))
 					RetryLimit = 0x7;
@@ -1683,7 +1683,7 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 				/* RX DMA stop */
 				usb_write32(Adapter, REG_RXPKT_NUM, (usb_read32(Adapter, REG_RXPKT_NUM)|RW_RELEASE_EN));
 				do {
-					if (!(usb_read32(Adapter, REG_RXPKT_NUM)&RXDMA_IDLE))
+					if (!(usb_read32(Adapter, REG_RXPKT_NUM) & RXDMA_IDLE))
 						break;
 				} while (trycnt--);
 				if (trycnt == 0)
@@ -1764,7 +1764,7 @@ void rtw_hal_get_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 		*val = Adapter->HalData->bMacPwrCtrlOn;
 		break;
 	case HW_VAR_CHK_HI_QUEUE_EMPTY:
-		*val = ((usb_read32(Adapter, REG_HGQ_INFORMATION)&0x0000ff00) == 0) ? true : false;
+		*val = ((usb_read32(Adapter, REG_HGQ_INFORMATION) & 0x0000ff00) == 0) ? true : false;
 		break;
 	default:
 		break;
@@ -1925,7 +1925,7 @@ void UpdateHalRAMask8188EUsb(struct adapter *adapt, u32 mac_id, u8 rssi_level)
 
 	mask &= rate_bitmap;
 
-	init_rate = get_highest_rate_idx(mask)&0x3f;
+	init_rate = get_highest_rate_idx(mask) & 0x3f;
 
 	ODM_RA_UpdateRateInfo_8188E(odmpriv, mac_id, raid, mask, shortGIrate);
 
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
