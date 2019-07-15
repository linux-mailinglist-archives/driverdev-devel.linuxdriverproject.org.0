Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D82B6999F
	for <lists+driverdev-devel@lfdr.de>; Mon, 15 Jul 2019 19:17:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5059987B40;
	Mon, 15 Jul 2019 17:17:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vJAKEiNf1YbW; Mon, 15 Jul 2019 17:17:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 39A3A87AEE;
	Mon, 15 Jul 2019 17:17:29 +0000 (UTC)
X-Original-To: driverdev-devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0B6E31BF395
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 17:17:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id D4DEB87ACE
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 17:17:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id AF7Bcp8mDX08
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 17:17:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by hemlock.osuosl.org (Postfix) with ESMTPS id E6B7287AC2
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 17:17:23 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id r4so12179427qkm.13
 for <driverdev-devel@linuxdriverproject.org>;
 Mon, 15 Jul 2019 10:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nJv7lu0EVAt+2xPON3RrGCIohunpIaFZwS9rr5lrNto=;
 b=jLmXF/E0Q7L7HgFipXR5VyGG3cuO4nc3J+zbdFeAY1gdM5Eo+ctbICIy+7flu9d/S3
 tVx47U3jv9WNfXdB65G2mc43z7lHZxo9R0wmZTr2fl+HM6xSzmWKF96iuYUet6MoO4oF
 oLQTyL2k/FTTByylRQ0NlWHhcvtdE4BJtKBSQ3i6NI/FxpQR6NitykzJ4ZDbF42NMF2B
 d+iC9zQo2+QctdYXAzaJSJy3FQsGsXzk8tuXXdCbYWa0oEYtT1vgFWRKwN5arGwMmv1r
 FzeFf7c9gbmnr8WIK5vASvyS46Rnd1cteSnPg4075zR0O0eFc4MVP+qItK116qr5Eym5
 wz/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nJv7lu0EVAt+2xPON3RrGCIohunpIaFZwS9rr5lrNto=;
 b=PjKDN373zCVQVgkDZ3Ws6GrK+tNzEDpXdJ2N4pTneD1lhpfslB3li79V0IPQSDWbF5
 RRSRBEPetiqRB9o1g7FXy6PciCjnVUkB9g/PlughjZ7DKyqDUhZLsY7ICaCp5CFlegYy
 BjZzWCBuc2FcaTorjBAqXD8zOtQ9k1jsi4JN/CYSoVL8xLf6fx8wYN+ws/pd1nBPrmYr
 DMhiNjh1lfTdTxkHRhGHzHpLJeVeiud1FEB8gr+cRIr62gD/buse5ORfSh1RVIryLbZ2
 XgdiTbebcgYTT/y/5nOpj8M7WgWi9x97eQ4raox4BXqhab3io5HleCgfCD98h/HU5X6a
 Jb6Q==
X-Gm-Message-State: APjAAAV+3OqJ1gNqHBq+oSUQZrQPA+loMix0FnxdbmOgsHK+ZEyO65Ao
 unJ+hv/v5XoSuNFVUk3H1UI=
X-Google-Smtp-Source: APXvYqxzz7iRGvycOSh4sPICBeeCMHaMJ+Jn1xgEot3fCe2Av2olq9ocT1PkT86TB+xLvl8Q2kbchQ==
X-Received: by 2002:a05:620a:52e:: with SMTP id
 h14mr18192785qkh.358.1563211042877; 
 Mon, 15 Jul 2019 10:17:22 -0700 (PDT)
Received: from localhost.localdomain ([181.31.106.136])
 by smtp.gmail.com with ESMTPSA id j3sm8185685qki.5.2019.07.15.10.17.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 15 Jul 2019 10:17:22 -0700 (PDT)
From: christianluciano.m@gmail.com
To: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
 florian.c.schilhabel@googlemail.com,
 driverdev-devel@linuxdriverproject.org, christianluciano.m@gmail.com
Subject: [PATCH] staging: rtl8712: rtl871x_xmit.c: Fix some CHECK and WARNING
Date: Mon, 15 Jul 2019 14:17:04 -0300
Message-Id: <20190715171704.9651-1-christianluciano.m@gmail.com>
X-Mailer: git-send-email 2.22.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

From: Christian Luciano Moreno <christianluciano.m@gmail.com>

Fix: line over 80 characters
     space unnecesary after cast
     alignment match open parenthesis
     comparison to NULL
Those warnings and check were reported by checkpatch.

