Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 50ED0293F6E
	for <lists+driverdev-devel@lfdr.de>; Tue, 20 Oct 2020 17:19:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 01E2486D69;
	Tue, 20 Oct 2020 15:19:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id o+2t+d5tGP27; Tue, 20 Oct 2020 15:19:21 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 66FF586D8B;
	Tue, 20 Oct 2020 15:19:19 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 923681BF82F
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 15:19:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 8EDC885321
 for <devel@linuxdriverproject.org>; Tue, 20 Oct 2020 15:19:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tZlhWeR3ZZE5 for <devel@linuxdriverproject.org>;
 Tue, 20 Oct 2020 15:19:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
 [209.85.167.68])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CF98C80665
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 15:19:15 +0000 (UTC)
Received: by mail-lf1-f68.google.com with SMTP id a9so2579222lfc.7
 for <devel@driverdev.osuosl.org>; Tue, 20 Oct 2020 08:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5i2mmi1JiWQdNqP1TP5E+MVpmgLbYK2EilxrZvQx7bI=;
 b=mDpR3RZ8vAagdZ5IvK94dNu85bT8nxiWuNOAxdzYZksIE/1sEK0uSYHVLrKMzG1w1e
 L1nG8EJ1E2LVlHLimBQstUO+XwZb31tyNna0fq1eoGn+hOT72rRnVmkxW3DTAetNNRw6
 hk9WmyJ59+VpAj+/qgq27Hwl/PbK3q5Rh0wSpU/TYDm7jLhBZ2Wy4qR2rpi+LCw82n4o
 QoMuRPdKyzzFmC953c35fyEUtYwHQWG5A8g4662bmDUdbsIHNwcbgRE8RUepET+EsloG
 8bQRBaA90pmskV5vi4NeQrUszpcxEO4hStYjw5KKwiyfE1L0wXgMs5ELJqMnjodSU/5N
 QuLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5i2mmi1JiWQdNqP1TP5E+MVpmgLbYK2EilxrZvQx7bI=;
 b=Dt8eIS2Xm0HeAwT8mc51JzT8e7mky9K+U6EkI2phFtUtULMpJtE8PJUu2Ft+saLteE
 C7PWfJRCNRvHjGyy2adCEhyPNgdkjPbQCn004eWSFT6WsE0OqQvIRWzThaN4celOX/pF
 +FnOcb8euWakKLBpS173myiBWob3lmi7/KfBMTLTDxu3k6A2iSmUy+B3tg5dvJXmwbLm
 I37ZARpaGyrCAvDBCsb3wfCNrvYh8bz3cBpx6LjnIYKbK6vXrDyAptACOARlltO4z8pL
 xesicE2pR/iLjvTuRr+hugCbmF/qDz03sR48UiEQsbmXykRaIs+ytq2TTC6Gz2OmVwOL
 LZrg==
X-Gm-Message-State: AOAM533PfOgM8tuy41RDwfUg+3a5j8w457MLaCEn4t64ZJitxsCJjyQD
 DlQsPSVWxpkb4z/iAYMWBJU=
X-Google-Smtp-Source: ABdhPJwULF01bpnh/d+dRBydMgteUUI7nfYdXFTDiQBDXFRH5Ew5q0z1Lr18TYpQ/JO+OacxuZ+O6Q==
X-Received: by 2002:a19:dc5:: with SMTP id 188mr1116981lfn.272.1603207153778; 
 Tue, 20 Oct 2020 08:19:13 -0700 (PDT)
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru.
 [37.145.186.126])
 by smtp.gmail.com with ESMTPSA id x4sm351012lfn.280.2020.10.20.08.19.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Oct 2020 08:19:13 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH] staging/rtl8188eu: fix line length exceeds 100 columns
Date: Tue, 20 Oct 2020 08:17:48 -0700
Message-Id: <20201020151748.35937-1-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
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
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
 Elena Afanasova <eafanasova@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Reported by checkpatch.pl

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_xmit.c | 118 +++++++++++++++-------
 1 file changed, 81 insertions(+), 37 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index 317355f830cb..51769f2ca910 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -44,7 +44,9 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 	u32 max_xmit_extbuf_size = MAX_XMIT_EXTBUF_SZ;
 	u32 num_xmit_extbuf = NR_XMIT_EXTBUFF;
 
