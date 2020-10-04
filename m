Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0582282923
	for <lists+driverdev-devel@lfdr.de>; Sun,  4 Oct 2020 08:04:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8C37587066;
	Sun,  4 Oct 2020 06:04:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id VYiOg5Mj-Gnm; Sun,  4 Oct 2020 06:04:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 51A6087040;
	Sun,  4 Oct 2020 06:04:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 521C91BF3D0
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 06:04:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3BD0720420
 for <devel@linuxdriverproject.org>; Sun,  4 Oct 2020 06:04:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JnDyc+Ay4ANW for <devel@linuxdriverproject.org>;
 Sun,  4 Oct 2020 06:04:35 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f195.google.com (mail-lj1-f195.google.com
 [209.85.208.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 4AE0A20412
 for <devel@driverdev.osuosl.org>; Sun,  4 Oct 2020 06:04:35 +0000 (UTC)
Received: by mail-lj1-f195.google.com with SMTP id m16so2155240ljo.6
 for <devel@driverdev.osuosl.org>; Sat, 03 Oct 2020 23:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pkwHEUvvT9CYveZ0RPl2bYKL+9nPO/XwtWy0kGlFlV0=;
 b=PwnGTnW7mg7ygJDJEX6tWdQ3vp+U/XKfJWVVKWKJykq/d34DEdq7cVh7So/9bJSxOG
 wQLdpVTVL7BvSZk32RXlbRATQIKFwBZ+xrFVZ8JJwdCuwo7gl7Jb2qQFgW/w4t8ix+6f
 KHJ82YPTwb/aTubPaAt6YiriaI1TR2jItFaHCoiDAf1Fd5uIjSH6+vwhnJbbZy5KeEin
 IaS6sSZI4tGAFC8Vvn9KKbQWTg2mgxYLtDXOhobP+qjMT/xoVsvcEqpvPgeWcMIMOiYY
 drutnqLld2vkMb9Qus8vedBsAox06L+dcGSOjRO0Lw4GJp+RFv5uJwhWuqtBddJpyl/A
 wccg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pkwHEUvvT9CYveZ0RPl2bYKL+9nPO/XwtWy0kGlFlV0=;
 b=NwfEnpFgIW3RS8O0Qcz0jiqj/BRS5OfjF/C6FGYbNJyNxkQhbWCT49t+aOeYvyg/dI
 jZxXWEMPPIKYg9JJHtAIAFkO+DpNaoiLeT/MoeSiBN2dlr7yAyBHm+9/ahI/sTjeBBXW
 09ykNS9qfrOdEwspts65EstTVVxiNKa0MGzz/bBSxFyK3fadNvGgHtDYmNN9HxRl8kEi
 l4UUAZ2NsCdCfBbxYe77Uapf8r5UkRzyUf9Km0vV/u+3JfzllECwlTXGhYhoSKXgV/w9
 lBaKL+jR0AAjhjcDhI+AyNxP2Gc9Y+9kpSZutedu7S4QE/ra2MGxtSdeR5b8Nq2twMTc
 G7Hg==
X-Gm-Message-State: AOAM533PjmDiI4VpwqBvGXO6lfxVA3KZk1JMGeP/QwV+jpegVLoPQgca
 59Fvp23JkqJ69Hr7jINw92g=
X-Google-Smtp-Source: ABdhPJwbDVXzOQqaGuMPSQqvO/6paxEWEO2Y3Ict+a09ikvZf86s/2fkf/vI18YLCKBTpAMz6YVvbg==
X-Received: by 2002:a05:651c:1352:: with SMTP id
 j18mr2399111ljb.343.1601791473081; 
 Sat, 03 Oct 2020 23:04:33 -0700 (PDT)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id d1sm2325443lfq.225.2020.10.03.23.04.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 03 Oct 2020 23:04:32 -0700 (PDT)
Received: (nullmailer pid 8963 invoked by uid 1000);
 Sun, 04 Oct 2020 06:09:36 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging: r8188eu: remove unnecessary type casts (struct
 wlan_bssid_ex *)
Date: Sun,  4 Oct 2020 09:09:22 +0300
Message-Id: <20201004060921.8908-1-insafonov@gmail.com>
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
Cc: devel@driverdev.osuosl.org, R Veera Kumar <vkor@vkten.in>,
 Dinghao Liu <dinghao.liu@zju.edu.cn>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Ivan Safonov <insafonov@gmail.com>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Andre Pinto <andrealmeidap1996@gmail.com>, linux-kernel@vger.kernel.org,
 Julia Lawall <julia.lawall@inria.fr>,
 Shreeya Patel <shreeya.patel23498@gmail.com>,
 Peilin Ye <yepeilin.cs@gmail.com>, Soumyajit Deb <debsoumyajit100@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Reduce line length, simplify refactoring.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c       | 10 +++++-----
 drivers/staging/rtl8188eu/core/rtw_cmd.c      |  4 ++--
 drivers/staging/rtl8188eu/core/rtw_mlme.c     |  2 +-
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 20 +++++++++----------
 .../staging/rtl8188eu/core/rtw_wlan_util.c    |  4 ++--
 5 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 41535441f82c..2078d87055bf 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -422,7 +422,7 @@ static void update_bmc_sta(struct adapter *padapter)
 	int i, supportRateNum = 0;
 	unsigned int tx_ra_bitmap = 0;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	struct wlan_bssid_ex *pcur_network = (struct wlan_bssid_ex *)&pmlmepriv->cur_network.network;
+	struct wlan_bssid_ex *pcur_network = &pmlmepriv->cur_network.network;
 	struct sta_info *psta = rtw_get_bcmc_stainfo(padapter);
 
 	if (psta) {
@@ -599,7 +599,7 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	struct registry_priv	 *pregpriv = &padapter->registrypriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
-	struct wlan_bssid_ex *pnetwork = (struct wlan_bssid_ex *)&pmlmepriv->cur_network.network;
+	struct wlan_bssid_ex *pnetwork = &pmlmepriv->cur_network.network;
 	struct mlme_ext_priv	*pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info	*pmlmeinfo = &pmlmeext->mlmext_info;
 	struct wlan_bssid_ex *pnetwork_mlmeext = &pmlmeinfo->network;
@@ -711,7 +711,7 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	update_wireless_mode(padapter);
 
 	/* update capability after cur_wireless_mode updated */
-	update_capinfo(padapter, rtw_get_capability((struct wlan_bssid_ex *)pnetwork));
+	update_capinfo(padapter, rtw_get_capability(pnetwork));
 
 	/* let pnetwork_mlmeext == pnetwork_mlme. */
 	memcpy(pnetwork_mlmeext, pnetwork, pnetwork->Length);
@@ -745,7 +745,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	struct registry_priv *pregistrypriv = &padapter->registrypriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	struct wlan_bssid_ex *pbss_network = (struct wlan_bssid_ex *)&pmlmepriv->cur_network.network;
+	struct wlan_bssid_ex *pbss_network = &pmlmepriv->cur_network.network;
 	u8 *ie = pbss_network->ies;
 
 	/* SSID */
@@ -982,7 +982,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		HT_info_handler(padapter, (struct ndis_802_11_var_ie *)pHT_info_ie);
 	}
 
-	pbss_network->Length = get_wlan_bssid_ex_sz((struct wlan_bssid_ex  *)pbss_network);
+	pbss_network->Length = get_wlan_bssid_ex_sz(pbss_network);
 
 	/* issue beacon to start bss network */
 	start_bss_network(padapter, (u8 *)pbss_network);
diff --git a/drivers/staging/rtl8188eu/core/rtw_cmd.c b/drivers/staging/rtl8188eu/core/rtw_cmd.c
index a97d50081071..5c300865eeb3 100644
--- a/drivers/staging/rtl8188eu/core/rtw_cmd.c
+++ b/drivers/staging/rtl8188eu/core/rtw_cmd.c
@@ -330,7 +330,7 @@ u8 rtw_createbss_cmd(struct adapter  *padapter)
 	INIT_LIST_HEAD(&pcmd->list);
 	pcmd->cmdcode = _CreateBss_CMD_;
 	pcmd->parmbuf = (unsigned char *)pdev_network;
-	pcmd->cmdsz = get_wlan_bssid_ex_sz((struct wlan_bssid_ex *)pdev_network);
+	pcmd->cmdsz = get_wlan_bssid_ex_sz(pdev_network);
 	pcmd->rsp = NULL;
 	pcmd->rspsz = 0;
 	pdev_network->Length = pcmd->cmdsz;
@@ -387,7 +387,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 		}
 	}
 
