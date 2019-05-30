Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A150E30160
	for <lists+driverdev-devel@lfdr.de>; Thu, 30 May 2019 19:58:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 2D645869F6;
	Thu, 30 May 2019 17:58:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BiYTG16iEuPY; Thu, 30 May 2019 17:58:13 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4D206869BE;
	Thu, 30 May 2019 17:58:11 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 473441BF4E5
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 17:58:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 4431D88412
 for <devel@linuxdriverproject.org>; Thu, 30 May 2019 17:58:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LxpkzJhHMvbX for <devel@linuxdriverproject.org>;
 Thu, 30 May 2019 17:58:08 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-pg1-f196.google.com (mail-pg1-f196.google.com
 [209.85.215.196])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 279CC88411
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 17:58:08 +0000 (UTC)
Received: by mail-pg1-f196.google.com with SMTP id d30so2441410pgm.7
 for <devel@driverdev.osuosl.org>; Thu, 30 May 2019 10:58:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=QIp/KdjS2dpVlm2hwXWVZqd97bYz47RGCB0TIzWFG1w=;
 b=loE373oSErf6nFo3noeuDeibZCPNas0k1iYtZ+eJ3KIwLAOM9Lmd/NpiJz913RtKVK
 h/rDlrwKyabODyoKfOVTuM+GWH8RTCMfnb2x1BKe2/AjDV0/4p/Oj3+0D4DeXUY7Du5o
 xgiFFwXKNaFdCz3xpuoIipuJlQJHpQ4JaLULeSny6UWbPY51+swp/6h3BRy0DF4DBQ4/
 dtq63Fz0wxiSAe9OviC56bMvTgn9Rb3DqqioaJRii7U6Vbu/e1rJNGfvGZuGGCQCMS9P
 dH/VadQ+RbOF0EYTwldwubhqS2TMbUS+bCDBXwzWpqMhu7zcIReTRGWhq13ef9WkyodQ
 kenA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=QIp/KdjS2dpVlm2hwXWVZqd97bYz47RGCB0TIzWFG1w=;
 b=PxoktA4MztIyMDKK/fVT6lK7OmJr6+S20wIMUjHq3jvtI1IQMJU/qyK2cCd7oIDk3o
 hzWNwGf1PWVwGWywAnAmKf+OJDAAWZHlhiLBxhYDC/mrsohEhzt+GfOQbhHFCPiCx9ol
 YDUdTcCU8LQ8YHkElGOVhtGbcLYN2ka1hIlhs/ylpA01vltLFY9g72Pj9CjLW8SogCll
 mnGxlqOiMgxs9HyvIBwHIyVidItBpHdPLi+kokJ7xda3Q6hVuElWakx2YCDgkdBvZc9d
 1eHXr/jc5H2A3N6m/y9uPSyawySJvDZsPweDAD/BPQmOBNvkLAVA+LJgXlTw/42egn8N
 L31w==
X-Gm-Message-State: APjAAAW/nVTRq481mBAgfNDvKjJv/USmKaE+Uc+d/XuLc/YBxmYnp1JV
 N4IAQ1NHfKZU45B5sZwDVNA=
X-Google-Smtp-Source: APXvYqzbM2l2a+ROFZ8ooFS5qbiP5P2hJ3SHOaASLfhgqGkzS65OHlXTy5xNdG3saP7+LMrSoCxCKw==
X-Received: by 2002:a62:6507:: with SMTP id z7mr5036218pfb.225.1559239087666; 
 Thu, 30 May 2019 10:58:07 -0700 (PDT)
Received: from hari-Inspiron-1545 ([183.83.89.153])
 by smtp.gmail.com with ESMTPSA id t124sm3402387pfb.80.2019.05.30.10.58.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 30 May 2019 10:58:06 -0700 (PDT)
