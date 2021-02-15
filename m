Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F73131C466
	for <lists+driverdev-devel@lfdr.de>; Tue, 16 Feb 2021 00:35:03 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id AE05686A01;
	Mon, 15 Feb 2021 23:35:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WSkihrkJlaci; Mon, 15 Feb 2021 23:34:57 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 3E98686BAE;
	Mon, 15 Feb 2021 23:34:54 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 58ADF1BF362
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 23:34:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 5605F87031
 for <devel@linuxdriverproject.org>; Mon, 15 Feb 2021 23:34:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fI59bf-dJqwN for <devel@linuxdriverproject.org>;
 Mon, 15 Feb 2021 23:34:47 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by hemlock.osuosl.org (Postfix) with ESMTPS id AF8428701D
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 23:34:46 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id 7so11093899wrz.0
 for <devel@driverdev.osuosl.org>; Mon, 15 Feb 2021 15:34:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=philpotter-co-uk.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D9wTZMf8mQHvDXBNmWGbo0MVXVjpNRR85eN+LgHXS78=;
 b=1BIvA2h0dh11p09lal3FzhJVxf2GFil1DITQMUw8AUcax3cGLbQl4ENLVjwoX7icYy
 W6WVCeUJLqL3HkZXm6AFr4b3ueDQPgwhL19zVZC9B18l4CrTPErbmjtLisq71b7KxC5h
 maRkqJSSbIwRN+nglrw8VdBho96tPiJB9xuCBkFQUVedtwbfobIJTV937kD1AEVp8EPK
 qU5w4QbRzO/JKzLqWl3BLkHiVYwXeHC5Sm7sLWrvbka5+U4FP2Bozs1pcJhH147agLcj
 /m7xhuEh+EAKv3fB6kr9ku3Izh0t9y4/8PVE+RlYb8IrO8ScTXanx+DKmj20aPJf/tVF
 y/Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D9wTZMf8mQHvDXBNmWGbo0MVXVjpNRR85eN+LgHXS78=;
 b=SeHw78gCBUhpOyMVagv50jd9M3UrbP0Ik/l5oLwgFL7cdxYZpJCGhcniK1n0IkdqHr
 XO9/dfmfeYAYTtLxO4d3XgVNzcSKMuWBdwZsSdf571r9iGziTG6elKlqhtX76Bd+HTta
 xp3PLgW3W+VR1KeASc8kziGgDhOQnSFqLHL3Kfwaur7BjpdRrKGdsqznxo6SsVEyBrAK
 XrpUiwac9DXOWpbOTxz+alGgT/P9WgTyDPhp976YmKvMg4D8AebrXKNeEKuJxHo/qQch
 ivPp6OE7P++njrplSngYwuN/NDMYr2md6cb6g10c3+aj00jJXSMTtutDI3GO4U4s3OIG
 jSSQ==
X-Gm-Message-State: AOAM533Q3z1CI25X2U2fPr6YLxxcnqWs9/zmWgxK6vasdPA9T+J67etA
 cuwc7AvQ0Ej1tgd9PrxiWcG7Xg==
X-Google-Smtp-Source: ABdhPJxcQZvnKQt4lCt1bg7HPEmFukJeG+jjlhiF3g/fgrXvFLHM5QtOHjRGRh788BqgBsGgKCqjLQ==
X-Received: by 2002:a5d:500d:: with SMTP id e13mr20416403wrt.307.1613432085299; 
 Mon, 15 Feb 2021 15:34:45 -0800 (PST)
Received: from localhost.localdomain
 (2.0.5.1.1.6.3.8.5.c.c.3.f.b.d.3.0.0.0.0.6.1.f.d.0.b.8.0.1.0.0.2.ip6.arpa.
 [2001:8b0:df16:0:3dbf:3cc5:8361:1502])
 by smtp.gmail.com with ESMTPSA id y16sm21691445wrw.46.2021.02.15.15.34.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Feb 2021 15:34:44 -0800 (PST)
From: Phillip Potter <phil@philpotter.co.uk>
To: gregkh@linuxfoundation.org
Subject: [PATCH 3/6] staging: rtl8723bs: remove DBG_COUNTER calls from
 core/rtw_xmit.c
Date: Mon, 15 Feb 2021 23:34:37 +0000
Message-Id: <20210215233440.80617-4-phil@philpotter.co.uk>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210215233440.80617-3-phil@philpotter.co.uk>
References: <20210215233440.80617-1-phil@philpotter.co.uk>
 <20210215233440.80617-2-phil@philpotter.co.uk>
 <20210215233440.80617-3-phil@philpotter.co.uk>
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

Remove all DBG_COUNTER macro calls from core/rtw_xmit.c, as the
corresponding variables are only ever written to and not used. This
makes the code cleaner, and is necessary prior to removing the
DBG_COUNTER definition itself.