-	psecnetwork = (struct wlan_bssid_ex *)&psecuritypriv->sec_bss;
+	psecnetwork = &psecuritypriv->sec_bss;
 	if (!psecnetwork) {
 		kfree(pcmd);
 
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 14be5a703615..9d12f92994b3 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -1815,7 +1815,7 @@ void rtw_update_registrypriv_dev_network(struct adapter *adapter)
 
 	sz = rtw_generate_ie(pregistrypriv);
 	pdev_network->ie_length = sz;
-	pdev_network->Length = get_wlan_bssid_ex_sz((struct wlan_bssid_ex  *)pdev_network);
+	pdev_network->Length = get_wlan_bssid_ex_sz(pdev_network);
 
 	/* notes: translate ie_length & Length after assign the Length to cmdsz in createbss_cmd(); */
 	/* pdev_network->ie_length = cpu_to_le32(sz); */
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 5ca8a2b158d7..b3eddcb83cd0 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -1771,7 +1771,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 
 			plist = plist->next;
 
-			pbss_network = (struct wlan_bssid_ex *)&pnetwork->network;
+			pbss_network = &pnetwork->network;
 
 			p = rtw_get_ie(pbss_network->ies + _FIXED_IE_LENGTH_, _HT_CAPABILITY_IE_, &len, pbss_network->ie_length - _FIXED_IE_LENGTH_);
 			if (!p || len == 0) { /* non-HT */
@@ -2131,7 +2131,7 @@ static u8 collect_bss_info(struct adapter *padapter,
 	bssid->Configuration.BeaconPeriod =
 		get_unaligned_le16(rtw_get_beacon_interval_from_ie(bssid->ies));
 
-	val16 = rtw_get_capability((struct wlan_bssid_ex *)bssid);
+	val16 = rtw_get_capability(bssid);
 
 	if (val16 & BIT(0)) {
 		bssid->InfrastructureMode = Ndis802_11Infrastructure;
@@ -2177,7 +2177,7 @@ static void start_create_ibss(struct adapter *padapter)
 	u8 join_type;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
-	struct wlan_bssid_ex *pnetwork = (struct wlan_bssid_ex *)(&pmlmeinfo->network);
+	struct wlan_bssid_ex *pnetwork = &pmlmeinfo->network;
 
 	pmlmeext->cur_channel = (u8)pnetwork->Configuration.DSConfig;
 	pmlmeinfo->bcn_interval = get_beacon_interval(pnetwork);
@@ -2186,7 +2186,7 @@ static void start_create_ibss(struct adapter *padapter)
 	update_wireless_mode(padapter);
 
 	/* update capability */
-	caps = rtw_get_capability((struct wlan_bssid_ex *)pnetwork);
+	caps = rtw_get_capability(pnetwork);
 	update_capinfo(padapter, caps);
 	if (caps & cap_IBSS) {/* adhoc master */
 		val8 = 0xcf;
@@ -2228,7 +2228,7 @@ static void start_clnt_join(struct adapter *padapter)
 	u8 val8;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
-	struct wlan_bssid_ex *pnetwork = (struct wlan_bssid_ex *)(&pmlmeinfo->network);
+	struct wlan_bssid_ex *pnetwork = &pmlmeinfo->network;
 	int beacon_timeout;
 
 	pmlmeext->cur_channel = (u8)pnetwork->Configuration.DSConfig;
@@ -2238,7 +2238,7 @@ static void start_clnt_join(struct adapter *padapter)
 	update_wireless_mode(padapter);
 
 	/* update capability */
-	caps = rtw_get_capability((struct wlan_bssid_ex *)pnetwork);
+	caps = rtw_get_capability(pnetwork);
 	update_capinfo(padapter, caps);
 	if (caps & cap_ESS) {
 		Set_MSR(padapter, WIFI_FW_STATION_STATE);
@@ -4193,7 +4193,7 @@ void report_survey_event(struct adapter *padapter,
 
 	psurvey_evt = (struct survey_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
 
-	if (collect_bss_info(padapter, precv_frame, (struct wlan_bssid_ex *)&psurvey_evt->bss) == _FAIL) {
+	if (collect_bss_info(padapter, precv_frame, &psurvey_evt->bss) == _FAIL) {
 		kfree(pcmd_obj);
 		kfree(pevtcmd);
 		return;
@@ -4851,7 +4851,7 @@ u8 createbss_hdl(struct adapter *padapter, u8 *pbuf)
 {
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
-	struct wlan_bssid_ex *pnetwork = (struct wlan_bssid_ex *)(&pmlmeinfo->network);
+	struct wlan_bssid_ex *pnetwork = &pmlmeinfo->network;
 	struct wlan_bssid_ex *pparm = (struct wlan_bssid_ex *)pbuf;
 
 	if (pparm->InfrastructureMode == Ndis802_11APMode) {
@@ -4913,7 +4913,7 @@ u8 join_cmd_hdl(struct adapter *padapter, u8 *pbuf)
 	struct registry_priv *pregpriv = &padapter->registrypriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
-	struct wlan_bssid_ex *pnetwork = (struct wlan_bssid_ex *)(&pmlmeinfo->network);
+	struct wlan_bssid_ex *pnetwork = &pmlmeinfo->network;
 	struct wlan_bssid_ex *pparm = (struct wlan_bssid_ex *)pbuf;
 	u32 i;
 
@@ -5024,7 +5024,7 @@ u8 disconnect_hdl(struct adapter *padapter, unsigned char *pbuf)
 	struct disconnect_parm *param = (struct disconnect_parm *)pbuf;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
 	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
-	struct wlan_bssid_ex *pnetwork = (struct wlan_bssid_ex *)(&pmlmeinfo->network);
+	struct wlan_bssid_ex *pnetwork = &pmlmeinfo->network;
 	u8 val8;
 
 	if (is_client_associated_to_ap(padapter))
diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 8e8f1721b1a2..26f128836a5e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -906,7 +906,7 @@ int rtw_check_bcn_info(struct adapter  *Adapter, u8 *pframe, u32 packet_len)
 	}
 
 	/* check encryption info */
-	val16 = rtw_get_capability((struct wlan_bssid_ex *)bssid);
+	val16 = rtw_get_capability(bssid);
 
 	if (val16 & BIT(4))
 		bssid->Privacy = 1;
@@ -1017,7 +1017,7 @@ unsigned int is_ap_in_tkip(struct adapter *padapter)
 	struct mlme_ext_info *pmlmeinfo = &pmlmeext->mlmext_info;
 	struct wlan_bssid_ex *cur_network = &pmlmeinfo->network;
 
-	if (rtw_get_capability((struct wlan_bssid_ex *)cur_network) & WLAN_CAPABILITY_PRIVACY) {
+	if (rtw_get_capability(cur_network) & WLAN_CAPABILITY_PRIVACY) {
 		for (i = sizeof(struct ndis_802_11_fixed_ie); i < pmlmeinfo->network.ie_length;) {
 			pIE = (struct ndis_802_11_var_ie *)(pmlmeinfo->network.ies + i);
 
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
