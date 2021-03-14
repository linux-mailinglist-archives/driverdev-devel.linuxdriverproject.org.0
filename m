Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E45F33A3AF
	for <lists+driverdev-devel@lfdr.de>; Sun, 14 Mar 2021 10:04:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 091876F476;
	Sun, 14 Mar 2021 09:04:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yTZNO3ay8lp8; Sun, 14 Mar 2021 09:04:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8BA5160732;
	Sun, 14 Mar 2021 09:04:32 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 582A01BF395
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 09:03:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 50AD16F47F
 for <devel@linuxdriverproject.org>; Sun, 14 Mar 2021 09:03:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YsZmKmxcqdmS for <devel@linuxdriverproject.org>;
 Sun, 14 Mar 2021 09:03:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com
 [IPv6:2a00:1450:4864:20::129])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 532B36071F
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 09:03:43 +0000 (UTC)
Received: by mail-lf1-x129.google.com with SMTP id u4so52244491lfs.0
 for <devel@driverdev.osuosl.org>; Sun, 14 Mar 2021 01:03:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=O46nNUtiNUIxZdLM9H9z/yPTfQyKcBwviQefaI3Bnqg=;
 b=lcwf5AcBcvtor5jwoM/kIFHcDQuX04a6KlamIKYZx8eJOXbqRMbelW3MC50wGSbccU
 1nXoe2KXSbedSfide4ptOu1Q1v8IQlDKxKsAMNkR+yNfcbfcHXRgzu4FDihIzztwgSch
 oEbHmJP+/0R6l8OgPSKAHMFwEQT8XDplNzxvPsOWa5/VSSxHGJinf2sHaZDgqEufR1aV
 y+pnXQLZJf5LIYwfbFys+pQOgvzO3VmmQqV5X015+NuBUNyiQEHYBVFt5TxR6iENtrwL
 eRAQV1TIb9WEpcSEdzZtsBW4skQ8t3Htnbz7BySSIhnHilyRuH6myL/ybI/rv6k+AUz+
 kBpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=O46nNUtiNUIxZdLM9H9z/yPTfQyKcBwviQefaI3Bnqg=;
 b=i3jvViDwaXe2MH3aLiKpa2q4djZiVqvToB/u4jHIRFrvlKMf2heYshBsj6d7bttYJr
 mp+DzREIpKF9FEozOhZxKHCGQs3tyVDKJkur7kRsy9qVOJXPLmEEMU/zladfKxDSb7TK
 0imaqSPKwRr6n56+l6ENm0SdUtwnvXWfl88XXQqTiIk7X/BWv4fWwh/igdqDv9761yzY
 xMEPGmhGySwbL1kweE3Xc0wDHc6ur8Iw8WVRMDDSiHVU8THcfUcM/dS9araNL+2ejF7Q
 QR8Wu7WRhBkixVypCXfIXomE5tix3f39I3I9GcPAf7GQ9tv58sUjb9dk4z1kN0Ky1VUQ
 eY/Q==
X-Gm-Message-State: AOAM533J75gLvco4/9AhQhmIjujyvRcSLugoZesEA3E7AJYJgL7xGbns
 r9GDsLBkMom2eZzCMZghRQc=
X-Google-Smtp-Source: ABdhPJzo/B7XXrDgaLtwfaFnb9b4ym30OGvL/99xAJny9tRckq+jUJAaHfb+97KlA2kH1sVQzGP+iQ==
X-Received: by 2002:a19:4101:: with SMTP id o1mr4755416lfa.16.1615712621285;
 Sun, 14 Mar 2021 01:03:41 -0800 (PST)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id h10sm2256138lfc.266.2021.03.14.01.03.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 14 Mar 2021 01:03:40 -0800 (PST)
Received: (nullmailer pid 21229 invoked by uid 1000);
 Sun, 14 Mar 2021 09:03:26 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH 1/4] staging:r8188eu: replace get_(d|s)a with
 ieee80211_get_(D|S)A
Date: Sun, 14 Mar 2021 12:02:44 +0300
Message-Id: <20210314090247.21181-2-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210314090247.21181-1-insafonov@gmail.com>
References: <20210314090247.21181-1-insafonov@gmail.com>
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
Cc: Brooke Basile <brookebasile@gmail.com>, devel@driverdev.osuosl.org,
 Ivan Safonov <insafonov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel@vger.kernel.org,
 Shreeya Patel <shreeya.patel23498@gmail.com>,
 Mrinal Pandey <mrinalmni@gmail.com>, Simon Fong <simon.fodin@gmail.com>,
 Peilin Ye <yepeilin.cs@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

get_da()/get_sa() duplicate native ieee80211_get_(D|S)A functions.
Remove get_(d|s)a, use ieee80211_get_(D|S)A instead.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c |  6 +--
 drivers/staging/rtl8188eu/core/rtw_recv.c     |  4 +-
 .../staging/rtl8188eu/hal/rtl8188e_rxdesc.c   |  4 +-
 drivers/staging/rtl8188eu/include/wifi.h      | 44 -------------------
 4 files changed, 7 insertions(+), 51 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index ebd9b96a8211..bee19d5b22c0 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -2526,7 +2526,7 @@ static unsigned int OnProbeReq(struct adapter *padapter,
 
 		if (check_fwstate(pmlmepriv, _FW_LINKED) &&
 		    pmlmepriv->cur_network.join_res)
-			issue_probersp(padapter, get_sa(pframe));
+			issue_probersp(padapter, ieee80211_get_SA((struct ieee80211_hdr *)pframe));
 	}
 	return _SUCCESS;
 }