Signed-off-by: Christian Luciano Moreno <christianluciano.m@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_xmit.c | 100 ++++++++++++-------------
 1 file changed, 50 insertions(+), 50 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index f6fe8ea12961..716a0eebdcbd 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -22,7 +22,6 @@
 #include "osdep_intf.h"
 #include "usb_ops.h"
 
-
 static const u8 P802_1H_OUI[P80211_OUI_LEN] = {0x00, 0x00, 0xf8};
 static const u8 RFC1042_OUI[P80211_OUI_LEN] = {0x00, 0x00, 0x00};
 static void init_hwxmits(struct hw_xmit *phwxmit, sint entry);
@@ -39,7 +38,7 @@ static void _init_txservq(struct tx_servq *ptxservq)
 void _r8712_init_sta_xmit_priv(struct sta_xmit_priv *psta_xmitpriv)
 {
 	memset((unsigned char *)psta_xmitpriv, 0,
-		 sizeof(struct sta_xmit_priv));
+	       sizeof(struct sta_xmit_priv));
 	spin_lock_init(&psta_xmitpriv->lock);
 	_init_txservq(&psta_xmitpriv->be_q);
 	_init_txservq(&psta_xmitpriv->bk_q);
@@ -71,19 +70,21 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 	_init_queue(&pxmitpriv->apsd_queue);
 	_init_queue(&pxmitpriv->free_xmit_queue);
 	/*
-	 * Please allocate memory with the sz = (struct xmit_frame) * NR_XMITFRAME,
+	 * Please allocate memory with the
+	 * sz = (struct xmit_frame) * NR_XMITFRAME,
 	 * and initialize free_xmit_frame below.
 	 * Please also apply  free_txobj to link_up all the xmit_frames...
 	 */
 	pxmitpriv->pallocated_frame_buf =
-		kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4, GFP_ATOMIC);
+		kmalloc(NR_XMITFRAME * sizeof(struct xmit_frame) + 4,
+			GFP_ATOMIC);
 	if (!pxmitpriv->pallocated_frame_buf) {
 		pxmitpriv->pxmit_frame_buf = NULL;
 		return _FAIL;
 	}
 	pxmitpriv->pxmit_frame_buf = pxmitpriv->pallocated_frame_buf + 4 -
-			((addr_t) (pxmitpriv->pallocated_frame_buf) & 3);
-	pxframe = (struct xmit_frame *) pxmitpriv->pxmit_frame_buf;
+			((addr_t)(pxmitpriv->pallocated_frame_buf) & 3);
+	pxframe = (struct xmit_frame *)pxmitpriv->pxmit_frame_buf;
 	for (i = 0; i < NR_XMITFRAME; i++) {
 		INIT_LIST_HEAD(&(pxframe->list));
 		pxframe->padapter = padapter;
@@ -92,7 +93,7 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 		pxframe->buf_addr = NULL;
 		pxframe->pxmitbuf = NULL;
 		list_add_tail(&(pxframe->list),
-				 &(pxmitpriv->free_xmit_queue.queue));
+			      &(pxmitpriv->free_xmit_queue.queue));
 		pxframe++;
 	}
 	pxmitpriv->free_xmitframe_cnt = NR_XMITFRAME;
@@ -126,16 +127,16 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 	pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmitbuf;
 	for (i = 0; i < NR_XMITBUFF; i++) {
 		INIT_LIST_HEAD(&pxmitbuf->list);
-		pxmitbuf->pallocated_buf = kmalloc(MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ,
-						   GFP_ATOMIC);
+		pxmitbuf->pallocated_buf =
+			kmalloc(MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ, GFP_ATOMIC);
 		if (!pxmitbuf->pallocated_buf)
 			return _FAIL;
 		pxmitbuf->pbuf = pxmitbuf->pallocated_buf + XMITBUF_ALIGN_SZ -
-				 ((addr_t) (pxmitbuf->pallocated_buf) &
+				 ((addr_t)(pxmitbuf->pallocated_buf) &
 				 (XMITBUF_ALIGN_SZ - 1));
 		r8712_xmit_resource_alloc(padapter, pxmitbuf);
 		list_add_tail(&pxmitbuf->list,
-				 &(pxmitpriv->free_xmitbuf_queue.queue));
+			      &(pxmitpriv->free_xmitbuf_queue.queue));
 		pxmitbuf++;
 	}
 	pxmitpriv->free_xmitbuf_cnt = NR_XMITBUFF;
