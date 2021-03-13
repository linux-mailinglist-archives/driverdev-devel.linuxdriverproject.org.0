Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CF6339EEC
	for <lists+driverdev-devel@lfdr.de>; Sat, 13 Mar 2021 16:29:56 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 64ADD400C6;
	Sat, 13 Mar 2021 15:29:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mMIJx-Ns-YCm; Sat, 13 Mar 2021 15:29:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 45CF2400AB;
	Sat, 13 Mar 2021 15:29:52 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 988341BF35A
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 15:29:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 87B016062A
 for <devel@linuxdriverproject.org>; Sat, 13 Mar 2021 15:29:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y0KQvACA3uDN for <devel@linuxdriverproject.org>;
 Sat, 13 Mar 2021 15:29:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8D7F3605E1
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 15:29:41 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 ga23-20020a17090b0397b02900c0b81bbcd4so12181691pjb.0
 for <devel@driverdev.osuosl.org>; Sat, 13 Mar 2021 07:29:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rRdJdmidiX1gZH+elVPiwUGDJVYMQEgUgXJ4vfO2Seg=;
 b=qo4ReIBpaOcEy24FPoC6pcQSGL7X7eO2Y0MZdVFBEJGFOx+t6Ylfj7/lXvyxTcNlgB
 Txt5ypeAzmOW0rFzHfvXpol80zWOwP3g+NlkVa45UoAuRxNSbNLDaYbOtSbqpUoxZpUn
 BqanbeqnjiLtf3KkCAATN9ZCmsvGpM7Pl17N79ZQjcOWibmRxwG8O/N52kL/c8JHn4KX
 dEbLfyhfFavd9qSPq1TZHPWhBmaIplq/sj6+FaA5k6M9l9yBuBlUUHo+iiiYheGbCoHI
 Y0DnreoEso9anxrL+J1MWc2M8Vt0ZooT2e0gV5OM9Q7Oakkbzr0Bal5feyL9ItjMxo9z
 FMuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rRdJdmidiX1gZH+elVPiwUGDJVYMQEgUgXJ4vfO2Seg=;
 b=RAaZH10FPFeGfnWPV6yG+K8W0jLTjOeAIe9Z2G1+Dc2OwKJ1HCMPnXrggDnt4n19f/
 VUVUeXjcLwu8zsRxDh7R+Kv/cFQkOEN5zedMpx4VsVkTnkYDFslpxlzmmUutSblMUMeH
 ECb3TyDgle/1ZpdMQXyUaBkuQ6Ql7oxwkPN29Inj8ZSTIdr9/GiSRuR8ExJEo3ujG82O
 EHK/5tAfIMJv3KcLuQsGGso7Zb5Kb52pLiHwdCCzc5nZ5dSZpICimBT0ZRqPnafwhzQH
 Z72l7+uXm4XFN2coML1DRLP0MHXanfswuwqEwaNmtOPSC2TgPRTuk4zw/BlpH3bWunFc
 5e7w==
X-Gm-Message-State: AOAM530akfjO7KOxAz2Cx5VoKDINe9BABg8FbPpUgTEMt6PJ2KsH7pYv
 CyaNMj88FsfjJZGsEzekwSqATqRCIR0kbVwE
X-Google-Smtp-Source: ABdhPJxQoSf2M1XrSsD6j+HiQnSKDApBLFz9zt17eFclNDCRvgIhEOuG8oALGY/RcpunIcVVuaXNQg==
X-Received: by 2002:a17:902:d487:b029:e4:a950:6df2 with SMTP id
 c7-20020a170902d487b02900e4a9506df2mr3544827plg.79.1615649380795; 
 Sat, 13 Mar 2021 07:29:40 -0800 (PST)
Received: from localhost.localdomain ([183.99.11.150])
 by smtp.gmail.com with ESMTPSA id gb1sm5562481pjb.21.2021.03.13.07.29.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 13 Mar 2021 07:29:40 -0800 (PST)
