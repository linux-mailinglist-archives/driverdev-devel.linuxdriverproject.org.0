Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5910E299958
	for <lists+driverdev-devel@lfdr.de>; Mon, 26 Oct 2020 23:09:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 0E15B857C5;
	Mon, 26 Oct 2020 22:09:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OB7-Z8w7vDGw; Mon, 26 Oct 2020 22:09:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id EB7408444F;
	Mon, 26 Oct 2020 22:09:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id DE5761BF30F
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 22:09:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id CED24863D9
 for <devel@linuxdriverproject.org>; Mon, 26 Oct 2020 22:09:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IufnYo6quiQq for <devel@linuxdriverproject.org>;
 Mon, 26 Oct 2020 22:09:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com
 [209.85.218.68])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4F19A861B2
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 22:09:26 +0000 (UTC)
Received: by mail-ej1-f68.google.com with SMTP id d6so11433192ejb.11
 for <devel@driverdev.osuosl.org>; Mon, 26 Oct 2020 15:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=UHffwcZL6YfIztNfWK8HFe7VlIyI7RWNF1EVd5wUm4Y=;
 b=oK+/2Tzo8lBD0XsEbFosxbts3h2AhouvzHsURhoftuXM0fqDk2xAd87Gs1L7PmHYB9
 YAsNESPqsolxBZrJUboYDoUfTlODZFORLIiRTO6rrCXaz41vXnd/xlQIZ58j8I4sZ/pq
 /B4brblA6nkHW3O6XdNXynzgkI6ri+E1sxrG3Sy2106ijod4zOpq9iAIGmZEFGrLATHz
 dek4Y+UFpxc3mrAy9r3Np9oQVko5TZQ0wkQuVsjfxbWzeBHOuVJN3Oh6zHfER19z0H7h
 ddYngUeEN/rzQx6VmS69QR9agZTe5Knip3zpjR2tXjBNgM+sA9p+3de3fBmwWoZ2z6+X
 f0jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=UHffwcZL6YfIztNfWK8HFe7VlIyI7RWNF1EVd5wUm4Y=;
 b=miyanidUchCXBMxdG4WCZkEt5GahJ4RYyHZ78T6RCUrVGu5UYe9X8SgSKz1Z5Ary+S
 mQoCP/FC9eNTbopwq/XEHKDIQKPzFfAyPnw0OWgv4xmOeCqp3cNiAHKDDH1Ha/ae1bY8
 6MGxkSKVQlvaFSJrjaxeqwdlW5mfqjxr3NkrI6vsofrHrn9Br1k7XW0GCDU7rOIc+k/U
 X0zg5NxKRtoQydiK4T3lFN1wxl0UjL5PQctiL/zsDo4mIs1kz2cJ7FZ///A/rPOPDeWt
 apnQ4Qc3jOOv8dL5Heki2BUrod9s3z2cratVO+2flKE96twNPg1SzMSdL3rLI4ool4ZB
 ODMw==
X-Gm-Message-State: AOAM533uGpk7wWosoOnIahqoulqSOlsl7sEn0Ut8httAJSPirE9CtToE
 y9aXQq3xPK8Wmdzn5nh6kYM=
X-Google-Smtp-Source: ABdhPJzUWLHMTu+8xDzfFpDfMGLfzneeXQDs13jE3wrevxCEgwE/zzBxN3+UvdG+pOLK1yCoTGRNRw==
X-Received: by 2002:a17:906:57c6:: with SMTP id
 u6mr9187351ejr.375.1603750164441; 
 Mon, 26 Oct 2020 15:09:24 -0700 (PDT)
Received: from localhost.localdomain ([185.200.214.168])
 by smtp.gmail.com with ESMTPSA id g20sm6831021ejz.88.2020.10.26.15.09.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Oct 2020 15:09:23 -0700 (PDT)
From: izabela.bakollari@gmail.com
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8723bs: Replace the comparision method
Date: Mon, 26 Oct 2020 23:09:20 +0100
Message-Id: <20201026220920.41538-1-izabela.bakollari@gmail.com>
X-Mailer: git-send-email 2.18.4
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Izabela Bakollari <izabela.bakollari@gmail.com>, linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Izabela Bakollari <izabela.bakollari@gmail.com>

Replace the value comparision method by using the logical NOT
operator instead of comparing the value to NULL.

Signed-off-by: Izabela Bakollari <izabela.bakollari@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c       |  18 ++--
 drivers/staging/rtl8723bs/core/rtw_cmd.c      | 102 +++++++++---------
 .../staging/rtl8723bs/core/rtw_ioctl_set.c    |   4 +-
 drivers/staging/rtl8723bs/core/rtw_mlme.c     |   4 +-
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  62 +++++------
 drivers/staging/rtl8723bs/core/rtw_security.c |   6 +-
 drivers/staging/rtl8723bs/include/rtw_recv.h  |  10 +-
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c |  30 +++---
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    |  44 ++++----
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   |   4 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c |   2 +-
 drivers/staging/rtl8723bs/os_dep/sdio_intf.c  |  12 +--
 12 files changed, 149 insertions(+), 149 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 4f270d509ad3..125ecf0eea81 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1137,7 +1137,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 			break;
 		}
 
-		if ((p == NULL) || (ie_len == 0))
+		if (!p || ie_len == 0)
 				break;
 	}
 
@@ -1166,7 +1166,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 				break;
 			}
 
-			if ((p == NULL) || (ie_len == 0))
+			if (!p || ie_len == 0)
 				break;
 		}
 	}
@@ -1297,7 +1297,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	psta = rtw_get_stainfo(&padapter->stapriv, pbss_network->MacAddress);
 	if (!psta) {
 		psta = rtw_alloc_stainfo(&padapter->stapriv, pbss_network->MacAddress);
-		if (psta == NULL)
+		if (!psta)
 			return _FAIL;
 	}
 
@@ -1454,7 +1454,7 @@ u8 rtw_ap_set_pairwise_key(struct adapter *padapter, struct sta_info *psta)
 	}
 
 	psetstakey_para = rtw_zmalloc(sizeof(struct set_stakey_parm));
