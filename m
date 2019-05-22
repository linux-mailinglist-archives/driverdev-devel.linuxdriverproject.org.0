Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C60926899
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 18:48:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 0DA0830D43;
	Wed, 22 May 2019 16:48:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id atGgqYAQPlNO; Wed, 22 May 2019 16:48:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D6C5930CA3;
	Wed, 22 May 2019 16:47:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 136A21BF3EF
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 16:47:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 0BCF487057
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 16:47:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Mf+7Ne3H7EV0 for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 16:47:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
 [209.85.214.195])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 462F487055
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 16:47:57 +0000 (UTC)
Received: by mail-pl1-f195.google.com with SMTP id go2so1344889plb.9
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 09:47:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=RqdE9tcPj2Sig1IHHlxBhdByxPLCvB/FRuFMGYqZUAc=;
 b=Ea9AGwuk+eJ8vjFe9Z7cfFpGQZ20vo1Vp0h7KbvWi0oRxWqpSqNIAcKQNd9mG38u56
 cZkMkfE//ny57dd6idgg4ERCea7YJsTIYKZ+q/5Ker4B2cqNbCa2mW9NRpIVaDbmZueg
 Rmg+Im9oPkNT719Vgp+kKnUsAP1qtx/EyXiz1Psz/HuJ476yz3zWkOnCuNXrwPiwm5aY
 xEo1FwZ8BCgReGpQB5pNx9VL6E6iRNqjefnI6+MM8Cp+/YiQE8Rtd9iluopb/lxGZBIc
 693RQVy8FJbK40lWtK9xDRAwfTSnPoNI8JiKbCgia60ETrEtauDgZGCJfmeTsvq1ZtC4
 b2ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=RqdE9tcPj2Sig1IHHlxBhdByxPLCvB/FRuFMGYqZUAc=;
 b=JbcpmNVK7oT9qCuSQl1fiTP20TVXh3lPmrlhYik0J/QGNjD4WHJkD6dp3D57S3eClO
 MtCjhec/KXUKJMVpYAkak8AKK6Bg7WKjPYvJbGZv6zPKGAg81gmWeBO7X1tKJC0jrTvP
 vMn/660BzOleuwWt0/mtsAKwTkKbj55JltYTShnOPB29pc2CPM/JCvYAZFuM2KLg8l3m
 OuO9OddktkIJQqQpT6tniD7jn8sJuP4xKY1f8GTtyDDmtdVLoBjo3zbviNDbf1cFaVtL
 YRGTs4Pi80W0AipljtrRKX64bQ2qPHfNx1Zp7CXBJZHzGEVuu9LqBR1U1/rw71HZ9NwF
 PT9Q==
X-Gm-Message-State: APjAAAXHiO9IyOEYBSKS4n9Jnl7MMWuTed+4yBw4zWE8quYv+N2NZLp5
 V0T1vGPTo98/gQocOElogx4=
X-Google-Smtp-Source: APXvYqxWGOBljw9DezaxFKEKst5C3bpF2aTQ49t6P5OAaoiON7ebZi0PSD1nwB+8u6zrHseJUACqTQ==
X-Received: by 2002:a17:902:a81:: with SMTP id
 1mr45477799plp.287.1558543676859; 
 Wed, 22 May 2019 09:47:56 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id d15sm31714915pfr.179.2019.05.22.09.47.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 09:47:55 -0700 (PDT)
Date: Wed, 22 May 2019 22:17:48 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Anirudh Rayabharam <anirudh.rayabharam@gmail.com>,
 Kimberly Brown <kimbrownkd@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Murray McAllister <murray.mcallister@insomniasec.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, Arnd Bergmann <arnd@arndb.de>,
 Quytelda Kahja <quytelda@tamalin.org>, Omer Efrat <omer.efrat@tandemg.com>,
 Michael Straube <straube.linux@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Jia-Ju Bai <baijiaju1990@gmail.com>,
 Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>,
 Wen Yang <wen.yang99@zte.com.cn>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [Patch v3] staging: rtl8723bs: core: rtw_ap: fix Unneeded variable:
 "ret". Return "0
Message-ID: <20190522164748.GA2870@hari-Inspiron-1545>
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

