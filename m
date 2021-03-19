Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DC834198E
	for <lists+driverdev-devel@lfdr.de>; Fri, 19 Mar 2021 11:10:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3AC1F4EDE5;
	Fri, 19 Mar 2021 10:10:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dRiwr_R7RNxm; Fri, 19 Mar 2021 10:10:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 14C804EB95;
	Fri, 19 Mar 2021 10:10:12 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E75681BF28F
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 10:09:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D5E524C9CE
 for <devel@linuxdriverproject.org>; Fri, 19 Mar 2021 10:09:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XX96EcFo-fc5 for <devel@linuxdriverproject.org>;
 Fri, 19 Mar 2021 10:09:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com
 [IPv6:2a00:1450:4864:20::632])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D5BE04B739
 for <devel@driverdev.osuosl.org>; Fri, 19 Mar 2021 10:09:58 +0000 (UTC)
Received: by mail-ej1-x632.google.com with SMTP id ce10so8742058ejb.6
 for <devel@driverdev.osuosl.org>; Fri, 19 Mar 2021 03:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BKRJI3Gl9mfhIYwGZ/LQlbVdVzEyCD4Zbdi95T0hnK4=;
 b=BHKkdM9GakYEIIwoKk0MTOIM3AVoz+iF/J+SNXuMhba3Bs82TGGw4RQbUDixSlTqey
 vi6zR+sQxWDw7QjxpTSqG5Xao4JPUU2tjaTf+Dx8CUN/pwrivqeyOZFbRaKmPz4Yri8a
 7uSs5DFXxqov3M/EpCd7pd+McvxU/t/zCER0mxsCeUm1XlLYuRM+TQr+ZGtWbbJqGM7B
 9qPPYxGeDPC1ZHfuAY2CcBCZyVk0iodEOzZQxFfw0RNSmhYZ0M+bzmr2i/+giDJ+upUm
 EOvRpI04IKpK0CA+XrJi3VyCKT4x38oP/muAfxFD1m/PJ8Z8XDKZ9CYqKsIrV3fYKmel
 mARg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BKRJI3Gl9mfhIYwGZ/LQlbVdVzEyCD4Zbdi95T0hnK4=;
 b=UKYa+BcateUwq/jYo7NkiBph2fl94iywMCWnbyMvzc7JJXcDJem1HSmjmuG4wi4z2Q
 92Py3sWMYVtv5Nr8niWuzroflBIUzJt2oi/NnDIFX4ubFuRjJyfNaMfHvHiJUpNgFegx
 wkrwQjvlo7tVuMTc1uuBE1iWEr9abQKNBL8Lz12jzaQDoRag+fmrvfooxGlOgPWeSeSl
 u0K/RTphIGnPdLSNQg7XvL4CazNUB0dKfHxxY4zmAQA6HXFRUsznkZkKu7obDS1vsqr5
 P2qKtdKBsTEzZPaCks4uG6NrjWj3Q1drjfprpV05mFWt/1jJGCpW/Z8NE4/+4tzGhTtl
 apLA==
X-Gm-Message-State: AOAM531fl+s72bpZoU8GLUJ8D1iVoxVnaecxGTzCyLW4gVwEMGbmrrxf
 EkyPSogwrGPbtysIPWL6C3M=
X-Google-Smtp-Source: ABdhPJyqkUWVRA5pO8yyaNf/wnPKJzEm+FtFT2ui/eSzhsAz/E8apxWpHjPXjJ0EIzLw1cNZpDmsQA==
X-Received: by 2002:a17:906:40c7:: with SMTP id
 a7mr3389413ejk.109.1616148597037; 
 Fri, 19 Mar 2021 03:09:57 -0700 (PDT)
Received: from agape (fi-19-219-204.service.infuturo.it. [151.19.219.204])
 by smtp.gmail.com with ESMTPSA id h8sm3782323ede.25.2021.03.19.03.09.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Mar 2021 03:09:56 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2] staging: rtl8723bs: remove unnecessary logging in
 os_dep/ioctl_cfg80211.c
