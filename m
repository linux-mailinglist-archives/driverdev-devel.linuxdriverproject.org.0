Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C7EE2D21BE
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 05:08:27 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B74AB2E4FC;
	Tue,  8 Dec 2020 04:08:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rmpUAJlK7b5S; Tue,  8 Dec 2020 04:08:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 0C9092E512;
	Tue,  8 Dec 2020 04:08:00 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 122281BF356
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 0F32787B44
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NA-1RP_eyQiw for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 04:07:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f67.google.com (mail-io1-f67.google.com
 [209.85.166.67])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 16D3087A89
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 04:07:52 +0000 (UTC)
Received: by mail-io1-f67.google.com with SMTP id p187so15654802iod.4
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 20:07:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JOKh3pIHcLV6hwl3hlWvC1AlmNEfQsVeH0itWK9SLyo=;
 b=P77/YpIBjnMJhnXe+tUjkJioKMu/B+nUL+sICUo7K/dReW/izbDrd1WnY34jQUB6LE
 j9GF6RHxlVXR9vdfHtCkunz+EKcGkjneL17TdYp3HHlynHpqqQuQEabsxwPktVRZ/eVk
 Zu8G2v29UZ6Y/KPKgrSrCR2aCZmwUweH7le9RQfmSLStKrx+zR2/lwx/lrmlSKYw5m48
 WenafGOrlKO/koSE0kdFiaSukw/FaTmatsjvowBIyuMlZc4oCtgsBBbtZQspEBlcQwWi
 facn2gjvYayhSKwi9eWD0/pobCIrnO5rnALUjwlxD0YXkTvLy94QKvKb6aSN1Y3Abctu
 DVWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JOKh3pIHcLV6hwl3hlWvC1AlmNEfQsVeH0itWK9SLyo=;
 b=ZkEK6ZGONgcZos5h5dXcvnrsUYb75ssuMug24eRaqdNFsVLSo/il6qPZfH41Svg0y8
 XKcpfk0DRCoijLDR0zSSyjcK1HsAmWrmWq2MkY5xxv9F0O+1GoJWHUUf+xV3lxjqTTv3
 RIFD89baKthe3BiHYFbi6fYvJ81Hj6K1Jpbpb66th7C8Gq9YmRAhDsyXefP9w4qHWTBZ
 q1DToHKv8qBlvhmh10Wi5959auVPklM7Sf3L2n+whrapfJzYg0oKqv1vmNz5kccCuisl
 oHqUtJwPrabuFhdMNPM59HEJEIiaRTHWHKpsEdTmXskJQ5VP1RlQeojpp0r8582Pyl7l
 lNuA==
X-Gm-Message-State: AOAM5304M+FRsikJQY6YxK+oQpS86fhXxoL9QGb1w7PE3XoaLoKCNKeq
 mkAK43uVQtGxWFi9KJSi9n4=
X-Google-Smtp-Source: ABdhPJw/qy4MC90H5v9Y7veDNjf1LTCTV5jZOBdIFvzDmSSzHsFO2ZpvcGDpDu98Ij4Qe+MZvF5N0g==
X-Received: by 2002:a05:6602:2c48:: with SMTP id
 x8mr22739836iov.24.1607400471511; 
 Mon, 07 Dec 2020 20:07:51 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id g2sm8630390ilh.41.2020.12.07.20.07.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 20:07:50 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 12/21] staging: rtl8723bs: replace _CHLGETXT_IE_
Date: Mon,  7 Dec 2020 22:07:24 -0600
Message-Id: <20201208040733.379197-13-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201208040733.379197-1-ross.schm.dev@gmail.com>
References: <20201208040733.379197-1-ross.schm.dev@gmail.com>
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

Replace unique _CHLGETXT_IE_ macro with kernel provided WLAN_EID_CHALLENGE
from linux/ieee80211.h.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 8 ++++----
 drivers/staging/rtl8723bs/include/wifi.h      | 1 -
 2 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 319a99833a49..93380493e8dc 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
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
 
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 6df50468200e..2f13bbe38f74 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -387,7 +387,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 
 #define _FIXED_IE_LENGTH_			_BEACON_IE_OFFSET_
 
-#define _CHLGETXT_IE_			16
 #define _SUPPORTED_CH_IE_		36
 #define _CH_SWTICH_ANNOUNCE_	37	/* Secondary Channel Offset */
 #define _ERPINFO_IE_			42
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
