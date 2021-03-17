Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE4933FAFD
	for <lists+driverdev-devel@lfdr.de>; Wed, 17 Mar 2021 23:23:34 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60FB76F9BA;
	Wed, 17 Mar 2021 22:23:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ug881yM4aQ1o; Wed, 17 Mar 2021 22:23:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C8516F998;
	Wed, 17 Mar 2021 22:23:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2FA551BF21A
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2B4EE6F998
 for <devel@linuxdriverproject.org>; Wed, 17 Mar 2021 22:21:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Na9PAFoDA1CN for <devel@linuxdriverproject.org>;
 Wed, 17 Mar 2021 22:21:29 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com
 [IPv6:2a00:1450:4864:20::636])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 40E4860636
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 22:21:29 +0000 (UTC)
Received: by mail-ej1-x636.google.com with SMTP id a7so819039ejs.3
 for <devel@driverdev.osuosl.org>; Wed, 17 Mar 2021 15:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=bdCfGT8Gth8+NzoO2T92Edmz662fw5BlJORK3ojYH28=;
 b=fD01OlPu2VqEpfXPT+huXk4MDECnH/cu/ZDevxOOeDAOv1VaeBhCUWyX9rB1C7NQzu
 rkCV7qwxTqTG3/qs3L0aLYeGo7pOHKmQioHphoc4KV8AxBR9soZoGtoiwDsPZKyNtEI4
 Isnh1GNb+uI2Qw8hdTwbhdeDhZMcIbMDH6WdDVCTUvRRuWpH6nFw/bh4DjxGV7qMUeph
 u+kCmnWqmizI/GZD+QU55Xd80K9PXH/zXIbcauNy4rXw2WUH2CLt8TgKFzy20/8MYBkU
 4EBo9fTE4rjvdpwhOoZz/HI3B1JtKjOVW3AEleEpTQ0iAdN+7zteVzlUlWOnfttZ8tcq
 6rxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bdCfGT8Gth8+NzoO2T92Edmz662fw5BlJORK3ojYH28=;
 b=ASwTPwDMPzDxN+qvTzfrM6wIucicmwrZdkHzkx5pHcvN1Mu1Rkh82YZGcr7n6OKBhb
 Y/6RfJLWGbhEtLfxvHD3Ea65ZoCoBo6r0Ds9zNSCHhvk9VCBxm1zC8CYW3QiksXiQVNQ
 ZiGxFM9OOLn2KGAwRURtcnwQy0XWB+Nx3itdxEQc99cpfsprX/A7lnr1Y0HanweLC+Jl
 HgQ87zj9gB1cFAOa9ANL0PZqJONjOmsP06SqwAt55vOEzX/zQo/nPYbAUFmitdr4cJbx
 LKU4HZ9JPWaxMURhfYay/Khmi/DCWtkKu+0LtSbGI3gvFkjasMju0MA5LqPp0tDHPzsw
 XlJw==
X-Gm-Message-State: AOAM531tmi9CDPgM2auzE7XcszpX3cH2oW2F17I4TK59SRc/KltvVnY9
 K+1MRj9OiYHah+u9HUVBUn4=
X-Google-Smtp-Source: ABdhPJxMxnN7PraFPL/XMZ/lvNIvDRssg8hUgiLwhxVvGtX7WvmS3ZgcKNLfel2On+ywqdZO6D494g==
X-Received: by 2002:a17:906:fcd2:: with SMTP id
 qx18mr16695338ejb.327.1616019687500; 
 Wed, 17 Mar 2021 15:21:27 -0700 (PDT)
