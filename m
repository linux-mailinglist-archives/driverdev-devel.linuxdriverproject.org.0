Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1843744DD
	for <lists+driverdev-devel@lfdr.de>; Thu, 25 Jul 2019 07:27:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id EC20787FEA;
	Thu, 25 Jul 2019 05:27:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id n5JuRbBWr8-6; Thu, 25 Jul 2019 05:27:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id EB18D87FB5;
	Thu, 25 Jul 2019 05:27:01 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 29E841BF2B7
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:26:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2695887E9E
 for <devel@linuxdriverproject.org>; Thu, 25 Jul 2019 05:26:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bnVadH8E37yH for <devel@linuxdriverproject.org>;
 Thu, 25 Jul 2019 05:26:58 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f195.google.com (mail-pg1-f195.google.com
 [209.85.215.195])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 07446840F8
 for <devel@driverdev.osuosl.org>; Thu, 25 Jul 2019 05:26:58 +0000 (UTC)
Received: by mail-pg1-f195.google.com with SMTP id i70so11653270pgd.4
 for <devel@driverdev.osuosl.org>; Wed, 24 Jul 2019 22:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IvnY7HqzVY0pHXj72vDjSFLGwwIYmJ7avVBwUuhEMsc=;
 b=ndcdH4J+UsptFLDmRpWMq/X2iNxFhPyxmzMJutE0AB8VNRS+pw7u27D/vwF+jVUWca
 lgae3+tkiBVH4hzTmcEmibOJciUgMZW02dIFHTjMyPweUHO7fec0QpDekO5dt10TXkNK
 ugPO9KF3nME2MFYedsAQ75kRsppfEBExVdCv/O8m0cFPYd0JQ+uqWT1GaW/MiNBiqDt0
 mC0QZNNVdew0SsTLrVPT56tlQxKAAJCxPR/+NZn4EdoRvKRDXD8S07ig3uvY2rlOqxAB
 0w/v+YAh82rQySA6ZUctqwx5JPpg4gK0nEb+Jru2i2xZmedw09kPLlXVCBeI9o41GkXS
 916A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=IvnY7HqzVY0pHXj72vDjSFLGwwIYmJ7avVBwUuhEMsc=;
 b=kbZpTFnJs5kDq6Z8JF4sq1y3uLUibjkltG5DGQ06DIfH4ALljsmmKniktyMpZuCfsd
 Ktecy9kQFfsxW9CGB6rGMsnIfVsTw8O3ERUXvf1vmArUIdUl8NAziYt+zacH0fuFtx9U
 aDRPAl9upOM+ayIeukZZzJxjIj8U/+hLcsJ/EVjF5EqBJw0gQ3/NibhKJeXcpN4Yi2us
 ZPEzhBQGHHYC40qyUzNgelX7dlhDTe9dI811fJtMkE41IGlwOecVinlLh/L0hghcxPK8
 8Ynkm84DN53+wYHTh1lx++J2PWDl03yjHqDaUA8w3cnWtE9b5SZMJATwCXFSk7u/oqV5
 A5XQ==
X-Gm-Message-State: APjAAAUTFifRIdmnBe2XlD/lcpc9/4WejynqclTMrU6bqJgPNdxXoF5Y
 b3e9IlnIKEbdnXKhJNH+2XtxGeBX
X-Google-Smtp-Source: APXvYqwXr8RMFsNF4q6kbQwgEiB+UmQtXSgVKVmuERwf1W5aCyyWZnZbH9JICff7ZvQn8zLShMBeVw==
X-Received: by 2002:a17:90a:eb08:: with SMTP id
 j8mr55176145pjz.72.1564032417481; 
 Wed, 24 Jul 2019 22:26:57 -0700 (PDT)