-	/*  We don't need to memset padapter->XXX to zero, because adapter is allocated by vzalloc(). */
+	/*  We don't need to memset padapter->XXX to zero,
+	 *  because adapter is allocated by vzalloc().
+	 */
 
 	spin_lock_init(&pxmitpriv->lock);
 
@@ -127,7 +129,8 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 		res = rtw_os_xmit_resource_alloc(pxmitbuf, (MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ));
 		if (res == _FAIL) {
 			msleep(10);
-			res = rtw_os_xmit_resource_alloc(pxmitbuf, (MAX_XMITBUF_SZ + XMITBUF_ALIGN_SZ));
+			res = rtw_os_xmit_resource_alloc(pxmitbuf, (MAX_XMITBUF_SZ +
+									XMITBUF_ALIGN_SZ));
 			if (res == _FAIL)
 				goto exit;
 		}
@@ -441,7 +444,9 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 				    ((tmp[21] == 67) && (tmp[23] == 68))) {
 					/*  68 : UDP BOOTP client */
 					/*  67 : UDP BOOTP server */
-					RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("====================== %s: get DHCP Packet\n", __func__));
+					RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
+						 ("====================== %s: get DHCP Packet\n",
+						 __func__));
 					/*  Use low rate to send DHCP packet. */
 					pattrib->dhcp_pkt = 1;
 				}
@@ -455,7 +460,9 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 		rtw_set_scan_deny(padapter, 3000);
 
 	/*  If EAPOL , ARP , OR DHCP packet, driver must be in active mode. */
-	if ((pattrib->ether_type == ETH_P_ARP) || (pattrib->ether_type == ETH_P_PAE) || (pattrib->dhcp_pkt == 1))
+	if ((pattrib->ether_type == ETH_P_ARP) ||
+	    (pattrib->ether_type == ETH_P_PAE) ||
+	    (pattrib->dhcp_pkt == 1))
 		rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_SPECIAL_PACKET, 1);
 
 	mcast = is_multicast_ether_addr(pattrib->ra);
@@ -466,7 +473,9 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 	} else {
 		psta = rtw_get_stainfo(pstapriv, pattrib->ra);
 		if (!psta) { /*  if we cannot get psta => drrp the pkt */
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("\nupdate_attrib => get sta_info fail, ra: %pM\n", (pattrib->ra)));
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_,
+				 ("\nupdate_attrib => get sta_info fail, ra: %pM\n",
+				 (pattrib->ra)));
 			res = _FAIL;
 			goto exit;
 		} else if (check_fwstate(pmlmepriv, WIFI_AP_STATE) &&
@@ -482,7 +491,9 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 		pattrib->psta = psta;
 	} else {
 		/*  if we cannot get psta => drop the pkt */
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_, ("\nupdate_attrib => get sta_info fail, ra:%pM\n", (pattrib->ra)));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_alert_,
+			 ("\nupdate_attrib => get sta_info fail, ra:%pM\n",
+			 (pattrib->ra)));
 		res = _FAIL;
 		goto exit;
 	}
@@ -507,7 +518,8 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 	}
 
 	if (psta->ieee8021x_blocked) {
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("\n psta->ieee8021x_blocked == true\n"));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
+			 ("\n psta->ieee8021x_blocked == true\n"));
 
 		pattrib->encrypt = 0;
 
@@ -556,7 +568,8 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
 		}
 		break;
 	case _AES_:
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("pattrib->encrypt=%d (_AES_)\n", pattrib->encrypt));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_,
+			 ("pattrib->encrypt=%d (_AES_)\n", pattrib->encrypt));
 		pattrib->iv_len = 8;
 		pattrib->icv_len = 8;
 		break;
