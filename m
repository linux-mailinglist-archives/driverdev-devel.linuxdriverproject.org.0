Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 645CF270C09
	for <lists+driverdev-devel@lfdr.de>; Sat, 19 Sep 2020 10:54:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 6CFEB86BA6;
	Sat, 19 Sep 2020 08:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bngzQNc8hshh; Sat, 19 Sep 2020 08:54:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5E05D872C1;
	Sat, 19 Sep 2020 08:54:21 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id E86601BF576
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 08:54:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E222786BA6
 for <devel@linuxdriverproject.org>; Sat, 19 Sep 2020 08:54:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4Jcbprtc9kDs for <devel@linuxdriverproject.org>;
 Sat, 19 Sep 2020 08:54:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com
 [209.85.219.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 530F486B93
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 08:54:18 +0000 (UTC)
Received: by mail-qv1-f66.google.com with SMTP id b13so4395681qvl.2
 for <devel@driverdev.osuosl.org>; Sat, 19 Sep 2020 01:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cibYu/XnPkSzcJkSS+LcXLppjLjKQb6hQCC/1bHWysQ=;
 b=VyYuIF+6dyjYZlGRuWq00FX0j7eFXNb/ChAdDCRgO5vfkVXpqUEKpFUYahSCQ1IqPN
 CvYCOwo3Alu4kG36nFUtSZ+KGuv//q+piAL1ks3POPXAxkeO1+JaZYYNdUPApDdsu2mz
 JfL99um/RreuOvgm5yHRpllUI0JPwsi5Xlpg8f5UkrQTMewwWex1Z45mR+pph2rcsP7H
 i6RksAQEV/8nrmi0bPUawzrVoVwZ0qrqINHkGz+jaLe7cXYwV8b32qyBj8DJ4ZYLh0HT
 +fH9bgHv93NCu1Q2sOjFJam/eIfo00kH//buFTtpUR4/AnZ0GvxtZxHJmA0VH3OkL0WE
 HjgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cibYu/XnPkSzcJkSS+LcXLppjLjKQb6hQCC/1bHWysQ=;
 b=pZWOAr87TsaH2eF8ZReXd9pYPosFWSpr3WrsnmixW2kHqOUIDMzf0WIP8NpJgXE90R
 TBKjb/BcKyHEoxqPO8HKWBPcZJLDwr+O04RvRDdMlRcNXE5zA8EZul1YStAjg8Ex4ZuM
 YsPP99rRoBa9MKQ+lAx0RWC0Y59LpG2F0jUlw82gHrAAz1+sQqKgtTv4OsqhrsjR+5Ix
 rXrKxFtnse/2Gqv3U7DIQlA6k80ye+y/6Kgo7VJlnD84+hDD3+gE/znOcDon3hrai84f
 6CkvnLM96Ef/ZXU5bUC75Mzc+vGCOfDfE8JJHlqrTcHOW/F2Atdo7WPrcidOdzNFIufC
 Mx7g==
X-Gm-Message-State: AOAM531RRRzjxfN+V850MiESq0JORhJKs9hw9905YuC/umH4FIhxtYHJ
 MV+DVIyljzeqAQvfk9zQWfo=
X-Google-Smtp-Source: ABdhPJzjAsHW2sCnzU2biwyZS94HW4rqYiIIC0GOIcBjDCaV380TYYhEAelnKdjAzaOyHfzOyBR7Eg==
X-Received: by 2002:a0c:9142:: with SMTP id q60mr37484947qvq.13.1600505657193; 
 Sat, 19 Sep 2020 01:54:17 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-002-204-143-169.002.204.pools.vodafone-ip.de. [2.204.143.169])
 by smtp.gmail.com with ESMTPSA id v90sm3924836qtd.66.2020.09.19.01.54.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Sep 2020 01:54:16 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rtl8712: clean up comparsions to NULL
Date: Sat, 19 Sep 2020 10:50:31 +0200
Message-Id: <20200919085032.32453-1-straube.linux@gmail.com>
X-Mailer: git-send-email 2.28.0
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
 lorian.c.schilhabel@googlemail.com, Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Clean up comparsions to NULL Reported by checkpatch.
