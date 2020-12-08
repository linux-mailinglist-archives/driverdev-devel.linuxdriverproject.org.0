Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1895A2D21B5
	for <lists+driverdev-devel@lfdr.de>; Tue,  8 Dec 2020 05:08:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id C74E487B4A;
	Tue,  8 Dec 2020 04:08:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IoILrsfI_PCs; Tue,  8 Dec 2020 04:07:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 16B0087B44;
	Tue,  8 Dec 2020 04:07:59 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E21571BF356
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id DF2F487B44
 for <devel@linuxdriverproject.org>; Tue,  8 Dec 2020 04:07:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k8iYbgLmQJ2a for <devel@linuxdriverproject.org>;
 Tue,  8 Dec 2020 04:07:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
 [209.85.166.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 3585E87B3E
 for <devel@driverdev.osuosl.org>; Tue,  8 Dec 2020 04:07:53 +0000 (UTC)
Received: by mail-io1-f68.google.com with SMTP id q137so15636953iod.9
 for <devel@driverdev.osuosl.org>; Mon, 07 Dec 2020 20:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=oLlSjiOdVZpwvu7OfmvcVt/9RsPam8KuE+uFIZj6dmE=;
 b=BES1jrsJgvnKN0K9QiAKkK+AbTXvbYhLlS1aWjS2QhvMpTAvwaQPOf6PtokTBWr6ub
 9nZWGz/jGvr4B+o7dsmlR3E5vSXkkgKkxcYTR+kK9JzCqj92YgquUbvugqdgvd1EAfNh
 FS+tDscpiHlHxGmjZU2eYA53AhT2+aMp25N8moNfN8yO2Zj3ve+Cyvfyv8/BxijZkT6w
 pzVSEnN2MypPJVlEmLGrctUdqFZr+Yuc2KkZQAIECAX/ntxb88T9uQ+D+HCbiFAzk/iN
 P8yOz1bqW/NuQNoD1tIdYJOXKd40imFYvPdB2v+bWwkwecGhBLLIw7vEDgVH9TGAzxDb
 FmkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=oLlSjiOdVZpwvu7OfmvcVt/9RsPam8KuE+uFIZj6dmE=;
 b=jH5h7cu3KNcvgWdsW7qnLN+CksisGBAOnll/PYlWozgAH8b9cPPNz2Yu6ijGudN/+/
 h31xHjLPIeTLPLYbdRWtGSTgTbnJXmTFz4irpAd54hY8u8vc7f8cY1fEYPsxPOVhNb/C
 7KMYVuAdP6DGFZide6PHz7h6i+qhhvRANTyAZsS7kwDoyBTg2opn+WNVZWFH7a9I0fVg
 xxIdDIdVUs2TWfD5itZiYuj83E0ZRspCP0tGevlkhBYtGETACn7pUrrS02pZhuIp7g/f
 iBD/cKGkHnpjTb0WdnTa1Sw+fQENriachMrK87wGvE0Hy8ivwaV30IRlikD0LU2gIRtE
 peSQ==
X-Gm-Message-State: AOAM530nHIonYOItCD56SjywiT+mhDg01VfiQAluvP4JtCsSny+JL3aO
 IJmSSkt8FC6LzIhFpTbh9mM=
X-Google-Smtp-Source: ABdhPJwcdqyAIIiJNWhJl38Kzb0c94VTOPbPYZQVfOYRcz3gweh2JnmBAjtoWkoFCKm45X8ZIlT8Ag==
X-Received: by 2002:a02:ca54:: with SMTP id i20mr19914578jal.111.1607400472589; 
 Mon, 07 Dec 2020 20:07:52 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id g2sm8630390ilh.41.2020.12.07.20.07.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Dec 2020 20:07:52 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 13/21] staging: rtl8723bs: replace _ERPINFO_IE_
Date: Mon,  7 Dec 2020 22:07:25 -0600
Message-Id: <20201208040733.379197-14-ross.schm.dev@gmail.com>
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