@@ -647,7 +660,7 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 			for (curfragnum = 0; curfragnum < pattrib->nr_frags; curfragnum++) {
 				payload = (u8 *)round_up((size_t)(payload), 4);
 				RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
-					 ("=== curfragnum=%d, pframe = 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x,!!!\n",
+					 ("curfrnum=%d: %.2x-%.2x-%.2x-%.2x-%.2x-%.2x-%.2x-%.2x\n",
 					 curfragnum, *payload, *(payload + 1),
 					 *(payload + 2), *(payload + 3),
 					 *(payload + 4), *(payload + 5),
@@ -673,21 +686,28 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 						  pattrib->icv_len : 0);
 					rtw_secmicappend(&micdata, payload, length);
 					payload += length + pattrib->icv_len;
-					RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("curfragnum=%d length=%d pattrib->icv_len=%d", curfragnum, length, pattrib->icv_len));
+					RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
+						 ("curfragnum=%d length=%d pattrib->icv_len=%d",
+						 curfragnum, length, pattrib->icv_len));
 				}
 			}
 			rtw_secgetmic(&micdata, &mic[0]);
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: before add mic code!!!\n", __func__));
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: pattrib->last_txcmdsz=%d!!!\n", __func__, pattrib->last_txcmdsz));
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: mic[0]=0x%.2x , mic[1]=0x%.2x , mic[2]= 0x%.2x, mic[3]=0x%.2x\n\
-  mic[4]= 0x%.2x , mic[5]= 0x%.2x , mic[6]= 0x%.2x , mic[7]= 0x%.2x !!!!\n",
-				__func__, mic[0], mic[1], mic[2], mic[3], mic[4], mic[5], mic[6], mic[7]));
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
+				 ("%s: before add mic code!!!\n", __func__));
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
+				 ("%s: pattrib->last_txcmdsz=%d!!!\n",
+				 __func__, pattrib->last_txcmdsz));
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
+				 ("%s: mic: %.2x-%.2x-%.2x-%.2x-%.2x-%.2x-%.2x-%.2x !!!!\n",
+				 __func__, mic[0], mic[1], mic[2], mic[3], mic[4], mic[5],
+				 mic[6], mic[7]));
 			/* add mic code  and add the mic code length in last_txcmdsz */
 
 			memcpy(payload, &mic[0], 8);
 			pattrib->last_txcmdsz += 8;
 
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_, ("\n ======== last pkt ========\n"));
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_,
+				 ("\n ======== last pkt ========\n"));
 			payload -= pattrib->last_txcmdsz + 8;
 			for (curfragnum = 0; curfragnum < pattrib->last_txcmdsz; curfragnum += 8)
 				RT_TRACE(_module_rtl871x_xmit_c_, _drv_info_,
@@ -697,7 +717,8 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 					 *(payload + curfragnum + 4), *(payload + curfragnum + 5),
 					 *(payload + curfragnum + 6), *(payload + curfragnum + 7)));
 			} else {
-				RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: rtw_get_stainfo==NULL!!!\n", __func__));
+				RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
+					 ("%s: rtw_get_stainfo==NULL!!!\n", __func__));
 			}
 	}
 
@@ -787,7 +808,9 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 			if (psta && psta->qos_option)
 				qos_option = true;
 		} else {
-			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("fw_state:%x is not allowed to xmit frame\n", get_fwstate(pmlmepriv)));
+			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
+				 ("fw_state:%x is not allowed to xmit frame\n",
+				 get_fwstate(pmlmepriv)));
 			res = _FAIL;
 			goto exit;
 		}
@@ -836,11 +859,13 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 				if (SN_LESS(pattrib->seqnum, tx_seq)) {
 					pattrib->ampdu_en = false;/* AGG BK */
 				} else if (SN_EQUAL(pattrib->seqnum, tx_seq)) {
-					psta->BA_starting_seqctrl[pattrib->priority & 0x0f] = (tx_seq + 1) & 0xfff;
+					psta->BA_starting_seqctrl[pattrib->priority & 0x0f] =
+									(tx_seq + 1) & 0xfff;
 
 					pattrib->ampdu_en = true;/* AGG EN */
 				} else {
-					psta->BA_starting_seqctrl[pattrib->priority & 0x0f] = (pattrib->seqnum + 1) & 0xfff;
+					psta->BA_starting_seqctrl[pattrib->priority & 0x0f] =
+								(pattrib->seqnum + 1) & 0xfff;
 					pattrib->ampdu_en = true;/* AGG EN */
 				}
 			}
