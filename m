Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3892B3408E6
	for <lists+driverdev-devel@lfdr.de>; Thu, 18 Mar 2021 16:29:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id D2DBA4EE30;
	Thu, 18 Mar 2021 15:28:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MHnHDM3p2rpw; Thu, 18 Mar 2021 15:28:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8B10D444E5;
	Thu, 18 Mar 2021 15:28:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E72341BF341
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E45654328B
 for <devel@linuxdriverproject.org>; Thu, 18 Mar 2021 15:27:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id XajQi5j5JTZv for <devel@linuxdriverproject.org>;
 Thu, 18 Mar 2021 15:27:15 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 23FF8400B5
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 15:27:15 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id k8so5970444wrc.3
 for <devel@driverdev.osuosl.org>; Thu, 18 Mar 2021 08:27:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VJMPan11ZIOIXvaaG6IEq1o1wjOUodcSegXfGrSmKoM=;
 b=D+w0K5Tvw0NTYtuvB/PqEJn8jrtdAPvRW5C3f9fiUPeoOXX3paUgmBMlBlV91sbitw
 +seK2jliK2Ae4R2DFrF0f8GI721RS6smrJ9HQYAaNNbZvmcIezjXW3IXi1/nMtJEQACs
 CqZtIk7w+fCYIdWkPcwekIxeiCjaRLn3l1cP40m5/ZyQi3GT/qrkezwJ46nfQTX1Js03
 j6/Tgj+ffAHrL1zWBPTHJSWatZLmfONojm+A3WjA+ZBT3xyA5WsErXr2Pho7Qeq7q/QW
 Ud1q0WjFfbkm9Gp6+pwLwlq427xlMYcuNVv4nExIimc4xQS7HlRqgIKk9IqJAmCGSk0r
 96zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VJMPan11ZIOIXvaaG6IEq1o1wjOUodcSegXfGrSmKoM=;
 b=KitEJ3nhXPCWiC0vxqdADqhl/VIaN65n48qrOL/raZyX0M1KYf5r37RKKHiF5OSdta
 FGG4a8LDfWDah1RJlYpdzQSNhVgz/qENuRVi17Ov5vIQ85md4C1PfHlKEpavqI1Ijd+t
 DWQUaD5wr9zxjlQb6uRd5JlFP3QLejIBtbMg4zyxJoiKN7CPmZN5ZqFXywFJCnMmCM40
 mP/5tEKKSzy2sA42G2Ycdk3Z8rMvq+YaZhuV47Hc1Z/UUo4HfnoP0hpLhb6xf5rPlA8o
 p4UKv9kcIxyk/tj/k1lqcEJKo9X1Rn8KGrOt80ZBjm1ScOdRv4P9inD2ZHDA+SNH9/Xz
 qQ/Q==
X-Gm-Message-State: AOAM533ehYkhCUdT4SlVoYeU4w3D64km5Ef44PPHOVZKZthKIBFkkhAK
 5DRIqHkj5Jo6Ceq/hqi51jE=
X-Google-Smtp-Source: ABdhPJy0hMUIQi3Le3rBxr5SqfixuSvCAKXFLNbN7WOUUHJdHrGm0T3i8niXrErdLBBpsb58jS2y0g==
X-Received: by 2002:a5d:4587:: with SMTP id p7mr10337196wrq.205.1616081233415; 
 Thu, 18 Mar 2021 08:27:13 -0700 (PDT)
Received: from agape ([151.46.162.59])
 by smtp.gmail.com with ESMTPSA id e1sm3603317wrd.44.2021.03.18.08.27.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 08:27:13 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 12/15] staging: rtl8723bs: remove unnecessary logging in
 os_dep/ioctl_cfg80211.c
Date: Thu, 18 Mar 2021 16:26:07 +0100
Message-Id: <20210318152610.16758-13-fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210318152610.16758-1-fabioaiuto83@gmail.com>
References: <YFMb+7jjmj7Oty8B@kroah.com>
 <20210318152610.16758-1-fabioaiuto83@gmail.com>
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
 Fabio Aiuto <fabioaiuto83@gmail.com>
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

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 2ff71d001c07..08fbbf05a8c7 100644
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
 
@@ -1405,7 +1398,6 @@ void rtw_cfg80211_surveydone_event_callback(struct adapter *padapter)
 	struct	wlan_network	*pnetwork = NULL;
 
 #ifdef DEBUG_CFG80211
-	DBG_8192C("%s\n", __func__);
 #endif
 
 	spin_lock_bh(&(pmlmepriv->scanned_queue.lock));
@@ -1642,12 +1634,9 @@ static int cfg80211_rtw_scan(struct wiphy *wiphy
 
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
@@ -2219,7 +2208,6 @@ static int cfg80211_rtw_set_txpower(struct wiphy *wiphy,
 	struct wireless_dev *wdev,
 	enum nl80211_tx_power_setting type, int mbm)
 {
-	DBG_8192C("%s\n", __func__);
 	return 0;
 }
 
@@ -2227,8 +2215,6 @@ static int cfg80211_rtw_get_txpower(struct wiphy *wiphy,
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
