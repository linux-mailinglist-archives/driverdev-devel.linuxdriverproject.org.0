Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1317141A62
	for <lists+driverdev-devel@lfdr.de>; Wed, 12 Jun 2019 04:30:34 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id E1C57221C6;
	Wed, 12 Jun 2019 02:30:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WqzgChrtm166; Wed, 12 Jun 2019 02:30:31 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BCB1920524;
	Wed, 12 Jun 2019 02:30:27 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id A6CB91BF348
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 02:30:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8E65C2050C
 for <devel@linuxdriverproject.org>; Wed, 12 Jun 2019 02:30:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r2Krth39axCy for <devel@linuxdriverproject.org>;
 Wed, 12 Jun 2019 02:30:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id DC1D0204F4
 for <devel@driverdev.osuosl.org>; Wed, 12 Jun 2019 02:30:23 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id m30so8144118pff.8
 for <devel@driverdev.osuosl.org>; Tue, 11 Jun 2019 19:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=07Ezs23Foo3zNgzlpDf3FL7wZe6EwMZ3yF2BgR3VBVo=;
 b=K/bgoMNUyw2wby7kVIaRRaUw/WlgixTvfojPmP0y0NIp7DyJueauySwpnV52heI47x
 VTKzz9Wu7rIoXZG2tqaFdvySdqn+zSGNCJeDtk+DKEz590+6loyP3dIjx1g6SvSCVBK7
 MKKD4ZsoZmHaEffD+5t680Z4P1wWQcGRq0VFlJJ1xO7o6iyErvg9tNqHwNzY57FKud8V
 sIeWRZturJFxeHY9jDJBObsPN7i0Q4xOSK3WnsYIRHVCECfLWDeeJHpblQr77WCYzmb8
 3KhXogZcPhaIKOp6pTZCFhr31/qXADNF0/lWgBjTLT/e91NxaE0BqH1NB2GYUpOfSZ5g
 aHLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=07Ezs23Foo3zNgzlpDf3FL7wZe6EwMZ3yF2BgR3VBVo=;
 b=W0GGxFGZjIoo6m3kr8aEZdiRc48IV9QvNP1iokKg7OScfv3KYMTMOkKorRPE9wqQ94
 c/EI8JGG4uow7QSUdIjUh6kae6sMRBLU2Iu4G/nV5IacnLjAsSicFq7B8jNmysVbSZsy
 S7mG8OhnNY+RV7f4Wuiv1p3WPJBAngQUGGVlI+TFDrjzY6vC80s+LB/R1PIcjfinxU32
 7YkB4exe87NTYZocTJMuMc0l0eTBbsdKEBqEXUrmXgEexrtD4VXGKrW2NwyzyU1q/hgf
 j8PtPoek8FUgsMdV1fLzYb3IOrB5lVHNZwS6xkPfSGqDTO3iW2A1VX2EYh20USNFog52
 Bpfw==
X-Gm-Message-State: APjAAAU+uT64WxxLD0B95+AXcCw0r9vGFwbmlYWs0MJGqR6TLPYl1zuC
 JP2BDmwGnMMXOz5ZY7OmIbU=
X-Google-Smtp-Source: APXvYqwAUXmVXXezTykjSFQMndXDmdxTAvCH8DtlxhBbJFwpmlfE0wr2Z2vpJRrsyMqaa3iNUpI1iQ==
X-Received: by 2002:a17:90a:9905:: with SMTP id
 b5mr24535070pjp.70.1560306623325; 
 Tue, 11 Jun 2019 19:30:23 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id e127sm16662594pfe.98.2019.06.11.19.30.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 11 Jun 2019 19:30:22 -0700 (PDT)
Date: Wed, 12 Jun 2019 08:00:19 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] staging: rtl8723bs: hal: sdio_halinit: fix spaces
 preferred around that unary operator
Message-ID: <20190612023019.GA23721@hari-Inspiron-1545>
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

CHECK: spaces preferred around that '+' (ctx:VxV)
CHECK: spaces preferred around that '<<' (ctx:VxV)
CHECK: spaces preferred around that '|' (ctx:VxV)

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_halinit.c | 92 ++++++++++++++--------------
 1 file changed, 46 insertions(+), 46 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_halinit.c b/drivers/staging/rtl8723bs/hal/sdio_halinit.c
index 70f9e1d..8f1c8f0 100644
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

 /*	pHalData->PreRpwmVal = SdioLocalCmd52Read1Byte(padapter, SDIO_REG_HRPWM1) & 0x80; */

@@ -1059,21 +1059,21 @@ static void CardDisableRTL8723BSdio(struct adapter *padapter)
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
-	rtw_write8(padapter, REG_RSV_CTRL+1, u1bTmp);
+	rtw_write8(padapter, REG_RSV_CTRL + 1, u1bTmp);

	/*	==== Reset digital sequence end ====== */

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