@@ -904,7 +929,8 @@ s32 rtw_txframes_sta_ac_pending(struct adapter *padapter, struct pkt_attrib *pat
  * 6. apply sw-encrypt, if necessary.
  *
  */
-s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct xmit_frame *pxmitframe)
+s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt,
+			   struct xmit_frame *pxmitframe)
 {
 	s32 frg_inx, frg_len, mpdu_len, llc_sz, mem_sz;
 	size_t addr;
@@ -935,7 +961,8 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct
 	mem_start = pbuf_start +	hw_hdr_offset;
 
 	if (rtw_make_wlanhdr(padapter, mem_start, pattrib) == _FAIL) {
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: rtw_make_wlanhdr fail; drop pkt\n", __func__));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
+			 ("%s: rtw_make_wlanhdr fail; drop pkt\n", __func__));
 		DBG_88E("%s: rtw_make_wlanhdr fail; drop pkt\n", __func__);
 		res = _FAIL;
 		goto exit;
@@ -1016,15 +1043,18 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct
 		if (mcast || remainder == 0) {
 			pattrib->nr_frags = frg_inx;
 
-			pattrib->last_txcmdsz = pattrib->hdrlen + pattrib->iv_len + ((pattrib->nr_frags == 1) ? llc_sz : 0) +
-						((pattrib->bswenc) ? pattrib->icv_len : 0) + mem_sz;
+			pattrib->last_txcmdsz = pattrib->hdrlen + pattrib->iv_len +
+						((pattrib->nr_frags == 1) ? llc_sz : 0) +
+						((pattrib->bswenc) ? pattrib->icv_len : 0) +
+						mem_sz;
 
 			ClearMFrag(mem_start);
 
 			break;
 		}
 
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: There're still something in packet!\n", __func__));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
+			 ("%s: There're still something in packet!\n", __func__));
 
 		addr = (size_t)(pframe);
 
@@ -1036,7 +1066,8 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct
 	rtl88eu_mon_xmit_hook(padapter->pmondev, pxmitframe, frg_len);
 
 	if (xmitframe_addmic(padapter, pxmitframe) == _FAIL) {
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("xmitframe_addmic(padapter, pxmitframe) == _FAIL\n"));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
+			 ("xmitframe_addmic(padapter, pxmitframe) == _FAIL\n"));
 		DBG_88E("xmitframe_addmic(padapter, pxmitframe) == _FAIL\n");
 		res = _FAIL;
 		goto exit;
@@ -1297,7 +1328,8 @@ s32 rtw_free_xmitframe(struct xmit_priv *pxmitpriv, struct xmit_frame *pxmitfram
 	struct sk_buff *pndis_pkt = NULL;
 
 	if (!pxmitframe) {
-		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("====== %s:pxmitframe == NULL!!!!!!!!!!\n", __func__));
+		RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
+			 ("====== %s:pxmitframe == NULL!!!!!!!!!!\n", __func__));
 		goto exit;
 	}
 