@@ -143,8 +144,8 @@ sint _r8712_init_xmit_priv(struct xmit_priv *pxmitpriv,
 	alloc_hwxmits(padapter);
 	init_hwxmits(pxmitpriv->hwxmits, pxmitpriv->hwxmit_entry);
 	tasklet_init(&pxmitpriv->xmit_tasklet,
-		(void(*)(unsigned long))r8712_xmit_bh,
-		(unsigned long)padapter);
+		     (void(*)(unsigned long))r8712_xmit_bh,
+		     (unsigned long)padapter);
 	return _SUCCESS;
 }
 
@@ -156,7 +157,7 @@ void _free_xmit_priv(struct xmit_priv *pxmitpriv)
 					pxmitpriv->pxmit_frame_buf;
 	struct xmit_buf *pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmitbuf;
 
-	if (pxmitpriv->pxmit_frame_buf == NULL)
+	if (!pxmitpriv->pxmit_frame_buf)
 		return;
 	for (i = 0; i < NR_XMITFRAME; i++) {
 		r8712_xmit_complete(padapter, pxmitframe);
@@ -173,7 +174,7 @@ void _free_xmit_priv(struct xmit_priv *pxmitpriv)
 }
 
 sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
-		   struct pkt_attrib *pattrib)
+			 struct pkt_attrib *pattrib)
 {
 	struct pkt_file pktfile;
 	struct sta_info *psta = NULL;
@@ -247,7 +248,7 @@ sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 		if (pktfile.pkt_len > 282) {/*MINIMUM_DHCP_PACKET_SIZE)*/
 			if (pattrib->ether_type == ETH_P_IP) {/* IP header*/
 				if (((tmp[21] == 68) && (tmp[23] == 67)) ||
-					((tmp[21] == 67) && (tmp[23] == 68))) {
+				    ((tmp[21] == 67) && (tmp[23] == 68))) {
 					/* 68 : UDP BOOTP client
 					 * 67 : UDP BOOTP server
 					 * Use low rate to send DHCP packet.
@@ -269,7 +270,7 @@ sint r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 			pattrib->mac_id = 5;
 		} else {
 			psta = r8712_get_stainfo(pstapriv, pattrib->ra);
-			if (psta == NULL)  /* drop the pkt */
+			if (!psta)  /* drop the pkt */
 				return _FAIL;
 			if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
 				pattrib->mac_id = 5;
@@ -362,7 +363,7 @@ static sint xmitframe_addmic(struct _adapter *padapter,
 					    &pattrib->ra[0]);
 	if (pattrib->encrypt == _TKIP_) {
 		/*encode mic code*/
-		if (stainfo != NULL) {
+		if (stainfo) {
 			u8 null_key[16] = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
 					   0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
 					   0x0, 0x0};
@@ -374,9 +375,9 @@ static sint xmitframe_addmic(struct _adapter *padapter,
 					return _FAIL;
 				/*start to calculate the mic code*/
 				r8712_secmicsetkey(&micdata,
-					 psecuritypriv->
-					 XGrptxmickey[psecuritypriv->
-					XGrpKeyid].skey);
+						   psecuritypriv->
+						   XGrptxmickey[psecuritypriv->
+						   XGrpKeyid].skey);
 			} else {
 				if (!memcmp(&stainfo->tkiptxmickey.skey[0],
 					    null_key, 16))
@@ -485,7 +486,7 @@ static sint make_wlanhdr(struct _adapter *padapter, u8 *hdr,
 			/* to_ds = 1, fr_ds = 0; */
 			SetToDs(fctrl);
 			memcpy(pwlanhdr->addr1, get_bssid(pmlmepriv),
-				ETH_ALEN);
+			       ETH_ALEN);
 			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
 			memcpy(pwlanhdr->addr3, pattrib->dst, ETH_ALEN);
 		} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
@@ -493,7 +494,7 @@ static sint make_wlanhdr(struct _adapter *padapter, u8 *hdr,
 			SetFrDs(fctrl);
 			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
 			memcpy(pwlanhdr->addr2, get_bssid(pmlmepriv),
-				ETH_ALEN);
+			       ETH_ALEN);
 			memcpy(pwlanhdr->addr3, pattrib->src, ETH_ALEN);
 		} else if (check_fwstate(pmlmepriv, WIFI_ADHOC_STATE) ||
 			   check_fwstate(pmlmepriv,
@@ -501,12 +502,12 @@ static sint make_wlanhdr(struct _adapter *padapter, u8 *hdr,
 			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
 			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
 			memcpy(pwlanhdr->addr3, get_bssid(pmlmepriv),
-				ETH_ALEN);
+			       ETH_ALEN);
 		} else if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
 			memcpy(pwlanhdr->addr1, pattrib->dst, ETH_ALEN);
 			memcpy(pwlanhdr->addr2, pattrib->src, ETH_ALEN);
 			memcpy(pwlanhdr->addr3, get_bssid(pmlmepriv),
-				ETH_ALEN);
+			       ETH_ALEN);
 		} else {
 			return _FAIL;
 		}
@@ -533,7 +534,7 @@ static sint make_wlanhdr(struct _adapter *padapter, u8 *hdr,
 				else
 					psta =
 					 r8712_get_stainfo(&padapter->stapriv,
-					 pattrib->ra);
+							   pattrib->ra);
 			}
 			if (psta) {
 				psta->sta_xmitpriv.txseq_tid
@@ -579,7 +580,7 @@ static sint r8712_put_snap(u8 *data, u16 h_proto)
  * 6. apply sw-encrypt, if necessary.
  */
 sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
-			struct xmit_frame *pxmitframe)
+			      struct xmit_frame *pxmitframe)
 {
 	struct pkt_file pktfile;
 
@@ -596,10 +597,10 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 	u8 *pbuf_start;
 	sint bmcst = IS_MCAST(pattrib->ra);
 
-	if (pattrib->psta == NULL)
+	if (!pattrib->psta)
 		return _FAIL;
 	psta = pattrib->psta;
-	if (pxmitframe->buf_addr == NULL)
+	if (!pxmitframe->buf_addr)
 		return _FAIL;
 	pbuf_start = pxmitframe->buf_addr;
 	ptxdesc = pbuf_start;
@@ -607,7 +608,7 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 	if (make_wlanhdr(padapter, mem_start, pattrib) == _FAIL)
 		return _FAIL;
 	_r8712_open_pktfile(pkt, &pktfile);
-	_r8712_pktfile_read(&pktfile, NULL, (uint) pattrib->pkt_hdrlen);
+	_r8712_pktfile_read(&pktfile, NULL, (uint)pattrib->pkt_hdrlen);
 	if (check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
 		/* truncate TXDESC_SIZE bytes txcmd if at mp mode for 871x */
 		if (pattrib->ether_type == 0x8712) {
@@ -627,7 +628,7 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 		mpdu_len -= pattrib->hdrlen;
 		/* adding icv, if necessary...*/
 		if (pattrib->iv_len) {
-			if (psta != NULL) {
+			if (psta) {
 				switch (pattrib->encrypt) {
 				case _WEP40_:
 				case _WEP104_:
@@ -638,9 +639,9 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 				case _TKIP_:
 					if (bmcst)
 						TKIP_IV(pattrib->iv,
-						    psta->txpn,
-						    (u8)psecuritypriv->
-						    XGrpKeyid);
+							psta->txpn,
+							(u8)psecuritypriv->
+							XGrpKeyid);
 					else
 						TKIP_IV(pattrib->iv, psta->txpn,
 							0);
@@ -648,8 +649,8 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 				case _AES_:
 					if (bmcst)
 						AES_IV(pattrib->iv, psta->txpn,
-						    (u8)psecuritypriv->
-						    XGrpKeyid);
+						       (u8)psecuritypriv->
+						       XGrpKeyid);
 					else
 						AES_IV(pattrib->iv, psta->txpn,
 						       0);
@@ -669,10 +670,10 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 			mpdu_len -= pattrib->icv_len;
 		if (bmcst)
 			mem_sz = _r8712_pktfile_read(&pktfile, pframe,
-				 pattrib->pktlen);
+						     pattrib->pktlen);
 		else
 			mem_sz = _r8712_pktfile_read(&pktfile, pframe,
-				 mpdu_len);
+						     mpdu_len);
 		pframe += mem_sz;
 		if ((pattrib->icv_len > 0) && (pattrib->bswenc)) {
 			memcpy(pframe, pattrib->icv, pattrib->icv_len);
@@ -718,7 +719,7 @@ void r8712_update_protection(struct _adapter *padapter, u8 *ie, uint ie_len)
 	case AUTO_VCS:
 	default:
 		perp = r8712_get_ie(ie, _ERPINFO_IE_, &erp_len, ie_len);
-		if (perp == NULL) {
+		if (!perp) {
 			pxmitpriv->vcs = NONE_VCS;
 		} else {
 			protection = (*(perp + 2)) & BIT(1);
@@ -757,7 +758,7 @@ int r8712_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 	unsigned long irqL;
 	struct  __queue *pfree_xmitbuf_queue = &pxmitpriv->free_xmitbuf_queue;
 
-	if (pxmitbuf == NULL)
+	if (!pxmitbuf)
 		return _FAIL;
 	spin_lock_irqsave(&pfree_xmitbuf_queue->lock, irqL);
 	list_del_init(&pxmitbuf->list);
@@ -811,7 +812,7 @@ void r8712_free_xmitframe(struct xmit_priv *pxmitpriv,
 	struct  __queue *pfree_xmit_queue = &pxmitpriv->free_xmit_queue;
 	struct _adapter *padapter = pxmitpriv->adapter;
 
-	if (pxmitframe == NULL)
+	if (!pxmitframe)
 		return;
 	spin_lock_irqsave(&pfree_xmit_queue->lock, irqL);
 	list_del_init(&pxmitframe->list);
@@ -825,9 +826,9 @@ void r8712_free_xmitframe(struct xmit_priv *pxmitpriv,
 }
 
 void r8712_free_xmitframe_ex(struct xmit_priv *pxmitpriv,
-		      struct xmit_frame *pxmitframe)
+			     struct xmit_frame *pxmitframe)
 {
-	if (pxmitframe == NULL)
+	if (!pxmitframe)
 		return;
 	if (pxmitframe->frame_tag == DATA_FRAMETAG)
 		r8712_free_xmitframe(pxmitpriv, pxmitframe);
@@ -855,7 +856,6 @@ static inline struct tx_servq *get_sta_pending(struct _adapter *padapter,
 					       struct  __queue **ppstapending,
 					       struct sta_info *psta, sint up)
 {
-
 	struct tx_servq *ptxservq;
 	struct hw_xmit *phwxmits =  padapter->xmitpriv.hwxmits;
 
@@ -913,15 +913,15 @@ sint r8712_xmit_classifier(struct _adapter *padapter,
 		} else {
 			if (check_fwstate(pmlmepriv, WIFI_MP_STATE))
 				psta = r8712_get_stainfo(pstapriv,
-				       get_bssid(pmlmepriv));
+							 get_bssid(pmlmepriv));
 			else
 				psta = r8712_get_stainfo(pstapriv, pattrib->ra);
 		}
 	}
-	if (psta == NULL)
+	if (!psta)
 		return _FAIL;
 	ptxservq = get_sta_pending(padapter, &pstapending,
-		   psta, pattrib->priority);
+				   psta, pattrib->priority);
 	spin_lock_irqsave(&pstapending->lock, irqL0);
 	if (list_empty(&ptxservq->tx_pending))
 		list_add_tail(&ptxservq->tx_pending, &pstapending->queue);
@@ -938,7 +938,7 @@ static void alloc_hwxmits(struct _adapter *padapter)
 
 	pxmitpriv->hwxmit_entry = HWXMIT_ENTRY;
 	pxmitpriv->hwxmits = kmalloc_array(pxmitpriv->hwxmit_entry,
-				sizeof(struct hw_xmit), GFP_ATOMIC);
+					   sizeof(struct hw_xmit), GFP_ATOMIC);
 	if (!pxmitpriv->hwxmits)
 		return;
 	hwxmits = pxmitpriv->hwxmits;
@@ -994,7 +994,7 @@ static void init_hwxmits(struct hw_xmit *phwxmit, sint entry)
 }
 
 void xmitframe_xmitbuf_attach(struct xmit_frame *pxmitframe,
-			struct xmit_buf *pxmitbuf)
+			      struct xmit_buf *pxmitbuf)
 {
 	/* pxmitbuf attach to pxmitframe */
 	pxmitframe->pxmitbuf = pxmitbuf;
@@ -1030,7 +1030,7 @@ int r8712_pre_xmit(struct _adapter *padapter, struct xmit_frame *pxmitframe)
 		return ret;
 	}
 	pxmitbuf = r8712_alloc_xmitbuf(pxmitpriv);
-	if (pxmitbuf == NULL) { /*enqueue packet*/
+	if (!pxmitbuf) { /*enqueue packet*/
 		ret = false;
 		r8712_xmit_enqueue(padapter, pxmitframe);
 		spin_unlock_irqrestore(&pxmitpriv->lock, irqL);
-- 
2.22.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
