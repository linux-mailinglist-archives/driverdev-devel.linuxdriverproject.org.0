Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1504B2D0056
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Dec 2020 04:46:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 95F692D47F;
	Sun,  6 Dec 2020 03:46:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ROhiddPb5VAo; Sun,  6 Dec 2020 03:46:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 52E2B200ED;
	Sun,  6 Dec 2020 03:46:13 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id DD33E1BF962
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:46:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CAE1120496
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:46:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PoBfk-7vSvnZ for <devel@linuxdriverproject.org>;
 Sun,  6 Dec 2020 03:45:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by silver.osuosl.org (Postfix) with ESMTPS id 0DA612725F
 for <devel@driverdev.osuosl.org>; Sun,  6 Dec 2020 03:45:35 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id 81so9938787ioc.13
 for <devel@driverdev.osuosl.org>; Sat, 05 Dec 2020 19:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=k+dztOKiDyjbxiA5CGqmDS/O6mAs+iZ/eG5CMI8saHA=;
 b=VDhIbRk9A0shKBrmodMIPs0Y8I8mpzbVbGnjtvlnyN2g1WzX+/rq9YyhJ9jiPb5Eys
 5UnFf6gx0Sw5BbeWehIE5dQmRiVSCk4JfGVhBEkfG/tF3kXwfuGxxMp7z0YIwzzkhB2a
 mlBzFRN4xvOhr9INs8zPYNcAFt6oMA0fVDPSDjeZs6t0gxM4bX0fPfZe7ytrBwYlHttA
 7Imo6e0/R95sY+vpDyP0Y0j+8VN3KQTBksBl+MU7Agb9r69lY9oobrTIAH0V901lX5Z4
 +g48iCNdU7A44Qg2t4cqXyEi7dxJ0jL6emtqSfj1dfjfkYArtdHBSbl0Q9d7pA1IiDJk
 32NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=k+dztOKiDyjbxiA5CGqmDS/O6mAs+iZ/eG5CMI8saHA=;
 b=SZCq8jQnW7tCAa02EkNORfnCRra24PGJMKWh6JucYJOl36Q8U/jIpK75RmGuxmLs2Y
 A+NRomcXpqqYe8qEgIpHPj+b9AMzYSyMR1DMV6yTSeSPUm4o1YKupHpabhwSGJuc8/qJ
 tVfxtBbZSxu2V9YnnYpeLeDN6VJwffrzf4ARpQ52WJkrwCWR4plhV5fuIDaAnrjYg9gu
 /xiVG3q6hifrwZDArQBmcGoWpfOfsn2+YlqvdaAaUGfKUlOrlKpkuGwNR7uBXzHWeDYL
 UJ88hAyI3jyjudXbGlDNGke1GIs5ua9AmgWEvSYYbLXL1HqliuccQHHMAKpaEfiDpLo1
 ZO8Q==
X-Gm-Message-State: AOAM531pyBMQ+tZUySObxcTWJyateZ3hPR+i6lYrs4VOF2MMruUnPO4U
 DJ+ouBsBFHmycPdIZU2OjEVu1w4kvd8=
X-Google-Smtp-Source: ABdhPJzwfD5GvKFHOPJ9YZyifPAo+beg9buYIsqJ6ZJTYuuVg1KQl2G8CbHfJ+EsvnwKNSb2Eidc+w==
X-Received: by 2002:a05:6602:8d:: with SMTP id
 h13mr12867095iob.163.1607226334028; 
 Sat, 05 Dec 2020 19:45:34 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id v63sm3908553ioe.52.2020.12.05.19.45.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Dec 2020 19:45:33 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 10/10] staging: rtl8723bs: replace unique macros and ELEMENT_ID
Date: Sat,  5 Dec 2020 21:45:17 -0600
Message-Id: <20201206034517.4276-10-ross.schm.dev@gmail.com>
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

Replace unique macros and ELEMENT_ID with kernel provided ieee80211_eid
enum.

In a several cases multiple macros or constants are replaced by one
constant.

WLAN_EID_HT_CAP, _HT_CAPABILITY_IE_, and EID_HTCapability are replace by
WLAN_EID_HT_CAPABILITY.

_WPA2_IE_ID_, EID_WPA2, and _RSN_IE_2_ are replaced by WLAN_EID_RSN.

_HT_EXTRA_INFO_IE_ and _HT_ADD_INFO_IE_ are replaced by
WLAN_EID_HT_OPERATION.

WLAN_EID_GENERIC, _WPA_IE_ID_, _SSN_IE_1_, and _VENDOR_SPECIFIC_IE_ are
replaced by WLAN_EID_VENDOR_SPECIFIC.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c       |  62 ++++----
 drivers/staging/rtl8723bs/core/rtw_cmd.c      |   4 +-
 .../staging/rtl8723bs/core/rtw_ieee80211.c    |  44 +++---
 drivers/staging/rtl8723bs/core/rtw_mlme.c     |  26 ++--
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 146 +++++++++---------
 drivers/staging/rtl8723bs/core/rtw_recv.c     |   4 +-
 drivers/staging/rtl8723bs/core/rtw_security.c |   2 +-
 .../staging/rtl8723bs/core/rtw_wlan_util.c    |  26 ++--
 drivers/staging/rtl8723bs/core/rtw_xmit.c     |  12 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  |  20 +--
 drivers/staging/rtl8723bs/include/ieee80211.h |   8 -
 .../staging/rtl8723bs/include/rtw_security.h  |   3 -
 drivers/staging/rtl8723bs/include/wifi.h      | 108 -------------
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c |   4 +-
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    |  14 +-
 drivers/staging/rtl8723bs/os_dep/mlme_linux.c |   2 +-
 16 files changed, 183 insertions(+), 302 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 04d5852d0d3e..b6f944b37b08 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -76,7 +76,7 @@ static void update_BCNTIM(struct adapter *padapter)
 
 		p = rtw_get_ie(
 			pie + _FIXED_IE_LENGTH_,
-			_TIM_IE_,
+			WLAN_EID_TIM,
 			&tim_ielen,
 			pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_
 		);
@@ -100,7 +100,7 @@ static void update_BCNTIM(struct adapter *padapter)
 			/* get ssid_ie len */
 			p = rtw_get_ie(
 				pie + _BEACON_IE_OFFSET_,
-				_SSID_IE_,
+				WLAN_EID_SSID,
 				&tmp_len,
 				(pnetwork_mlmeext->IELength - _BEACON_IE_OFFSET_)
 			);
@@ -110,7 +110,7 @@ static void update_BCNTIM(struct adapter *padapter)
 			/*  get supported rates len */
 			p = rtw_get_ie(
 				pie + _BEACON_IE_OFFSET_,
-				_SUPPORTEDRATES_IE_, &tmp_len,
+				WLAN_EID_SUPP_RATES, &tmp_len,
 				(pnetwork_mlmeext->IELength - _BEACON_IE_OFFSET_)
 			);
 			if (p)
@@ -133,7 +133,7 @@ static void update_BCNTIM(struct adapter *padapter)
 				memcpy(pbackup_remainder_ie, premainder_ie, remainder_ielen);
 		}
 
-		*dst_ie++ = _TIM_IE_;
+		*dst_ie++ = WLAN_EID_TIM;
 
 		if ((pstapriv->tim_bitmap & 0xff00) && (pstapriv->tim_bitmap & 0x00fe))
 			tim_ielen = 5;
@@ -301,7 +301,7 @@ void expire_timeout_chk(struct adapter *padapter)
 
 					/* to update bcn with tim_bitmap for this station */
 					pstapriv->tim_bitmap |= BIT(psta->aid);
-					update_beacon(padapter, _TIM_IE_, NULL, true);
+					update_beacon(padapter, WLAN_EID_TIM, NULL, true);
 
 					if (!pmlmeext->active_keep_alive_check)
 						continue;
@@ -855,7 +855,7 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	/* set channel, bwmode */
 	p = rtw_get_ie(
 		(pnetwork->IEs + sizeof(struct ndis_802_11_fix_ie)),
-		_HT_ADD_INFO_IE_,
+		WLAN_EID_HT_OPERATION,
 		&ie_len,
 		(pnetwork->IELength - sizeof(struct ndis_802_11_fix_ie))
 	);
@@ -922,7 +922,7 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
 	);
 
 	if (pmlmeext->bstart_bss) {
-		update_beacon(padapter, _TIM_IE_, NULL, true);
+		update_beacon(padapter, WLAN_EID_TIM, NULL, true);
 
 #ifndef CONFIG_INTERRUPT_BASED_TXBCN /* other case will  tx beacon when bcn interrupt coming in. */
 		/* issue beacon frame */
@@ -1004,7 +1004,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	/* SSID */
 	p = rtw_get_ie(
 		ie + _BEACON_IE_OFFSET_,
-		_SSID_IE_,
+		WLAN_EID_SSID,
 		&ie_len,
 		(pbss_network->IELength - _BEACON_IE_OFFSET_)
 	);
@@ -1019,7 +1019,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	pbss_network->Configuration.Length = 0;
 	p = rtw_get_ie(
 		ie + _BEACON_IE_OFFSET_,
-		_DSSET_IE_, &ie_len,
+		WLAN_EID_DS_PARAMS, &ie_len,
 		(pbss_network->IELength - _BEACON_IE_OFFSET_)
 	);
 	if (p && ie_len > 0)
@@ -1031,7 +1031,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	/*  get supported rates */
 	p = rtw_get_ie(
 		ie + _BEACON_IE_OFFSET_,
-		_SUPPORTEDRATES_IE_,
+		WLAN_EID_SUPP_RATES,
 		&ie_len,
 		(pbss_network->IELength - _BEACON_IE_OFFSET_)
 	);
@@ -1043,7 +1043,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	/* get ext_supported rates */
 	p = rtw_get_ie(
 		ie + _BEACON_IE_OFFSET_,
-		_EXT_SUPPORTEDRATES_IE_,
+		WLAN_EID_EXT_SUPP_RATES,
 		&ie_len,
 		pbss_network->IELength - _BEACON_IE_OFFSET_
 	);
@@ -1059,7 +1059,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	/* parsing ERP_IE */
 	p = rtw_get_ie(
 		ie + _BEACON_IE_OFFSET_,
-		_ERPINFO_IE_,
+		WLAN_EID_ERP_INFO,
 		&ie_len,
 		(pbss_network->IELength - _BEACON_IE_OFFSET_)
 	);
@@ -1080,7 +1080,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	psecuritypriv->wpa2_pairwise_cipher = _NO_PRIVACY_;
 	p = rtw_get_ie(
 		ie + _BEACON_IE_OFFSET_,
-		_RSN_IE_2_,
+		WLAN_EID_RSN,
 		&ie_len,
 		(pbss_network->IELength - _BEACON_IE_OFFSET_)
 	);
@@ -1110,7 +1110,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	for (p = ie + _BEACON_IE_OFFSET_; ; p += (ie_len + 2)) {
 		p = rtw_get_ie(
 			p,
-			_SSN_IE_1_,
+			WLAN_EID_VENDOR_SPECIFIC,
 			&ie_len,
 			(pbss_network->IELength - _BEACON_IE_OFFSET_ - (ie_len + 2))
 		);
@@ -1146,7 +1146,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		for (p = ie + _BEACON_IE_OFFSET_; ; p += (ie_len + 2)) {
 			p = rtw_get_ie(
 				p,
-				_VENDOR_SPECIFIC_IE_,
+				WLAN_EID_VENDOR_SPECIFIC,
 				&ie_len,
 				(pbss_network->IELength - _BEACON_IE_OFFSET_ - (ie_len + 2))
 			);
@@ -1172,7 +1172,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	/* parsing HT_CAP_IE */
 	p = rtw_get_ie(
 		ie + _BEACON_IE_OFFSET_,
-		_HT_CAPABILITY_IE_,
+		WLAN_EID_HT_CAPABILITY,
 		&ie_len,
 		(pbss_network->IELength - _BEACON_IE_OFFSET_)
 	);
@@ -1235,7 +1235,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	/* parsing HT_INFO_IE */
 	p = rtw_get_ie(
 		ie + _BEACON_IE_OFFSET_,
-		_HT_ADD_INFO_IE_,
+		WLAN_EID_HT_OPERATION,
 		&ie_len,
 		(pbss_network->IELength - _BEACON_IE_OFFSET_)
 	);
@@ -1585,7 +1585,7 @@ static void update_bcn_erpinfo_ie(struct adapter *padapter)
 	/* parsing ERP_IE */
 	p = rtw_get_ie(
 		ie + _BEACON_IE_OFFSET_,
-		_ERPINFO_IE_,
+		WLAN_EID_ERP_INFO,
 		&len,
 		(pnetwork->IELength - _BEACON_IE_OFFSET_)
 	);
@@ -1762,37 +1762,37 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 
 		break;
 
-	case _TIM_IE_:
+	case WLAN_EID_TIM:
 
 		update_BCNTIM(padapter);
 
 		break;
 
-	case _ERPINFO_IE_:
+	case WLAN_EID_ERP_INFO:
 
 		update_bcn_erpinfo_ie(padapter);
 
 		break;
 
-	case _HT_CAPABILITY_IE_:
+	case WLAN_EID_HT_CAPABILITY:
 
 		update_bcn_htcap_ie(padapter);
 
 		break;
 
-	case _RSN_IE_2_:
+	case WLAN_EID_RSN:
 
 		update_bcn_rsn_ie(padapter);
 
 		break;
 
-	case _HT_ADD_INFO_IE_:
+	case WLAN_EID_HT_OPERATION:
 
 		update_bcn_htinfo_ie(padapter);
 
 		break;
 
-	case _VENDOR_SPECIFIC_IE_:
+	case WLAN_EID_VENDOR_SPECIFIC:
 
 		update_bcn_vendor_spec_ie(padapter, oui);
 
@@ -1964,7 +1964,7 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 
 			if (pmlmepriv->num_sta_non_erp == 1) {
 				beacon_updated = true;
-				update_beacon(padapter, _ERPINFO_IE_, NULL, true);
+				update_beacon(padapter, WLAN_EID_ERP_INFO, NULL, true);
 			}
 		}
 	} else {
@@ -1975,7 +1975,7 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 
 			if (pmlmepriv->num_sta_non_erp == 0) {
 				beacon_updated = true;
-				update_beacon(padapter, _ERPINFO_IE_, NULL, true);
+				update_beacon(padapter, WLAN_EID_ERP_INFO, NULL, true);
 			}
 		}
 	}