Signed-off-by: Phillip Potter <phil@philpotter.co.uk>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 44 ++---------------------
 1 file changed, 3 insertions(+), 41 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 41632fa0b3c8..19aecbabbc4d 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -653,8 +653,6 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 	struct qos_priv *pqospriv = &pmlmepriv->qospriv;
 	sint res = _SUCCESS;
 
-	DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib);
-
 	_rtw_open_pktfile(pkt, &pktfile);
 	_rtw_pktfile_read(&pktfile, (u8 *)&etherhdr, ETH_HLEN);
 
@@ -667,17 +665,12 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 		(check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE) == true)) {
 		memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
 		memcpy(pattrib->ta, pattrib->src, ETH_ALEN);
-		DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_adhoc);
 	} else if (check_fwstate(pmlmepriv, WIFI_STATION_STATE)) {
 		memcpy(pattrib->ra, get_bssid(pmlmepriv), ETH_ALEN);
 		memcpy(pattrib->ta, pattrib->src, ETH_ALEN);
-		DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_sta);
 	} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
 		memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
 		memcpy(pattrib->ta, get_bssid(pmlmepriv), ETH_ALEN);
-		DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_ap);
-	} else {
-		DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_unknown);
 	}
 
 	pattrib->pktlen = pktfile.pkt_len;
@@ -699,7 +692,6 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 					/*  67 : UDP BOOTP server */
 					RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("======================update_attrib: get DHCP Packet\n"));
 					pattrib->dhcp_pkt = 1;
-					DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_dhcp);
 				}
 			}
 		}
@@ -709,10 +701,8 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 			struct iphdr *piphdr = (struct iphdr *)tmp;
 
 			pattrib->icmp_pkt = 0;
-			if (piphdr->protocol == 0x1) { /*  protocol type in ip header 0x1 is ICMP */
+			if (piphdr->protocol == 0x1) /*  protocol type in ip header 0x1 is ICMP */
 				pattrib->icmp_pkt = 1;
-				DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_icmp);
-			}
 		}
 	} else if (0x888e == pattrib->ether_type) {
 		DBG_871X_LEVEL(_drv_always_, "send eapol packet\n");
@@ -724,10 +714,8 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 	/*  If EAPOL , ARP , OR DHCP packet, driver must be in active mode. */
 	if (pattrib->icmp_pkt == 1)
 		rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_LEAVE, 1);
-	else if (pattrib->dhcp_pkt == 1) {
-		DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_active);
+	else if (pattrib->dhcp_pkt == 1)
 		rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_SPECIAL_PACKET, 1);
-	}
 
 	bmcast = IS_MCAST(pattrib->ra);
 
@@ -737,7 +725,6 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 	} else {
 		psta = rtw_get_stainfo(pstapriv, pattrib->ra);
 		if (!psta)	{ /*  if we cannot get psta => drop the pkt */
-			DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_err_ucast_sta);
 			RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("\nupdate_attrib => get sta_info fail, ra:%pM\n", MAC_ARG(pattrib->ra)));
 			#ifdef DBG_TX_DROP_FRAME
 			DBG_871X("DBG_TX_DROP_FRAME %s get sta_info fail, ra:%pM\n", __func__, MAC_ARG(pattrib->ra));
@@ -745,7 +732,6 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 			res = _FAIL;
 			goto exit;
 		} else if ((check_fwstate(pmlmepriv, WIFI_AP_STATE) == true) && (!(psta->state & _FW_LINKED))) {
-			DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_err_ucast_ap_link);
 			res = _FAIL;
 			goto exit;
 		}
@@ -753,7 +739,6 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 
 	if (!psta) {
 		/*  if we cannot get psta => drop the pkt */
-		DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_err_sta);
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("\nupdate_attrib => get sta_info fail, ra:%pM\n", MAC_ARG(pattrib->ra)));
 		#ifdef DBG_TX_DROP_FRAME
 		DBG_871X("DBG_TX_DROP_FRAME %s get sta_info fail, ra:%pM\n", __func__, MAC_ARG(pattrib->ra));
@@ -763,14 +748,12 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 	}
 
 	if (!(psta->state & _FW_LINKED)) {
-		DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_err_link);
 		DBG_871X("%s, psta(%pM)->state(0x%x) != _FW_LINKED\n", __func__, MAC_ARG(psta->hwaddr), psta->state);
 		return _FAIL;
 	}
 
 	/* TODO:_lock */
 	if (update_attrib_sec_info(padapter, pattrib, psta) == _FAIL) {
-		DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_err_sec);
 		res = _FAIL;
 		goto exit;
 	}
