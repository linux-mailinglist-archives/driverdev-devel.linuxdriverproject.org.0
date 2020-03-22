Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F3D718EC1C
	for <lists+driverdev-devel@lfdr.de>; Sun, 22 Mar 2020 21:22:26 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id BEE2886153;
	Sun, 22 Mar 2020 20:22:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2mdCm69kU2-W; Sun, 22 Mar 2020 20:22:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 381B486149;
	Sun, 22 Mar 2020 20:22:23 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D79261BF308
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 20:22:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id CFB1420385
 for <devel@linuxdriverproject.org>; Sun, 22 Mar 2020 20:22:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nv19nJjIqXd5 for <devel@linuxdriverproject.org>;
 Sun, 22 Mar 2020 20:22:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com
 [209.85.216.67])
 by silver.osuosl.org (Postfix) with ESMTPS id ED7512037A
 for <devel@driverdev.osuosl.org>; Sun, 22 Mar 2020 20:22:19 +0000 (UTC)
Received: by mail-pj1-f67.google.com with SMTP id m15so5051509pje.3
 for <devel@driverdev.osuosl.org>; Sun, 22 Mar 2020 13:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=s5N8HPshUSv1/rbRJhRfTwnB6R7SlJsQhsweyy2/B3o=;
 b=l0H7tsH/Vn+KiDgJxXaPPCb/uVoShPRec3BWMEDB1rDNTTCwFZKaCS+OTHgC2DN6PJ
 ExRL03gZITpol+BiIYVLcUcRngJxX2ovHYVvW3fhvA5Tcr8O6ALLXuQyHQUlpiidgNoP
 jmWCsUwWkAvDNM/znLFtofWZvT8DWtjvhueZJ6n33r3BuqYNGx6hx+r/mMqUOhbNOtD7
 uXevKM003q0/I65/0UEIRixtwBjfRwZ7k/rt15Dnv/eOxF7b4/MsEb0lRAUBS1vOxk3U
 HAgDnRSizkNXgS5T82IubjMhkijLq7NqTwJmE1lpo73Brt8kb88cWUjSmjvPu6NUfTku
 Z1Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=s5N8HPshUSv1/rbRJhRfTwnB6R7SlJsQhsweyy2/B3o=;
 b=eAXLkZ+TMu17muQZBfLjsEHz8nh0tReF5ReNXZNVfqlA6iPl6fsy68Dl663+pWZoPs
 WI/LBVGGpm+n6LMr7L3HgU90Vap/7+AemKtCmMumyY43mweVm+tZ7EUmu9Nt09K3wgGU
 c85ziFwhs256pnwSE45MjoUDljY14vXd6f8nSk9y10wLpUj+fVMevqjgFDV2KSG59Qhc
 Zu3U042XW8Ox0eHZKxUw7KUx4yhtTvToYm6iLYCNdYCBsuGc1mQwbvte0xwQ0UJbvPfv
 O21JkcNloCxv8lpW8qJ3hkhdfsbq3fL12FyZo7vpEEsQqdddQv5L5sCitMGI8jWojl4m
 HVzA==
X-Gm-Message-State: ANhLgQ0+EL6/mPHyXLFcPMl0Tj8tSPtzsl5uAkadXQdDLm19eefhfdtY
 Y+7jIXLH2lBAQGIRxmjL4Yc=
X-Google-Smtp-Source: ADFU+vv2ElqoY0EZxQIvQPOUzpRz1vZd9Pj6WUsg4hB51DO5nYlMaaBIfrawtwA///bT60ef+O/udg==
X-Received: by 2002:a17:90a:9310:: with SMTP id
 p16mr20966563pjo.24.1584908539286; 
 Sun, 22 Mar 2020 13:22:19 -0700 (PDT)
Received: from simran-Inspiron-5558 ([14.139.82.6])
 by smtp.gmail.com with ESMTPSA id z63sm11246027pfb.20.2020.03.22.13.22.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Mar 2020 13:22:18 -0700 (PDT)
Date: Mon, 23 Mar 2020 01:52:14 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Remove comparisons to NULL in conditionals
Message-ID: <20200322202214.GA9750@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
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

Remove comparisons to NULL in conditionals in
drivers/staging/rtl8723bs/core/rtw_ap.c
Issues reported by checkpatch.pl as:
CHECK: Comparison to NULL could be written

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 30 ++++++++++++-------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index a76e81330756..82b977c07205 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -79,7 +79,7 @@ static void update_BCNTIM(struct adapter *padapter)
 			&tim_ielen,
 			pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_
 		);
