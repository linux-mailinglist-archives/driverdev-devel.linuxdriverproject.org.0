Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6190A2110F2
	for <lists+driverdev-devel@lfdr.de>; Wed,  1 Jul 2020 18:45:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0289F8C153;
	Wed,  1 Jul 2020 16:45:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 35BYdOHOCt5s; Wed,  1 Jul 2020 16:45:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D56A98C10A;
	Wed,  1 Jul 2020 16:45:35 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A17DD1BF82B
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 16:45:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 9BA8A893A1
 for <devel@linuxdriverproject.org>; Wed,  1 Jul 2020 16:45:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2kVmM6ZXpDTg for <devel@linuxdriverproject.org>;
 Wed,  1 Jul 2020 16:45:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com
 [209.85.160.196])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 093528939D
 for <devel@driverdev.osuosl.org>; Wed,  1 Jul 2020 16:45:32 +0000 (UTC)
Received: by mail-qt1-f196.google.com with SMTP id e12so18910055qtr.9
 for <devel@driverdev.osuosl.org>; Wed, 01 Jul 2020 09:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y0XJ0Slz7kZn6xQCV03ZiEkNStp45H7CUj9hGVbrJA4=;
 b=WOlYI1qysbjpCzlysPRaGJ4VaNr1szvkRUtaVRqNVOKRG2psRSUuDfXpJ8eIG0CcZo
 Xt92VQ8wVt5dL8um5nFiaX7r/CE5lvDMp5vQ/ya9ObE1d3//832zRa/psutipnrPnzhl
 JguhH+zEZNWNMvTrdoQ6HncUkyrgqu9qrpWQdkz7c2T0K7pzTswsNIGfneTQP7dv4B3S
 ZqSEw/OQoszGHqaMzuWjuWlmT0qTFF9n55zQuqJ1MgihJVkzXnBWEpbr7Uu+FmBWr2M3
 9Mvh9b/00KfZ0ohaH6mY3iXEaly5xPu40qKdcdI3Sg4xxnAqilubjcC/lfkHZWpZBU5r
 zgFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=y0XJ0Slz7kZn6xQCV03ZiEkNStp45H7CUj9hGVbrJA4=;
 b=IExLa4ZVVmJp/AjE/ZojKal7BHq0DwC9uC9Lt4zsd0OciZnXXQpIoK3l0VPHwruBr/
 b3jBeVaMK+zyjAvi9DUfRMy2Gr2RWS1BHIY+va6rUt3eHJBeoArDsMCKl6xoSyHauXNU
 edWoD0Pkn+8xMJT/5yoWVZ89hi7uYCXYbLGmZXYcAHX34DlYpDZH3cWz/l/brFLRUbA7
 NjTXm+LUS2mtuK0ITPMWV3gfh1sIHoS/e8Hje0F1azdWEvFD3N/kT7fHW2P3w8KuNYci
 LqZI/Jlw47Le4Wu83VgPAoilQmXBCxddOgRW7pWFEmgPn7iMhJpMdIxHR+8j6NM8yz1F
 1PYA==
X-Gm-Message-State: AOAM530XtIiXOT+86aMxyCst0qHNBY01ZYGq2yvt1IRB97rPsJ96ZS36
 u8PrOVRaGnwz0C3umHhFu8w=
X-Google-Smtp-Source: ABdhPJx4ulb3eFwQXAKpSzVSL7OnSrOyLoX9VIXGKbnlc7gytKE2kz0+C4u+jDfXs4xlVAVxDca18w==
X-Received: by 2002:ac8:4f4c:: with SMTP id i12mr7109254qtw.17.1593621930946; 
 Wed, 01 Jul 2020 09:45:30 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-011-230-214.178.011.pools.vodafone-ip.de. [178.11.230.214])
 by smtp.gmail.com with ESMTPSA id w77sm6247489qka.34.2020.07.01.09.45.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jul 2020 09:45:30 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8712: use common ieee80211 constants
Date: Wed,  1 Jul 2020 18:42:13 +0200
Message-Id: <20200701164213.4205-1-straube.linux@gmail.com>
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
Cc: devel@driverdev.osuosl.org, florian.c.schilhabel@googlemail.com,
 linux-kernel@vger.kernel.org, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Many defined constants in wifi.h are unused and/or available from
