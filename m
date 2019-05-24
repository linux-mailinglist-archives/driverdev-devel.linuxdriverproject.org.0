Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E37129E40
	for <lists+driverdev-devel@lfdr.de>; Fri, 24 May 2019 20:41:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6AF7C3194C;
	Fri, 24 May 2019 18:41:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Lkfj4ML9AZfR; Fri, 24 May 2019 18:41:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DF40F31931;
	Fri, 24 May 2019 18:41:17 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 90BCA1BF429
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 18:41:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 83E9330F60
 for <devel@linuxdriverproject.org>; Fri, 24 May 2019 18:41:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c80LfPrrpRJE for <devel@linuxdriverproject.org>;
 Fri, 24 May 2019 18:41:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
 [209.85.210.195])
 by silver.osuosl.org (Postfix) with ESMTPS id 9595D2206D
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 18:41:14 +0000 (UTC)
Received: by mail-pf1-f195.google.com with SMTP id n19so5825367pfa.1
 for <devel@driverdev.osuosl.org>; Fri, 24 May 2019 11:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=enedDcHOKwZ9FHmS+00cJM3D7/hClZHS2EbEfHPQk5U=;
 b=uOlmCXjvTURxVtROiVg3BpdHBOk/9A+22CVFBzoHGcNrqGbb8LSQDQ1avRYlXD5/+2
 JXoj3D7XK+gJvQ66NLOUsjaBfav6U7le5Txksh+l3cFHfob68iJA4qABK9OXSuVzdBwe
 WzkdoXzHqEcxhyPsrIwLV6J/hZNe+h8t+yBD4vQktVWZrJ0YqtaT9pwkvwZ27fU5P3Lw
 taMBMmY/BjFocIq8neVOlLpQXx3W5uT7JQ7RZbC9FbOSPD+Zt+fhXdCTC3UyKdg/lbHB
 WoqZbUD8C4oUmXADB5UcBe1VlR+w02uJqplIhIcHbN6GgbSPgdV9GcnsSlwzLDudt7Io
 jxvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=enedDcHOKwZ9FHmS+00cJM3D7/hClZHS2EbEfHPQk5U=;
 b=Ob3Zsgh4TfOYr3gT1d9quU+voHCoz8HLZkIStz/2xbg2baZgLXvGcEYVvFogI+P/J0
 BkjfrkiJA//aF0sTAJT/LjL1Cr25pbj6QD4jz5DeOOxZwidfdAK3Lxp1eR3hOQOM7LSD
 vwTvYMJSTlzcdRjT5h9gcnaCAMNaMfGtspSEjVHD6zAwkm7Si5szlAP9XsQbIz9k8Oiz
 aB3RdQhvW05LAUCWeyd76EkjUUbr6N/TI+TN3g+E5J2gYytoVS4crta8XyXsVUvdtwNZ
 tA90MM/QiNBUhuVH2Y5B/VE/q1W5/C/dS3bsHq8OZIQEprV8lk52pJsp8hBaw+GMAUAr
 lkXw==
X-Gm-Message-State: APjAAAWrO2hK8+FjxecTkxvaMYfez+/MeY/t65SXyf94ATbuPXpM+C4q
 1IY6WqZeVudPQXhu1QykIws=
X-Google-Smtp-Source: APXvYqwCBwkebRvyL3c/9tanH7F7zOjVgiNGySmCeH5IN0s9c9ZLo1WTjyzra5OWxmcRK0Ccpe1avw==
X-Received: by 2002:a17:90a:1a84:: with SMTP id
 p4mr11470288pjp.15.1558723274170; 
 Fri, 24 May 2019 11:41:14 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id t33sm3036573pjb.1.2019.05.24.11.41.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 11:41:13 -0700 (PDT)
Date: Sat, 25 May 2019 00:11:05 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Kimberly Brown <kimbrownkd@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Murray McAllister <murray.mcallister@insomniasec.com>,
 Puranjay Mohan <puranjay12@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Omer Efrat <omer.efrat@tandemg.com>, Quytelda Kahja <quytelda@tamalin.org>,
 Larry Finger <Larry.Finger@lwfinger.net>,
 Arnd Bergmann <arnd@arndb.de>, Jeeeun Evans <jeeeunevans@gmail.com>,
 Michael Straube <straube.linux@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [Patch v5] staging: rtl8723bs: core: rtw_ap: fix Unneeded variable:
 "ret". Return "0"
Message-ID: <20190524184105.GA3975@hari-Inspiron-1545>
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
-----
Changes v2 -
       change return type of rtw_sta_flush
Changes v3 -
       fix indentaion issue
Changes v4 -
       prepare patch on linux-next
Changes v5 -
      cleanup subject and commit message
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