-		if (p != NULL && tim_ielen > 0) {
+		if (p && tim_ielen > 0) {
 			tim_ielen += 2;
 
 			premainder_ie = p + tim_ielen;
@@ -103,7 +103,7 @@ static void update_BCNTIM(struct adapter *padapter)
 				&tmp_len,
 				(pnetwork_mlmeext->IELength - _BEACON_IE_OFFSET_)
 			);
-			if (p != NULL)
+			if (p)
 				offset += tmp_len + 2;
 
 			/*  get supported rates len */
@@ -112,7 +112,7 @@ static void update_BCNTIM(struct adapter *padapter)
 				_SUPPORTEDRATES_IE_, &tmp_len,
 				(pnetwork_mlmeext->IELength - _BEACON_IE_OFFSET_)
 			);
-			if (p !=  NULL)
+			if (p)
 				offset += tmp_len + 2;
 
 			/* DS Parameter Set IE, len =3 */
@@ -1036,7 +1036,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		&ie_len,
 		(pbss_network->IELength - _BEACON_IE_OFFSET_)
 	);
-	if (p !=  NULL) {
+	if (p) {
 		memcpy(supportRate, p + 2, ie_len);
 		supportRateNum = ie_len;
 	}
@@ -1048,7 +1048,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 		&ie_len,
 		pbss_network->IELength - _BEACON_IE_OFFSET_
 	);
-	if (p !=  NULL) {
+	if (p) {
 		memcpy(supportRate + supportRateNum, p + 2, ie_len);
 		supportRateNum += ie_len;
 	}
@@ -1136,8 +1136,8 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 			break;
 		}
 
-		if ((p == NULL) || (ie_len == 0))
-				break;
+		if (!p || ie_len == 0)
+			break;
 	}
 
 	/* wmm */
@@ -1165,7 +1165,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 				break;
 			}
 
-			if ((p == NULL) || (ie_len == 0))
+			if (!p || ie_len == 0)
 				break;
 		}
 	}
@@ -1296,7 +1296,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
 	psta = rtw_get_stainfo(&padapter->stapriv, pbss_network->MacAddress);
 	if (!psta) {
 		psta = rtw_alloc_stainfo(&padapter->stapriv, pbss_network->MacAddress);
-		if (psta == NULL)
+		if (!psta)
 			return _FAIL;
 	}
 
@@ -1453,7 +1453,7 @@ u8 rtw_ap_set_pairwise_key(struct adapter *padapter, struct sta_info *psta)
 	}
 
 	psetstakey_para = rtw_zmalloc(sizeof(struct set_stakey_parm));
-	if (psetstakey_para == NULL) {
+	if (!psetstakey_para) {
 		kfree(ph2c);
 		res = _FAIL;
 		goto exit;
@@ -1491,12 +1491,12 @@ static int rtw_ap_set_key(
 	/* DBG_871X("%s\n", __func__); */
 
 	pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
-	if (pcmd == NULL) {
+	if (!pcmd) {
 		res = _FAIL;
 		goto exit;
 	}
 	psetkeyparm = rtw_zmalloc(sizeof(struct setkey_parm));
-	if (psetkeyparm == NULL) {
+	if (!psetkeyparm) {
 		kfree(pcmd);
 		res = _FAIL;
 		goto exit;
@@ -1668,11 +1668,11 @@ static void update_bcn_wps_ie(struct adapter *padapter)
 		&wps_ielen
 	);
 
-	if (pwps_ie == NULL || wps_ielen == 0)
+	if (!pwps_ie || wps_ielen == 0)
 		return;
 
 	pwps_ie_src = pmlmepriv->wps_beacon_ie;
-	if (pwps_ie_src == NULL)
+	if (!pwps_ie_src)
 		return;
 
 	wps_offset = (uint)(pwps_ie - ie);
@@ -2322,7 +2322,7 @@ void rtw_ap_restore_network(struct adapter *padapter)
 	for (i = 0; i < chk_alive_num; i++) {
 		psta = rtw_get_stainfo_by_offset(pstapriv, chk_alive_list[i]);
 
-		if (psta == NULL) {
+		if (!psta) {
 			DBG_871X(FUNC_ADPT_FMT" sta_info is null\n", FUNC_ADPT_ARG(padapter));
 		} else if (psta->state & _FW_LINKED) {
 			rtw_sta_media_status_rpt(padapter, psta, 1);
-- 
2.17.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