Received: from localhost.localdomain ([110.227.69.93])
 by smtp.gmail.com with ESMTPSA id w22sm51615877pfi.175.2019.07.24.22.26.55
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 24 Jul 2019 22:26:57 -0700 (PDT)
From: Nishka Dasgupta <nishkadg.linux@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org
Subject: [PATCH 1/9] staging: rtl8723bs: rtw_pwrctrl: Change true/false checks
Date: Thu, 25 Jul 2019 10:56:37 +0530
Message-Id: <20190725052645.2372-1-nishkadg.linux@gmail.com>
X-Mailer: git-send-email 2.19.1
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
Cc: Nishka Dasgupta <nishkadg.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Change comparisons to true to the variable itself.
Change comparisons to false to the negation of the variable.

Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_pwrctrl.c | 117 +++++++++----------
 1 file changed, 54 insertions(+), 63 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
index ae7fb7046c93..62b42e29e4fd 100644
--- a/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8723bs/core/rtw_pwrctrl.c
@@ -103,7 +103,7 @@ static bool rtw_pwr_unassociated_idle(struct adapter *adapter)
 
 	bool ret = false;
 
-	if (adapter_to_pwrctl(adapter)->bpower_saving == true) {
+	if (adapter_to_pwrctl(adapter)->bpower_saving) {
 		/* DBG_871X("%s: already in LPS or IPS mode\n", __func__); */
 		goto exit;
 	}
@@ -167,7 +167,7 @@ void rtw_ps_processor(struct adapter *padapter)
 		goto exit;
 	}
 
