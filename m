Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id DD84B2ACE59
	for <lists+driverdev-devel@lfdr.de>; Tue, 10 Nov 2020 05:10:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id B918920457;
	Tue, 10 Nov 2020 04:10:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3JVhiW-aZwb1; Tue, 10 Nov 2020 04:10:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id B7D4020394;
	Tue, 10 Nov 2020 04:10:28 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id A99CF1BF34E
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 04:10:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id A32A584AE7
 for <devel@linuxdriverproject.org>; Tue, 10 Nov 2020 04:10:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id K5YKfYJutJfF for <devel@linuxdriverproject.org>;
 Tue, 10 Nov 2020 04:10:22 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-il1-f196.google.com (mail-il1-f196.google.com
 [209.85.166.196])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 06AD784A5F
 for <devel@driverdev.osuosl.org>; Tue, 10 Nov 2020 04:10:22 +0000 (UTC)
Received: by mail-il1-f196.google.com with SMTP id n5so10503070ile.7
 for <devel@driverdev.osuosl.org>; Mon, 09 Nov 2020 20:10:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=vEmyyaO/iBo3JQkoxgmdKXA0iLMhHAIUwVW3XylbTtM=;
 b=nbmudVV0eT7nGqc0pbuVd2ObQVp5kj6i6iIS/FhWcpCh/+D6oKuIgis49kAPfWUarm
 VVSdCtYhAQcyLaS8vx4ykquoigkSGUYFQDmv3WNcrCEWJ64CkaGmthOn71aefbZ08GhE
 nIdFdL2RjSBIIHbOcCQSmpCwyUpCMieYoikz6cnhozLgHSBiCGszQGthlE6pjTWJEube
 mPpWMYVNHKEIm9rpnctiBiRKDQG+tABrPd25ZFi1246rkZIF3bFfvR+jHz+PrY7HSg5c
 EQQAVSBlCfIG91CMK9W5NNEm1oH1ZS1eQPmWfjzA5P8fhkDAvQdmziH+tzByneiTLQkr
 sj/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=vEmyyaO/iBo3JQkoxgmdKXA0iLMhHAIUwVW3XylbTtM=;
 b=XU8cqeYyIA7mbri2paRZ/RvMnMfnh7lZZXJu3vdijVzD37LcQ0xYWiGEi6N2CUnq31
 gt4VNmpFjgWED/JlnhQSEdJvLjnKivEUQCn8fNDkeuXPra35bTwG+hY4LZdCxcsxgE26
 l1GgloEMvKecQg3JECNcUQpzshf2d/OKa6/6vxHpe009/V1MmEkNEI7iQZFM+r9vGG/T
 VLY31chr+009+pyXUH06uEg6j8l3D9f0tN5k9mNWscrKXkoNW0QrpGU0aMsQv3rc+Ac0
 rAz9yjVNnGuXMAY3FPfw1+a8bDh440PGECcffOKJxcd/dYp1G0z8L/jeAWmPbOrS863k
 WHKQ==
X-Gm-Message-State: AOAM533+8gEwVNrgWK/fyyj2C1L6EH+T6sCzOdm/Xmbx4C+rxyx/0BZo
 G6c3qhzhLdWPSI2PmFzofUA=
X-Google-Smtp-Source: ABdhPJwXM58rYYC/o6K+ARRKFMLj7xPZoldtDa5BmdByYbh/aRXDGzjGgsNtrWsav81vAkYLaak4dw==
X-Received: by 2002:a05:6e02:1049:: with SMTP id
 p9mr8226625ilj.102.1604981421256; 
 Mon, 09 Nov 2020 20:10:21 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id e21sm6658842ioc.0.2020.11.09.20.10.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 20:10:20 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 02/10] staging: rtl8723bs: clean up braces
Date: Mon,  9 Nov 2020 22:10:00 -0600
Message-Id: <20201110041008.15847-2-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201110041008.15847-1-ross.schm.dev@gmail.com>
References: <20201110041008.15847-1-ross.schm.dev@gmail.com>
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

