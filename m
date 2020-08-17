Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F1B0245C52
	for <lists+driverdev-devel@lfdr.de>; Mon, 17 Aug 2020 08:15:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id A258021135;
	Mon, 17 Aug 2020 06:15:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iSb3Lwl6Z52K; Mon, 17 Aug 2020 06:15:48 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B9B6520381;
	Mon, 17 Aug 2020 06:15:37 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1C1C11BF344
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 06:15:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 18E9820352
 for <devel@linuxdriverproject.org>; Mon, 17 Aug 2020 06:15:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UpcBFgDk37XT for <devel@linuxdriverproject.org>;
 Mon, 17 Aug 2020 06:15:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 03B9B2034C
 for <devel@driverdev.osuosl.org>; Mon, 17 Aug 2020 06:15:34 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id r11so7702116pfl.11
 for <devel@driverdev.osuosl.org>; Sun, 16 Aug 2020 23:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B29HNswG4VAlQ/xZ45Y70NKr/9hIU4apY27HzPZSZJk=;
 b=To9DMhBD+IUBVnFqP1EhlDyhFR3JUtaSDRxPftVbf2SJRLhJDaEQU87e1Ls96yZHlS
 gR63a1v1m5SBH8oNv/JYopbdfP14nijR2Aj8U5NI71V0ECJmXBJQnh49AK+AxI/rzYsE
 iWCd0RQBK+qQh5tn+MSrErPXP5dJtxBRGshvQyfKbtPS/tjItZChqaz6pd2A2Fn+/OVQ
 hL2nc4BkYoIFhB4iCEb73XoK0fN24+FfvNs5jcQkjcAQV2PzFuBvOGr51ZmaC5boCym2
 /xBegfLkVdtkikTuQkq1dpd5RxnzG+bhCd5XROcWb3nTZCL3ibo8DjMAcR52XiCK5Hqs
 t9LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=B29HNswG4VAlQ/xZ45Y70NKr/9hIU4apY27HzPZSZJk=;
 b=GJAY5oionNZJYe+Slb6vx53uv/9e6399E6eNXe3qxNCbgoetrem6skA3SP1R8mc/7U
 EuWgfbVV18jNPMTEMZa33TfAeEXNP18hVwEh5Pq5m0suIwAYaY5JPMxS44yOCht1A7nt
 BJFbvSm3VVgPz6Z6SGv6bFQuhvFknwLIPH54hQHM5PazkjtnGdJFofY/fRWxkBZRdL4h
 OTSjJE3LvzT7LX74exR/ZggH+xO22WsrvjI053dVGl+JSZOsrNtYsKEMZQGQSg3sFdHO
 d2mN/N0DqNy69q7u7aK/Wh/qkT6CtXFWO/o8mT1GvDH3jDs6p9vPxrDb5Vi1aPTTVVsC
 2AiA==
X-Gm-Message-State: AOAM533wdzYCIgHXhRUkujnvikqD7kMkSyQAbcjR5/9BDTlIEt/SIO/B
 /NblIiXgBKaGezkMgqXM5WBKWS3CwUE=
X-Google-Smtp-Source: ABdhPJziWCroOFCCnxdcWCBF8GWCfpxo5KDbpT8yKjmMb2c/6ni+3pBZVxgrFGd89+LWgyBHSqv+/Q==
X-Received: by 2002:a63:5116:: with SMTP id f22mr8916517pgb.303.1597644933034; 
 Sun, 16 Aug 2020 23:15:33 -0700 (PDT)
Received: from localhost.localdomain ([147.46.114.52])
 by smtp.gmail.com with ESMTPSA id w3sm18232177pff.56.2020.08.16.23.15.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Aug 2020 23:15:32 -0700 (PDT)
From: Injae Kang <abcinje@gmail.com>
To: devel@driverdev.osuosl.org
Subject: [PATCH] staging: rtl8723bs: fix coding style
Date: Mon, 17 Aug 2020 06:15:20 +0000
Message-Id: <20200817061520.5886-1-abcinje@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: Injae Kang <abcinje@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix coding style of core/rtw_cmd.c