@@ -1313,7 +1345,8 @@ s32 rtw_free_xmitframe(struct xmit_priv *pxmitpriv, struct xmit_frame *pxmitfram
 	list_add_tail(&pxmitframe->list, get_list_head(pfree_xmit_queue));
 
 	pxmitpriv->free_xmitframe_cnt++;
-	RT_TRACE(_module_rtl871x_xmit_c_, _drv_debug_, ("%s:free_xmitframe_cnt=%d\n", __func__, pxmitpriv->free_xmitframe_cnt));
+	RT_TRACE(_module_rtl871x_xmit_c_, _drv_debug_,
+		 ("%s:free_xmitframe_cnt=%d\n", __func__, pxmitpriv->free_xmitframe_cnt));
 
 	spin_unlock_bh(&pfree_xmit_queue->lock);
 
@@ -1355,7 +1388,9 @@ s32 rtw_xmitframe_enqueue(struct adapter *padapter, struct xmit_frame *pxmitfram
 	return _SUCCESS;
 }
 
-static struct xmit_frame *dequeue_one_xmitframe(struct xmit_priv *pxmitpriv, struct hw_xmit *phwxmit, struct tx_servq *ptxservq, struct __queue *pframe_queue)
+static struct xmit_frame *
+dequeue_one_xmitframe(struct xmit_priv *pxmitpriv, struct hw_xmit *phwxmit,
+		      struct tx_servq *ptxservq, struct __queue *pframe_queue)
 {
 	struct list_head *xmitframe_plist, *xmitframe_phead;
 	struct	xmit_frame	*pxmitframe = NULL;
@@ -1375,7 +1410,8 @@ static struct xmit_frame *dequeue_one_xmitframe(struct xmit_priv *pxmitpriv, str
 	return pxmitframe;
 }
 
-struct xmit_frame *rtw_dequeue_xframe(struct xmit_priv *pxmitpriv, struct hw_xmit *phwxmit_i, int entry)
+struct xmit_frame *
+rtw_dequeue_xframe(struct xmit_priv *pxmitpriv, struct hw_xmit *phwxmit_i, int entry)
 {
 	struct list_head *sta_plist, *sta_phead;
 	struct hw_xmit *phwxmit;
@@ -1408,13 +1444,18 @@ struct xmit_frame *rtw_dequeue_xframe(struct xmit_priv *pxmitpriv, struct hw_xmi
 
 			pframe_queue = &ptxservq->sta_pending;
 
-			pxmitframe = dequeue_one_xmitframe(pxmitpriv, phwxmit, ptxservq, pframe_queue);
+			pxmitframe = dequeue_one_xmitframe(pxmitpriv,
+							   phwxmit,
+							   ptxservq,
+							   pframe_queue);
 
 			if (pxmitframe) {
 				phwxmit->accnt--;
 
-				/* Remove sta node when there are no pending packets. */
-				if (list_empty(&pframe_queue->queue)) /* must be done after get_next and before break */
+				/* Remove sta node when there are no pending packets.
+				 * must be done after get_next and before break
+				 */
+				if (list_empty(&pframe_queue->queue))
 					list_del_init(&ptxservq->tx_pending);
 				goto exit;
 			}
@@ -1670,8 +1711,8 @@ int xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fra
 			pstapriv->tim_bitmap |= BIT(0);/*  */
 			pstapriv->sta_dz_bitmap |= BIT(0);
 
-			update_beacon(padapter, WLAN_EID_TIM, NULL, false);/* tx bc/mc packets after update bcn */
-
+			/* tx bc/mc packets after update bcn */
+			update_beacon(padapter, WLAN_EID_TIM, NULL, false);
 			ret = true;
 		}
 
@@ -1733,7 +1774,9 @@ int xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fra
 	return ret;
 }
 
-static void dequeue_xmitframes_to_sleeping_queue(struct adapter *padapter, struct sta_info *psta, struct __queue *pframequeue)
+static void dequeue_xmitframes_to_sleeping_queue(struct adapter *padapter,
+						 struct sta_info *psta,
+						 struct __queue *pframequeue)
 {
 	struct list_head *plist, *phead;
 	u8	ac_index;
@@ -1754,7 +1797,8 @@ static void dequeue_xmitframes_to_sleeping_queue(struct adapter *padapter, struc
 
 		pattrib = &pxmitframe->attrib;
 
-		ptxservq = rtw_get_sta_pending(padapter, psta, pattrib->priority, (u8 *)(&ac_index));
+		ptxservq = rtw_get_sta_pending(padapter, psta, pattrib->priority,
+					       (u8 *)(&ac_index));
 
 		ptxservq->qcnt--;
 		phwxmits[ac_index].accnt--;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