Date: Fri, 19 Mar 2021 11:09:23 +0100
Message-Id: <20210319100923.4314-1-fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210319092122.GF2087@kadam>
References: <20210319092122.GF2087@kadam>
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
 dan.carpenter@oracle.com, Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix the following checkpatch.pl issues:

WARNING: Unnecessary ftrace-like logging - prefer using ftrace
239: FILE: drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:239:
+	/* DBG_8192C("%s\n", __func__); */
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
569: FILE: drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:569:
+	DBG_8192C("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
854: FILE: drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:854:
+	DBG_8192C("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1408: FILE: drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:1408:
+	DBG_8192C("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
1645: FILE: drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:1645:
+	DBG_8192C("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
2222: FILE: drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:2222:
+	DBG_8192C("%s\n", __func__);
--
WARNING: Unnecessary ftrace-like logging - prefer using ftrace
2230: FILE: drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c:2230:
+	DBG_8192C("%s\n", __func__);

Changes in v2:
	removed empty #ifdef block

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c   | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index e70bb7f1ca3a..a577ddcce8cd 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -235,9 +235,6 @@ struct cfg80211_bss *rtw_cfg80211_inform_bss(struct adapter *padapter, struct wl
 	struct wiphy *wiphy = wdev->wiphy;
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 
-
-	/* DBG_8192C("%s\n", __func__); */
-
 	bssinf_len = pnetwork->network.IELength + sizeof(struct ieee80211_hdr_3addr);
 	if (bssinf_len > MAX_BSSINFO_LEN) {
 		DBG_871X("%s IE Length too long > %d byte\n", __func__, MAX_BSSINFO_LEN);
@@ -566,8 +563,6 @@ static int rtw_cfg80211_ap_set_encryption(struct net_device *dev, struct ieee_pa
 	struct security_priv *psecuritypriv =  &(padapter->securitypriv);
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
-	DBG_8192C("%s\n", __func__);
-
 	param->u.crypt.err = 0;
 	param->u.crypt.alg[IEEE_CRYPT_ALG_NAME_LEN - 1] = '\0';
 
@@ -851,8 +846,6 @@ static int rtw_cfg80211_set_encryption(struct net_device *dev, struct ieee_param
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
 
-	DBG_8192C("%s\n", __func__);
-
 	param->u.crypt.err = 0;
 	param->u.crypt.alg[IEEE_CRYPT_ALG_NAME_LEN - 1] = '\0';
 
@@ -1404,10 +1397,6 @@ void rtw_cfg80211_surveydone_event_callback(struct adapter *padapter)
 	struct __queue *queue	= &(pmlmepriv->scanned_queue);
 	struct	wlan_network	*pnetwork = NULL;
 
-#ifdef DEBUG_CFG80211
-	DBG_8192C("%s\n", __func__);
-#endif
-
 	spin_lock_bh(&(pmlmepriv->scanned_queue.lock));
 
 	phead = get_list_head(queue);
@@ -1642,12 +1631,9 @@ static int cfg80211_rtw_scan(struct wiphy *wiphy
 
 static int cfg80211_rtw_set_wiphy_params(struct wiphy *wiphy, u32 changed)
 {
-	DBG_8192C("%s\n", __func__);
 	return 0;
 }
 
-
-
 static int rtw_cfg80211_set_wpa_version(struct security_priv *psecuritypriv, u32 wpa_version)
 {
 	DBG_8192C("%s, wpa_version =%d\n", __func__, wpa_version);
@@ -2219,7 +2205,6 @@ static int cfg80211_rtw_set_txpower(struct wiphy *wiphy,
 	struct wireless_dev *wdev,
 	enum nl80211_tx_power_setting type, int mbm)
 {
-	DBG_8192C("%s\n", __func__);
 	return 0;
 }
 
@@ -2227,8 +2212,6 @@ static int cfg80211_rtw_get_txpower(struct wiphy *wiphy,
 	struct wireless_dev *wdev,
 	int *dbm)
 {
-	DBG_8192C("%s\n", __func__);
-
 	*dbm = (12);
 
 	return 0;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
