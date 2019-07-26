Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DF624770E6
	for <lists+driverdev-devel@lfdr.de>; Fri, 26 Jul 2019 20:05:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 64E0688EB4;
	Fri, 26 Jul 2019 18:05:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id L0N6ii+Suj-i; Fri, 26 Jul 2019 18:05:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7692188EB2;
	Fri, 26 Jul 2019 18:05:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9B79C1BF3BD
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 18:05:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 98E4E87F3E
 for <devel@linuxdriverproject.org>; Fri, 26 Jul 2019 18:05:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ej9nLLjQ8uil for <devel@linuxdriverproject.org>;
 Fri, 26 Jul 2019 18:05:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com
 [209.85.128.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C363687F40
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 18:05:03 +0000 (UTC)
Received: by mail-wm1-f66.google.com with SMTP id x15so48725119wmj.3
 for <devel@driverdev.osuosl.org>; Fri, 26 Jul 2019 11:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=30KR1z382qjHLHiyLHKr/LrLJjSnHNnO4pqNGLXSJsY=;
 b=nNvX7BbWYrKqfPuSYEwqJaDquN5OEfPSCQP6pDFUprJ1j35DRpmswzy8BwLWRgisDM
 teNkwR4CWoPrL2LLUEStStJZVdoV9WlZTQTYiIyAKsviQy7ZVWmwMV7u8iiSHCh1ytmi
 RGDpYnNoY3HYwtOXOTXgTCJ0YIslrSG66jzzc67gx8YDTx0Fsjr+TRJ6dqdBV+kBERjZ
 ipTVAWKiz8lz0Fux7W271EwHr1JGonCv7120pnM1NuNA5mRehmW1dpM2QVL85L8HWSo7
 AAQbxATp0nClJ+jYHkoyNzro0shNwAtd0khT2fI3rlu1lEHB3f0g+qTEPHJnH1rlTyNV
 Gtmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=30KR1z382qjHLHiyLHKr/LrLJjSnHNnO4pqNGLXSJsY=;
 b=qujhXNe3Y23cZg1Yth1c6eZ0fxMZ1YghSdHJYJoJ0bRyI2KxNjaygEJSaMx6r7pjk3
 LjcdEYPtjWTKqAY/TcswlmIJSzqCzBBSTngdDMytfTInbh1pMThFvifjqgAWJ6dCDceW
 BVMNC8zlykA2NVNzyI2PDJeCT7lj32azt6iOoKEhiK01etyxNvm9Qq1Rf6XKnSPnep2x
 CNd+0VpmwQyHvhKZzyMv+tw2blmWaaiPmY1XlC6lvyyjIRkWsqZK2D3kscGYsqt2uYjO
 VucCbUS4jWp7PGgR1f9y9JhwqVX/yke0jUb+UqdVlgxV2xtNCWJ9BoHVZHcKjtS2zl2u
 0B2g==
X-Gm-Message-State: APjAAAU7bf/C/zAO8uiO45JaLt/1vxBBD2kUmiW4aTLMvlQOhwYj/bet
 QYRHmqc7/+cag9nOPuT8wig=
X-Google-Smtp-Source: APXvYqz72dbiJe8NZIJ8Yseq5IRJmsmDu1Py26xhiCbx6yz1jDsZ8FduGuTBp/IuD+5/CSxzq3lpXw==
X-Received: by 2002:a1c:544d:: with SMTP id p13mr89687542wmi.78.1564164302220; 
 Fri, 26 Jul 2019 11:05:02 -0700 (PDT)
Received: from localhost.localdomain
 ([2a02:8108:96bf:e0ab:2b68:5d76:a12a:e6ba])
 by smtp.gmail.com with ESMTPSA id p14sm43535931wrx.17.2019.07.26.11.05.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 11:05:01 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/6] staging: rtl8188eu: add spaces around '|' in usb_halinit.c
Date: Fri, 26 Jul 2019 20:04:45 +0200
Message-Id: <20190726180448.2290-3-straube.linux@gmail.com>
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

Add spaces around '|' to improve readability and follow kernel
coding style. Reported by checkpatch.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/hal/usb_halinit.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8188eu/hal/usb_halinit.c b/drivers/staging/rtl8188eu/hal/usb_halinit.c
index fe68af7eaf85..9fa34c5c11c4 100644
--- a/drivers/staging/rtl8188eu/hal/usb_halinit.c
+++ b/drivers/staging/rtl8188eu/hal/usb_halinit.c
@@ -925,7 +925,7 @@ static void CardDisableRTL8188EU(struct adapter *Adapter)
 	val8 = usb_read8(Adapter, REG_GPIO_IO_SEL);
 	usb_write8(Adapter, REG_GPIO_IO_SEL, (val8<<4));
 	val8 = usb_read8(Adapter, REG_GPIO_IO_SEL + 1);
