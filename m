Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC382112D2
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 20:33:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 00FCF8ACC5;
	Wed,  1 Jul 2020 18:33:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fG8n33rv0Sdn; Wed,  1 Jul 2020 18:33:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id B3EC78ABD4;
	Wed,  1 Jul 2020 18:33:07 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 50DB41BF27F
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 18:33:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4B68A8A84F
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 18:33:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NddTeoC7UUkm for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 18:33:03 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com
 [209.85.219.66])
 by hemlock.osuosl.org (Postfix) with ESMTPS id DE26D8AD2B
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 18:32:58 +0000 (UTC)
Received: by mail-qv1-f66.google.com with SMTP id p7so11467886qvl.4
 for <devel@driverdev.osuosl.org>; Wed, 01 Jul 2020 11:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oMWqsRjgamvDhaqKLIZ9a9tnvYnbIff79zmxoBxUuak=;
 b=FLoLn+HQP7/uzxDpHgN+EIvDc50vL+GIHLYsU136Yg87tdiYTxFcWlvI89+G3hmDMr
 jfAq44GC57+VDkYRzkX+Y0DYaPtCCcOs0ebzG5gFazEUgZLBUVaZ5EePg4Fc/yEP6yQ8
 tQumRrSfTHtT2ZiyqN13Pd9plp82q4nEMcT5HofiEVPe/aKRp1/iQcxmNU361W5d9nuq
 z4NWQY70A4qbuBs3gtTmRiXozTLbyFnZDW27kleAuzP6lDyNRUg45lrB6tei2CB99Htl
 5H0A7eN4daGuVjQl3erOT9Xuy9PUYvwVSeEujzZwBysKN5OXfkc6j3ntUfWYKOpy33yv
 /xWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=oMWqsRjgamvDhaqKLIZ9a9tnvYnbIff79zmxoBxUuak=;
 b=MgZCunJtbkv7RdiadEMcvEl8ATnck7M2p/OcG7ZS+CAIGhBo2MtvqVOjo+fvQ7krlk
 kIxHARAl+RvcMhjufwSqEZ1fPF7Cjosla9PYxLmZb72ybMektj7vgLKTj4X4sef3y6zB
 5fh4Uz1hjltizMngHIZQDd9xVhaFZYKWhx1w0bZkiMLthNjoHn5cBGxje0+7VJtXbACO
 EHOIL0eGn6es8Y7LFzuH24OsJ19E1iOuctOd54HVtUqNaR+kPbrx6e+Mb5BksCbvwfKZ
 K4tf45ccjO1d85i3K0PoBkOe74PgOspDQDyGwFPnUWske4708wUM8r0Kvj8SHPjDDWOR
 CvRg==
X-Gm-Message-State: AOAM533SeEp4gUjF+xvSp2xz7MV8dno/ztrPY9Cn+V6xVJCNhUBWm1Y/
 470yi6lams2bhrxveiOWSWE=
X-Google-Smtp-Source: ABdhPJzqaxeHeDnYKzLJ8TXnH3yXOMCxoG1iovLm50XIlqQ8xYrwyk3qfUvEsYxT5q7Wz8O+uBNj3Q==
X-Received: by 2002:a0c:b8a9:: with SMTP id y41mr12712021qvf.49.1593628377908; 
 Wed, 01 Jul 2020 11:32:57 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-011-230-214.178.011.pools.vodafone-ip.de. [178.11.230.214])
 by smtp.gmail.com with ESMTPSA id x13sm5699055qkx.10.2020.07.01.11.32.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 11:32:57 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8188eu: use common ieee80211 constants
Date: Wed,  1 Jul 2020 20:29:57 +0200
Message-Id: <20200701182957.7932-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.27.0
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
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Many defined constants in wifi.h are unused and/or available from
<linux/ieee80211.h>, some with slightly different names. Use the
common ones, rename where necessary and remove unused.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c       | 12 ++---
 drivers/staging/rtl8188eu/core/rtw_mlme.c     |  6 +--
 drivers/staging/rtl8188eu/include/wifi.h      | 46 -------------------
 .../staging/rtl8188eu/os_dep/ioctl_linux.c    |  2 +-
 4 files changed, 10 insertions(+), 56 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 817793b9aff2..41535441f82c 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -535,7 +535,7 @@ void update_sta_info_apmode(struct adapter *padapter, struct sta_info *psta)
 		/*  bwmode */
 		if (le16_to_cpu(phtpriv_sta->ht_cap.cap_info &
 				phtpriv_ap->ht_cap.cap_info) &
-		    IEEE80211_HT_CAP_SUP_WIDTH) {
+		    IEEE80211_HT_CAP_SUP_WIDTH_20_40) {
 			phtpriv_sta->bwmode = pmlmeext->cur_bwmode;
 			phtpriv_sta->ch_offset = pmlmeext->cur_ch_offset;
 		}
