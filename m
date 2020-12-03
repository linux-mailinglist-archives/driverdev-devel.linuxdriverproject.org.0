Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F2DEB2CCCEA
	for <lists+driverdev-devel@lfdr.de>; Thu,  3 Dec 2020 03:59:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 113DC86D5F;
	Thu,  3 Dec 2020 02:59:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fwTbqC8pCtOF; Thu,  3 Dec 2020 02:59:16 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id DDD1386A36;
	Thu,  3 Dec 2020 02:59:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 18D961BF4DB
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 02:58:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1038086A36
 for <devel@linuxdriverproject.org>; Thu,  3 Dec 2020 02:58:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K0udf533Xb42 for <devel@linuxdriverproject.org>;
 Thu,  3 Dec 2020 02:58:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com
 [209.85.166.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 03B3186A1F
 for <devel@driverdev.osuosl.org>; Thu,  3 Dec 2020 02:58:40 +0000 (UTC)
Received: by mail-io1-f66.google.com with SMTP id o8so598194ioh.0
 for <devel@driverdev.osuosl.org>; Wed, 02 Dec 2020 18:58:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=lfDZP13PR8kC5Li0Ht5HKu9mGjw3wiKn6x/Hn9RPxR0=;
 b=C29z1Oa9gw1hNYIVA2ni+gVAnY+4+Xs8wAD+Ua8XAzYBh5xMg3LGmXDA+XZlUgFNXv
 xK9CEAhuWWst/axaNxK+5pRoHCGaUYRZjQr+edJvApNQKxxsacBaQx/g/zOvx6zdZh/8
 xzAEm7azQaRqqvQZe3bFaFVEat7F2oFqHOgrPhHuQVtwF3N9L6+AH6U1+x4V0PBq9m3r
 /0yT0Q4J7jhvRGYiW/323O2+AdN2bQHGLK0plRs/djkS5fBH/kBnluyzop3lqDAwhOg6
 m6cJqjIsfYETdz4zIhBYVTfQA/jAeasdIiRWnFM46fgooRy6jNJWrue9GNUcdilRH6CN
 nyiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=lfDZP13PR8kC5Li0Ht5HKu9mGjw3wiKn6x/Hn9RPxR0=;
 b=RU+WHZRhLaCe5uFBsB/e0cFZLi/vSctwQyCz7Jvj+0PJYEfUj9FZZKpzOBErmNZdwh
 J2zY9JyHE5/NuksZL9sdwLsU7H4Di8gDaVc94Jt2PwFKjDHyk3cfYsya5QrEo8hHwDXS
 SBhoqy+6AVab7zOZT5DGkBMpv4RDA9LzfSdtxihbMK2GCW6rV2d/SeiEFm1hVuDgzLIA
 dwvIwoz8NfipObyy4Q4EiEc22Jx5V27DQbLQbkSonr+7zkj03DsPnrfkiq/eD6szFuKM
 ork4RN6ASr5g9JQHaQbF+9553d2Q1izZG4YqkwNYcHtvPYPsF8ui7aDN6P2M8sXsfB+l
 zyRQ==
X-Gm-Message-State: AOAM533uMnrnbcmzfSKir+rP9f3PJGwD/+lmCcEJKyQ39h4abyYCYWea
 0rxZUTzDLv0MMUIswyL+Pv8=
X-Google-Smtp-Source: ABdhPJyBMVTDz7Qx/VxSc1uLTEG+NB92GihnZtgnmf28tACRkRPfZcdphhp1jif3iR+rgg1a7ZCJwA==
X-Received: by 2002:a02:340c:: with SMTP id x12mr1556985jae.75.1606964319048; 
 Wed, 02 Dec 2020 18:58:39 -0800 (PST)
Received: from a ([24.13.98.51])
 by smtp.gmail.com with ESMTPSA id y13sm324166iop.14.2020.12.02.18.58.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Dec 2020 18:58:38 -0800 (PST)
Date: Wed, 2 Dec 2020 20:58:36 -0600
From: Brother Matthew De Angelis <matthew.v.deangelis@gmail.com>
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net, hdegoede@redhat.com
Subject: [PATCH] Staging: rtl8723bs/core fix brace coding style issues in
 rtw_ioctl_set.c
Message-ID: <20201203025836.GA420974@a>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix all the brace code style warnings found by the checkpatch tool at the following lines:
rtw_ioctl_set.c:178: WARNING: braces {} are not necessary for any arm of this statement
rtw_ioctl_set.c:219: WARNING: braces {} are not necessary for any arm of this statement
rtw_ioctl_set.c:255: WARNING: braces {} are not necessary for any arm of this statement
rtw_ioctl_set.c:324: WARNING: braces {} are not necessary for any arm of this statement
rtw_ioctl_set.c:372: WARNING: braces {} are not necessary for any arm of this statement
rtw_ioctl_set.c:396: WARNING: braces {} are not necessary for any arm of this statement
rtw_ioctl_set.c:441: WARNING: braces {} are not necessary for single statement blocks
rtw_ioctl_set.c:527: WARNING: braces {} are not necessary for any arm of this statement

Signed-off-by: Brother Matthew De Angelis <matthew.v.deangelis@gmail.com>
---
 .../staging/rtl8723bs/core/rtw_ioctl_set.c    | 38 ++++++++-----------
 1 file changed, 15 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
index 3adeca6f20ec..1cfdf7c93662 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
@@ -175,11 +175,10 @@ u8 rtw_set_802_11_bssid(struct adapter *padapter, u8 *bssid)
 
 
 	DBG_871X("Set BSSID under fw_state = 0x%08x\n", get_fwstate(pmlmepriv));
-	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY) == true) {
+	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY) == true)
 		goto handle_tkip_countermeasure;