From: hygoni <42.hyeyoo@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8723bs: fix checkpatch warnings
Date: Sun, 14 Mar 2021 00:29:34 +0900
Message-Id: <20210313152934.87638-1-42.hyeyoo@gmail.com>
X-Mailer: git-send-email 2.24.3 (Apple Git-128)
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
Cc: hygoni <42.hyeyoo@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix checkpatch warnings of core/rtw_cmd.c
in detail, unnecessary braces, space before tab and wrongly formatted comments.
Issues found by checkpatch
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 105 +++++++++++------------
 1 file changed, 50 insertions(+), 55 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 3fe79169a811..9ed1e83769b8 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -158,11 +158,9 @@ static struct cmd_hdl wlancmds[] = {
 	GEN_MLME_EXT_HANDLER(sizeof(struct RunInThread_param), run_in_thread_hdl) /*63*/
 };
 
-/*
-Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
-No irqsave is necessary.
-*/
-
+/* Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
+ * No irqsave is necessary.
+ */
 int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 {
 	int res = 0;
@@ -229,6 +227,7 @@ void _rtw_free_evt_priv(struct	evt_priv *pevtpriv)
 
 	while (!rtw_cbuf_empty(pevtpriv->c2h_queue)) {
 		void *c2h = rtw_cbuf_pop(pevtpriv->c2h_queue);
+
 		if (c2h && c2h != (void *)pevtpriv)
 			kfree(c2h);
 	}
@@ -248,15 +247,14 @@ void _rtw_free_cmd_priv(struct	cmd_priv *pcmdpriv)
 	}
 }
 
