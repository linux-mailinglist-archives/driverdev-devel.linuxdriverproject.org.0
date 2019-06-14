Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 8831145239
	for <lists+driverdev-devel@lfdr.de>; Fri, 14 Jun 2019 04:55:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F1A1B879A1;
	Fri, 14 Jun 2019 02:55:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8odnOIcqIA57; Fri, 14 Jun 2019 02:55:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id A374A879B1;
	Fri, 14 Jun 2019 02:55:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 722291BF2F3
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 02:55:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 6E2BD8830F
 for <devel@linuxdriverproject.org>; Fri, 14 Jun 2019 02:55:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qgU30jrob9xB for <devel@linuxdriverproject.org>;
 Fri, 14 Jun 2019 02:55:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com
 [209.85.210.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 79FA3881A0
 for <devel@driverdev.osuosl.org>; Fri, 14 Jun 2019 02:55:04 +0000 (UTC)
Received: by mail-pf1-f196.google.com with SMTP id i189so459117pfg.10
 for <devel@driverdev.osuosl.org>; Thu, 13 Jun 2019 19:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=L8Irwp0kit3TSr+sWgKtYYRybbeIG8lmal8aBHJmnq8=;
 b=EJvkIxKu4lUzUmIOIkeIhZVSE7DQMceIdc1ZO2SHL21I0RrppzObCdDYhf/kSWAiKq
 fBZ40Slqy9eJ563efgDtGObBhoKiiHMcyBsflP1rirebqo04JV4QpJ+6xbEAcZMWW8Dp
 LZbBlvuqMLdrPELm0h1kba4g1Cr5ypHep4xsPBcxij2WNMgl6kH1MyrOQPi1+gqS7K2L
 MUTfHvJHMrHa6eq8Qne6NmNT+N3MqvIQimj3uzoNSuEkKUOuMu+JTR3Nom2orzIz9EtU
 Humlq5F/GRNGw+c0ETg4t2AtDOGcy3FGMHZo2qBsWk9GHFDrqoC9lr5wauvi8ZGZAskl
 1ipQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=L8Irwp0kit3TSr+sWgKtYYRybbeIG8lmal8aBHJmnq8=;
 b=RXP2AhwRoNqFRpTF+d+Q/ZTYKyFoBm1WFU1JsCHVssXqgVDPeq8bjD2eoZxehJYGSL
 myehEa1uXBx9xlxOoDWfyXZnzIsf7a+hvwR769PT6dXhPJpfWvpg9Cu/fzfc0CELPrsn
 6QGj6mj54eISbbLEihG2fZfx4k4VeshWv69kO8IDvSSrA6Fpl+WYrnqbhOeBRVfPKgmZ
 cjcHEv31SQv0evCPMknFL9OJVHb8TdzdQCi++yr9kuPUjqXlEKUANAmXmY1pxwzFAL9t
 Tz/2BKuDdxMrWl7GqeTyTffMkhUqQPxnDisN0SaifKUcP5304g8FXKzmrLNnzvKs9IxG
 39FQ==
X-Gm-Message-State: APjAAAULm7pMYcb2n2It8a+kNve/K83/XWIzY+RCdKmMRhPH0a9ro50N
 fZlDCNvlSJANZ+iaobURZOs=
X-Google-Smtp-Source: APXvYqwIOh77ndKSJGE3idZdSvm1US2RGn3QZ4xkEGoNBSVWiD7Sm8KoUPnKBV6a1nmaP+qTyopHjQ==
X-Received: by 2002:a62:b609:: with SMTP id j9mr81254455pff.145.1560480903951; 
 Thu, 13 Jun 2019 19:55:03 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id f7sm947688pfd.43.2019.06.13.19.55.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 13 Jun 2019 19:55:03 -0700 (PDT)
Date: Fri, 14 Jun 2019 08:24:59 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [Patch v2 2/3]  staging: rtl8723bs: hal: sdio_halinit: fix spaces
 preferred around that unary operator
Message-ID: <20190614025459.GA3438@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This patch fixes below issues reported by checkpatch

CHECK: spaces preferred around that '+' (ctx:VxV)
CHECK: spaces preferred around that '<<' (ctx:VxV)
CHECK: spaces preferred around that '|' (ctx:VxV)

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
------
changes in v2:  Send proper patch without corruption
----
---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 90 ++++++++++++++--------------
 1 file changed, 45 insertions(+), 45 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 4db3211..5c7cff0 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_halinit.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
@@ -112,17 +112,17 @@ u8 _InitPowerOn_8723BS(struct adapter *padapter)
 	/*  all of these MUST be configured before power on */
 #ifdef CONFIG_EXT_CLK
 	/*  Use external crystal(XTAL) */
-	value8 = rtw_read8(padapter, REG_PAD_CTRL1_8723B+2);
+	value8 = rtw_read8(padapter, REG_PAD_CTRL1_8723B + 2);
 	value8 |=  BIT(7);
-	rtw_write8(padapter, REG_PAD_CTRL1_8723B+2, value8);
+	rtw_write8(padapter, REG_PAD_CTRL1_8723B + 2, value8);
 
 	/*  CLK_REQ High active or Low Active */
 	/*  Request GPIO polarity: */
 	/*  0: low active */
 	/*  1: high active */
-	value8 = rtw_read8(padapter, REG_MULTI_FUNC_CTRL+1);
+	value8 = rtw_read8(padapter, REG_MULTI_FUNC_CTRL + 1);
 	value8 |= BIT(5);
-	rtw_write8(padapter, REG_MULTI_FUNC_CTRL+1, value8);
+	rtw_write8(padapter, REG_MULTI_FUNC_CTRL + 1, value8);
 #endif /*  CONFIG_EXT_CLK */
 
 	/*  only cmd52 can be used before power on(card enable) */
@@ -137,12 +137,12 @@ u8 _InitPowerOn_8723BS(struct adapter *padapter)
 	}
 
 	/*  Radio-Off Pin Trigger */