@@ -2819,7 +2819,7 @@ static unsigned int OnAuthClient(struct adapter *padapter,
 	DBG_88E("%s\n", __func__);
 
 	/* check A1 matches or not */
-	if (memcmp(myid(&padapter->eeprompriv), get_da(pframe), ETH_ALEN))
+	if (memcmp(myid(&padapter->eeprompriv), ieee80211_get_DA((struct ieee80211_hdr *)pframe), ETH_ALEN))
 		return _SUCCESS;
 
 	if (!(pmlmeinfo->state & WIFI_FW_AUTH_STATE))
@@ -3332,7 +3332,7 @@ static unsigned int OnAssocRsp(struct adapter *padapter,
 	DBG_88E("%s\n", __func__);
 
 	/* check A1 matches or not */
-	if (memcmp(myid(&padapter->eeprompriv), get_da(pframe), ETH_ALEN))
+	if (memcmp(myid(&padapter->eeprompriv), ieee80211_get_DA((struct ieee80211_hdr *)pframe), ETH_ALEN))
 		return _SUCCESS;
 
 	if (!(pmlmeinfo->state & (WIFI_FW_AUTH_SUCCESS | WIFI_FW_ASSOC_STATE)))
diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 36bcbe635cf4..b9b4bc435037 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -1029,8 +1029,8 @@ static int validate_recv_data_frame(struct adapter *adapter,
 	int ret = _SUCCESS;
 
 	bretry = GetRetry(ptr);
-	pda = get_da(ptr);
-	psa = get_sa(ptr);
+	pda = ieee80211_get_DA((struct ieee80211_hdr *)ptr);
+	psa = ieee80211_get_SA((struct ieee80211_hdr *)ptr);
 	pbssid = get_hdr_bssid(ptr);
 
 	if (!pbssid) {
diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c b/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
index 0d06cb54b1ad..4fae75fc3dd5 100644
--- a/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
+++ b/drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c
@@ -150,7 +150,7 @@ void update_recvframe_phyinfo_88e(struct recv_frame *precvframe,
 		 get_bssid(&padapter->mlmepriv), ETH_ALEN));
 
 	pkt_info.bPacketToSelf = pkt_info.bPacketMatchBSSID &&
-				 (!memcmp(get_da(wlanhdr),
+				 (!memcmp(ieee80211_get_DA((struct ieee80211_hdr *)wlanhdr),
 				  myid(&padapter->eeprompriv), ETH_ALEN));
 
 	pkt_info.bPacketBeacon = pkt_info.bPacketMatchBSSID &&
@@ -161,7 +161,7 @@ void update_recvframe_phyinfo_88e(struct recv_frame *precvframe,
 			sa = padapter->mlmepriv.cur_network.network.MacAddress;
 		/* to do Ad-hoc */
 	} else {
-		sa = get_sa(wlanhdr);
+		sa = ieee80211_get_SA((struct ieee80211_hdr *)wlanhdr);
 	}
 
 	pstapriv = &padapter->stapriv;
diff --git a/drivers/staging/rtl8188eu/include/wifi.h b/drivers/staging/rtl8188eu/include/wifi.h
index 1b9006879a11..5ee4d02e293c 100644
--- a/drivers/staging/rtl8188eu/include/wifi.h
+++ b/drivers/staging/rtl8188eu/include/wifi.h
@@ -201,50 +201,6 @@ enum WIFI_REG_DOMAIN {
 
 #define GetAddr4Ptr(pbuf)	((unsigned char *)((size_t)(pbuf) + 24))
 
-static inline unsigned char *get_da(unsigned char *pframe)
-{
-	unsigned char	*da;
-	unsigned int to_fr_ds = (GetToDs(pframe) << 1) | GetFrDs(pframe);
-
-	switch (to_fr_ds) {
-	case 0x00:	/*  ToDs=0, FromDs=0 */
-		da = GetAddr1Ptr(pframe);
-		break;
-	case 0x01:	/*  ToDs=0, FromDs=1 */
-		da = GetAddr1Ptr(pframe);
-		break;
-	case 0x02:	/*  ToDs=1, FromDs=0 */
-		da = GetAddr3Ptr(pframe);
-		break;
-	default:	/*  ToDs=1, FromDs=1 */
-		da = GetAddr3Ptr(pframe);
-		break;
-	}
-	return da;
-}
-
-static inline unsigned char *get_sa(unsigned char *pframe)
-{
-	unsigned char	*sa;
-	unsigned int	to_fr_ds = (GetToDs(pframe) << 1) | GetFrDs(pframe);
-
-	switch (to_fr_ds) {
-	case 0x00:	/*  ToDs=0, FromDs=0 */
-		sa = GetAddr2Ptr(pframe);
-		break;
-	case 0x01:	/*  ToDs=0, FromDs=1 */
-		sa = GetAddr3Ptr(pframe);
-		break;
-	case 0x02:	/*  ToDs=1, FromDs=0 */
-		sa = GetAddr2Ptr(pframe);
-		break;
-	default:	/*  ToDs=1, FromDs=1 */
-		sa = GetAddr4Ptr(pframe);
-		break;
-	}
-	return sa;
-}
-
 static inline unsigned char *get_hdr_bssid(unsigned char *pframe)
 {
 	unsigned char	*sa;
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
