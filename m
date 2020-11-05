Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBB12A762A
	for <lists+driverdev-devel@lfdr.de>; Thu,  5 Nov 2020 04:48:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 5BAEE204BB;
	Thu,  5 Nov 2020 03:48:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q+Blt0Nk1ep8; Thu,  5 Nov 2020 03:48:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DD71B20421;
	Thu,  5 Nov 2020 03:48:15 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1E6D71BF31C
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 03:48:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 05C6F85507
 for <devel@linuxdriverproject.org>; Thu,  5 Nov 2020 03:48:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KOvUudmkFF8B for <devel@linuxdriverproject.org>;
 Thu,  5 Nov 2020 03:48:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f194.google.com (mail-il1-f194.google.com
 [209.85.166.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2678A854EF
 for <devel@driverdev.osuosl.org>; Thu,  5 Nov 2020 03:48:09 +0000 (UTC)
Received: by mail-il1-f194.google.com with SMTP id p2so171440ilg.1
 for <devel@driverdev.osuosl.org>; Wed, 04 Nov 2020 19:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Mp8LGUfqCtgi+smMusohtU1ACDegnG+YTLGxQ1YPuDE=;
 b=cxHHnC/R4GMyEaLD1mabjje/S4UGS6wr23PKJxdmkneT2IUNU8n6xP6UJ9BifqomN9
 iauUmevpc22jzdGvakUIvXhIeEry4KG1fkM9iZSFKyyMTy+VnTk139K4r9V1Q4szuMKh
 AK7a4DDka2oPz0i9BjJj2BVA5RwmWohQZ3k01Tue+rNx783/5bxaxtSA1JnnSHhJqEkh
 ov4WCNLvRd/dW1VfzkLPSDS+ERNf3PqFDXss/wUkjwEfmwNtJ7bUGHqggIyrZit4D5A6
 phJpzIA/8ZxalQ8Mq8OdIvOdbV2QKCp5KIt9nRnTzmhBGHQqgLrwBKG9BMkMg9jtobDs
 a8GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Mp8LGUfqCtgi+smMusohtU1ACDegnG+YTLGxQ1YPuDE=;
 b=Hniei1CXaUSARuaVVF6mdCTs9kOWlJGPPLF/e8Or69ZnDImjWEAveyOZT7Z5kp/z5p
 u/K6ZY/3ICB8FCgDZqley7lopqtQkLpG/OjRVN1PaAHzp4PdgpHn05c9oLk0+dizQWvD
 l1AqL2ZEDQLY0lcD46z8qMI3sJeY9qfeh1M7cj2BQJN0ATLGkelPwvaySTPwcJE1GZMm
 wUABxsFjNkhUUUpBs37Q+dnFGaCELqFPLjEs4wsK3HWfr3MWfq4mjFdMxnJ0ucLbiclk
 CP8y/89PV5/3INUorFhHWR/a9pCoo7xK7crdU4cVuDYaoyf9TGkDXRZBNMtCaX3UW9ck
 y6/w==
X-Gm-Message-State: AOAM531d3HfXo6uLR98OywS3PuJJlYYpCHl6kQQHdzbyvcF7EiQyysPP
 97PPxuajBW7E3i5b6nN8Ja4=
X-Google-Smtp-Source: ABdhPJyzCbQhdoySNrlQeDF0Xav1A/YzLave4lfjR4zeAl/rXjLcK4isz8sAAvS9tFHUabZOV+E7GQ==
X-Received: by 2002:a92:d60b:: with SMTP id w11mr474079ilm.151.1604548088072; 
 Wed, 04 Nov 2020 19:48:08 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id p6sm172877ilc.26.2020.11.04.19.48.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Nov 2020 19:48:07 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/9] staging: rtl8723bs: remove MAC_FMT macro
Date: Wed,  4 Nov 2020 21:47:46 -0600
Message-Id: <20201105034754.12383-1-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
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

Remove unnecessary macro for %pM and call it directly.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c       | 39 +++++----------
 drivers/staging/rtl8723bs/core/rtw_cmd.c      |  2 +-
 .../staging/rtl8723bs/core/rtw_ieee80211.c    |  2 +-
 .../staging/rtl8723bs/core/rtw_ioctl_set.c    |  4 +-
 drivers/staging/rtl8723bs/core/rtw_mlme.c     | 24 +++++-----
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 47 +++++++++----------
 drivers/staging/rtl8723bs/core/rtw_recv.c     | 22 ++++-----
 .../staging/rtl8723bs/core/rtw_wlan_util.c    |  6 +--
 drivers/staging/rtl8723bs/core/rtw_xmit.c     | 10 ++--
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  |  4 +-
 drivers/staging/rtl8723bs/include/ieee80211.h |  1 -
 .../staging/rtl8723bs/include/osdep_service.h |  3 --
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c | 14 +++---
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 16 +++----
 drivers/staging/rtl8723bs/os_dep/os_intfs.c   |  8 ++--
 drivers/staging/rtl8723bs/os_dep/recv_linux.c |  2 +-
 16 files changed, 93 insertions(+), 111 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index afe7023a9e8e..d9a55bee83a3 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -182,7 +182,7 @@ u8 chk_sta_is_alive(struct sta_info *psta)
 {
 	#ifdef DBG_EXPIRATION_CHK
 	DBG_871X(
-		"sta:"MAC_FMT", rssi:%d, rx:"STA_PKTS_FMT", expire_to:%u, %s%ssq_len:%u\n"
+		"sta:%pM, rssi:%d, rx:"STA_PKTS_FMT", expire_to:%u, %s%ssq_len:%u\n"
 		, MAC_ARG(psta->hwaddr)
 		, psta->rssi_stat.UndecoratedSmoothedPWDB
 		/*  STA_RX_PKTS_ARG(psta) */
@@ -297,7 +297,7 @@ void expire_timeout_chk(struct adapter *padapter)
 					psta->expire_to = pstapriv->expire_to;
 					psta->state |= WIFI_STA_ALIVE_CHK_STATE;
 
-					/* DBG_871X("alive chk, sta:" MAC_FMT " is at ps mode!\n", MAC_ARG(psta->hwaddr)); */
+					/* DBG_871X("alive chk, sta:%pM is at ps mode!\n", MAC_ARG(psta->hwaddr)); */
 
 					/* to update bcn with tim_bitmap for this station */
 					pstapriv->tim_bitmap |= BIT(psta->aid);
@@ -319,7 +319,7 @@ void expire_timeout_chk(struct adapter *padapter)
 			list_del_init(&psta->asoc_list);
 			pstapriv->asoc_list_cnt--;
 			DBG_871X(
-				"asoc expire "MAC_FMT", state = 0x%x\n",
+				"asoc expire %pM, state = 0x%x\n",
 				MAC_ARG(psta->hwaddr),
 				psta->state
 			);
@@ -332,7 +332,7 @@ void expire_timeout_chk(struct adapter *padapter)
 				) / 2)
 			) {
 				DBG_871X(
-					"%s sta:"MAC_FMT", sleepq_len:%u, free_xmitframe_cnt:%u, asoc_list_cnt:%u, clear sleep_q\n",
+					"%s sta:%pM, sleepq_len:%u, free_xmitframe_cnt:%u, asoc_list_cnt:%u, clear sleep_q\n",
 					__func__,
 					MAC_ARG(psta->hwaddr),
 					psta->sleepq_len,
@@ -372,7 +372,7 @@ void expire_timeout_chk(struct adapter *padapter)
 			psta->keep_alive_trycnt++;
 			if (ret == _SUCCESS) {
 				DBG_871X(
-					"asoc check, sta(" MAC_FMT ") is alive\n",
+					"asoc check, sta(%pM) is alive\n",
 					MAC_ARG(psta->hwaddr)
 					);
 				psta->expire_to = pstapriv->expire_to;
@@ -387,10 +387,8 @@ void expire_timeout_chk(struct adapter *padapter)
 			}
 
 			psta->keep_alive_trycnt = 0;
-			DBG_871X(
-				"asoc expire "MAC_FMT", state = 0x%x\n",
-				MAC_ARG(psta->hwaddr),
-				psta->state);
+			DBG_871X("asoc expire %pM, state = 0x%x\n", MAC_ARG(psta->hwaddr),
+				 psta->state);
 			spin_lock_bh(&pstapriv->asoc_list_lock);
 			if (list_empty(&psta->asoc_list) == false) {
 				list_del_init(&psta->asoc_list);
@@ -1335,12 +1333,7 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
 	struct wlan_acl_pool *pacl_list = &pstapriv->acl_list;
 	struct __queue	*pacl_node_q = &pacl_list->acl_node_q;
 
-	DBG_871X(
-		"%s(acl_num =%d) =" MAC_FMT "\n",
-		__func__,
-		pacl_list->num,
-		MAC_ARG(addr)
-	);
+	DBG_871X("%s(acl_num =%d) =%pM\n", __func__, pacl_list->num, MAC_ARG(addr));
 
 	if ((NUM_ACL - 1) < pacl_list->num)
 		return (-1);
@@ -1404,12 +1397,7 @@ void rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
 	struct __queue	*pacl_node_q = &pacl_list->acl_node_q;
 	u8 baddr[ETH_ALEN] = { 0xff, 0xff, 0xff, 0xff, 0xff, 0xff };	/* Baddr is used for clearing acl_list */
 
-	DBG_871X(
-		"%s(acl_num =%d) =" MAC_FMT "\n",
-		__func__,
-		pacl_list->num,
-		MAC_ARG(addr)
-	);
+	DBG_871X("%s(acl_num =%d) =%pM\n", __func__, pacl_list->num, MAC_ARG(addr));
 
 	spin_lock_bh(&(pacl_node_q->lock));
 
@@ -2021,7 +2009,7 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 	if (psta->flags & WLAN_STA_HT) {
 		u16 ht_capab = le16_to_cpu(psta->htpriv.ht_cap.cap_info);
 
-		DBG_871X("HT: STA " MAC_FMT " HT Capabilities "
+		DBG_871X("HT: STA %pM HT Capabilities "
 			   "Info: 0x%04x\n", MAC_ARG(psta->hwaddr), ht_capab);
 
 		if (psta->no_ht_set) {
@@ -2034,7 +2022,7 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 				psta->no_ht_gf_set = 1;
 				pmlmepriv->num_sta_ht_no_gf++;
 			}
-			DBG_871X("%s STA " MAC_FMT " - no "
+			DBG_871X("%s STA %pM - no "
 				   "greenfield, num of non-gf stations %d\n",
 				   __func__, MAC_ARG(psta->hwaddr),
 				   pmlmepriv->num_sta_ht_no_gf);
@@ -2045,7 +2033,7 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 				psta->ht_20mhz_set = 1;
 				pmlmepriv->num_sta_ht_20mhz++;
 			}
-			DBG_871X("%s STA " MAC_FMT " - 20 MHz HT, "
+			DBG_871X("%s STA %pM - 20 MHz HT, "
 				   "num of 20MHz HT STAs %d\n",
 				   __func__, MAC_ARG(psta->hwaddr),
 				   pmlmepriv->num_sta_ht_20mhz);
@@ -2057,8 +2045,7 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 			pmlmepriv->num_sta_no_ht++;
 		}
 		if (pmlmepriv->htpriv.ht_option == true) {
-			DBG_871X("%s STA " MAC_FMT
-				   " - no HT, num of non-HT stations %d\n",
+			DBG_871X("%s STA %pM - no HT, num of non-HT stations %d\n",
 				   __func__, MAC_ARG(psta->hwaddr),
 				   pmlmepriv->num_sta_no_ht);
 		}
diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 4cf09d947d32..4e11cd97cc01 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -1024,7 +1024,7 @@ u8 rtw_clearstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 enqueu
 
 	if (!enqueue) {
 		while ((cam_id = rtw_camid_search(padapter, sta->hwaddr, -1)) >= 0) {
-			DBG_871X_LEVEL(_drv_always_, "clear key for addr:"MAC_FMT", camid:%d\n", MAC_ARG(sta->hwaddr), cam_id);
+			DBG_871X_LEVEL(_drv_always_, "clear key for addr:%pM, camid:%d\n", MAC_ARG(sta->hwaddr), cam_id);
 			clear_cam_entry(padapter, cam_id);
 			rtw_camid_free(padapter, cam_id);
 		}
diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index c43cca4a3828..066dd9cbb60d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -1127,7 +1127,7 @@ void rtw_macaddr_cfg(struct device *dev, u8 *mac_addr)
 		}
 	}
 
-	DBG_871X("rtw_macaddr_cfg MAC Address  = "MAC_FMT"\n", MAC_ARG(mac_addr));
+	DBG_871X("rtw_macaddr_cfg MAC Address  = %pM\n", MAC_ARG(mac_addr));
 }
 
 static int rtw_get_cipher_info(struct wlan_network *pnetwork)
diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
index 8b5f6a66bfb8..d44b33e7a0a9 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
@@ -189,8 +189,8 @@ u8 rtw_set_802_11_bssid(struct adapter *padapter, u8 *bssid)
 				goto release_mlme_lock;/* it means driver is in WIFI_ADHOC_MASTER_STATE, we needn't create bss again. */
 		} else {
 			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("Set BSSID not the same bssid\n"));
-			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("set_bssid ="MAC_FMT"\n", MAC_ARG(bssid)));
-			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("cur_bssid ="MAC_FMT"\n", MAC_ARG(pmlmepriv->cur_network.network.MacAddress)));
+			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("set_bssid =%pM\n", MAC_ARG(bssid)));
+			RT_TRACE(_module_rtl871x_ioctl_set_c_, _drv_info_, ("cur_bssid =%pM\n", MAC_ARG(pmlmepriv->cur_network.network.MacAddress)));
 
 			rtw_disassoc_cmd(padapter, 0, true);
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 7f53ba541d04..b5226a517b91 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -494,7 +494,7 @@ void update_network(struct wlan_bssid_ex *dst, struct wlan_bssid_ex *src,
 
 	#if defined(DBG_RX_SIGNAL_DISPLAY_SSID_MONITORED) && 1
 	if (strcmp(dst->Ssid.Ssid, DBG_RX_SIGNAL_DISPLAY_SSID_MONITORED) == 0) {
-		DBG_871X(FUNC_ADPT_FMT" %s("MAC_FMT", ch%u) ss_ori:%3u, sq_ori:%3u, rssi_ori:%3ld, ss_smp:%3u, sq_smp:%3u, rssi_smp:%3ld\n"
+		DBG_871X(FUNC_ADPT_FMT" %s(%pM, ch%u) ss_ori:%3u, sq_ori:%3u, rssi_ori:%3ld, ss_smp:%3u, sq_smp:%3u, rssi_smp:%3ld\n"
 			, FUNC_ADPT_ARG(padapter)
 			, src->Ssid.Ssid, MAC_ARG(src->MacAddress), src->Configuration.DSConfig
 			, ss_ori, sq_ori, rssi_ori
@@ -539,7 +539,7 @@ void update_network(struct wlan_bssid_ex *dst, struct wlan_bssid_ex *src,
 
 	#if defined(DBG_RX_SIGNAL_DISPLAY_SSID_MONITORED) && 1
 	if (strcmp(dst->Ssid.Ssid, DBG_RX_SIGNAL_DISPLAY_SSID_MONITORED) == 0) {
-		DBG_871X(FUNC_ADPT_FMT" %s("MAC_FMT"), SignalStrength:%u, SignalQuality:%u, RawRSSI:%ld\n"
+		DBG_871X(FUNC_ADPT_FMT" %s(%pM), SignalStrength:%u, SignalQuality:%u, RawRSSI:%ld\n"
 			, FUNC_ADPT_ARG(padapter)
 			, dst->Ssid.Ssid, MAC_ARG(dst->MacAddress), dst->PhyInfo.SignalStrength, dst->PhyInfo.SignalQuality, dst->Rssi);
 	}
@@ -986,7 +986,7 @@ void rtw_free_assoc_resources(struct adapter *adapter, int lock_scanned_queue)
 	struct debug_priv *pdbgpriv = &psdpriv->drv_dbg;
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_notice_, ("+rtw_free_assoc_resources\n"));
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("tgt_network->network.MacAddress ="MAC_FMT" ssid =%s\n",
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("tgt_network->network.MacAddress =%pM ssid =%s\n",
 		MAC_ARG(tgt_network->network.MacAddress), tgt_network->network.Ssid.Ssid));
 
 	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE|WIFI_AP_STATE)) {
@@ -1221,7 +1221,7 @@ static void rtw_joinbss_update_network(struct adapter *padapter, struct wlan_net
 
 	DBG_871X("%s\n", __func__);
 
-	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\nfw_state:%x, BSSID:"MAC_FMT"\n"
+	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\nfw_state:%x, BSSID:%pM\n"
 		, get_fwstate(pmlmepriv), MAC_ARG(pnetwork->network.MacAddress)));
 
 	/*  why not use ptarget_wlan?? */
@@ -1578,7 +1578,7 @@ void rtw_stadel_event_callback(struct adapter *adapter, u8 *pbuf)
 	else
 		mac_id = pstadel->mac_id;
 
-	DBG_871X("%s(mac_id =%d) =" MAC_FMT "\n", __func__, mac_id, MAC_ARG(pstadel->macaddr));
+	DBG_871X("%s(mac_id =%d) =%pM\n", __func__, mac_id, MAC_ARG(pstadel->macaddr));
 
 	if (mac_id >= 0) {
 		u16 media_status;
@@ -1889,7 +1889,7 @@ static int rtw_check_roaming_candidate(struct mlme_priv *mlme
 	if (rtw_is_desired_network(adapter, competitor) == false)
 		goto exit;
 
-	DBG_871X("roam candidate:%s %s("MAC_FMT", ch%3u) rssi:%d, age:%5d\n",
+	DBG_871X("roam candidate:%s %s(%pM, ch%3u) rssi:%d, age:%5d\n",
 		(competitor == mlme->cur_network_scanned)?"*":" ",
 		competitor->network.Ssid.Ssid,
 		MAC_ARG(competitor->network.MacAddress),
@@ -1951,7 +1951,7 @@ int rtw_select_roaming_candidate(struct mlme_priv *mlme)
 
 		mlme->pscanned = get_next(mlme->pscanned);
 
-		DBG_871X("%s("MAC_FMT", ch%u) rssi:%d\n"
+		DBG_871X("%s(%pM, ch%u) rssi:%d\n"
 			, pnetwork->network.Ssid.Ssid
 			, MAC_ARG(pnetwork->network.MacAddress)
 			, pnetwork->network.Configuration.DSConfig
@@ -1966,7 +1966,7 @@ int rtw_select_roaming_candidate(struct mlme_priv *mlme)
 		ret = _FAIL;
 		goto exit;
 	} else {
-		DBG_871X("%s: candidate: %s("MAC_FMT", ch:%u)\n", __func__,
+		DBG_871X("%s: candidate: %s(%pM, ch:%u)\n", __func__,
 			candidate->network.Ssid.Ssid, MAC_ARG(candidate->network.MacAddress),
 			candidate->network.Configuration.DSConfig);
 
@@ -2026,7 +2026,7 @@ static int rtw_check_join_candidate(struct mlme_priv *mlme
 	if (updated) {
 		DBG_871X("[by_bssid:%u][assoc_ssid:%s]"
 			"[to_roam:%u] "
-			"new candidate: %s("MAC_FMT", ch%u) rssi:%d\n",
+			"new candidate: %s(%pM, ch%u) rssi:%d\n",
 			mlme->assoc_by_bssid,
 			mlme->assoc_ssid.Ssid,
 			rtw_to_roam(adapter),
@@ -2081,7 +2081,7 @@ int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
 
 		pmlmepriv->pscanned = get_next(pmlmepriv->pscanned);
 
-		DBG_871X("%s("MAC_FMT", ch%u) rssi:%d\n"
+		DBG_871X("%s(%pM, ch%u) rssi:%d\n"
 			, pnetwork->network.Ssid.Ssid
 			, MAC_ARG(pnetwork->network.MacAddress)
 			, pnetwork->network.Configuration.DSConfig
@@ -2099,7 +2099,7 @@ int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
 		ret = _FAIL;
 		goto exit;
 	} else {
-		DBG_871X("%s: candidate: %s("MAC_FMT", ch:%u)\n", __func__,
+		DBG_871X("%s: candidate: %s(%pM, ch:%u)\n", __func__,
 			candidate->network.Ssid.Ssid, MAC_ARG(candidate->network.MacAddress),
 			candidate->network.Configuration.DSConfig);
 		goto candidate_exist;
@@ -2941,7 +2941,7 @@ void _rtw_roaming(struct adapter *padapter, struct wlan_network *tgt_network)
 	int do_join_r;
 
 	if (0 < rtw_to_roam(padapter)) {
-		DBG_871X("roaming from %s("MAC_FMT"), length:%d\n",
+		DBG_871X("roaming from %s(%pM), length:%d\n",
 				cur_network->network.Ssid.Ssid, MAC_ARG(cur_network->network.MacAddress),
 				cur_network->network.Ssid.SsidLength);
 		memcpy(&pmlmepriv->assoc_ssid, &cur_network->network.Ssid, sizeof(struct ndis_802_11_ssid));
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 206bb6dfac97..f81ab2541554 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -638,19 +638,19 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 			goto _non_rc_device;
 
 		if (memcmp(p+6, get_sa(pframe), ETH_ALEN)) {
-			DBG_871X("%s, do rc pairing ("MAC_FMT"), but mac addr mismatch!("MAC_FMT")\n", __func__,
+			DBG_871X("%s, do rc pairing (%pM), but mac addr mismatch!(%pM)\n", __func__,
 				MAC_ARG(get_sa(pframe)), MAC_ARG(p+6));
 
 			goto _non_rc_device;
 		}
 
-		DBG_871X("%s, got the pairing device("MAC_FMT")\n", __func__,  MAC_ARG(get_sa(pframe)));
+		DBG_871X("%s, got the pairing device(%pM)\n", __func__,  MAC_ARG(get_sa(pframe)));
 
 		/* new a station */
 		psta = rtw_get_stainfo(pstapriv, get_sa(pframe));
 		if (psta == NULL) {
 			/*  allocate a new one */
-			DBG_871X("going to alloc stainfo for rc ="MAC_FMT"\n",  MAC_ARG(get_sa(pframe)));
+			DBG_871X("going to alloc stainfo for rc =%pM\n",  MAC_ARG(get_sa(pframe)));
 			psta = rtw_alloc_stainfo(pstapriv, get_sa(pframe));
 			if (!psta) {
 				/* TODO: */
@@ -787,7 +787,7 @@ unsigned int OnBeacon(struct adapter *padapter, union recv_frame *precv_frame)
 	if (p && ielen > 0) {
 		if ((*(p + 1 + ielen) == 0x2D) && (*(p + 2 + ielen) != 0x2D)) {
 			/* Invalid value 0x2D is detected in Extended Supported Rates (ESR) IE. Try to fix the IE length to avoid failed Beacon parsing. */
-			DBG_871X("[WIFIDBG] Error in ESR IE is detected in Beacon of BSSID:"MAC_FMT". Fix the length of ESR IE to avoid failed Beacon parsing.\n", MAC_ARG(GetAddr3Ptr(pframe)));
+			DBG_871X("[WIFIDBG] Error in ESR IE is detected in Beacon of BSSID:%pM. Fix the length of ESR IE to avoid failed Beacon parsing.\n", MAC_ARG(GetAddr3Ptr(pframe)));
 			*(p + 1) = ielen - 1;
 		}
 	}
@@ -954,7 +954,7 @@ unsigned int OnAuth(struct adapter *padapter, union recv_frame *precv_frame)
 	if (pstat == NULL) {
 
 		/*  allocate a new one */
-		DBG_871X("going to alloc stainfo for sa ="MAC_FMT"\n",  MAC_ARG(sa));
+		DBG_871X("going to alloc stainfo for sa =%pM\n",  MAC_ARG(sa));
 		pstat = rtw_alloc_stainfo(pstapriv, sa);
 		if (pstat == NULL) {
 			DBG_871X(" Exceed the upper limit of supported clients...\n");
@@ -1243,7 +1243,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 	/* now parse all ieee802_11 ie to point to elems */
 	if (rtw_ieee802_11_parse_elems(pos, left, &elems, 1) == ParseFailed ||
 	    !elems.ssid) {
-		DBG_871X("STA " MAC_FMT " sent invalid association request\n",
+		DBG_871X("STA %pM sent invalid association request\n",
 		       MAC_ARG(pstat->hwaddr));
 		status = _STATS_FAILURE_;
 		goto OnAssocReqFail;
@@ -1407,7 +1407,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 		int copy_len;
 
 		if (psecuritypriv->wpa_psk == 0) {
-			DBG_871X("STA " MAC_FMT ": WPA/RSN IE in association "
+			DBG_871X("STA %pM: WPA/RSN IE in association "
 			"request, but AP don't support WPA/RSN\n", MAC_ARG(pstat->hwaddr));
 
 			status = WLAN_STATUS_INVALID_IE;
@@ -1515,8 +1515,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 	if ((pstat->flags & WLAN_STA_HT) &&
 		    ((pstat->wpa2_pairwise_cipher&WPA_CIPHER_TKIP) ||
 		      (pstat->wpa_pairwise_cipher&WPA_CIPHER_TKIP))) {
-		DBG_871X("HT: " MAC_FMT " tried to "
-				   "use TKIP with HT association\n", MAC_ARG(pstat->hwaddr));
+		DBG_871X("HT: %pM tried to use TKIP with HT association\n", MAC_ARG(pstat->hwaddr));
 
 		/* status = WLAN_STATUS_CIPHER_REJECTED_PER_POLICY; */
 		/* goto OnAssocReqFail; */
@@ -2789,7 +2788,7 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
 		/* EID[1] + EID_LEN[1] + RC_OUI[4] + MAC[6] + PairingID[2] + ChannelNum[2] */
 		u16 cu_ch = (u16)cur_network->Configuration.DSConfig;
 
-		DBG_871X("%s, reply rc(pid = 0x%x) device "MAC_FMT" in ch =%d\n", __func__,
+		DBG_871X("%s, reply rc(pid = 0x%x) device %pM in ch =%d\n", __func__,
 			psta->pid, MAC_ARG(psta->hwaddr), cu_ch);
 
 		/* append vendor specific ie */
@@ -2946,7 +2945,7 @@ int issue_probereq_ex(struct adapter *padapter, struct ndis_802_11_ssid *pssid,
 
 	if (try_cnt && wait_ms) {
 		if (da)
-			DBG_871X(FUNC_ADPT_FMT" to "MAC_FMT", ch:%u%s, %d/%d in %u ms\n",
+			DBG_871X(FUNC_ADPT_FMT" to %pM, ch:%u%s, %d/%d in %u ms\n",
 				FUNC_ADPT_ARG(padapter), MAC_ARG(da), rtw_get_oper_ch(padapter),
 				ret == _SUCCESS?", acked":"", i, try_cnt, (i + 1) * wait_ms);
 		else
@@ -3508,7 +3507,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
 		else
 			rtw_hal_macid_wakeup(padapter, psta->mac_id);
 	} else {
-		DBG_871X(FUNC_ADPT_FMT ": Can't find sta info for " MAC_FMT ", skip macid %s!!\n",
+		DBG_871X(FUNC_ADPT_FMT ": Can't find sta info for %pM, skip macid %s!!\n",
 			FUNC_ADPT_ARG(padapter), MAC_ARG(da), power_mode?"sleep":"wakeup");
 		rtw_warn_on(1);
 	}
@@ -3535,7 +3534,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
 
 	if (try_cnt && wait_ms) {
 		if (da)
-			DBG_871X(FUNC_ADPT_FMT" to "MAC_FMT", ch:%u%s, %d/%d in %u ms\n",
+			DBG_871X(FUNC_ADPT_FMT" to %pM, ch:%u%s, %d/%d in %u ms\n",
 				FUNC_ADPT_ARG(padapter), MAC_ARG(da), rtw_get_oper_ch(padapter),
 				ret == _SUCCESS?", acked":"", i, try_cnt, (i + 1) * wait_ms);
 		else
@@ -3683,7 +3682,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
 
 	if (try_cnt && wait_ms) {
 		if (da)
-			DBG_871X(FUNC_ADPT_FMT" to "MAC_FMT", ch:%u%s, %d/%d in %u ms\n",
+			DBG_871X(FUNC_ADPT_FMT" to %pM, ch:%u%s, %d/%d in %u ms\n",
 				FUNC_ADPT_ARG(padapter), MAC_ARG(da), rtw_get_oper_ch(padapter),
 				ret == _SUCCESS?", acked":"", i, try_cnt, (i + 1) * wait_ms);
 		else
@@ -3709,7 +3708,7 @@ static int _issue_deauth(struct adapter *padapter, unsigned char *da,
 	int ret = _FAIL;
 	__le16 le_tmp;
 
-	/* DBG_871X("%s to "MAC_FMT"\n", __func__, MAC_ARG(da)); */
+	/* DBG_871X("%s to %pM\n", __func__, MAC_ARG(da)); */
 
 	pmgntframe = alloc_mgtxmitframe(pxmitpriv);
 	if (pmgntframe == NULL) {
@@ -3759,7 +3758,7 @@ static int _issue_deauth(struct adapter *padapter, unsigned char *da,
 
 int issue_deauth(struct adapter *padapter, unsigned char *da, unsigned short reason)
 {
-	DBG_871X("%s to "MAC_FMT"\n", __func__, MAC_ARG(da));
+	DBG_871X("%s to %pM\n", __func__, MAC_ARG(da));
 	return _issue_deauth(padapter, da, reason, false);
 }
 
@@ -3791,7 +3790,7 @@ int issue_deauth_ex(struct adapter *padapter, u8 *da, unsigned short reason, int
 
 	if (try_cnt && wait_ms) {
 		if (da)
-			DBG_871X(FUNC_ADPT_FMT" to "MAC_FMT", ch:%u%s, %d/%d in %u ms\n",
+			DBG_871X(FUNC_ADPT_FMT" to %pM, ch:%u%s, %d/%d in %u ms\n",
 				FUNC_ADPT_ARG(padapter), MAC_ARG(da), rtw_get_oper_ch(padapter),
 				ret == _SUCCESS?", acked":"", i, try_cnt, (i + 1) * wait_ms);
 		else
@@ -4569,7 +4568,7 @@ u8 collect_bss_info(struct adapter *padapter, union recv_frame *precv_frame, str
 
 	#if defined(DBG_RX_SIGNAL_DISPLAY_SSID_MONITORED) & 1
 	if (strcmp(bssid->Ssid.Ssid, DBG_RX_SIGNAL_DISPLAY_SSID_MONITORED) == 0) {
-		DBG_871X("Receiving %s("MAC_FMT", DSConfig:%u) from ch%u with ss:%3u, sq:%3u, RawRSSI:%3ld\n"
+		DBG_871X("Receiving %s(%pM, DSConfig:%u) from ch%u with ss:%3u, sq:%3u, RawRSSI:%3ld\n"
 			, bssid->Ssid.Ssid, MAC_ARG(bssid->MacAddress), bssid->Configuration.DSConfig
 			, rtw_get_oper_ch(padapter)
 			, bssid->PhyInfo.SignalStrength, bssid->PhyInfo.SignalQuality, bssid->Rssi
@@ -5591,7 +5590,7 @@ void _linked_info_dump(struct adapter *padapter)
 		if ((pmlmeinfo->state&0x03) == WIFI_FW_STATION_STATE) {
 			rtw_hal_get_def_var(padapter, HAL_DEF_UNDERCORATEDSMOOTHEDPWDB, &UndecoratedSmoothedPWDB);
 
-			DBG_871X("AP[" MAC_FMT "] - UndecoratedSmoothedPWDB:%d\n",
+			DBG_871X("AP[%pM] - UndecoratedSmoothedPWDB:%d\n",
 				MAC_ARG(padapter->mlmepriv.cur_network.network.MacAddress), UndecoratedSmoothedPWDB);
 		} else if ((pmlmeinfo->state&0x03) == _HW_STATE_AP_) {
 			struct list_head	*phead, *plist;
@@ -5606,7 +5605,7 @@ void _linked_info_dump(struct adapter *padapter)
 				psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
 				plist = get_next(plist);
 
-				DBG_871X("STA[" MAC_FMT "]:UndecoratedSmoothedPWDB:%d\n",
+				DBG_871X("STA[%pM]:UndecoratedSmoothedPWDB:%d\n",
 					MAC_ARG(psta->hwaddr), psta->rssi_stat.UndecoratedSmoothedPWDB);
 			}
 			spin_unlock_bh(&pstapriv->asoc_list_lock);
@@ -6456,7 +6455,7 @@ u8 setkey_hdl(struct adapter *padapter, u8 *pbuf)
 
 		ctrl = BIT(15) | BIT6 | ((pparm->algorithm) << 2) | pparm->keyid;
 		write_cam(padapter, cam_id, ctrl, addr, pparm->key);
-		DBG_871X_LEVEL(_drv_always_, "set group key camid:%d, addr:"MAC_FMT", kid:%d, type:%s\n"
+		DBG_871X_LEVEL(_drv_always_, "set group key camid:%d, addr:%pM, kid:%d, type:%s\n"
 			, cam_id, MAC_ARG(addr), pparm->keyid, security_type_str(pparm->algorithm));
 	}
 
@@ -6485,7 +6484,7 @@ u8 set_stakey_hdl(struct adapter *padapter, u8 *pbuf)
 
 	psta = rtw_get_stainfo(pstapriv, pparm->addr);
 	if (!psta) {
-		DBG_871X_LEVEL(_drv_always_, "%s sta:"MAC_FMT" not found\n", __func__, MAC_ARG(pparm->addr));
+		DBG_871X_LEVEL(_drv_always_, "%s sta:%pM not found\n", __func__, MAC_ARG(pparm->addr));
 		ret = H2C_REJECTED;
 		goto exit;
 	}
@@ -6498,12 +6497,12 @@ u8 set_stakey_hdl(struct adapter *padapter, u8 *pbuf)
 write_to_cam:
 	if (pparm->algorithm == _NO_PRIVACY_) {
 		while ((cam_id = rtw_camid_search(padapter, pparm->addr, -1)) >= 0) {
-			DBG_871X_LEVEL(_drv_always_, "clear key for addr:"MAC_FMT", camid:%d\n", MAC_ARG(pparm->addr), cam_id);
+			DBG_871X_LEVEL(_drv_always_, "clear key for addr:%pM, camid:%d\n", MAC_ARG(pparm->addr), cam_id);
 			clear_cam_entry(padapter, cam_id);
 			rtw_camid_free(padapter, cam_id);
 		}
 	} else {
-		DBG_871X_LEVEL(_drv_always_, "set pairwise key camid:%d, addr:"MAC_FMT", kid:%d, type:%s\n",
+		DBG_871X_LEVEL(_drv_always_, "set pairwise key camid:%d, addr:%pM, kid:%d, type:%s\n",
 			cam_id, MAC_ARG(pparm->addr), pparm->keyid, security_type_str(pparm->algorithm));
 		ctrl = BIT(15) | ((pparm->algorithm) << 2) | pparm->keyid;
 		write_cam(padapter, cam_id, ctrl, pparm->addr, pparm->key);
diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 560c188f0309..26e72decb07e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -893,7 +893,7 @@ sint ap2sta_data_frame(
 		if (!memcmp(myhwaddr, pattrib->src, ETH_ALEN)) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, (" SA ==myself\n"));
 			#ifdef DBG_RX_DROP_FRAME
-			DBG_871X("DBG_RX_DROP_FRAME %s SA ="MAC_FMT", myhwaddr ="MAC_FMT"\n",
+			DBG_871X("DBG_RX_DROP_FRAME %s SA =%pM, myhwaddr =%pM\n",
 				__func__, MAC_ARG(pattrib->src), MAC_ARG(myhwaddr));
 			#endif
 			ret = _FAIL;
@@ -903,9 +903,9 @@ sint ap2sta_data_frame(
 		/*  da should be for me */
 		if ((memcmp(myhwaddr, pattrib->dst, ETH_ALEN)) && (!bmcast)) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
-				(" ap2sta_data_frame:  compare DA fail; DA ="MAC_FMT"\n", MAC_ARG(pattrib->dst)));
+				(" ap2sta_data_frame:  compare DA fail; DA =%pM\n", MAC_ARG(pattrib->dst)));
 			#ifdef DBG_RX_DROP_FRAME
-			DBG_871X("DBG_RX_DROP_FRAME %s DA ="MAC_FMT"\n", __func__, MAC_ARG(pattrib->dst));
+			DBG_871X("DBG_RX_DROP_FRAME %s DA =%pM\n", __func__, MAC_ARG(pattrib->dst));
 			#endif
 			ret = _FAIL;
 			goto exit;
@@ -917,16 +917,16 @@ sint ap2sta_data_frame(
 		     !memcmp(mybssid, "\x0\x0\x0\x0\x0\x0", ETH_ALEN) ||
 		     (memcmp(pattrib->bssid, mybssid, ETH_ALEN))) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
-				(" ap2sta_data_frame:  compare BSSID fail ; BSSID ="MAC_FMT"\n", MAC_ARG(pattrib->bssid)));
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("mybssid ="MAC_FMT"\n", MAC_ARG(mybssid)));
+				(" ap2sta_data_frame:  compare BSSID fail ; BSSID =%pM\n", MAC_ARG(pattrib->bssid)));
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("mybssid =%pM\n", MAC_ARG(mybssid)));
 			#ifdef DBG_RX_DROP_FRAME
-			DBG_871X("DBG_RX_DROP_FRAME %s BSSID ="MAC_FMT", mybssid ="MAC_FMT"\n",
+			DBG_871X("DBG_RX_DROP_FRAME %s BSSID =%pM, mybssid =%pM\n",
 				__func__, MAC_ARG(pattrib->bssid), MAC_ARG(mybssid));
 			DBG_871X("this adapter = %d, buddy adapter = %d\n", adapter->adapter_type, adapter->pbuddystruct adapter->adapter_type);
 			#endif
 
 			if (!bmcast) {
-				DBG_871X("issue_deauth to the nonassociated ap =" MAC_FMT " for the reason(7)\n", MAC_ARG(pattrib->bssid));
+				DBG_871X("issue_deauth to the nonassociated ap =%pM for the reason(7)\n", MAC_ARG(pattrib->bssid));
 				issue_deauth(adapter, pattrib->bssid, WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA);
 			}
 
@@ -998,7 +998,7 @@ sint ap2sta_data_frame(
 				if (jiffies_to_msecs(jiffies - send_issue_deauth_time) > 10000 || send_issue_deauth_time == 0) {
 					send_issue_deauth_time = jiffies;
 
-					DBG_871X("issue_deauth to the ap =" MAC_FMT " for the reason(7)\n", MAC_ARG(pattrib->bssid));
+					DBG_871X("issue_deauth to the ap =%pM for the reason(7)\n", MAC_ARG(pattrib->bssid));
 
 					issue_deauth(adapter, pattrib->bssid, WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA);
 				}
@@ -1041,7 +1041,7 @@ sint sta2ap_data_frame(
 		*psta = rtw_get_stainfo(pstapriv, pattrib->src);
 		if (!*psta) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("can't get psta under AP_MODE; drop pkt\n"));
-			DBG_871X("issue_deauth to sta =" MAC_FMT " for the reason(7)\n", MAC_ARG(pattrib->src));
+			DBG_871X("issue_deauth to sta =%pM for the reason(7)\n", MAC_ARG(pattrib->src));
 
 			issue_deauth(adapter, pattrib->src, WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA);
 
@@ -1067,7 +1067,7 @@ sint sta2ap_data_frame(
 			ret = RTW_RX_HANDLED;
 			goto exit;
 		}
-		DBG_871X("issue_deauth to sta =" MAC_FMT " for the reason(7)\n", MAC_ARG(pattrib->src));
+		DBG_871X("issue_deauth to sta =%pM for the reason(7)\n", MAC_ARG(pattrib->src));
 		issue_deauth(adapter, pattrib->src, WLAN_REASON_CLASS3_FRAME_FROM_NONASSOC_STA);
 		ret = RTW_RX_HANDLED;
 		goto exit;
@@ -1653,7 +1653,7 @@ sint wlanhdr_to_ethhdr(union recv_frame *precvframe)
 
 			rx_pid = *(u16 *)(ptr+rmv_len+2);
 
-			DBG_871X("wlan rx(pid = 0x%x): sta("MAC_FMT") pid = 0x%x\n",
+			DBG_871X("wlan rx(pid = 0x%x): sta(%pM) pid = 0x%x\n",
 				rx_pid, MAC_ARG(psta->hwaddr), psta->pid);
 
 			if (rx_pid == psta->pid) {
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index e3e8140eec9e..e1c278501779 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -628,7 +628,7 @@ static s16 _rtw_camid_search(struct adapter *adapter, u8 *addr, s16 kid)
 	}
 
 	if (addr)
-		DBG_871X(FUNC_ADPT_FMT" addr:"MAC_FMT" kid:%d, return cam_id:%d\n"
+		DBG_871X(FUNC_ADPT_FMT" addr:%pM kid:%d, return cam_id:%d\n"
 			 , FUNC_ADPT_ARG(adapter), MAC_ARG(addr), kid, cam_id);
 	else
 		DBG_871X(FUNC_ADPT_FMT" addr:%p kid:%d, return cam_id:%d\n"
@@ -702,7 +702,7 @@ s16 rtw_camid_alloc(struct adapter *adapter, struct sta_info *sta, u8 kid)
 
 		if (i == TOTAL_CAM_ENTRY) {
 			if (sta)
-				DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT" pairwise key with "MAC_FMT" id:%u no room\n"
+				DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT" pairwise key with %pM id:%u no room\n"
 				, FUNC_ADPT_ARG(adapter), MAC_ARG(sta->hwaddr), kid);
 			else
 				DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT" group key id:%u no room\n"
@@ -1251,7 +1251,7 @@ int rtw_check_bcn_info(struct adapter *Adapter, u8 *pframe, u32 packet_len)
 	}
 
 	if (memcmp(cur_network->network.MacAddress, pbssid, 6)) {
-		DBG_871X("Oops: rtw_check_network_encrypt linked but recv other bssid bcn\n" MAC_FMT MAC_FMT,
+		DBG_871X("Oops: rtw_check_network_encrypt linked but recv other bssid bcn %pM %pM\n",
 				MAC_ARG(pbssid), MAC_ARG(cur_network->network.MacAddress));
 		return true;
 	}
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 10a34bce1f67..aaafa38c34c4 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -736,9 +736,9 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 		psta = rtw_get_stainfo(pstapriv, pattrib->ra);
 		if (!psta)	{ /*  if we cannot get psta => drop the pkt */
 			DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_err_ucast_sta);
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("\nupdate_attrib => get sta_info fail, ra:" MAC_FMT"\n", MAC_ARG(pattrib->ra)));
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("\nupdate_attrib => get sta_info fail, ra:%pM\n", MAC_ARG(pattrib->ra)));
 			#ifdef DBG_TX_DROP_FRAME
-			DBG_871X("DBG_TX_DROP_FRAME %s get sta_info fail, ra:" MAC_FMT"\n", __func__, MAC_ARG(pattrib->ra));
+			DBG_871X("DBG_TX_DROP_FRAME %s get sta_info fail, ra:%pM\n", __func__, MAC_ARG(pattrib->ra));
 			#endif
 			res = _FAIL;
 			goto exit;
@@ -752,9 +752,9 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 	if (!psta) {
 		/*  if we cannot get psta => drop the pkt */
 		DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_err_sta);
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("\nupdate_attrib => get sta_info fail, ra:" MAC_FMT "\n", MAC_ARG(pattrib->ra)));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("\nupdate_attrib => get sta_info fail, ra:%pM\n", MAC_ARG(pattrib->ra)));
 		#ifdef DBG_TX_DROP_FRAME
-		DBG_871X("DBG_TX_DROP_FRAME %s get sta_info fail, ra:" MAC_FMT"\n", __func__, MAC_ARG(pattrib->ra));
+		DBG_871X("DBG_TX_DROP_FRAME %s get sta_info fail, ra:%pM\n", __func__, MAC_ARG(pattrib->ra));
 		#endif
 		res = _FAIL;
 		goto exit;
@@ -762,7 +762,7 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 
 	if (!(psta->state & _FW_LINKED)) {
 		DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_err_link);
-		DBG_871X("%s, psta("MAC_FMT")->state(0x%x) != _FW_LINKED\n", __func__, MAC_ARG(psta->hwaddr), psta->state);
+		DBG_871X("%s, psta(%pM)->state(0x%x) != _FW_LINKED\n", __func__, MAC_ARG(psta->hwaddr), psta->state);
 		return _FAIL;
 	}
 
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index fd2b74003faf..a6d870d663a4 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -415,7 +415,7 @@ static void ConstructARPResponse(
 	{
 		SET_ARP_PKT_TARGET_MAC_ADDR(pARPRspPkt, get_my_bssid(&(pmlmeinfo->network)));
 		SET_ARP_PKT_TARGET_IP_ADDR(pARPRspPkt, pIPAddress);
-		DBG_871X("%s Target Mac Addr:" MAC_FMT "\n", __func__, MAC_ARG(get_my_bssid(&(pmlmeinfo->network))));
+		DBG_871X("%s Target Mac Addr:%pM\n", __func__, MAC_ARG(get_my_bssid(&(pmlmeinfo->network))));
 		DBG_871X("%s Target IP Addr" IP_FMT "\n", __func__, IP_ARG(pIPAddress));
 	}
 
@@ -737,7 +737,7 @@ static void ConstructProbeRsp(struct adapter *padapter, u8 *pframe, u32 *pLength
 	memcpy(pwlanhdr->addr2, mac, ETH_ALEN);
 	memcpy(pwlanhdr->addr3, bssid, ETH_ALEN);
 
-	DBG_871X("%s FW Mac Addr:" MAC_FMT "\n", __func__, MAC_ARG(mac));
+	DBG_871X("%s FW Mac Addr:%pM\n", __func__, MAC_ARG(mac));
 	DBG_871X("%s FW IP Addr" IP_FMT "\n", __func__, IP_ARG(StaAddr));
 
 	SetSeqNum(pwlanhdr, 0);
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index b7c4b1cf204e..902c710c1155 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -844,7 +844,6 @@ enum ieee80211_state {
 
 #define DEFAULT_MAX_SCAN_AGE (15 * HZ)
 #define DEFAULT_FTS 2346
-#define MAC_FMT "%pM"
 #define MAC_ARG(x) (x)
 #define IP_FMT "%pI4"
 #define IP_ARG(x) (x)
diff --git a/drivers/staging/rtl8723bs/include/osdep_service.h b/drivers/staging/rtl8723bs/include/osdep_service.h
index a94b72397ce7..dcc3cdce6d4b 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service.h
@@ -132,9 +132,6 @@ static inline int rtw_bug_check(void *parg1, void *parg2, void *parg3, void *par
 
 #define _RND(sz, r) ((((sz)+((r)-1))/(r))*(r))
 
-#ifndef MAC_FMT
-#define MAC_FMT "%pM"
-#endif
 #ifndef MAC_ARG
 #define MAC_ARG(x) (x)
 #endif
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 6b86f76bba77..5dfa2fa24c76 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -481,7 +481,7 @@ void rtw_cfg80211_indicate_connect(struct adapter *padapter)
 				/* DBG_871X(FUNC_ADPT_FMT" inform success !!\n", FUNC_ADPT_ARG(padapter)); */
 			}
 		} else {
-			DBG_871X("scanned: %s("MAC_FMT"), cur: %s("MAC_FMT")\n",
+			DBG_871X("scanned: %s(%pM), cur: %s(%pM)\n",
 				scanned->network.Ssid.Ssid, MAC_ARG(scanned->network.MacAddress),
 				pnetwork->Ssid.Ssid, MAC_ARG(pnetwork->MacAddress)
 			);
@@ -1222,7 +1222,7 @@ static int cfg80211_rtw_get_station(struct wiphy *wiphy,
 	}
 
 #ifdef DEBUG_CFG80211
-	DBG_871X(FUNC_NDEV_FMT" mac ="MAC_FMT"\n", FUNC_NDEV_ARG(ndev), MAC_ARG(mac));
+	DBG_871X(FUNC_NDEV_FMT" mac =%pM\n", FUNC_NDEV_ARG(ndev), MAC_ARG(mac));
 #endif
 
 	/* for infra./P2PClient mode */
@@ -1233,7 +1233,7 @@ static int cfg80211_rtw_get_station(struct wiphy *wiphy,
 		struct wlan_network  *cur_network = &(pmlmepriv->cur_network);
 
 		if (memcmp((u8 *)mac, cur_network->network.MacAddress, ETH_ALEN)) {
-			DBG_871X("%s, mismatch bssid ="MAC_FMT"\n", __func__, MAC_ARG(cur_network->network.MacAddress));
+			DBG_871X("%s, mismatch bssid =%pM\n", __func__, MAC_ARG(cur_network->network.MacAddress));
 			ret = -ENOENT;
 			goto exit;
 		}
@@ -2079,7 +2079,7 @@ static int cfg80211_rtw_connect(struct wiphy *wiphy, struct net_device *ndev,
 
 
 	if (sme->bssid)
-		DBG_8192C("bssid ="MAC_FMT"\n", MAC_ARG(sme->bssid));
+		DBG_8192C("bssid =%pM\n", MAC_ARG(sme->bssid));
 
 
 	if (check_fwstate(pmlmepriv, _FW_UNDER_LINKING) == true) {
@@ -2502,7 +2502,7 @@ static netdev_tx_t rtw_cfg80211_monitor_if_xmit_entry(struct sk_buff *skb, struc
 			goto fail;
 		}
 
-		DBG_8192C("RTW_Tx:da ="MAC_FMT" via "FUNC_NDEV_FMT"\n",
+		DBG_8192C("RTW_Tx:da =%pM via "FUNC_NDEV_FMT"\n",
 			MAC_ARG(GetAddr1Ptr(buf)), FUNC_NDEV_ARG(ndev));
 		if (category == RTW_WLAN_CATEGORY_PUBLIC)
 			DBG_871X("RTW_Tx:%s\n", action_public_str(action));
@@ -2838,7 +2838,7 @@ static int cfg80211_rtw_del_station(struct wiphy *wiphy, struct net_device *ndev
 	}
 
 
-	DBG_8192C("free sta macaddr =" MAC_FMT "\n", MAC_ARG(mac));
+	DBG_8192C("free sta macaddr =%pM\n", MAC_ARG(mac));
 
 	if (mac[0] == 0xff && mac[1] == 0xff &&
 	    mac[2] == 0xff && mac[3] == 0xff &&
@@ -3102,7 +3102,7 @@ static int cfg80211_rtw_mgmt_tx(struct wiphy *wiphy,
 		goto exit;
 	}
 
-	DBG_8192C("RTW_Tx:tx_ch =%d, da ="MAC_FMT"\n", tx_ch, MAC_ARG(GetAddr1Ptr(buf)));
+	DBG_8192C("RTW_Tx:tx_ch =%d, da =%pM\n", tx_ch, MAC_ARG(GetAddr1Ptr(buf)));
 	if (category == RTW_WLAN_CATEGORY_PUBLIC)
 		DBG_871X("RTW_Tx:%s\n", action_public_str(action));
 	else
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 68c1a8d0b7ba..3f3eab3d879a 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -2489,7 +2489,7 @@ static int rtw_get_ap_info(struct net_device *dev,
 
 
 		if (!memcmp(bssid, pnetwork->network.MacAddress, ETH_ALEN)) { /* BSSID match, then check if supporting wpa/wpa2 */
-			DBG_871X("BSSID:" MAC_FMT "\n", MAC_ARG(bssid));
+			DBG_871X("BSSID:%pM\n", MAC_ARG(bssid));
 
 			pbuf = rtw_get_wpa_ie(&pnetwork->network.IEs[12], &wpa_ielen, pnetwork->network.IELength-12);
 			if (pbuf && (wpa_ielen > 0)) {
@@ -2799,7 +2799,7 @@ static int rtw_dbg_port(struct net_device *dev,
 						struct recv_reorder_ctrl *preorder_ctrl;
 
 						DBG_871X("SSID =%s\n", cur_network->network.Ssid.Ssid);
-						DBG_871X("sta's macaddr:" MAC_FMT "\n", MAC_ARG(psta->hwaddr));
+						DBG_871X("sta's macaddr:%pM\n", MAC_ARG(psta->hwaddr));
 						DBG_871X("cur_channel =%d, cur_bwmode =%d, cur_ch_offset =%d\n", pmlmeext->cur_channel, pmlmeext->cur_bwmode, pmlmeext->cur_ch_offset);
 						DBG_871X("rtsen =%d, cts2slef =%d\n", psta->rtsen, psta->cts2self);
 						DBG_871X("state = 0x%x, aid =%d, macid =%d, raid =%d\n", psta->state, psta->aid, psta->mac_id, psta->raid);
@@ -2815,7 +2815,7 @@ static int rtw_dbg_port(struct net_device *dev,
 						}
 
 					} else {
-						DBG_871X("can't get sta's macaddr, cur_network's macaddr:" MAC_FMT "\n", MAC_ARG(cur_network->network.MacAddress));
+						DBG_871X("can't get sta's macaddr, cur_network's macaddr:%pM\n", MAC_ARG(cur_network->network.MacAddress));
 					}
 					break;
 				case 0x06:
@@ -2857,7 +2857,7 @@ static int rtw_dbg_port(struct net_device *dev,
 								plist = get_next(plist);
 
 								if (extra_arg == psta->aid) {
-									DBG_871X("sta's macaddr:" MAC_FMT "\n", MAC_ARG(psta->hwaddr));
+									DBG_871X("sta's macaddr:%pM\n", MAC_ARG(psta->hwaddr));
 									DBG_871X("rtsen =%d, cts2slef =%d\n", psta->rtsen, psta->cts2self);
 									DBG_871X("state = 0x%x, aid =%d, macid =%d, raid =%d\n", psta->state, psta->aid, psta->mac_id, psta->raid);
 									DBG_871X("qos_en =%d, ht_en =%d, init_rate =%d\n", psta->qos_option, psta->htpriv.ht_option, psta->init_rate);
@@ -3745,7 +3745,7 @@ static int rtw_add_sta(struct net_device *dev, struct ieee_param *param)
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
-	DBG_871X("rtw_add_sta(aid =%d) =" MAC_FMT "\n", param->u.add_sta.aid, MAC_ARG(param->sta_addr));
+	DBG_871X("rtw_add_sta(aid =%d) =%pM\n", param->u.add_sta.aid, MAC_ARG(param->sta_addr));
 
 	if (check_fwstate(pmlmepriv, (_FW_LINKED|WIFI_AP_STATE)) != true)
 		return -EINVAL;
@@ -3820,7 +3820,7 @@ static int rtw_del_sta(struct net_device *dev, struct ieee_param *param)
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
-	DBG_871X("rtw_del_sta =" MAC_FMT "\n", MAC_ARG(param->sta_addr));
+	DBG_871X("rtw_del_sta =%pM\n", MAC_ARG(param->sta_addr));
 
 	if (check_fwstate(pmlmepriv, (_FW_LINKED|WIFI_AP_STATE)) != true)
 		return -EINVAL;
@@ -3871,7 +3871,7 @@ static int rtw_ioctl_get_sta_data(struct net_device *dev, struct ieee_param *par
 	struct ieee_param_ex *param_ex = (struct ieee_param_ex *)param;
 	struct sta_data *psta_data = (struct sta_data *)param_ex->data;
 
-	DBG_871X("rtw_ioctl_get_sta_info, sta_addr: " MAC_FMT "\n", MAC_ARG(param_ex->sta_addr));
+	DBG_871X("rtw_ioctl_get_sta_info, sta_addr: %pM\n", MAC_ARG(param_ex->sta_addr));
 
 	if (check_fwstate(pmlmepriv, (_FW_LINKED|WIFI_AP_STATE)) != true)
 		return -EINVAL;
@@ -3932,7 +3932,7 @@ static int rtw_get_sta_wpaie(struct net_device *dev, struct ieee_param *param)
 	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
 	struct sta_priv *pstapriv = &padapter->stapriv;
 
-	DBG_871X("rtw_get_sta_wpaie, sta_addr: " MAC_FMT "\n", MAC_ARG(param->sta_addr));
+	DBG_871X("rtw_get_sta_wpaie, sta_addr: %pM\n", MAC_ARG(param->sta_addr));
 
 	if (check_fwstate(pmlmepriv, (_FW_LINKED|WIFI_AP_STATE)) != true)
 		return -EINVAL;
diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 2aaccf453907..ed8212b7deb4 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -864,7 +864,7 @@ static int _rtw_drv_register_netdev(struct adapter *padapter, char *name)
 		goto error_register_netdev;
 	}
 
-	DBG_871X("%s, MAC Address (if%d) = " MAC_FMT "\n", __func__, (padapter->iface_id + 1), MAC_ARG(pnetdev->dev_addr));
+	DBG_871X("%s, MAC Address (if%d) = %pM\n", __func__, (padapter->iface_id + 1), MAC_ARG(pnetdev->dev_addr));
 
 	return ret;
 
@@ -913,7 +913,7 @@ int _netdev_open(struct net_device *pnetdev)
 			goto netdev_open_error;
 		}
 
-		DBG_871X("MAC Address = " MAC_FMT "\n", MAC_ARG(pnetdev->dev_addr));
+		DBG_871X("MAC Address = %pM\n", MAC_ARG(pnetdev->dev_addr));
 
 		status = rtw_start_drv_threads(padapter);
 		if (status == _FAIL) {
@@ -1209,7 +1209,7 @@ static int rtw_suspend_free_assoc_resource(struct adapter *padapter)
 	if (rtw_chk_roam_flags(padapter, RTW_ROAM_ON_RESUME)) {
 		if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)
 			&& check_fwstate(pmlmepriv, _FW_LINKED)) {
-			DBG_871X("%s %s(" MAC_FMT "), length:%d assoc_ssid.length:%d\n", __func__,
+			DBG_871X("%s %s(%pM), length:%d assoc_ssid.length:%d\n", __func__,
 					pmlmepriv->cur_network.network.Ssid.Ssid,
 					MAC_ARG(pmlmepriv->cur_network.network.MacAddress),
 					pmlmepriv->cur_network.network.Ssid.SsidLength,
@@ -1284,7 +1284,7 @@ void rtw_suspend_wow(struct adapter *padapter)
 		padapter->HalFunc.SetHwRegHandler(padapter, HW_VAR_WOWLAN, (u8 *)&poidparam);
 		if (rtw_chk_roam_flags(padapter, RTW_ROAM_ON_RESUME)) {
 			if (check_fwstate(pmlmepriv, WIFI_STATION_STATE) && check_fwstate(pmlmepriv, _FW_LINKED)) {
-				DBG_871X("%s %s(" MAC_FMT "), length:%d assoc_ssid.length:%d\n", __func__,
+				DBG_871X("%s %s(%pM), length:%d assoc_ssid.length:%d\n", __func__,
 						pmlmepriv->cur_network.network.Ssid.Ssid,
 						MAC_ARG(pmlmepriv->cur_network.network.MacAddress),
 						pmlmepriv->cur_network.network.Ssid.SsidLength,
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 4a1d5293a327..63c1998bec7f 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -220,7 +220,7 @@ static void rtw_os_ksocket_send(struct adapter *padapter, union recv_frame *prec
 
 		rx_pid = *(u16*)(skb->data+ETH_HLEN);
 
-		DBG_871X("eth rx(pid = 0x%x): sta("MAC_FMT") pid = 0x%x\n",
+		DBG_871X("eth rx(pid = 0x%x): sta(%pM) pid = 0x%x\n",
 			rx_pid, MAC_ARG(psta->hwaddr), psta->pid);
 
 		if (rx_pid == psta->pid) {
-- 
2.25.1


_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