if (x == NULL) -> if (!x)
if (x != NULL) -> if (x)

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.c         |  4 ++--
 drivers/staging/rtl8712/rtl871x_io.c          |  2 +-
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 16 ++++++-------
 drivers/staging/rtl8712/rtl871x_mlme.c        | 11 ++++-----
 drivers/staging/rtl8712/rtl871x_mp_ioctl.c    |  2 +-
 drivers/staging/rtl8712/rtl871x_recv.c        | 20 ++++++++--------
 drivers/staging/rtl8712/rtl871x_security.c    |  8 +++----
 drivers/staging/rtl8712/rtl871x_sta_mgt.c     |  4 ++--
 drivers/staging/rtl8712/rtl871x_xmit.c        | 24 +++++++++----------
 drivers/staging/rtl8712/usb_intf.c            |  2 +-
 10 files changed, 46 insertions(+), 47 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
index c7523072a660..18116469bd31 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.c
+++ b/drivers/staging/rtl8712/rtl871x_cmd.c
@@ -161,7 +161,7 @@ void r8712_free_cmd_obj(struct cmd_obj *pcmd)
 	if ((pcmd->cmdcode != _JoinBss_CMD_) &&
 	    (pcmd->cmdcode != _CreateBss_CMD_))
 		kfree(pcmd->parmbuf);