Replace unique _ERPINFO_IE_ macro with kernel provided WLAN_EID_ERP_INFO
from linux/ieee80211.h.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c        | 12 ++++++------
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c  |  6 +++---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c |  2 +-
 drivers/staging/rtl8723bs/core/rtw_xmit.c      |  2 +-
 drivers/staging/rtl8723bs/include/wifi.h       |  1 -
 5 files changed, 11 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 139350288d1b..5e93a85cb6ce 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -1059,7 +1059,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	/* parsing ERP_IE */
 	p = rtw_get_ie(
 		ie + _BEACON_IE_OFFSET_,
-		_ERPINFO_IE_,
+		WLAN_EID_ERP_INFO,
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
@@ -1768,7 +1768,7 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
 
 		break;
 
-	case _ERPINFO_IE_:
+	case WLAN_EID_ERP_INFO:
 
 		update_bcn_erpinfo_ie(padapter);
 
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
@@ -2086,7 +2086,7 @@ u8 bss_cap_update_on_sta_leave(struct adapter *padapter, struct sta_info *psta)
 		pmlmepriv->num_sta_non_erp--;
 		if (pmlmepriv->num_sta_non_erp == 0) {
 			beacon_updated = true;
-			update_beacon(padapter, _ERPINFO_IE_, NULL, true);
+			update_beacon(padapter, WLAN_EID_ERP_INFO, NULL, true);
 		}
 	}
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 93380493e8dc..5d56fbf0c1fe 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -1705,7 +1705,7 @@ unsigned int OnAssocRsp(struct adapter *padapter, union recv_frame *precv_frame)
 			HT_info_handler(padapter, pIE);
 			break;
 
-		case _ERPINFO_IE_:
+		case WLAN_EID_ERP_INFO:
 			ERP_IE_handler(padapter, pIE);
 			break;
 
@@ -2555,7 +2555,7 @@ void issue_beacon(struct adapter *padapter, int timeout_ms)
 		pframe = rtw_set_ie(pframe, WLAN_EID_IBSS_PARAMS, 2, (unsigned char *)(&ATIMWindow), &pattrib->pktlen);
 
 		/* ERP IE */
-		pframe = rtw_set_ie(pframe, _ERPINFO_IE_, 1, &erpinfo, &pattrib->pktlen);
+		pframe = rtw_set_ie(pframe, WLAN_EID_ERP_INFO, 1, &erpinfo, &pattrib->pktlen);
 	}
 
 
@@ -2758,7 +2758,7 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
 			pframe = rtw_set_ie(pframe, WLAN_EID_IBSS_PARAMS, 2, (unsigned char *)(&ATIMWindow), &pattrib->pktlen);
 
 			/* ERP IE */
-			pframe = rtw_set_ie(pframe, _ERPINFO_IE_, 1, &erpinfo, &pattrib->pktlen);
+			pframe = rtw_set_ie(pframe, WLAN_EID_ERP_INFO, 1, &erpinfo, &pattrib->pktlen);
 		}
 
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index ff5125b33749..e8e91e24c04d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -1479,7 +1479,7 @@ void update_beacon_info(struct adapter *padapter, u8 *pframe, uint pkt_len, stru
 			bwmode_update_check(padapter, pIE);
 			break;
 
-		case _ERPINFO_IE_:
+		case WLAN_EID_ERP_INFO:
 			ERP_IE_handler(padapter, pIE);
 			VCS_update(padapter, psta);
 			break;
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 1d62ce501e80..187a2aa77a55 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -1447,7 +1447,7 @@ void rtw_update_protection(struct adapter *padapter, u8 *ie, uint ie_len)
 
 	case AUTO_VCS:
 	default:
-		perp = rtw_get_ie(ie, _ERPINFO_IE_, &erp_len, ie_len);
+		perp = rtw_get_ie(ie, WLAN_EID_ERP_INFO, &erp_len, ie_len);
 		if (!perp) {
 			pxmitpriv->vcs = NONE_VCS;
 		} else {
diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 2f13bbe38f74..ff8865d1d846 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -389,7 +389,6 @@ static inline int IsFrameTypeCtrl(unsigned char *pframe)
 
 #define _SUPPORTED_CH_IE_		36
 #define _CH_SWTICH_ANNOUNCE_	37	/* Secondary Channel Offset */
-#define _ERPINFO_IE_			42
 #define _EXT_SUPPORTEDRATES_IE_	50
 
 #define _FTIE_						55
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