@@ -2052,8 +2052,8 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 	}
 
 	if (rtw_ht_operation_update(padapter) > 0) {
-		update_beacon(padapter, _HT_CAPABILITY_IE_, NULL, false);
-		update_beacon(padapter, _HT_ADD_INFO_IE_, NULL, true);
+		update_beacon(padapter, WLAN_EID_HT_CAPABILITY, NULL, false);
+		update_beacon(padapter, WLAN_EID_HT_OPERATION, NULL, true);
 	}
 
 	/* update associated stations cap. */
@@ -2086,7 +2086,7 @@ u8 bss_cap_update_on_sta_leave(struct adapter *padapter, struct sta_info *psta)
 		pmlmepriv->num_sta_non_erp--;
 		if (pmlmepriv->num_sta_non_erp == 0) {
 			beacon_updated = true;
-			update_beacon(padapter, _ERPINFO_IE_, NULL, true);
+			update_beacon(padapter, WLAN_EID_ERP_INFO, NULL, true);
 		}
 	}
 
@@ -2116,8 +2116,8 @@ u8 bss_cap_update_on_sta_leave(struct adapter *padapter, struct sta_info *psta)
 	}
 
 	if (rtw_ht_operation_update(padapter) > 0) {
-		update_beacon(padapter, _HT_CAPABILITY_IE_, NULL, false);
-		update_beacon(padapter, _HT_ADD_INFO_IE_, NULL, true);
+		update_beacon(padapter, WLAN_EID_HT_CAPABILITY, NULL, false);
+		update_beacon(padapter, WLAN_EID_HT_OPERATION, NULL, true);
 	}
 
 	/* update associated stations cap. */
diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index f6160f1cca43..3fe79169a811 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -842,7 +842,7 @@ u8 rtw_joinbss_cmd(struct adapter  *padapter, struct wlan_network *pnetwork)
 	}
 
 	phtpriv->ht_option = false;
-	ptmp = rtw_get_ie(&pnetwork->network.IEs[12], _HT_CAPABILITY_IE_, &tmp_len, pnetwork->network.IELength-12);
+	ptmp = rtw_get_ie(&pnetwork->network.IEs[12], WLAN_EID_HT_CAPABILITY, &tmp_len, pnetwork->network.IELength-12);
 	if (pregistrypriv->ht_enable && ptmp && tmp_len > 0) {
 		/* 	Added by Albert 2010/06/23 */
 		/* 	For the WEP mode, we will use the bg mode to do the connection to avoid some IOT issue. */
@@ -1703,7 +1703,7 @@ static void rtw_chk_hi_queue_hdl(struct adapter *padapter)
 			pstapriv->sta_dz_bitmap &= ~BIT(0);
 
 			if (update_tim)
-				update_beacon(padapter, _TIM_IE_, NULL, true);
+				update_beacon(padapter, WLAN_EID_TIM, NULL, true);
 		} else {/* re check again */
 			rtw_chk_hi_queue_cmd(padapter);
 		}
diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index e80b957f947f..be4cffce4f5d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -326,7 +326,7 @@ int rtw_generate_ie(struct registry_priv *pregistrypriv)
 	ie += 2;
 
 	/* SSID */