Signed-off-by: Injae Kang <abcinje@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 168 +++++++++++------------
 1 file changed, 79 insertions(+), 89 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index bd18d1803e27..d496d86c8111 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -159,9 +159,9 @@ static struct cmd_hdl wlancmds[] = {
 };
 
 /*
-Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
-No irqsave is necessary.
-*/
+ * Caller and the rtw_cmd_thread can protect cmd_q by spin_lock.
+ * No irqsave is necessary.
+ */
 
 int rtw_init_cmd_priv(struct	cmd_priv *pcmdpriv)
 {
@@ -221,7 +221,7 @@ int rtw_init_evt_priv(struct evt_priv *pevtpriv)
 
 void _rtw_free_evt_priv(struct	evt_priv *pevtpriv)
 {
-	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("+_rtw_free_evt_priv\n"));
+	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("+%s\n", __func__));
 
 	_cancel_workitem_sync(&pevtpriv->c2h_wk);
 	while (pevtpriv->c2h_wk_alive)
@@ -229,13 +229,13 @@ void _rtw_free_evt_priv(struct	evt_priv *pevtpriv)
 
 	while (!rtw_cbuf_empty(pevtpriv->c2h_queue)) {
 		void *c2h = rtw_cbuf_pop(pevtpriv->c2h_queue);
-		if (c2h != NULL && c2h != (void *)pevtpriv) {
+
+		if (c2h != NULL && c2h != (void *)pevtpriv)
 			kfree(c2h);
-		}
 	}
 	kfree(pevtpriv->c2h_queue);
 
-	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("-_rtw_free_evt_priv\n"));
+	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("-%s\n", __func__));
 }
 
 void _rtw_free_cmd_priv(struct	cmd_priv *pcmdpriv)
@@ -250,14 +250,14 @@ void _rtw_free_cmd_priv(struct	cmd_priv *pcmdpriv)
 }
 
 /*
-Calling Context:
-
-rtw_enqueue_cmd can only be called between kernel thread,
-since only spin_lock is used.
-
-ISR/Call-Back functions can't call this sub-function.
-
-*/
+ * Calling Context:
+ *
+ * rtw_enqueue_cmd can only be called between kernel thread,
+ * since only spin_lock is used.
+ *
+ * ISR/Call-Back functions can't call this sub-function.
+ *
+ */
 
 int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
 {
@@ -300,13 +300,13 @@ struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue)
 
 void rtw_free_evt_priv(struct	evt_priv *pevtpriv)
 {
-	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("rtw_free_evt_priv\n"));
+	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("%s\n", __func__));
 	_rtw_free_evt_priv(pevtpriv);
 }
 
 void rtw_free_cmd_priv(struct	cmd_priv *pcmdpriv)
 {
-	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("rtw_free_cmd_priv\n"));
+	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("%s\n", __func__));
 	_rtw_free_cmd_priv(pcmdpriv);
 }
 
@@ -322,10 +322,10 @@ int rtw_cmd_filter(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 		|| atomic_read(&(pcmdpriv->cmdthd_running)) == false	/* com_thread not running */
 	) {
 		/* DBG_871X("%s:%s: drop cmdcode:%u, hw_init_completed:%u, cmdthd_running:%u\n", caller_func, __func__, */
-		/* 	cmd_obj->cmdcode, */
-		/* 	pcmdpriv->padapter->hw_init_completed, */
-		/* 	pcmdpriv->cmdthd_running */
-		/*  */
+		/*	cmd_obj->cmdcode, */
+		/*	pcmdpriv->padapter->hw_init_completed, */
+		/*	pcmdpriv->cmdthd_running */
+		/*	) */
 
 		return _FAIL;
 	}
@@ -339,14 +339,13 @@ int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 	int res = _FAIL;
 	struct adapter *padapter = pcmdpriv->padapter;
 
-	if (cmd_obj == NULL) {
+	if (cmd_obj == NULL)
 		goto exit;
-	}
 
 	cmd_obj->padapter = padapter;
 
 	res = rtw_cmd_filter(pcmdpriv, cmd_obj);
