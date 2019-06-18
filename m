Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E378D49692
	for <lists+driverdev-devel@lfdr.de>; Tue, 18 Jun 2019 03:08:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6A6868527F;
	Tue, 18 Jun 2019 01:08:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id REqQeuXBqxyG; Tue, 18 Jun 2019 01:08:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 162FD85CC7;
	Tue, 18 Jun 2019 01:08:38 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A69921BF32A
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 01:08:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A27748527F
 for <devel@linuxdriverproject.org>; Tue, 18 Jun 2019 01:08:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ALH8-cFQ012R for <devel@linuxdriverproject.org>;
 Tue, 18 Jun 2019 01:08:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CF498846C0
 for <devel@driverdev.osuosl.org>; Tue, 18 Jun 2019 01:08:33 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id f21so6719460pgi.3
 for <devel@driverdev.osuosl.org>; Mon, 17 Jun 2019 18:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=jDZhFmpz9ACudGMzcyLxP8/Ltek/RCeyMDIlR39/+io=;
 b=Q5mwcL9gAL6wL0SeNT77C3DOU2Jbein9PDE6tAd40fiq8M92UHQBwbMGmkDrJOq6As
 8i/2YBUqor6VYnAwU+DDQtIVK+NR6ebN2Y338QxQYx2GqN2s4mIg8R8z3wsLAVnWwhWk
 G02gLQY3euLDp2qJLYVuvXiYjGzNE9lP7Lq8dr8kZmiBe2gNU6JByNIZ3EttsEoA16N4
 csfzR5HfOEztWzfpuaCM64lhMNEbc1jxnxRZBnhbYritB3moE9osW4AIx1/y48nd5Xst
 7voaFAgupNzUpxGKp1xKkhgy1A+THe2BMaTsNgGuna8mC53t9OfgxQhEca+VEK28sY0x
 bWbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=jDZhFmpz9ACudGMzcyLxP8/Ltek/RCeyMDIlR39/+io=;
 b=CsajDif4OexyVzJD+69FWytrdG8Q3ac16WPDKz95hhiGitssjh65T2oQ6xs01E/8op
 FMREMVSZIuiMxIGaAq36MvOqa7Chv62kaWyuUIN1HoLSv6/Lhc9ma5MCpsfdY/t/W77M
 qGt0xopeSaASzojAQwtoD54xVDiSI3ZU4MJ+n4CiGhLm231cNZy7NbW4bIWXHioQCS79
 2mZsJsifmA59twQS5QhaTHiZ3oSXBFWlYJ+SbeEaRuJ51ZUC9rLqAzwjpCYkbT4bu1Ss
 8ZrSz5tim9l6KohaqeAF8MvwPsirfwyoq3UBJY7F8vhGZ8ziTbFd4cW7vF8lT2MmZxRU
 8Orw==
X-Gm-Message-State: APjAAAUxleAe5hRGoTHEKtZAAleKdzJ977ACaulNS13MUXjyTlxEKDH6
 gcMspZU1AKAc8Vdob/whMmE=
X-Google-Smtp-Source: APXvYqx4GITob4sPOCuegNHc0uI/jChHmkybsA5ACmagvsSbF+15z731CDZIFqoYJUer3tsS7Ye2Zw==
X-Received: by 2002:a63:8b4c:: with SMTP id j73mr171687pge.15.1560820113039;
 Mon, 17 Jun 2019 18:08:33 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.187])
 by smtp.gmail.com with ESMTPSA id f7sm11487062pfd.43.2019.06.17.18.08.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 18:08:32 -0700 (PDT)
Date: Tue, 18 Jun 2019 06:38:28 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
 Himadri Pandya <himadri18.07@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] staging: rtl8723bs: hal: rtl8723b_hal_init: fix Using
 comparison to true is error prone
Message-ID: <20190618010828.GA7084@hari-Inspiron-1545>
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

This patch tries to fix below issues reported by checkpatch