-	ie = rtw_set_ie(ie, _SSID_IE_, pdev_network->Ssid.SsidLength, pdev_network->Ssid.Ssid, &sz);
+	ie = rtw_set_ie(ie, WLAN_EID_SSID, pdev_network->Ssid.SsidLength, pdev_network->Ssid.Ssid, &sz);
 
 	/* supported rates */
 	if (pregistrypriv->wireless_mode == WIRELESS_11ABGN) {
@@ -343,21 +343,21 @@ int rtw_generate_ie(struct registry_priv *pregistrypriv)
 	rateLen = rtw_get_rateset_len(pdev_network->SupportedRates);
 
 	if (rateLen > 8) {
-		ie = rtw_set_ie(ie, _SUPPORTEDRATES_IE_, 8, pdev_network->SupportedRates, &sz);
-		/* ie = rtw_set_ie(ie, _EXT_SUPPORTEDRATES_IE_, (rateLen - 8), (pdev_network->SupportedRates + 8), &sz); */
+		ie = rtw_set_ie(ie, WLAN_EID_SUPP_RATES, 8, pdev_network->SupportedRates, &sz);
+		/* ie = rtw_set_ie(ie, WLAN_EID_EXT_SUPP_RATES, (rateLen - 8), (pdev_network->SupportedRates + 8), &sz); */
 	} else {
-		ie = rtw_set_ie(ie, _SUPPORTEDRATES_IE_, rateLen, pdev_network->SupportedRates, &sz);
+		ie = rtw_set_ie(ie, WLAN_EID_SUPP_RATES, rateLen, pdev_network->SupportedRates, &sz);
 	}
 
 	/* DS parameter set */
-	ie = rtw_set_ie(ie, _DSSET_IE_, 1, (u8 *)&(pdev_network->Configuration.DSConfig), &sz);
+	ie = rtw_set_ie(ie, WLAN_EID_DS_PARAMS, 1, (u8 *)&(pdev_network->Configuration.DSConfig), &sz);
 
 	/* IBSS Parameter Set */
 
-	ie = rtw_set_ie(ie, _IBSS_PARA_IE_, 2, (u8 *)&(pdev_network->Configuration.ATIMWindow), &sz);
+	ie = rtw_set_ie(ie, WLAN_EID_IBSS_PARAMS, 2, (u8 *)&(pdev_network->Configuration.ATIMWindow), &sz);
 
 	if (rateLen > 8) {
-		ie = rtw_set_ie(ie, _EXT_SUPPORTEDRATES_IE_, (rateLen - 8), (pdev_network->SupportedRates + 8), &sz);
+		ie = rtw_set_ie(ie, WLAN_EID_EXT_SUPP_RATES, (rateLen - 8), (pdev_network->SupportedRates + 8), &sz);
 	}
 
 	/* HT Cap. */
@@ -383,7 +383,7 @@ unsigned char *rtw_get_wpa_ie(unsigned char *pie, int *wpa_ie_len, int limit)
 	__le16 le_tmp;
 
 	while (1) {
-		pbuf = rtw_get_ie(pbuf, _WPA_IE_ID_, &len, limit_new);
+		pbuf = rtw_get_ie(pbuf, WLAN_EID_VENDOR_SPECIFIC, &len, limit_new);
 
 		if (pbuf) {
 			/* check if oui matches... */
@@ -424,7 +424,7 @@ unsigned char *rtw_get_wpa_ie(unsigned char *pie, int *wpa_ie_len, int limit)
 
 unsigned char *rtw_get_wpa2_ie(unsigned char *pie, int *rsn_ie_len, int limit)
 {
-	return rtw_get_ie(pie, _WPA2_IE_ID_, rsn_ie_len, limit);
+	return rtw_get_ie(pie, WLAN_EID_RSN, rsn_ie_len, limit);
 }
 
 int rtw_get_wpa_cipher_suite(u8 *s)
@@ -471,7 +471,7 @@ int rtw_parse_wpa_ie(u8 *wpa_ie, int wpa_ie_len, int *group_cipher, int *pairwis
 		return _FAIL;
 	}
 
-	if ((*wpa_ie != _WPA_IE_ID_) || (*(wpa_ie+1) != (u8)(wpa_ie_len - 2)) ||
+	if ((*wpa_ie != WLAN_EID_VENDOR_SPECIFIC) || (*(wpa_ie+1) != (u8)(wpa_ie_len - 2)) ||
 	   (memcmp(wpa_ie+2, RTW_WPA_OUI_TYPE, WPA_SELECTOR_LEN))) {
 		return _FAIL;
 	}
@@ -544,7 +544,7 @@ int rtw_parse_wpa2_ie(u8 *rsn_ie, int rsn_ie_len, int *group_cipher, int *pairwi
 		return _FAIL;
 	}
 
-	if ((*rsn_ie != _WPA2_IE_ID_) || (*(rsn_ie+1) != (u8)(rsn_ie_len - 2))) {
+	if ((*rsn_ie != WLAN_EID_RSN) || (*(rsn_ie+1) != (u8)(rsn_ie_len - 2))) {
 		return _FAIL;
 	}
 
@@ -623,8 +623,8 @@ int rtw_get_wapi_ie(u8 *in_ie, uint in_len, u8 *wapi_ie, u16 *wapi_len)
 	while (cnt < in_len) {
 		authmode = in_ie[cnt];
 
-		/* if (authmode == _WAPI_IE_) */
-		if (authmode == _WAPI_IE_ && (!memcmp(&in_ie[cnt+6], wapi_oui1, 4) ||
+		/* if (authmode == WLAN_EID_BSS_AC_ACCESS_DELAY) */
+		if (authmode == WLAN_EID_BSS_AC_ACCESS_DELAY && (!memcmp(&in_ie[cnt+6], wapi_oui1, 4) ||
 					!memcmp(&in_ie[cnt+6], wapi_oui2, 4))) {
 			if (wapi_ie) {
 				memcpy(wapi_ie, &in_ie[cnt], in_ie[cnt+1]+2);
@@ -667,7 +667,7 @@ void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie
 	while (cnt < in_len) {
 		authmode = in_ie[cnt];
 
-		if ((authmode == _WPA_IE_ID_) && (!memcmp(&in_ie[cnt+2], &wpa_oui[0], 4))) {
+		if ((authmode == WLAN_EID_VENDOR_SPECIFIC) && (!memcmp(&in_ie[cnt+2], &wpa_oui[0], 4))) {
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n rtw_get_wpa_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n", sec_idx, in_ie[cnt+1]+2));
 
 				if (wpa_ie) {
@@ -683,7 +683,7 @@ void rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie
 				*wpa_len = in_ie[cnt+1]+2;
 				cnt += in_ie[cnt+1]+2;  /* get next */
 		} else {
-			if (authmode == _WPA2_IE_ID_) {
+			if (authmode == WLAN_EID_RSN) {
 				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n get_rsn_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n", sec_idx, in_ie[cnt+1]+2));
 
 				if (rsn_ie) {
@@ -715,7 +715,7 @@ u8 rtw_is_wps_ie(u8 *ie_ptr, uint *wps_ielen)
 
 	eid = ie_ptr[0];
 
-	if ((eid == _WPA_IE_ID_) && (!memcmp(&ie_ptr[2], wps_oui, 4))) {
+	if ((eid == WLAN_EID_VENDOR_SPECIFIC) && (!memcmp(&ie_ptr[2], wps_oui, 4))) {
 		/* DBG_8192C("==> found WPS_IE.....\n"); */
 		*wps_ielen = ie_ptr[1]+2;
 		match = true;
@@ -749,7 +749,7 @@ u8 *rtw_get_wps_ie(u8 *in_ie, uint in_len, u8 *wps_ie, uint *wps_ielen)
 	while (cnt < in_len) {
 		eid = in_ie[cnt];
 
-		if ((eid == _WPA_IE_ID_) && (!memcmp(&in_ie[cnt+2], wps_oui, 4))) {
+		if ((eid == WLAN_EID_VENDOR_SPECIFIC) && (!memcmp(&in_ie[cnt+2], wps_oui, 4))) {
 			wpsie_ptr = &in_ie[cnt];
 
 			if (wps_ie)
@@ -788,7 +788,7 @@ u8 *rtw_get_wps_attr(u8 *wps_ie, uint wps_ielen, u16 target_attr_id, u8 *buf_att
 	if (len_attr)
 		*len_attr = 0;
 
-	if ((wps_ie[0] != _VENDOR_SPECIFIC_IE_) ||
+	if ((wps_ie[0] != WLAN_EID_VENDOR_SPECIFIC) ||
 		(memcmp(wps_ie + 2, wps_oui, 4))) {
 		return attr_ptr;
 	}
@@ -1056,7 +1056,7 @@ ParseRes rtw_ieee802_11_parse_elems(u8 *start, uint len,
 			elems->timeout_int = pos;
 			elems->timeout_int_len = elen;
 			break;
-		case WLAN_EID_HT_CAP:
+		case WLAN_EID_HT_CAPABILITY:
 			elems->ht_capabilities = pos;
 			elems->ht_capabilities_len = elen;
 			break;
@@ -1072,7 +1072,7 @@ ParseRes rtw_ieee802_11_parse_elems(u8 *start, uint len,
 			elems->vht_operation = pos;
 			elems->vht_operation_len = elen;
 			break;
-		case WLAN_EID_VHT_OP_MODE_NOTIFY:
+		case WLAN_EID_OPMODE_NOTIF:
 			elems->vht_op_mode_notify = pos;
 			elems->vht_op_mode_notify_len = elen;
 			break;
@@ -1209,7 +1209,7 @@ void rtw_get_bcn_info(struct wlan_network *pnetwork)
 
 	/* get bwmode and ch_offset */
 	/* parsing HT_CAP_IE */
-	p = rtw_get_ie(pnetwork->network.IEs + _FIXED_IE_LENGTH_, _HT_CAPABILITY_IE_, &len, pnetwork->network.IELength - _FIXED_IE_LENGTH_);
+	p = rtw_get_ie(pnetwork->network.IEs + _FIXED_IE_LENGTH_, WLAN_EID_HT_CAPABILITY, &len, pnetwork->network.IELength - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
 			pht_cap = (struct ieee80211_ht_cap *)(p + 2);
 			pnetwork->BcnInfo.ht_cap_info = le16_to_cpu(pht_cap->cap_info);
@@ -1217,7 +1217,7 @@ void rtw_get_bcn_info(struct wlan_network *pnetwork)
 			pnetwork->BcnInfo.ht_cap_info = 0;
 	}
 	/* parsing HT_INFO_IE */
-	p = rtw_get_ie(pnetwork->network.IEs + _FIXED_IE_LENGTH_, _HT_ADD_INFO_IE_, &len, pnetwork->network.IELength - _FIXED_IE_LENGTH_);
+	p = rtw_get_ie(pnetwork->network.IEs + _FIXED_IE_LENGTH_, WLAN_EID_HT_OPERATION, &len, pnetwork->network.IELength - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
 			pht_info = (struct HT_info_element *)(p + 2);
 			pnetwork->BcnInfo.ht_info_infos_0 = pht_info->infos[0];
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index f05fcf9892e5..6969f220da94 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -736,7 +736,7 @@ int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *pnetwor
 	    bselected = false;
 
 		if (psecuritypriv->ndisauthtype == Ndis802_11AuthModeWPA2PSK) {
-			p = rtw_get_ie(pnetwork->network.IEs + _BEACON_IE_OFFSET_, _RSN_IE_2_, &ie_len, (pnetwork->network.IELength - _BEACON_IE_OFFSET_));
+			p = rtw_get_ie(pnetwork->network.IEs + _BEACON_IE_OFFSET_, WLAN_EID_RSN, &ie_len, (pnetwork->network.IELength - _BEACON_IE_OFFSET_));
 			if (p && ie_len > 0)
 				bselected = true;
 			else
@@ -2354,15 +2354,15 @@ sint rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in
 	memcpy(out_ie, in_ie, 12);
 	ielength = 12;
 	if ((ndisauthmode == Ndis802_11AuthModeWPA) || (ndisauthmode == Ndis802_11AuthModeWPAPSK))
-			authmode = _WPA_IE_ID_;
+			authmode = WLAN_EID_VENDOR_SPECIFIC;
 	if ((ndisauthmode == Ndis802_11AuthModeWPA2) || (ndisauthmode == Ndis802_11AuthModeWPA2PSK))
-			authmode = _WPA2_IE_ID_;
+			authmode = WLAN_EID_RSN;
 
 	if (check_fwstate(pmlmepriv, WIFI_UNDER_WPS)) {
 		memcpy(out_ie+ielength, psecuritypriv->wps_ie, psecuritypriv->wps_ie_len);
 
 		ielength += psecuritypriv->wps_ie_len;
-	} else if ((authmode == _WPA_IE_ID_) || (authmode == _WPA2_IE_ID_)) {
+	} else if ((authmode == WLAN_EID_VENDOR_SPECIFIC) || (authmode == WLAN_EID_RSN)) {
 		/* copy RSN or SSN */
 		memcpy(&out_ie[ielength], &psecuritypriv->supplicant_ie[0], psecuritypriv->supplicant_ie[1]+2);
 		/* debug for CONFIG_IEEE80211W
@@ -2381,7 +2381,7 @@ sint rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in
 	if (iEntry < 0) {
 		return ielength;
 	} else {
-		if (authmode == _WPA2_IE_ID_)
+		if (authmode == WLAN_EID_RSN)
 			ielength = rtw_append_pmkid(adapter, iEntry, out_ie, ielength);
 	}
 	return ielength;
@@ -2569,7 +2569,7 @@ void rtw_build_wmm_ie_ht(struct adapter *padapter, u8 *out_ie, uint *pout_len)
 
 	if (padapter->mlmepriv.qospriv.qos_option == 0) {
 		out_len = *pout_len;
-		pframe = rtw_set_ie(out_ie+out_len, _VENDOR_SPECIFIC_IE_,
+		pframe = rtw_set_ie(out_ie+out_len, WLAN_EID_VENDOR_SPECIFIC,
 							_WMM_IE_Length_, WMM_IE, pout_len);
 
 		padapter->mlmepriv.qospriv.qos_option = 1;
@@ -2611,7 +2611,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 			/* TDLS: TODO 40? */
 			operation_bw = CHANNEL_WIDTH_40;
 	} else {
-		p = rtw_get_ie(in_ie, _HT_ADD_INFO_IE_, &ielen, in_len);
+		p = rtw_get_ie(in_ie, WLAN_EID_HT_OPERATION, &ielen, in_len);
 		if (p && (ielen == sizeof(struct ieee80211_ht_addt_info))) {
 			struct HT_info_element *pht_info = (struct HT_info_element *)(p+2);
 			if (pht_info->infos[0] & BIT(2)) {
@@ -2711,16 +2711,16 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 	else
 		ht_capie.ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_DENSITY&0x00);
 
-	pframe = rtw_set_ie(out_ie+out_len, _HT_CAPABILITY_IE_,
+	pframe = rtw_set_ie(out_ie+out_len, WLAN_EID_HT_CAPABILITY,
 						sizeof(struct ieee80211_ht_cap), (unsigned char *)&ht_capie, pout_len);
 
 	phtpriv->ht_option = true;
 
 	if (in_ie) {
-		p = rtw_get_ie(in_ie, _HT_ADD_INFO_IE_, &ielen, in_len);
+		p = rtw_get_ie(in_ie, WLAN_EID_HT_OPERATION, &ielen, in_len);
 		if (p && (ielen == sizeof(struct ieee80211_ht_addt_info))) {
 			out_len = *pout_len;
-			pframe = rtw_set_ie(out_ie+out_len, _HT_ADD_INFO_IE_, ielen, p+2, pout_len);
+			pframe = rtw_set_ie(out_ie+out_len, WLAN_EID_HT_OPERATION, ielen, p+2, pout_len);
 		}
 	}
 
@@ -2761,7 +2761,7 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 
 	/* check Max Rx A-MPDU Size */
 	len = 0;
-	p = rtw_get_ie(pie+sizeof(struct ndis_802_11_fix_ie), _HT_CAPABILITY_IE_, &len, ie_len-sizeof(struct ndis_802_11_fix_ie));
+	p = rtw_get_ie(pie+sizeof(struct ndis_802_11_fix_ie), WLAN_EID_HT_CAPABILITY, &len, ie_len-sizeof(struct ndis_802_11_fix_ie));
 	if (p && len > 0) {
 		pht_capie = (struct ieee80211_ht_cap *)(p+2);
 		max_ampdu_sz = (pht_capie->ampdu_params_info & IEEE80211_HT_CAP_AMPDU_FACTOR);
@@ -2773,7 +2773,7 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len, u8 channe
 	}
 
 	len = 0;
-	p = rtw_get_ie(pie+sizeof(struct ndis_802_11_fix_ie), _HT_ADD_INFO_IE_, &len, ie_len-sizeof(struct ndis_802_11_fix_ie));
+	p = rtw_get_ie(pie+sizeof(struct ndis_802_11_fix_ie), WLAN_EID_HT_OPERATION, &len, ie_len-sizeof(struct ndis_802_11_fix_ie));
 	if (p && len > 0) {
 		pht_addtinfo = (struct ieee80211_ht_addt_info *)(p+2);
 		/* todo: */
@@ -2905,7 +2905,7 @@ void rtw_append_exented_cap(struct adapter *padapter, u8 *out_ie, uint *pout_len
 	if (phtpriv->bss_coexist)
 		SET_EXT_CAPABILITY_ELE_BSS_COEXIST(cap_content, 1);
 
-	rtw_set_ie(out_ie + *pout_len, EID_EXTCapability, 8, cap_content, pout_len);
+	rtw_set_ie(out_ie + *pout_len, WLAN_EID_EXT_CAPABILITY, 8, cap_content, pout_len);
 }
 
 inline void rtw_set_to_roam(struct adapter *adapter, u8 to_roam)
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 632b0f7eeff2..fa4b0259c5ae 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -628,7 +628,7 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 		u8 RC_OUI[4] = {0x00, 0xE0, 0x4C, 0x0A};
 		/* EID[1] + EID_LEN[1] + RC_OUI[4] + MAC[6] + PairingID[2] + ChannelNum[2] */
 
-		p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _PROBEREQ_IE_OFFSET_, _VENDOR_SPECIFIC_IE_, (int *)&ielen,
+		p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _PROBEREQ_IE_OFFSET_, WLAN_EID_VENDOR_SPECIFIC, (int *)&ielen,
 			len - WLAN_HDR_A3_LEN - _PROBEREQ_IE_OFFSET_);
 
 		if (!p || ielen != 14)
@@ -728,7 +728,7 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
 
 #endif /* CONFIG_AUTO_AP_MODE */
 
-	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _PROBEREQ_IE_OFFSET_, _SSID_IE_, (int *)&ielen,
+	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _PROBEREQ_IE_OFFSET_, WLAN_EID_SSID, (int *)&ielen,
 			len - WLAN_HDR_A3_LEN - _PROBEREQ_IE_OFFSET_);
 
 
@@ -783,7 +783,7 @@ unsigned int OnBeacon(struct adapter *padapter, union recv_frame *precv_frame)
 	u8 *p = NULL;
 	u32 ielen = 0;
 
-	p = rtw_get_ie(pframe + sizeof(struct ieee80211_hdr_3addr) + _BEACON_IE_OFFSET_, _EXT_SUPPORTEDRATES_IE_, &ielen, precv_frame->u.hdr.len - sizeof(struct ieee80211_hdr_3addr) - _BEACON_IE_OFFSET_);
+	p = rtw_get_ie(pframe + sizeof(struct ieee80211_hdr_3addr) + _BEACON_IE_OFFSET_, WLAN_EID_EXT_SUPP_RATES, &ielen, precv_frame->u.hdr.len - sizeof(struct ieee80211_hdr_3addr) - _BEACON_IE_OFFSET_);
 	if (p && ielen > 0) {
 		if ((*(p + 1 + ielen) == 0x2D) && (*(p + 2 + ielen) != 0x2D)) {
 			/* Invalid value 0x2D is detected in Extended Supported Rates (ESR) IE. Try to fix the IE length to avoid failed Beacon parsing. */
@@ -1028,7 +1028,7 @@ unsigned int OnAuth(struct adapter *padapter, union recv_frame *precv_frame)
 			/* checking for challenging txt... */
 			DBG_871X("checking for challenging txt...\n");
 
-			p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + 4 + _AUTH_IE_OFFSET_, _CHLGETXT_IE_, (int *)&ie_len,
+			p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + 4 + _AUTH_IE_OFFSET_, WLAN_EID_CHALLENGE, (int *)&ie_len,
 					len - WLAN_HDR_A3_LEN - _AUTH_IE_OFFSET_ - 4);
 
 			if ((p == NULL) || (ie_len <= 0)) {
@@ -1124,7 +1124,7 @@ unsigned int OnAuthClient(struct adapter *padapter, union recv_frame *precv_fram
 	if (seq == 2) {
 		if (pmlmeinfo->auth_algo == dot11AuthAlgrthm_Shared) {
 			 /*  legendary shared system */
-			p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _AUTH_IE_OFFSET_, _CHLGETXT_IE_, (int *)&len,
+			p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + _AUTH_IE_OFFSET_, WLAN_EID_CHALLENGE, (int *)&len,
 				pkt_len - WLAN_HDR_A3_LEN - _AUTH_IE_OFFSET_);
 
 			if (p == NULL) {
@@ -1251,7 +1251,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 
 	/*  now we should check all the fields... */
 	/*  checking SSID */
-	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, _SSID_IE_, &ie_len,
+	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, WLAN_EID_SSID, &ie_len,
 		pkt_len - WLAN_HDR_A3_LEN - ie_offset);
 
 	if (!p || ie_len == 0) {
@@ -1271,7 +1271,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 		goto OnAssocReqFail;
 
 	/*  check if the supported rate is ok */
-	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, _SUPPORTEDRATES_IE_, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
+	p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, WLAN_EID_SUPP_RATES, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
 	if (p == NULL) {
 		DBG_871X("Rx a sta assoc-req which supported rate is empty!\n");
 		/*  use our own rate set as statoin used */
@@ -1284,7 +1284,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 		memcpy(supportRate, p+2, ie_len);
 		supportRateNum = ie_len;
 
-		p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, _EXT_SUPPORTEDRATES_IE_, &ie_len,
+		p = rtw_get_ie(pframe + WLAN_HDR_A3_LEN + ie_offset, WLAN_EID_EXT_SUPP_RATES, &ie_len,
 				pkt_len - WLAN_HDR_A3_LEN - ie_offset);
 		if (p !=  NULL) {
 
@@ -1445,7 +1445,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 	if (pmlmepriv->qospriv.qos_option) {
 		p = pframe + WLAN_HDR_A3_LEN + ie_offset; ie_len = 0;
 		for (;;) {
-			p = rtw_get_ie(p, _VENDOR_SPECIFIC_IE_, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
+			p = rtw_get_ie(p, WLAN_EID_VENDOR_SPECIFIC, &ie_len, pkt_len - WLAN_HDR_A3_LEN - ie_offset);
 			if (p) {
 				if (!memcmp(p+2, WMM_IE, 6)) {
 
@@ -1692,20 +1692,20 @@ unsigned int OnAssocRsp(struct adapter *padapter, union recv_frame *precv_frame)
 		pIE = (struct ndis_80211_var_ie *)(pframe + i);
 
 		switch (pIE->ElementID) {
-		case _VENDOR_SPECIFIC_IE_:
+		case WLAN_EID_VENDOR_SPECIFIC:
 			if (!memcmp(pIE->data, WMM_PARA_OUI, 6))	/* WMM */
 				WMM_param_handler(padapter, pIE);
 			break;
 
-		case _HT_CAPABILITY_IE_:	/* HT caps */
+		case WLAN_EID_HT_CAPABILITY:	/* HT caps */
 			HT_caps_handler(padapter, pIE);
 			break;
 
-		case _HT_EXTRA_INFO_IE_:	/* HT info */
+		case WLAN_EID_HT_OPERATION:	/* HT info */
 			HT_info_handler(padapter, pIE);
 			break;
 
-		case _ERPINFO_IE_:
+		case WLAN_EID_ERP_INFO:
 			ERP_IE_handler(padapter, pIE);
 			break;
 
@@ -2536,14 +2536,14 @@ void issue_beacon(struct adapter *padapter, int timeout_ms)
 	pattrib->pktlen += 2;
 
 	/*  SSID */
-	pframe = rtw_set_ie(pframe, _SSID_IE_, cur_network->Ssid.SsidLength, cur_network->Ssid.Ssid, &pattrib->pktlen);
+	pframe = rtw_set_ie(pframe, WLAN_EID_SSID, cur_network->Ssid.SsidLength, cur_network->Ssid.Ssid, &pattrib->pktlen);
 
 	/*  supported rates... */
 	rate_len = rtw_get_rateset_len(cur_network->SupportedRates);
-	pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, ((rate_len > 8) ? 8 : rate_len), cur_network->SupportedRates, &pattrib->pktlen);
+	pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, ((rate_len > 8) ? 8 : rate_len), cur_network->SupportedRates, &pattrib->pktlen);
 
 	/*  DS parameter set */
-	pframe = rtw_set_ie(pframe, _DSSET_IE_, 1, (unsigned char *)&(cur_network->Configuration.DSConfig), &pattrib->pktlen);
+	pframe = rtw_set_ie(pframe, WLAN_EID_DS_PARAMS, 1, (unsigned char *)&(cur_network->Configuration.DSConfig), &pattrib->pktlen);
 
 	/* if ((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) */
 	{
@@ -2552,16 +2552,16 @@ void issue_beacon(struct adapter *padapter, int timeout_ms)
 		/*  IBSS Parameter Set... */
 		/* ATIMWindow = cur->Configuration.ATIMWindow; */
 		ATIMWindow = 0;
-		pframe = rtw_set_ie(pframe, _IBSS_PARA_IE_, 2, (unsigned char *)(&ATIMWindow), &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_IBSS_PARAMS, 2, (unsigned char *)(&ATIMWindow), &pattrib->pktlen);
 
 		/* ERP IE */
-		pframe = rtw_set_ie(pframe, _ERPINFO_IE_, 1, &erpinfo, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_ERP_INFO, 1, &erpinfo, &pattrib->pktlen);
 	}
 
 
 	/*  EXTERNDED SUPPORTED RATE */
 	if (rate_len > 8) {
-		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (rate_len - 8), (cur_network->SupportedRates + 8), &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, (rate_len - 8), (cur_network->SupportedRates + 8), &pattrib->pktlen);
 	}
 
 
@@ -2692,7 +2692,7 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
 			u8 buf[MAX_IE_SZ];
 			u8 *ies = pmgntframe->buf_addr+TXDESC_OFFSET+sizeof(struct ieee80211_hdr_3addr);
 
-			ssid_ie = rtw_get_ie(ies+_FIXED_IE_LENGTH_, _SSID_IE_, &ssid_ielen,
+			ssid_ie = rtw_get_ie(ies+_FIXED_IE_LENGTH_, WLAN_EID_SSID, &ssid_ielen,
 				(pframe-ies)-_FIXED_IE_LENGTH_);
 
 			ssid_ielen_diff = cur_network->Ssid.SsidLength - ssid_ielen;
@@ -2740,14 +2740,14 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
 		/* below for ad-hoc mode */
 
 		/*  SSID */
-		pframe = rtw_set_ie(pframe, _SSID_IE_, cur_network->Ssid.SsidLength, cur_network->Ssid.Ssid, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_SSID, cur_network->Ssid.SsidLength, cur_network->Ssid.Ssid, &pattrib->pktlen);
 
 		/*  supported rates... */
 		rate_len = rtw_get_rateset_len(cur_network->SupportedRates);
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, ((rate_len > 8) ? 8 : rate_len), cur_network->SupportedRates, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, ((rate_len > 8) ? 8 : rate_len), cur_network->SupportedRates, &pattrib->pktlen);
 
 		/*  DS parameter set */
-		pframe = rtw_set_ie(pframe, _DSSET_IE_, 1, (unsigned char *)&(cur_network->Configuration.DSConfig), &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_DS_PARAMS, 1, (unsigned char *)&(cur_network->Configuration.DSConfig), &pattrib->pktlen);
 
 		if ((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) {
 			u8 erpinfo = 0;
@@ -2755,16 +2755,16 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
 			/*  IBSS Parameter Set... */
 			/* ATIMWindow = cur->Configuration.ATIMWindow; */
 			ATIMWindow = 0;
-			pframe = rtw_set_ie(pframe, _IBSS_PARA_IE_, 2, (unsigned char *)(&ATIMWindow), &pattrib->pktlen);
+			pframe = rtw_set_ie(pframe, WLAN_EID_IBSS_PARAMS, 2, (unsigned char *)(&ATIMWindow), &pattrib->pktlen);
 
 			/* ERP IE */
-			pframe = rtw_set_ie(pframe, _ERPINFO_IE_, 1, &erpinfo, &pattrib->pktlen);
+			pframe = rtw_set_ie(pframe, WLAN_EID_ERP_INFO, 1, &erpinfo, &pattrib->pktlen);
 		}
 
 
 		/*  EXTERNDED SUPPORTED RATE */
 		if (rate_len > 8) {
-			pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (rate_len - 8), (cur_network->SupportedRates + 8), &pattrib->pktlen);
+			pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, (rate_len - 8), (cur_network->SupportedRates + 8), &pattrib->pktlen);
 		}
 
 
@@ -2796,7 +2796,7 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
 		memcpy(&RC_INFO[10], (u8 *)&psta->pid, 2);
 		memcpy(&RC_INFO[12], (u8 *)&cu_ch, 2);
 
-		pframe = rtw_set_ie(pframe, _VENDOR_SPECIFIC_IE_, sizeof(RC_INFO), RC_INFO, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_VENDOR_SPECIFIC, sizeof(RC_INFO), RC_INFO, &pattrib->pktlen);
 	}
 }
 #endif /* CONFIG_AUTO_AP_MODE */
@@ -2870,21 +2870,21 @@ static int _issue_probereq(struct adapter *padapter,
 	pattrib->pktlen = sizeof(struct ieee80211_hdr_3addr);
 
 	if (pssid)
-		pframe = rtw_set_ie(pframe, _SSID_IE_, pssid->SsidLength, pssid->Ssid, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_SSID, pssid->SsidLength, pssid->Ssid, &(pattrib->pktlen));
 	else
-		pframe = rtw_set_ie(pframe, _SSID_IE_, 0, NULL, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_SSID, 0, NULL, &(pattrib->pktlen));
 
 	get_rate_set(padapter, bssrate, &bssrate_len);
 
 	if (bssrate_len > 8) {
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, 8, bssrate, &(pattrib->pktlen));
-		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (bssrate_len - 8), (bssrate + 8), &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, 8, bssrate, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, (bssrate_len - 8), (bssrate + 8), &(pattrib->pktlen));
 	} else {
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, bssrate_len, bssrate, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, bssrate_len, bssrate, &(pattrib->pktlen));
 	}
 
 	if (ch)
-		pframe = rtw_set_ie(pframe, _DSSET_IE_, 1, &ch, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_DS_PARAMS, 1, &ch, &pattrib->pktlen);
 
 	if (append_wps) {
 		/* add wps_ie for wps2.0 */
@@ -3026,7 +3026,7 @@ void issue_auth(struct adapter *padapter, struct sta_info *psta, unsigned short
 
 		/*  added challenging text... */
 		if ((psta->auth_seq == 2) && (psta->state & WIFI_FW_AUTH_STATE) && (use_shared_key == 1))
-			pframe = rtw_set_ie(pframe, _CHLGETXT_IE_, 128, psta->chg_txt, &(pattrib->pktlen));
+			pframe = rtw_set_ie(pframe, WLAN_EID_CHALLENGE, 128, psta->chg_txt, &(pattrib->pktlen));
 
 	} else {
 		memcpy(pwlanhdr->addr1, get_my_bssid(&pmlmeinfo->network), ETH_ALEN);
@@ -3066,7 +3066,7 @@ void issue_auth(struct adapter *padapter, struct sta_info *psta, unsigned short
 
 		/*  then checking to see if sending challenging text... */
 		if ((pmlmeinfo->auth_seq == 3) && (pmlmeinfo->state & WIFI_FW_AUTH_STATE) && (use_shared_key == 1)) {
-			pframe = rtw_set_ie(pframe, _CHLGETXT_IE_, 128, pmlmeinfo->chg_txt, &(pattrib->pktlen));
+			pframe = rtw_set_ie(pframe, WLAN_EID_CHALLENGE, 128, pmlmeinfo->chg_txt, &(pattrib->pktlen));
 
 			SetPrivacy(fctrl);
 
@@ -3153,10 +3153,10 @@ void issue_asocrsp(struct adapter *padapter, unsigned short status, struct sta_i
 	pframe = rtw_set_fixed_ie(pframe, _ASOC_ID_, (unsigned char *)&le_tmp, &(pattrib->pktlen));
 
 	if (pstat->bssratelen <= 8) {
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, pstat->bssratelen, pstat->bssrateset, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, pstat->bssratelen, pstat->bssrateset, &(pattrib->pktlen));
 	} else {
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, 8, pstat->bssrateset, &(pattrib->pktlen));
-		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (pstat->bssratelen-8), pstat->bssrateset+8, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, 8, pstat->bssrateset, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, (pstat->bssratelen-8), pstat->bssrateset+8, &(pattrib->pktlen));
 	}
 
 	if ((pstat->flags & WLAN_STA_HT) && (pmlmepriv->htpriv.ht_option)) {
@@ -3164,7 +3164,7 @@ void issue_asocrsp(struct adapter *padapter, unsigned short status, struct sta_i
 
 		/* FILL HT CAP INFO IE */
 		/* p = hostapd_eid_ht_capabilities_info(hapd, p); */
-		pbuf = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _HT_CAPABILITY_IE_, &ie_len, (pnetwork->IELength - _BEACON_IE_OFFSET_));
+		pbuf = rtw_get_ie(ie + _BEACON_IE_OFFSET_, WLAN_EID_HT_CAPABILITY, &ie_len, (pnetwork->IELength - _BEACON_IE_OFFSET_));
 		if (pbuf && ie_len > 0) {
 			memcpy(pframe, pbuf, ie_len+2);
 			pframe += (ie_len+2);
@@ -3173,7 +3173,7 @@ void issue_asocrsp(struct adapter *padapter, unsigned short status, struct sta_i
 
 		/* FILL HT ADD INFO IE */
 		/* p = hostapd_eid_ht_operation(hapd, p); */
-		pbuf = rtw_get_ie(ie + _BEACON_IE_OFFSET_, _HT_ADD_INFO_IE_, &ie_len, (pnetwork->IELength - _BEACON_IE_OFFSET_));
+		pbuf = rtw_get_ie(ie + _BEACON_IE_OFFSET_, WLAN_EID_HT_OPERATION, &ie_len, (pnetwork->IELength - _BEACON_IE_OFFSET_));
 		if (pbuf && ie_len > 0) {
 			memcpy(pframe, pbuf, ie_len+2);
 			pframe += (ie_len+2);
@@ -3188,7 +3188,7 @@ void issue_asocrsp(struct adapter *padapter, unsigned short status, struct sta_i
 		unsigned char WMM_PARA_IE[] = {0x00, 0x50, 0xf2, 0x02, 0x01, 0x01};
 
 		for (pbuf = ie + _BEACON_IE_OFFSET_; ; pbuf += (ie_len + 2)) {
-			pbuf = rtw_get_ie(pbuf, _VENDOR_SPECIFIC_IE_, &ie_len, (pnetwork->IELength - _BEACON_IE_OFFSET_ - (ie_len + 2)));
+			pbuf = rtw_get_ie(pbuf, WLAN_EID_VENDOR_SPECIFIC, &ie_len, (pnetwork->IELength - _BEACON_IE_OFFSET_ - (ie_len + 2)));
 			if (pbuf && !memcmp(pbuf+2, WMM_PARA_IE, 6)) {
 				memcpy(pframe, pbuf, ie_len+2);
 				pframe += (ie_len+2);
@@ -3205,7 +3205,7 @@ void issue_asocrsp(struct adapter *padapter, unsigned short status, struct sta_i
 	}
 
 	if (pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_REALTEK) {
-		pframe = rtw_set_ie(pframe, _VENDOR_SPECIFIC_IE_, 6, REALTEK_96B_IE, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_VENDOR_SPECIFIC, 6, REALTEK_96B_IE, &(pattrib->pktlen));
 	}
 
 	/* add WPS IE ie for wps 2.0 */
@@ -3280,7 +3280,7 @@ void issue_assocreq(struct adapter *padapter)
 	pattrib->pktlen += 2;
 
 	/* SSID */
-	pframe = rtw_set_ie(pframe, _SSID_IE_,  pmlmeinfo->network.Ssid.SsidLength, pmlmeinfo->network.Ssid.Ssid, &(pattrib->pktlen));
+	pframe = rtw_set_ie(pframe, WLAN_EID_SSID,  pmlmeinfo->network.Ssid.SsidLength, pmlmeinfo->network.Ssid.Ssid, &(pattrib->pktlen));
 
 	/* supported rate & extended supported rate */
 
@@ -3340,17 +3340,17 @@ void issue_assocreq(struct adapter *padapter)
 
 
 	if (bssrate_len > 8) {
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, 8, bssrate, &(pattrib->pktlen));
-		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (bssrate_len - 8), (bssrate + 8), &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, 8, bssrate, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, (bssrate_len - 8), (bssrate + 8), &(pattrib->pktlen));
 	} else
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, bssrate_len, bssrate, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, bssrate_len, bssrate, &(pattrib->pktlen));
 
 	/* vendor specific IE, such as WPA, WMM, WPS */
 	for (i = sizeof(struct ndis_802_11_fix_ie); i < pmlmeinfo->network.IELength;) {
 		pIE = (struct ndis_80211_var_ie *)(pmlmeinfo->network.IEs + i);
 
 		switch (pIE->ElementID) {
-		case _VENDOR_SPECIFIC_IE_:
+		case WLAN_EID_VENDOR_SPECIFIC:
 			if ((!memcmp(pIE->data, RTW_WPA_OUI, 4)) ||
 					(!memcmp(pIE->data, WMM_OUI, 4)) ||
 					(!memcmp(pIE->data, WPS_OUI, 4))) {
@@ -3365,25 +3365,25 @@ void issue_assocreq(struct adapter *padapter)
 					vs_ie_length = 14;
 				}
 
-				pframe = rtw_set_ie(pframe, _VENDOR_SPECIFIC_IE_, vs_ie_length, pIE->data, &(pattrib->pktlen));
+				pframe = rtw_set_ie(pframe, WLAN_EID_VENDOR_SPECIFIC, vs_ie_length, pIE->data, &(pattrib->pktlen));
 			}
 			break;
 
-		case EID_WPA2:
-			pframe = rtw_set_ie(pframe, EID_WPA2, pIE->Length, pIE->data, &(pattrib->pktlen));
+		case WLAN_EID_RSN:
+			pframe = rtw_set_ie(pframe, WLAN_EID_RSN, pIE->Length, pIE->data, &(pattrib->pktlen));
 			break;
-		case EID_HTCapability:
+		case WLAN_EID_HT_CAPABILITY:
 			if (padapter->mlmepriv.htpriv.ht_option) {
 				if (!(is_ap_in_tkip(padapter))) {
 					memcpy(&(pmlmeinfo->HT_caps), pIE->data, sizeof(struct HT_caps_element));
-					pframe = rtw_set_ie(pframe, EID_HTCapability, pIE->Length, (u8 *)(&(pmlmeinfo->HT_caps)), &(pattrib->pktlen));
+					pframe = rtw_set_ie(pframe, WLAN_EID_HT_CAPABILITY, pIE->Length, (u8 *)(&(pmlmeinfo->HT_caps)), &(pattrib->pktlen));
 				}
 			}
 			break;
 
-		case EID_EXTCapability:
+		case WLAN_EID_EXT_CAPABILITY:
 			if (padapter->mlmepriv.htpriv.ht_option)
-				pframe = rtw_set_ie(pframe, EID_EXTCapability, pIE->Length, pIE->data, &(pattrib->pktlen));
+				pframe = rtw_set_ie(pframe, WLAN_EID_EXT_CAPABILITY, pIE->Length, pIE->data, &(pattrib->pktlen));
 			break;
 		default:
 			break;
@@ -3393,7 +3393,7 @@ void issue_assocreq(struct adapter *padapter)
 	}
 
 	if (pmlmeinfo->assoc_AP_vendor == HT_IOT_PEER_REALTEK)
-		pframe = rtw_set_ie(pframe, _VENDOR_SPECIFIC_IE_, 6, REALTEK_96B_IE, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_VENDOR_SPECIFIC, 6, REALTEK_96B_IE, &(pattrib->pktlen));
 
 
 	pattrib->last_txcmdsz = pattrib->pktlen;
@@ -4096,7 +4096,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 
 		iedata |= BIT(2);/* 20 MHz BSS Width Request */
 
-		pframe = rtw_set_ie(pframe, EID_BSSCoexistence,  1, &iedata, &(pattrib->pktlen));
+		pframe = rtw_set_ie(pframe, WLAN_EID_BSS_COEX_2040,  1, &iedata, &(pattrib->pktlen));
 
 	}
 
@@ -4125,7 +4125,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 
 			pbss_network = (struct wlan_bssid_ex *)&pnetwork->network;
 
-			p = rtw_get_ie(pbss_network->IEs + _FIXED_IE_LENGTH_, _HT_CAPABILITY_IE_, &len, pbss_network->IELength - _FIXED_IE_LENGTH_);
+			p = rtw_get_ie(pbss_network->IEs + _FIXED_IE_LENGTH_, WLAN_EID_HT_CAPABILITY, &len, pbss_network->IELength - _FIXED_IE_LENGTH_);
 			if ((p == NULL) || (len == 0)) {/* non-HT */
 
 				if ((pbss_network->Configuration.DSConfig <= 0) || (pbss_network->Configuration.DSConfig > 14))
@@ -4160,7 +4160,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 					}
 				}
 
-				pframe = rtw_set_ie(pframe, EID_BSSIntolerantChlReport, k, InfoContent, &(pattrib->pktlen));
+				pframe = rtw_set_ie(pframe, WLAN_EID_BSS_INTOLERANT_CHL_REPORT, k, InfoContent, &(pattrib->pktlen));
 
 			}
 
@@ -4464,7 +4464,7 @@ u8 collect_bss_info(struct adapter *padapter, union recv_frame *precv_frame, str
 	bssid->PhyInfo.SignalStrength = precv_frame->u.hdr.attrib.phy_info.SignalStrength;/* in percentage */
 
 	/*  checking SSID */
-	p = rtw_get_ie(bssid->IEs + ie_offset, _SSID_IE_, &len, bssid->IELength - ie_offset);
+	p = rtw_get_ie(bssid->IEs + ie_offset, WLAN_EID_SSID, &len, bssid->IELength - ie_offset);
 	if (p == NULL) {
 		DBG_871X("marc: cannot find SSID for survey event\n");
 		return _FAIL;
@@ -4484,7 +4484,7 @@ u8 collect_bss_info(struct adapter *padapter, union recv_frame *precv_frame, str
 
 	/* checking rate info... */
 	i = 0;
-	p = rtw_get_ie(bssid->IEs + ie_offset, _SUPPORTEDRATES_IE_, &len, bssid->IELength - ie_offset);
+	p = rtw_get_ie(bssid->IEs + ie_offset, WLAN_EID_SUPP_RATES, &len, bssid->IELength - ie_offset);
 	if (p) {
 		if (len > NDIS_802_11_LENGTH_RATES_EX) {
 			DBG_871X("%s()-%d: IE too long (%d) for survey event\n", __func__, __LINE__, len);
@@ -4494,7 +4494,7 @@ u8 collect_bss_info(struct adapter *padapter, union recv_frame *precv_frame, str
 		i = len;
 	}
 
-	p = rtw_get_ie(bssid->IEs + ie_offset, _EXT_SUPPORTEDRATES_IE_, &len, bssid->IELength - ie_offset);
+	p = rtw_get_ie(bssid->IEs + ie_offset, WLAN_EID_EXT_SUPP_RATES, &len, bssid->IELength - ie_offset);
 	if (p) {
 		if (len > (NDIS_802_11_LENGTH_RATES_EX-i)) {
 			DBG_871X("%s()-%d: IE too long (%d) for survey event\n", __func__, __LINE__, len);
@@ -4509,7 +4509,7 @@ u8 collect_bss_info(struct adapter *padapter, union recv_frame *precv_frame, str
 		return _FAIL;
 
 	/*  Checking for DSConfig */
-	p = rtw_get_ie(bssid->IEs + ie_offset, _DSSET_IE_, &len, bssid->IELength - ie_offset);
+	p = rtw_get_ie(bssid->IEs + ie_offset, WLAN_EID_DS_PARAMS, &len, bssid->IELength - ie_offset);
 
 	bssid->Configuration.DSConfig = 0;
 	bssid->Configuration.Length = 0;
@@ -4519,7 +4519,7 @@ u8 collect_bss_info(struct adapter *padapter, union recv_frame *precv_frame, str
 	} else {
 		/*  In 5G, some ap do not have DSSET IE */
 		/*  checking HT info for channel */
-		p = rtw_get_ie(bssid->IEs + ie_offset, _HT_ADD_INFO_IE_, &len, bssid->IELength - ie_offset);
+		p = rtw_get_ie(bssid->IEs + ie_offset, WLAN_EID_HT_OPERATION, &len, bssid->IELength - ie_offset);
 		if (p) {
 			struct HT_info_element *HT_info = (struct HT_info_element *)(p + 2);
 
@@ -4553,7 +4553,7 @@ u8 collect_bss_info(struct adapter *padapter, union recv_frame *precv_frame, str
 	if ((pregistrypriv->wifi_spec == 1) && (false == pmlmeinfo->bwmode_updated)) {
 		struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
-		p = rtw_get_ie(bssid->IEs + ie_offset, _HT_CAPABILITY_IE_, &len, bssid->IELength - ie_offset);
+		p = rtw_get_ie(bssid->IEs + ie_offset, WLAN_EID_HT_CAPABILITY, &len, bssid->IELength - ie_offset);
 		if (p && len > 0) {
 			struct HT_caps_element	*pHT_caps;
 
@@ -4788,7 +4788,7 @@ static void process_80211d(struct adapter *padapter, struct wlan_bssid_ex *bssid
 		u8 noc; /*  number of channel */
 		u8 j, k;
 
-		ie = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, _COUNTRY_IE_, &len, bssid->IELength - _FIXED_IE_LENGTH_);
+		ie = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, WLAN_EID_COUNTRY, &len, bssid->IELength - _FIXED_IE_LENGTH_);
 		if (!ie)
 			return;
 		if (len < 6)
@@ -5959,16 +5959,16 @@ static int rtw_auto_ap_start_beacon(struct adapter *adapter)
 	ie += 2;
 
 	/* SSID */
-	ie = rtw_set_ie(ie, _SSID_IE_, ssid_len, ssid, &sz);
+	ie = rtw_set_ie(ie, WLAN_EID_SSID, ssid_len, ssid, &sz);
 
 	/* supported rates */
 	wireless_mode = WIRELESS_11BG_24N;
 	rtw_set_supported_rate(supportRate, wireless_mode);
 	rateLen = rtw_get_rateset_len(supportRate);
 	if (rateLen > 8) {
-		ie = rtw_set_ie(ie, _SUPPORTEDRATES_IE_, 8, supportRate, &sz);
+		ie = rtw_set_ie(ie, WLAN_EID_SUPP_RATES, 8, supportRate, &sz);
 	} else {
-		ie = rtw_set_ie(ie, _SUPPORTEDRATES_IE_, rateLen, supportRate, &sz);
+		ie = rtw_set_ie(ie, WLAN_EID_SUPP_RATES, rateLen, supportRate, &sz);
 	}
 
 
@@ -5982,11 +5982,11 @@ static int rtw_auto_ap_start_beacon(struct adapter *adapter)
 	} else {
 		oper_channel = adapter_to_dvobj(adapter)->oper_channel;
 	}
-	ie = rtw_set_ie(ie, _DSSET_IE_, 1, &oper_channel, &sz);
+	ie = rtw_set_ie(ie, WLAN_EID_DS_PARAMS, 1, &oper_channel, &sz);
 
 	/* ext supported rates */
 	if (rateLen > 8) {
-		ie = rtw_set_ie(ie, _EXT_SUPPORTEDRATES_IE_, (rateLen - 8), (supportRate + 8), &sz);
+		ie = rtw_set_ie(ie, WLAN_EID_EXT_SUPP_RATES, (rateLen - 8), (supportRate + 8), &sz);
 	}
 
 	DBG_871X("%s, start auto ap beacon sz =%d\n", __func__, sz);
@@ -6173,16 +6173,16 @@ u8 join_cmd_hdl(struct adapter *padapter, u8 *pbuf)
 		pIE = (struct ndis_80211_var_ie *)(pnetwork->IEs + i);
 
 		switch (pIE->ElementID) {
-		case _VENDOR_SPECIFIC_IE_:/* Get WMM IE. */
+		case WLAN_EID_VENDOR_SPECIFIC:/* Get WMM IE. */
 			if (!memcmp(pIE->data, WMM_OUI, 4))
 				WMM_param_handler(padapter, pIE);
 			break;
 
-		case _HT_CAPABILITY_IE_:	/* Get HT Cap IE. */
+		case WLAN_EID_HT_CAPABILITY:	/* Get HT Cap IE. */
 			pmlmeinfo->HT_caps_enable = 1;
 			break;
 
-		case _HT_EXTRA_INFO_IE_:	/* Get HT Info IE. */
+		case WLAN_EID_HT_OPERATION:	/* Get HT Info IE. */
 			pmlmeinfo->HT_info_enable = 1;
 
 			/* spec case only for cisco's ap because cisco's ap issue assoc rsp using mcs rate @40MHz or @20MHz */
diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 63145bc81eea..1a40465f41b8 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -1163,7 +1163,7 @@ sint validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_
 
 					/* update BCN for TIM IE */
 					/* update_BCNTIM(padapter); */
-					update_beacon(padapter, _TIM_IE_, NULL, true);
+					update_beacon(padapter, WLAN_EID_TIM, NULL, true);
 				}
 
 				/* spin_unlock_bh(&psta->sleep_q.lock); */
@@ -1189,7 +1189,7 @@ sint validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_
 
 					/* update BCN for TIM IE */
 					/* update_BCNTIM(padapter); */
-					update_beacon(padapter, _TIM_IE_, NULL, true);
+					update_beacon(padapter, WLAN_EID_TIM, NULL, true);
 				}
 			}
 		}
diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 33f5d3c5ac36..a83d8f7f611c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -1819,7 +1819,7 @@ u32 rtw_BIP_verify(struct adapter *padapter, u8 *precvframe)
 	/* save the frame body + MME */
 	memcpy(BIP_AAD+BIP_AAD_SIZE, pframe+WLAN_HDR_A3_LEN, pattrib->pkt_len-WLAN_HDR_A3_LEN);
 	/* find MME IE pointer */
-	p = rtw_get_ie(BIP_AAD+BIP_AAD_SIZE, _MME_IE_, &len, pattrib->pkt_len-WLAN_HDR_A3_LEN);
+	p = rtw_get_ie(BIP_AAD+BIP_AAD_SIZE, WLAN_EID_MMIE, &len, pattrib->pkt_len-WLAN_HDR_A3_LEN);
 	/* Baron */
 	if (p) {
 		u16 keyid = 0;
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 4bc0bea7e969..975f2830e29e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1289,7 +1289,7 @@ int rtw_check_bcn_info(struct adapter *Adapter, u8 *pframe, u32 packet_len)
 
 	/* check bw and channel offset */
 	/* parsing HT_CAP_IE */
-	p = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, _HT_CAPABILITY_IE_, &len, bssid->IELength - _FIXED_IE_LENGTH_);
+	p = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, WLAN_EID_HT_CAPABILITY, &len, bssid->IELength - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
 			pht_cap = (struct ieee80211_ht_cap *)(p + 2);
 			ht_cap_info = le16_to_cpu(pht_cap->cap_info);
@@ -1297,7 +1297,7 @@ int rtw_check_bcn_info(struct adapter *Adapter, u8 *pframe, u32 packet_len)
 			ht_cap_info = 0;
 	}
 	/* parsing HT_INFO_IE */
-	p = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, _HT_ADD_INFO_IE_, &len, bssid->IELength - _FIXED_IE_LENGTH_);
+	p = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, WLAN_EID_HT_OPERATION, &len, bssid->IELength - _FIXED_IE_LENGTH_);
 	if (p && len > 0) {
 			pht_info = (struct HT_info_element *)(p + 2);
 			ht_info_infos_0 = pht_info->infos[0];
@@ -1321,11 +1321,11 @@ int rtw_check_bcn_info(struct adapter *Adapter, u8 *pframe, u32 packet_len)
 	}
 
 	/* Checking for channel */
-	p = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, _DSSET_IE_, &len, bssid->IELength - _FIXED_IE_LENGTH_);
+	p = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, WLAN_EID_DS_PARAMS, &len, bssid->IELength - _FIXED_IE_LENGTH_);
 	if (p) {
 			bcn_channel = *(p + 2);
 	} else {/* In 5G, some ap do not have DSSET IE checking HT info for channel */
-			rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, _HT_ADD_INFO_IE_, &len, bssid->IELength - _FIXED_IE_LENGTH_);
+			rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, WLAN_EID_HT_OPERATION, &len, bssid->IELength - _FIXED_IE_LENGTH_);
 			if (pht_info) {
 					bcn_channel = pht_info->primary_channel;
 			} else { /* we don't find channel IE, so don't check it */
@@ -1341,7 +1341,7 @@ int rtw_check_bcn_info(struct adapter *Adapter, u8 *pframe, u32 packet_len)
 
 	/* checking SSID */
 	ssid_len = 0;
-	p = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, _SSID_IE_, &len, bssid->IELength - _FIXED_IE_LENGTH_);
+	p = rtw_get_ie(bssid->IEs + _FIXED_IE_LENGTH_, WLAN_EID_SSID, &len, bssid->IELength - _FIXED_IE_LENGTH_);
 	if (p) {
 		ssid_len = *(p + 1);
 		if (ssid_len > NDIS_802_11_LENGTH_SSID)
@@ -1466,7 +1466,7 @@ void update_beacon_info(struct adapter *padapter, u8 *pframe, uint pkt_len, stru
 		pIE = (struct ndis_80211_var_ie *)(pframe + (_BEACON_IE_OFFSET_ + WLAN_HDR_A3_LEN) + i);
 
 		switch (pIE->ElementID) {
-		case _VENDOR_SPECIFIC_IE_:
+		case WLAN_EID_VENDOR_SPECIFIC:
 			/* to update WMM parameter set while receiving beacon */
 			if (!memcmp(pIE->data, WMM_PARA_OUI, 6) && pIE->Length == WLAN_WMM_LEN)	/* WMM */
 				if (WMM_param_handler(padapter, pIE))
@@ -1474,12 +1474,12 @@ void update_beacon_info(struct adapter *padapter, u8 *pframe, uint pkt_len, stru
 
 			break;
 
-		case _HT_EXTRA_INFO_IE_:	/* HT info */
+		case WLAN_EID_HT_OPERATION:	/* HT info */
 			/* HT_info_handler(padapter, pIE); */
 			bwmode_update_check(padapter, pIE);
 			break;
 
-		case _ERPINFO_IE_:
+		case WLAN_EID_ERP_INFO:
 			ERP_IE_handler(padapter, pIE);
 			VCS_update(padapter, psta);
 			break;
@@ -1505,13 +1505,13 @@ unsigned int is_ap_in_tkip(struct adapter *padapter)
 			pIE = (struct ndis_80211_var_ie *)(pmlmeinfo->network.IEs + i);
 
 			switch (pIE->ElementID) {
-			case _VENDOR_SPECIFIC_IE_:
+			case WLAN_EID_VENDOR_SPECIFIC:
 				if ((!memcmp(pIE->data, RTW_WPA_OUI, 4)) && (!memcmp((pIE->data + 12), WPA_TKIP_CIPHER, 4)))
 					return true;
 
 				break;
 
-			case _RSN_IE_2_:
+			case WLAN_EID_RSN:
 				if (!memcmp((pIE->data + 8), RSN_TKIP_CIPHER, 4))
 					return true;
 				break;
@@ -1581,7 +1581,7 @@ unsigned char check_assoc_AP(u8 *pframe, uint len)
 		pIE = (struct ndis_80211_var_ie *)(pframe + i);
 
 		switch (pIE->ElementID) {
-		case _VENDOR_SPECIFIC_IE_:
+		case WLAN_EID_VENDOR_SPECIFIC:
 			if ((!memcmp(pIE->data, ARTHEROS_OUI1, 3)) || (!memcmp(pIE->data, ARTHEROS_OUI2, 3))) {
 				DBG_871X("link to Artheros AP\n");
 				return HT_IOT_PEER_ATHEROS;
@@ -1784,7 +1784,7 @@ int update_sta_support_rate(struct adapter *padapter, u8 *pvar_ie, uint var_ie_l
 	struct mlme_ext_priv *pmlmeext = &(padapter->mlmeextpriv);
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 
-	pIE = (struct ndis_80211_var_ie *)rtw_get_ie(pvar_ie, _SUPPORTEDRATES_IE_, &ie_len, var_ie_len);
+	pIE = (struct ndis_80211_var_ie *)rtw_get_ie(pvar_ie, WLAN_EID_SUPP_RATES, &ie_len, var_ie_len);
 	if (!pIE)
 		return _FAIL;
 	if (ie_len > sizeof(pmlmeinfo->FW_sta_info[cam_idx].SupportedRates))
@@ -1793,7 +1793,7 @@ int update_sta_support_rate(struct adapter *padapter, u8 *pvar_ie, uint var_ie_l
 	memcpy(pmlmeinfo->FW_sta_info[cam_idx].SupportedRates, pIE->data, ie_len);
 	supportRateNum = ie_len;
 
-	pIE = (struct ndis_80211_var_ie *)rtw_get_ie(pvar_ie, _EXT_SUPPORTEDRATES_IE_, &ie_len, var_ie_len);
+	pIE = (struct ndis_80211_var_ie *)rtw_get_ie(pvar_ie, WLAN_EID_EXT_SUPP_RATES, &ie_len, var_ie_len);
 	if (pIE && (ie_len <= sizeof(pmlmeinfo->FW_sta_info[cam_idx].SupportedRates) - supportRateNum))
 		memcpy((pmlmeinfo->FW_sta_info[cam_idx].SupportedRates + supportRateNum), pIE->data, ie_len);
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index f9ef7dc84e55..41632fa0b3c8 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -1292,7 +1292,7 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
 		pmlmeext->mgnt_80211w_IPN++;
 
 		/* add MME IE with MIC all zero, MME string doesn't include element id and length */
-		pframe = rtw_set_ie(pframe, _MME_IE_, 16,
+		pframe = rtw_set_ie(pframe, WLAN_EID_MMIE, 16,
 				    MME, &pattrib->pktlen);
 		pattrib->last_txcmdsz = pattrib->pktlen;
 		/*  total frame length - header length */
@@ -1447,7 +1447,7 @@ void rtw_update_protection(struct adapter *padapter, u8 *ie, uint ie_len)
 
 	case AUTO_VCS:
 	default:
-		perp = rtw_get_ie(ie, _ERPINFO_IE_, &erp_len, ie_len);
+		perp = rtw_get_ie(ie, WLAN_EID_ERP_INFO, &erp_len, ie_len);
 		if (!perp) {
 			pxmitpriv->vcs = NONE_VCS;
 		} else {
@@ -2251,7 +2251,7 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 			pstapriv->sta_dz_bitmap |= BIT(0);
 
 			if (update_tim)
-				update_beacon(padapter, _TIM_IE_, NULL, true);
+				update_beacon(padapter, WLAN_EID_TIM, NULL, true);
 			else
 				chk_bmc_sleepq_cmd(padapter);
 
@@ -2308,7 +2308,7 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 
 				if (update_tim)
 					/* update BCN for TIM IE */
-					update_beacon(padapter, _TIM_IE_, NULL, true);
+					update_beacon(padapter, WLAN_EID_TIM, NULL, true);
 			}
 
 			ret = true;
@@ -2516,7 +2516,7 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 	spin_unlock_bh(&pxmitpriv->lock);
 
 	if (update_mask)
-		update_beacon(padapter, _TIM_IE_, NULL, true);
+		update_beacon(padapter, WLAN_EID_TIM, NULL, true);
 }
 
 void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *psta)
@@ -2579,7 +2579,7 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 		if ((psta->sleepq_ac_len == 0) && (!psta->has_legacy_ac) && (wmmps_ac)) {
 			pstapriv->tim_bitmap &= ~BIT(psta->aid);
 
-			update_beacon(padapter, _TIM_IE_, NULL, true);
+			update_beacon(padapter, WLAN_EID_TIM, NULL, true);
 		}
 	}
 
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 56fea55513ba..86f31d98349a 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -175,21 +175,21 @@ static void ConstructBeacon(struct adapter *padapter, u8 *pframe, u32 *pLength)
 	/* below for ad-hoc mode */
 
 	/*  SSID */
-	pframe = rtw_set_ie(pframe, _SSID_IE_, cur_network->Ssid.SsidLength, cur_network->Ssid.Ssid, &pktlen);
+	pframe = rtw_set_ie(pframe, WLAN_EID_SSID, cur_network->Ssid.SsidLength, cur_network->Ssid.Ssid, &pktlen);
 
 	/*  supported rates... */
 	rate_len = rtw_get_rateset_len(cur_network->SupportedRates);
-	pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, ((rate_len > 8) ? 8 : rate_len), cur_network->SupportedRates, &pktlen);
+	pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, ((rate_len > 8) ? 8 : rate_len), cur_network->SupportedRates, &pktlen);
 
 	/*  DS parameter set */
-	pframe = rtw_set_ie(pframe, _DSSET_IE_, 1, (unsigned char *)&(cur_network->Configuration.DSConfig), &pktlen);
+	pframe = rtw_set_ie(pframe, WLAN_EID_DS_PARAMS, 1, (unsigned char *)&(cur_network->Configuration.DSConfig), &pktlen);
 
 	if ((pmlmeinfo->state&0x03) == WIFI_FW_ADHOC_STATE) {
 		u32 ATIMWindow;
 		/*  IBSS Parameter Set... */
 		/* ATIMWindow = cur->Configuration.ATIMWindow; */
 		ATIMWindow = 0;
-		pframe = rtw_set_ie(pframe, _IBSS_PARA_IE_, 2, (unsigned char *)(&ATIMWindow), &pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_IBSS_PARAMS, 2, (unsigned char *)(&ATIMWindow), &pktlen);
 	}
 
 
@@ -198,7 +198,7 @@ static void ConstructBeacon(struct adapter *padapter, u8 *pframe, u32 *pLength)
 
 	/*  EXTERNDED SUPPORTED RATE */
 	if (rate_len > 8)
-		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (rate_len - 8), (cur_network->SupportedRates + 8), &pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, (rate_len - 8), (cur_network->SupportedRates + 8), &pktlen);
 
 
 	/* todo:HT for adhoc */
@@ -695,15 +695,15 @@ static void ConstructProbeReq(struct adapter *padapter, u8 *pframe, u32 *pLength
 	pktlen = sizeof(struct ieee80211_hdr_3addr);
 	pframe += pktlen;
 
-	pframe = rtw_set_ie(pframe, _SSID_IE_, 0, NULL, &pktlen);
+	pframe = rtw_set_ie(pframe, WLAN_EID_SSID, 0, NULL, &pktlen);
 
 	get_rate_set(padapter, bssrate, &bssrate_len);
 
 	if (bssrate_len > 8) {
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, 8, bssrate, &pktlen);
-		pframe = rtw_set_ie(pframe, _EXT_SUPPORTEDRATES_IE_, (bssrate_len - 8), (bssrate + 8), &pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, 8, bssrate, &pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_EXT_SUPP_RATES, (bssrate_len - 8), (bssrate + 8), &pktlen);
 	} else
-		pframe = rtw_set_ie(pframe, _SUPPORTEDRATES_IE_, bssrate_len, bssrate, &pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_SUPP_RATES, bssrate_len, bssrate, &pktlen);
 
 	*pLength = pktlen;
 }
@@ -793,7 +793,7 @@ static void ConstructProbeRsp(struct adapter *padapter, u8 *pframe, u32 *pLength
 		u8 buf[MAX_IE_SZ];
 		u8 *ies = pframe + sizeof(struct ieee80211_hdr_3addr);
 
-		ssid_ie = rtw_get_ie(ies+_FIXED_IE_LENGTH_, _SSID_IE_, &ssid_ielen,
+		ssid_ie = rtw_get_ie(ies+_FIXED_IE_LENGTH_, WLAN_EID_SSID, &ssid_ielen,
 					(pframe-ies)-_FIXED_IE_LENGTH_);
 
 		ssid_ielen_diff = cur_network->Ssid.SsidLength - ssid_ielen;
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index 79c410cfadba..d9ff8c8e7f36 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -348,14 +348,6 @@ struct ieee80211_snap_hdr {
 #define WLAN_REASON_JOIN_WRONG_CHANNEL       65534
 #define WLAN_REASON_EXPIRATION_CHK 65535
 
-/* EIDs defined by IEEE 802.11h - END */
-#define WLAN_EID_HT_CAP 45
-#define WLAN_EID_20_40_BSS_COEXISTENCE 72
-#define WLAN_EID_20_40_BSS_INTOLERANT 73
-#define WLAN_EID_OVERLAPPING_BSS_SCAN_PARAMS 74
-#define WLAN_EID_GENERIC (WLAN_EID_VENDOR_SPECIFIC)
-#define WLAN_EID_VHT_OP_MODE_NOTIFY 199
-
 #define IEEE80211_MGMT_HDR_LEN 24
 #define IEEE80211_DATA_HDR3_LEN 24
 #define IEEE80211_DATA_HDR4_LEN 30
diff --git a/drivers/staging/rtl8723bs/include/rtw_security.h b/drivers/staging/rtl8723bs/include/rtw_security.h
index f4a3739651da..85ffd4ec4ce5 100644
--- a/drivers/staging/rtl8723bs/include/rtw_security.h
+++ b/drivers/staging/rtl8723bs/include/rtw_security.h
@@ -21,9 +21,6 @@
 
 const char *security_type_str(u8 value);
 
-#define _WPA_IE_ID_	0xdd
-#define _WPA2_IE_ID_	0x30
-
 #define SHA256_MAC_LEN 32
 #define AES_BLOCK_SIZE 16
 #define AES_PRIV_SIZE (4 * 44)
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 41de2605c517..fe984fcb66a9 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -387,114 +387,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 
 #define _FIXED_IE_LENGTH_			_BEACON_IE_OFFSET_
 
-#define _SSID_IE_				0
-#define _SUPPORTEDRATES_IE_	1
-#define _DSSET_IE_				3
-#define _TIM_IE_					5
-#define _IBSS_PARA_IE_			6
-#define _COUNTRY_IE_			7
-#define _CHLGETXT_IE_			16
-#define _SUPPORTED_CH_IE_		36
-#define _CH_SWTICH_ANNOUNCE_	37	/* Secondary Channel Offset */
-#define _RSN_IE_2_				48
-#define _SSN_IE_1_					221
-#define _ERPINFO_IE_			42
-#define _EXT_SUPPORTEDRATES_IE_	50
-
-#define _HT_CAPABILITY_IE_			45
-#define _FTIE_						55
-#define _TIMEOUT_ITVL_IE_			56
-#define _SRC_IE_				59
-#define _HT_EXTRA_INFO_IE_			61
-#define _HT_ADD_INFO_IE_			61 /* _HT_EXTRA_INFO_IE_ */
-#define _WAPI_IE_					68
-
-#define _RIC_Descriptor_IE_			75
-#define _MME_IE_					76 /* 802.11w Management MIC element */
-#define _LINK_ID_IE_					101
-#define _CH_SWITCH_TIMING_		104
-#define _PTI_BUFFER_STATUS_		106
-#define _EXT_CAP_IE_				127
-#define _VENDOR_SPECIFIC_IE_		221
-
-#define	_RESERVED47_				47
-
-enum ELEMENT_ID {
-	EID_SsId					= 0, /* service set identifier (0:32) */
-	EID_SupRates				= 1, /* supported rates (1:8) */
-	EID_FHParms				= 2, /* FH parameter set (5) */
-	EID_DSParms				= 3, /* DS parameter set (1) */
-	EID_CFParms				= 4, /* CF parameter set (6) */
-	EID_Tim						= 5, /* Traffic Information Map (4:254) */
-	EID_IbssParms				= 6, /* IBSS parameter set (2) */
-	EID_Country					= 7, /* */
-
-	/*  Form 7.3.2: Information elements in 802.11E/D13.0, page 46. */
-	EID_QBSSLoad				= 11,
-	EID_EDCAParms				= 12,
-	EID_TSpec					= 13,
-	EID_TClass					= 14,
-	EID_Schedule				= 15,
-	/*  */
-
-	EID_Ctext					= 16, /* challenge text*/
-	EID_POWER_CONSTRAINT		= 32, /* Power Constraint*/
-
-	/* vivi for WIFITest, 802.11h AP, 20100427 */
-	/*  2010/12/26 MH The definition we can declare always!! */
-	EID_PowerCap				= 33,
-	EID_SupportedChannels		= 36,
-	EID_ChlSwitchAnnounce		= 37,
-
-	EID_MeasureRequest			= 38, /*  Measurement Request */
-	EID_MeasureReport			= 39, /*  Measurement Report */
-
-	EID_ERPInfo				= 42,
-
-	/*  Form 7.3.2: Information elements in 802.11E/D13.0, page 46. */
-	EID_TSDelay				= 43,
-	EID_TCLASProc				= 44,
-	EID_HTCapability			= 45,
-	EID_QoSCap					= 46,
-	/*  */
-
-	EID_WPA2					= 48,
-	EID_ExtSupRates			= 50,
-
-	EID_FTIE					= 55, /*  Defined in 802.11r */
-	EID_Timeout				= 56, /*  Defined in 802.11r */
-
-	EID_SupRegulatory			= 59, /*  Supported Requlatory Classes 802.11y */
-	EID_HTInfo					= 61,
-	EID_SecondaryChnlOffset		= 62,
-
-	EID_BSSCoexistence			= 72, /*  20/40 BSS Coexistence */
-	EID_BSSIntolerantChlReport	= 73,
-	EID_OBSS					= 74, /*  Overlapping BSS Scan Parameters */
-
-	EID_LinkIdentifier			= 101, /*  Defined in 802.11z */
-	EID_WakeupSchedule		= 102, /*  Defined in 802.11z */
-	EID_ChnlSwitchTimeing		= 104, /*  Defined in 802.11z */
-	EID_PTIControl				= 105, /*  Defined in 802.11z */
-	EID_PUBufferStatus			= 106, /*  Defined in 802.11z */
-
-	EID_EXTCapability			= 127, /*  Extended Capabilities */
-	/*  From S19:Aironet IE and S21:AP IP address IE in CCX v1.13, p16 and p18. */
-	EID_Aironet					= 133, /*  0x85: Aironet Element for Cisco CCX */
-	EID_CiscoIP					= 149, /*  0x95: IP Address IE for Cisco CCX */
-
-	EID_CellPwr					= 150, /*  0x96: Cell Power Limit IE. Ref. 0x96. */
-
-	EID_CCKM					= 156,
-
-	EID_Vendor					= 221, /*  0xDD: Vendor Specific */
-
-	EID_WAPI					= 68,
-	EID_VHTCapability			= 191, /*  Based on 802.11ac D2.0 */
-	EID_VHTOperation			= 192, /*  Based on 802.11ac D2.0 */
-	EID_OpModeNotification		= 199, /*  Based on 802.11ac D3.0 */
-};
-
 /* ---------------------------------------------------------------------------
 					Below is the fixed elements...
 -----------------------------------------------------------------------------*/
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index fe89fb3d4ddb..bf1417236161 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -2702,8 +2702,8 @@ static int rtw_add_beacon(struct adapter *adapter, const u8 *head, size_t head_l
 		DBG_8192C("add bcn, wps_ielen =%d\n", wps_ielen);
 
 	/* pbss_network->IEs will not include p2p_ie, wfd ie */
-	rtw_ies_remove_ie(pbuf, &len, _BEACON_IE_OFFSET_, _VENDOR_SPECIFIC_IE_, P2P_OUI, 4);
-	rtw_ies_remove_ie(pbuf, &len, _BEACON_IE_OFFSET_, _VENDOR_SPECIFIC_IE_, WFD_OUI, 4);
+	rtw_ies_remove_ie(pbuf, &len, _BEACON_IE_OFFSET_, WLAN_EID_VENDOR_SPECIFIC, P2P_OUI, 4);
+	rtw_ies_remove_ie(pbuf, &len, _BEACON_IE_OFFSET_, WLAN_EID_VENDOR_SPECIFIC, WFD_OUI, 4);
 
 	if (rtw_check_beacon_data(adapter, pbuf,  len) == _SUCCESS) {
 		ret = 0;
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 1d73df69f737..41389e266f54 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -109,9 +109,9 @@ static char *translate_scan(struct adapter *padapter,
 
 	/* parsing HT_CAP_IE */
 	if (pnetwork->network.Reserved[0] == 2) { /*  Probe Request */
-		p = rtw_get_ie(&pnetwork->network.IEs[0], _HT_CAPABILITY_IE_, &ht_ielen, pnetwork->network.IELength);
+		p = rtw_get_ie(&pnetwork->network.IEs[0], WLAN_EID_HT_CAPABILITY, &ht_ielen, pnetwork->network.IELength);
 	} else {
-		p = rtw_get_ie(&pnetwork->network.IEs[12], _HT_CAPABILITY_IE_, &ht_ielen, pnetwork->network.IELength-12);
+		p = rtw_get_ie(&pnetwork->network.IEs[12], WLAN_EID_HT_CAPABILITY, &ht_ielen, pnetwork->network.IELength-12);
 	}
 	if (p && ht_ielen > 0) {
 		struct ieee80211_ht_cap *pht_capie;
@@ -717,7 +717,7 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 			while (cnt < ielen) {
 				eid = buf[cnt];
 
-				if ((eid == _VENDOR_SPECIFIC_IE_) && (!memcmp(&buf[cnt+2], wps_oui, 4))) {
+				if ((eid == WLAN_EID_VENDOR_SPECIFIC) && (!memcmp(&buf[cnt+2], wps_oui, 4))) {
 					DBG_871X("SET WPS_IE\n");
 
 					padapter->securitypriv.wps_ie_len = ((buf[cnt+1]+2) < MAX_WPS_IE_LEN) ? (buf[cnt+1]+2):MAX_WPS_IE_LEN;
@@ -771,7 +771,7 @@ static int rtw_wx_get_name(struct net_device *dev,
 
 	if (check_fwstate(pmlmepriv, _FW_LINKED|WIFI_ADHOC_MASTER_STATE) == true) {
 		/* parsing HT_CAP_IE */
-		p = rtw_get_ie(&pcur_bss->IEs[12], _HT_CAPABILITY_IE_, &ht_ielen, pcur_bss->IELength-12);
+		p = rtw_get_ie(&pcur_bss->IEs[12], WLAN_EID_HT_CAPABILITY, &ht_ielen, pcur_bss->IELength-12);
 		if (p && ht_ielen > 0)
 			ht_cap = true;
 
@@ -3945,7 +3945,7 @@ static int rtw_get_sta_wpaie(struct net_device *dev, struct ieee_param *param)
 
 	psta = rtw_get_stainfo(pstapriv, param->sta_addr);
 	if (psta) {
-		if ((psta->wpa_ie[0] == WLAN_EID_RSN) || (psta->wpa_ie[0] == WLAN_EID_GENERIC)) {
+		if ((psta->wpa_ie[0] == WLAN_EID_RSN) || (psta->wpa_ie[0] == WLAN_EID_VENDOR_SPECIFIC)) {
 			int wpa_ie_len;
 			int copy_len;
 
@@ -3998,7 +3998,7 @@ static int rtw_set_wps_beacon(struct net_device *dev, struct ieee_param *param,
 
 		memcpy(pmlmepriv->wps_beacon_ie, param->u.bcn_ie.buf, ie_len);
 
-		update_beacon(padapter, _VENDOR_SPECIFIC_IE_, wps_oui, true);
+		update_beacon(padapter, WLAN_EID_VENDOR_SPECIFIC, wps_oui, true);
 
 		pmlmeext->bstart_bss = true;
 	}
@@ -4361,7 +4361,7 @@ static int rtw_wx_set_priv(struct net_device *dev,
 		int probereq_wpsie_len = len;
 		u8 wps_oui[4] = {0x0, 0x50, 0xf2, 0x04};
 
-		if ((_VENDOR_SPECIFIC_IE_ == probereq_wpsie[0]) &&
+		if ((WLAN_EID_VENDOR_SPECIFIC == probereq_wpsie[0]) &&
 			(!memcmp(&probereq_wpsie[2], wps_oui, 4))) {
 			cp_sz = probereq_wpsie_len > MAX_WPS_IE_LEN ? MAX_WPS_IE_LEN : probereq_wpsie_len;
 
diff --git a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
index f121dbfaa029..fb2df871c0cb 100644
--- a/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/mlme_linux.c
@@ -147,7 +147,7 @@ void rtw_report_sec_ie(struct adapter *adapter, u8 authmode, u8 *sec_ie)
 	RT_TRACE(_module_mlme_osdep_c_, _drv_info_, ("+rtw_report_sec_ie, authmode =%d\n", authmode));
 
 	buff = NULL;
-	if (authmode == _WPA_IE_ID_) {
+	if (authmode == WLAN_EID_VENDOR_SPECIFIC) {
 		RT_TRACE(_module_mlme_osdep_c_, _drv_info_, ("rtw_report_sec_ie, authmode =%d\n", authmode));
 
 		buff = rtw_zmalloc(IW_CUSTOM_MAX);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