Add or remove braces or remove lines to fix coding style issues and
clear checkpatch.

WARNING: braces {} are not necessary for single statement blocks
WARNING: braces {} are not necessary for any arm of this statement
CHECK: Unbalanced braces around else statement
CHECK: braces {} should be used on all arms of this statement
CHECK: Blank lines aren't necessary before a close brace '}'
CHECK: Blank lines aren't necessary after an open brace '{'

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 42 ++++++++++---------
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c  | 11 +----
 .../staging/rtl8723bs/core/rtw_wlan_util.c    | 23 ++++++----
 drivers/staging/rtl8723bs/core/rtw_xmit.c     | 23 ++++++----
 4 files changed, 52 insertions(+), 47 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index 894e7beae96f..85f1164f7960 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -1336,8 +1336,9 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 			hdrlen += 2;
 
 		qc_exists = 1;
-	} else
+	} else {
 		qc_exists = 0;
+	}
 
 	pn_vector[0] = pframe[hdrlen];
 	pn_vector[1] = pframe[hdrlen+1];
@@ -1393,9 +1394,9 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 	if (payload_remainder > 0) {
 		for (j = 0; j < 16; j++)
 			padded_buffer[j] = 0x00;
-		for (j = 0; j < payload_remainder; j++) {
+		for (j = 0; j < payload_remainder; j++)
 			padded_buffer[j] = pframe[payload_index++];
-		}
+
 		bitwise_xor(aes_out, padded_buffer, chain_buffer);
 		aes128k128d(key, chain_buffer, aes_out);
 	}
@@ -1576,20 +1577,21 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	    ((frtype|frsubtype) == WIFI_DATA_CFPOLL) ||
 	    ((frtype|frsubtype) == WIFI_DATA_CFACKPOLL)) {
 		qc_exists = 1;
-		if (hdrlen !=  WLAN_HDR_A3_QOS_LEN) {
+		if (hdrlen !=  WLAN_HDR_A3_QOS_LEN)
 			hdrlen += 2;
-		}
+
 	} else if ((frtype == WIFI_DATA) && /* only for data packet . add for CONFIG_IEEE80211W, none 11w also can use */
 		   ((frsubtype == 0x08) ||
 		   (frsubtype == 0x09) ||
 		   (frsubtype == 0x0a) ||
 		   (frsubtype == 0x0b))) {
-		if (hdrlen !=  WLAN_HDR_A3_QOS_LEN) {
+		if (hdrlen !=  WLAN_HDR_A3_QOS_LEN)
 			hdrlen += 2;
-		}
+
 		qc_exists = 1;
-	} else
+	} else {
 		qc_exists = 0;
+	}
 
 	/*  now, decrypt pframe with hdrlen offset and plen long */
 
@@ -1623,9 +1625,9 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 
 		for (j = 0; j < 16; j++)
 			padded_buffer[j] = 0x00;
-		for (j = 0; j < payload_remainder; j++) {
+		for (j = 0; j < payload_remainder; j++)
 			padded_buffer[j] = pframe[payload_index+j];
-		}
+
 		aes128k128d(key, ctr_preload, aes_out);
 		bitwise_xor(aes_out, padded_buffer, chain_buffer);
 		for (j = 0; j < payload_remainder; j++)
@@ -1690,9 +1692,9 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	if (payload_remainder > 0) {
 		for (j = 0; j < 16; j++)
 			padded_buffer[j] = 0x00;
-		for (j = 0; j < payload_remainder; j++) {
+		for (j = 0; j < payload_remainder; j++)
 			padded_buffer[j] = message[payload_index++];
-		}
+
 		bitwise_xor(aes_out, padded_buffer, chain_buffer);
 		aes128k128d(key, chain_buffer, aes_out);
 	}
@@ -1736,9 +1738,9 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 
 		for (j = 0; j < 16; j++)
 			padded_buffer[j] = 0x00;
