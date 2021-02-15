Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id A703231C46A
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 00:35:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 345046F5A4
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Feb 2021 23:35:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eTACDVQeoIgb for <lists+driverdev-devel@lfdr.de>;
	Mon, 15 Feb 2021 23:35:34 +0000 (UTC)
Received: by smtp3.osuosl.org (Postfix, from userid 1001)
	id A47856F551; Mon, 15 Feb 2021 23:35:34 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A8AAD6F478;
	Mon, 15 Feb 2021 23:35:09 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BE7791BF362
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 23:34:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BA3B286B6F
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 23:34:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wjcFLKisNQi7 for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 23:34:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com
 [209.85.221.48])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 6E14587022
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 23:34:47 +0000 (UTC)
Received: by mail-wr1-f48.google.com with SMTP id 7so11093921wrz.0
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 15:34:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bzbpcdq/dkKcny8MGodRWgkz1+6QNROkO4oO0Mby704=;
 b=UID8bV3ueo4W1DanTHMoGnFKHa3bEhbnqa04M9l5zKEgvDVUSOEEFkRlMHmZDUBnSP
 Grg3IuIw161AuXHiIhxfe7fGcb8dm8fjOr/v1eL4c+lGqevy+NuSj95PKC0K3KVbOGGz
 HFFEGQf5MIpa1WpI9id+L7/Jtalh9WZtidNuaYDVZ5jCKTCa0F47/LZHiKxsKKu5pIWJ
 iFvr7GSHzwQc5ogfktz+GdW6QRDWqBdsCtgunym+Kopdc1IBFDqKVNu8dyQIA2SHifNb
 vrkBNROXzOaKuiFqxmuvP9e85y7b4dbj/Rog7IzfflmZwblAmy8zYwZoHfAd7EeE3cOt
 iNrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bzbpcdq/dkKcny8MGodRWgkz1+6QNROkO4oO0Mby704=;
 b=PLO1epD3YOkDi36kMIxW0TnWoSxLwxtbEUlfxXb9hXO/VeQZJJ2yie/xB87szjhbXP
 3csacSUBRK2sT/K5boePYOTj8mhiFNG9n/HAHRd8LKyR8+fP+xMVRWGyEU6vnTnb48Qr
 ChfRMbb5JL/WH8awqnlweTI7MCVNtqcgMqa7N6RYd8Y0C+KP0+yTrWL8nCiDB2ZfxgYN
 aF9/IeV/IDZ4QnE2VXZKc3L6D4V43viGebt3fg/eFLRfW2fBAOjJ8BkkxlerKgzTcFVy
 OIouyLFh3xSOOv5WrGmz2Bb7onAc6hzDUwTF/RxSgtjHctXQ+3PE7ySU5KNrDUbBUSnf
 FhrQ==
X-Gm-Message-State: AOAM5307MnSP2NfG3CjK/FQFr3rCjaru5Bz3nAy1Ip3Kby5QG3klbVXP
 0oTqdr03FIaz+WKgvMfJYXod5Q==
X-Google-Smtp-Source: ABdhPJyZbrGyAbZkSUk4kAoWWPlNNiEZjA3kzdqe5xwI39Xg7to6aExb5w8gUOsRlyqc7Gzzh2wnVw==
X-Received: by 2002:adf:d239:: with SMTP id k25mr22026364wrh.308.1613432086038; 
 Mon, 15 Feb 2021 15:34:46 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id y16sm21691445wrw.46.2021.02.15.15.34.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Feb 2021 15:34:45 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH 4/6] staging: rtl8723bs: remove DBG_COUNTER calls from
 core/rtw_recv.c
Date: Mon, 15 Feb 2021 23:34:38 +0000
Message-Id: <20210215233440.80617-5-phil@philpotter.co.uk>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210215233440.80617-4-phil@philpotter.co.uk>
References: <20210215233440.80617-1-phil@philpotter.co.uk>
 <20210215233440.80617-2-phil@philpotter.co.uk>
 <20210215233440.80617-3-phil@philpotter.co.uk>
 <20210215233440.80617-4-phil@philpotter.co.uk>
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
Cc: devel@driverdev.osuosl.org, vkor@vkten.in, insafonov@gmail.com,
 foxhlchen@gmail.com, linux-kernel@vger.kernel.org, yujian.wu1@gmail.com,
 matthew.v.deangelis@gmail.com, amarjargal16@gmail.com, pterjan@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Remove all DBG_COUNTER macro calls from core/rtw_recv.c, as the