@@ -1892,7 +1875,6 @@ void rtw_free_xmitframe_queue(struct xmit_priv *pxmitpriv, struct __queue *pfram
 
 s32 rtw_xmitframe_enqueue(struct adapter *padapter, struct xmit_frame *pxmitframe)
 {
-	DBG_COUNTER(padapter->tx_logs.core_tx_enqueue);
 	if (rtw_xmit_classifier(padapter, pxmitframe) == _FAIL) {
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
 			 ("rtw_xmitframe_enqueue: drop xmit pkt for classifier fail\n"));
@@ -1953,17 +1935,13 @@ s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe)
 	struct hw_xmit	*phwxmits =  padapter->xmitpriv.hwxmits;
 	sint res = _SUCCESS;
 
-	DBG_COUNTER(padapter->tx_logs.core_tx_enqueue_class);
-
 	psta = rtw_get_stainfo(&padapter->stapriv, pattrib->ra);
 	if (pattrib->psta != psta) {
-		DBG_COUNTER(padapter->tx_logs.core_tx_enqueue_class_err_sta);
 		DBG_871X("%s, pattrib->psta(%p) != psta(%p)\n", __func__, pattrib->psta, psta);
 		return _FAIL;
 	}
 
 	if (!psta) {
-		DBG_COUNTER(padapter->tx_logs.core_tx_enqueue_class_err_nosta);
 		res = _FAIL;
 		DBG_8192C("rtw_xmit_classifier: psta == NULL\n");
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("rtw_xmit_classifier: psta == NULL\n"));
@@ -1971,7 +1949,6 @@ s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe)
 	}
 
 	if (!(psta->state & _FW_LINKED)) {
-		DBG_COUNTER(padapter->tx_logs.core_tx_enqueue_class_err_fwlink);
 		DBG_871X("%s, psta->state(0x%x) != _FW_LINKED\n", __func__, psta->state);
 		return _FAIL;
 	}
@@ -2110,8 +2087,6 @@ s32 rtw_xmit(struct adapter *padapter, _pkt **ppkt)
 
 	s32 res;
 
-	DBG_COUNTER(padapter->tx_logs.core_tx);
-
 	if (start == 0)
 		start = jiffies;
 
@@ -2127,7 +2102,6 @@ s32 rtw_xmit(struct adapter *padapter, _pkt **ppkt)
 	if (!pxmitframe) {
 		drop_cnt++;
 		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("%s: no more pxmitframe\n", __func__));
-		DBG_COUNTER(padapter->tx_logs.core_tx_err_pxmitframe);
 		return -1;
 	}
 
@@ -2148,7 +2122,6 @@ s32 rtw_xmit(struct adapter *padapter, _pkt **ppkt)
 	spin_lock_bh(&pxmitpriv->lock);
 	if (xmitframe_enqueue_for_sleeping_sta(padapter, pxmitframe) == true) {
 		spin_unlock_bh(&pxmitpriv->lock);
-		DBG_COUNTER(padapter->tx_logs.core_tx_ap_enqueue);
 		return 1;
 	}
 	spin_unlock_bh(&pxmitpriv->lock);
@@ -2200,32 +2173,25 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 	sint bmcst = IS_MCAST(pattrib->ra);
 	bool update_tim = false;
 
-	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == false) {
-		DBG_COUNTER(padapter->tx_logs.core_tx_ap_enqueue_warn_fwstate);
+	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == false)
 		return ret;
-	}
 	psta = rtw_get_stainfo(&padapter->stapriv, pattrib->ra);
 	if (pattrib->psta != psta) {
-		DBG_COUNTER(padapter->tx_logs.core_tx_ap_enqueue_warn_sta);
 		DBG_871X("%s, pattrib->psta(%p) != psta(%p)\n", __func__, pattrib->psta, psta);
 		return false;
 	}
 
 	if (!psta) {
-		DBG_COUNTER(padapter->tx_logs.core_tx_ap_enqueue_warn_nosta);
 		DBG_871X("%s, psta ==NUL\n", __func__);
 		return false;
 	}
 
 	if (!(psta->state & _FW_LINKED)) {
-		DBG_COUNTER(padapter->tx_logs.core_tx_ap_enqueue_warn_link);
 		DBG_871X("%s, psta->state(0x%x) != _FW_LINKED\n", __func__, psta->state);
 		return false;
 	}
 
 	if (pattrib->triggered == 1) {
-		DBG_COUNTER(padapter->tx_logs.core_tx_ap_enqueue_warn_trigger);
-
 		if (bmcst && xmitframe_hiq_filter(pxmitframe))
 			pattrib->qsel = 0x11;/* HIQ */
 
@@ -2256,8 +2222,6 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 				chk_bmc_sleepq_cmd(padapter);
 
 			ret = true;
-
-			DBG_COUNTER(padapter->tx_logs.core_tx_ap_enqueue_mcast);
 		}
 
 		spin_unlock_bh(&psta->sleep_q.lock);
@@ -2312,8 +2276,6 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 			}
 
 			ret = true;
-
-			DBG_COUNTER(padapter->tx_logs.core_tx_ap_enqueue_ucast);
 		}
 	}
 
-- 
2.29.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
