Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8C92D0050
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Dec 2020 04:45:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D11802E4DA;
	Sun,  6 Dec 2020 03:45:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3vykAOE3jLhy; Sun,  6 Dec 2020 03:45:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id CCF8727A49;
	Sun,  6 Dec 2020 03:45:31 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CD5541BF962
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:45:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id CA56686BEC
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:45:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nRhgbeKyXenR for <devel@linuxdriverproject.org>;
 Sun,  6 Dec 2020 03:45:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 99AB9872CA
 for <devel@driverdev.osuosl.org>; Sun,  6 Dec 2020 03:45:26 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id q137so9960945iod.9
 for <devel@driverdev.osuosl.org>; Sat, 05 Dec 2020 19:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n2vbuSsWUEhStVURfBEd2z7J0jw1E1fuEExHKYsUcSA=;
 b=UPJqbOPfBpqNMS86b3EJ3lb4aWlc9NZ0000ieUf36AFdheFoYEXZ5xBnELg43Euy93
 /ZlS/nC03PX4Po1VNUuhu0JQEo8PIASKDAgE2TSwAFQf78R9O9Mdl3UvVd2ZbhEHM0EL
 w4WfMgSXpwIYqKt1ArwaO5axgUMLVk4+HT9yw018wK5IvfG4DWzCCjmoQIRnIFhPBYeb
 yv6p6r/D+OFAHI36ax5SpWIqE/KE8EOPug40Xz96q6H8Xax8y6+mDjXFtlPjpWC+6QL6
 UOC8qPe5KYTiBdiKdrq8xtSOQ3IfBxl89mxdV6NfydNcf9ch82MkO3fcq7b2xHzzlNVB
 WRuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n2vbuSsWUEhStVURfBEd2z7J0jw1E1fuEExHKYsUcSA=;
 b=iGMzkElassO0oGUt8gT9hkcY1KpmG2Cz5/RJr+gsrWwzj+meP5BRijz3MWSFKudroy
 UmGowgTpIHMef9vjttOhPIw3onQJjoBTd+Fet4BGrFlNIGiQukVopMuuXH4T5FPMLkgj
 W1v+YRSs0BENLPQUUSZJW5M3Cy5Sd/I3DtUavZJ7vZRG1aFSK4ut/CGU6TnbsmA0ybIp
 N0AaMZyW3fUyDbpUXI5KoDM+v8P9cP3BFnkhDedEwW/HaL34+qGZ6/DND5uj5ZcvZloy
 qmZCqm01FDVzP7IEbrvgBpKpklSBs4hipklDbRKEsojtmInC/miIpnXokMzFu+mKapi4
 OkRQ==
X-Gm-Message-State: AOAM533Na0A6or7iNrxpJtWHWtFZJdElg/99UPTtpobJsnZOpujZwkpG
 Ekr0IhyVKcm/1PRE9sLylT0=
X-Google-Smtp-Source: ABdhPJxVira4gNXnvMwMdYDd5zPRnbBNl91c95g8skS1DXo17mbu03rJW4chwHgkhkk+xCoNw1Y/ow==
X-Received: by 2002:a02:856d:: with SMTP id g100mr277534jai.10.1607226325931; 
 Sat, 05 Dec 2020 19:45:25 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id v63sm3908553ioe.52.2020.12.05.19.45.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Dec 2020 19:45:25 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 03/10] staging: rtl8723bs: replace cap_* macros
Date: Sat,  5 Dec 2020 21:45:10 -0600
Message-Id: <20201206034517.4276-3-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201206034517.4276-1-ross.schm.dev@gmail.com>
References: <20201206034517.4276-1-ross.schm.dev@gmail.com>
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
 Ross Schmidt <ross.schm.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Replace unique cap_* macros with kernel provided WLAN_CAPABILITY_*
macros.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c        |  2 +-
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c |  6 +++---
 drivers/staging/rtl8723bs/core/rtw_mlme.c      |  4 ++--
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c  | 12 ++++++------
 drivers/staging/rtl8723bs/include/ieee80211.h  |  4 ----
 drivers/staging/rtl8723bs/include/wifi.h       | 12 ------------
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c |  4 ++--
 7 files changed, 14 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index a2b39ae56d89..984b9f5a83ac 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1980,7 +1980,7 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 		}
 	}
 
