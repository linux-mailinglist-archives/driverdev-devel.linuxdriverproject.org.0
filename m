Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1737B1F986
	for <lists+driverdev-devel@lfdr.de>; Wed, 15 May 2019 19:45:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 6563E30E80;
	Wed, 15 May 2019 17:45:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ayo2U59dYrAz; Wed, 15 May 2019 17:45:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 4583230D6A;
	Wed, 15 May 2019 17:45:46 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A8FEB1BF3A3
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 17:45:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A620886352
 for <devel@linuxdriverproject.org>; Wed, 15 May 2019 17:45:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Sb3UreBUHeGZ for <devel@linuxdriverproject.org>;
 Wed, 15 May 2019 17:45:43 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pf1-f194.google.com (mail-pf1-f194.google.com
 [209.85.210.194])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id BFE79862FB
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 17:45:43 +0000 (UTC)
Received: by mail-pf1-f194.google.com with SMTP id s11so320004pfm.12
 for <devel@driverdev.osuosl.org>; Wed, 15 May 2019 10:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=7KG4gphMSYoVpwzM1ZvQMXqTiTL0xVi44Ka8WYWEN9k=;
 b=rXMOIof5bJoNGedyoGRMhQK3gtYhVrqcBF9HPv53m0ylAxn3tUv71F+cKeAN+9WdsV
 bdp5sJuCOwLpyuvz++9fJFKJYPD+SoPH9kEZ8QydNN6WSQnFkc+XzvNyeYPUhXz/WFV7
 1EANcHBtSRLQjZEf9mf0kEn1x7IIEy9Ukyra6DpUpGTye+7hNTWJskKBWjB3Zcc51NXr
 HbH8DP7MrYthvNSbmchyvJDGnFyMibNo11h1t0FTmuea5MGQGiqWSz3yXo+8gGeZ/vDf
 CNHIK2xMcOuQ9vxGNrRXXKN9bV+tw87D3BXHo+B5XSrc1Wg0sfRczW6YVpvbPS+Yu39f
 8z/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=7KG4gphMSYoVpwzM1ZvQMXqTiTL0xVi44Ka8WYWEN9k=;
 b=BR5XjIToZmM5D1QIPvUL4+rd6iiVNC3plJvweTwi30Uaku8AL+CJOdudZrPHlkeTel
 JoK40tZxs44ZXxp8J38k95RiKtKSFM0UXR+tW6VKBv/cQKoEJVAisLNvWtg/xJ6uZuYQ
 oyOVoQgverDm3PLVaMhnJOw3/Jo51ZkI7QQicUlwZxucCKyjcklXcjFEKYc01WxglafS
 mwvBm4WI1/G8nX1sPJaHPEGEVrLtGQQEgrL4nc49SrAtRpJz6Q00H7ZYexIyYMdVBFOB
 dfRzcTayRqaCyTMmNxj3OqmSPuzz6T4cj0GkyN702p9Jy8WZKyqNpdnk5sBSpugOiFac
 0u9g==
X-Gm-Message-State: APjAAAWbeBumlNdHmDoTIJ45LmWcmTJG7t+jUZ9KZOg1AGeqdjVP7OJH
 cEenhFFWYJgMsEZhgB3rr0o=
X-Google-Smtp-Source: APXvYqyZeqGHhO5cXnk+znQ4rksWE3oO0D1M/EflXlGIPxjNHyiGwAMMvgyXLUYHZXYEDuGPaI4cWA==
X-Received: by 2002:a65:5647:: with SMTP id m7mr44591222pgs.348.1557942343300; 
 Wed, 15 May 2019 10:45:43 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.92.73])
 by smtp.gmail.com with ESMTPSA id t26sm3239577pgk.62.2019.05.15.10.45.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 10:45:41 -0700 (PDT)
Date: Wed, 15 May 2019 23:15:36 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: core: rtw_recv: fix warning Comparison
 to NULL
Message-ID: <20190515174536.GA4965@hari-Inspiron-1545>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)
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

