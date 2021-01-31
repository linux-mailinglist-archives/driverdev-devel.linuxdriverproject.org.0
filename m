Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C64309B12
	for <lists+driverdev-devel@lfdr.de>; Sun, 31 Jan 2021 09:10:32 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id B9845870F4;
	Sun, 31 Jan 2021 08:10:29 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tEWbjQJ2ZFXJ; Sun, 31 Jan 2021 08:10:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2DFCF870E1;
	Sun, 31 Jan 2021 08:10:29 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 922C51BF352
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 08:10:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8D7DB85BEE
 for <devel@linuxdriverproject.org>; Sun, 31 Jan 2021 08:10:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nfVoXdEUJlly for <devel@linuxdriverproject.org>;
 Sun, 31 Jan 2021 08:10:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
 [209.85.208.172])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id E15EE85B3D
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 08:10:24 +0000 (UTC)
Received: by mail-lj1-f172.google.com with SMTP id e18so15602582lja.12
 for <devel@driverdev.osuosl.org>; Sun, 31 Jan 2021 00:10:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AO6BZK6miJfhZmLPuAfcKPVEvEwX2mGqDwqTzysbAv8=;
 b=MEDhcWr035CmEQQWbZ7IwU1QLFUYrLV4m2BVTqGiWm3ueSKGZH+uGlCtjVTUmIejsc
 YfzaNnRZhR4n2hSAEKt5BbIyC1pN/p+airhrnAD7+TkdjXRhcnJhU1KhaY09PC92gFzp
 +lZUKv1xGX6vvkktpVwPXBcQpXYyhZ6ZdV/DSj0qxoESnnjoFh3t7z3qn7bMFFdDoaAb
 UyTHZA0lW/UD4n5pehK7QkLT7UczemACbdYZiA0hl9zoQDpwNprfCdXZ8ClopRLFxCqw
 DMrNeBUQo3KeKpxlDw8jqYIC41d7Dn6QCRyK1kDRQ2l75o/ieuKFg2B+3wAZPhIVJQUT
 H6dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=AO6BZK6miJfhZmLPuAfcKPVEvEwX2mGqDwqTzysbAv8=;
 b=dq76M6sPYPnI9PwNc+IGr9aoBCK/JdK1XhKVQ416nnDUr47Ezhk9TdTuT5RK/jfFRu
 Zuvrdn9irZFxbv8vhwLFriSXzWiQiMauArUzAXcOTHhf3XbcxuYz42ZyV6xm4dBYMtMS
 2uzZSuJM8kg3h9vXoC/aRR9i6nSgC4Lah4W6Be71Zd7ZtcD780P5SHHW+qeBSNGzIB2e
 b01+mfW5bKGtl8lMPVKDBJsqLXr2dNJiYjPcMfr48X0iA6nWbgjCw0aCtlZ3xIO6izz/
 fid9inw3nr5g0nUFrlC4cmpPyk/n/yVnS5iNyYsDvh5BrI4ybCi6Mv2Zq8HFlE1gCGVc
 TGWA==
X-Gm-Message-State: AOAM530kcvQ+1sbpkcDtYxPd2mPjM8fDdWtBv3eWhuMrUPzjpB/DclZX
 lxsG+YyjlCBNbLQngHsZOko=
X-Google-Smtp-Source: ABdhPJzl71uBVAGuIDMRE/4CELEWSQx22xcVWtZwLZYLKn8kTe1BtuJMKo832Byn9N2b5/htMuy8+A==
X-Received: by 2002:a2e:8607:: with SMTP id a7mr7011377lji.475.1612080623069; 
 Sun, 31 Jan 2021 00:10:23 -0800 (PST)
Received: from alpha (10.177.smarthome.spb.ru. [109.71.177.10])
 by smtp.gmail.com with ESMTPSA id i2sm2608049lfl.152.2021.01.31.00.10.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 31 Jan 2021 00:10:22 -0800 (PST)
Received: (nullmailer pid 25254 invoked by uid 1000);
 Sun, 31 Jan 2021 08:07:33 -0000
From: Ivan Safonov <insafonov@gmail.com>
To: Larry Finger <Larry.Finger@lwfinger.net>
Subject: [PATCH] staging:r8188eu: replace enum WIFI_STATUS_CODE with native
 kernel definitions
Date: Sun, 31 Jan 2021 11:06:19 +0300
Message-Id: <20210131080618.25184-1-insafonov@gmail.com>
X-Mailer: git-send-email 2.26.2
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
Cc: devel@driverdev.osuosl.org, Ivan Safonov <insafonov@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Andre Pinto <andrealmeidap1996@gmail.com>, linux-kernel@vger.kernel.org,
 Peilin Ye <yepeilin.cs@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Driver and kernel definitions are equal.
Avoid code duplication, improve readability.