CHECK: Using comparison to true is error prone
CHECK: Using comparison to true is false prone

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c | 38 +++++++++++------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
index 624188e..b0cc882 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c
@@ -742,7 +742,7 @@ static void Hal_BT_EfusePowerSwitch(
 )
 {
 	u8 tempval;
-	if (PwrState == true) {
+	if (PwrState) {
 		/*  enable BT power cut */
 		/*  0x6A[14] = 1 */
 		tempval = rtw_read8(padapter, 0x6B);
@@ -783,7 +783,7 @@ static void Hal_EfusePowerSwitch(
 	u16 tmpV16;
 
 
-	if (PwrState == true) {
+	if (PwrState) {
 		/*  To avoid cannot access efuse regsiters after disable/enable several times during DTM test. */
 		/*  Suggested by SD1 IsaacHsu. 2013.07.08, added by tynli. */
 		tempval = rtw_read8(padapter, SDIO_LOCAL_BASE|SDIO_REG_HSUS_CTRL);
@@ -833,7 +833,7 @@ static void Hal_EfusePowerSwitch(
 			rtw_write16(padapter, REG_SYS_CLKR, tmpV16);
 		}
 
-		if (bWrite == true) {
+		if (bWrite) {
 			/*  Enable LDO 2.5V before read/write action */
 			tempval = rtw_read8(padapter, EFUSE_TEST+3);
 			tempval &= 0x0F;
@@ -845,7 +845,7 @@ static void Hal_EfusePowerSwitch(
 	} else {
 		rtw_write8(padapter, REG_EFUSE_ACCESS, EFUSE_ACCESS_OFF);
 
-		if (bWrite == true) {
+		if (bWrite) {
 			/*  Disable LDO 2.5V after read/write action */
 			tempval = rtw_read8(padapter, EFUSE_TEST+3);
 			rtw_write8(padapter, EFUSE_TEST+3, (tempval & 0x7F));
@@ -2166,7 +2166,7 @@ static void UpdateHalRAMask8723B(struct adapter *padapter, u32 mac_id, u8 rssi_l
 	}
 #endif
 
-	if (pHalData->fw_ractrl == true) {
+	if (pHalData->fw_ractrl) {
 		rtl8723b_set_FwMacIdConfig_cmd(padapter, mac_id, psta->raid, psta->bw_mode, shortGIrate, mask);
 	}
 
@@ -2428,7 +2428,7 @@ void Hal_InitPGData(struct adapter *padapter, u8 *PROMContent)
 {
 	struct eeprom_priv *pEEPROM = GET_EEPROM_EFUSE_PRIV(padapter);
 
-	if (false == pEEPROM->bautoload_fail_flag) { /*  autoload OK. */
+	if (!pEEPROM->bautoload_fail_flag) { /*  autoload OK. */
 		if (!pEEPROM->EepromOrEfuse) {
 			/*  Read EFUSE real map to shadow. */
 			EFUSE_ShadowMapUpdate(padapter, EFUSE_WIFI, false);
@@ -2436,7 +2436,7 @@ void Hal_InitPGData(struct adapter *padapter, u8 *PROMContent)
 		}
 	} else {/* autoload fail */
 		RT_TRACE(_module_hci_hal_init_c_, _drv_notice_, ("AutoLoad Fail reported from CR9346!!\n"));
-		if (false == pEEPROM->EepromOrEfuse)
+		if (!pEEPROM->EepromOrEfuse)
 			EFUSE_ShadowMapUpdate(padapter, EFUSE_WIFI, false);
 		memcpy((void *)PROMContent, (void *)pEEPROM->efuse_eeprom_data, HWSET_MAX_SIZE_8723B);
 	}
@@ -2842,12 +2842,12 @@ void Hal_EfuseParseThermalMeter_8723B(
 	/*  */
 	/*  ThermalMeter from EEPROM */
 	/*  */
-	if (false == AutoLoadFail)
+	if (!AutoLoadFail)
 		pHalData->EEPROMThermalMeter = PROMContent[EEPROM_THERMAL_METER_8723B];
 	else
 		pHalData->EEPROMThermalMeter = EEPROM_Default_ThermalMeter_8723B;
 
-	if ((pHalData->EEPROMThermalMeter == 0xff) || (true == AutoLoadFail)) {
+	if ((pHalData->EEPROMThermalMeter == 0xff) || AutoLoadFail) {
 		pHalData->bAPKThermalMeterIgnore = true;
 		pHalData->EEPROMThermalMeter = EEPROM_Default_ThermalMeter_8723B;
 	}
@@ -3094,12 +3094,12 @@ static void rtl8723b_fill_default_txdesc(
 			(pattrib->dhcp_pkt != 1) &&
 			(drv_userate != 1)
 #ifdef CONFIG_AUTO_AP_MODE
-			&& (pattrib->pctrl != true)
+			&& (!pattrib->pctrl)
 #endif
 		) {
 			/*  Non EAP & ARP & DHCP type data packet */
 
-			if (pattrib->ampdu_en == true) {
+			if (pattrib->ampdu_en) {
 				ptxdesc->agg_en = 1; /*  AGG EN */
 				ptxdesc->max_agg_num = 0x1f;
 				ptxdesc->ampdu_density = pattrib->ampdu_spacing;
@@ -3110,7 +3110,7 @@ static void rtl8723b_fill_default_txdesc(
 
 			ptxdesc->data_ratefb_lmt = 0x1F;
 
-			if (pHalData->fw_ractrl == false) {
+			if (!pHalData->fw_ractrl) {
 				ptxdesc->userate = 1;
 
 				if (pHalData->dmpriv.INIDATA_RATE[pattrib->mac_id] & BIT(7))
@@ -3162,7 +3162,7 @@ static void rtl8723b_fill_default_txdesc(
 		ptxdesc->mbssid = pattrib->mbssid & 0xF;
 
 		ptxdesc->rty_lmt_en = 1; /*  retry limit enable */
-		if (pattrib->retry_ctrl == true) {
+		if (pattrib->retry_ctrl) {
 			ptxdesc->data_rt_lmt = 6;
 		} else {
 			ptxdesc->data_rt_lmt = 12;
@@ -3265,14 +3265,14 @@ void rtl8723b_fill_fake_txdesc(
 	SET_TX_DESC_QUEUE_SEL_8723B(pDesc, QSLT_MGNT); /*  Fixed queue of Mgnt queue */
 
 	/*  Set NAVUSEHDR to prevent Ps-poll AId filed to be changed to error vlaue by Hw. */
-	if (true == IsPsPoll) {
+	if (IsPsPoll) {
 		SET_TX_DESC_NAV_USE_HDR_8723B(pDesc, 1);
 	} else {
 		SET_TX_DESC_HWSEQ_EN_8723B(pDesc, 1); /*  Hw set sequence number */
 		SET_TX_DESC_HWSEQ_SEL_8723B(pDesc, 0);
 	}
 
-	if (true == IsBTQosNull) {
+	if (IsBTQosNull) {
 		SET_TX_DESC_BT_INT_8723B(pDesc, 1);
 	}
 
@@ -3284,7 +3284,7 @@ void rtl8723b_fill_fake_txdesc(
 	/*  */
 	/*  Encrypt the data frame if under security mode excepct null data. Suggested by CCW. */
 	/*  */
-	if (true == bDataFrame) {
+	if (bDataFrame) {
 		u32 EncAlg;
 
 		EncAlg = padapter->securitypriv.dot11PrivacyAlgrthm;
@@ -3759,7 +3759,7 @@ void C2HPacketHandler_8723B(struct adapter *padapter, u8 *pbuffer, u16 length)
 #ifdef CONFIG_WOWLAN
 	struct pwrctrl_priv *pwrpriv = adapter_to_pwrctl(padapter);
 
-	if (pwrpriv->wowlan_mode == true) {
+	if (pwrpriv->wowlan_mode) {
 		DBG_871X("%s(): return because wowolan_mode ==true! CMDID =%d\n", __func__, pbuffer[0]);
 		return;
 	}
@@ -4119,7 +4119,7 @@ void SetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 			/*  keep sn */
 			padapter->xmitpriv.nqos_ssn = rtw_read16(padapter, REG_NQOS_SEQ);
 
-			if (pwrpriv->bkeepfwalive != true) {
+			if (!pwrpriv->bkeepfwalive) {
 				/* RX DMA stop */
 				val32 = rtw_read32(padapter, REG_RXPKT_NUM);
 				val32 |= RW_RELEASE_EN;
@@ -4274,7 +4274,7 @@ void GetHwReg8723B(struct adapter *padapter, u8 variable, u8 *val)
 			u32 valRCR;
 
 			if (
-				(padapter->bSurpriseRemoved == true) ||
+				padapter->bSurpriseRemoved  ||
 				(adapter_to_pwrctl(padapter)->rf_pwrstate == rf_off)
 			) {
 				/*  If it is in HW/SW Radio OFF or IPS state, we do not check Fw LPS Leave, */
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