-/*
-Calling Context:
-
-rtw_enqueue_cmd can only be called between kernel thread,
-since only spin_lock is used.
-
-ISR/Call-Back functions can't call this sub-function.
-
-*/
+/* Calling Context:
+ *
+ * rtw_enqueue_cmd can only be called between kernel thread,
+ * since only spin_lock is used.
+ *
+ * ISR/Call-Back functions can't call this sub-function.
+ *
+ */
 
 int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
 {
@@ -321,9 +319,9 @@ int rtw_cmd_filter(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 		|| atomic_read(&(pcmdpriv->cmdthd_running)) == false	/* com_thread not running */
 	) {
 		/* DBG_871X("%s:%s: drop cmdcode:%u, hw_init_completed:%u, cmdthd_running:%u\n", caller_func, __func__, */
-		/* 	cmd_obj->cmdcode, */
-		/* 	pcmdpriv->padapter->hw_init_completed, */
-		/* 	pcmdpriv->cmdthd_running */
+		/*	cmd_obj->cmdcode, */
+		/*	pcmdpriv->padapter->hw_init_completed, */
+		/*	pcmdpriv->cmdthd_running */
 		/*  */
 
 		return _FAIL;
@@ -554,18 +552,17 @@ int rtw_cmd_thread(void *context)
 	thread_exit();
 }
 
-/*
-rtw_sitesurvey_cmd(~)
-	### NOTE:#### (!!!!)
-	MUST TAKE CARE THAT BEFORE CALLING THIS FUNC, YOU SHOULD HAVE LOCKED pmlmepriv->lock
-*/
+/* rtw_sitesurvey_cmd(~)
+ * ### NOTE:#### (!!!!)
+ * MUST TAKE CARE THAT BEFORE CALLING THIS FUNC, YOU SHOULD HAVE LOCKED pmlmepriv->lock
+ */
 u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid, int ssid_num,
 	struct rtw_ieee80211_channel *ch, int ch_num)
 {
 	u8 res = _FAIL;
 	struct cmd_obj		*ph2c;
 	struct sitesurvey_parm	*psurveyPara;
-	struct cmd_priv 	*pcmdpriv = &padapter->cmdpriv;
+	struct cmd_priv		*pcmdpriv = &padapter->cmdpriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 	if (check_fwstate(pmlmepriv, _FW_LINKED) == true)
@@ -593,6 +590,7 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
 	/* prepare ssid list */
 	if (ssid) {
 		int i;
+
 		for (i = 0; i < ssid_num && i < RTW_SSID_SCAN_AMOUNT; i++) {
 			if (ssid[i].SsidLength) {
 				memcpy(&psurveyPara->ssid[i], &ssid[i], sizeof(struct ndis_802_11_ssid));
@@ -607,6 +605,7 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
 	/* prepare channel list */
 	if (ch) {
 		int i;
+
 		for (i = 0; i < ch_num && i < RTW_CHANNEL_SCAN_AMOUNT; i++) {
 			if (ch[i].hw_value && !(ch[i].flags & RTW_IEEE80211_CHAN_DISABLED)) {
 				memcpy(&psurveyPara->ch[i], &ch[i], sizeof(struct rtw_ieee80211_channel));
@@ -671,16 +670,15 @@ void rtw_getbbrfreg_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *p
 u8 rtw_createbss_cmd(struct adapter  *padapter)
 {
 	struct cmd_obj *pcmd;
-	struct cmd_priv 			*pcmdpriv = &padapter->cmdpriv;
-	struct mlme_priv 		*pmlmepriv = &padapter->mlmepriv;
+	struct cmd_priv				*pcmdpriv = &padapter->cmdpriv;
+	struct mlme_priv		*pmlmepriv = &padapter->mlmepriv;
 	struct wlan_bssid_ex		*pdev_network = &padapter->registrypriv.dev_network;
 	u8 res = _SUCCESS;
 
-	if (pmlmepriv->assoc_ssid.SsidLength == 0) {
+	if (pmlmepriv->assoc_ssid.SsidLength == 0)
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, (" createbss for Any SSid:%s\n", pmlmepriv->assoc_ssid.Ssid));
-	} else {
+	else
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, (" createbss for SSid:%s\n", pmlmepriv->assoc_ssid.Ssid));
-	}
 
 	pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
 	if (pcmd == NULL) {
@@ -755,23 +753,22 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	uint	t_len = 0;
 	struct wlan_bssid_ex		*psecnetwork;
 	struct cmd_obj		*pcmd;
-	struct cmd_priv 	*pcmdpriv = &padapter->cmdpriv;
-	struct mlme_priv 	*pmlmepriv = &padapter->mlmepriv;
-	struct qos_priv 	*pqospriv = &pmlmepriv->qospriv;
+	struct cmd_priv		*pcmdpriv = &padapter->cmdpriv;
+	struct mlme_priv	*pmlmepriv = &padapter->mlmepriv;
+	struct qos_priv		*pqospriv = &pmlmepriv->qospriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	struct registry_priv *pregistrypriv = &padapter->registrypriv;
-	struct ht_priv 		*phtpriv = &pmlmepriv->htpriv;
+	struct ht_priv		*phtpriv = &pmlmepriv->htpriv;
 	enum NDIS_802_11_NETWORK_INFRASTRUCTURE ndis_network_mode = pnetwork->network.InfrastructureMode;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 	u32 tmp_len;
 	u8 *ptmp = NULL;
 
-	if (pmlmepriv->assoc_ssid.SsidLength == 0) {
+	if (pmlmepriv->assoc_ssid.SsidLength == 0)
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("+Join cmd: Any SSid\n"));
-	} else {
+	else
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_, ("+Join cmd: SSid =[%s]\n", pmlmepriv->assoc_ssid.Ssid));
-	}
 
 	pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
 	if (pcmd == NULL) {
@@ -810,11 +807,10 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 
 	psecuritypriv->authenticator_ie[0] = (unsigned char)psecnetwork->IELength;
 
-	if ((psecnetwork->IELength-12) < (256-1)) {
+	if ((psecnetwork->IELength-12) < (256-1))
 		memcpy(&psecuritypriv->authenticator_ie[1], &psecnetwork->IEs[12], psecnetwork->IELength-12);
-	} else {
+	else
 		memcpy(&psecuritypriv->authenticator_ie[1], &psecnetwork->IEs[12], (256-1));
-	}
 
 	psecnetwork->IELength = 0;
 	/*  Added by Albert 2009/02/18 */
@@ -844,9 +840,9 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	phtpriv->ht_option = false;
 	ptmp = rtw_get_ie(&pnetwork->network.IEs[12], WLAN_EID_HT_CAPABILITY, &tmp_len, pnetwork->network.IELength-12);
 	if (pregistrypriv->ht_enable && ptmp && tmp_len > 0) {
-		/* 	Added by Albert 2010/06/23 */
-		/* 	For the WEP mode, we will use the bg mode to do the connection to avoid some IOT issue. */
-		/* 	Especially for Realtek 8192u SoftAP. */
+		/*	Added by Albert 2010/06/23 */
+		/*	For the WEP mode, we will use the bg mode to do the connection to avoid some IOT issue. */
+		/*	Especially for Realtek 8192u SoftAP. */
 		if ((padapter->securitypriv.dot11PrivacyAlgrthm != _WEP40_) &&
 			(padapter->securitypriv.dot11PrivacyAlgrthm != _WEP104_) &&
 			(padapter->securitypriv.dot11PrivacyAlgrthm != _TKIP_)) {
@@ -955,11 +951,11 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
 {
 	struct cmd_obj *ph2c;
 	struct set_stakey_parm	*psetstakey_para;
-	struct cmd_priv 			*pcmdpriv = &padapter->cmdpriv;
+	struct cmd_priv				*pcmdpriv = &padapter->cmdpriv;
 	struct set_stakey_rsp		*psetstakey_rsp = NULL;
 
-	struct mlme_priv 		*pmlmepriv = &padapter->mlmepriv;
-	struct security_priv 	*psecuritypriv = &padapter->securitypriv;
+	struct mlme_priv		*pmlmepriv = &padapter->mlmepriv;
+	struct security_priv	*psecuritypriv = &padapter->securitypriv;
 	u8 res = _SUCCESS;
 
 	psetstakey_para = rtw_zmalloc(sizeof(struct set_stakey_parm));
@@ -970,17 +966,15 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
 
 	memcpy(psetstakey_para->addr, sta->hwaddr, ETH_ALEN);
 
-	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
+	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
 		psetstakey_para->algorithm = (unsigned char) psecuritypriv->dot11PrivacyAlgrthm;
-	} else {
+	else
 		GET_ENCRY_ALGO(psecuritypriv, sta, psetstakey_para->algorithm, false);
-	}
 
-	if (unicast_key == true) {
+	if (unicast_key == true)
 		memcpy(&psetstakey_para->key, &sta->dot118021x_UncstKey, 16);
-	} else {
+	else
 		memcpy(&psetstakey_para->key, &psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey, 16);
-	}
 
 	/* jeff: set this because at least sw key is ready */
 	padapter->securitypriv.busetkipkey = true;
@@ -1017,7 +1011,7 @@ u8 rtw_clearstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 enqueu
 {
 	struct cmd_obj *ph2c;
 	struct set_stakey_parm	*psetstakey_para;
-	struct cmd_priv 			*pcmdpriv = &padapter->cmdpriv;
+	struct cmd_priv				*pcmdpriv = &padapter->cmdpriv;
 	struct set_stakey_rsp		*psetstakey_rsp = NULL;
 	s16 cam_id = 0;
 	u8 res = _SUCCESS;
@@ -1068,7 +1062,7 @@ u8 rtw_clearstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 enqueu
 
 u8 rtw_addbareq_cmd(struct adapter *padapter, u8 tid, u8 *addr)
 {
-	struct cmd_priv 	*pcmdpriv = &padapter->cmdpriv;
+	struct cmd_priv		*pcmdpriv = &padapter->cmdpriv;
 	struct cmd_obj *ph2c;
 	struct addBaReq_parm	*paddbareq_parm;
 
@@ -1296,7 +1290,7 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
 	u8 bBusyTraffic = false, bTxBusyTraffic = false, bRxBusyTraffic = false;
 	u8 bHigherBusyTraffic = false, bHigherBusyRxTraffic = false, bHigherBusyTxTraffic = false;
 
-	struct mlme_priv 	*pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv	*pmlmepriv = &(padapter->mlmepriv);
 
 	collect_traffic_statistics(padapter);
 
@@ -1397,6 +1391,7 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
 static void dynamic_chk_wk_hdl(struct adapter *padapter)
 {
 	struct mlme_priv *pmlmepriv;
+
 	pmlmepriv = &(padapter->mlmepriv);
 
 	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true)
@@ -1495,7 +1490,7 @@ u8 rtw_lps_ctrl_wk_cmd(struct adapter *padapter, u8 lps_ctrl_type, u8 enqueue)
 	u8 res = _SUCCESS;
 
 	/* if (!pwrctrlpriv->bLeisurePs) */
-	/* 	return res; */
+	/*	return res; */
 
 	if (enqueue) {
 		ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
@@ -2035,7 +2030,7 @@ void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 	if (pcmd->parmbuf == NULL)
 		goto exit;
 
-	if ((pcmd->res != H2C_SUCCESS)) {
+	if (pcmd->res != H2C_SUCCESS) {
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\n ********Error: rtw_createbss_cmd_callback  Fail ************\n\n."));
 		_set_timer(&pmlmepriv->assoc_timer, 1);
 	}
-- 
2.24.3 (Apple Git-128)

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