-	if (pcmd->rsp != NULL) {
+	if (pcmd->rsp) {
 		if (pcmd->rspsz != 0)
 			kfree(pcmd->rsp);
 	}
@@ -191,7 +191,7 @@ u8 r8712_sitesurvey_cmd(struct _adapter *padapter,
 	psurveyPara->passive_mode = cpu_to_le32(pmlmepriv->passive_mode);
 	psurveyPara->ss_ssidlen = 0;
 	memset(psurveyPara->ss_ssid, 0, IW_ESSID_MAX_SIZE + 1);
-	if ((pssid != NULL) && (pssid->SsidLength)) {
+	if (pssid && pssid->SsidLength) {
 		memcpy(psurveyPara->ss_ssid, pssid->Ssid, pssid->SsidLength);
 		psurveyPara->ss_ssidlen = cpu_to_le32(pssid->SsidLength);
 	}
diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/rtl8712/rtl871x_io.c
index 87024d6a465e..6789a4c98564 100644
--- a/drivers/staging/rtl8712/rtl871x_io.c
+++ b/drivers/staging/rtl8712/rtl871x_io.c
@@ -50,7 +50,7 @@ static uint _init_intf_hdl(struct _adapter *padapter,
 	init_intf_priv = &r8712_usb_init_intf_priv;
 	pintf_priv = pintf_hdl->pintfpriv = kmalloc(sizeof(struct intf_priv),
 						    GFP_ATOMIC);
-	if (pintf_priv == NULL)
+	if (!pintf_priv)
 		goto _init_intf_hdl_fail;
 	pintf_hdl->adapter = (u8 *)padapter;
 	set_intf_option(&pintf_hdl->intf_option);
diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index df6ae855f3c1..cbaa7a489748 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -481,11 +481,11 @@ static int r871x_set_wpa_ie(struct _adapter *padapter, char *pie,
 	int group_cipher = 0, pairwise_cipher = 0;
 	int ret = 0;
 
-	if ((ielen > MAX_WPA_IE_LEN) || (pie == NULL))
+	if (ielen > MAX_WPA_IE_LEN || !pie)
 		return -EINVAL;
 	if (ielen) {
 		buf = kmemdup(pie, ielen, GFP_ATOMIC);
-		if (buf == NULL)
+		if (!buf)
 			return -ENOMEM;
 		if (ielen < RSN_HEADER_LEN) {
 			ret  = -EINVAL;
@@ -777,7 +777,7 @@ static int r871x_wx_set_pmkid(struct net_device *dev,
  *	If cmd is IW_PMKSA_REMOVE, it means the wpa_supplicant wants to
  *	remove a PMKID/BSSID from driver.
  */
-	if (pPMK == NULL)
+	if (!pPMK)
 		return -EINVAL;
 	memcpy(strIssueBssid, pPMK->bssid.sa_data, ETH_ALEN);
 	switch (pPMK->cmd) {
@@ -1099,7 +1099,7 @@ static int r871x_wx_set_mlme(struct net_device *dev,
 	struct _adapter *padapter = netdev_priv(dev);
 	struct iw_mlme *mlme = (struct iw_mlme *) extra;
 
-	if (mlme == NULL)
+	if (!mlme)
 		return -1;
 	switch (mlme->cmd) {
 	case IW_MLME_DEAUTH:
@@ -1950,7 +1950,7 @@ static int r871x_get_ap_info(struct net_device *dev,
 	u8 bssid[ETH_ALEN];
 	char data[33];
 
-	if (padapter->driver_stopped || (pdata == NULL))
+	if (padapter->driver_stopped || !pdata)
 		return -EINVAL;
 	while (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY |
 			     _FW_UNDER_LINKING)) {
@@ -2014,7 +2014,7 @@ static int r871x_set_pid(struct net_device *dev,
 	struct _adapter *padapter = netdev_priv(dev);
 	struct iw_point *pdata = &wrqu->data;
 
-	if ((padapter->driver_stopped) || (pdata == NULL))
+	if (padapter->driver_stopped || !pdata)
 		return -EINVAL;
 	if (copy_from_user(&padapter->pid, pdata->pointer, sizeof(int)))
 		return -EINVAL;
@@ -2030,7 +2030,7 @@ static int r871x_set_chplan(struct net_device *dev,
 	struct iw_point *pdata = &wrqu->data;
 	int ch_plan = -1;
 
-	if ((padapter->driver_stopped) || (pdata == NULL)) {
+	if (padapter->driver_stopped || !pdata) {
 		ret = -EINVAL;
 		goto exit;
 	}
@@ -2050,7 +2050,7 @@ static int r871x_wps_start(struct net_device *dev,
 	struct iw_point *pdata = &wrqu->data;
 	u32   u32wps_start = 0;
 
-	if ((padapter->driver_stopped) || (pdata == NULL))
+	if (padapter->driver_stopped || !pdata)
 		return -EINVAL;
 	if (copy_from_user((void *)&u32wps_start, pdata->pointer, 4))
 		return -EFAULT;
diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 2ccd49032206..6074383ec0b5 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -754,7 +754,7 @@ void r8712_joinbss_event_callback(struct _adapter *adapter, u8 *pbuf)
 					ptarget_wlan->fixed = true;
 			}
 
-			if (ptarget_wlan == NULL) {
+			if (!ptarget_wlan) {
 				if (check_fwstate(pmlmepriv,
 					_FW_UNDER_LINKING))
 					pmlmepriv->fw_state ^=
@@ -768,7 +768,7 @@ void r8712_joinbss_event_callback(struct _adapter *adapter, u8 *pbuf)
 					ptarget_sta =
 						 r8712_get_stainfo(pstapriv,
 						 pnetwork->network.MacAddress);
-					if (ptarget_sta == NULL)
+					if (!ptarget_sta)
 						ptarget_sta =
 						 r8712_alloc_stainfo(pstapriv,
 						 pnetwork->network.MacAddress);
@@ -879,7 +879,7 @@ void r8712_stassoc_event_callback(struct _adapter *adapter, u8 *pbuf)
 	if (!r8712_access_ctrl(&adapter->acl_list, pstassoc->macaddr))
 		return;
 	psta = r8712_get_stainfo(&adapter->stapriv, pstassoc->macaddr);
-	if (psta != NULL) {
+	if (psta) {
 		/*the sta have been in sta_info_queue => do nothing
 		 *(between drv has received this event before and
 		 * fw have not yet to set key to CAM_ENTRY)
@@ -888,7 +888,7 @@ void r8712_stassoc_event_callback(struct _adapter *adapter, u8 *pbuf)
 	}
 
 	psta = r8712_alloc_stainfo(&adapter->stapriv, pstassoc->macaddr);
-	if (psta == NULL)
+	if (!psta)
 		return;
 	/* to do : init sta_info variable */
 	psta->qos_option = 0;
@@ -1080,8 +1080,7 @@ int r8712_select_and_join_from_scan(struct mlme_priv *pmlmepriv)
 	pmlmepriv->pscanned = phead->next;
 	while (1) {
 		if (end_of_queue_search(phead, pmlmepriv->pscanned)) {
-			if ((pmlmepriv->assoc_by_rssi) &&
-			    (pnetwork_max_rssi != NULL)) {
+			if (pmlmepriv->assoc_by_rssi && pnetwork_max_rssi) {
 				pnetwork = pnetwork_max_rssi;
 				goto ask_for_joinbss;
 			}
diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
index 29b85330815f..f906d3fbe179 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
+++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
@@ -186,7 +186,7 @@ static int mp_start_test(struct _adapter *padapter)
 	if (psta)
 		r8712_free_stainfo(padapter, psta);
 	psta = r8712_alloc_stainfo(&padapter->stapriv, bssid.MacAddress);
-	if (psta == NULL) {
+	if (!psta) {
 		res = -ENOMEM;
 		goto end_of_mp_start_test;
 	}
diff --git a/drivers/staging/rtl8712/rtl871x_recv.c b/drivers/staging/rtl8712/rtl871x_recv.c
index c1bfd61824ef..eb4e46a7f743 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.c
+++ b/drivers/staging/rtl8712/rtl871x_recv.c
@@ -58,7 +58,7 @@ void _r8712_init_recv_priv(struct recv_priv *precvpriv,
 	precvpriv->pallocated_frame_buf = kzalloc(NR_RECVFRAME *
 				sizeof(union recv_frame) + RXFRAME_ALIGN_SZ,
 				GFP_ATOMIC);
-	if (precvpriv->pallocated_frame_buf == NULL)
+	if (!precvpriv->pallocated_frame_buf)
 		return;
 	kmemleak_not_leak(precvpriv->pallocated_frame_buf);
 	precvpriv->precv_frame_buf = precvpriv->pallocated_frame_buf +
@@ -97,7 +97,7 @@ union recv_frame *r8712_alloc_recvframe(struct __queue *pfree_recv_queue)
 	if (precvframe) {
 		list_del_init(&precvframe->u.hdr.list);
 		padapter = precvframe->u.hdr.adapter;
-		if (padapter != NULL) {
+		if (padapter) {
 			precvpriv = &padapter->recvpriv;
 			if (pfree_recv_queue == &precvpriv->free_recv_queue)
 				precvpriv->free_recvframe_cnt--;
@@ -145,7 +145,7 @@ sint r8712_recvframe_chkmic(struct _adapter *adapter,
 	stainfo = r8712_get_stainfo(&adapter->stapriv, &prxattrib->ta[0]);
 	if (prxattrib->encrypt == _TKIP_) {
 		/* calculate mic code */
-		if (stainfo != NULL) {
+		if (stainfo) {
 			if (is_multicast_ether_addr(prxattrib->ra)) {
 				iv = precvframe->u.hdr.rx_data +
 				     prxattrib->hdrlen;
@@ -242,7 +242,7 @@ union recv_frame *r8712_portctrl(struct _adapter *adapter,
 		ptr = ptr + pfhdr->attrib.hdrlen + LLC_HEADER_SIZE;
 		ether_type = get_unaligned_be16(ptr);
 
-		if ((psta != NULL) && (psta->ieee8021x_blocked)) {
+		if (psta && psta->ieee8021x_blocked) {
 			/* blocked
 			 * only accept EAPOL frame
 			 */
@@ -349,7 +349,7 @@ static sint sta2sta_data_frame(struct _adapter *adapter,
 		*psta = r8712_get_bcmc_stainfo(adapter);
 	else
 		*psta = r8712_get_stainfo(pstapriv, sta_addr); /* get ap_info */
-	if (*psta == NULL) {
+	if (!*psta) {
 		if (check_fwstate(pmlmepriv, WIFI_MP_STATE))
 			adapter->mppriv.rx_pktloss++;
 		return _FAIL;
@@ -399,7 +399,7 @@ static sint ap2sta_data_frame(struct _adapter *adapter,
 			*psta = r8712_get_bcmc_stainfo(adapter);
 		else
 			*psta = r8712_get_stainfo(pstapriv, pattrib->bssid);
-		if (*psta == NULL)
+		if (!*psta)
 			return _FAIL;
 	} else if (check_fwstate(pmlmepriv, WIFI_MP_STATE) &&
 		   check_fwstate(pmlmepriv, _FW_LINKED)) {
@@ -410,7 +410,7 @@ static sint ap2sta_data_frame(struct _adapter *adapter,
 		memcpy(pattrib->ta, pattrib->src, ETH_ALEN);
 		memcpy(pattrib->bssid,  mybssid, ETH_ALEN);
 		*psta = r8712_get_stainfo(pstapriv, pattrib->bssid);
-		if (*psta == NULL)
+		if (!*psta)
 			return _FAIL;
 	} else {
 		return _FAIL;
@@ -435,7 +435,7 @@ static sint sta2ap_data_frame(struct _adapter *adapter,
 		if (memcmp(pattrib->bssid, mybssid, ETH_ALEN))
 			return _FAIL;
 		*psta = r8712_get_stainfo(pstapriv, pattrib->src);
-		if (*psta == NULL)
+		if (!*psta)
 			return _FAIL;
 	}
 	return _SUCCESS;
@@ -469,7 +469,7 @@ static sint validate_recv_data_frame(struct _adapter *adapter,
 	pda = get_da(ptr);
 	psa = get_sa(ptr);
 	pbssid = get_hdr_bssid(ptr);
-	if (pbssid == NULL)
+	if (!pbssid)
 		return _FAIL;
 	memcpy(pattrib->dst, pda, ETH_ALEN);
 	memcpy(pattrib->src, psa, ETH_ALEN);
@@ -499,7 +499,7 @@ static sint validate_recv_data_frame(struct _adapter *adapter,
 	}
 	if (res == _FAIL)
 		return _FAIL;
-	if (psta == NULL)
+	if (!psta)
 		return _FAIL;
 	precv_frame->u.hdr.psta = psta;
 	pattrib->amsdu = 0;
diff --git a/drivers/staging/rtl8712/rtl871x_security.c b/drivers/staging/rtl8712/rtl871x_security.c
index c05010d85212..5000c87752d3 100644
--- a/drivers/staging/rtl8712/rtl871x_security.c
+++ b/drivers/staging/rtl8712/rtl871x_security.c
@@ -584,7 +584,7 @@ u32 r8712_tkip_encrypt(struct _adapter *padapter, u8 *pxmitframe)
 		else
 			stainfo = r8712_get_stainfo(&padapter->stapriv,
 				  &pattrib->ra[0]);
-		if (stainfo != NULL) {
+		if (stainfo) {
 			prwskey = &stainfo->x_UncstKey.skey[0];
 			for (curfragnum = 0; curfragnum < pattrib->nr_frags;
 			     curfragnum++) {
@@ -658,7 +658,7 @@ void r8712_tkip_decrypt(struct _adapter *padapter, u8 *precvframe)
 	if (prxattrib->encrypt == _TKIP_) {
 		stainfo = r8712_get_stainfo(&padapter->stapriv,
 					    &prxattrib->ta[0]);
-		if (stainfo != NULL) {
+		if (stainfo) {
 			iv = pframe + prxattrib->hdrlen;
 			payload = pframe + prxattrib->iv_len +
 				  prxattrib->hdrlen;
@@ -1155,7 +1155,7 @@ u32 r8712_aes_encrypt(struct _adapter *padapter, u8 *pxmitframe)
 		else
 			stainfo = r8712_get_stainfo(&padapter->stapriv,
 				  &pattrib->ra[0]);
-		if (stainfo != NULL) {
+		if (stainfo) {
 			prwskey = &stainfo->x_UncstKey.skey[0];
 			for (curfragnum = 0; curfragnum < pattrib->nr_frags;
 			     curfragnum++) {
@@ -1357,7 +1357,7 @@ void r8712_aes_decrypt(struct _adapter *padapter, u8 *precvframe)
 	if (prxattrib->encrypt == _AES_) {
 		stainfo = r8712_get_stainfo(&padapter->stapriv,
 					    &prxattrib->ta[0]);
-		if (stainfo != NULL) {
+		if (stainfo) {
 			if (is_multicast_ether_addr(prxattrib->ra)) {
 				iv = pframe + prxattrib->hdrlen;
 				idx = iv[3];
diff --git a/drivers/staging/rtl8712/rtl871x_sta_mgt.c b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
index 653812c5d5a8..706e9db0fc5b 100644
--- a/drivers/staging/rtl8712/rtl871x_sta_mgt.c
+++ b/drivers/staging/rtl8712/rtl871x_sta_mgt.c
@@ -149,7 +149,7 @@ void r8712_free_stainfo(struct _adapter *padapter, struct sta_info *psta)
 	struct	xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	struct	sta_priv *pstapriv = &padapter->stapriv;
 
-	if (psta == NULL)
+	if (!psta)
 		return;
 	pfree_sta_queue = &pstapriv->free_sta_queue;
 	pstaxmitpriv = &psta->sta_xmitpriv;
@@ -222,7 +222,7 @@ struct sta_info *r8712_get_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 	struct sta_info *psta = NULL;
 	u32	index;
 
-	if (hwaddr == NULL)
+	if (!hwaddr)
 		return NULL;
 	index = wifi_mac_hash(hwaddr);
 	spin_lock_irqsave(&pstapriv->sta_hash_lock, irqL);
diff --git a/drivers/staging/rtl8712/rtl871x_xmit.c b/drivers/staging/rtl8712/rtl871x_xmit.c
index cae552276ab8..7093903b3af1 100644
--- a/drivers/staging/rtl8712/rtl871x_xmit.c
+++ b/drivers/staging/rtl8712/rtl871x_xmit.c
@@ -156,7 +156,7 @@ void _free_xmit_priv(struct xmit_priv *pxmitpriv)
 					pxmitpriv->pxmit_frame_buf;
 	struct xmit_buf *pxmitbuf = (struct xmit_buf *)pxmitpriv->pxmitbuf;
 
-	if (pxmitpriv->pxmit_frame_buf == NULL)
+	if (!pxmitpriv->pxmit_frame_buf)
 		return;
 	for (i = 0; i < NR_XMITFRAME; i++) {
 		r8712_xmit_complete(padapter, pxmitframe);
@@ -269,7 +269,7 @@ int r8712_update_attrib(struct _adapter *padapter, _pkt *pkt,
 			pattrib->mac_id = 5;
 		} else {
 			psta = r8712_get_stainfo(pstapriv, pattrib->ra);
-			if (psta == NULL)  /* drop the pkt */
+			if (!psta)  /* drop the pkt */
 				return -ENOMEM;
 			if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
 				pattrib->mac_id = 5;
@@ -362,7 +362,7 @@ static int xmitframe_addmic(struct _adapter *padapter,
 					    &pattrib->ra[0]);
 	if (pattrib->encrypt == _TKIP_) {
 		/*encode mic code*/
-		if (stainfo != NULL) {
+		if (stainfo) {
 			u8 null_key[16] = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
 					   0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0,
 					   0x0, 0x0};
@@ -592,10 +592,10 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 	u8 *pbuf_start;
 	bool bmcst = is_multicast_ether_addr(pattrib->ra);
 
-	if (pattrib->psta == NULL)
+	if (!pattrib->psta)
 		return _FAIL;
 	psta = pattrib->psta;
-	if (pxmitframe->buf_addr == NULL)
+	if (!pxmitframe->buf_addr)
 		return _FAIL;
 	pbuf_start = pxmitframe->buf_addr;
 	ptxdesc = pbuf_start;
@@ -623,7 +623,7 @@ sint r8712_xmitframe_coalesce(struct _adapter *padapter, _pkt *pkt,
 		mpdu_len -= pattrib->hdrlen;
 		/* adding icv, if necessary...*/
 		if (pattrib->iv_len) {
-			if (psta != NULL) {
+			if (psta) {
 				switch (pattrib->encrypt) {
 				case _WEP40_:
 				case _WEP104_:
@@ -711,7 +711,7 @@ void r8712_update_protection(struct _adapter *padapter, u8 *ie, uint ie_len)
 	case AUTO_VCS:
 	default:
 		perp = r8712_get_ie(ie, _ERPINFO_IE_, &erp_len, ie_len);
-		if (perp == NULL) {
+		if (!perp) {
 			pxmitpriv->vcs = NONE_VCS;
 		} else {
 			protection = (*(perp + 2)) & BIT(1);
@@ -750,7 +750,7 @@ void r8712_free_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf)
 	unsigned long irqL;
 	struct  __queue *pfree_xmitbuf_queue = &pxmitpriv->free_xmitbuf_queue;
 
-	if (pxmitbuf == NULL)
+	if (!pxmitbuf)
 		return;
 	spin_lock_irqsave(&pfree_xmitbuf_queue->lock, irqL);
 	list_del_init(&pxmitbuf->list);
@@ -803,7 +803,7 @@ void r8712_free_xmitframe(struct xmit_priv *pxmitpriv,
 	struct  __queue *pfree_xmit_queue = &pxmitpriv->free_xmit_queue;
 	struct _adapter *padapter = pxmitpriv->adapter;
 
-	if (pxmitframe == NULL)
+	if (!pxmitframe)
 		return;
 	spin_lock_irqsave(&pfree_xmit_queue->lock, irqL);
 	list_del_init(&pxmitframe->list);
@@ -819,7 +819,7 @@ void r8712_free_xmitframe(struct xmit_priv *pxmitpriv,
 void r8712_free_xmitframe_ex(struct xmit_priv *pxmitpriv,
 		      struct xmit_frame *pxmitframe)
 {
-	if (pxmitframe == NULL)
+	if (!pxmitframe)
 		return;
 	if (pxmitframe->frame_tag == DATA_FRAMETAG)
 		r8712_free_xmitframe(pxmitpriv, pxmitframe);
@@ -910,7 +910,7 @@ int r8712_xmit_classifier(struct _adapter *padapter,
 				psta = r8712_get_stainfo(pstapriv, pattrib->ra);
 		}
 	}
-	if (psta == NULL)
+	if (!psta)
 		return -EINVAL;
 	ptxservq = get_sta_pending(padapter, &pstapending,
 		   psta, pattrib->priority);
@@ -1022,7 +1022,7 @@ int r8712_pre_xmit(struct _adapter *padapter, struct xmit_frame *pxmitframe)
 		return ret;
 	}
 	pxmitbuf = r8712_alloc_xmitbuf(pxmitpriv);
-	if (pxmitbuf == NULL) { /*enqueue packet*/
+	if (!pxmitbuf) { /*enqueue packet*/
 		ret = false;
 		r8712_xmit_enqueue(padapter, pxmitframe);
 		spin_unlock_irqrestore(&pxmitpriv->lock, irqL);
diff --git a/drivers/staging/rtl8712/usb_intf.c b/drivers/staging/rtl8712/usb_intf.c
index 2fcd65260f4c..dc21e7743349 100644
--- a/drivers/staging/rtl8712/usb_intf.c
+++ b/drivers/staging/rtl8712/usb_intf.c
@@ -577,7 +577,7 @@ static int r871xu_drv_init(struct usb_interface *pusb_intf,
 error:
 	usb_put_dev(udev);
 	usb_set_intfdata(pusb_intf, NULL);
-	if (padapter && padapter->dvobj_deinit != NULL)
+	if (padapter && padapter->dvobj_deinit)
 		padapter->dvobj_deinit(padapter);
 	if (pnetdev)
 		free_netdev(pnetdev);
-- 
2.28.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