Signed-off-by: Ivan Safonov <insafonov@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 44 +++++++++----------
 drivers/staging/rtl8188eu/include/wifi.h      | 14 ------
 2 files changed, 22 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 8794907a39f4..ebd9b96a8211 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -779,7 +779,7 @@ static void issue_auth(struct adapter *padapter, struct sta_info *psta,
 		/*  setting auth algo number */
 		val16 = (u16)psta->authalg;
 
-		if (status != _STATS_SUCCESSFUL_)
+		if (status != WLAN_STATUS_SUCCESS)
 			val16 = 0;
 
 		if (val16) {
@@ -2675,13 +2675,13 @@ static unsigned int OnAuth(struct adapter *padapter,
 		DBG_88E("auth rejected due to bad alg [alg=%d, auth_mib=%d] %02X%02X%02X%02X%02X%02X\n",
 			algorithm, auth_mode, sa[0], sa[1], sa[2], sa[3], sa[4], sa[5]);
 
-		status = _STATS_NO_SUPP_ALG_;
+		status = WLAN_STATUS_NOT_SUPPORTED_AUTH_ALG;
 
 		goto auth_fail;
 	}
 
 	if (!rtw_access_ctrl(padapter, sa)) {
-		status = _STATS_UNABLE_HANDLE_STA_;
+		status = WLAN_STATUS_AP_UNABLE_TO_HANDLE_NEW_STA;
 		goto auth_fail;
 	}
 
@@ -2692,7 +2692,7 @@ static unsigned int OnAuth(struct adapter *padapter,
 		pstat = rtw_alloc_stainfo(pstapriv, sa);
 		if (!pstat) {
 			DBG_88E(" Exceed the upper limit of supported clients...\n");
-			status = _STATS_UNABLE_HANDLE_STA_;
+			status = WLAN_STATUS_AP_UNABLE_TO_HANDLE_NEW_STA;
 			goto auth_fail;
 		}
 
@@ -2724,7 +2724,7 @@ static unsigned int OnAuth(struct adapter *padapter,
 	if ((pstat->auth_seq + 1) != seq) {
 		DBG_88E("(1)auth rejected because out of seq [rx_seq=%d, exp_seq=%d]!\n",
 			seq, pstat->auth_seq + 1);
-		status = _STATS_OUT_OF_AUTH_SEQ_;
+		status = WLAN_STATUS_UNKNOWN_AUTH_TRANSACTION;
 		goto auth_fail;
 	}
 
@@ -2737,7 +2737,7 @@ static unsigned int OnAuth(struct adapter *padapter,
 		} else {
 			DBG_88E("(2)auth rejected because out of seq [rx_seq=%d, exp_seq=%d]!\n",
 				seq, pstat->auth_seq + 1);
-			status = _STATS_OUT_OF_AUTH_SEQ_;
+			status = WLAN_STATUS_UNKNOWN_AUTH_TRANSACTION;
 			goto auth_fail;
 		}
 	} else { /*  shared system or auto authentication */
@@ -2757,7 +2757,7 @@ static unsigned int OnAuth(struct adapter *padapter,
 
 			if (!p || ie_len <= 0) {
 				DBG_88E("auth rejected because challenge failure!(1)\n");
-				status = _STATS_CHALLENGE_FAIL_;
+				status = WLAN_STATUS_CHALLENGE_FAIL;
 				goto auth_fail;
 			}
 
@@ -2768,13 +2768,13 @@ static unsigned int OnAuth(struct adapter *padapter,
 				pstat->expire_to =  pstapriv->assoc_to;
 			} else {
 				DBG_88E("auth rejected because challenge failure!\n");
-				status = _STATS_CHALLENGE_FAIL_;
+				status = WLAN_STATUS_CHALLENGE_FAIL;
 				goto auth_fail;
 			}
 		} else {
 			DBG_88E("(3)auth rejected because out of seq [rx_seq=%d, exp_seq=%d]!\n",
 				seq, pstat->auth_seq + 1);
-			status = _STATS_OUT_OF_AUTH_SEQ_;
+			status = WLAN_STATUS_UNKNOWN_AUTH_TRANSACTION;
 			goto auth_fail;
 		}
 	}
@@ -2782,7 +2782,7 @@ static unsigned int OnAuth(struct adapter *padapter,
 	/*  Now, we are going to issue_auth... */
 	pstat->auth_seq = seq + 1;
 
-	issue_auth(padapter, pstat, (unsigned short)(_STATS_SUCCESSFUL_));
+	issue_auth(padapter, pstat, (unsigned short)(WLAN_STATUS_SUCCESS));
 
 	if (pstat->state & WIFI_FW_AUTH_SUCCESS)
 		pstat->auth_seq = 0;
@@ -2892,7 +2892,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 	int i, wpa_ie_len, left;
 	unsigned char supportRate[16];
 	int supportRateNum;
-	unsigned short status = _STATS_SUCCESSFUL_;
+	unsigned short status = WLAN_STATUS_SUCCESS;
 	unsigned short frame_type, ie_offset = 0;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
@@ -2953,7 +2953,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 	    !elems.ssid) {
 		DBG_88E("STA %pM sent invalid association request\n",
 			pstat->hwaddr);
-		status = _STATS_FAILURE_;
+		status = WLAN_STATUS_UNSPECIFIED_FAILURE;
 		goto OnAssocReqFail;
 	}
 
@@ -2964,18 +2964,18 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 
 	if (!p || ie_len == 0) {
 		/*  broadcast ssid, however it is not allowed in assocreq */
-		status = _STATS_FAILURE_;
+		status = WLAN_STATUS_UNSPECIFIED_FAILURE;
 		goto OnAssocReqFail;
 	} else {
 		/*  check if ssid match */
 		if (memcmp((void *)(p + 2), cur->ssid.ssid, cur->ssid.ssid_length))
-			status = _STATS_FAILURE_;
+			status = WLAN_STATUS_UNSPECIFIED_FAILURE;
 
 		if (ie_len != cur->ssid.ssid_length)
-			status = _STATS_FAILURE_;
+			status = WLAN_STATUS_UNSPECIFIED_FAILURE;
 	}
 
-	if (status != _STATS_SUCCESSFUL_)
+	if (status != WLAN_STATUS_SUCCESS)
 		goto OnAssocReqFail;
 
 	/*  check if the supported rate is ok */
@@ -2986,7 +2986,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 		/* memcpy(supportRate, AP_BSSRATE, AP_BSSRATE_LEN); */
 		/* supportRateNum = AP_BSSRATE_LEN; */
 
-		status = _STATS_FAILURE_;
+		status = WLAN_STATUS_UNSPECIFIED_FAILURE;
 		goto OnAssocReqFail;
 	} else {
 		memcpy(supportRate, p + 2, ie_len);
@@ -3066,7 +3066,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 		wpa_ie_len = 0;
 	}
 
-	if (status != _STATS_SUCCESSFUL_)
+	if (status != WLAN_STATUS_SUCCESS)
 		goto OnAssocReqFail;
 
 	pstat->flags &= ~(WLAN_STA_WPS | WLAN_STA_MAYBE_WPS);
@@ -3097,7 +3097,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 				if (!selected_registrar) {
 					DBG_88E("selected_registrar is false , or AP is not ready to do WPS\n");
 
-					status = _STATS_UNABLE_HANDLE_STA_;
+					status = WLAN_STATUS_AP_UNABLE_TO_HANDLE_NEW_STA;
 
 					goto OnAssocReqFail;
 				}
@@ -3198,7 +3198,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 		pstat->flags &= ~WLAN_STA_HT;
 	}
 	if ((!pmlmepriv->htpriv.ht_option) && (pstat->flags & WLAN_STA_HT)) {
-		status = _STATS_FAILURE_;
+		status = WLAN_STATUS_UNSPECIFIED_FAILURE;
 		goto OnAssocReqFail;
 	}
 
@@ -3225,7 +3225,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 	else
 		pstat->flags &= ~WLAN_STA_SHORT_PREAMBLE;
 
-	if (status != _STATS_SUCCESSFUL_)
+	if (status != WLAN_STATUS_SUCCESS)
 		goto OnAssocReqFail;
 
 	/* TODO: identify_proprietary_vendor_ie(); */
@@ -3276,7 +3276,7 @@ static unsigned int OnAssocReq(struct adapter *padapter,
 	spin_unlock_bh(&pstapriv->asoc_list_lock);
 
 	/*  now the station is qualified to join our BSS... */
-	if ((pstat->state & WIFI_FW_ASSOC_SUCCESS) && (status == _STATS_SUCCESSFUL_)) {
+	if ((pstat->state & WIFI_FW_ASSOC_SUCCESS) && (status == WLAN_STATUS_SUCCESS)) {
 		/* 1 bss_cap_update & sta_info_update */
 		bss_cap_update_on_sta_join(padapter, pstat);
 		sta_info_update(padapter, pstat);
diff --git a/drivers/staging/rtl8188eu/include/wifi.h b/drivers/staging/rtl8188eu/include/wifi.h
index 1895f81e09b5..d0380f7f1bab 100644
--- a/drivers/staging/rtl8188eu/include/wifi.h
+++ b/drivers/staging/rtl8188eu/include/wifi.h
@@ -74,20 +74,6 @@ enum WIFI_FRAME_SUBTYPE {
 	WIFI_QOS_DATA_NULL	= (BIT(6) | WIFI_QOS_DATA_TYPE),
 };
 
-enum WIFI_STATUS_CODE {
-	_STATS_SUCCESSFUL_		= 0,
-	_STATS_FAILURE_			= 1,
-	_STATS_CAP_FAIL_		= 10,
-	_STATS_NO_ASOC_			= 11,
-	_STATS_OTHER_			= 12,
-	_STATS_NO_SUPP_ALG_		= 13,
-	_STATS_OUT_OF_AUTH_SEQ_		= 14,
-	_STATS_CHALLENGE_FAIL_		= 15,
-	_STATS_AUTH_TIMEOUT_		= 16,
-	_STATS_UNABLE_HANDLE_STA_	= 17,
-	_STATS_RATE_FAIL_		= 18,
-};
-
 enum WIFI_REG_DOMAIN {
 	DOMAIN_FCC	= 1,
 	DOMAIN_IC	= 2,
-- 
2.26.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