-	value8 = rtw_read8(padapter, REG_GPIO_INTM+1);
+	value8 = rtw_read8(padapter, REG_GPIO_INTM + 1);
 	value8 |= BIT(1); /*  Enable falling edge triggering interrupt */
-	rtw_write8(padapter, REG_GPIO_INTM+1, value8);
-	value8 = rtw_read8(padapter, REG_GPIO_IO_SEL_2+1);
+	rtw_write8(padapter, REG_GPIO_INTM + 1, value8);
+	value8 = rtw_read8(padapter, REG_GPIO_IO_SEL_2 + 1);
 	value8 |= BIT(1);
-	rtw_write8(padapter, REG_GPIO_IO_SEL_2+1, value8);
+	rtw_write8(padapter, REG_GPIO_IO_SEL_2 + 1, value8);
 
 	/*  Enable power down and GPIO interrupt */
 	value16 = rtw_read16(padapter, REG_APS_FSMCO);
@@ -203,13 +203,13 @@ static void _init_available_page_threshold(struct adapter *padapter, u8 numHQ, u
 	u16 HQ_threshold, NQ_threshold, LQ_threshold;
 
 	HQ_threshold = (numPubQ + numHQ + 1) >> 1;
-	HQ_threshold |= (HQ_threshold<<8);
+	HQ_threshold |= (HQ_threshold << 8);
 
 	NQ_threshold = (numPubQ + numNQ + 1) >> 1;
-	NQ_threshold |= (NQ_threshold<<8);
+	NQ_threshold |= (NQ_threshold << 8);
 
 	LQ_threshold = (numPubQ + numLQ + 1) >> 1;
-	LQ_threshold |= (LQ_threshold<<8);
+	LQ_threshold |= (LQ_threshold << 8);
 
 	rtw_write16(padapter, 0x218, HQ_threshold);
 	rtw_write16(padapter, 0x21A, NQ_threshold);
@@ -271,7 +271,7 @@ static void _InitTxBufferBoundary(struct adapter *padapter)
 	rtw_write8(padapter, REG_TXPKTBUF_MGQ_BDNY_8723B, txpktbuf_bndy);
 	rtw_write8(padapter, REG_TXPKTBUF_WMAC_LBK_BF_HD_8723B, txpktbuf_bndy);
 	rtw_write8(padapter, REG_TRXFF_BNDY, txpktbuf_bndy);
-	rtw_write8(padapter, REG_TDECTRL+1, txpktbuf_bndy);
+	rtw_write8(padapter, REG_TDECTRL + 1, txpktbuf_bndy);
 }
 
 static void _InitNormalChipRegPriority(
@@ -569,7 +569,7 @@ static void HalRxAggr8723BSdio(struct adapter *padapter)
 		valueDMAPageCount = 0x06;
 	}
 