Function "rtw_sta_flush" always returns 0 value.
So change return type of rtw_sta_flush from int to void.

Same thing applies for rtw_hostapd_sta_flush

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
------
 Changes v2 -
       change return type of rtw_sta_flush
------
 Changes v3 -
       fix indentaion issue

---
 drivers/staging/rtl8723bs/core/rtw_ap.c           | 7 ++-----
 drivers/staging/rtl8723bs/include/rtw_ap.h        | 2 +-
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 4 ++--
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c    | 7 +++----
 4 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index bc02306..19418ea 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -2189,10 +2189,9 @@ u8 ap_free_sta(
 	return beacon_updated;
 }
 
-int rtw_sta_flush(struct adapter *padapter)
+void rtw_sta_flush(struct adapter *padapter)
 {
 	struct list_head	*phead, *plist;
-	int ret = 0;
 	struct sta_info *psta = NULL;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct mlme_ext_priv *pmlmeext = &padapter->mlmeextpriv;
@@ -2202,7 +2201,7 @@ int rtw_sta_flush(struct adapter *padapter)
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(padapter->pnetdev));
 
 	if ((pmlmeinfo->state&0x03) != WIFI_FW_AP_STATE)
-		return ret;
+		return;
 
 	spin_lock_bh(&pstapriv->asoc_list_lock);
 	phead = &pstapriv->asoc_list;
@@ -2226,8 +2225,6 @@ int rtw_sta_flush(struct adapter *padapter)
 	issue_deauth(padapter, bc_addr, WLAN_REASON_DEAUTH_LEAVING);
 
 	associated_clients_update(padapter, true);
-
-	return ret;
 }
 
 /* called > TSR LEVEL for USB or SDIO Interface*/
diff --git a/drivers/staging/rtl8723bs/include/rtw_ap.h b/drivers/staging/rtl8723bs/include/rtw_ap.h
index fd56c9db..d6f3a3a 100644
--- a/drivers/staging/rtl8723bs/include/rtw_ap.h
+++ b/drivers/staging/rtl8723bs/include/rtw_ap.h
@@ -31,7 +31,7 @@ u8 bss_cap_update_on_sta_leave(struct adapter *padapter, struct sta_info *psta);
 void sta_info_update(struct adapter *padapter, struct sta_info *psta);
 void ap_sta_info_defer_update(struct adapter *padapter, struct sta_info *psta);
 u8 ap_free_sta(struct adapter *padapter, struct sta_info *psta, bool active, u16 reason);
-int rtw_sta_flush(struct adapter *padapter);
+void rtw_sta_flush(struct adapter *padapter);
 void start_ap_mode(struct adapter *padapter);
 void stop_ap_mode(struct adapter *padapter);
 
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index db553f2..ce57e0e 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -2896,9 +2896,9 @@ static int cfg80211_rtw_del_station(struct wiphy *wiphy, struct net_device *ndev
 
 		flush_all_cam_entry(padapter);	/* clear CAM */
 
-		ret = rtw_sta_flush(padapter);
+		rtw_sta_flush(padapter);
 
-		return ret;
+		return 0;
 	}
 
 
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index e3d3569..a4d05f2 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -3754,7 +3754,7 @@ static int rtw_set_beacon(struct net_device *dev, struct ieee_param *param, int
 
 }
 
-static int rtw_hostapd_sta_flush(struct net_device *dev)
+static void rtw_hostapd_sta_flush(struct net_device *dev)
 {
 	/* _irqL irqL; */
 	/* struct list_head	*phead, *plist; */
@@ -3766,8 +3766,7 @@ static int rtw_hostapd_sta_flush(struct net_device *dev)
 
 	flush_all_cam_entry(padapter);	/* clear CAM */
 
-	return rtw_sta_flush(padapter);
-
+	rtw_sta_flush(padapter);
 }
 
 static int rtw_add_sta(struct net_device *dev, struct ieee_param *param)
@@ -4254,7 +4253,7 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 	switch (param->cmd) {
 		case RTL871X_HOSTAPD_FLUSH:
 
-			ret = rtw_hostapd_sta_flush(dev);
+			rtw_hostapd_sta_flush(dev);
 
 			break;
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
