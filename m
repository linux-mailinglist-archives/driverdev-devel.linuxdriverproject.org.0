Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A52629CD8D
	for <lists+driverdev-devel@lfdr.de>; Wed, 28 Oct 2020 03:19:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 827B4868BB;
	Wed, 28 Oct 2020 02:19:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pHS_noZk2bqU; Wed, 28 Oct 2020 02:19:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 97C1B851FB;
	Wed, 28 Oct 2020 02:19:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 367551BF34A
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 02:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 32A178731A
 for <devel@linuxdriverproject.org>; Wed, 28 Oct 2020 02:19:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id W7Zkz66z9E1o for <devel@linuxdriverproject.org>;
 Wed, 28 Oct 2020 02:19:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
 [209.85.128.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 3579D87099
 for <devel@driverdev.osuosl.org>; Wed, 28 Oct 2020 02:19:18 +0000 (UTC)
Received: by mail-wm1-f65.google.com with SMTP id l8so1642018wmg.3
 for <devel@driverdev.osuosl.org>; Tue, 27 Oct 2020 19:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WVHMlW22zmaanqCjAj9gyZ0CY+vafwHwsjZbqglXk8k=;
 b=veFAPiZyFsSmJXmi9irDlTKHloisSwa7nr74nI3pF16WZtERGK+wWWsdI7u0BJsyXG
 wUOO9LJuBTKZVBYdZzhsrcojGMaXo5HTNVZBhQsc7o3qKXmJdK+Rh2ckoIrAjlysz8Co
 wgqmU18bR7AkKkt+hSBFArJq7PhcX/yJryJhN33JFo2iU/7Noz/USuwmkidqDWqxwb/z
 lrPnnHPES12W9CiSIw/KCxcRrCwjLN/j8bf3VqNZPrtn+eN5v3PeaGv9F7fKXvGzm86L
 WyM6Uq5zLG/m+imwGYKh5+8jQe/Kc/MA2M6psKtrPMzFh+8xs2mBBgsNS40Tcs9jyXKC
 YPjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WVHMlW22zmaanqCjAj9gyZ0CY+vafwHwsjZbqglXk8k=;
 b=eLY5AWzsBWw5AatMc6/I97LZ4gXKxOOh7kpA/p6vejIlQxd+ocjGiX6QPI+3FVGHmi
 C38i5PMFcy8FJyqryPM6I+SRXInhb9LPGha67Ik0Qjq2GmvsdVjNaXF5d1rUcSpxyhjm
 8OtX9VkixR01h2gFk6SUEM/UuUhrfmZWO7wNVYXVbr4XUgad6arJhFoA2yJebVmQZqRy
 f6fVauW/ge0W6R+LmtDddmi9NLmEMiWyBddQD6opKJblzgn5T9kqTJKpKcyO/hcD74A/
 sytondc6yzkzU5jE+gGb8pOsHLjBoIjhllAMB5rbkvQ7OLoSWSlZyXtVrhmoh8ikWzDB
 y2iQ==
X-Gm-Message-State: AOAM531pOYegop+JDW/pd4xfp/D8wM0KJEqbk5fIIOiVzGWIGFs3le8K
 cqA/cOrUvFraO7ISpdLrVmo=
X-Google-Smtp-Source: ABdhPJyKz5guLKOqCVYJSQrDJXqIRFVuywXz7JzPFuyH4l9n5f6+308R+xigyx6rhdERKFPKBz98Og==
X-Received: by 2002:a1c:1b53:: with SMTP id b80mr5643874wmb.16.1603851556467; 
 Tue, 27 Oct 2020 19:19:16 -0700 (PDT)
Received: from localhost.localdomain ([109.175.166.67])
 by smtp.googlemail.com with ESMTPSA id o3sm4540177wru.15.2020.10.27.19.19.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Oct 2020 19:19:15 -0700 (PDT)
From: Manuel Palenzuela <manuelpalenzuelamerino@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] Staging: rtl8723bs: core: rtw_cmd: Fixed multiple brace
 coding style issues
Date: Wed, 28 Oct 2020 02:17:16 +0000
Message-Id: <20201028021716.622-1-manuelpalenzuelamerino@gmail.com>
X-Mailer: git-send-email 2.26.2
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
 Manuel Palenzuela <manuelpalenzuelamerino@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fixed multiple brace coding style issues in rtw_cmd.c