-	usb_write8(Adapter, REG_GPIO_IO_SEL + 1, val8|0x0F);/* Reg0x43 */
+	usb_write8(Adapter, REG_GPIO_IO_SEL + 1, val8 | 0x0F);/* Reg0x43 */
 	usb_write32(Adapter, REG_BB_PAD_CTRL, 0x00080808);/* set LNA ,TRSW,EX_PA Pin to output mode */
 	Adapter->HalData->bMacPwrCtrlOn = false;
 	Adapter->bFWReady = false;
@@ -1176,7 +1176,7 @@ static void hw_var_set_opmode(struct adapter *Adapter, u8 variable, u8 *val)
 
 		/* enable BCN0 Function for if1 */
 		/* don't enable update TSF0 for if1 (due to TSF update when beacon/probe rsp are received) */
-		usb_write8(Adapter, REG_BCN_CTRL, (DIS_TSF_UDT0_NORMAL_CHIP|EN_BCN_FUNCTION | BIT(1)));
+		usb_write8(Adapter, REG_BCN_CTRL, (DIS_TSF_UDT0_NORMAL_CHIP | EN_BCN_FUNCTION | BIT(1)));
 
 		/* dis BCN1 ATIM  WND if if2 is station */
 		usb_write8(Adapter, REG_BCN_CTRL_1, usb_read8(Adapter, REG_BCN_CTRL_1) | BIT(0));
@@ -1318,7 +1318,7 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 		break;
 	case HW_VAR_CHECK_BSSID:
 		if (*((u8 *)val)) {
-			usb_write32(Adapter, REG_RCR, usb_read32(Adapter, REG_RCR)|RCR_CBSSID_DATA|RCR_CBSSID_BCN);
+			usb_write32(Adapter, REG_RCR, usb_read32(Adapter, REG_RCR) | RCR_CBSSID_DATA | RCR_CBSSID_BCN);
 		} else {
 			u32 val32;
 
@@ -1369,7 +1369,7 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 				usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL) & (~BIT(4)));
 			}
 
-			usb_write32(Adapter, REG_RCR, usb_read32(Adapter, REG_RCR)|RCR_CBSSID_BCN);
+			usb_write32(Adapter, REG_RCR, usb_read32(Adapter, REG_RCR) | RCR_CBSSID_BCN);
 		}
 		break;
 	case HW_VAR_MLME_JOIN:
@@ -1382,7 +1382,7 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 				/* enable to rx data frame.Accept all data frame */
 				usb_write16(Adapter, REG_RXFLTMAP2, 0xFFFF);
 
-				usb_write32(Adapter, REG_RCR, usb_read32(Adapter, REG_RCR)|RCR_CBSSID_DATA|RCR_CBSSID_BCN);
+				usb_write32(Adapter, REG_RCR, usb_read32(Adapter, REG_RCR) | RCR_CBSSID_DATA | RCR_CBSSID_BCN);
 
 				if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
 					RetryLimit = (haldata->CustomerID == RT_CID_CCX) ? 7 : 48;
@@ -1396,7 +1396,7 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 				/* enable update TSF */
 				usb_write8(Adapter, REG_BCN_CTRL, usb_read8(Adapter, REG_BCN_CTRL) & (~BIT(4)));
 
-				if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE|WIFI_ADHOC_MASTER_STATE))
+				if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE | WIFI_ADHOC_MASTER_STATE))
 					RetryLimit = 0x7;
 			}
 			usb_write16(Adapter, REG_RL, RetryLimit << RETRY_LIMIT_SHORT_SHIFT | RetryLimit << RETRY_LIMIT_LONG_SHIFT);
@@ -1485,7 +1485,8 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 					ulContent = 0;
 				/*  polling bit, and No Write enable, and address */
 				ulCommand = CAM_CONTENT_COUNT*ucIndex + i;
-				ulCommand = ulCommand | CAM_POLLINIG|CAM_WRITE;
+				ulCommand = ulCommand | CAM_POLLINIG |
+					    CAM_WRITE;
 				/*  write content 0 is equall to mark invalid */
 				usb_write32(Adapter, WCAMI, ulContent);  /* delay_ms(40); */
 				usb_write32(Adapter, RWCAM, ulCommand);  /* delay_ms(40); */
@@ -1681,7 +1682,7 @@ void rtw_hal_set_hwreg(struct adapter *Adapter, u8 variable, u8 *val)
 
 			if (!pwrpriv->bkeepfwalive) {
 				/* RX DMA stop */
-				usb_write32(Adapter, REG_RXPKT_NUM, (usb_read32(Adapter, REG_RXPKT_NUM)|RW_RELEASE_EN));
+				usb_write32(Adapter, REG_RXPKT_NUM, (usb_read32(Adapter, REG_RXPKT_NUM) | RW_RELEASE_EN));
 				do {
 					if (!(usb_read32(Adapter, REG_RXPKT_NUM) & RXDMA_IDLE))
 						break;
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