@@ -925,12 +925,12 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 
 		if ((psecuritypriv->wpa_pairwise_cipher & WPA_CIPHER_CCMP) ||
 		    (psecuritypriv->wpa2_pairwise_cipher & WPA_CIPHER_CCMP))
-			pht_cap->ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_DENSITY & (0x07 << 2));
+			pht_cap->ampdu_params_info |= (IEEE80211_HT_AMPDU_PARM_DENSITY & (0x07 << 2));
 		else
-			pht_cap->ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_DENSITY & 0x00);
+			pht_cap->ampdu_params_info |= (IEEE80211_HT_AMPDU_PARM_DENSITY & 0x00);
 
 		/* set  Max Rx AMPDU size  to 64K */
-		pht_cap->ampdu_params_info |= (IEEE80211_HT_CAP_AMPDU_FACTOR & 0x03);
+		pht_cap->ampdu_params_info |= (IEEE80211_HT_AMPDU_PARM_FACTOR & 0x03);
 
 		pht_cap->mcs.rx_mask[0] = 0xff;
 		pht_cap->mcs.rx_mask[1] = 0x0;
@@ -1307,7 +1307,7 @@ static int rtw_ht_operation_update(struct adapter *padapter)
 	    (pmlmepriv->ht_op_mode & HT_INFO_OPERATION_MODE_NON_GF_DEVS_PRESENT))
 		new_op_mode = OP_MODE_MIXED;
 	else if ((le16_to_cpu(phtpriv_ap->ht_cap.cap_info) &
-		  IEEE80211_HT_CAP_SUP_WIDTH) &&
+		  IEEE80211_HT_CAP_SUP_WIDTH_20_40) &&
 		 pmlmepriv->num_sta_ht_20mhz)
 		new_op_mode = OP_MODE_20MHZ_HT_STA_ASSOCED;
 	else if (pmlmepriv->olbc_ht)
@@ -1457,7 +1457,7 @@ void bss_cap_update_on_sta_join(struct adapter *padapter, struct sta_info *psta)
 				pmlmepriv->num_sta_ht_no_gf);
 		}
 