<linux/ieee80211.h>, some with slightly different names. Use the
common ones, rename where necessary and remove unused.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c |  2 +-
 drivers/staging/rtl8712/rtl871x_mlme.c        |  8 +--
 drivers/staging/rtl8712/wifi.h                | 51 -------------------
 3 files changed, 5 insertions(+), 56 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 36c89cde525d..81482d5ae1a3 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -1411,7 +1411,7 @@ static int r8711_wx_get_rate(struct net_device *dev,
 		pht_capie = (struct rtl_ieee80211_ht_cap *)(p + 2);
 		memcpy(&mcs_rate, pht_capie->supp_mcs_set, 2);
 		bw_40MHz = (le16_to_cpu(pht_capie->cap_info) &
-			    IEEE80211_HT_CAP_SUP_WIDTH) ? 1 : 0;
+			    IEEE80211_HT_CAP_SUP_WIDTH_20_40) ? 1 : 0;
 		short_GI = (le16_to_cpu(pht_capie->cap_info) &
 			    (IEEE80211_HT_CAP_SGI_20 |
 			    IEEE80211_HT_CAP_SGI_40)) ? 1 : 0;
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index efd75add8e35..9ee1bfac0763 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -1660,14 +1660,14 @@ unsigned int r8712_restructure_ht_ie(struct _adapter *padapter, u8 *in_ie,
 		}
 		out_len = *pout_len;
 		memset(&ht_capie, 0, sizeof(struct rtl_ieee80211_ht_cap));
-		ht_capie.cap_info = cpu_to_le16(IEEE80211_HT_CAP_SUP_WIDTH |
+		ht_capie.cap_info = cpu_to_le16(IEEE80211_HT_CAP_SUP_WIDTH_20_40 |
 				    IEEE80211_HT_CAP_SGI_20 |
 				    IEEE80211_HT_CAP_SGI_40 |
 				    IEEE80211_HT_CAP_TX_STBC |
 				    IEEE80211_HT_CAP_MAX_AMSDU |
 				    IEEE80211_HT_CAP_DSSSCCK40);
-		ht_capie.ampdu_params_info = (IEEE80211_HT_CAP_AMPDU_FACTOR &
-				0x03) | (IEEE80211_HT_CAP_AMPDU_DENSITY & 0x00);
+		ht_capie.ampdu_params_info = (IEEE80211_HT_AMPDU_PARM_FACTOR &
+				0x03) | (IEEE80211_HT_AMPDU_PARM_DENSITY & 0x00);
 		r8712_set_ie(out_ie + out_len, _HT_CAPABILITY_IE_,
 			     sizeof(struct rtl_ieee80211_ht_cap),
 			     (unsigned char *)&ht_capie, pout_len);
@@ -1705,7 +1705,7 @@ static void update_ht_cap(struct _adapter *padapter, u8 *pie, uint ie_len)
 	if (p && len > 0) {
 		pht_capie = (struct rtl_ieee80211_ht_cap *)(p + 2);
 		max_ampdu_sz = (pht_capie->ampdu_params_info &
-				IEEE80211_HT_CAP_AMPDU_FACTOR);
+				IEEE80211_HT_AMPDU_PARM_FACTOR);
 		/* max_ampdu_sz (kbytes); */
 		max_ampdu_sz = 1 << (max_ampdu_sz + 3);
 		phtpriv->rx_ampdu_maxlen = max_ampdu_sz;
diff --git a/drivers/staging/rtl8712/wifi.h b/drivers/staging/rtl8712/wifi.h
index 66e0634f07ba..601d4ff607bc 100644
--- a/drivers/staging/rtl8712/wifi.h
+++ b/drivers/staging/rtl8712/wifi.h
@@ -437,13 +437,6 @@ static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
  *------------------------------------------------------------------------------
  */
 
-/* block-ack parameters */
-#define IEEE80211_ADDBA_PARAM_POLICY_MASK 0x0002
-#define IEEE80211_ADDBA_PARAM_TID_MASK 0x003C
-#define IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK 0xFFC0
-#define IEEE80211_DELBA_PARAM_TID_MASK 0xF000
-#define IEEE80211_DELBA_PARAM_INITIATOR_MASK 0x0800
-
 #define SetOrderBit(pbuf) ({ \
 	*(__le16 *)(pbuf) |= cpu_to_le16(_ORDER_); \
 })
@@ -481,49 +474,5 @@ struct ieee80211_ht_addt_info {
 	unsigned char		basic_set[16];
 } __packed;
 
-/* 802.11n HT capabilities masks */
-#define IEEE80211_HT_CAP_SUP_WIDTH		0x0002
-#define IEEE80211_HT_CAP_SM_PS			0x000C
-#define IEEE80211_HT_CAP_GRN_FLD		0x0010
-#define IEEE80211_HT_CAP_SGI_20			0x0020
-#define IEEE80211_HT_CAP_SGI_40			0x0040
-#define IEEE80211_HT_CAP_TX_STBC			0x0080
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
-/*
- * A-PMDU buffer sizes
- * According to IEEE802.11n spec size varies from 8K to 64K (in powers of 2)
- */
-#define IEEE80211_MIN_AMPDU_BUF 0x8
-
-/* Spatial Multiplexing Power Save Modes */
-#define WLAN_HT_CAP_SM_PS_STATIC		0
-#define WLAN_HT_CAP_SM_PS_DYNAMIC	1
-#define WLAN_HT_CAP_SM_PS_INVALID	2
-#define WLAN_HT_CAP_SM_PS_DISABLED	3
-
 #endif /* _WIFI_H_ */
 
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
