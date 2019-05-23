Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FBB9285AD
	for <lists+driverdev-devel@lfdr.de>; Thu, 23 May 2019 20:10:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3038D22B20;
	Thu, 23 May 2019 18:10:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eoaPRK4NHlv1; Thu, 23 May 2019 18:10:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 6F23C3173A;
	Thu, 23 May 2019 18:10:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C25781BF402
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 18:10:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id BF5CA22B20
 for <devel@linuxdriverproject.org>; Thu, 23 May 2019 18:10:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2TcXYmITMF+F for <devel@linuxdriverproject.org>;
 Thu, 23 May 2019 18:10:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
 [209.85.214.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 2A5FA2279E
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 18:10:18 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id a5so3051802pls.12
 for <devel@driverdev.osuosl.org>; Thu, 23 May 2019 11:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=qogrVJOizjXohj66Ojog3iB0x5HKIyjxf0Fb3bKvncg=;
 b=O2tL3kRXSUqWeMsaIAIz1NTqJRh3l/cyn7YerV7qbm6+THbzlsbi95yOKYxOMopA3L
 nEfSIYE7/v9qv+4Nwa1psBbruMtvul0mHzmtkMJQFFzwyyflYgGFKNPVVzM68VbdYmO6
 Yj8+Eq7ORqqp8FddWUBEbAGULiTi9ORD+m+dkKavoXhZRjzA/9jivMtUq/3W0o/6iECv
 WTLASvVl8FrK2u48Exmbf3CKNh7v3x6GkA1EN5VOuCnRrRHW/FdWGigw+w3sicvCVwlu
 t7rwa+C3+XqU3pvyzlSoYuSKsScHUR3oPiagApC2ig7yq34yfOZAYeeP2fwrZkkrTNYl
 FppQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=qogrVJOizjXohj66Ojog3iB0x5HKIyjxf0Fb3bKvncg=;
 b=A73/lWTSLYwM4Tt/jxADgMONjVZdgPYmoSV8LsgbHWEF2TNux/PnBOxppQNodfT3pS
 FsLcIF2pGkNjGQCmzexkT4ru027kSvWzPNTl9wOz6V5/D2PrgEswm+VroIFFIznW5Gxg
 A7WYTE5RYtOmVZ0xMiPX16nD3FHSc4LAhDjUZcJ2dbb6O9OM/Z0SiZo/djDgoVC9togf
 x+OYZMIb/dMop0BA/uhFwZriurN4u8KgdcQWryXk2iABa/b3z660SiEm+RVeOZ2xeRPI
 uo3ueLnWpacR/ysQYUcVWnlKMe3Gcz+HOPf+wBJDwbaimKrYsdU7Y/m35xM9kSIlj9a7
 6fOg==
X-Gm-Message-State: APjAAAWcnM6TRdsCDHwDXpM1A/HENWRbs60Qvh6fe32coqg2qeviy/5w
 6yVD3SqYwBmxO+l36YkltTQ=
X-Google-Smtp-Source: APXvYqwEv3Z6GLKOi7kYkYMl5cifVoL8lQyTtBriohTMME3NoBA5wUHICmi8xxIok439uCzH5N+ijA==
X-Received: by 2002:a17:902:bd94:: with SMTP id
 q20mr77764391pls.146.1558635017817; 
 Thu, 23 May 2019 11:10:17 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id l20sm95360pff.102.2019.05.23.11.10.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 11:10:17 -0700 (PDT)
Date: Thu, 23 May 2019 23:40:09 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Kimberly Brown <kimbrownkd@gmail.com>,
 Jeeeun Evans <jeeeunevans@gmail.com>,
 Anirudh Rayabharam <anirudh.rayabharam@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Murray McAllister <murray.mcallister@insomniasec.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Puranjay Mohan <puranjay12@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Omer Efrat <omer.efrat@tandemg.com>,
 Michael Straube <straube.linux@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [Patch v4] staging: rtl8723bs: core: rtw_ap: fix Unneeded variable:
 "ret". Return "0
Message-ID: <20190523181009.GA9411@hari-Inspiron-1545>
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

Function "rtw_sta_flush" always returns 0 value. So change
 return type of rtw_sta_flush from int to void.

Same thing applies for rtw_hostapd_sta_flush

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
------
 Changes v2 -
       change return type of rtw_sta_flush
 Changes v3 -
       fix indentaion issue
 Changes v4 -
       prepare patch on linux-next
---
---
 drivers/staging/rtl8723bs/core/rtw_ap.c           | 7 ++-----
 drivers/staging/rtl8723bs/include/rtw_ap.h        | 2 +-
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 4 ++--
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c    | 7 +++----
 4 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 912ac2f..7bebb41 100644
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
index 996bd1a..9bc6856 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -2870,9 +2870,9 @@ static int cfg80211_rtw_del_station(struct wiphy *wiphy, struct net_device *ndev
 
 		flush_all_cam_entry(padapter);	/* clear CAM */
 
-		ret = rtw_sta_flush(padapter);
+		rtw_sta_flush(padapter);
 
-		return ret;
+		return 0;
 	}
 
 
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index bfbbcf0..236a462 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -3753,7 +3753,7 @@ static int rtw_set_beacon(struct net_device *dev, struct ieee_param *param, int
 
 }
 
-static int rtw_hostapd_sta_flush(struct net_device *dev)
+static void rtw_hostapd_sta_flush(struct net_device *dev)
 {
 	/* _irqL irqL; */
 	/* struct list_head	*phead, *plist; */
@@ -3765,8 +3765,7 @@ static int rtw_hostapd_sta_flush(struct net_device *dev)
 
 	flush_all_cam_entry(padapter);	/* clear CAM */
 
-	return rtw_sta_flush(padapter);
-
+	rtw_sta_flush(padapter);
 }
 
 static int rtw_add_sta(struct net_device *dev, struct ieee_param *param)
@@ -4253,7 +4252,7 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 	switch (param->cmd) {
 	case RTL871X_HOSTAPD_FLUSH:
 
-		ret = rtw_hostapd_sta_flush(dev);
+		rtw_hostapd_sta_flush(dev);
 
 		break;
 
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