Date: Thu, 30 May 2019 23:28:00 +0530
From: Hariprasad Kelam <hariprasad.kelam@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Colin Ian King <colin.king@canonical.com>,
 Michael Straube <straube.linux@gmail.com>,
 Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 Jeeeun Evans <jeeeunevans@gmail.com>, Arnd Bergmann <arnd@arndb.de>,
 Vatsala Narang <vatsalanarang@gmail.com>,
 Hardik Singh Rathore <hardiksingh.k@gmail.com>,
 Aditya Pakki <pakki001@umn.edu>, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] staging: rtl8723bs: core: fix warning Comparison to NULL
Message-ID: <20190530175800.GA7332@hari-Inspiron-1545>
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

this patch fixes "Comparison to NULL" warnings reported by
checkpatch

Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 54 +++++++++++++++----------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 25409ab..53146ec 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -76,7 +76,7 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 
 	pxmitpriv->pallocated_frame_buf = vzalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4);
 
-	if (pxmitpriv->pallocated_frame_buf  == NULL) {
+	if (!pxmitpriv->pallocated_frame_buf) {
 		pxmitpriv->pxmit_frame_buf = NULL;
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("alloc xmit_frame fail!\n"));
 		res = _FAIL;
@@ -115,7 +115,7 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 
 	pxmitpriv->pallocated_xmitbuf = vzalloc(NR_XMITBUFF * sizeof(struct xmit_buf) + 4);
 
-	if (pxmitpriv->pallocated_xmitbuf  == NULL) {
+	if (!pxmitpriv->pallocated_xmitbuf) {
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("alloc xmit_buf fail!\n"));
 		res = _FAIL;
 		goto exit;
@@ -166,7 +166,7 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 
 	pxmitpriv->xframe_ext_alloc_addr = vzalloc(NR_XMIT_EXTBUFF * sizeof(struct xmit_frame) + 4);
 
-	if (pxmitpriv->xframe_ext_alloc_addr  == NULL) {
+	if (!pxmitpriv->xframe_ext_alloc_addr) {
 		pxmitpriv->xframe_ext = NULL;
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("alloc xframe_ext fail!\n"));
 		res = _FAIL;
@@ -199,7 +199,7 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 
 	pxmitpriv->pallocated_xmit_extbuf = vzalloc(NR_XMIT_EXTBUFF * sizeof(struct xmit_buf) + 4);
 
-	if (pxmitpriv->pallocated_xmit_extbuf  == NULL) {
+	if (!pxmitpriv->pallocated_xmit_extbuf) {
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("alloc xmit_extbuf fail!\n"));
 		res = _FAIL;
 		goto exit;
@@ -288,7 +288,7 @@ void _rtw_free_xmit_priv(struct xmit_priv *pxmitpriv)
 
 	rtw_hal_free_xmit_priv(padapter);
 
-	if (pxmitpriv->pxmit_frame_buf == NULL)
+	if (!pxmitpriv->pxmit_frame_buf)
 		return;
 
 	for (i = 0; i < NR_XMITFRAME; i++) {
@@ -335,7 +335,7 @@ void _rtw_free_xmit_priv(struct xmit_priv *pxmitpriv)
 
 	for (i = 0; i < CMDBUF_MAX; i++) {
 		pxmitbuf = &pxmitpriv->pcmd_xmitbuf[i];
-		if (pxmitbuf != NULL)
+		if (pxmitbuf)
 			rtw_os_xmit_resource_free(padapter, pxmitbuf, MAX_CMDBUF_SZ+XMITBUF_ALIGN_SZ, true);
 	}
 
@@ -774,7 +774,7 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 		psta = rtw_get_bcmc_stainfo(padapter);
 	} else {
 		psta = rtw_get_stainfo(pstapriv, pattrib->ra);
-		if (psta == NULL)	{ /*  if we cannot get psta => drop the pkt */
+		if (!psta)	{ /*  if we cannot get psta => drop the pkt */
 			DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_err_ucast_sta);
 			RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("\nupdate_attrib => get sta_info fail, ra:" MAC_FMT"\n", MAC_ARG(pattrib->ra)));
 			#ifdef DBG_TX_DROP_FRAME
@@ -789,7 +789,7 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 		}
 	}
 
-	if (psta == NULL) {
+	if (!psta) {
 		/*  if we cannot get psta => drop the pkt */
 		DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_err_sta);
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("\nupdate_attrib => get sta_info fail, ra:" MAC_FMT "\n", MAC_ARG(pattrib->ra)));
@@ -1098,7 +1098,7 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 				return _FAIL;
 			}
 
-			if (psta == NULL) {
+			if (!psta) {
 				DBG_871X("%s, psta ==NUL\n", __func__);
 				return _FAIL;
 			}
@@ -1241,7 +1241,7 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_fram
 		return _FAIL;
 	}
 */
-	if (pxmitframe->buf_addr == NULL) {
+	if (!pxmitframe->buf_addr) {
 		DBG_8192C("==> %s buf_addr == NULL\n", __func__);
 		return _FAIL;
 	}
@@ -1376,7 +1376,7 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
 	tmp_buf = BIP_AAD = rtw_zmalloc(ori_len);
 	subtype = GetFrameSubType(pframe); /* bit(7)~bit(2) */
 
-	if (BIP_AAD == NULL)
+	if (!BIP_AAD)
 		return _FAIL;
 
 	spin_lock_bh(&padapter->security_key_mutex);
@@ -1442,13 +1442,13 @@ s32 rtw_mgmt_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit
 			else
 				psta = rtw_get_stainfo(&padapter->stapriv, pattrib->ra);
 
-			if (psta == NULL) {
+			if (!psta) {
 
 				DBG_871X("%s, psta ==NUL\n", __func__);
 				goto xmitframe_coalesce_fail;
 			}
 
-			if (!(psta->state & _FW_LINKED) || pxmitframe->buf_addr == NULL) {
+			if (!(psta->state & _FW_LINKED) || !pxmitframe->buf_addr) {
 				DBG_871X("%s, not _FW_LINKED or addr null\n", __func__);
 				goto xmitframe_coalesce_fail;
 			}
@@ -1570,7 +1570,7 @@ void rtw_update_protection(struct adapter *padapter, u8 *ie, uint ie_len)
 	case AUTO_VCS:
 	default:
 		perp = rtw_get_ie(ie, _ERPINFO_IE_, &erp_len, ie_len);
-		if (perp == NULL)
+		if (!perp)
 			pxmitpriv->vcs = NONE_VCS;
 		else {
 			protection = (*(perp + 2)) & BIT(1);
@@ -1622,7 +1622,7 @@ static struct xmit_buf *__rtw_alloc_cmd_xmitbuf(struct xmit_priv *pxmitpriv,
 	struct xmit_buf *pxmitbuf =  NULL;
 
 	pxmitbuf = &pxmitpriv->pcmd_xmitbuf[buf_type];
-	if (pxmitbuf !=  NULL) {
+	if (pxmitbuf) {
 		pxmitbuf->priv_data = NULL;
 
 		pxmitbuf->len = 0;
@@ -1647,13 +1647,13 @@ struct xmit_frame *__rtw_alloc_cmdxmitframe(struct xmit_priv *pxmitpriv,
 	struct xmit_buf		*pxmitbuf;
 
 	pcmdframe = rtw_alloc_xmitframe(pxmitpriv);
-	if (pcmdframe == NULL) {
+	if (!pcmdframe) {
 		DBG_871X("%s, alloc xmitframe fail\n", __func__);
 		return NULL;
 	}
 
 	pxmitbuf = __rtw_alloc_cmd_xmitbuf(pxmitpriv, buf_type);
-	if (pxmitbuf == NULL) {
+	if (!pxmitbuf) {
 		DBG_871X("%s, alloc xmitbuf fail\n", __func__);
 		rtw_free_xmitframe(pxmitpriv, pcmdframe);
 		return NULL;
@@ -1693,7 +1693,7 @@ struct xmit_buf *rtw_alloc_xmitbuf_ext(struct xmit_priv *pxmitpriv)
 		list_del_init(&(pxmitbuf->list));
 	}
 
-	if (pxmitbuf !=  NULL) {
+	if (pxmitbuf) {
 		pxmitpriv->free_xmit_extbuf_cnt--;
 		#ifdef DBG_XMIT_BUF_EXT
 		DBG_871X("DBG_XMIT_BUF_EXT ALLOC no =%d,  free_xmit_extbuf_cnt =%d\n", pxmitbuf->no, pxmitpriv->free_xmit_extbuf_cnt);
@@ -1723,7 +1723,7 @@ s32 rtw_free_xmitbuf_ext(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 	_irqL irqL;
 	struct __queue *pfree_queue = &pxmitpriv->free_xmit_extbuf_queue;
 
-	if (pxmitbuf == NULL)
+	if (!pxmitbuf)
 		return _FAIL;
 
 	spin_lock_irqsave(&pfree_queue->lock, irqL);
@@ -1765,7 +1765,7 @@ struct xmit_buf *rtw_alloc_xmitbuf(struct xmit_priv *pxmitpriv)
 		list_del_init(&(pxmitbuf->list));
 	}
 
-	if (pxmitbuf !=  NULL) {
+	if (pxmitbuf) {
 		pxmitpriv->free_xmitbuf_cnt--;
 		#ifdef DBG_XMIT_BUF
 		DBG_871X("DBG_XMIT_BUF ALLOC no =%d,  free_xmitbuf_cnt =%d\n", pxmitbuf->no, pxmitpriv->free_xmitbuf_cnt);
@@ -1801,7 +1801,7 @@ s32 rtw_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 
 	/* DBG_871X("+rtw_free_xmitbuf\n"); */
 
-	if (pxmitbuf == NULL)
+	if (!pxmitbuf)
 		return _FAIL;
 
 	if (pxmitbuf->sctx) {
@@ -1831,7 +1831,7 @@ s32 rtw_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 
 static void rtw_init_xmitframe(struct xmit_frame *pxframe)
 {
-	if (pxframe !=  NULL) { /* default value setting */
+	if (pxframe) { /* default value setting */
 		pxframe->buf_addr = NULL;
 		pxframe->pxmitbuf = NULL;
 
@@ -1927,7 +1927,7 @@ struct xmit_frame *rtw_alloc_xmitframe_once(struct xmit_priv *pxmitpriv)
 
 	alloc_addr = rtw_zmalloc(sizeof(struct xmit_frame) + 4);
 
-	if (alloc_addr == NULL)
+	if (!alloc_addr)
 		goto exit;
 
 	pxframe = (struct xmit_frame *)N_BYTE_ALIGMENT((SIZE_PTR)(alloc_addr), 4);
@@ -1955,7 +1955,7 @@ s32 rtw_free_xmitframe(struct xmit_priv *pxmitpriv, struct xmit_frame *pxmitfram
 	struct adapter *padapter = pxmitpriv->adapter;
 	_pkt *pndis_pkt = NULL;
 
-	if (pxmitframe == NULL) {
+	if (!pxmitframe) {
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("======rtw_free_xmitframe():pxmitframe == NULL!!!!!!!!!!\n"));
 		goto exit;
 	}
@@ -2109,7 +2109,7 @@ s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe)
 		return _FAIL;
 	}
 
-	if (psta == NULL) {
+	if (!psta) {
 		DBG_COUNTER(padapter->tx_logs.core_tx_enqueue_class_err_nosta);
 		res = _FAIL;
 		DBG_8192C("rtw_xmit_classifier: psta == NULL\n");
@@ -2310,7 +2310,7 @@ s32 rtw_xmit(struct adapter *padapter, _pkt **ppkt)
 		drop_cnt = 0;
 	}
 
-	if (pxmitframe == NULL) {
+	if (!pxmitframe) {
 		drop_cnt++;
 		RT_TRACE(_module_xmit_osdep_c_, _drv_err_, ("rtw_xmit: no more pxmitframe\n"));
 		DBG_COUNTER(padapter->tx_logs.core_tx_err_pxmitframe);
@@ -2409,7 +2409,7 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 		return false;
 	}
 
-	if (psta == NULL) {
+	if (!psta) {
 		DBG_COUNTER(padapter->tx_logs.core_tx_ap_enqueue_warn_nosta);
 		DBG_871X("%s, psta ==NUL\n", __func__);
 		return false;
-- 
2.7.4

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
