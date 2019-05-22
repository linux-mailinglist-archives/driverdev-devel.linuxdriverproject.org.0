Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id F39F9268E4
	for <lists+driverdev-devel@lfdr.de>; Wed, 22 May 2019 19:11:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id D89BE870C0;
	Wed, 22 May 2019 17:11:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id l6NO27hvgNWL; Wed, 22 May 2019 17:11:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3718287097;
	Wed, 22 May 2019 17:11:48 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 794131BF20F
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 17:11:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 766CC22624
 for <devel@linuxdriverproject.org>; Wed, 22 May 2019 17:11:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VSl3k6d1SW0A for <devel@linuxdriverproject.org>;
 Wed, 22 May 2019 17:11:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com
 [209.85.214.193])
 by silver.osuosl.org (Postfix) with ESMTPS id D1041220C5
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 17:11:45 +0000 (UTC)
Received: by mail-pl1-f193.google.com with SMTP id gn7so1368278plb.10
 for <devel@driverdev.osuosl.org>; Wed, 22 May 2019 10:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=t0UqOUcwsVfUne/Mk2u/aR+T7jIgf7upi5wewMeNKvY=;
 b=NBtY4bsEqcw2XI65pq2MfduUROhh69qy25aq/qncLftq+hxQejrHWP2rMFp+ETd4se
 WL8bKfyXlDncitC9Sr8SPRzO3Zz97RqTXz/DBtvu6et6rRKnUCrOAumbIBjANmMoTOVX
 j1JplsIhT50FWog4pEGwf90cwfqIfdtcr54kbl5qybfnVlUvdb3oZmnJz5pcH6Y89CbE
 Mzky6fAKrEyOZOANVgp3ab/x/r/g+wx1QouIwEylD9q46dFzTgZLQrB7SQexLxIjgqjN
 eYHl+1WfLz4BQHiREHByeltkuxVASLUuDHwofets3OZiQvc1vHV1WSGRiJGt/ZgEOVGW
 rwCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=t0UqOUcwsVfUne/Mk2u/aR+T7jIgf7upi5wewMeNKvY=;
 b=mQodv2a7RJW/saF+Zqn9REn667ZMpoae1ybdoGK6pQBWjhyTvCW1DT7xyAp3NeOw4x
 +1Dv6rAwH0ubtiw8OKdTW9ciYBjfbiNYby9AUpz9jn84foMe9Ggbr+ph0L26mT+H65Xw
 cGcqgqo8Q8QbEmifaU6ZFeoA9qzUr2pqiOOwuXLKUyWfVBw+HJtVKLHgWf+YWzXxyq5h
 FORPX0iiOQhxx9j/wLJdyYg6zrhY9DndBU2zObNyVjgqiff/egzSNUvN+ToRYMZSsaTq
 f16bY6dpuP4PGfzlb6bj7E5/ojHt5/QEoDKI9skOWyFCyU9UKfbpGMZpODyTZbaqZo6s
 WKhw==
X-Gm-Message-State: APjAAAW2uEL0xAmb2GqnfX9/nqKGublXHlsZwvbL9pkUOlQtiUvW2G52
 xqJFABnKuC3wSZ6Mfb2I8N53kNFi
X-Google-Smtp-Source: APXvYqzx7f17QFtXsUs4j+XXtPYR1e4ZWCrim9Se4T7aanOlSna2/sdZOolZW8zteVMmKvO7z30iXg==
X-Received: by 2002:a17:902:6bc4:: with SMTP id
 m4mr15462401plt.266.1558545105482; 
 Wed, 22 May 2019 10:11:45 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id h13sm25492704pgk.55.2019.05.22.10.11.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 10:11:44 -0700 (PDT)
Date: Wed, 22 May 2019 22:41:37 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Murray McAllister <murray.mcallister@insomniasec.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Nishka Dasgupta <nishka.dasgupta@yahoo.com>,
 Kimberly Brown <kimbrownkd@gmail.com>,
 Anirudh Rayabharam <anirudh.rayabharam@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Mamta Shukla <mamtashukla555@gmail.com>,
 Quytelda Kahja <quytelda@tamalin.org>, Omer Efrat <omer.efrat@tandemg.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, Arnd Bergmann <arnd@arndb.de>,
 Michael Straube <straube.linux@gmail.com>,
 Emanuel Bennici <benniciemanuel78@gmail.com>,
 Jia-Ju Bai <baijiaju1990@gmail.com>,
 Wen Yang <wen.yang99@zte.com.cn>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3] staging: rtl8723bs: core: rtw_ap: fix Unneeded variable:
 "ret". Return "0
Message-ID: <20190522171137.GA5579@hari-Inspiron-1545>
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