-	if (pwrpriv->bInSuspend == true) {/* system suspend or autosuspend */
+	if (pwrpriv->bInSuspend) {/* system suspend or autosuspend */
 		pdbgpriv->dbg_ps_insuspend_cnt++;
 		DBG_871X("%s, pwrpriv->bInSuspend == true ignore this process\n", __func__);
 		return;
@@ -219,10 +219,9 @@ void traffic_check_for_leave_lps(struct adapter *padapter, u8 tx, u32 tx_packets
 
 		if (jiffies_to_msecs(jiffies - start_time) > 2000) { /*  2 sec == watch dog timer */
 			if (xmit_cnt > 8) {
-				if ((adapter_to_pwrctl(padapter)->bLeisurePs)
-					&& (adapter_to_pwrctl(padapter)->pwr_mode != PS_MODE_ACTIVE)
-					&& (hal_btcoex_IsBtControlLps(padapter) == false)
-					) {
+				if (adapter_to_pwrctl(padapter)->bLeisurePs
+				    && (adapter_to_pwrctl(padapter)->pwr_mode != PS_MODE_ACTIVE)
+				    && !(hal_btcoex_IsBtControlLps(padapter))) {
 					DBG_871X("leave lps via Tx = %d\n", xmit_cnt);
 					bLeaveLPS = true;
 				}
@@ -234,10 +233,9 @@ void traffic_check_for_leave_lps(struct adapter *padapter, u8 tx, u32 tx_packets
 
 	} else { /*  from rx path */
 		if (pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod > 4/*2*/) {
-			if ((adapter_to_pwrctl(padapter)->bLeisurePs)
-				&& (adapter_to_pwrctl(padapter)->pwr_mode != PS_MODE_ACTIVE)
-				&& (hal_btcoex_IsBtControlLps(padapter) == false)
-				) {
+			if (adapter_to_pwrctl(padapter)->bLeisurePs
+			    && (adapter_to_pwrctl(padapter)->pwr_mode != PS_MODE_ACTIVE)
+			    && !(hal_btcoex_IsBtControlLps(padapter))) {
 				DBG_871X("leave lps via Rx = %d\n", pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod);
 				bLeaveLPS = true;
 			}
@@ -267,7 +265,7 @@ void rtw_set_rpwm(struct adapter *padapter, u8 pslv)
 
 	pslv = PS_STATE(pslv);
 
-	if (pwrpriv->brpwmtimeout == true) {
+	if (pwrpriv->brpwmtimeout) {
 		DBG_871X("%s: RPWM timeout, force to set RPWM(0x%02X) again!\n", __func__, pslv);
 	} else {
 		if ((pwrpriv->rpwm == pslv)
@@ -278,8 +276,7 @@ void rtw_set_rpwm(struct adapter *padapter, u8 pslv)
 		}
 	}
 
-	if ((padapter->bSurpriseRemoved == true) ||
-		(padapter->hw_init_completed == false)) {
+	if ((padapter->bSurpriseRemoved) || !(padapter->hw_init_completed)) {
 		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_err_,
 				 ("%s: SurpriseRemoved(%d) hw_init_completed(%d)\n",
 				  __func__, padapter->bSurpriseRemoved, padapter->hw_init_completed));
@@ -289,7 +286,7 @@ void rtw_set_rpwm(struct adapter *padapter, u8 pslv)
 		return;
 	}
 
-	if (padapter->bDriverStopped == true) {
+	if (padapter->bDriverStopped) {
 		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_err_,
 				 ("%s: change power state(0x%02X) when DriverStopped\n", __func__, pslv));
 
@@ -355,14 +352,14 @@ static u8 PS_RDY_CHECK(struct adapter *padapter)
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 
 #if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
-	if (true == pwrpriv->bInSuspend && pwrpriv->wowlan_mode)
+	if (pwrpriv->bInSuspend && pwrpriv->wowlan_mode)
 		return true;
-	else if (true == pwrpriv->bInSuspend && pwrpriv->wowlan_ap_mode)
+	else if (pwrpriv->bInSuspend && pwrpriv->wowlan_ap_mode)
 		return true;
-	else if (true == pwrpriv->bInSuspend)
+	else if (pwrpriv->bInSuspend)
 		return false;
 #else
-	if (true == pwrpriv->bInSuspend)
+	if (pwrpriv->bInSuspend)
 		return false;
 #endif
 
@@ -381,7 +378,7 @@ static u8 PS_RDY_CHECK(struct adapter *padapter)
 	)
 		return false;
 
-	if ((padapter->securitypriv.dot11AuthAlgrthm == dot11AuthAlgrthm_8021X) && (padapter->securitypriv.binstallGrpkey == false)) {
+	if ((padapter->securitypriv.dot11AuthAlgrthm == dot11AuthAlgrthm_8021X) && !(padapter->securitypriv.binstallGrpkey)) {
 		DBG_871X("Group handshake still in progress !!!\n");
 		return false;
 	}
@@ -417,13 +414,9 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 
 	/* if (pwrpriv->pwr_mode == PS_MODE_ACTIVE) */
 	if (ps_mode == PS_MODE_ACTIVE) {
-		if (1
-			&& (((hal_btcoex_IsBtControlLps(padapter) == false)
-					)
-				|| ((hal_btcoex_IsBtControlLps(padapter) == true)
-					&& (hal_btcoex_IsLpsOn(padapter) == false))
-				)
-			) {
+		if (!(hal_btcoex_IsBtControlLps(padapter))
+				|| (hal_btcoex_IsBtControlLps(padapter)
+					&& !(hal_btcoex_IsLpsOn(padapter)))) {
 			DBG_871X(FUNC_ADPT_FMT" Leave 802.11 power save - %s\n",
 				FUNC_ADPT_ARG(padapter), msg);
 
@@ -431,8 +424,7 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 			rtw_set_rpwm(padapter, PS_STATE_S4);
 
 #if defined(CONFIG_WOWLAN) || defined(CONFIG_AP_WOWLAN)
-			if (pwrpriv->wowlan_mode == true ||
-					pwrpriv->wowlan_ap_mode == true) {
+			if (pwrpriv->wowlan_mode || pwrpriv->wowlan_ap_mode) {
 				unsigned long start_time;
 				u32 delay_ms;
 				u8 val8;
@@ -461,8 +453,8 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 		}
 	} else {
 		if ((PS_RDY_CHECK(padapter) && check_fwstate(&padapter->mlmepriv, WIFI_ASOC_STATE))
-			|| ((hal_btcoex_IsBtControlLps(padapter) == true)
-				&& (hal_btcoex_IsLpsOn(padapter) == true))
+			|| ((hal_btcoex_IsBtControlLps(padapter))
+				&& (hal_btcoex_IsLpsOn(padapter)))
 			) {
 			u8 pslv;
 
@@ -481,8 +473,8 @@ void rtw_set_ps_mode(struct adapter *padapter, u8 ps_mode, u8 smart_ps, u8 bcn_a
 			if (pwrpriv->alives == 0)
 				pslv = PS_STATE_S0;
 
-			if ((hal_btcoex_IsBtDisabled(padapter) == false)
-				&& (hal_btcoex_IsBtControlLps(padapter) == true)) {
+			if (!(hal_btcoex_IsBtDisabled(padapter))
+				&& (hal_btcoex_IsBtControlLps(padapter))) {
 				u8 val8;
 
 				val8 = hal_btcoex_LpsVal(padapter);
@@ -513,10 +505,10 @@ s32 LPS_RF_ON_check(struct adapter *padapter, u32 delay_ms)
 	start_time = jiffies;
 	while (1) {
 		rtw_hal_get_hwreg(padapter, HW_VAR_FWLPS_RF_ON, &bAwake);
-		if (true == bAwake)
+		if (bAwake)
 			break;
 
-		if (true == padapter->bSurpriseRemoved) {
+		if (padapter->bSurpriseRemoved) {
 			err = -2;
 			DBG_871X("%s: device surprise removed!!\n", __func__);
 			break;
@@ -544,7 +536,7 @@ void LPS_Enter(struct adapter *padapter, const char *msg)
 	int n_assoc_iface = 0;
 	char buf[32] = {0};
 
-	if (hal_btcoex_IsBtControlLps(padapter) == true)
+	if (hal_btcoex_IsBtControlLps(padapter))
 		return;
 
 	/* Skip lps enter request if number of assocated adapters is not 1 */
@@ -557,8 +549,8 @@ void LPS_Enter(struct adapter *padapter, const char *msg)
 	if (get_iface_type(padapter) != IFACE_PORT0)
 		return;
 
-	if (PS_RDY_CHECK(dvobj->padapters) == false)
-			return;
+	if (!PS_RDY_CHECK(dvobj->padapters))
+		return;
 
 	if (pwrpriv->bLeisurePs) {
 		/*  Idle for a while if we connect to AP a while ago. */
@@ -589,7 +581,7 @@ void LPS_Leave(struct adapter *padapter, const char *msg)
 
 /* 	DBG_871X("+LeisurePSLeave\n"); */
 
-	if (hal_btcoex_IsBtControlLps(padapter) == true)
+	if (hal_btcoex_IsBtControlLps(padapter))
 		return;
 
 	if (pwrpriv->bLeisurePs) {
@@ -615,13 +607,13 @@ void LeaveAllPowerSaveModeDirect(struct adapter *Adapter)
 
 	DBG_871X("%s.....\n", __func__);
 
-	if (true == Adapter->bSurpriseRemoved) {
+	if (Adapter->bSurpriseRemoved) {
 		DBG_871X(FUNC_ADPT_FMT ": bSurpriseRemoved =%d Skip!\n",
 			FUNC_ADPT_ARG(Adapter), Adapter->bSurpriseRemoved);
 		return;
 	}
 
-	if ((check_fwstate(pmlmepriv, _FW_LINKED) == true)) { /* connect */
+	if (check_fwstate(pmlmepriv, _FW_LINKED)) { /* connect */
 
 		if (pwrpriv->pwr_mode == PS_MODE_ACTIVE) {
 			DBG_871X("%s: Driver Already Leave LPS\n", __func__);
@@ -637,7 +629,7 @@ void LeaveAllPowerSaveModeDirect(struct adapter *Adapter)
 		rtw_lps_ctrl_wk_cmd(pri_padapter, LPS_CTRL_LEAVE, 0);
 	} else {
 		if (pwrpriv->rf_pwrstate == rf_off)
-			if (false == ips_leave(pri_padapter))
+			if (!ips_leave(pri_padapter))
 				DBG_871X("======> ips_leave fail.............\n");
 	}
 }
@@ -675,7 +667,7 @@ void LeaveAllPowerSaveMode(struct adapter *Adapter)
 		LPS_Leave_check(Adapter);
 	} else {
 		if (adapter_to_pwrctl(Adapter)->rf_pwrstate == rf_off) {
-			if (false == ips_leave(Adapter))
+			if (!ips_leave(Adapter))
 				DBG_871X("======> ips_leave fail.............\n");
 		}
 	}
@@ -698,15 +690,14 @@ void LPS_Leave_check(
 	while (1) {
 		mutex_lock(&pwrpriv->lock);
 
-		if ((padapter->bSurpriseRemoved == true)
-			|| (padapter->hw_init_completed == false)
-			|| (pwrpriv->pwr_mode == PS_MODE_ACTIVE)
-			)
+		if (padapter->bSurpriseRemoved
+			|| !(padapter->hw_init_completed)
+			|| (pwrpriv->pwr_mode == PS_MODE_ACTIVE))
 			bReady = true;
 
 		mutex_unlock(&pwrpriv->lock);
 
-		if (true == bReady)
+		if (bReady)
 			break;
 
 		if (jiffies_to_msecs(jiffies - start_time) > 100) {
@@ -870,7 +861,7 @@ s32 rtw_register_task_alive(struct adapter *padapter, u32 task)
 
 	register_task_alive(pwrctrl, task);
 
-	if (pwrctrl->bFwCurrentInPSMode == true) {
+	if (pwrctrl->bFwCurrentInPSMode) {
 		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_notice_,
 				 ("%s: task = 0x%x cpwm = 0x%02x alives = 0x%08x\n",
 				  __func__, task, pwrctrl->cpwm, pwrctrl->alives));
@@ -910,8 +901,8 @@ void rtw_unregister_task_alive(struct adapter *padapter, u32 task)
 	pwrctrl = adapter_to_pwrctl(padapter);
 	pslv = PS_STATE_S0;
 
-	if ((hal_btcoex_IsBtDisabled(padapter) == false)
-		&& (hal_btcoex_IsBtControlLps(padapter) == true)) {
+	if (!(hal_btcoex_IsBtDisabled(padapter))
+	    && hal_btcoex_IsBtControlLps(padapter)) {
 		u8 val8;
 
 		val8 = hal_btcoex_LpsVal(padapter);
@@ -924,7 +915,7 @@ void rtw_unregister_task_alive(struct adapter *padapter, u32 task)
 	unregister_task_alive(pwrctrl, task);
 
 	if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE)
-		&& (pwrctrl->bFwCurrentInPSMode == true)) {
+	    && pwrctrl->bFwCurrentInPSMode) {
 		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_notice_,
 				 ("%s: cpwm = 0x%02x alives = 0x%08x\n",
 				  __func__, pwrctrl->cpwm, pwrctrl->alives));
@@ -965,7 +956,7 @@ s32 rtw_register_tx_alive(struct adapter *padapter)
 
 	register_task_alive(pwrctrl, XMIT_ALIVE);
 
-	if (pwrctrl->bFwCurrentInPSMode == true) {
+	if (pwrctrl->bFwCurrentInPSMode) {
 		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_notice_,
 				 ("rtw_register_tx_alive: cpwm = 0x%02x alives = 0x%08x\n",
 				  pwrctrl->cpwm, pwrctrl->alives));
@@ -1014,7 +1005,7 @@ s32 rtw_register_cmd_alive(struct adapter *padapter)
 
 	register_task_alive(pwrctrl, CMD_ALIVE);
 
-	if (pwrctrl->bFwCurrentInPSMode == true) {
+	if (pwrctrl->bFwCurrentInPSMode) {
 		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_info_,
 				 ("rtw_register_cmd_alive: cpwm = 0x%02x alives = 0x%08x\n",
 				  pwrctrl->cpwm, pwrctrl->alives));
@@ -1051,8 +1042,8 @@ void rtw_unregister_tx_alive(struct adapter *padapter)
 	pwrctrl = adapter_to_pwrctl(padapter);
 	pslv = PS_STATE_S0;
 
-	if ((hal_btcoex_IsBtDisabled(padapter) == false)
-		&& (hal_btcoex_IsBtControlLps(padapter) == true)) {
+	if (!(hal_btcoex_IsBtDisabled(padapter))
+		&& hal_btcoex_IsBtControlLps(padapter)) {
 		u8 val8;
 
 		val8 = hal_btcoex_LpsVal(padapter);
@@ -1065,7 +1056,7 @@ void rtw_unregister_tx_alive(struct adapter *padapter)
 	unregister_task_alive(pwrctrl, XMIT_ALIVE);
 
 	if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE)
-		&& (pwrctrl->bFwCurrentInPSMode == true)) {
+		&& pwrctrl->bFwCurrentInPSMode) {
 		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_notice_,
 				 ("%s: cpwm = 0x%02x alives = 0x%08x\n",
 				  __func__, pwrctrl->cpwm, pwrctrl->alives));
@@ -1093,8 +1084,8 @@ void rtw_unregister_cmd_alive(struct adapter *padapter)
 	pwrctrl = adapter_to_pwrctl(padapter);
 	pslv = PS_STATE_S0;
 
-	if ((hal_btcoex_IsBtDisabled(padapter) == false)
-		&& (hal_btcoex_IsBtControlLps(padapter) == true)) {
+	if (!(hal_btcoex_IsBtDisabled(padapter))
+	    && hal_btcoex_IsBtControlLps(padapter)) {
 		u8 val8;
 
 		val8 = hal_btcoex_LpsVal(padapter);
@@ -1107,7 +1098,7 @@ void rtw_unregister_cmd_alive(struct adapter *padapter)
 	unregister_task_alive(pwrctrl, CMD_ALIVE);
 
 	if ((pwrctrl->pwr_mode != PS_MODE_ACTIVE)
-		&& (pwrctrl->bFwCurrentInPSMode == true)) {
+	    && pwrctrl->bFwCurrentInPSMode) {
 		RT_TRACE(_module_rtl871x_pwrctrl_c_, _drv_info_,
 				 ("%s: cpwm = 0x%02x alives = 0x%08x\n",
 				  __func__, pwrctrl->cpwm, pwrctrl->alives));
@@ -1237,7 +1228,7 @@ int _rtw_pwr_wakeup(struct adapter *padapter, u32 ips_deffer_ms, const char *cal
 			DBG_871X("%s wait ps_processing done\n", __func__);
 	}
 
-	if (pwrpriv->bInternalAutoSuspend == false && pwrpriv->bInSuspend) {
+	if (!(pwrpriv->bInternalAutoSuspend) && pwrpriv->bInSuspend) {
 		DBG_871X("%s wait bInSuspend...\n", __func__);
 		while (pwrpriv->bInSuspend
 			&& jiffies_to_msecs(jiffies - start) <= 3000
@@ -1251,19 +1242,19 @@ int _rtw_pwr_wakeup(struct adapter *padapter, u32 ips_deffer_ms, const char *cal
 	}
 
 	/* System suspend is not allowed to wakeup */
-	if ((pwrpriv->bInternalAutoSuspend == false) && (true == pwrpriv->bInSuspend)) {
+	if (!(pwrpriv->bInternalAutoSuspend) && pwrpriv->bInSuspend) {
 		ret = _FAIL;
 		goto exit;
 	}
 
 	/* block??? */
-	if ((pwrpriv->bInternalAutoSuspend == true)  && (padapter->net_closed == true)) {
+	if (pwrpriv->bInternalAutoSuspend  && padapter->net_closed) {
 		ret = _FAIL;
 		goto exit;
 	}
 
 	/* I think this should be check in IPS, LPS, autosuspend functions... */
-	if (check_fwstate(pmlmepriv, _FW_LINKED) == true) {
+	if (check_fwstate(pmlmepriv, _FW_LINKED)) {
 		ret = _SUCCESS;
 		goto exit;
 	}
-- 
2.19.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