-	if (_FAIL == res) {
+	if (res == _FAIL) {
 		rtw_free_cmd_obj(cmd_obj);
 		goto exit;
 	}
@@ -417,7 +416,7 @@ int rtw_cmd_thread(void *context)
 	atomic_set(&(pcmdpriv->cmdthd_running), true);
 	complete(&pcmdpriv->terminate_cmdthread_comp);
 
-	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("start r871x rtw_cmd_thread !!!!\n"));
+	RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("start r871x %s !!!!\n", __func__));
 
 	while (1) {
 		if (wait_for_completion_interruptible(&pcmdpriv->cmd_queue_comp)) {
@@ -462,7 +461,7 @@ int rtw_cmd_thread(void *context)
 
 		cmd_start_time = jiffies;
 
-		if (_FAIL == rtw_cmd_filter(pcmdpriv, pcmd)) {
+		if (rtw_cmd_filter(pcmdpriv, pcmd) == _FAIL) {
 			pcmd->res = H2C_DROPPED;
 			goto post_process;
 		}
@@ -543,9 +542,8 @@ int rtw_cmd_thread(void *context)
 
 		if (pcmd->cmdcode == GEN_CMD_CODE(_Set_Drv_Extra)) {
 			extra_parm = (struct drvextra_cmd_parm *)pcmd->parmbuf;
-			if (extra_parm->pbuf && extra_parm->size > 0) {
+			if (extra_parm->pbuf && extra_parm->size > 0)
 				kfree(extra_parm->pbuf);
-			}
 		}
 
 		rtw_free_cmd_obj(pcmd);
@@ -558,22 +556,21 @@ int rtw_cmd_thread(void *context)
 }
 
 /*
-rtw_sitesurvey_cmd(~)
-	### NOTE:#### (!!!!)
-	MUST TAKE CARE THAT BEFORE CALLING THIS FUNC, YOU SHOULD HAVE LOCKED pmlmepriv->lock
-*/
+ * rtw_sitesurvey_cmd(~)
+ *	### NOTE:#### (!!!!)
+ *	MUST TAKE CARE THAT BEFORE CALLING THIS FUNC, YOU SHOULD HAVE LOCKED pmlmepriv->lock
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
 
-	if (check_fwstate(pmlmepriv, _FW_LINKED) == true) {
+	if (check_fwstate(pmlmepriv, _FW_LINKED) == true)
 		rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_SCAN, 1);
-	}
 
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
 	if (ph2c == NULL)
@@ -597,6 +594,7 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
 	/* prepare ssid list */
 	if (ssid) {
 		int i;
+
 		for (i = 0; i < ssid_num && i < RTW_SSID_SCAN_AMOUNT; i++) {
 			if (ssid[i].SsidLength) {
 				memcpy(&psurveyPara->ssid[i], &ssid[i], sizeof(struct ndis_802_11_ssid));
@@ -611,6 +609,7 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
 	/* prepare channel list */
 	if (ch) {
 		int i;
+
 		for (i = 0; i < ch_num && i < RTW_CHANNEL_SCAN_AMOUNT; i++) {
 			if (ch[i].hw_value && !(ch[i].flags & RTW_IEEE80211_CHAN_DISABLED)) {
 				memcpy(&psurveyPara->ch[i], &ch[i], sizeof(struct rtw_ieee80211_channel));
@@ -675,16 +674,15 @@ void rtw_getbbrfreg_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *p
 u8 rtw_createbss_cmd(struct adapter  *padapter)
 {
 	struct cmd_obj *pcmd;
-	struct cmd_priv 			*pcmdpriv = &padapter->cmdpriv;
-	struct mlme_priv 		*pmlmepriv = &padapter->mlmepriv;
+	struct cmd_priv			*pcmdpriv = &padapter->cmdpriv;
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
@@ -759,28 +757,27 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
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
 		res = _FAIL;
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("rtw_joinbss_cmd: memory allocate for cmd_obj fail!!!\n"));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("%s: memory allocate for cmd_obj fail!!!\n", __func__));
 		goto exit;
 	}
 	/* for IEs is fix buf size */
@@ -814,11 +811,10 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 
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
@@ -826,9 +822,8 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	/*  If not,  we have to copy the connecting AP's MAC address to it so that */
 	/*  the driver just has the bssid information for PMKIDList searching. */
 
-	if (pmlmepriv->assoc_by_bssid == false) {
+	if (pmlmepriv->assoc_by_bssid == false)
 		memcpy(&pmlmepriv->assoc_bssid[0], &pnetwork->network.MacAddress[0], ETH_ALEN);
-	}
 
 	psecnetwork->IELength = rtw_restruct_sec_ie(padapter, &pnetwork->network.IEs[0], &psecnetwork->IEs[0], pnetwork->network.IELength);
 
@@ -849,9 +844,9 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	phtpriv->ht_option = false;
 	ptmp = rtw_get_ie(&pnetwork->network.IEs[12], _HT_CAPABILITY_IE_, &tmp_len, pnetwork->network.IELength-12);
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
@@ -891,7 +886,7 @@ u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueu
 	struct cmd_priv *cmdpriv = &padapter->cmdpriv;
 	u8 res = _SUCCESS;
 
-	RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_, ("+rtw_disassoc_cmd\n"));
+	RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_, ("+%s\n", __func__));
 
 	/* prepare cmd parameter */
 	param = rtw_zmalloc(sizeof(*param));
@@ -913,7 +908,7 @@ u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueu
 		res = rtw_enqueue_cmd(cmdpriv, cmdobj);
 	} else {
 		/* no need to enqueue, do the cmd hdl directly and free cmd parameter */
-		if (H2C_SUCCESS != disconnect_hdl(padapter, (u8 *)param))
+		if (disconnect_hdl(padapter, (u8 *)param) != H2C_SUCCESS)
 			res = _FAIL;
 		kfree(param);
 	}
@@ -959,12 +954,12 @@ u8 rtw_setopmode_cmd(struct adapter  *padapter, enum NDIS_802_11_NETWORK_INFRAST
 u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_key, bool enqueue)
 {
 	struct cmd_obj *ph2c;
-	struct set_stakey_parm	*psetstakey_para;
-	struct cmd_priv 			*pcmdpriv = &padapter->cmdpriv;
+	struct set_stakey_parm		*psetstakey_para;
+	struct cmd_priv			*pcmdpriv = &padapter->cmdpriv;
 	struct set_stakey_rsp		*psetstakey_rsp = NULL;
 
-	struct mlme_priv 		*pmlmepriv = &padapter->mlmepriv;
-	struct security_priv 	*psecuritypriv = &padapter->securitypriv;
+	struct mlme_priv		*pmlmepriv = &padapter->mlmepriv;
+	struct security_priv	*psecuritypriv = &padapter->securitypriv;
 	u8 res = _SUCCESS;
 
 	psetstakey_para = rtw_zmalloc(sizeof(struct set_stakey_parm));
@@ -975,17 +970,15 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
 
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
@@ -1020,10 +1013,10 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
 
 u8 rtw_clearstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 enqueue)
 {
-	struct cmd_obj *ph2c;
+	struct cmd_obj		*ph2c;
 	struct set_stakey_parm	*psetstakey_para;
-	struct cmd_priv 			*pcmdpriv = &padapter->cmdpriv;
-	struct set_stakey_rsp		*psetstakey_rsp = NULL;
+	struct cmd_priv		*pcmdpriv = &padapter->cmdpriv;
+	struct set_stakey_rsp	*psetstakey_rsp = NULL;
 	s16 cam_id = 0;
 	u8 res = _SUCCESS;
 
@@ -1073,8 +1066,8 @@ u8 rtw_clearstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 enqueu
 
 u8 rtw_addbareq_cmd(struct adapter *padapter, u8 tid, u8 *addr)
 {
-	struct cmd_priv 	*pcmdpriv = &padapter->cmdpriv;
-	struct cmd_obj *ph2c;
+	struct cmd_priv		*pcmdpriv = &padapter->cmdpriv;
+	struct cmd_obj		*ph2c;
 	struct addBaReq_parm	*paddbareq_parm;
 
 	u8 res = _SUCCESS;
@@ -1219,7 +1212,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue, u8 swconf
 
 	u8 res = _SUCCESS;
 
-	RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_, ("+rtw_set_chplan_cmd\n"));
+	RT_TRACE(_module_rtl871x_cmd_c_, _drv_notice_, ("+%s\n", __func__));
 
 	/*  check if allow software config */
 	if (swconfig && rtw_hal_is_disable_sw_channel_plan(padapter) == true) {
@@ -1254,7 +1247,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue, u8 swconf
 		res = rtw_enqueue_cmd(pcmdpriv, pcmdobj);
 	} else {
 		/* no need to enqueue, do the cmd hdl directly and free cmd parameter */
-		if (H2C_SUCCESS != set_chplan_hdl(padapter, (unsigned char *)setChannelPlan_param))
+		if (set_chplan_hdl(padapter, (unsigned char *)setChannelPlan_param) != H2C_SUCCESS)
 			res = _FAIL;
 
 		kfree(setChannelPlan_param);
@@ -1301,7 +1294,7 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
 	u8 bBusyTraffic = false, bTxBusyTraffic = false, bRxBusyTraffic = false;
 	u8 bHigherBusyTraffic = false, bHigherBusyRxTraffic = false, bHigherBusyTxTraffic = false;
 
-	struct mlme_priv 	*pmlmepriv = &(padapter->mlmepriv);
+	struct mlme_priv	*pmlmepriv = &(padapter->mlmepriv);
 
 	collect_traffic_statistics(padapter);
 
@@ -1312,7 +1305,7 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
 		/*&& !MgntInitAdapterInProgress(pMgntInfo)*/) {
 		/*  if we raise bBusyTraffic in last watchdog, using lower threshold. */
 		if (pmlmepriv->LinkDetectInfo.bBusyTraffic)
-				BusyThreshold = BusyThresholdLow;
+			BusyThreshold = BusyThresholdLow;
 
 		if (pmlmepriv->LinkDetectInfo.NumRxOkInPeriod > BusyThreshold ||
 			pmlmepriv->LinkDetectInfo.NumTxOkInPeriod > BusyThreshold) {
@@ -1349,9 +1342,8 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
 
 				/* DBG_871X("Set TrafficTransitionCount to %d\n", pmlmepriv->LinkDetectInfo.TrafficTransitionCount); */
 
-				if (pmlmepriv->LinkDetectInfo.TrafficTransitionCount > 30/*TrafficTransitionLevel*/) {
+				if (pmlmepriv->LinkDetectInfo.TrafficTransitionCount > 30/*TrafficTransitionLevel*/)
 					pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 30;
-				}
 			}
 		} else {
 			/* DBG_871X("(+)Tx = %d, Rx = %d\n", pmlmepriv->LinkDetectInfo.NumTxOkInPeriod, pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod); */
@@ -1403,11 +1395,11 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
 static void dynamic_chk_wk_hdl(struct adapter *padapter)
 {
 	struct mlme_priv *pmlmepriv;
+
 	pmlmepriv = &(padapter->mlmepriv);
 
-	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true) {
+	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true)
 		expire_timeout_chk(padapter);
-	}
 
 	/* for debug purpose */
 	_linked_info_dump(padapter);
@@ -1501,7 +1493,7 @@ u8 rtw_lps_ctrl_wk_cmd(struct adapter *padapter, u8 lps_ctrl_type, u8 enqueue)
 	u8 res = _SUCCESS;
 
 	/* if (!pwrctrlpriv->bLeisurePs) */
-	/* 	return res; */
+	/*	return res; */
 
 	if (enqueue) {
 		ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
@@ -1606,9 +1598,8 @@ static void rtw_lps_change_dtim_hdl(struct adapter *padapter, u8 dtim)
 
 static void rtw_dm_ra_mask_hdl(struct adapter *padapter, struct sta_info *psta)
 {
-	if (psta) {
+	if (psta)
 		set_sta_rate(padapter, psta);
-	}
 }
 
 u8 rtw_dm_ra_mask_wk_cmd(struct adapter *padapter, u8 *psta)
@@ -1977,9 +1968,8 @@ u8 rtw_drvextra_cmd_hdl(struct adapter *padapter, unsigned char *pbuf)
 		break;
 	}
 
-	if (pdrvextra_cmd->pbuf && pdrvextra_cmd->size > 0) {
+	if (pdrvextra_cmd->pbuf && pdrvextra_cmd->size > 0)
 		kfree(pdrvextra_cmd->pbuf);
-	}
 
 	return H2C_SUCCESS;
 }
@@ -2044,8 +2034,8 @@ void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 	if (pcmd->parmbuf == NULL)
 		goto exit;
 
-	if ((pcmd->res != H2C_SUCCESS)) {
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\n ********Error: rtw_createbss_cmd_callback  Fail ************\n\n."));
+	if (pcmd->res != H2C_SUCCESS) {
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\n ********Error: %s  Fail ************\n\n.", __func__));
 		_set_timer(&pmlmepriv->assoc_timer, 1);
 	}
 
@@ -2116,7 +2106,7 @@ void rtw_setstaKey_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *pc
 	struct sta_info *psta = rtw_get_stainfo(pstapriv, psetstakey_rsp->addr);
 
 	if (psta == NULL) {
-		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\nERROR: rtw_setstaKey_cmdrsp_callback => can't get sta_info\n\n"));
+		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\nERROR: %s => can't get sta_info\n\n", __func__));
 		goto exit;
 	}
 exit:
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