Signed-off-by: Manuel Palenzuela <manuelpalenzuelamerino@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_cmd.c | 27 ++++++++----------------
 1 file changed, 9 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 3ac286bbfc4e..4cf09d947d32 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -229,9 +229,8 @@ void _rtw_free_evt_priv(struct	evt_priv *pevtpriv)
 
 	while (!rtw_cbuf_empty(pevtpriv->c2h_queue)) {
 		void *c2h = rtw_cbuf_pop(pevtpriv->c2h_queue);
-		if (c2h && c2h != (void *)pevtpriv) {
+		if (c2h && c2h != (void *)pevtpriv)
 			kfree(c2h);
-		}
 	}
 	kfree(pevtpriv->c2h_queue);
 
@@ -339,9 +338,8 @@ int rtw_enqueue_cmd(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
 	int res = _FAIL;
 	struct adapter *padapter = pcmdpriv->padapter;
 
-	if (cmd_obj == NULL) {
+	if (cmd_obj == NULL)
 		goto exit;
-	}
 
 	cmd_obj->padapter = padapter;
 
@@ -543,9 +541,8 @@ int rtw_cmd_thread(void *context)
 
 		if (pcmd->cmdcode == GEN_CMD_CODE(_Set_Drv_Extra)) {
 			extra_parm = (struct drvextra_cmd_parm *)pcmd->parmbuf;
-			if (extra_parm->pbuf && extra_parm->size > 0) {
+			if (extra_parm->pbuf && extra_parm->size > 0)
 				kfree(extra_parm->pbuf);
-			}
 		}
 
 		rtw_free_cmd_obj(pcmd);
@@ -571,9 +568,8 @@ u8 rtw_sitesurvey_cmd(struct adapter  *padapter, struct ndis_802_11_ssid *ssid,
 	struct cmd_priv 	*pcmdpriv = &padapter->cmdpriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
-	if (check_fwstate(pmlmepriv, _FW_LINKED) == true) {
+	if (check_fwstate(pmlmepriv, _FW_LINKED) == true)
 		rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_SCAN, 1);
-	}
 
 	ph2c = rtw_zmalloc(sizeof(struct cmd_obj));
 	if (ph2c == NULL)
@@ -826,9 +822,8 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	/*  If not,  we have to copy the connecting AP's MAC address to it so that */
 	/*  the driver just has the bssid information for PMKIDList searching. */
 
-	if (pmlmepriv->assoc_by_bssid == false) {
+	if (pmlmepriv->assoc_by_bssid == false)
 		memcpy(&pmlmepriv->assoc_bssid[0], &pnetwork->network.MacAddress[0], ETH_ALEN);
-	}
 
 	psecnetwork->IELength = rtw_restruct_sec_ie(padapter, &pnetwork->network.IEs[0], &psecnetwork->IEs[0], pnetwork->network.IELength);
 
@@ -1349,9 +1344,8 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
 
 				/* DBG_871X("Set TrafficTransitionCount to %d\n", pmlmepriv->LinkDetectInfo.TrafficTransitionCount); */
 
-				if (pmlmepriv->LinkDetectInfo.TrafficTransitionCount > 30/*TrafficTransitionLevel*/) {
+				if (pmlmepriv->LinkDetectInfo.TrafficTransitionCount > 30/*TrafficTransitionLevel*/)
 					pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 30;
-				}
 			}
 		} else {
 			/* DBG_871X("(+)Tx = %d, Rx = %d\n", pmlmepriv->LinkDetectInfo.NumTxOkInPeriod, pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod); */
@@ -1405,9 +1399,8 @@ static void dynamic_chk_wk_hdl(struct adapter *padapter)
 	struct mlme_priv *pmlmepriv;
 	pmlmepriv = &(padapter->mlmepriv);
 
-	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true) {
+	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true)
 		expire_timeout_chk(padapter);
-	}
 
 	/* for debug purpose */
 	_linked_info_dump(padapter);
@@ -1606,9 +1599,8 @@ static void rtw_lps_change_dtim_hdl(struct adapter *padapter, u8 dtim)
 
 static void rtw_dm_ra_mask_hdl(struct adapter *padapter, struct sta_info *psta)
 {
-	if (psta) {
+	if (psta)
 		set_sta_rate(padapter, psta);
-	}
 }
 
 u8 rtw_dm_ra_mask_wk_cmd(struct adapter *padapter, u8 *psta)
@@ -1977,9 +1969,8 @@ u8 rtw_drvextra_cmd_hdl(struct adapter *padapter, unsigned char *pbuf)
 		break;
 	}
 
-	if (pdrvextra_cmd->pbuf && pdrvextra_cmd->size > 0) {
+	if (pdrvextra_cmd->pbuf && pdrvextra_cmd->size > 0)
 		kfree(pdrvextra_cmd->pbuf);
-	}
 
 	return H2C_SUCCESS;
 }
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