-	if (!(psta->capability & WLAN_CAPABILITY_SHORT_SLOT)) {
+	if (!(psta->capability & WLAN_CAPABILITY_SHORT_SLOT_TIME)) {
 		if (!psta->no_short_slot_time_set) {
 			psta->no_short_slot_time_set = 1;
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index 8d61be5bd250..e80b957f947f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -314,13 +314,13 @@ int rtw_generate_ie(struct registry_priv *pregistrypriv)
 	/* capability info */
 	*(u16 *)ie = 0;
 
-	*(__le16 *)ie |= cpu_to_le16(cap_IBSS);
+	*(__le16 *)ie |= cpu_to_le16(WLAN_CAPABILITY_IBSS);
 
 	if (pregistrypriv->preamble == PREAMBLE_SHORT)
-		*(__le16 *)ie |= cpu_to_le16(cap_ShortPremble);
+		*(__le16 *)ie |= cpu_to_le16(WLAN_CAPABILITY_SHORT_PREAMBLE);
 
 	if (pdev_network->Privacy)
-		*(__le16 *)ie |= cpu_to_le16(cap_Privacy);
+		*(__le16 *)ie |= cpu_to_le16(WLAN_CAPABILITY_PRIVACY);
 
 	sz += 2;
 	ie += 2;
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 351178ab78c5..001cce312f05 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -424,8 +424,8 @@ int is_same_network(struct wlan_bssid_ex *src, struct wlan_bssid_ex *dst, u8 fea
 			((!memcmp(src->Ssid.Ssid, dst->Ssid.Ssid, src->Ssid.SsidLength))) &&
 			((s_cap & WLAN_CAPABILITY_IBSS) ==
 			(d_cap & WLAN_CAPABILITY_IBSS)) &&
-			((s_cap & WLAN_CAPABILITY_BSS) ==
-			(d_cap & WLAN_CAPABILITY_BSS));
+			((s_cap & WLAN_CAPABILITY_ESS) ==
+			(d_cap & WLAN_CAPABILITY_ESS));
 
 }
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 6dab68033941..239c89ce7dc9 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -4600,7 +4600,7 @@ void start_create_ibss(struct adapter *padapter)
 	/* update capability */
 	caps = rtw_get_capability((struct wlan_bssid_ex *)pnetwork);
 	update_capinfo(padapter, caps);
-	if (caps&cap_IBSS) {/* adhoc master */
+	if (caps&WLAN_CAPABILITY_IBSS) {/* adhoc master */
 		val8 = 0xcf;
 		rtw_hal_set_hwreg(padapter, HW_VAR_SEC_CFG, (u8 *)(&val8));
 
@@ -4655,7 +4655,7 @@ void start_clnt_join(struct adapter *padapter)
 	/* update capability */
 	caps = rtw_get_capability((struct wlan_bssid_ex *)pnetwork);
 	update_capinfo(padapter, caps);
-	if (caps&cap_ESS) {
+	if (caps&WLAN_CAPABILITY_ESS) {
 		Set_MSR(padapter, WIFI_FW_STATION_STATE);
 
 		val8 = (pmlmeinfo->auth_algo == dot11AuthAlgrthm_8021X) ? 0xcc : 0xcf;
@@ -4681,7 +4681,7 @@ void start_clnt_join(struct adapter *padapter)
 			(REAUTH_TO * REAUTH_LIMIT) + (REASSOC_TO*REASSOC_LIMIT) + beacon_timeout);
 
 		pmlmeinfo->state = WIFI_FW_AUTH_NULL | WIFI_FW_STATION_STATE;
-	} else if (caps&cap_IBSS) { /* adhoc client */
+	} else if (caps&WLAN_CAPABILITY_IBSS) { /* adhoc client */
 		Set_MSR(padapter, WIFI_FW_ADHOC_STATE);
 
 		val8 = 0xcf;
@@ -5952,9 +5952,9 @@ static int rtw_auto_ap_start_beacon(struct adapter *adapter)
 
 	/* capability info */
 	*(u16 *)ie = 0;
-	*(u16 *)ie |= cpu_to_le16(cap_ESS);
-	*(u16 *)ie |= cpu_to_le16(cap_ShortPremble);
-	/* u16*)ie |= cpu_to_le16(cap_Privacy); */
+	*(u16 *)ie |= cpu_to_le16(WLAN_CAPABILITY_ESS);
+	*(u16 *)ie |= cpu_to_le16(WLAN_CAPABILITY_SHORT_PREAMBLE);
+	/* u16*)ie |= cpu_to_le16(WLAN_CAPABILITY_PRIVACY); */
 	sz += 2;
 	ie += 2;
 
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index c095ffba0f27..79c410cfadba 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -343,10 +343,6 @@ struct ieee80211_snap_hdr {
 #define WLAN_GET_SEQ_FRAG(seq) ((seq) & RTW_IEEE80211_SCTL_FRAG)
 #define WLAN_GET_SEQ_SEQ(seq)  ((seq) & RTW_IEEE80211_SCTL_SEQ)
 
-/* Authentication algorithms */
-#define WLAN_CAPABILITY_BSS (1<<0)
-#define WLAN_CAPABILITY_SHORT_SLOT (1<<10)
-
 /* Reason codes */
 #define WLAN_REASON_ACTIVE_ROAM 65533
 #define WLAN_REASON_JOIN_WRONG_CHANNEL       65534
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index fe9c3a4ffe7f..181c29b73617 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -516,18 +516,6 @@ enum ELEMENT_ID {
 #define WLAN_ETHCONV_RFC1042	2
 #define WLAN_ETHCONV_8021h		3
 
-#define cap_ESS BIT(0)
-#define cap_IBSS BIT(1)
-#define cap_CFPollable BIT(2)
-#define cap_CFRequest BIT(3)
-#define cap_Privacy BIT(4)
-#define cap_ShortPremble BIT(5)
-#define cap_PBCC	BIT(6)
-#define cap_ChAgility	BIT(7)
-#define cap_SpecMgmt	BIT(8)
-#define cap_QoS	BIT(9)
-#define cap_ShortSlot	BIT(10)
-
 /*-----------------------------------------------------------------------------
 				Below is the definition for 802.11i / 802.1x
 ------------------------------------------------------------------------------*/
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 6c38eb239381..51cf3f4c046f 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -163,8 +163,8 @@ static char *translate_scan(struct adapter *padapter,
 		cap = le16_to_cpu(le_tmp);
 	}
 
-	if (cap & (WLAN_CAPABILITY_IBSS | WLAN_CAPABILITY_BSS)) {
-		if (cap & WLAN_CAPABILITY_BSS)
+	if (cap & (WLAN_CAPABILITY_IBSS | WLAN_CAPABILITY_ESS)) {
+		if (cap & WLAN_CAPABILITY_ESS)
 			iwe.u.mode = IW_MODE_MASTER;
 		else
 			iwe.u.mode = IW_MODE_ADHOC;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