fix below warning reported by checkpatch

CHECK: Comparison to NULL could be written
"!precvpriv->pallocated_frame_buf"
CHECK: Comparison to NULL could be written "padapter"

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_recv.c | 48 +++++++++++++++----------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index b543e97..b01dae5 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -50,7 +50,7 @@ sint _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
 
 	precvpriv->pallocated_frame_buf = vzalloc(NR_RECVFRAME * sizeof(union recv_frame) + RXFRAME_ALIGN_SZ);
 
-	if (precvpriv->pallocated_frame_buf == NULL) {
+	if (!precvpriv->pallocated_frame_buf) {
 		res = _FAIL;
 		goto exit;
 	}
@@ -122,7 +122,7 @@ union recv_frame *_rtw_alloc_recvframe(struct __queue *pfree_recv_queue)
 
 		list_del_init(&precvframe->u.hdr.list);
 		padapter = precvframe->u.hdr.adapter;
-		if (padapter != NULL) {
+		if (padapter) {
 			precvpriv = &padapter->recvpriv;
 			if (pfree_recv_queue == &precvpriv->free_recv_queue)
 				precvpriv->free_recvframe_cnt--;
@@ -160,7 +160,7 @@ int rtw_free_recvframe(union recv_frame *precvframe, struct __queue *pfree_recv_
 
 	list_add_tail(&(precvframe->u.hdr.list), get_list_head(pfree_recv_queue));
 
-	if (padapter != NULL) {
+	if (padapter) {
 		if (pfree_recv_queue == &precvpriv->free_recv_queue)
 				precvpriv->free_recvframe_cnt++;
 	}
@@ -183,7 +183,7 @@ sint _rtw_enqueue_recvframe(union recv_frame *precvframe, struct __queue *queue)
 
 	list_add_tail(&(precvframe->u.hdr.list), get_list_head(queue));
 
-	if (padapter != NULL)
+	if (padapter)
 		if (queue == &precvpriv->free_recv_queue)
 			precvpriv->free_recvframe_cnt++;
 
@@ -334,7 +334,7 @@ sint recvframe_chkmic(struct adapter *adapter,  union recv_frame *precvframe)
 			prxattrib->ra[0], prxattrib->ra[1], prxattrib->ra[2], prxattrib->ra[3], prxattrib->ra[4], prxattrib->ra[5]));
 
 		/* calculate mic code */
-		if (stainfo != NULL) {
+		if (stainfo) {
 			if (IS_MCAST(prxattrib->ra)) {
 				/* mickey =&psecuritypriv->dot118021XGrprxmickey.skey[0]; */
 				/* iv = precvframe->u.hdr.rx_data+prxattrib->hdrlen; */
@@ -570,7 +570,7 @@ union recv_frame *portctrl(struct adapter *adapter, union recv_frame *precv_fram
 	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("########portctrl:adapter->securitypriv.dot11AuthAlgrthm =%d\n", adapter->securitypriv.dot11AuthAlgrthm));
 
 	if (auth_alg == 2) {
-		if ((psta != NULL) && (psta->ieee8021x_blocked)) {
+		if ((psta) && (psta->ieee8021x_blocked)) {
 			__be16 be_tmp;
 
 			/* blocked */
@@ -859,7 +859,7 @@ sint sta2sta_data_frame(
 	else
 		*psta = rtw_get_stainfo(pstapriv, sta_addr); /*  get ap_info */
 
-	if (*psta == NULL) {
+	if (!*psta) {
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("can't get psta under sta2sta_data_frame ; drop pkt\n"));
 		ret = _FAIL;
 		goto exit;
@@ -942,7 +942,7 @@ sint ap2sta_data_frame(
 		else
 			*psta = rtw_get_stainfo(pstapriv, pattrib->bssid); /*  get ap_info */
 
-		if (*psta == NULL) {
+		if (!*psta) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("ap2sta: can't get psta under STATION_MODE ; drop pkt\n"));
 			#ifdef DBG_RX_DROP_FRAME
 			DBG_871X("DBG_RX_DROP_FRAME %s can't get psta under STATION_MODE ; drop pkt\n", __func__);
@@ -974,7 +974,7 @@ sint ap2sta_data_frame(
 
 
 		*psta = rtw_get_stainfo(pstapriv, pattrib->bssid); /*  get sta_info */
-		if (*psta == NULL) {
+		if (!*psta) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("can't get psta under MP_MODE ; drop pkt\n"));
 			#ifdef DBG_RX_DROP_FRAME
 			DBG_871X("DBG_RX_DROP_FRAME %s can't get psta under WIFI_MP_STATE ; drop pkt\n", __func__);
@@ -991,7 +991,7 @@ sint ap2sta_data_frame(
 	} else {
 		if (!memcmp(myhwaddr, pattrib->dst, ETH_ALEN) && (!bmcast)) {
 			*psta = rtw_get_stainfo(pstapriv, pattrib->bssid); /*  get sta_info */
-			if (*psta == NULL) {
+			if (!*psta) {
 
 				/* for AP multicast issue , modify by yiwei */
 				static unsigned long send_issue_deauth_time;
@@ -1042,7 +1042,7 @@ sint sta2ap_data_frame(
 		}
 
 		*psta = rtw_get_stainfo(pstapriv, pattrib->src);
-		if (*psta == NULL) {
+		if (!*psta == NULL) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("can't get psta under AP_MODE; drop pkt\n"));
 			DBG_871X("issue_deauth to sta =" MAC_FMT " for the reason(7)\n", MAC_ARG(pattrib->src));
 
@@ -1099,7 +1099,7 @@ sint validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_
 		return _FAIL;
 
 	psta = rtw_get_stainfo(pstapriv, GetAddr2Ptr(pframe));
-	if (psta == NULL)
+	if (!psta)
 		return _FAIL;
 
 	/* for rx pkt statistics */
@@ -1226,7 +1226,7 @@ sint validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *precv_
 	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("+validate_recv_mgnt_frame\n"));
 
 	precv_frame = recvframe_chk_defrag(padapter, precv_frame);
-	if (precv_frame == NULL) {
+	if (!precv_frame) {
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_notice_, ("%s: fragment packet\n", __func__));
 		return _SUCCESS;
 	}
@@ -1274,7 +1274,7 @@ sint validate_recv_data_frame(struct adapter *adapter, union recv_frame *precv_f
 	psa = get_sa(ptr);
 	pbssid = get_hdr_bssid(ptr);
 
-	if (pbssid == NULL) {
+	if (!pbssid) {
 		#ifdef DBG_RX_DROP_FRAME
 		DBG_871X("DBG_RX_DROP_FRAME %s pbssid == NULL\n", __func__);
 		#endif
@@ -1329,7 +1329,7 @@ sint validate_recv_data_frame(struct adapter *adapter, union recv_frame *precv_f
 	}
 
 
-	if (psta == NULL) {
+	if (!psta) {
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, (" after to_fr_ds_chk; psta == NULL\n"));
 		#ifdef DBG_RX_DROP_FRAME
 		DBG_871X("DBG_RX_DROP_FRAME %s psta == NULL\n", __func__);
@@ -1426,7 +1426,7 @@ static sint validate_80211w_mgmt(struct adapter *adapter, union recv_frame *prec
 			/* actual management data frame body */
 			data_len = pattrib->pkt_len - pattrib->hdrlen - pattrib->iv_len - pattrib->icv_len;
 			mgmt_DATA = rtw_zmalloc(data_len);
-			if (mgmt_DATA == NULL) {
+			if (!mgmt_DATA) {
 				DBG_871X("%s mgmt allocate fail  !!!!!!!!!\n", __func__);
 				goto validate_80211w_fail;
 			}
@@ -1812,7 +1812,7 @@ union recv_frame *recvframe_chk_defrag(struct adapter *padapter, union recv_fram
 
 	psta_addr = pfhdr->attrib.ta;
 	psta = rtw_get_stainfo(pstapriv, psta_addr);
-	if (psta == NULL) {
+	if (!psta) {
 		u8 type = GetFrameType(pfhdr->rx_data);
 		if (type != WIFI_DATA_TYPE) {
 			psta = rtw_get_bcmc_stainfo(padapter);
@@ -1828,7 +1828,7 @@ union recv_frame *recvframe_chk_defrag(struct adapter *padapter, union recv_fram
 	if (ismfrag == 1) {
 		/* 0~(n-1) fragment frame */
 		/* enqueue to defraf_g */
-		if (pdefrag_q != NULL) {
+		if (pdefrag_q) {
 			if (fragnum == 0)
 				/* the first fragment */
 				if (!list_empty(&pdefrag_q->queue))
@@ -1859,7 +1859,7 @@ union recv_frame *recvframe_chk_defrag(struct adapter *padapter, union recv_fram
 	if ((ismfrag == 0) && (fragnum != 0)) {
 		/* the last fragment frame */
 		/* enqueue the last fragment */
-		if (pdefrag_q != NULL) {
+		if (pdefrag_q) {
 			/* spin_lock(&pdefrag_q->lock); */
 			phead = get_list_head(pdefrag_q);
 			list_add_tail(&pfhdr->list, phead);
@@ -1880,7 +1880,7 @@ union recv_frame *recvframe_chk_defrag(struct adapter *padapter, union recv_fram
 	}
 
 
-	if ((prtnframe != NULL) && (prtnframe->u.hdr.attrib.privacy)) {
+	if ((prtnframe) && (prtnframe->u.hdr.attrib.privacy)) {
 		/* after defrag we must check tkip mic code */
 		if (recvframe_chkmic(padapter,  prtnframe) == _FAIL) {
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("recvframe_chkmic(padapter,  prtnframe) == _FAIL\n"));
@@ -1924,7 +1924,7 @@ static int amsdu_to_msdu(struct adapter *padapter, union recv_frame *prframe)
 		}
 
 		sub_pkt = rtw_os_alloc_msdu_pkt(prframe, nSubframe_Length, pdata);
-		if (sub_pkt == NULL) {
+		if (!sub_pkt) {
 			DBG_871X("%s(): allocate sub packet fail !!!\n", __func__);
 			break;
 		}
@@ -2453,7 +2453,7 @@ static int recv_func_posthandle(struct adapter *padapter, union recv_frame *prfr
 	DBG_COUNTER(padapter->rx_logs.core_rx_post);
 
 	prframe = decryptor(padapter, prframe);
-	if (prframe == NULL) {
+	if (!prframe) {
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("decryptor: drop pkt\n"));
 		#ifdef DBG_RX_DROP_FRAME
 		DBG_871X("DBG_RX_DROP_FRAME %s decryptor: drop pkt\n", __func__);
@@ -2464,7 +2464,7 @@ static int recv_func_posthandle(struct adapter *padapter, union recv_frame *prfr
 	}
 
 	prframe = recvframe_chk_defrag(padapter, prframe);
-	if (prframe == NULL)	{
+	if (!prframe)	{
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("recvframe_chk_defrag: drop pkt\n"));
 		#ifdef DBG_RX_DROP_FRAME
 		DBG_871X("DBG_RX_DROP_FRAME %s recvframe_chk_defrag: drop pkt\n", __func__);
@@ -2474,7 +2474,7 @@ static int recv_func_posthandle(struct adapter *padapter, union recv_frame *prfr
 	}
 
 	prframe = portctrl(padapter, prframe);
-	if (prframe == NULL) {
+	if (!prframe) {
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("portctrl: drop pkt\n"));
 		#ifdef DBG_RX_DROP_FRAME
 		DBG_871X("DBG_RX_DROP_FRAME %s portctrl: drop pkt\n", __func__);
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