-		for (j = 0; j < payload_remainder; j++) {
+		for (j = 0; j < payload_remainder; j++)
 			padded_buffer[j] = message[payload_index+j];
-		}
+
 		aes128k128d(key, ctr_preload, aes_out);
 		bitwise_xor(aes_out, padded_buffer, chain_buffer);
 		for (j = 0; j < payload_remainder; j++)
@@ -1758,9 +1760,8 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 
 	for (j = 0; j < 16; j++)
 		padded_buffer[j] = 0x00;
-	for (j = 0; j < 8; j++) {
+	for (j = 0; j < 8; j++)
 		padded_buffer[j] = message[j+hdrlen+8+plen-8];
-	}
 
 	aes128k128d(key, ctr_preload, aes_out);
 	bitwise_xor(aes_out, padded_buffer, chain_buffer);
@@ -1856,8 +1857,9 @@ u32 rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
 					res = _FAIL;
 					goto exit;
 				}
-			} else
+			} else {
 				prwskey = &stainfo->dot118021x_UncstKey.skey[0];
+			}
 
 			length = ((union recv_frame *)precvframe)->u.hdr.len-prxattrib->hdrlen-prxattrib->iv_len;
 
@@ -1941,11 +1943,13 @@ u32 rtw_BIP_verify(struct adapter *padapter, u8 *precvframe)
 		if (!memcmp(mic, pframe+pattrib->pkt_len-8, 8)) {
 			pmlmeext->mgnt_80211w_IPN_rx = temp_ipn;
 			res = _SUCCESS;
-		} else
+		} else {
 			DBG_871X("BIP MIC error!\n");
+		}
 
-	} else
+	} else {
 		res = RTW_RX_HANDLED;
+	}
 BIP_exit:
 
 	kfree(BIP_AAD);
diff --git a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
index f24ad8b1a400..6e9785c21cf8 100644
--- a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
@@ -154,7 +154,6 @@ u32 _rtw_free_sta_priv(struct	sta_priv *pstapriv)
 	int	index;
 
 	if (pstapriv) {
-
 		/*delete all reordering_ctrl_timer		*/
 		spin_lock_bh(&pstapriv->sta_hash_lock);
 		for (index = 0; index < NUM_STA; index++) {
@@ -179,7 +178,6 @@ u32 _rtw_free_sta_priv(struct	sta_priv *pstapriv)
 		kfree_sta_priv_lock(pstapriv);
 
 		vfree(pstapriv->pallocated_stainfo_buf);
-
 	}
 	return _SUCCESS;
 }
@@ -241,9 +239,8 @@ struct	sta_info *rtw_alloc_stainfo(struct	sta_priv *pstapriv, u8 *hwaddr)
 /*  In this case, this packet will be dropped by recv_decache function if we use the 0x00 as the default value for tid_rxseq variable. */
 /*  So, we initialize the tid_rxseq variable as the 0xffff. */
 
-		for (i = 0; i < 16; i++) {
+		for (i = 0; i < 16; i++)
 			memcpy(&psta->sta_recvpriv.rxcache.tid_rxseq[i], &wRxSeqInitialValue, 2);
-		}
 
 		RT_TRACE(
 			_module_rtl871x_sta_mgt_c_,
@@ -292,7 +289,6 @@ struct	sta_info *rtw_alloc_stainfo(struct	sta_priv *pstapriv, u8 *hwaddr)
 		spin_unlock_bh(&(pstapriv->sta_hash_lock));
 		/* alloc mac id for non-bc/mc station, */
 		rtw_alloc_macid(pstapriv->padapter, psta);
-
 	}
 
 exit:
@@ -420,7 +416,6 @@ u32 rtw_free_stainfo(struct adapter *padapter, struct sta_info *psta)
 		}
 
 		spin_unlock_bh(&ppending_recvframe_queue->lock);
-
 	}
 
 	if (!(psta->state & WIFI_AP_STATE))