-	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH+1, valueDMATimeout);
+	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH + 1, valueDMATimeout);
 	rtw_write8(padapter, REG_RXDMA_AGG_PG_TH, valueDMAPageCount);
 }
 
@@ -588,8 +588,8 @@ static void sdio_AggSettingRxUpdate(struct adapter *padapter)
 	rtw_write8(padapter, REG_TRXDMA_CTRL, valueDMA);
 
 	valueRxAggCtrl |= RXDMA_AGG_MODE_EN;
-	valueRxAggCtrl |= ((aggBurstNum<<2) & 0x0C);
-	valueRxAggCtrl |= ((aggBurstSize<<4) & 0x30);
+	valueRxAggCtrl |= ((aggBurstNum << 2) & 0x0C);
+	valueRxAggCtrl |= ((aggBurstSize << 4) & 0x30);
 	rtw_write8(padapter, REG_RXDMA_MODE_CTRL_8723B, valueRxAggCtrl);/* RxAggLowThresh = 4*1K */
 }
 
@@ -754,11 +754,11 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 		rtw_hal_get_hwreg(padapter, HW_VAR_CPWM, &cpwm_orig);
 
 		/* ser rpwm */
-		val8 = rtw_read8(padapter, SDIO_LOCAL_BASE|SDIO_REG_HRPWM1);
+		val8 = rtw_read8(padapter, SDIO_LOCAL_BASE | SDIO_REG_HRPWM1);
 		val8 &= 0x80;
 		val8 += 0x80;
 		val8 |= BIT(6);
-		rtw_write8(padapter, SDIO_LOCAL_BASE|SDIO_REG_HRPWM1, val8);
+		rtw_write8(padapter, SDIO_LOCAL_BASE | SDIO_REG_HRPWM1, val8);
 		DBG_871X("%s: write rpwm =%02x\n", __func__, val8);
 		adapter_to_pwrctl(padapter)->tog = (val8 + 0x80) & 0x80;
 
@@ -788,7 +788,7 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 	}
 
 #ifdef CONFIG_WOWLAN