-	if (psetstakey_para == NULL) {
+	if !(psetstakey_para) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
@@ -1492,12 +1492,12 @@ static int rtw_ap_set_key(
 	/* DBG_871X("%s\n", __func__); */
 
 	pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (pcmd == NULL) {
+	if (!pcmd) {
 		res = _FAIL;
 		goto exit;
 	}
 	psetkeyparm = rtw_zmalloc(sizeof(struct setkey_parm));
-	if (psetkeyparm == NULL) {
+	if (!psetkeyparm) {
 		kfree(pcmd);
 		res = _FAIL;
 		goto exit;
@@ -1669,11 +1669,11 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 		&wps_ielen
 	);
 
-	if (pwps_ie == NULL || wps_ielen == 0)
+	if (!pwps_ie || wps_ielen == 0)
 		return;
 
 	pwps_ie_src = pmlmepriv->wps_beacon_ie;
-	if (pwps_ie_src == NULL)
+	if (!pwps_ie_src)
 		return;
 
 	wps_offset = (uint)(pwps_ie - ie);
@@ -2323,7 +2323,7 @@ void rtw_ap_restore_network(struct adapter *padapter)
 	for (i = 0; i < chk_alive_num; i++) {
 		psta = rtw_get_stainfo_by_offset(pstapriv, chk_alive_list[i]);
 
-		if (psta == NULL) {
+		if (!psta) {
 			DBG_871X(FUNC_ADPT_FMT" sta_info is null\n", FUNC_ADPT_ARG(padapter));
 		} else if (psta->state & _FW_LINKED) {
 			rtw_sta_media_status_rpt(padapter, psta, 1);
diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 2abe205e3453..5427afa2d641 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -263,7 +263,7 @@ int _rtw_enqueue_cmd(struct __queue *queue, struct cmd_obj *obj)
 {
 	_irqL irqL;
 
-	if (obj == NULL)
+	if (!obj)
 		goto exit;
 
 	/* spin_lock_bh(&queue->lock); */
@@ -339,7 +339,7 @@ int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 	int res = _FAIL;
 	struct adapter *padapter = pcmdpriv->padapter;
 
-	if (cmd_obj == NULL) {
+	if (!cmd_obj) {
 		goto exit;
 	}
 
@@ -513,7 +513,7 @@ int rtw_cmd_thread(void *context)
 		/* call callback function for post-processed */
 		if (pcmd->cmdcode < ARRAY_SIZE(rtw_cmd_callback)) {
 			pcmd_callback = rtw_cmd_callback[pcmd->cmdcode].callback;
-			if (pcmd_callback == NULL) {
+			if (!pcmd_callback) {
 				RT_TRACE(_module_rtl871x_cmd_c_, _drv_info_, ("mlme_cmd_hdl(): pcmd_callback = 0x%p, cmdcode = 0x%x\n", pcmd_callback, pcmd->cmdcode));
 				rtw_free_cmd_obj(pcmd);
 			} else {
@@ -534,7 +534,7 @@ int rtw_cmd_thread(void *context)
 	/*  free all cmd_obj resources */
 	do {
 		pcmd = rtw_dequeue_cmd(pcmdpriv);
-		if (pcmd == NULL) {
+		if (!pcmd) {
 			rtw_unregister_cmd_alive(padapter);
 			break;
 		}
@@ -576,11 +576,11 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
 	}
 
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (ph2c == NULL)
+	if (!ph2c)
 		return _FAIL;
 
 	psurveyPara = rtw_zmalloc(sizeof(struct sitesurvey_parm));
-	if (psurveyPara == NULL) {
+	if (!psurveyPara) {
 		kfree(ph2c);
 		return _FAIL;
 	}
@@ -644,13 +644,13 @@ u8 rtw_setdatarate_cmd(struct adapter *padapter, u8 *rateset)
 	u8 res = _SUCCESS;
 
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
 
 	pbsetdataratepara = rtw_zmalloc(sizeof(struct setdatarate_parm));
-	if (pbsetdataratepara == NULL) {
+	if (!pbsetdataratepara) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
@@ -687,7 +687,7 @@ u8 rtw_createbss_cmd(struct adapter  *padapter)
 	}
 
 	pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (pcmd == NULL) {
+	if (!pcmd) {
 		res = _FAIL;
 		goto exit;
 	}
@@ -720,7 +720,7 @@ int rtw_startbss_cmd(struct adapter  *padapter, int flags)
 	} else {
 		/* need enqueue, prepare cmd_obj and enqueue */
 		pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
-		if (pcmd == NULL) {
+		if (!pcmd) {
 			res = _FAIL;
 			goto exit;
 		}
@@ -778,7 +778,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	}
 
 	pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (pcmd == NULL) {
+	if (!pcmd) {
 		res = _FAIL;
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("rtw_joinbss_cmd: memory allocate for cmd_obj fail!!!\n"));
 		goto exit;
@@ -895,7 +895,7 @@ u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueu
 
 	/* prepare cmd parameter */
 	param = rtw_zmalloc(sizeof(*param));
-	if (param == NULL) {
+	if (!param) {
 		res = _FAIL;
 		goto exit;
 	}
@@ -904,7 +904,7 @@ u8 rtw_disassoc_cmd(struct adapter *padapter, u32 deauth_timeout_ms, bool enqueu
 	if (enqueue) {
 		/* need enqueue, prepare cmd_obj and enqueue */
 		cmdobj = rtw_zmalloc(sizeof(*cmdobj));
-		if (cmdobj == NULL) {
+		if (!cmdobj) {
 			res = _FAIL;
 			kfree(param);
 			goto exit;
@@ -932,7 +932,7 @@ u8 rtw_setopmode_cmd(struct adapter  *padapter, enum NDIS_802_11_NETWORK_INFRAST
 
 	psetop = rtw_zmalloc(sizeof(struct setopmode_parm));
 
-	if (psetop == NULL) {
+	if (!psetop) {
 		res = _FAIL;
 		goto exit;
 	}
@@ -940,7 +940,7 @@ u8 rtw_setopmode_cmd(struct adapter  *padapter, enum NDIS_802_11_NETWORK_INFRAST
 
 	if (enqueue) {
 		ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-		if (ph2c == NULL) {
+		if (!ph2c) {
 			kfree(psetop);
 			res = _FAIL;
 			goto exit;
@@ -968,7 +968,7 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
 	u8 res = _SUCCESS;
 
 	psetstakey_para = rtw_zmalloc(sizeof(struct set_stakey_parm));
-	if (psetstakey_para == NULL) {
+	if (!psetstakey_para) {
 		res = _FAIL;
 		goto exit;
 	}
@@ -992,14 +992,14 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
 
 	if (enqueue) {
 		ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-		if (ph2c == NULL) {
+		if (!ph2c) {
 			kfree(psetstakey_para);
 			res = _FAIL;
 			goto exit;
 		}
 
 		psetstakey_rsp = rtw_zmalloc(sizeof(struct set_stakey_rsp));
-		if (psetstakey_rsp == NULL) {
+		if (!psetstakey_rsp) {
 			kfree(ph2c);
 			kfree(psetstakey_para);
 			res = _FAIL;
@@ -1035,20 +1035,20 @@ u8 rtw_clearstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 enqueu
 		}
 	} else {
 		ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-		if (ph2c == NULL) {
+		if (!ph2c) {
 			res = _FAIL;
 			goto exit;
 		}
 
 		psetstakey_para = rtw_zmalloc(sizeof(struct set_stakey_parm));
-		if (psetstakey_para == NULL) {
+		if (!psetstakey_para) {
 			kfree(ph2c);
 			res = _FAIL;
 			goto exit;
 		}
 
 		psetstakey_rsp = rtw_zmalloc(sizeof(struct set_stakey_rsp));
-		if (psetstakey_rsp == NULL) {
+		if (!psetstakey_rsp) {
 			kfree(ph2c);
 			kfree(psetstakey_para);
 			res = _FAIL;
@@ -1080,13 +1080,13 @@ u8 rtw_addbareq_cmd(struct adapter *padapter, u8 tid, u8 *addr)
 	u8 res = _SUCCESS;
 
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
 
 	paddbareq_parm = rtw_zmalloc(sizeof(struct addBaReq_parm));
-	if (paddbareq_parm == NULL) {
+	if (!paddbareq_parm) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
@@ -1114,13 +1114,13 @@ u8 rtw_reset_securitypriv_cmd(struct adapter *padapter)
 	u8 res = _SUCCESS;
 
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
 
 	pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
-	if (pdrvextra_cmd_parm == NULL) {
+	if (!pdrvextra_cmd_parm) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
@@ -1149,13 +1149,13 @@ u8 rtw_free_assoc_resources_cmd(struct adapter *padapter)
 	u8 res = _SUCCESS;
 
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
 
 	pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
-	if (pdrvextra_cmd_parm == NULL) {
+	if (!pdrvextra_cmd_parm) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
@@ -1185,13 +1185,13 @@ u8 rtw_dynamic_chk_wk_cmd(struct adapter *padapter)
 
 	/* only  primary padapter does this cmd */
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
 
 	pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
-	if (pdrvextra_cmd_parm == NULL) {
+	if (!pdrvextra_cmd_parm) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
@@ -1235,7 +1235,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue, u8 swconf
 
 	/* prepare cmd parameter */
 	setChannelPlan_param = rtw_zmalloc(sizeof(struct SetChannelPlan_param));
-	if (setChannelPlan_param == NULL) {
+	if (!setChannelPlan_param) {
 		res = _FAIL;
 		goto exit;
 	}
@@ -1244,7 +1244,7 @@ u8 rtw_set_chplan_cmd(struct adapter *padapter, u8 chplan, u8 enqueue, u8 swconf
 	if (enqueue) {
 		/* need enqueue, prepare cmd_obj and enqueue */
 		pcmdobj = rtw_zmalloc(sizeof(struct cmd_obj));
-		if (pcmdobj == NULL) {
+		if (!pcmdobj) {
 			kfree(setChannelPlan_param);
 			res = _FAIL;
 			goto exit;
@@ -1505,13 +1505,13 @@ u8 rtw_lps_ctrl_wk_cmd(struct adapter *padapter, u8 lps_ctrl_type, u8 enqueue)
 
 	if (enqueue) {
 		ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-		if (ph2c == NULL) {
+		if (!ph2c) {
 			res = _FAIL;
 			goto exit;
 		}
 
 		pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
-		if (pdrvextra_cmd_parm == NULL) {
+		if (!pdrvextra_cmd_parm) {
 			kfree(ph2c);
 			res = _FAIL;
 			goto exit;
@@ -1547,13 +1547,13 @@ u8 rtw_dm_in_lps_wk_cmd(struct adapter *padapter)
 
 
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
 
 	pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
-	if (pdrvextra_cmd_parm == NULL) {
+	if (!pdrvextra_cmd_parm) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
@@ -1620,13 +1620,13 @@ u8 rtw_dm_ra_mask_wk_cmd(struct adapter *padapter, u8 *psta)
 
 
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
 
 	pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
-	if (pdrvextra_cmd_parm == NULL) {
+	if (!pdrvextra_cmd_parm) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
@@ -1655,13 +1655,13 @@ u8 rtw_ps_cmd(struct adapter *padapter)
 	u8 res = _SUCCESS;
 
 	ppscmd = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (ppscmd == NULL) {
+	if (!ppscmd) {
 		res = _FAIL;
 		goto exit;
 	}
 
 	pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
-	if (pdrvextra_cmd_parm == NULL) {
+	if (!pdrvextra_cmd_parm) {
 		kfree(ppscmd);
 		res = _FAIL;
 		goto exit;
@@ -1727,13 +1727,13 @@ u8 rtw_chk_hi_queue_cmd(struct adapter *padapter)
 	u8 res = _SUCCESS;
 
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
 
 	pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
-	if (pdrvextra_cmd_parm == NULL) {
+	if (!pdrvextra_cmd_parm) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
@@ -1821,13 +1821,13 @@ u8 rtw_c2h_packet_wk_cmd(struct adapter *padapter, u8 *pbuf, u16 length)
 	u8 res = _SUCCESS;
 
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
 
 	pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
-	if (pdrvextra_cmd_parm == NULL) {
+	if (!pdrvextra_cmd_parm) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
@@ -1856,13 +1856,13 @@ u8 rtw_c2h_wk_cmd(struct adapter *padapter, u8 *c2h_evt)
 	u8 res = _SUCCESS;
 
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
 
 	pdrvextra_cmd_parm = rtw_zmalloc(sizeof(struct drvextra_cmd_parm));
-	if (pdrvextra_cmd_parm == NULL) {
+	if (!pdrvextra_cmd_parm) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
@@ -2040,7 +2040,7 @@ void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 	struct wlan_bssid_ex *pnetwork = (struct wlan_bssid_ex *)pcmd->parmbuf;
 	struct wlan_network *tgt_network = &(pmlmepriv->cur_network);
 
-	if (pcmd->parmbuf == NULL)
+	if (!(pcmd->parmbuf))
 		goto exit;
 
 	if ((pcmd->res != H2C_SUCCESS)) {
@@ -2057,7 +2057,7 @@ void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 		psta = rtw_get_stainfo(&padapter->stapriv, pnetwork->MacAddress);
 		if (!psta) {
 			psta = rtw_alloc_stainfo(&padapter->stapriv, pnetwork->MacAddress);
-			if (psta == NULL) {
+			if (!psta) {
 				RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\nCan't alloc sta_info when createbss_cmd_callback\n"));
 				goto createbss_cmd_fail;
 			}
@@ -2067,9 +2067,9 @@ void rtw_createbss_cmd_callback(struct adapter *padapter, struct cmd_obj *pcmd)
 	} else {
 		pwlan = rtw_alloc_network(pmlmepriv);
 		spin_lock_bh(&(pmlmepriv->scanned_queue.lock));
-		if (pwlan == NULL) {
+		if (!pwlan) {
 			pwlan = rtw_get_oldest_wlan_network(&pmlmepriv->scanned_queue);
-			if (pwlan == NULL) {
+			if (!pwlan) {
 				RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\n Error:  can't get pwlan in rtw_joinbss_event_callback\n"));
 				spin_unlock_bh(&(pmlmepriv->scanned_queue.lock));
 				goto createbss_cmd_fail;
@@ -2114,7 +2114,7 @@ void rtw_setstaKey_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *pc
 	struct set_stakey_rsp *psetstakey_rsp = (struct set_stakey_rsp *) (pcmd->rsp);
 	struct sta_info *psta = rtw_get_stainfo(pstapriv, psetstakey_rsp->addr);
 
-	if (psta == NULL) {
+	if (!psta) {
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\nERROR: rtw_setstaKey_cmdrsp_callback => can't get sta_info\n\n"));
 		goto exit;
 	}
@@ -2130,7 +2130,7 @@ void rtw_setassocsta_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *
 	struct set_assocsta_rsp *passocsta_rsp = (struct set_assocsta_rsp *) (pcmd->rsp);
 	struct sta_info *psta = rtw_get_stainfo(pstapriv, passocsta_parm->addr);
 
-	if (psta == NULL) {
+	if (!psta) {
 		RT_TRACE(_module_rtl871x_cmd_c_, _drv_err_, ("\nERROR: setassocsta_cmdrsp_callbac => can't get sta_info\n\n"));
 		goto exit;
 	}
diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
index 8b5f6a66bfb8..ac19a1e3a07f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
@@ -508,7 +508,7 @@ u8 rtw_set_802_11_bssid_list_scan(struct adapter *padapter, struct ndis_802_11_s
 
 	RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("+rtw_set_802_11_bssid_list_scan(), fw_state =%x\n", get_fwstate(pmlmepriv)));
 
-	if (padapter == NULL) {
+	if (!padapter) {
 		res = false;
 		goto exit;
 	}
@@ -649,7 +649,7 @@ u16 rtw_get_cur_max_rate(struct adapter *adapter)
 		return 0;
 
 	psta = rtw_get_stainfo(&adapter->stapriv, get_bssid(pmlmepriv));
-	if (psta == NULL)
+	if (!psta)
 		return 0;
 
 	short_GI = query_ra_short_GI(psta);
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 9531ba54e95b..4f1577f3b9c6 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -472,7 +472,7 @@ struct	wlan_network	*rtw_get_oldest_wlan_network(struct __queue *scanned_queue)
 		pwlan = LIST_CONTAINOR(plist, struct wlan_network, list);
 
 		if (!pwlan->fixed) {
-			if (oldest == NULL || time_after(oldest->last_scanned, pwlan->last_scanned))
+			if (!oldest || time_after(oldest->last_scanned, pwlan->last_scanned))
 				oldest = pwlan;
 		}
 
@@ -603,7 +603,7 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
 			/* TODO: don't  select netowrk in the same ess as oldest if it's new enough*/
 		}
 
-		if (oldest == NULL || time_after(oldest->last_scanned, pnetwork->last_scanned))
+		if (!oldest || time_after(oldest->last_scanned, pnetwork->last_scanned))
 			oldest = pnetwork;
 
 		plist = get_next(plist);
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index b912ad2f4b72..a3c91244aef7 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -648,7 +648,7 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 
 		/* new a station */
 		psta = rtw_get_stainfo(pstapriv, get_sa(pframe));
-		if (psta == NULL) {
+		if (!psta) {
 			/*  allocate a new one */
 			DBG_871X("going to alloc stainfo for rc ="MAC_FMT"\n",  MAC_ARG(get_sa(pframe)));
 			psta = rtw_alloc_stainfo(pstapriv, get_sa(pframe));
@@ -951,12 +951,12 @@ unsigned int OnAuth(struct adapter *padapter, union recv_frame *precv_frame)
 	}
 
 	pstat = rtw_get_stainfo(pstapriv, sa);
-	if (pstat == NULL) {
+	if (!pstat) {
 
 		/*  allocate a new one */
 		DBG_871X("going to alloc stainfo for sa ="MAC_FMT"\n",  MAC_ARG(sa));
 		pstat = rtw_alloc_stainfo(pstapriv, sa);
-		if (pstat == NULL) {
+		if (!pstat) {
 			DBG_871X(" Exceed the upper limit of supported clients...\n");
 			status = _STATS_UNABLE_HANDLE_STA_;
 			goto auth_fail;
@@ -1031,7 +1031,7 @@ unsigned int OnAuth(struct adapter *padapter, union recv_frame *precv_frame)
 			p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + 4 + _AUTH_IE_OFFSET_, _CHLGETXT_IE_, (int *)&ie_len,
 					len - WLAN_HDR_A3_LEN - _AUTH_IE_OFFSET_ - 4);
 
-			if ((p == NULL) || (ie_len <= 0)) {
+			if (!p || ie_len <= 0) {
 				DBG_871X("auth rejected because challenge failure!(1)\n");
 				status = _STATS_CHALLENGE_FAIL_;
 				goto auth_fail;
@@ -1127,7 +1127,7 @@ unsigned int OnAuthClient(struct adapter *padapter, union recv_frame *precv_fram
 			p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _AUTH_IE_OFFSET_, _CHLGETXT_IE_, (int *)&len,
 				pkt_len - WLAN_HDR_A3_LEN - _AUTH_IE_OFFSET_);
 
-			if (p == NULL) {
+			if (!p) {
 				/* DBG_871X("marc: no challenge text?\n"); */
 				goto authclnt_fail;
 			}
@@ -1272,7 +1272,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 
 	/*  check if the supported rate is ok */
 	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, _SUPPORTEDRATES_IE_, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
-	if (p == NULL) {
+	if (!p) {
 		DBG_871X("Rx a sta assoc-req which supported rate is empty!\n");
 		/*  use our own rate set as statoin used */
 		/* memcpy(supportRate, AP_BSSRATE, AP_BSSRATE_LEN); */
@@ -2234,13 +2234,13 @@ static struct xmit_frame *_alloc_mgtxmitframe(struct xmit_priv *pxmitpriv, bool
 	else
 		pmgntframe = rtw_alloc_xmitframe_ext(pxmitpriv);
 
-	if (pmgntframe == NULL) {
+	if (!pmgntframe) {
 		DBG_871X(FUNC_ADPT_FMT" alloc xmitframe fail, once:%d\n", FUNC_ADPT_ARG(pxmitpriv->adapter), once);
 		goto exit;
 	}
 
 	pxmitbuf = rtw_alloc_xmitbuf_ext(pxmitpriv);
-	if (pxmitbuf == NULL) {
+	if (!pxmitbuf) {
 		DBG_871X(FUNC_ADPT_FMT" alloc xmitbuf fail\n", FUNC_ADPT_ARG(pxmitpriv->adapter));
 		rtw_free_xmitframe(pxmitpriv, pmgntframe);
 		pmgntframe = NULL;
@@ -2610,11 +2610,11 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
 
 	/* DBG_871X("%s\n", __func__); */
 
-	if (da == NULL)
+	if (!da)
 		return;
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL) {
+	if (!pmgntframe) {
 		DBG_871X("%s, alloc mgnt frame fail\n", __func__);
 		return;
 	}
@@ -2975,7 +2975,7 @@ void issue_auth(struct adapter *padapter, struct sta_info *psta, unsigned short
 	__le16 le_tmp;
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL)
+	if (!pmgntframe)
 		return;
 
 	/* update attribute */
@@ -3111,7 +3111,7 @@ void issue_asocrsp(struct adapter *padapter, unsigned short status, struct sta_i
 	DBG_871X("%s\n", __func__);
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL)
+	if (!pmgntframe)
 		return;
 
 	/* update attribute */
@@ -3243,7 +3243,7 @@ void issue_assocreq(struct adapter *padapter)
 	u8 vs_ie_length = 0;
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL)
+	if (!pmgntframe)
 		goto exit;
 
 	/* update attribute */
@@ -3434,7 +3434,7 @@ static int _issue_nulldata(struct adapter *padapter, unsigned char *da,
 	pmlmeinfo = &(pmlmeext->mlmext_info);
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL)
+	if (!pmgntframe)
 		goto exit;
 
 	/* update attribute */
@@ -3587,7 +3587,7 @@ static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da,
 	DBG_871X("%s\n", __func__);
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL)
+	if (!pmgntframe)
 		goto exit;
 
 	/* update attribute */
@@ -3712,7 +3712,7 @@ static int _issue_deauth(struct adapter *padapter, unsigned char *da,
 	/* DBG_871X("%s to "MAC_FMT"\n", __func__, MAC_ARG(da)); */
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL) {
+	if (!pmgntframe) {
 		goto exit;
 	}
 
@@ -3819,7 +3819,7 @@ void issue_action_SA_Query(struct adapter *padapter, unsigned char *raddr, unsig
 	DBG_871X("%s\n", __func__);
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL) {
+	if (!pmgntframe) {
 		DBG_871X("%s: alloc_mgtxmitframe fail\n", __func__);
 		return;
 	}
@@ -4061,7 +4061,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 	action = ACT_PUBLIC_BSSCOEXIST;
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
-	if (pmgntframe == NULL) {
+	if (!pmgntframe) {
 		return;
 	}
 
@@ -4128,7 +4128,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 			pbss_network = (struct wlan_bssid_ex *)&pnetwork->network;
 
 			p = rtw_get_ie(pbss_network->IEs + _FIXED_IE_LENGTH_, _HT_CAPABILITY_IE_, &len, pbss_network->IELength - _FIXED_IE_LENGTH_);
-			if ((p == NULL) || (len == 0)) {/* non-HT */
+			if (!p || len == 0) {/* non-HT */
 
 				if ((pbss_network->Configuration.DSConfig <= 0) || (pbss_network->Configuration.DSConfig > 14))
 					continue;
@@ -4191,7 +4191,7 @@ unsigned int send_delba(struct adapter *padapter, u8 initiator, u8 *addr)
 			return _SUCCESS;
 
 	psta = rtw_get_stainfo(pstapriv, addr);
-	if (psta == NULL)
+	if (!psta)
 		return _SUCCESS;
 
 	/* DBG_871X("%s:%s\n", __func__, (initiator == 0)?"RX_DIR":"TX_DIR"); */
@@ -4467,7 +4467,7 @@ u8 collect_bss_info(struct adapter *padapter, union recv_frame *precv_frame, str
 
 	/*  checking SSID */
 	p = rtw_get_ie(bssid->IEs + ie_offset, _SSID_IE_, &len, bssid->IELength - ie_offset);
-	if (p == NULL) {
+	if (!p) {
 		DBG_871X("marc: cannot find SSID for survey event\n");
 		return _FAIL;
 	}
@@ -5226,13 +5226,13 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 
 	pcmd_obj = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (pcmd_obj == NULL) {
+	if (!pcmd_obj) {
 		return;
 	}
 
 	cmdsz = (sizeof(struct stadel_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
-	if (pevtcmd == NULL) {
+	if (!pevtcmd) {
 		kfree(pcmd_obj);
 		return;
 	}
@@ -5280,12 +5280,12 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int
 	struct cmd_priv *pcmdpriv = &padapter->cmdpriv;
 
 	pcmd_obj = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (pcmd_obj == NULL)
+	if (!pcmd_obj)
 		return;
 
 	cmdsz = (sizeof(struct stassoc_event) + sizeof(struct C2HEvent_Header));
 	pevtcmd = rtw_zmalloc(cmdsz);
-	if (pevtcmd == NULL) {
+	if (!pevtcmd) {
 		kfree(pcmd_obj);
 		return;
 	}
@@ -5805,12 +5805,12 @@ void survey_timer_hdl(struct timer_list *t)
 		}
 
 		ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-		if (ph2c == NULL) {
+		if (!ph2c) {
 			goto exit_survey_timer_hdl;
 		}
 
 		psurveyPara = rtw_zmalloc(sizeof(struct sitesurvey_parm));
-		if (psurveyPara == NULL) {
+		if (!psurveyPara) {
 			kfree(ph2c);
 			goto exit_survey_timer_hdl;
 		}
@@ -6547,7 +6547,7 @@ u8 chk_bmc_sleepq_cmd(struct adapter *padapter)
 	u8 res = _SUCCESS;
 
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
@@ -6571,13 +6571,13 @@ u8 set_tx_beacon_cmd(struct adapter *padapter)
 	int len_diff = 0;
 
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (ph2c == NULL) {
+	if (!ph2c) {
 		res = _FAIL;
 		goto exit;
 	}
 
 	ptxBeacon_parm = rtw_zmalloc(sizeof(struct Tx_Beacon_param));
-	if (ptxBeacon_parm == NULL) {
+	if (!ptxBeacon_parm) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
@@ -6609,7 +6609,7 @@ u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf)
 	void (*event_callback)(struct adapter *dev, u8 *pbuf);
 	struct evt_priv *pevt_priv = &(padapter->evtpriv);
 
-	if (pbuf == NULL)
+	if (!pbuf)
 		goto _abort_event_;
 
 	peventbuf = (uint *)pbuf;
diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 159d32ace2bc..7afa3c79cf68 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -1912,7 +1912,7 @@ u32 rtw_BIP_verify(struct adapter *padapter, u8 *precvframe)
 	ori_len = pattrib->pkt_len-WLAN_HDR_A3_LEN+BIP_AAD_SIZE;
 	BIP_AAD = rtw_zmalloc(ori_len);
 
-	if (BIP_AAD == NULL) {
+	if (!BIP_AAD) {
 		DBG_871X("BIP AAD allocate fail\n");
 		return _FAIL;
 	}
@@ -2224,7 +2224,7 @@ static void *aes_encrypt_init(u8 *key, size_t len)
 	if (len != 16)
 		return NULL;
 	rk = rtw_malloc(AES_PRIV_SIZE);
-	if (rk == NULL)
+	if (!rk)
 		return NULL;
 	rijndaelKeySetupEnc(rk, key);
 	return rk;
@@ -2277,7 +2277,7 @@ static int omac1_aes_128_vector(u8 *key, size_t num_elem,
 	size_t i, e, left, total_len;
 
 	ctx = aes_encrypt_init(key, 16);
-	if (ctx == NULL)
+	if (!ctx)
 		return -1;
 	memset(cbc, 0, AES_BLOCK_SIZE);
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index 60bf00f35cae..3332c379596a 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -402,7 +402,7 @@ void rtw_reordering_ctrl_timeout_handler(struct timer_list *t);
 static inline u8 *get_rxmem(union recv_frame *precvframe)
 {
 	/* always return rx_head... */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 
 	return precvframe->u.hdr.rx_head;
@@ -412,7 +412,7 @@ static inline u8 *get_recvframe_data(union recv_frame *precvframe)
 {
 
 	/* alwasy return rx_data */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 
 	return precvframe->u.hdr.rx_data;
@@ -426,7 +426,7 @@ static inline u8 *recvframe_pull(union recv_frame *precvframe, sint sz)
 	/* used for extract sz bytes from rx_data, update rx_data and return the updated rx_data to the caller */
 
 
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 
 
@@ -452,7 +452,7 @@ static inline u8 *recvframe_put(union recv_frame *precvframe, sint sz)
 	/* after putting, rx_tail must be still larger than rx_end. */
 	unsigned char * prev_rx_tail;
 
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 
 	prev_rx_tail = precvframe->u.hdr.rx_tail;
@@ -480,7 +480,7 @@ static inline u8 *recvframe_pull_tail(union recv_frame *precvframe, sint sz)
 	/* used for extract sz bytes from rx_end, update rx_end and return the updated rx_end to the caller */
 	/* after pulling, rx_end must be still larger than rx_data. */
 
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 
 	precvframe->u.hdr.rx_tail -= sz;
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 9bb97c39f1a2..11a787bfd07d 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -419,7 +419,7 @@ void rtw_cfg80211_ibss_indicate_connect(struct adapter *padapter)
 		}
 		else
 		{
-			if (scanned == NULL) {
+			if (!scanned) {
 				rtw_warn_on(1);
 				return;
 			}
@@ -467,7 +467,7 @@ void rtw_cfg80211_indicate_connect(struct adapter *padapter)
 
 		/* DBG_871X(FUNC_ADPT_FMT" BSS not found\n", FUNC_ADPT_ARG(padapter)); */
 
-		if (scanned == NULL) {
+		if (!scanned) {
 			rtw_warn_on(1);
 			goto check_bss;
 		}
@@ -598,7 +598,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, struct ieee_pa
 		}
 	}
 
-	if (strcmp(param->u.crypt.alg, "none") == 0 && (psta == NULL))
+	if (strcmp(param->u.crypt.alg, "none") == 0 && !psta)
 	{
 		/* todo:clear default encryption keys */
 
@@ -608,7 +608,7 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, struct ieee_pa
 	}
 
 
-	if (strcmp(param->u.crypt.alg, "WEP") == 0 && (psta == NULL))
+	if (strcmp(param->u.crypt.alg, "WEP") == 0 && !psta)
 	{
 		DBG_8192C("r871x_set_encryption, crypt.alg = WEP\n");
 
@@ -932,7 +932,7 @@ static int rtw_cfg80211_set_encryption(struct net_device *dev, struct ieee_param
 		if (check_fwstate(pmlmepriv, WIFI_STATION_STATE | WIFI_MP_STATE) == true) /* sta mode */
 		{
 			psta = rtw_get_stainfo(pstapriv, get_bssid(pmlmepriv));
-			if (psta == NULL) {
+			if (!psta) {
 				/* DEBUG_ERR(("Set wpa_set_encryption: Obtain Sta_info fail\n")); */
 				DBG_8192C("%s, : Obtain Sta_info fail\n", __func__);
 			}
@@ -1002,7 +1002,7 @@ static int rtw_cfg80211_set_encryption(struct net_device *dev, struct ieee_param
 			}
 
 			pbcmc_sta = rtw_get_bcmc_stainfo(padapter);
-			if (pbcmc_sta == NULL)
+			if (!pbcmc_sta)
 			{
 				/* DEBUG_ERR(("Set OID_802_11_ADD_KEY: bcmc stainfo is null\n")); */
 			}
@@ -1051,7 +1051,7 @@ static int cfg80211_rtw_add_key(struct wiphy *wiphy, struct net_device *ndev,
 
 	param_len = sizeof(struct ieee_param) + params->key_len;
 	param = rtw_malloc(param_len);
-	if (param == NULL)
+	if (!param)
 		return -1;
 
 	memset(param, 0, param_len);
@@ -1215,7 +1215,7 @@ static int cfg80211_rtw_get_station(struct wiphy *wiphy,
 	}
 
 	psta = rtw_get_stainfo(pstapriv, (u8 *)mac);
-	if (psta == NULL) {
+	if (!psta) {
 		DBG_8192C("%s, sta_info is null\n", __func__);
 		ret = -ENOENT;
 		goto exit;
@@ -1464,7 +1464,7 @@ static int rtw_cfg80211_set_probe_req_wpsp2pie(struct adapter *padapter, char *b
 			}
 
 			pmlmepriv->wps_probe_req_ie = rtw_malloc(wps_ielen);
-			if (pmlmepriv->wps_probe_req_ie == NULL) {
+			if (!(pmlmepriv->wps_probe_req_ie)) {
 				DBG_8192C("%s()-%d: rtw_malloc() ERROR!\n", __func__, __LINE__);
 				return -EINVAL;
 
@@ -1497,7 +1497,7 @@ static int cfg80211_rtw_scan(struct wiphy *wiphy
 	struct rtw_wdev_priv *pwdev_priv;
 	struct mlme_priv *pmlmepriv;
 
-	if (ndev == NULL) {
+	if (!ndev) {
 		ret = -EINVAL;
 		goto exit;
 	}
@@ -1785,7 +1785,7 @@ static int rtw_cfg80211_set_wpa_ie(struct adapter *padapter, u8 *pie, size_t iel
 	u8 *pwpa, *pwpa2;
 	u8 null_addr[] = {0, 0, 0, 0, 0, 0};
 
-	if (pie == NULL || !ielen) {
+	if (!pie || !ielen) {
 		/* Treat this as normal case, but need to clear WIFI_UNDER_WPS */
 		_clr_fwstate_(&padapter->mlmepriv, WIFI_UNDER_WPS);
 		goto exit;
@@ -1797,7 +1797,7 @@ static int rtw_cfg80211_set_wpa_ie(struct adapter *padapter, u8 *pie, size_t iel
 	}
 
 	buf = rtw_zmalloc(ielen);
-	if (buf == NULL) {
+	if (!buf) {
 		ret =  -ENOMEM;
 		goto exit;
 	}
@@ -2140,7 +2140,7 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
 			pwep = rtw_malloc(wep_total_len);
-			if (pwep == NULL) {
+			if (!pwep) {
 				DBG_871X(" wpa_set_encryption: pwep allocate fail !!!\n");
 				ret = -ENOMEM;
 				goto exit;
@@ -3075,7 +3075,7 @@ static int cfg80211_rtw_mgmt_tx(struct wiphy *wiphy,
 	struct adapter *padapter;
 	struct rtw_wdev_priv *pwdev_priv;
 
-	if (ndev == NULL) {
+	if (!ndev) {
 		ret = -EINVAL;
 		goto exit;
 	}
@@ -3168,7 +3168,7 @@ static int cfg80211_rtw_sched_scan_start(struct wiphy *wiphy,
 		rtw_scan_abort(padapter);
 	}
 
-	if (request == NULL) {
+	if (!request) {
 		DBG_871X("%s: invalid cfg80211_requests parameters.\n", __func__);
 		return -EINVAL;
 	}
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 68c1a8d0b7ba..7026bab85b5b 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -474,7 +474,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
 			pwep = kzalloc(wep_total_len, GFP_KERNEL);
-			if (pwep == NULL) {
+			if (!pwep) {
 				RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_err_, (" wpa_set_encryption: pwep allocate fail !!!\n"));
 				goto exit;
 			}
@@ -526,7 +526,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 
 		if (check_fwstate(pmlmepriv, WIFI_STATION_STATE | WIFI_MP_STATE) == true) { /* sta mode */
 			psta = rtw_get_stainfo(pstapriv, get_bssid(pmlmepriv));
-			if (psta == NULL) {
+			if (!psta) {
 				/* DEBUG_ERR(("Set wpa_set_encryption: Obtain Sta_info fail\n")); */
 			} else {
 				/* Jeff: don't disable ieee8021x_blocked while clearing key */
@@ -585,7 +585,7 @@ static int wpa_set_encryption(struct net_device *dev, struct ieee_param *param,
 			}
 
 			pbcmc_sta = rtw_get_bcmc_stainfo(padapter);
-			if (pbcmc_sta == NULL) {
+			if (!pbcmc_sta) {
 				/* DEBUG_ERR(("Set OID_802_11_ADD_KEY: bcmc stainfo is null\n")); */
 			} else {
 				/* Jeff: don't disable ieee8021x_blocked while clearing key */
@@ -615,9 +615,9 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 	int ret = 0;
 	u8 null_addr[] = {0, 0, 0, 0, 0, 0};
 
-	if ((ielen > MAX_WPA_IE_LEN) || (pie == NULL)) {
+	if ((ielen > MAX_WPA_IE_LEN) || (!pie)) {
 		_clr_fwstate_(&padapter->mlmepriv, WIFI_UNDER_WPS);
-		if (pie == NULL)
+		if (!pie)
 			return ret;
 		else
 			return -EINVAL;
@@ -625,7 +625,7 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 
 	if (ielen) {
 		buf = rtw_zmalloc(ielen);
-		if (buf == NULL) {
+		if (!buf) {
 			ret =  -ENOMEM;
 			goto exit;
 		}
@@ -1231,7 +1231,7 @@ static int rtw_wx_set_mlme(struct net_device *dev,
 	struct iw_mlme *mlme = (struct iw_mlme *)extra;
 
 
-	if (mlme == NULL)
+	if (!mlme)
 		return -1;
 
 	DBG_871X("%s\n", __func__);
@@ -2137,7 +2137,7 @@ static int rtw_wx_set_enc_ext(struct net_device *dev,
 
 	param_len = sizeof(struct ieee_param) + pext->key_len;
 	param = kzalloc(param_len, GFP_KERNEL);
-	if (param == NULL)
+	if (!param)
 		return -1;
 
 	param->cmd = IEEE_CMD_SET_ENCRYPTION;
@@ -2444,7 +2444,7 @@ static int rtw_get_ap_info(struct net_device *dev,
 
 	DBG_871X("+rtw_get_aplist_info\n");
 
-	if ((padapter->bDriverStopped) || (pdata == NULL)) {
+	if ((padapter->bDriverStopped) || (!pdata)) {
 		ret = -EINVAL;
 		goto exit;
 	}
@@ -2533,7 +2533,7 @@ static int rtw_set_pid(struct net_device *dev,
 	int *pdata = (int *)wrqu;
 	int selector;
 
-	if ((padapter->bDriverStopped) || (pdata == NULL)) {
+	if ((padapter->bDriverStopped) || (!pdata)) {
 		ret = -EINVAL;
 		goto exit;
 	}
@@ -3379,7 +3379,7 @@ static int wpa_supplicant_ioctl(struct net_device *dev, struct iw_point *p)
 		return -EINVAL;
 
 	param = rtw_malloc(p->length);
-	if (param == NULL)
+	if (!param)
 		return -ENOMEM;
 
 	if (copy_from_user(param, p->pointer, p->length)) {
@@ -3461,7 +3461,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 		}
 	}
 
-	if (strcmp(param->u.crypt.alg, "none") == 0 && (psta == NULL)) {
+	if (strcmp(param->u.crypt.alg, "none") == 0 && (!psta)) {
 		/* todo:clear default encryption keys */
 
 		psecuritypriv->dot11AuthAlgrthm = dot11AuthAlgrthm_Open;
@@ -3475,7 +3475,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 	}
 
 
-	if (strcmp(param->u.crypt.alg, "WEP") == 0 && (psta == NULL)) {
+	if (strcmp(param->u.crypt.alg, "WEP") == 0 && (!psta)) {
 		DBG_871X("r871x_set_encryption, crypt.alg = WEP\n");
 
 		wep_key_idx = param->u.crypt.idx;
@@ -3493,7 +3493,7 @@ static int rtw_set_encryption(struct net_device *dev, struct ieee_param *param,
 			wep_key_len = wep_key_len <= 5 ? 5 : 13;
 			wep_total_len = wep_key_len + FIELD_OFFSET(struct ndis_802_11_wep, KeyMaterial);
 			pwep = kzalloc(wep_total_len, GFP_KERNEL);
-			if (pwep == NULL) {
+			if (!pwep) {
 				DBG_871X(" r871x_set_encryption: pwep allocate fail !!!\n");
 				goto exit;
 			}
@@ -3991,7 +3991,7 @@ static int rtw_set_wps_beacon(struct net_device *dev, struct ieee_param *param,
 	if (ie_len > 0) {
 		pmlmepriv->wps_beacon_ie = rtw_malloc(ie_len);
 		pmlmepriv->wps_beacon_ie_len = ie_len;
-		if (pmlmepriv->wps_beacon_ie == NULL) {
+		if (!(pmlmepriv->wps_beacon_ie)) {
 			DBG_871X("%s()-%d: rtw_malloc() ERROR!\n", __func__, __LINE__);
 			return -EINVAL;
 		}
@@ -4029,7 +4029,7 @@ static int rtw_set_wps_probe_resp(struct net_device *dev, struct ieee_param *par
 	if (ie_len > 0) {
 		pmlmepriv->wps_probe_resp_ie = rtw_malloc(ie_len);
 		pmlmepriv->wps_probe_resp_ie_len = ie_len;
-		if (pmlmepriv->wps_probe_resp_ie == NULL) {
+		if (!(pmlmepriv->wps_probe_resp_ie)) {
 			DBG_871X("%s()-%d: rtw_malloc() ERROR!\n", __func__, __LINE__);
 			return -EINVAL;
 		}
@@ -4062,7 +4062,7 @@ static int rtw_set_wps_assoc_resp(struct net_device *dev, struct ieee_param *par
 	if (ie_len > 0) {
 		pmlmepriv->wps_assoc_resp_ie = rtw_malloc(ie_len);
 		pmlmepriv->wps_assoc_resp_ie_len = ie_len;
-		if (pmlmepriv->wps_assoc_resp_ie == NULL) {
+		if (!(pmlmepriv->wps_assoc_resp_ie)) {
 			DBG_871X("%s()-%d: rtw_malloc() ERROR!\n", __func__, __LINE__);
 			return -EINVAL;
 		}
@@ -4200,7 +4200,7 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 		return -EINVAL;
 
 	param = rtw_malloc(p->length);
-	if (param == NULL)
+	if (!param)
 		return -ENOMEM;
 
 	if (copy_from_user(param, p->pointer, p->length)) {
@@ -4372,7 +4372,7 @@ static int rtw_wx_set_priv(struct net_device *dev,
 			}
 
 			pmlmepriv->wps_probe_req_ie = rtw_malloc(cp_sz);
-			if (pmlmepriv->wps_probe_req_ie == NULL) {
+			if (!(pmlmepriv->wps_probe_req_ie)) {
 				printk("%s()-%d: rtw_malloc() ERROR!\n", __func__, __LINE__);
 				ret =  -EINVAL;
 				goto FREE_EXT;
@@ -4447,7 +4447,7 @@ static int rtw_test(
 	len = wrqu->data.length;
 
 	pbuf = rtw_zmalloc(len);
-	if (pbuf == NULL) {
+	if (!pbuf) {
 		DBG_871X("%s: no memory!\n", __func__);
 		return -ENOMEM;
 	}
@@ -4461,7 +4461,7 @@ static int rtw_test(
 
 	ptmp = (char *)pbuf;
 	pch = strsep(&ptmp, delim);
-	if ((pch == NULL) || (strlen(pch) == 0)) {
+	if ((!pch) || (strlen(pch) == 0)) {
 		kfree(pbuf);
 		DBG_871X("%s: parameter error(level 1)!\n", __func__);
 		return -EFAULT;
@@ -4484,7 +4484,7 @@ static int rtw_test(
 
 		do {
 			pch = strsep(&ptmp, delim);
-			if ((pch == NULL) || (strlen(pch) == 0))
+			if ((!pch) || (strlen(pch) == 0))
 				break;
 
 			sscanf(pch, "%x", &tmp);
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index dac466bba066..e61928360927 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -525,7 +525,7 @@ void rtw_unregister_netdevs(struct dvobj_priv *dvobj)
 
 	padapter = dvobj->padapters;
 
-	if (padapter == NULL)
+	if (!padapter)
 		return;
 
 	pnetdev = padapter->pnetdev;
@@ -638,7 +638,7 @@ struct dvobj_priv *devobj_init(void)
 	struct dvobj_priv *pdvobj = NULL;
 
 	pdvobj = rtw_zmalloc(sizeof(*pdvobj));
-	if (pdvobj == NULL)
+	if (!pdvobj)
 		return NULL;
 
 	mutex_init(&pdvobj->hw_init_mutex);
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 900ff3a3b014..48635b7a1eb2 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -252,7 +252,7 @@ int rtw_recv_indicatepkt(struct adapter *padapter, union recv_frame *precv_frame
 	pfree_recv_queue = &(precvpriv->free_recv_queue);
 
 	skb = precv_frame->u.hdr.pkt;
-	if (skb == NULL) {
+	if (!skb) {
 		RT_TRACE(_module_recv_osdep_c_, _drv_err_, ("rtw_recv_indicatepkt():skb == NULL something wrong!!!!\n"));
 		goto _recv_indicatepkt_drop;
 	}
diff --git a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
index 79b55ec827a4..e771289624c0 100644
--- a/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
+++ b/drivers/staging/rtl8723bs/os_dep/sdio_intf.c
@@ -239,7 +239,7 @@ static struct dvobj_priv *sdio_dvobj_init(struct sdio_func *func)
 	struct sdio_data *psdio;
 
 	dvobj = devobj_init();
-	if (dvobj == NULL) {
+	if (!dvobj) {
 		goto exit;
 	}
 
@@ -288,7 +288,7 @@ void rtw_set_hal_ops(struct adapter *padapter)
 
 static void sd_intf_start(struct adapter *padapter)
 {
-	if (padapter == NULL) {
+	if (!padapter) {
 		DBG_8192C(KERN_ERR "%s: padapter is NULL!\n", __func__);
 		return;
 	}
@@ -299,7 +299,7 @@ static void sd_intf_start(struct adapter *padapter)
 
 static void sd_intf_stop(struct adapter *padapter)
 {
-	if (padapter == NULL) {
+	if (!padapter) {
 		DBG_8192C(KERN_ERR "%s: padapter is NULL!\n", __func__);
 		return;
 	}
@@ -317,7 +317,7 @@ static struct adapter *rtw_sdio_if1_init(struct dvobj_priv *dvobj, const struct
 	struct sdio_data *psdio = &dvobj->intf_data;
 
 	padapter = vzalloc(sizeof(*padapter));
-	if (padapter == NULL) {
+	if (!padapter) {
 		goto exit;
 	}
 
@@ -462,13 +462,13 @@ static int rtw_drv_init(
 	struct dvobj_priv *dvobj;
 
 	dvobj = sdio_dvobj_init(func);
-	if (dvobj == NULL) {
+	if (!dvobj) {
 		RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("initialize device object priv Failed!\n"));
 		goto exit;
 	}
 
 	if1 = rtw_sdio_if1_init(dvobj, id);
-	if (if1 == NULL) {
+	if (!if1) {
 		DBG_871X("rtw_init_primarystruct adapter Failed!\n");
 		goto free_dvobj;
 	}
-- 
2.18.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel

