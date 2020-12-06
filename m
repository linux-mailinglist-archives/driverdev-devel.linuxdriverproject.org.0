Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 808ED2D0052
	for <lists+driverdev-devel@lfdr.de>; Sun,  6 Dec 2020 04:45:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 29A8887B00;
	Sun,  6 Dec 2020 03:45:45 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zLESK01wsKes; Sun,  6 Dec 2020 03:45:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AA9418797A;
	Sun,  6 Dec 2020 03:45:40 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0B8A81BF962
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:45:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 026748797A
 for <devel@linuxdriverproject.org>; Sun,  6 Dec 2020 03:45:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ipdZ09H2nTEC for <devel@linuxdriverproject.org>;
 Sun,  6 Dec 2020 03:45:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f65.google.com (mail-io1-f65.google.com
 [209.85.166.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 83686874AA
 for <devel@driverdev.osuosl.org>; Sun,  6 Dec 2020 03:45:33 +0000 (UTC)
Received: by mail-io1-f65.google.com with SMTP id n4so9947577iow.12
 for <devel@driverdev.osuosl.org>; Sat, 05 Dec 2020 19:45:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mSlGCIuvOj6L4rSZYy0ZdyhFlL1tyUGU8ZBsRGQ51ak=;
 b=jNXfbrg1nhNbS9b+bjWlZm04NHcXT3+t6drCMrvJX4gb/P/lIqV/FMqpV7V0eBMYI4
 5zbnFSufPdF0TzKmmEhKQa8Fi1sJWTHYLXL13P9ZFbZbA2rsErzmKerCGHoXFr0eF24h
 S/D78GxML1A6hyZ6oCJTdBwJ4PCJyd8pxN/TwVXypvgVTtMXb/qMZymt5YR/IzC8+bEr
 hRf1/9UxsgVJhdWe3ALMg+mt1L4NwsUNid1NxFJSI3I1HzPHjBhqwtCerDvKZCKiW7eq
 Gng18m00oPVgT1k+M00kIpUJ2NgiYvDhRYuSdOVfBlCRDotJE84J+Y6B47eZTLWGF46r
 Ej2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mSlGCIuvOj6L4rSZYy0ZdyhFlL1tyUGU8ZBsRGQ51ak=;
 b=kLkF1J6PCMpGHPNFrCF43pbmO8w0vx4DkzfECpflNxoeUuZGv3+nP2Ss4qwy5OZQ8L
 fs2tGMdMA/hanXU4beakpmF0uxzefKON7IV/nkZMSvE5abNcvcGIXT8nfikMUB3ffGA3
 IySj/JoFpPWdcPbjxHcly7QfCf5H4u96v4zxqJx3gwwIooxwqqOduiy1jriyj68wXXJ9
 84yIqtx9d5eqWHlQHrrdCOdvdQOSLxDZkaFWPWUJGVGlMZ9KZxJq8q2OIyKoTQoczLV7
 NP6i/pjufhT7sccpCbUcdv1gTBjXjgNDysPHR25g7AWLCG+J2L4d8sCNz//7LhWE0vuQ
 G8qA==
X-Gm-Message-State: AOAM531cOTXEkcdF/Qc0JfGzaCKcs3jlhKhGW+hqcOp1YIrlhhcfzscW
 hBaeM4eAHtxS3tPm8u5rhSE=
X-Google-Smtp-Source: ABdhPJywsz67lZdCuBMA0wyxM+yN5vTvOnVlAA3l9dv+iIE2meucwwNh5GFfNFDQk98B3rk3cp80Yg==
X-Received: by 2002:a6b:7906:: with SMTP id i6mr1020789iop.97.1607226332730;
 Sat, 05 Dec 2020 19:45:32 -0800 (PST)
Received: from localhost.localdomain (c-73-242-81-227.hsd1.mn.comcast.net.
 [73.242.81.227])
 by smtp.gmail.com with ESMTPSA id v63sm3908553ioe.52.2020.12.05.19.45.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Dec 2020 19:45:32 -0800 (PST)
From: Ross Schmidt <ross.schm.dev@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 09/10] staging: rtl8723bs: remove LIST_CONTAINOR
Date: Sat,  5 Dec 2020 21:45:16 -0600
Message-Id: <20201206034517.4276-9-ross.schm.dev@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201206034517.4276-1-ross.schm.dev@gmail.com>
References: <20201206034517.4276-1-ross.schm.dev@gmail.com>
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

Remove unnecessary macro for container_of and call it directly.

Signed-off-by: Ross Schmidt <ross.schm.dev@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c       | 16 +++++++-------
 drivers/staging/rtl8723bs/core/rtw_cmd.c      |  2 +-
 drivers/staging/rtl8723bs/core/rtw_mlme.c     | 18 +++++++--------
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  6 ++---
 drivers/staging/rtl8723bs/core/rtw_recv.c     |  4 ++--
 drivers/staging/rtl8723bs/core/rtw_sta_mgt.c  | 12 +++++-----
 drivers/staging/rtl8723bs/core/rtw_xmit.c     | 22 +++++++++----------
 .../staging/rtl8723bs/hal/rtl8723bs_xmit.c    |  6 ++---
 .../rtl8723bs/include/osdep_service_linux.h   |  4 ----
 .../staging/rtl8723bs/os_dep/ioctl_cfg80211.c |  6 ++---
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    | 10 ++++-----
 drivers/staging/rtl8723bs/os_dep/xmit_linux.c |  2 +-
 12 files changed, 52 insertions(+), 56 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 27446156ed34..04d5852d0d3e 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -223,7 +223,7 @@ void expire_timeout_chk(struct adapter *padapter)
 	}
 	#endif
 	while (phead != plist) {
-		psta = LIST_CONTAINOR(plist, struct sta_info, auth_list);
+		psta = container_of(plist, struct sta_info, auth_list);
 
 		plist = get_next(plist);
 
@@ -268,7 +268,7 @@ void expire_timeout_chk(struct adapter *padapter)
 	}
 	#endif
 	while (phead != plist) {
-		psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
+		psta = container_of(plist, struct sta_info, asoc_list);
 		plist = get_next(plist);
 #ifdef CONFIG_AUTO_AP_MODE
 		if (psta->isrc)
@@ -1344,7 +1344,7 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
 	plist = get_next(phead);
 
 	while (phead != plist) {
-		paclnode = LIST_CONTAINOR(plist, struct rtw_wlan_acl_node, list);
+		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
 		plist = get_next(plist);
 
 		if (!memcmp(paclnode->addr, addr, ETH_ALEN)) {
@@ -1405,7 +1405,7 @@ void rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
 	plist = get_next(phead);
 
 	while (phead != plist) {
-		paclnode = LIST_CONTAINOR(plist, struct rtw_wlan_acl_node, list);
+		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
 		plist = get_next(plist);
 
 		if (
@@ -1912,7 +1912,7 @@ void associated_clients_update(struct adapter *padapter, u8 updated)
 
 		/* check asoc_queue */
 		while (phead != plist) {
-			psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
+			psta = container_of(plist, struct sta_info, asoc_list);
 
 			plist = get_next(plist);
 
@@ -2193,7 +2193,7 @@ void rtw_sta_flush(struct adapter *padapter)
 
 	/* free sta asoc_queue */
 	while (phead != plist) {
-		psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
+		psta = container_of(plist, struct sta_info, asoc_list);
 
 		plist = get_next(plist);
 
@@ -2297,7 +2297,7 @@ void rtw_ap_restore_network(struct adapter *padapter)
 	while (phead != plist) {
 		int stainfo_offset;
 
-		psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
+		psta = container_of(plist, struct sta_info, asoc_list);
 		plist = get_next(plist);
 
 		stainfo_offset = rtw_stainfo_offset(pstapriv, psta);
@@ -2402,7 +2402,7 @@ void stop_ap_mode(struct adapter *padapter)
 	phead = get_list_head(pacl_node_q);
 	plist = get_next(phead);
 	while (phead != plist) {
-		paclnode = LIST_CONTAINOR(plist, struct rtw_wlan_acl_node, list);
+		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
 		plist = get_next(plist);
 
 		if (paclnode->valid) {
diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
index 4e1301261a01..f6160f1cca43 100644
--- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
+++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
@@ -287,7 +287,7 @@ struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue)
 	if (list_empty(&(queue->queue)))
 		obj = NULL;
 	else {
-		obj = LIST_CONTAINOR(get_next(&(queue->queue)), struct cmd_obj, list);
+		obj = container_of(get_next(&(queue->queue)), struct cmd_obj, list);
 		list_del_init(&obj->list);
 	}
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index e20e0ce4a2c5..f05fcf9892e5 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -131,7 +131,7 @@ struct	wlan_network *_rtw_dequeue_network(struct __queue *queue)
 
 	else
 	{
-		pnetwork = LIST_CONTAINOR(get_next(&queue->queue), struct wlan_network, list);
+		pnetwork = container_of(get_next(&queue->queue), struct wlan_network, list);
 
 		list_del_init(&(pnetwork->list));
 	}
@@ -156,7 +156,7 @@ struct	wlan_network *rtw_alloc_network(struct	mlme_priv *pmlmepriv)
 	}
 	plist = get_next(&(free_queue->queue));
 
-	pnetwork = LIST_CONTAINOR(plist, struct wlan_network, list);
+	pnetwork = container_of(plist, struct wlan_network, list);
 
 	list_del_init(&pnetwork->list);
 
@@ -256,7 +256,7 @@ struct wlan_network *_rtw_find_network(struct __queue *scanned_queue, u8 *addr)
 	plist = get_next(phead);
 
 	while (plist != phead) {
-		pnetwork = LIST_CONTAINOR(plist, struct wlan_network, list);
+		pnetwork = container_of(plist, struct wlan_network, list);
 
 		if (!memcmp(addr, pnetwork->network.MacAddress, ETH_ALEN))
 			break;
@@ -287,7 +287,7 @@ void rtw_free_network_queue(struct adapter *padapter, u8 isfreeall)
 
 	while (phead != plist) {
 
-		pnetwork = LIST_CONTAINOR(plist, struct wlan_network, list);
+		pnetwork = container_of(plist, struct wlan_network, list);
 
 		plist = get_next(plist);
 
@@ -438,7 +438,7 @@ struct wlan_network *_rtw_find_same_network(struct __queue *scanned_queue, struc
 	plist = get_next(phead);
 
 	while (plist != phead) {
-		found = LIST_CONTAINOR(plist, struct wlan_network, list);
+		found = container_of(plist, struct wlan_network, list);
 
 		if (is_same_network(&network->network, &found->network, 0))
 			break;
@@ -468,7 +468,7 @@ struct	wlan_network	*rtw_get_oldest_wlan_network(struct __queue *scanned_queue)
 		if (phead == plist)
 			break;
 
-		pwlan = LIST_CONTAINOR(plist, struct wlan_network, list);
+		pwlan = container_of(plist, struct wlan_network, list);
 
 		if (!pwlan->fixed) {
 			if (oldest == NULL || time_after(oldest->last_scanned, pwlan->last_scanned))
@@ -589,7 +589,7 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
 		if (phead == plist)
 			break;
 
-		pnetwork = LIST_CONTAINOR(plist, struct wlan_network, list);
+		pnetwork = container_of(plist, struct wlan_network, list);
 
 		rtw_bug_check(pnetwork, pnetwork, pnetwork, pnetwork);
 
@@ -1942,7 +1942,7 @@ int rtw_select_roaming_candidate(struct mlme_priv *mlme)
 
 	while (phead != mlme->pscanned) {
 
-		pnetwork = LIST_CONTAINOR(mlme->pscanned, struct wlan_network, list);
+		pnetwork = container_of(mlme->pscanned, struct wlan_network, list);
 		if (!pnetwork) {
 			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("%s return _FAIL:(pnetwork == NULL)\n", __func__));
 			ret = _FAIL;
@@ -2072,7 +2072,7 @@ int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
 
 	while (phead != pmlmepriv->pscanned) {
 
-		pnetwork = LIST_CONTAINOR(pmlmepriv->pscanned, struct wlan_network, list);
+		pnetwork = container_of(pmlmepriv->pscanned, struct wlan_network, list);
 		if (!pnetwork) {
 			RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("%s return _FAIL:(pnetwork == NULL)\n", __func__));
 			ret = _FAIL;
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 166b5369b003..632b0f7eeff2 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -4119,7 +4119,7 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 			if (phead == plist)
 				break;
 
-			pnetwork = LIST_CONTAINOR(plist, struct wlan_network, list);
+			pnetwork = container_of(plist, struct wlan_network, list);
 
 			plist = get_next(plist);
 
@@ -5601,7 +5601,7 @@ void _linked_info_dump(struct adapter *padapter)
 			phead = &pstapriv->asoc_list;
 			plist = get_next(phead);
 			while (phead != plist) {
-				psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
+				psta = container_of(plist, struct sta_info, asoc_list);
 				plist = get_next(plist);
 
 				DBG_871X("STA[%pM]:UndecoratedSmoothedPWDB:%d\n",
@@ -6693,7 +6693,7 @@ u8 chk_bmc_sleepq_hdl(struct adapter *padapter, unsigned char *pbuf)
 		xmitframe_plist = get_next(xmitframe_phead);
 
 		while (xmitframe_phead != xmitframe_plist) {
-			pxmitframe = LIST_CONTAINOR(xmitframe_plist, struct xmit_frame, list);
+			pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
 
 			xmitframe_plist = get_next(xmitframe_plist);
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 43e67e48d2df..63145bc81eea 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -293,7 +293,7 @@ struct recv_buf *rtw_dequeue_recvbuf(struct __queue *queue)
 
 		plist = get_next(phead);
 
-		precvbuf = LIST_CONTAINOR(plist, struct recv_buf, list);
+		precvbuf = container_of(plist, struct recv_buf, list);
 
 		list_del_init(&precvbuf->list);
 
@@ -1137,7 +1137,7 @@ sint validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_
 			xmitframe_plist = get_next(xmitframe_phead);
 
 			if (xmitframe_phead != xmitframe_plist) {
-				pxmitframe = LIST_CONTAINOR(xmitframe_plist, struct xmit_frame, list);
+				pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
 
 				xmitframe_plist = get_next(xmitframe_plist);
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
index f0dd4da82bf3..f96dd0b40e04 100644
--- a/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8723bs/core/rtw_sta_mgt.c
@@ -133,7 +133,7 @@ void kfree_all_stainfo(struct sta_priv *pstapriv)
 	plist = get_next(phead);
 
 	while (phead != plist) {
-		psta = LIST_CONTAINOR(plist, struct sta_info, list);
+		psta = container_of(plist, struct sta_info, list);
 		plist = get_next(plist);
 	}
 
@@ -163,7 +163,7 @@ u32 _rtw_free_sta_priv(struct	sta_priv *pstapriv)
 			while (phead != plist) {
 				int i;
 
-				psta = LIST_CONTAINOR(plist, struct sta_info, hash_list);
+				psta = container_of(plist, struct sta_info, hash_list);
 				plist = get_next(plist);
 
 				for (i = 0; i < 16 ; i++) {
@@ -202,7 +202,7 @@ struct	sta_info *rtw_alloc_stainfo(struct	sta_priv *pstapriv, u8 *hwaddr)
 		spin_unlock_bh(&(pstapriv->sta_hash_lock));
 		return NULL;
 	} else {
-		psta = LIST_CONTAINOR(get_next(&pfree_sta_queue->queue), struct sta_info, list);
+		psta = container_of(get_next(&pfree_sta_queue->queue), struct sta_info, list);
 
 		list_del_init(&(psta->list));
 
@@ -479,7 +479,7 @@ void rtw_free_all_stainfo(struct adapter *padapter)
 		plist = get_next(phead);
 
 		while (phead != plist) {
-			psta = LIST_CONTAINOR(plist, struct sta_info, hash_list);
+			psta = container_of(plist, struct sta_info, hash_list);
 
 			plist = get_next(plist);
 
@@ -516,7 +516,7 @@ struct sta_info *rtw_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 	plist = get_next(phead);
 
 	while (phead != plist) {
-		psta = LIST_CONTAINOR(plist, struct sta_info, hash_list);
+		psta = container_of(plist, struct sta_info, hash_list);
 
 		if ((!memcmp(psta->hwaddr, addr, ETH_ALEN)))
 		 /*  if found the matched address */
@@ -576,7 +576,7 @@ u8 rtw_access_ctrl(struct adapter *padapter, u8 *mac_addr)
 	phead = get_list_head(pacl_node_q);
 	plist = get_next(phead);
 	while (phead != plist) {
-		paclnode = LIST_CONTAINOR(plist, struct rtw_wlan_acl_node, list);
+		paclnode = container_of(plist, struct rtw_wlan_acl_node, list);
 		plist = get_next(plist);
 
 		if (!memcmp(paclnode->addr, mac_addr, ETH_ALEN))
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 6582f2d7c383..f9ef7dc84e55 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -1565,7 +1565,7 @@ struct xmit_buf *rtw_alloc_xmitbuf_ext(struct xmit_priv *pxmitpriv)
 
 		plist = get_next(phead);
 
-		pxmitbuf = LIST_CONTAINOR(plist, struct xmit_buf, list);
+		pxmitbuf = container_of(plist, struct xmit_buf, list);
 
 		list_del_init(&pxmitbuf->list);
 	}
@@ -1632,7 +1632,7 @@ struct xmit_buf *rtw_alloc_xmitbuf(struct xmit_priv *pxmitpriv)
 
 		plist = get_next(phead);
 
-		pxmitbuf = LIST_CONTAINOR(plist, struct xmit_buf, list);
+		pxmitbuf = container_of(plist, struct xmit_buf, list);
 
 		list_del_init(&pxmitbuf->list);
 	}
@@ -1747,7 +1747,7 @@ struct xmit_frame *rtw_alloc_xmitframe(struct xmit_priv *pxmitpriv)/* _queue *pf
 
 		plist = get_next(phead);
 
-		pxframe = LIST_CONTAINOR(plist, struct xmit_frame, list);
+		pxframe = container_of(plist, struct xmit_frame, list);
 
 		list_del_init(&pxframe->list);
 		pxmitpriv->free_xmitframe_cnt--;
@@ -1774,7 +1774,7 @@ struct xmit_frame *rtw_alloc_xmitframe_ext(struct xmit_priv *pxmitpriv)
 	} else {
 		phead = get_list_head(queue);
 		plist = get_next(phead);
-		pxframe = LIST_CONTAINOR(plist, struct xmit_frame, list);
+		pxframe = container_of(plist, struct xmit_frame, list);
 
 		list_del_init(&pxframe->list);
 		pxmitpriv->free_xframe_ext_cnt--;
@@ -1881,7 +1881,7 @@ void rtw_free_xmitframe_queue(struct xmit_priv *pxmitpriv, struct __queue *pfram
 	plist = get_next(phead);
 
 	while (phead != plist) {
-		pxmitframe = LIST_CONTAINOR(plist, struct xmit_frame, list);
+		pxmitframe = container_of(plist, struct xmit_frame, list);
 
 		plist = get_next(plist);
 
@@ -2336,7 +2336,7 @@ static void dequeue_xmitframes_to_sleeping_queue(struct adapter *padapter, struc
 	plist = get_next(phead);
 
 	while (phead != plist) {
-		pxmitframe = LIST_CONTAINOR(plist, struct xmit_frame, list);
+		pxmitframe = container_of(plist, struct xmit_frame, list);
 
 		plist = get_next(plist);
 
@@ -2411,7 +2411,7 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 	xmitframe_plist = get_next(xmitframe_phead);
 
 	while (xmitframe_phead != xmitframe_plist) {
-		pxmitframe = LIST_CONTAINOR(xmitframe_plist, struct xmit_frame, list);
+		pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
 
 		xmitframe_plist = get_next(xmitframe_plist);
 
@@ -2486,7 +2486,7 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 		xmitframe_plist = get_next(xmitframe_phead);
 
 		while (xmitframe_phead != xmitframe_plist) {
-			pxmitframe = LIST_CONTAINOR(xmitframe_plist, struct xmit_frame, list);
+			pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
 
 			xmitframe_plist = get_next(xmitframe_plist);
 
@@ -2533,7 +2533,7 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
 	xmitframe_plist = get_next(xmitframe_phead);
 
 	while (xmitframe_phead != xmitframe_plist) {
-		pxmitframe = LIST_CONTAINOR(xmitframe_plist, struct xmit_frame, list);
+		pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
 
 		xmitframe_plist = get_next(xmitframe_plist);
 
@@ -2628,7 +2628,7 @@ struct xmit_buf *dequeue_pending_xmitbuf(struct xmit_priv *pxmitpriv)
 
 		phead = get_list_head(pqueue);
 		plist = get_next(phead);
-		pxmitbuf = LIST_CONTAINOR(plist, struct xmit_buf, list);
+		pxmitbuf = container_of(plist, struct xmit_buf, list);
 		list_del_init(&pxmitbuf->list);
 	}
 
@@ -2658,7 +2658,7 @@ struct xmit_buf *dequeue_pending_xmitbuf_under_survey(struct xmit_priv *pxmitpri
 			if (plist == phead)
 				break;
 
-			pxmitbuf = LIST_CONTAINOR(plist, struct xmit_buf, list);
+			pxmitbuf = container_of(plist, struct xmit_buf, list);
 
 			type = GetFrameSubType(pxmitbuf->pbuf + TXDESC_OFFSET);
 
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
index 6f9d082be7f3..a3bd9c2002c9 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
@@ -253,7 +253,7 @@ static s32 xmit_xmitframes(struct adapter *padapter, struct xmit_priv *pxmitpriv
 		/* because stop_sta_xmit may delete sta_plist at any time */
 		/* so we should add lock here, or while loop can not exit */
 		while (sta_phead != sta_plist) {
-			ptxservq = LIST_CONTAINOR(sta_plist, struct tx_servq, tx_pending);
+			ptxservq = container_of(sta_plist, struct tx_servq, tx_pending);
 			sta_plist = get_next(sta_plist);
 
 #ifdef DBG_XMIT_BUF
@@ -278,7 +278,7 @@ static s32 xmit_xmitframes(struct adapter *padapter, struct xmit_priv *pxmitpriv
 
 			while (list_empty(frame_phead) == false) {
 				frame_plist = get_next(frame_phead);
-				pxmitframe = LIST_CONTAINOR(frame_plist, struct xmit_frame, list);
+				pxmitframe = container_of(frame_plist, struct xmit_frame, list);
 
 				/*  check xmit_buf size enough or not */
 				txlen = txdesc_size + rtw_wlan_pkt_size(pxmitframe);
@@ -661,7 +661,7 @@ void rtl8723bs_free_xmit_priv(struct adapter *padapter)
 		plist = get_next(phead);
 		list_del_init(plist);
 
-		pxmitbuf = LIST_CONTAINOR(plist, struct xmit_buf, list);
+		pxmitbuf = container_of(plist, struct xmit_buf, list);
 		rtw_free_xmitframe(pxmitpriv, (struct xmit_frame *)pxmitbuf->priv_data);
 		pxmitbuf->priv_data = NULL;
 		rtw_free_xmitbuf(pxmitpriv, pxmitbuf);
diff --git a/drivers/staging/rtl8723bs/include/osdep_service_linux.h b/drivers/staging/rtl8723bs/include/osdep_service_linux.h
index 8608bc251eea..9194dea217fb 100644
--- a/drivers/staging/rtl8723bs/include/osdep_service_linux.h
+++ b/drivers/staging/rtl8723bs/include/osdep_service_linux.h
@@ -74,10 +74,6 @@ static inline struct list_head	*get_list_head(struct __queue	*queue)
 	return (&(queue->queue));
 }
 
-
-#define LIST_CONTAINOR(ptr, type, member) \
-	container_of(ptr, type, member)
-
 static inline void _set_timer(_timer *ptimer, u32 delay_time)
 {
 	mod_timer(ptimer, (jiffies + (delay_time * HZ / 1000)));
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
index 7321f1c94311..fe89fb3d4ddb 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_cfg80211.c
@@ -1418,7 +1418,7 @@ void rtw_cfg80211_surveydone_event_callback(struct adapter *padapter)
 		if (phead == plist)
 			break;
 
-		pnetwork = LIST_CONTAINOR(plist, struct wlan_network, list);
+		pnetwork = container_of(plist, struct wlan_network, list);
 
 		/* report network only if the current channel set contains the channel to which this network belongs */
 		if (rtw_ch_set_search_ch(padapter->mlmeextpriv.channel_set, pnetwork->network.Configuration.DSConfig) >= 0
@@ -2816,7 +2816,7 @@ static int cfg80211_rtw_del_station(struct wiphy *wiphy, struct net_device *ndev
 
 	/* check asoc_queue */
 	while (phead != plist) {
-		psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
+		psta = container_of(plist, struct sta_info, asoc_list);
 
 		plist = get_next(plist);
 
@@ -2871,7 +2871,7 @@ static struct sta_info *rtw_sta_info_get_by_idx(const int idx, struct sta_priv *
 	/* check asoc_queue */
 	while (phead != plist) {
 		if (idx == i)
-			psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
+			psta = container_of(plist, struct sta_info, asoc_list);
 		plist = get_next(plist);
 		i++;
 	}
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 51cf3f4c046f..1d73df69f737 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -1160,7 +1160,7 @@ static int rtw_wx_set_wap(struct net_device *dev,
 		if (phead == pmlmepriv->pscanned)
 			break;
 
-		pnetwork = LIST_CONTAINOR(pmlmepriv->pscanned, struct wlan_network, list);
+		pnetwork = container_of(pmlmepriv->pscanned, struct wlan_network, list);
 
 		pmlmepriv->pscanned = get_next(pmlmepriv->pscanned);
 
@@ -1455,7 +1455,7 @@ static int rtw_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
 			break;
 		}
 
-		pnetwork = LIST_CONTAINOR(plist, struct wlan_network, list);
+		pnetwork = container_of(plist, struct wlan_network, list);
 
 		/* report network only if the current channel set contains the channel to which this network belongs */
 		if (rtw_ch_set_search_ch(padapter->mlmeextpriv.channel_set, pnetwork->network.Configuration.DSConfig) >= 0
@@ -1558,7 +1558,7 @@ static int rtw_wx_set_essid(struct net_device *dev,
 				break;
 			}
 
-			pnetwork = LIST_CONTAINOR(pmlmepriv->pscanned, struct wlan_network, list);
+			pnetwork = container_of(pmlmepriv->pscanned, struct wlan_network, list);
 
 			pmlmepriv->pscanned = get_next(pmlmepriv->pscanned);
 
@@ -2478,7 +2478,7 @@ static int rtw_get_ap_info(struct net_device *dev,
 			break;
 
 
-		pnetwork = LIST_CONTAINOR(plist, struct wlan_network, list);
+		pnetwork = container_of(plist, struct wlan_network, list);
 
 		if (!mac_pton(data, bssid)) {
 			DBG_871X("Invalid BSSID '%s'.\n", (u8 *)data);
@@ -2851,7 +2851,7 @@ static int rtw_dbg_port(struct net_device *dev,
 							plist = get_next(phead);
 
 							while (phead != plist) {
-								psta = LIST_CONTAINOR(plist, struct sta_info, hash_list);
+								psta = container_of(plist, struct sta_info, hash_list);
 
 								plist = get_next(plist);
 
diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
index cf7a3f4b8d8b..b060a6a2df34 100644
--- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
@@ -148,7 +148,7 @@ static int rtw_mlcst2unicst(struct adapter *padapter, struct sk_buff *skb)
 	/* free sta asoc_queue */
 	while (phead != plist) {
 		int stainfo_offset;
-		psta = LIST_CONTAINOR(plist, struct sta_info, asoc_list);
+		psta = container_of(plist, struct sta_info, asoc_list);
 		plist = get_next(plist);
 
 		stainfo_offset = rtw_stainfo_offset(pstapriv, psta);
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