-	if (rtw_read8(padapter, REG_MCUFWDL)&BIT7) {
+	if (rtw_read8(padapter, REG_MCUFWDL) & BIT7) {
 		u8 reg_val = 0;
 		DBG_871X("+Reset Entry+\n");
 		rtw_write8(padapter, REG_MCUFWDL, 0x00);
@@ -802,12 +802,12 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 		/* reset TRX path */
 		rtw_write16(padapter, REG_CR, 0);
 		/* reset MAC, Digital Core */
-		reg_val = rtw_read8(padapter, REG_SYS_FUNC_EN+1);
+		reg_val = rtw_read8(padapter, REG_SYS_FUNC_EN + 1);
 		reg_val &= ~(BIT(4) | BIT(7));
-		rtw_write8(padapter, REG_SYS_FUNC_EN+1, reg_val);
-		reg_val = rtw_read8(padapter, REG_SYS_FUNC_EN+1);
+		rtw_write8(padapter, REG_SYS_FUNC_EN + 1, reg_val);
+		reg_val = rtw_read8(padapter, REG_SYS_FUNC_EN + 1);
 		reg_val |= BIT(4) | BIT(7);
-		rtw_write8(padapter, REG_SYS_FUNC_EN+1, reg_val);
+		rtw_write8(padapter, REG_SYS_FUNC_EN + 1, reg_val);
 		DBG_871X("-Reset Entry-\n");
 	}
 #endif /* CONFIG_WOWLAN */
@@ -955,7 +955,7 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 	/*  Configure SDIO TxRx Control to enable Rx DMA timer masking. */
 	/*  2010.02.24. */
 	/*  */
-	rtw_write32(padapter, SDIO_LOCAL_BASE|SDIO_REG_TX_CTRL, 0);
+	rtw_write32(padapter, SDIO_LOCAL_BASE | SDIO_REG_TX_CTRL, 0);
 
 	_RfPowerSave(padapter);
 
@@ -979,7 +979,7 @@ static u32 rtl8723bs_hal_init(struct adapter *padapter)
 	rtw_hal_set_hwreg(padapter, HW_VAR_NAV_UPPER, (u8 *)&NavUpper);
 
 	/* ack for xmit mgmt frames. */
-	rtw_write32(padapter, REG_FWHW_TXQ_CTRL, rtw_read32(padapter, REG_FWHW_TXQ_CTRL)|BIT(12));
+	rtw_write32(padapter, REG_FWHW_TXQ_CTRL, rtw_read32(padapter, REG_FWHW_TXQ_CTRL) | BIT(12));
 
 /* 	pHalData->PreRpwmVal = SdioLocalCmd52Read1Byte(padapter, SDIO_REG_HRPWM1) & 0x80; */
 
@@ -1059,19 +1059,19 @@ static void CardDisableRTL8723BSdio(struct adapter *padapter)
 		rtl8723b_FirmwareSelfReset(padapter);
 
 	/*  Reset MCU 0x2[10]= 0. Suggested by Filen. 2011.01.26. by tynli. */
-	u1bTmp = rtw_read8(padapter, REG_SYS_FUNC_EN+1);
+	u1bTmp = rtw_read8(padapter, REG_SYS_FUNC_EN + 1);
 	u1bTmp &= ~BIT(2);	/*  0x2[10], FEN_CPUEN */
-	rtw_write8(padapter, REG_SYS_FUNC_EN+1, u1bTmp);
+	rtw_write8(padapter, REG_SYS_FUNC_EN + 1, u1bTmp);
 
 	/*  MCUFWDL 0x80[1:0]= 0 */
 	/*  reset MCU ready status */
 	rtw_write8(padapter, REG_MCUFWDL, 0);
 
 	/*  Reset MCU IO Wrapper, added by Roger, 2011.08.30 */
-	u1bTmp = rtw_read8(padapter, REG_RSV_CTRL+1);
+	u1bTmp = rtw_read8(padapter, REG_RSV_CTRL + 1);
 	u1bTmp &= ~BIT(0);
-	rtw_write8(padapter, REG_RSV_CTRL+1, u1bTmp);
-	u1bTmp = rtw_read8(padapter, REG_RSV_CTRL+1);
+	rtw_write8(padapter, REG_RSV_CTRL + 1, u1bTmp);
+	u1bTmp = rtw_read8(padapter, REG_RSV_CTRL + 1);
 	u1bTmp |= BIT(0);
 	rtw_write8(padapter, REG_RSV_CTRL+1, u1bTmp);
 
@@ -1110,10 +1110,10 @@ static u32 rtl8723bs_hal_deinit(struct adapter *padapter)
 				/* H2C done, enter 32k */
 				if (val8 == 0) {
 					/* ser rpwm to enter 32k */
-					val8 = rtw_read8(padapter, SDIO_LOCAL_BASE|SDIO_REG_HRPWM1);
+					val8 = rtw_read8(padapter, SDIO_LOCAL_BASE | SDIO_REG_HRPWM1);
 					val8 += 0x80;
 					val8 |= BIT(0);
-					rtw_write8(padapter, SDIO_LOCAL_BASE|SDIO_REG_HRPWM1, val8);
+					rtw_write8(padapter, SDIO_LOCAL_BASE | SDIO_REG_HRPWM1, val8);
 					DBG_871X("%s: write rpwm =%02x\n", __func__, val8);
 					adapter_to_pwrctl(padapter)->tog = (val8 + 0x80) & 0x80;
 					cnt = val8 = 0;
@@ -1205,7 +1205,7 @@ static void rtl8723bs_interface_configure(struct adapter *padapter)
 
 	switch (pHalData->OutEpNumber) {
 	case 3:
-		pHalData->OutEpQueueSel = TX_SELE_HQ | TX_SELE_LQ|TX_SELE_NQ;
+		pHalData->OutEpQueueSel = TX_SELE_HQ | TX_SELE_LQ | TX_SELE_NQ;
 		break;
 	case 2:
 		pHalData->OutEpQueueSel = TX_SELE_HQ | TX_SELE_NQ;
@@ -1292,7 +1292,7 @@ static void Hal_EfuseParseBoardType_8723BS(
 	if (!AutoLoadFail) {
 		pHalData->BoardType = (hwinfo[EEPROM_RF_BOARD_OPTION_8723B] & 0xE0) >> 5;
 		if (pHalData->BoardType == 0xFF)
-			pHalData->BoardType = (EEPROM_DEFAULT_BOARD_OPTION&0xE0)>>5;
+			pHalData->BoardType = (EEPROM_DEFAULT_BOARD_OPTION & 0xE0) >> 5;
 	} else
 		pHalData->BoardType = 0;
 	RT_TRACE(_module_hci_hal_init_c_, _drv_info_, ("Board Type: 0x%2x\n", pHalData->BoardType));
@@ -1460,7 +1460,7 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 		{
 			val8 = *val;
 			val8 &= 0xC1;
-			rtw_write8(padapter, SDIO_LOCAL_BASE|SDIO_REG_HRPWM1, val8);
+			rtw_write8(padapter, SDIO_LOCAL_BASE | SDIO_REG_HRPWM1, val8);
 		}
 		break;
 	case HW_VAR_SET_REQ_FW_PS:
@@ -1496,9 +1496,9 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 
 			/*  2. RX DMA stop */
 			DBG_871X_LEVEL(_drv_always_, "Pause DMA\n");
-			rtw_write32(padapter, REG_RXPKT_NUM, (rtw_read32(padapter, REG_RXPKT_NUM)|RW_RELEASE_EN));
+			rtw_write32(padapter, REG_RXPKT_NUM, (rtw_read32(padapter, REG_RXPKT_NUM) | RW_RELEASE_EN));
 			do {
-				if ((rtw_read32(padapter, REG_RXPKT_NUM)&RXDMA_IDLE)) {
+				if ((rtw_read32(padapter, REG_RXPKT_NUM) & RXDMA_IDLE)) {
 					DBG_871X_LEVEL(_drv_always_, "RX_DMA_IDLE is true\n");
 					break;
 				} else {
@@ -1530,7 +1530,7 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 			sdio_local_read(padapter, SDIO_REG_HIMR, 4, (u8 *)&tmp);
 			DBG_871X("DisableInterruptButCpwm28723BSdio(): Read SDIO_REG_HIMR: 0x%08x\n", tmp);
 
-			himr = cpu_to_le32(SDIO_HIMR_DISABLED)|SDIO_HIMR_CPWM2_MSK;
+			himr = cpu_to_le32(SDIO_HIMR_DISABLED) | SDIO_HIMR_CPWM2_MSK;
 			sdio_local_write(padapter, SDIO_REG_HIMR, 4, (u8 *)&himr);
 
 			sdio_local_read(padapter, SDIO_REG_HIMR, 4, (u8 *)&tmp);
@@ -1545,7 +1545,7 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 				DBG_871X_LEVEL(_drv_always_, "Check EnableWoWlan CMD is ready\n");
 				mstatus = rtw_read8(padapter, REG_WOW_CTRL);
 				trycnt = 10;
-				while (!(mstatus&BIT1) && trycnt > 1) {
+				while (!(mstatus & BIT1) && trycnt > 1) {
 					mstatus = rtw_read8(padapter, REG_WOW_CTRL);
 					DBG_871X("Loop index: %d :0x%02x\n", trycnt, mstatus);
 					trycnt--;
@@ -1603,7 +1603,7 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 				DBG_871X_LEVEL(_drv_always_, "Check DisableWoWlan CMD is ready\n");
 				mstatus = rtw_read8(padapter, REG_WOW_CTRL);
 				trycnt = 50;
-				while (mstatus&BIT1 && trycnt > 1) {
+				while (mstatus & BIT1 && trycnt > 1) {
 					mstatus = rtw_read8(padapter, REG_WOW_CTRL);
 					DBG_871X_LEVEL(_drv_always_, "Loop index: %d :0x%02x\n", trycnt, mstatus);
 					trycnt--;
@@ -1613,9 +1613,9 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 				if (mstatus & BIT1) {
 					DBG_871X_LEVEL(_drv_always_, "Disable WOW mode fail!!\n");
 					DBG_871X("Set 0x690 = 0x00\n");
-					rtw_write8(padapter, REG_WOW_CTRL, (rtw_read8(padapter, REG_WOW_CTRL)&0xf0));
+					rtw_write8(padapter, REG_WOW_CTRL, (rtw_read8(padapter, REG_WOW_CTRL) & 0xf0));
 					DBG_871X_LEVEL(_drv_always_, "Release RXDMA\n");
-					rtw_write32(padapter, REG_RXPKT_NUM, (rtw_read32(padapter, REG_RXPKT_NUM)&(~RW_RELEASE_EN)));
+					rtw_write32(padapter, REG_RXPKT_NUM, (rtw_read32(padapter, REG_RXPKT_NUM) & (~RW_RELEASE_EN)));
 				}
 
 				/*  3.1 read fw iv */
@@ -1706,9 +1706,9 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 			/*  2. RX DMA stop */
 			DBG_871X_LEVEL(_drv_always_, "Pause DMA\n");
 			rtw_write32(padapter, REG_RXPKT_NUM,
-				(rtw_read32(padapter, REG_RXPKT_NUM)|RW_RELEASE_EN));
+				(rtw_read32(padapter, REG_RXPKT_NUM) | RW_RELEASE_EN));
 			do {
-				if ((rtw_read32(padapter, REG_RXPKT_NUM)&RXDMA_IDLE)) {
+				if ((rtw_read32(padapter, REG_RXPKT_NUM) & RXDMA_IDLE)) {
 					DBG_871X_LEVEL(_drv_always_, "RX_DMA_IDLE is true\n");
 					break;
 				} else {
@@ -1742,7 +1742,7 @@ static void SetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 			sdio_local_read(padapter, SDIO_REG_HIMR, 4, (u8 *)&tmp);
 			DBG_871X("DisableInterruptButCpwm28723BSdio(): Read SDIO_REG_HIMR: 0x%08x\n", tmp);
 
-			himr = cpu_to_le32(SDIO_HIMR_DISABLED)|SDIO_HIMR_CPWM2_MSK;
+			himr = cpu_to_le32(SDIO_HIMR_DISABLED) | SDIO_HIMR_CPWM2_MSK;
 			sdio_local_write(padapter, SDIO_REG_HIMR, 4, (u8 *)&himr);
 
 			sdio_local_read(padapter, SDIO_REG_HIMR, 4, (u8 *)&tmp);
@@ -1808,7 +1808,7 @@ static void GetHwReg8723BS(struct adapter *padapter, u8 variable, u8 *val)
 {
 	switch (variable) {
 	case HW_VAR_CPWM:
-		*val = rtw_read8(padapter, SDIO_LOCAL_BASE|SDIO_REG_HCPWM1_8723B);
+		*val = rtw_read8(padapter, SDIO_LOCAL_BASE | SDIO_REG_HCPWM1_8723B);
 		break;
 
 	case HW_VAR_FW_PS_STATE:
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