-		if ((ht_capab & IEEE80211_HT_CAP_SUP_WIDTH) == 0) {
+		if ((ht_capab & IEEE80211_HT_CAP_SUP_WIDTH_20_40) == 0) {
 			if (!psta->ht_20mhz_set) {
 				psta->ht_20mhz_set = 1;
 				pmlmepriv->num_sta_ht_20mhz++;
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index b291ee6ca8f4..5d7a749f1aac 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -1882,7 +1882,7 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 
 		memset(&ht_cap, 0, sizeof(struct ieee80211_ht_cap));
 
-		ht_cap.cap_info = cpu_to_le16(IEEE80211_HT_CAP_SUP_WIDTH |
+		ht_cap.cap_info = cpu_to_le16(IEEE80211_HT_CAP_SUP_WIDTH_20_40 |
 					      IEEE80211_HT_CAP_SGI_20 |
 					      IEEE80211_HT_CAP_SGI_40 |
 					      IEEE80211_HT_CAP_TX_STBC |
@@ -1900,9 +1900,9 @@ unsigned int rtw_restructure_ht_ie(struct adapter *padapter, u8 *in_ie, u8 *out_
 		ht_cap.ampdu_params_info = max_rx_ampdu_factor & 0x03;
 
 		if (padapter->securitypriv.dot11PrivacyAlgrthm == _AES_)
-			ht_cap.ampdu_params_info |= IEEE80211_HT_CAP_AMPDU_DENSITY & (0x07 << 2);
+			ht_cap.ampdu_params_info |= IEEE80211_HT_AMPDU_PARM_DENSITY & (0x07 << 2);
 		else
-			ht_cap.ampdu_params_info |= IEEE80211_HT_CAP_AMPDU_DENSITY & 0x00;
+			ht_cap.ampdu_params_info |= IEEE80211_HT_AMPDU_PARM_DENSITY & 0x00;
 
 		rtw_set_ie(out_ie + out_len, _HT_CAPABILITY_IE_,
 			   sizeof(struct ieee80211_ht_cap),
diff --git a/drivers/staging/rtl8188eu/include/wifi.h b/drivers/staging/rtl8188eu/include/wifi.h
index e12e3d0a45e0..791f287a546d 100644
--- a/drivers/staging/rtl8188eu/include/wifi.h
+++ b/drivers/staging/rtl8188eu/include/wifi.h
@@ -499,52 +499,6 @@ enum ht_cap_ampdu_factor {
 	MAX_AMPDU_FACTOR_64K	= 3,
 };
 
-/* 802.11n HT capabilities masks */
-#define IEEE80211_HT_CAP_SUP_WIDTH		0x0002
-#define IEEE80211_HT_CAP_SM_PS			0x000C
-#define IEEE80211_HT_CAP_GRN_FLD		0x0010
-#define IEEE80211_HT_CAP_SGI_20			0x0020
-#define IEEE80211_HT_CAP_SGI_40			0x0040
-#define IEEE80211_HT_CAP_TX_STBC		0x0080
-#define IEEE80211_HT_CAP_RX_STBC		0x0300
-#define IEEE80211_HT_CAP_DELAY_BA		0x0400
-#define IEEE80211_HT_CAP_MAX_AMSDU		0x0800
-#define IEEE80211_HT_CAP_DSSSCCK40		0x1000
-/* 802.11n HT capability AMPDU settings */
-#define IEEE80211_HT_CAP_AMPDU_FACTOR		0x03
-#define IEEE80211_HT_CAP_AMPDU_DENSITY		0x1C
-/* 802.11n HT capability MSC set */
-#define IEEE80211_SUPP_MCS_SET_UEQM		4
-#define IEEE80211_HT_CAP_MAX_STREAMS		4
-#define IEEE80211_SUPP_MCS_SET_LEN		10
-/* maximum streams the spec allows */
-#define IEEE80211_HT_CAP_MCS_TX_DEFINED		0x01
-#define IEEE80211_HT_CAP_MCS_TX_RX_DIFF		0x02
-#define IEEE80211_HT_CAP_MCS_TX_STREAMS		0x0C
-#define IEEE80211_HT_CAP_MCS_TX_UEQM		0x10
-/* 802.11n HT IE masks */
-#define IEEE80211_HT_IE_CHA_SEC_OFFSET		0x03
-#define IEEE80211_HT_IE_CHA_SEC_NONE		0x00
-#define IEEE80211_HT_IE_CHA_SEC_ABOVE		0x01
-#define IEEE80211_HT_IE_CHA_SEC_BELOW		0x03
-#define IEEE80211_HT_IE_CHA_WIDTH		0x04
-#define IEEE80211_HT_IE_HT_PROTECTION		0x0003
-#define IEEE80211_HT_IE_NON_GF_STA_PRSNT	0x0004
-#define IEEE80211_HT_IE_NON_HT_STA_PRSNT	0x0010
-
-/* block-ack parameters */
-#define IEEE80211_ADDBA_PARAM_POLICY_MASK 0x0002
-#define IEEE80211_ADDBA_PARAM_TID_MASK 0x003C
-#define RTW_IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK 0xFFC0
-#define IEEE80211_DELBA_PARAM_TID_MASK 0xF000
-#define IEEE80211_DELBA_PARAM_INITIATOR_MASK 0x0800
-
-/*
- * A-PMDU buffer sizes
- * According to IEEE802.11n spec size varies from 8K to 64K (in powers of 2)
- */
-#define IEEE80211_MIN_AMPDU_BUF 0x8
-
 #define OP_MODE_PURE                    0
 #define OP_MODE_MAY_BE_LEGACY_STAS      1
 #define OP_MODE_20MHZ_HT_STA_ASSOCED    2
diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 38484dffe095..5e6f7f0ed009 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -129,7 +129,7 @@ static char *translate_scan(struct adapter *padapter,
 		pht_capie = (struct ieee80211_ht_cap *)(p + 2);
 		memcpy(&mcs_rate, pht_capie->mcs.rx_mask, 2);
 		bw_40MHz = !!(le16_to_cpu(pht_capie->cap_info) &
-			      IEEE80211_HT_CAP_SUP_WIDTH);
+			      IEEE80211_HT_CAP_SUP_WIDTH_20_40);
 		short_GI = !!(le16_to_cpu(pht_capie->cap_info) &
 			      (IEEE80211_HT_CAP_SGI_20 |
 			       IEEE80211_HT_CAP_SGI_40));
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