@@ -496,7 +491,6 @@ void rtw_free_all_stainfo(struct adapter *padapter)
 
 			if (pbcmc_stainfo != psta)
 				rtw_free_stainfo(padapter, psta);
-
 		}
 	}
 
@@ -528,7 +522,6 @@ struct sta_info *rtw_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 	plist = get_next(phead);
 
 	while (phead != plist) {
-
 		psta = LIST_CONTAINOR(plist, struct sta_info, hash_list);
 
 		if ((!memcmp(psta->hwaddr, addr, ETH_ALEN)))
@@ -545,7 +538,6 @@ struct sta_info *rtw_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 
 u32 rtw_init_bcmc_stainfo(struct adapter *padapter)
 {
-
 	struct sta_info *psta;
 	u32 res = _SUCCESS;
 	NDIS_802_11_MAC_ADDRESS	bcast_addr = {0xff, 0xff, 0xff, 0xff, 0xff, 0xff};
@@ -598,7 +590,6 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
 				match = true;
 				break;
 			}
-
 	}
 	spin_unlock_bh(&(pacl_node_q->lock));
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index f28536fbc4fb..2fedaa1b4870 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -957,9 +957,10 @@ static void bwmode_update_check(struct adapter *padapter, struct ndis_80211_var_
 	if (pmlmeext->cur_channel > 14) {
 		if ((pregistrypriv->bw_mode & 0xf0) > 0)
 			cbw40_enable = 1;
-	} else
+	} else {
 		if ((pregistrypriv->bw_mode & 0x0f) > 0)
 			cbw40_enable = 1;
+	}
 
 	if ((pHT_info->infos[0] & BIT(2)) && cbw40_enable) {
 		new_bwmode = CHANNEL_WIDTH_40;
@@ -991,8 +992,9 @@ static void bwmode_update_check(struct adapter *padapter, struct ndis_80211_var_
 
 		/* update HT info also */
 		HT_info_handler(padapter, pIE);
-	} else
+	} else {
 		pmlmeinfo->bwmode_updated = false;
+	}
 
 	if (true == pmlmeinfo->bwmode_updated) {
 		struct sta_info *psta;
@@ -1521,8 +1523,9 @@ unsigned int is_ap_in_tkip(struct adapter *padapter)
 		}
 
 		return false;
-	} else
+	} else {
 		return false;
+	}
 }
 
 int support_short_GI(struct adapter *padapter, struct HT_caps_element *pHT_caps, u8 bwmode)
@@ -1626,8 +1629,9 @@ unsigned char check_assoc_AP(u8 *pframe, uint len)
 			} else if (!memcmp(pIE->data, AIRGOCAP_OUI, 3)) {
 				DBG_871X("link to Airgo Cap\n");
 				return HT_IOT_PEER_AIRGO;
-			} else
+			} else {
 				break;
+			}
 
 		default:
 			break;
@@ -1697,23 +1701,24 @@ void update_capinfo(struct adapter *Adapter, u16 updateCap)
 		}
 	}
 