Received: from gimli.home (93-48-145-141.ip257.fastwebnet.it. [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id
 cf4sm104304edb.19.2021.03.17.15.21.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Mar 2021 15:21:27 -0700 (PDT)
From: Marco Cesati <marcocesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 13/43] Staging: rtl8723bs: fix names in rtw_security.h
Date: Wed, 17 Mar 2021 23:21:00 +0100
Message-Id: <20210317222130.29528-14-marcocesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210317222130.29528-1-marcocesati@gmail.com>
References: <20210317222130.29528-1-marcocesati@gmail.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

This commit converts names of structs / enums
in include/rtw_security.h from ALL_CAPS format to lowercase

Signed-off-by: Marco Cesati <marcocesati@gmail.com>
---
 drivers/staging/rtl8723bs/include/rtw_security.h  | 4 ++--
 drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 2 +-
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c    | 2 +-
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c     | 8 ++++----
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_security.h b/drivers/staging/rtl8723bs/include/rtw_security.h
index 8611dff1aa4a..0d3f7d46c33f 100644
--- a/drivers/staging/rtl8723bs/include/rtw_security.h
+++ b/drivers/staging/rtl8723bs/include/rtw_security.h
@@ -84,7 +84,7 @@ union Keytype {
 };
 
 
-struct RT_PMKID_LIST {
+struct rt_pmkid_list {
 	u8 				bUsed;
 	u8 				Bssid[6];
 	u8 				PMKID[16];
@@ -163,7 +163,7 @@ struct security_priv {
 	u32 btkip_countermeasure_time;
 
 	/*  For WPA2 Pre-Authentication. */
-	struct RT_PMKID_LIST		PMKIDList[NUM_PMKID_CACHE];	/*  Renamed from PreAuthKey[NUM_PRE_AUTH_KEY]. Annie, 2006-10-13. */
+	struct rt_pmkid_list		PMKIDList[NUM_PMKID_CACHE];	/*  Renamed from PreAuthKey[NUM_PRE_AUTH_KEY]. Annie, 2006-10-13. */
 	u8 		PMKIDIndex;
 
 	u8 bWepDefaultKeyIdxSet;
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 685ecb45e742..e70bb7f1ca3a 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -2346,7 +2346,7 @@ static int cfg80211_rtw_flush_pmksa(struct wiphy *wiphy,
 
 	DBG_871X(FUNC_NDEV_FMT"\n", FUNC_NDEV_ARG(ndev));
 
-	memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
+	memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(struct rt_pmkid_list) * NUM_PMKID_CACHE);
 	psecuritypriv->PMKIDIndex = 0;
 
 	return 0;
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 2d8da969fbda..bd1b9571cd4b 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -969,7 +969,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 	        }
 	} else if (pPMK->cmd == IW_PMKSA_FLUSH) {
 		DBG_871X("[rtw_wx_set_pmkid] IW_PMKSA_FLUSH!\n");
-		memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
+		memset(&psecuritypriv->PMKIDList[0], 0x00, sizeof(struct rt_pmkid_list) * NUM_PMKID_CACHE);
 		psecuritypriv->PMKIDIndex = 0;
 		intReturn = true;
 	}
diff --git a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
index ac3ae26fc385..ba4d3789a41e 100644
--- a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
@@ -65,7 +65,7 @@ void rtw_os_indicate_scan_done(struct adapter *padapter, bool aborted)
 	indicate_wx_scan_complete_event(padapter);
 }
 
-static struct RT_PMKID_LIST   backupPMKIDList[NUM_PMKID_CACHE];
+static struct rt_pmkid_list   backupPMKIDList[NUM_PMKID_CACHE];
 void rtw_reset_securitypriv(struct adapter *adapter)
 {
 	u8 backupPMKIDIndex = 0;
@@ -84,7 +84,7 @@ void rtw_reset_securitypriv(struct adapter *adapter)
 		/*  Backup the btkip_countermeasure information. */
 		/*  When the countermeasure is trigger, the driver have to disconnect with AP for 60 seconds. */
 
-		memcpy(&backupPMKIDList[0], &adapter->securitypriv.PMKIDList[0], sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
+		memcpy(&backupPMKIDList[0], &adapter->securitypriv.PMKIDList[0], sizeof(struct rt_pmkid_list) * NUM_PMKID_CACHE);
 		backupPMKIDIndex = adapter->securitypriv.PMKIDIndex;
 		backupTKIPCountermeasure = adapter->securitypriv.btkip_countermeasure;
 		backupTKIPcountermeasure_time = adapter->securitypriv.btkip_countermeasure_time;
@@ -96,7 +96,7 @@ void rtw_reset_securitypriv(struct adapter *adapter)
 
 		/*  Added by Albert 2009/02/18 */
 		/*  Restore the PMK information to securitypriv structure for the following connection. */
-		memcpy(&adapter->securitypriv.PMKIDList[0], &backupPMKIDList[0], sizeof(struct RT_PMKID_LIST) * NUM_PMKID_CACHE);
+		memcpy(&adapter->securitypriv.PMKIDList[0], &backupPMKIDList[0], sizeof(struct rt_pmkid_list) * NUM_PMKID_CACHE);
 		adapter->securitypriv.PMKIDIndex = backupPMKIDIndex;
 		adapter->securitypriv.btkip_countermeasure = backupTKIPCountermeasure;
 		adapter->securitypriv.btkip_countermeasure_time = backupTKIPcountermeasure_time;
@@ -127,7 +127,7 @@ void rtw_reset_securitypriv(struct adapter *adapter)
 
 void rtw_os_indicate_disconnect(struct adapter *adapter)
 {
-	/* struct RT_PMKID_LIST   backupPMKIDList[ NUM_PMKID_CACHE ]; */
+	/* struct rt_pmkid_list   backupPMKIDList[ NUM_PMKID_CACHE ]; */
 
 	netif_carrier_off(adapter->pnetdev); /*  Do it first for tx broadcast pkt after disconnection issue! */
 
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