-	} else if (check_fwstate(pmlmepriv, _FW_UNDER_LINKING) == true) {
+	else if (check_fwstate(pmlmepriv, _FW_UNDER_LINKING) == true)
 		goto release_mlme_lock;
-	}
 
 	if (check_fwstate(pmlmepriv, _FW_LINKED|WIFI_ADHOC_MASTER_STATE) == true) {
 		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("set_bssid: _FW_LINKED||WIFI_ADHOC_MASTER_STATE\n"));
@@ -216,11 +215,10 @@ u8 rtw_set_802_11_bssid(struct adapter *padapter, u8 *bssid)
 	memcpy(&pmlmepriv->assoc_bssid, bssid, ETH_ALEN);
 	pmlmepriv->assoc_by_bssid = true;
 
-	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY) == true) {
+	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY) == true)
 		pmlmepriv->to_join = true;
-	} else {
+	else
 		status = rtw_do_join(padapter);
-	}
 
 release_mlme_lock:
 	spin_unlock_bh(&pmlmepriv->lock);
@@ -252,11 +250,10 @@ u8 rtw_set_802_11_ssid(struct adapter *padapter, struct ndis_802_11_ssid *ssid)
 	spin_lock_bh(&pmlmepriv->lock);
 
 	DBG_871X("Set SSID under fw_state = 0x%08x\n", get_fwstate(pmlmepriv));
-	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY) == true) {
+	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY) == true)
 		goto handle_tkip_countermeasure;
-	} else if (check_fwstate(pmlmepriv, _FW_UNDER_LINKING) == true) {
+	else if (check_fwstate(pmlmepriv, _FW_UNDER_LINKING) == true)
 		goto release_mlme_lock;
-	}
 
 	if (check_fwstate(pmlmepriv, _FW_LINKED|WIFI_ADHOC_MASTER_STATE) == true) {
 		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_,
@@ -321,11 +318,10 @@ u8 rtw_set_802_11_ssid(struct adapter *padapter, struct ndis_802_11_ssid *ssid)
 	memcpy(&pmlmepriv->assoc_ssid, ssid, sizeof(struct ndis_802_11_ssid));
 	pmlmepriv->assoc_by_bssid = false;
 
-	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY) == true) {
+	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY) == true)
 		pmlmepriv->to_join = true;
-	} else {
+	else
 		status = rtw_do_join(padapter);
-	}
 
 release_mlme_lock:
 	spin_unlock_bh(&pmlmepriv->lock);
@@ -369,11 +365,10 @@ u8 rtw_set_802_11_connect(struct adapter *padapter, u8 *bssid, struct ndis_802_1
 	DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT"  fw_state = 0x%08x\n",
 		FUNC_ADPT_ARG(padapter), get_fwstate(pmlmepriv));
 
-	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY) == true) {
+	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY) == true)
 		goto handle_tkip_countermeasure;
-	} else if (check_fwstate(pmlmepriv, _FW_UNDER_LINKING) == true) {
+	else if (check_fwstate(pmlmepriv, _FW_UNDER_LINKING) == true)
 		goto release_mlme_lock;
-	}
 
 handle_tkip_countermeasure:
 	if (rtw_handle_tkip_countermeasure(padapter, __func__) == _FAIL) {
@@ -393,11 +388,10 @@ u8 rtw_set_802_11_connect(struct adapter *padapter, u8 *bssid, struct ndis_802_1
 		pmlmepriv->assoc_by_bssid = false;
 	}
 
-	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY) == true) {
+	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY) == true)
 		pmlmepriv->to_join = true;
-	} else {
+	else
 		status = rtw_do_join(padapter);
-	}
 
 release_mlme_lock:
 	spin_unlock_bh(&pmlmepriv->lock);
@@ -438,9 +432,8 @@ u8 rtw_set_802_11_infrastructure_mode(struct adapter *padapter,
 			rtw_free_assoc_resources(padapter, 1);
 
 		if ((*pold_state == Ndis802_11Infrastructure) || (*pold_state == Ndis802_11IBSS)) {
-			if (check_fwstate(pmlmepriv, _FW_LINKED) == true) {
+			if (check_fwstate(pmlmepriv, _FW_LINKED) == true)
 				rtw_indicate_disconnect(padapter); /* will clr Linked_state; before this function, we must have checked whether issue dis-assoc_cmd or not */
-			}
 	       }
 
 		*pold_state = networktype;
@@ -524,11 +517,10 @@ u8 rtw_set_802_11_bssid_list_scan(struct adapter *padapter, struct ndis_802_11_s
 		RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("rtw_set_802_11_bssid_list_scan fail since fw_state = %x\n", get_fwstate(pmlmepriv)));
 		res = true;
 
-		if (check_fwstate(pmlmepriv, (_FW_UNDER_SURVEY|_FW_UNDER_LINKING)) == true) {
+		if (check_fwstate(pmlmepriv, (_FW_UNDER_SURVEY|_FW_UNDER_LINKING)) == true)
 			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("\n###_FW_UNDER_SURVEY|_FW_UNDER_LINKING\n\n"));
-		} else {
+		else
 			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_err_, ("\n###pmlmepriv->sitesurveyctrl.traffic_busy ==true\n\n"));
-		}
 	} else {
 		if (rtw_is_scan_deny(padapter)) {
 			DBG_871X(FUNC_ADPT_FMT": scan deny\n", FUNC_ADPT_ARG(padapter));
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