-	if (updateCap & cIBSS)
+	if (updateCap & cIBSS) {
 		/* Filen: See 802.11-2007 p.91 */
 		pmlmeinfo->slotTime = NON_SHORT_SLOT_TIME;
-	else {
+	} else {
 		/* Filen: See 802.11-2007 p.90 */
-		if (pmlmeext->cur_wireless_mode & (WIRELESS_11_24N | WIRELESS_11A | WIRELESS_11_5N | WIRELESS_11AC))
+		if (pmlmeext->cur_wireless_mode & (WIRELESS_11_24N | WIRELESS_11A | WIRELESS_11_5N | WIRELESS_11AC)) {
 			pmlmeinfo->slotTime = SHORT_SLOT_TIME;
-		else if (pmlmeext->cur_wireless_mode & (WIRELESS_11G)) {
+		} else if (pmlmeext->cur_wireless_mode & (WIRELESS_11G)) {
 			if ((updateCap & cShortSlotTime) /* && (!(pMgntInfo->pHTInfo->RT2RT_HT_Mode & RT_HT_CAP_USE_LONG_PREAMBLE)) */)
 				/*  Short Slot Time */
 				pmlmeinfo->slotTime = SHORT_SLOT_TIME;
 			else
 				/*  Long Slot Time */
 				pmlmeinfo->slotTime = NON_SHORT_SLOT_TIME;
-		} else
+		} else {
 			/* B Mode */
 			pmlmeinfo->slotTime = NON_SHORT_SLOT_TIME;
+		}
 	}
 
 	rtw_hal_set_hwreg(Adapter, HW_VAR_SLOT_TIME, &pmlmeinfo->slotTime);
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index eba29abfa832..af23c649a870 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -366,9 +366,9 @@ static void update_attrib_vcs_info(struct adapter *padapter, struct xmit_frame *
 	/* 		Other fragments are protected by previous fragment. */
 	/* 		So we only need to check the length of first fragment. */
 	if (pmlmeext->cur_wireless_mode < WIRELESS_11_24N  || padapter->registrypriv.wifi_spec) {
-		if (sz > padapter->registrypriv.rts_thresh)
+		if (sz > padapter->registrypriv.rts_thresh) {
 			pattrib->vcs_mode = RTS_CTS;
-		else {
+		} else {
 			if (pattrib->rtsen)
 				pattrib->vcs_mode = RTS_CTS;
 			else if (pattrib->cts2self)
@@ -676,8 +676,9 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 		memcpy(pattrib->ra, pattrib->dst, ETH_ALEN);
 		memcpy(pattrib->ta, get_bssid(pmlmepriv), ETH_ALEN);
 		DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_ap);
-	} else
+	} else {
 		DBG_COUNTER(padapter->tx_logs.core_tx_upd_attrib_unknown);
+	}
 
 	pattrib->pktlen = pktfile.pkt_len;
 
@@ -923,8 +924,9 @@ static s32 xmitframe_swencrypt(struct adapter *padapter, struct xmit_frame *pxmi
 		default:
 				break;
 		}
-	} else
+	} else {
 		RT_TRACE(_module_rtl871x_xmit_c_, _drv_notice_, ("### xmitframe_hwencrypt\n"));
+	}
 
 	return _SUCCESS;
 }
@@ -1202,8 +1204,9 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_fram
 			ClearMFrag(mem_start);
 
 			break;
-		} else
+		} else {
 			RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("%s: There're still something in packet!\n", __func__));
+		}
 
 		addr = (SIZE_PTR)(pframe);
 
@@ -1445,17 +1448,18 @@ void rtw_update_protection(struct adapter *padapter, u8 *ie, uint ie_len)
 	case AUTO_VCS:
 	default:
 		perp = rtw_get_ie(ie, _ERPINFO_IE_, &erp_len, ie_len);
-		if (!perp)
+		if (!perp) {
 			pxmitpriv->vcs = NONE_VCS;
-		else {
+		} else {
 			protection = (*(perp + 2)) & BIT(1);
 			if (protection) {
 				if (pregistrypriv->vcs_type == RTS_CTS)
 					pxmitpriv->vcs = RTS_CTS;
 				else
 					pxmitpriv->vcs = CTS_TO_SELF;
-			} else
+			} else {
 				pxmitpriv->vcs = NONE_VCS;
+			}
 		}
 
 		break;
@@ -1508,8 +1512,9 @@ static struct xmit_buf *__rtw_alloc_cmd_xmitbuf(struct xmit_priv *pxmitpriv,
 			DBG_871X("%s pxmitbuf->sctx is not NULL\n", __func__);
 			rtw_sctx_done_err(&pxmitbuf->sctx, RTW_SCTX_DONE_BUF_ALLOC);
 		}
-	} else
+	} else {
 		DBG_871X("%s fail, no xmitbuf available !!!\n", __func__);
+	}
 
 	return pxmitbuf;
 }
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