corresponding variables are only ever written to and not used. This
makes the code cleaner, and is necessary prior to removing the
DBG_COUNTER definition itself.

Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
---
 drivers/staging/rtl8723bs/core/rtw_recv.c | 44 ++---------------------
 1 file changed, 3 insertions(+), 41 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 3c9dbd7443d9..f35a134bb75f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -445,8 +445,6 @@ union recv_frame *decryptor(struct adapter *padapter, union recv_frame *precv_fr
 	union recv_frame *return_packet = precv_frame;
 	u32  res = _SUCCESS;
 
-	DBG_COUNTER(padapter->rx_logs.core_rx_post_decrypt);
-
 	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("prxstat->decrypted =%x prxattrib->encrypt = 0x%03x\n", prxattrib->bdecrypted, prxattrib->encrypt));
 
 	if (prxattrib->encrypt > 0) {
@@ -485,15 +483,12 @@ union recv_frame *decryptor(struct adapter *padapter, union recv_frame *precv_fr
 		switch (prxattrib->encrypt) {
 		case _WEP40_:
 		case _WEP104_:
-			DBG_COUNTER(padapter->rx_logs.core_rx_post_decrypt_wep);
 			rtw_wep_decrypt(padapter, (u8 *)precv_frame);
 			break;
 		case _TKIP_:
-			DBG_COUNTER(padapter->rx_logs.core_rx_post_decrypt_tkip);
 			res = rtw_tkip_decrypt(padapter, (u8 *)precv_frame);
 			break;
 		case _AES_:
-			DBG_COUNTER(padapter->rx_logs.core_rx_post_decrypt_aes);
 			res = rtw_aes_decrypt(padapter, (u8 *)precv_frame);
 			break;
 		default:
@@ -502,8 +497,6 @@ union recv_frame *decryptor(struct adapter *padapter, union recv_frame *precv_fr
 	} else if (prxattrib->bdecrypted == 1 && prxattrib->encrypt > 0 &&
 		   (psecuritypriv->busetkipkey == 1 || prxattrib->encrypt != _TKIP_)
 		) {
-		DBG_COUNTER(padapter->rx_logs.core_rx_post_decrypt_hw);
-
 		psecuritypriv->hw_decrypted = true;
 		#ifdef DBG_RX_DECRYPTOR
 		DBG_871X("[%s] %d:prxstat->bdecrypted:%d,  prxattrib->encrypt:%d,  Setting psecuritypriv->hw_decrypted = %d\n",
@@ -515,7 +508,6 @@ union recv_frame *decryptor(struct adapter *padapter, union recv_frame *precv_fr
 
 		#endif
 	} else {
-		DBG_COUNTER(padapter->rx_logs.core_rx_post_decrypt_unknown);
 		#ifdef DBG_RX_DECRYPTOR
 		DBG_871X("[%s] %d:prxstat->bdecrypted:%d,  prxattrib->encrypt:%d,  Setting psecuritypriv->hw_decrypted = %d\n",
 			__func__,
@@ -1488,7 +1480,6 @@ sint validate_recv_frame(struct adapter *adapter, union recv_frame *precv_frame)
 	if (ver != 0) {
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("validate_recv_data_frame fail! (ver!= 0)\n"));
 		retval = _FAIL;
-		DBG_COUNTER(adapter->rx_logs.core_rx_pre_ver_err);
 		goto exit;
 	}
 
@@ -1515,39 +1506,29 @@ sint validate_recv_frame(struct adapter *adapter, union recv_frame *precv_frame)
 
 	switch (type) {
 	case WIFI_MGT_TYPE: /* mgnt */
-		DBG_COUNTER(adapter->rx_logs.core_rx_pre_mgmt);
 		if (validate_80211w_mgmt(adapter, precv_frame) == _FAIL) {
 			retval = _FAIL;
-			DBG_COUNTER(padapter->rx_logs.core_rx_pre_mgmt_err_80211w);
 			break;
 		}
 
 		retval = validate_recv_mgnt_frame(adapter, precv_frame);
-		if (retval == _FAIL) {
+		if (retval == _FAIL)
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("validate_recv_mgnt_frame fail\n"));
-			DBG_COUNTER(adapter->rx_logs.core_rx_pre_mgmt_err);
-		}
 		retval = _FAIL; /*  only data frame return _SUCCESS */
 		break;
 	case WIFI_CTRL_TYPE: /* ctrl */
-		DBG_COUNTER(adapter->rx_logs.core_rx_pre_ctrl);
 		retval = validate_recv_ctrl_frame(adapter, precv_frame);
-		if (retval == _FAIL) {
+		if (retval == _FAIL)
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("validate_recv_ctrl_frame fail\n"));
-			DBG_COUNTER(adapter->rx_logs.core_rx_pre_ctrl_err);
-		}
 		retval = _FAIL; /*  only data frame return _SUCCESS */
 		break;
 	case WIFI_DATA_TYPE: /* data */
-		DBG_COUNTER(adapter->rx_logs.core_rx_pre_data);
-
 		pattrib->qos = (subtype & BIT(7)) ? 1:0;
 		retval = validate_recv_data_frame(adapter, precv_frame);
 		if (retval == _FAIL) {
 			struct recv_priv *precvpriv = &adapter->recvpriv;
 			/* RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("validate_recv_data_frame fail\n")); */
 			precvpriv->rx_drop++;
-			DBG_COUNTER(adapter->rx_logs.core_rx_pre_data_err);
 		} else if (retval == _SUCCESS) {
 #ifdef DBG_RX_DUMP_EAP
 			u8 bDumpRxPkt;
@@ -1561,11 +1542,9 @@ sint validate_recv_frame(struct adapter *adapter, union recv_frame *precv_frame)
 			if ((bDumpRxPkt == 4) && (eth_type == 0x888e))
 				dump_rx_packet(ptr);
 #endif
-		} else
-			DBG_COUNTER(adapter->rx_logs.core_rx_pre_data_handled);
+		}
 		break;
 	default:
-		DBG_COUNTER(adapter->rx_logs.core_rx_pre_unknown);
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("validate_recv_data_frame fail! type = 0x%x\n", type));
 		#ifdef DBG_RX_DROP_FRAME
 		DBG_871X("DBG_RX_DROP_FRAME validate_recv_data_frame fail! type = 0x%x\n", type);
@@ -2083,8 +2062,6 @@ int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reorder_ctr
 	struct dvobj_priv *psdpriv = padapter->dvobj;
 	struct debug_priv *pdbgpriv = &psdpriv->drv_dbg;
 
-	DBG_COUNTER(padapter->rx_logs.core_rx_post_indicate_in_oder);
-
 	/* DbgPrint("+recv_indicatepkts_in_order\n"); */
 
 	/* spin_lock_irqsave(&ppending_recvframe_queue->lock, irql); */
@@ -2190,8 +2167,6 @@ int recv_indicatepkt_reorder(struct adapter *padapter, union recv_frame *prframe
 	struct dvobj_priv *psdpriv = padapter->dvobj;
 	struct debug_priv *pdbgpriv = &psdpriv->drv_dbg;
 
-	DBG_COUNTER(padapter->rx_logs.core_rx_post_indicate_reoder);
-
 	if (!pattrib->amsdu) {
 		/* s1. */
 		wlanhdr_to_ethhdr(prframe);
@@ -2345,8 +2320,6 @@ int process_recv_indicatepkts(struct adapter *padapter, union recv_frame *prfram
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct ht_priv *phtpriv = &pmlmepriv->htpriv;
 
-	DBG_COUNTER(padapter->rx_logs.core_rx_post_indicate);
-
 	if (phtpriv->ht_option == true) { /* B/G/N Mode */
 		/* prframe->u.hdr.preorder_ctrl = &precvpriv->recvreorder_ctrl[pattrib->priority]; */
 
@@ -2396,8 +2369,6 @@ static int recv_func_prehandle(struct adapter *padapter, union recv_frame *rfram
 	int ret = _SUCCESS;
 	struct __queue *pfree_recv_queue = &padapter->recvpriv.free_recv_queue;
 
-	DBG_COUNTER(padapter->rx_logs.core_rx_pre);
-
 	/* check the frame crtl field and decache */
 	ret = validate_recv_frame(padapter, rframe);
 	if (ret != _SUCCESS) {
@@ -2417,8 +2388,6 @@ static int recv_func_posthandle(struct adapter *padapter, union recv_frame *prfr
 	struct recv_priv *precvpriv = &padapter->recvpriv;
 	struct __queue *pfree_recv_queue = &padapter->recvpriv.free_recv_queue;
 
-	DBG_COUNTER(padapter->rx_logs.core_rx_post);
-
 	prframe = decryptor(padapter, prframe);
 	if (!prframe) {
 		RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("decryptor: drop pkt\n"));
@@ -2426,7 +2395,6 @@ static int recv_func_posthandle(struct adapter *padapter, union recv_frame *prfr
 		DBG_871X("DBG_RX_DROP_FRAME %s decryptor: drop pkt\n", __func__);
 		#endif
 		ret = _FAIL;
-		DBG_COUNTER(padapter->rx_logs.core_rx_post_decrypt_err);
 		goto _recv_data_drop;
 	}
 
@@ -2436,7 +2404,6 @@ static int recv_func_posthandle(struct adapter *padapter, union recv_frame *prfr
 		#ifdef DBG_RX_DROP_FRAME
 		DBG_871X("DBG_RX_DROP_FRAME %s recvframe_chk_defrag: drop pkt\n", __func__);
 		#endif
-		DBG_COUNTER(padapter->rx_logs.core_rx_post_defrag_err);
 		goto _recv_data_drop;
 	}
 
@@ -2447,7 +2414,6 @@ static int recv_func_posthandle(struct adapter *padapter, union recv_frame *prfr
 		DBG_871X("DBG_RX_DROP_FRAME %s portctrl: drop pkt\n", __func__);
 		#endif
 		ret = _FAIL;
-		DBG_COUNTER(padapter->rx_logs.core_rx_post_portctrl_err);
 		goto _recv_data_drop;
 	}
 
@@ -2460,7 +2426,6 @@ static int recv_func_posthandle(struct adapter *padapter, union recv_frame *prfr
 		DBG_871X("DBG_RX_DROP_FRAME %s process_recv_indicatepkts fail!\n", __func__);
 		#endif
 		rtw_free_recvframe(orig_prframe, pfree_recv_queue);/* free this recv_frame */
-		DBG_COUNTER(padapter->rx_logs.core_rx_post_indicate_err);
 		goto _recv_data_drop;
 	}
 
@@ -2486,7 +2451,6 @@ int recv_func(struct adapter *padapter, union recv_frame *rframe)
 
 		while ((pending_frame = rtw_alloc_recvframe(&padapter->recvpriv.uc_swdec_pending_queue))) {
 			cnt++;
-			DBG_COUNTER(padapter->rx_logs.core_rx_dequeue);
 			recv_func_posthandle(padapter, pending_frame);
 		}
 
@@ -2495,7 +2459,6 @@ int recv_func(struct adapter *padapter, union recv_frame *rframe)
 				FUNC_ADPT_ARG(padapter), cnt);
 	}
 
-	DBG_COUNTER(padapter->rx_logs.core_rx);
 	ret = recv_func_prehandle(padapter, rframe);
 
 	if (ret == _SUCCESS) {
@@ -2506,7 +2469,6 @@ int recv_func(struct adapter *padapter, union recv_frame *rframe)
 			(prxattrib->bdecrypted == 0 || psecuritypriv->sw_decrypt == true) &&
 			psecuritypriv->ndisauthtype == Ndis802_11AuthModeWPAPSK &&
 			!psecuritypriv->busetkipkey) {
-			DBG_COUNTER(padapter->rx_logs.core_rx_enqueue);
 			rtw_enqueue_recvframe(rframe, &padapter->recvpriv.uc_swdec_pending_queue);
 			/* DBG_871X("%s: no key, enqueue uc_swdec_pending_queue\n", __func__); */
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
