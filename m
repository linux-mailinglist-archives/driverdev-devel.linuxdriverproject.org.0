Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71312338767
	for <lists+driverdev-devel@lfdr.de>; Fri, 12 Mar 2021 09:32:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0F03443259;
	Fri, 12 Mar 2021 08:32:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id pNDZ1hctHJt8; Fri, 12 Mar 2021 08:32:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4D65640025;
	Fri, 12 Mar 2021 08:32:16 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id E8A991BF59B
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CE04C6F9BC
 for <devel@linuxdriverproject.org>; Fri, 12 Mar 2021 08:27:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tN2RNODYh-iE for <devel@linuxdriverproject.org>;
 Fri, 12 Mar 2021 08:27:08 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C25A96067E
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 08:27:07 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id e9so1273045wrw.10
 for <devel@driverdev.osuosl.org>; Fri, 12 Mar 2021 00:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=0fzor9W8X7UXlrdB+HLVev43AKbZ1+zw2rVK7NYTlms=;
 b=oSuxjDgCx2UEPAy/9cHx7YkVzfI5jpUv1EBVbmU0guW/0vGEEiKKOk2Ir2KBjOtPtA
 QBmWHNrbGhiyScfg4YFoeOOZ6cX2qV1XaEcd+kJQCXHJoK3f23W/74lqmCYMYeLFJXd5
 R7VpTzyOBzEvIndflWdkIjx0jkP1UaHoW9p4zQdTJvnDd2FddKwBS9Qa6EXJKwAbCpMj
 w6jUZgCTj42jTp5aMgNBvKftXyIv1ae+sCFnIKWEDs0PbVbqmJgqp0sxctKhe1DjUsdA
 xxHT1ixaIf3ZHwU96sDKy9ZNQYq2MfaKYUQHeaXfakvnPC1CntI76uW3umgjTQXX1DEK
 3z9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0fzor9W8X7UXlrdB+HLVev43AKbZ1+zw2rVK7NYTlms=;
 b=qWojZ6jC56CGiIhytKxmgyY5L6/5XVdVLPRsix4Qeo5KEvtrR2soeInZzrMhh7y7AD
 DwY4Q5LQV9M37fbeRtS2ZgaQILoAoxM36Bf2HiufmYcxyPhtIPONgIecVWe+2pflsIZj
 hrecIR5UuuIWwvJm7AJOAz+/jjj13ZboT/u7DFjv7O58NJDZQZHs7DCRiCGR+gJkumzl
 oSwsNtPTgcM8d9JuCKAGYQb7ociMK5oOI4Ze18oZmbGwxAGRDq8+WWDpUc7WHBA1dU/w
 fLdvmauH19Gu4Pq+apUIQlequO4XqrlxWfFm0cOJTC9DC5i9KWxD0YL9neVMnoLy7Qpk
 KdOg==
X-Gm-Message-State: AOAM530B62/lrE4yu1H67gab5R4Mt2HziVLhmvkPBV8O06WmwvKYszf3
 JoxF70XqgW8W0GYu5NE0Rxw=
X-Google-Smtp-Source: ABdhPJzF1cBRswm+e5FXU9+bkxZaaa7HKzobGvzaP6QT8r+uBF+fCQT7tL93dAnEEIh//JZdX05C+Q==
X-Received: by 2002:a5d:404f:: with SMTP id w15mr13233046wrp.106.1615537625921; 
 Fri, 12 Mar 2021 00:27:05 -0800 (PST)
Received: from gimli.cesven (93-48-145-141.ip257.fastwebnet.it.
 [93.48.145.141])
 by smtp.gmail.com with ESMTPSA id i8sm7743979wry.90.2021.03.12.00.27.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Mar 2021 00:27:05 -0800 (PST)
From: Marco Cesati <marcocesati@gmail.com>
X-Google-Original-From: Marco Cesati <marco.cesati@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans de Goede <hdegoede@redhat.com>,
 Larry Finger <Larry.Finger@lwfinger.net>, devel@driverdev.osuosl.org
Subject: [PATCH 27/33] staging: rtl8723bs: remove typedefs in basic_types.h
Date: Fri, 12 Mar 2021 09:26:32 +0100
Message-Id: <20210312082638.25512-28-marco.cesati@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210312082638.25512-1-marco.cesati@gmail.com>
References: <20210312082638.25512-1-marco.cesati@gmail.com>
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

This commit fixes the following checkpatch.pl warning:

    WARNING: do not add new typedefs
    #16: FILE: include/basic_types.h:16:
    +typedef	signed int sint;

Signed-off-by: Marco Cesati <marco.cesati@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c       |  2 +-
 .../staging/rtl8723bs/core/rtw_ieee80211.c    |  6 +-
 .../staging/rtl8723bs/core/rtw_ioctl_set.c    |  2 +-
 drivers/staging/rtl8723bs/core/rtw_mlme.c     | 16 ++--
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c |  6 +-
 drivers/staging/rtl8723bs/core/rtw_recv.c     | 82 ++++++++---------
 drivers/staging/rtl8723bs/core/rtw_security.c | 88 +++++++++----------
 drivers/staging/rtl8723bs/core/rtw_xmit.c     | 38 ++++----
 drivers/staging/rtl8723bs/hal/hal_intf.c      |  2 +-
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c  |  4 +-
 .../staging/rtl8723bs/include/basic_types.h   |  2 -
 drivers/staging/rtl8723bs/include/ieee80211.h |  4 +-
 .../staging/rtl8723bs/include/recv_osdep.h    |  2 +-
 drivers/staging/rtl8723bs/include/rtw_cmd.h   |  2 +-
 drivers/staging/rtl8723bs/include/rtw_mlme.h  | 26 +++---
 drivers/staging/rtl8723bs/include/rtw_recv.h  | 14 +--
 drivers/staging/rtl8723bs/include/rtw_xmit.h  | 26 +++---
 .../staging/rtl8723bs/include/xmit_osdep.h    |  2 +-
 .../staging/rtl8723bs/os_dep/ioctl_linux.c    |  4 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c |  2 +-
 drivers/staging/rtl8723bs/os_dep/xmit_linux.c |  2 +-
 21 files changed, 165 insertions(+), 167 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index b6f944b37b08..7c765380a8c1 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -85,7 +85,7 @@ static void update_BCNTIM(struct adapter *padapter)
 
 			premainder_ie = p + tim_ielen;
 
-			tim_ie_offset = (sint)(p - pie);
+			tim_ie_offset = (signed int)(p - pie);
 
 			remainder_ielen = pnetwork_mlmeext->IELength - tim_ie_offset - tim_ielen;
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index a2a97826197a..cccbea555a32 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -120,7 +120,7 @@ u8 *rtw_set_fixed_ie(unsigned char *pbuf, unsigned int len, unsigned char *sourc
 
 /*  rtw_set_ie will update frame length */
 u8 *rtw_set_ie(u8 *pbuf,
-	       sint index,
+	       signed int index,
 	       uint len,
 	       u8 *source,
 	       uint *frlen) /* frame length */
@@ -140,9 +140,9 @@ u8 *rtw_set_ie(u8 *pbuf,
 /*----------------------------------------------------------------------------
 index: the information element id index, limit is the limit for search
 -----------------------------------------------------------------------------*/
-u8 *rtw_get_ie(u8 *pbuf, sint index, sint *len, sint limit)
+u8 *rtw_get_ie(u8 *pbuf, signed int index, signed int *len, signed int limit)
 {
-	sint tmp, i;
+	signed int tmp, i;
 	u8 *p;
 
 	if (limit < 1)
diff --git a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
index 1cfdf7c93662..c9418bfb2a00 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ioctl_set.c
@@ -567,7 +567,7 @@ u8 rtw_set_802_11_authentication_mode(struct adapter *padapter, enum NDIS_802_11
 u8 rtw_set_802_11_add_wep(struct adapter *padapter, struct ndis_802_11_wep *wep)
 {
 
-	sint		keyid, res;
+	signed int		keyid, res;
 	struct security_priv *psecuritypriv = &(padapter->securitypriv);
 	u8 ret = _SUCCESS;
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme.c b/drivers/staging/rtl8723bs/core/rtw_mlme.c
index 2c9425e2a1e9..57370091dc9f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme.c
@@ -298,9 +298,9 @@ void rtw_free_network_queue(struct adapter *padapter, u8 isfreeall)
 	spin_unlock_bh(&scanned_queue->lock);
 }
 
-sint rtw_if_up(struct adapter *padapter)
+signed int rtw_if_up(struct adapter *padapter)
 {
-	sint res;
+	signed int res;
 
 	if (padapter->bDriverStopped || padapter->bSurpriseRemoved ||
 		(check_fwstate(&padapter->mlmepriv, _FW_LINKED) == false)) {
@@ -2129,12 +2129,12 @@ int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
 	return ret;
 }
 
-sint rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
+signed int rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
 {
 	struct	cmd_obj *pcmd;
 	struct	setauth_parm *psetauthparm;
 	struct	cmd_priv *pcmdpriv = &(adapter->cmdpriv);
-	sint		res = _SUCCESS;
+	signed int		res = _SUCCESS;
 
 	pcmd = rtw_zmalloc(sizeof(struct cmd_obj));
 	if (!pcmd) {
@@ -2167,13 +2167,13 @@ sint rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
 	return res;
 }
 
-sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, sint keyid, u8 set_tx, bool enqueue)
+signed int rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, signed int keyid, u8 set_tx, bool enqueue)
 {
 	u8 keylen;
 	struct cmd_obj		*pcmd;
 	struct setkey_parm	*psetkeyparm;
 	struct cmd_priv 	*pcmdpriv = &(adapter->cmdpriv);
-	sint	res = _SUCCESS;
+	signed int	res = _SUCCESS;
 
 	psetkeyparm = rtw_zmalloc(sizeof(struct setkey_parm));
 	if (!psetkeyparm) {
@@ -2342,7 +2342,7 @@ static int rtw_append_pmkid(struct adapter *Adapter, int iEntry, u8 *ie, uint ie
 	return ie_len;
 }
 
-sint rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_len)
+signed int rtw_restruct_sec_ie(struct adapter *adapter, u8 *in_ie, u8 *out_ie, uint in_len)
 {
 	u8 authmode = 0x0;
 	uint	ielength;
@@ -2976,7 +2976,7 @@ void _rtw_roaming(struct adapter *padapter, struct wlan_network *tgt_network)
 
 }
 
-sint rtw_linked_check(struct adapter *padapter)
+signed int rtw_linked_check(struct adapter *padapter)
 {
 	if ((check_fwstate(&padapter->mlmepriv, WIFI_AP_STATE) == true) ||
 			(check_fwstate(&padapter->mlmepriv, WIFI_ADHOC_STATE|WIFI_ADHOC_MASTER_STATE) == true)) {
diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index f542805a461c..ca79e60838fe 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -2398,7 +2398,7 @@ s32 dump_mgntframe_and_wait_ack(struct adapter *padapter, struct xmit_frame *pmg
 static int update_hidden_ssid(u8 *ies, u32 ies_len, u8 hidden_ssid_mode)
 {
 	u8 *ssid_ie;
-	sint ssid_len_ori;
+	signed int ssid_len_ori;
 	int len_diff = 0;
 
 	ssid_ie = rtw_get_ie(ies,  WLAN_EID_SSID, &ssid_len_ori, ies_len);
@@ -2686,8 +2686,8 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
 		/* retrieve SSID IE from cur_network->Ssid */
 		{
 			u8 *ssid_ie;
-			sint ssid_ielen;
-			sint ssid_ielen_diff;
+			signed int ssid_ielen;
+			signed int ssid_ielen_diff;
 			u8 buf[MAX_IE_SZ];
 			u8 *ies = pmgntframe->buf_addr+TXDESC_OFFSET+sizeof(struct ieee80211_hdr_3addr);
 
diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index f35a134bb75f..c8353405d11f 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -30,11 +30,11 @@ void _rtw_init_sta_recv_priv(struct sta_recv_priv *psta_recvpriv)
 	_rtw_init_queue(&psta_recvpriv->defrag_q);
 }
 
-sint _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
+signed int _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter)
 {
-	sint i;
+	signed int i;
 	union recv_frame *precvframe;
-	sint	res = _SUCCESS;
+	signed int	res = _SUCCESS;
 
 	spin_lock_init(&precvpriv->lock);
 
@@ -168,7 +168,7 @@ int rtw_free_recvframe(union recv_frame *precvframe, struct __queue *pfree_recv_
 
 
 
-sint _rtw_enqueue_recvframe(union recv_frame *precvframe, struct __queue *queue)
+signed int _rtw_enqueue_recvframe(union recv_frame *precvframe, struct __queue *queue)
 {
 
 	struct adapter *padapter = precvframe->u.hdr.adapter;
@@ -187,9 +187,9 @@ sint _rtw_enqueue_recvframe(union recv_frame *precvframe, struct __queue *queue)
 	return _SUCCESS;
 }
 
-sint rtw_enqueue_recvframe(union recv_frame *precvframe, struct __queue *queue)
+signed int rtw_enqueue_recvframe(union recv_frame *precvframe, struct __queue *queue)
 {
-	sint ret;
+	signed int ret;
 
 	/* _spinlock(&pfree_recv_queue->lock); */
 	spin_lock_bh(&queue->lock);
@@ -201,7 +201,7 @@ sint rtw_enqueue_recvframe(union recv_frame *precvframe, struct __queue *queue)
 }
 
 /*
-sint	rtw_enqueue_recvframe(union recv_frame *precvframe, struct __queue *queue)
+signed int	rtw_enqueue_recvframe(union recv_frame *precvframe, struct __queue *queue)
 {
 	return rtw_free_recvframe(precvframe, queue);
 }
@@ -255,7 +255,7 @@ u32 rtw_free_uc_swdec_pending_queue(struct adapter *adapter)
 }
 
 
-sint rtw_enqueue_recvbuf_to_head(struct recv_buf *precvbuf, struct __queue *queue)
+signed int rtw_enqueue_recvbuf_to_head(struct recv_buf *precvbuf, struct __queue *queue)
 {
 	spin_lock_bh(&queue->lock);
 
@@ -267,7 +267,7 @@ sint rtw_enqueue_recvbuf_to_head(struct recv_buf *precvbuf, struct __queue *queu
 	return _SUCCESS;
 }
 
-sint rtw_enqueue_recvbuf(struct recv_buf *precvbuf, struct __queue *queue)
+signed int rtw_enqueue_recvbuf(struct recv_buf *precvbuf, struct __queue *queue)
 {
 	spin_lock_bh(&queue->lock);
 
@@ -305,11 +305,11 @@ struct recv_buf *rtw_dequeue_recvbuf(struct __queue *queue)
 
 }
 
-sint recvframe_chkmic(struct adapter *adapter,  union recv_frame *precvframe);
-sint recvframe_chkmic(struct adapter *adapter,  union recv_frame *precvframe)
+signed int recvframe_chkmic(struct adapter *adapter,  union recv_frame *precvframe);
+signed int recvframe_chkmic(struct adapter *adapter,  union recv_frame *precvframe)
 {
 
-	sint	i, res = _SUCCESS;
+	signed int	i, res = _SUCCESS;
 	u32 datalen;
 	u8 miccode[8];
 	u8 bmic_err = false, brpt_micerror = true;
@@ -606,10 +606,10 @@ union recv_frame *portctrl(struct adapter *adapter, union recv_frame *precv_fram
 	return prtnframe;
 }
 
-sint recv_decache(union recv_frame *precv_frame, u8 bretry, struct stainfo_rxcache *prxcache);
-sint recv_decache(union recv_frame *precv_frame, u8 bretry, struct stainfo_rxcache *prxcache)
+signed int recv_decache(union recv_frame *precv_frame, u8 bretry, struct stainfo_rxcache *prxcache);
+signed int recv_decache(union recv_frame *precv_frame, u8 bretry, struct stainfo_rxcache *prxcache)
 {
-	sint tid = precv_frame->u.hdr.attrib.priority;
+	signed int tid = precv_frame->u.hdr.attrib.priority;
 
 	u16 seq_ctrl = ((precv_frame->u.hdr.attrib.seq_num&0xffff) << 4) |
 		(precv_frame->u.hdr.attrib.frag_num & 0xf);
@@ -755,20 +755,20 @@ void count_rx_stats(struct adapter *padapter, union recv_frame *prframe, struct
 	traffic_check_for_leave_lps(padapter, false, 0);
 }
 
-sint sta2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
+signed int sta2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 			struct sta_info **psta);
-sint sta2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
+signed int sta2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 			struct sta_info **psta)
 {
 	u8 *ptr = precv_frame->u.hdr.rx_data;
-	sint ret = _SUCCESS;
+	signed int ret = _SUCCESS;
 	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
 	struct sta_priv *pstapriv = &adapter->stapriv;
 	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 	u8 *mybssid  = get_bssid(pmlmepriv);
 	u8 *myhwaddr = myid(&adapter->eeprompriv);
 	u8 *sta_addr = NULL;
-	sint bmcast = IS_MCAST(pattrib->dst);
+	signed int bmcast = IS_MCAST(pattrib->dst);
 
 	/* DBG_871X("[%s] %d, seqnum:%d\n", __func__, __LINE__, pattrib->seq_num); */
 
@@ -850,19 +850,19 @@ sint sta2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 	return ret;
 }
 
-sint ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
+signed int ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 		       struct sta_info **psta);
-sint ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
+signed int ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 		       struct sta_info **psta)
 {
 	u8 *ptr = precv_frame->u.hdr.rx_data;
 	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
-	sint ret = _SUCCESS;
+	signed int ret = _SUCCESS;
 	struct sta_priv *pstapriv = &adapter->stapriv;
 	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 	u8 *mybssid  = get_bssid(pmlmepriv);
 	u8 *myhwaddr = myid(&adapter->eeprompriv);
-	sint bmcast = IS_MCAST(pattrib->dst);
+	signed int bmcast = IS_MCAST(pattrib->dst);
 
 	if ((check_fwstate(pmlmepriv, WIFI_STATION_STATE) == true) &&
 	    (check_fwstate(pmlmepriv, _FW_LINKED) == true ||
@@ -992,9 +992,9 @@ sint ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 	return ret;
 }
 
-sint sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
+signed int sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 		       struct sta_info **psta);
-sint sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
+signed int sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 		       struct sta_info **psta)
 {
 	u8 *ptr = precv_frame->u.hdr.rx_data;
@@ -1002,7 +1002,7 @@ sint sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 	struct sta_priv *pstapriv = &adapter->stapriv;
 	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 	unsigned char *mybssid  = get_bssid(pmlmepriv);
-	sint ret = _SUCCESS;
+	signed int ret = _SUCCESS;
 
 	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true) {
 		/* For AP mode, RA =BSSID, TX =STA(SRC_ADDR), A3 =DST_ADDR */
@@ -1049,8 +1049,8 @@ sint sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 	return ret;
 }
 
-sint validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_frame);
-sint validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_frame)
+signed int validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_frame);
+signed int validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_frame)
 {
 	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
 	struct sta_priv *pstapriv = &padapter->stapriv;
@@ -1187,8 +1187,8 @@ sint validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_
 }
 
 union recv_frame *recvframe_chk_defrag(struct adapter *padapter, union recv_frame *precv_frame);
-sint validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *precv_frame);
-sint validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *precv_frame)
+signed int validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *precv_frame);
+signed int validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *precv_frame)
 {
 	/* struct mlme_priv *pmlmepriv = &adapter->mlmepriv; */
 
@@ -1227,8 +1227,8 @@ sint validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *precv_
 
 }
 
-sint validate_recv_data_frame(struct adapter *adapter, union recv_frame *precv_frame);
-sint validate_recv_data_frame(struct adapter *adapter, union recv_frame *precv_frame)
+signed int validate_recv_data_frame(struct adapter *adapter, union recv_frame *precv_frame);
+signed int validate_recv_data_frame(struct adapter *adapter, union recv_frame *precv_frame)
 {
 	u8 bretry;
 	u8 *psa, *pda, *pbssid;
@@ -1236,7 +1236,7 @@ sint validate_recv_data_frame(struct adapter *adapter, union recv_frame *precv_f
 	u8 *ptr = precv_frame->u.hdr.rx_data;
 	struct rx_pkt_attrib	*pattrib = &precv_frame->u.hdr.attrib;
 	struct security_priv *psecuritypriv = &adapter->securitypriv;
-	sint ret = _SUCCESS;
+	signed int ret = _SUCCESS;
 
 	bretry = GetRetry(ptr);
 	pda = get_da(ptr);
@@ -1364,7 +1364,7 @@ sint validate_recv_data_frame(struct adapter *adapter, union recv_frame *precv_f
 	return ret;
 }
 
-static sint validate_80211w_mgmt(struct adapter *adapter, union recv_frame *precv_frame)
+static signed int validate_80211w_mgmt(struct adapter *adapter, union recv_frame *precv_frame)
 {
 	struct mlme_priv *pmlmepriv = &adapter->mlmepriv;
 	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
@@ -1410,7 +1410,7 @@ static sint validate_80211w_mgmt(struct adapter *adapter, union recv_frame *prec
 			}
 		} else if (IS_MCAST(GetAddr1Ptr(ptr)) &&
 			(subtype == WIFI_DEAUTH || subtype == WIFI_DISASSOC)) {
-			sint BIP_ret = _SUCCESS;
+			signed int BIP_ret = _SUCCESS;
 			/* verify BIP MME IE of broadcast/multicast de-auth/disassoc packet */
 			BIP_ret = rtw_BIP_verify(adapter, (u8 *)precv_frame);
 			if (BIP_ret == _FAIL) {
@@ -1459,8 +1459,8 @@ static inline void dump_rx_packet(u8 *ptr)
 	DBG_871X("#############################\n");
 }
 
-sint validate_recv_frame(struct adapter *adapter, union recv_frame *precv_frame);
-sint validate_recv_frame(struct adapter *adapter, union recv_frame *precv_frame)
+signed int validate_recv_frame(struct adapter *adapter, union recv_frame *precv_frame);
+signed int validate_recv_frame(struct adapter *adapter, union recv_frame *precv_frame)
 {
 	/* shall check frame subtype, to / from ds, da, bssid */
 
@@ -1468,7 +1468,7 @@ sint validate_recv_frame(struct adapter *adapter, union recv_frame *precv_frame)
 
 	u8 type;
 	u8 subtype;
-	sint retval = _SUCCESS;
+	signed int retval = _SUCCESS;
 	u8 bDumpRxPkt;
 
 	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
@@ -1559,10 +1559,10 @@ sint validate_recv_frame(struct adapter *adapter, union recv_frame *precv_frame)
 
 
 /* remove the wlanhdr and add the eth_hdr */
-sint wlanhdr_to_ethhdr(union recv_frame *precvframe);
-sint wlanhdr_to_ethhdr(union recv_frame *precvframe)
+signed int wlanhdr_to_ethhdr(union recv_frame *precvframe);
+signed int wlanhdr_to_ethhdr(union recv_frame *precvframe)
 {
-	sint	rmv_len;
+	signed int	rmv_len;
 	u16 eth_type, len;
 	u8 bsnaphdr;
 	u8 *psnap_type;
diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index a311595deafb..4550113a55a2 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -148,7 +148,7 @@ static void arcfour_encrypt(struct arc4context *parc4ctx, u8 *dest, u8 *src, u32
 		dest[i] = src[i] ^ (unsigned char)arcfour_byte(parc4ctx);
 }
 
-static sint bcrc32initialized;
+static signed int bcrc32initialized;
 static u32 crc32_table[256];
 
 
@@ -162,7 +162,7 @@ static void crc32_init(void)
 	if (bcrc32initialized == 1)
 		return;
 	else {
-		sint i, j;
+		signed int i, j;
 		u32 c;
 		u8 *p = (u8 *)&c, *p1;
 		u8 k;
@@ -184,7 +184,7 @@ static void crc32_init(void)
 	}
 }
 
-static __le32 getcrc32(u8 *buf, sint len)
+static __le32 getcrc32(u8 *buf, signed int len)
 {
 	u8 *p;
 	u32  crc;
@@ -209,7 +209,7 @@ void rtw_wep_encrypt(struct adapter *padapter, u8 *pxmitframe)
 	unsigned char crc[4];
 	struct arc4context	 mycontext;
 
-	sint	curfragnum, length;
+	signed int	curfragnum, length;
 	u32 keylength;
 
 	u8 *pframe, *payload, *iv;    /* wepkey */
@@ -266,7 +266,7 @@ void rtw_wep_decrypt(struct adapter  *padapter, u8 *precvframe)
 	/*  exclude ICV */
 	u8 crc[4];
 	struct arc4context	 mycontext;
-	sint	length;
+	signed int	length;
 	u32 keylength;
 	u8 *pframe, *payload, *iv, wepkey[16];
 	u8  keyindex;
@@ -549,7 +549,7 @@ static const unsigned short Sbox1[2][256] = {      /* Sbox for hash (can be in R
 */
 static void phase1(u16 *p1k, const u8 *tk, const u8 *ta, u32 iv32)
 {
-	sint  i;
+	signed int  i;
 
 	/* Initialize the 80 bits of P1K[] from IV32 and TA[0..5]     */
 	p1k[0]      = Lo16(iv32);
@@ -597,7 +597,7 @@ static void phase1(u16 *p1k, const u8 *tk, const u8 *ta, u32 iv32)
 */
 static void phase2(u8 *rc4key, const u8 *tk, const u16 *p1k, u16 iv16)
 {
-	sint  i;
+	signed int  i;
 	u16 PPK[6];                          /* temporary key for mixing    */
 
 	/* Note: all adds in the PPK[] equations below are mod 2**16         */
@@ -651,7 +651,7 @@ u32 rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 	u8 crc[4];
 	u8   hw_hdr_offset = 0;
 	struct arc4context mycontext;
-	sint			curfragnum, length;
+	signed int			curfragnum, length;
 
 	u8 *pframe, *payload, *iv, *prwskey;
 	union pn48 dot11txpn;
@@ -727,7 +727,7 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 	u8   ttkey[16];
 	u8 crc[4];
 	struct arc4context mycontext;
-	sint			length;
+	signed int			length;
 
 	u8 *pframe, *payload, *iv, *prwskey;
 	union pn48 dot11txpn;
@@ -874,31 +874,31 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 
 static void bitwise_xor(u8 *ina, u8 *inb, u8 *out);
 static void construct_mic_iv(u8 *mic_header1,
-			     sint qc_exists,
-			     sint a4_exists,
+			     signed int qc_exists,
+			     signed int a4_exists,
 			     u8 *mpdu,
 			     uint payload_length,
 			     u8 *pn_vector,
 			     uint frtype); /*  add for CONFIG_IEEE80211W, none 11w also can use */
 static void construct_mic_header1(u8 *mic_header1,
-				  sint header_length,
+				  signed int header_length,
 				  u8 *mpdu,
 				  uint frtype); /* for CONFIG_IEEE80211W, none 11w also can use */
 static void construct_mic_header2(u8 *mic_header2,
 				  u8 *mpdu,
-				  sint a4_exists,
-				  sint qc_exists);
+				  signed int a4_exists,
+				  signed int qc_exists);
 static void construct_ctr_preload(u8 *ctr_preload,
-				  sint a4_exists,
-				  sint qc_exists,
+				  signed int a4_exists,
+				  signed int qc_exists,
 				  u8 *mpdu,
 				  u8 *pn_vector,
-				  sint c,
+				  signed int c,
 				  uint frtype); /* for CONFIG_IEEE80211W, none 11w also can use */
 static void xor_128(u8 *a, u8 *b, u8 *out);
 static void xor_32(u8 *a, u8 *b, u8 *out);
 static u8 sbox(u8 a);
-static void next_key(u8 *key, sint round);
+static void next_key(u8 *key, signed int round);
 static void byte_sub(u8 *in, u8 *out);
 static void shift_row(u8 *in, u8 *out);
 static void mix_column(u8 *in, u8 *out);
@@ -912,7 +912,7 @@ static void aes128k128d(u8 *key, u8 *data, u8 *ciphertext);
 /****************************************/
 static void xor_128(u8 *a, u8 *b, u8 *out)
 {
-		sint i;
+		signed int i;
 
 		for (i = 0; i < 16; i++)
 			out[i] = a[i] ^ b[i];
@@ -921,7 +921,7 @@ static void xor_128(u8 *a, u8 *b, u8 *out)
 
 static void xor_32(u8 *a, u8 *b, u8 *out)
 {
-		sint i;
+		signed int i;
 
 		for (i = 0; i < 4; i++)
 			out[i] = a[i] ^ b[i];
@@ -930,11 +930,11 @@ static void xor_32(u8 *a, u8 *b, u8 *out)
 
 static u8 sbox(u8 a)
 {
-		return sbox_table[(sint)a];
+		return sbox_table[(signed int)a];
 }
 
 
-static void next_key(u8 *key, sint round)
+static void next_key(u8 *key, signed int round)
 {
 		u8 rcon;
 		u8 sbox_key[4];
@@ -961,7 +961,7 @@ static void next_key(u8 *key, sint round)
 
 static void byte_sub(u8 *in, u8 *out)
 {
-		sint i;
+		signed int i;
 
 		for (i = 0; i < 16; i++)
 			out[i] = sbox(in[i]);
@@ -990,7 +990,7 @@ static void shift_row(u8 *in, u8 *out)
 
 static void mix_column(u8 *in, u8 *out)
 {
-		sint i;
+		signed int i;
 		u8 add1b[4];
 		u8 add1bf7[4];
 		u8 rotl[4];
@@ -1047,8 +1047,8 @@ static void mix_column(u8 *in, u8 *out)
 
 static void aes128k128d(u8 *key, u8 *data, u8 *ciphertext)
 {
-		sint round;
-		sint i;
+		signed int round;
+		signed int i;
 		u8 intermediatea[16];
 		u8 intermediateb[16];
 		u8 round_key[16];
@@ -1084,14 +1084,14 @@ static void aes128k128d(u8 *key, u8 *data, u8 *ciphertext)
 /* nonce                                        */
 /************************************************/
 static void construct_mic_iv(u8 *mic_iv,
-			     sint qc_exists,
-			     sint a4_exists,
+			     signed int qc_exists,
+			     signed int a4_exists,
 			     u8 *mpdu,
 			     uint payload_length,
 			     u8 *pn_vector,
 			     uint frtype) /* add for CONFIG_IEEE80211W, none 11w also can use */
 {
-		sint i;
+		signed int i;
 
 		mic_iv[0] = 0x59;
 
@@ -1128,7 +1128,7 @@ static void construct_mic_iv(u8 *mic_iv,
 /* Build AAD SC, A1, A2                           */
 /************************************************/
 static void construct_mic_header1(u8 *mic_header1,
-				  sint header_length,
+				  signed int header_length,
 				  u8 *mpdu,
 				  uint frtype) /* for CONFIG_IEEE80211W, none 11w also can use */
 {
@@ -1163,10 +1163,10 @@ static void construct_mic_header1(u8 *mic_header1,
 /************************************************/
 static void construct_mic_header2(u8 *mic_header2,
 				  u8 *mpdu,
-				  sint a4_exists,
-				  sint qc_exists)
+				  signed int a4_exists,
+				  signed int qc_exists)
 {
-		sint i;
+		signed int i;
 
 		for (i = 0; i < 16; i++)
 			mic_header2[i] = 0x00;
@@ -1208,14 +1208,14 @@ static void construct_mic_header2(u8 *mic_header2,
 /* nonce                                        */
 /************************************************/
 static void construct_ctr_preload(u8 *ctr_preload,
-				  sint a4_exists,
-				  sint qc_exists,
+				  signed int a4_exists,
+				  signed int qc_exists,
 				  u8 *mpdu,
 				  u8 *pn_vector,
-				  sint c,
+				  signed int c,
 				  uint frtype) /* for CONFIG_IEEE80211W, none 11w also can use */
 {
-	sint i = 0;
+	signed int i = 0;
 
 	for (i = 0; i < 16; i++)
 		ctr_preload[i] = 0x00;
@@ -1250,13 +1250,13 @@ static void construct_ctr_preload(u8 *ctr_preload,
 /************************************/
 static void bitwise_xor(u8 *ina, u8 *inb, u8 *out)
 {
-		sint i;
+		signed int i;
 
 		for (i = 0; i < 16; i++)
 			out[i] = ina[i] ^ inb[i];
 }
 
-static sint aes_cipher(u8 *key, uint	hdrlen,
+static signed int aes_cipher(u8 *key, uint	hdrlen,
 			u8 *pframe, uint plen)
 {
 	uint	qc_exists, a4_exists, i, j, payload_remainder,
@@ -1428,7 +1428,7 @@ u32 rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 	/* unsigned char message[MAX_MSG_SIZE]; */
 
 	/* Intermediate Buffers */
-	sint curfragnum, length;
+	signed int curfragnum, length;
 	u8 *pframe, *prwskey;	/*  *payload,*iv */
 	u8 hw_hdr_offset = 0;
 	struct pkt_attrib *pattrib = &((struct xmit_frame *)pxmitframe)->attrib;
@@ -1471,13 +1471,13 @@ u32 rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 	return res;
 }
 
-static sint aes_decipher(u8 *key, uint	hdrlen,
+static signed int aes_decipher(u8 *key, uint	hdrlen,
 			 u8 *pframe, uint plen)
 {
 	static u8 message[MAX_MSG_SIZE];
 	uint qc_exists, a4_exists, i, j, payload_remainder,
 			num_blocks, payload_index;
-	sint res = _SUCCESS;
+	signed int res = _SUCCESS;
 	u8 pn_vector[6];
 	u8 mic_iv[16];
 	u8 mic_header1[16];
@@ -1704,7 +1704,7 @@ u32 rtw_aes_decrypt(struct adapter *padapter, u8 *precvframe)
 
 	/* Intermediate Buffers */
 
-	sint length;
+	signed int length;
 	u8 *pframe, *prwskey;	/*  *payload,*iv */
 	struct sta_info *stainfo;
 	struct rx_pkt_attrib *prxattrib = &((union recv_frame *)precvframe)->u.hdr.attrib;
@@ -2241,7 +2241,7 @@ int omac1_aes_128(u8 *key, u8 *data, size_t data_len, u8 *mac)
 void rtw_sec_restore_wep_key(struct adapter *adapter)
 {
 	struct security_priv *securitypriv = &(adapter->securitypriv);
-	sint keyid;
+	signed int keyid;
 
 	if ((_WEP40_ == securitypriv->dot11PrivacyAlgrthm) || (_WEP104_ == securitypriv->dot11PrivacyAlgrthm)) {
 		for (keyid = 0; keyid < 4; keyid++) {
diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 19aecbabbc4d..0644b85c6f4c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -38,7 +38,7 @@ s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter)
 	int i;
 	struct xmit_buf *pxmitbuf;
 	struct xmit_frame *pxframe;
-	sint	res = _SUCCESS;
+	signed int	res = _SUCCESS;
 
 	spin_lock_init(&pxmitpriv->lock);
 	spin_lock_init(&pxmitpriv->lock_sctx);
@@ -476,10 +476,10 @@ static void update_attrib_phy_info(struct adapter *padapter, struct pkt_attrib *
 
 static s32 update_attrib_sec_info(struct adapter *padapter, struct pkt_attrib *pattrib, struct sta_info *psta)
 {
-	sint res = _SUCCESS;
+	signed int res = _SUCCESS;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct security_priv *psecuritypriv = &padapter->securitypriv;
-	sint bmcast = IS_MCAST(pattrib->ra);
+	signed int bmcast = IS_MCAST(pattrib->ra);
 
 	memset(pattrib->dot118021x_UncstKey.skey,  0, 16);
 	memset(pattrib->dot11tkiptxmickey.skey,  0, 16);
@@ -647,11 +647,11 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 	struct sta_info *psta = NULL;
 	struct ethhdr etherhdr;
 
-	sint bmcast;
+	signed int bmcast;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct qos_priv *pqospriv = &pmlmepriv->qospriv;
-	sint res = _SUCCESS;
+	signed int res = _SUCCESS;
 
 	_rtw_open_pktfile(pkt, &pktfile);
 	_rtw_pktfile_read(&pktfile, (u8 *)&etherhdr, ETH_HLEN);
@@ -793,7 +793,7 @@ static s32 update_attrib(struct adapter *padapter, _pkt *pkt, struct pkt_attrib
 
 static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitframe)
 {
-	sint			curfragnum, length;
+	signed int			curfragnum, length;
 	u8 *pframe, *payload, mic[8];
 	struct mic_data micdata;
 	struct pkt_attrib *pattrib = &pxmitframe->attrib;
@@ -801,7 +801,7 @@ static s32 xmitframe_addmic(struct adapter *padapter, struct xmit_frame *pxmitfr
 	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	u8 priority[4] = {0x0, 0x0, 0x0, 0x0};
 	u8 hw_hdr_offset = 0;
-	sint bmcst = IS_MCAST(pattrib->ra);
+	signed int bmcst = IS_MCAST(pattrib->ra);
 
 	hw_hdr_offset = TXDESC_OFFSET;
 
@@ -922,7 +922,7 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 	struct qos_priv *pqospriv = &pmlmepriv->qospriv;
 	u8 qos_option = false;
-	sint res = _SUCCESS;
+	signed int res = _SUCCESS;
 	__le16 *fctrl = &pwlanhdr->frame_control;
 
 	memset(hdr, 0, WLANHDR_OFFSET);
@@ -1416,7 +1416,7 @@ void rtw_update_protection(struct adapter *padapter, u8 *ie, uint ie_len)
 {
 	uint	protection;
 	u8 *perp;
-	sint	 erp_len;
+	signed int	 erp_len;
 	struct	xmit_priv *pxmitpriv = &padapter->xmitpriv;
 	struct	registry_priv *pregistrypriv = &padapter->registrypriv;
 
@@ -1884,7 +1884,7 @@ s32 rtw_xmitframe_enqueue(struct adapter *padapter, struct xmit_frame *pxmitfram
 	return _SUCCESS;
 }
 
-struct tx_servq *rtw_get_sta_pending(struct adapter *padapter, struct sta_info *psta, sint up, u8 *ac)
+struct tx_servq *rtw_get_sta_pending(struct adapter *padapter, struct sta_info *psta, signed int up, u8 *ac)
 {
 	struct tx_servq *ptxservq = NULL;
 
@@ -1933,7 +1933,7 @@ s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe)
 	struct tx_servq	*ptxservq;
 	struct pkt_attrib	*pattrib = &pxmitframe->attrib;
 	struct hw_xmit	*phwxmits =  padapter->xmitpriv.hwxmits;
-	sint res = _SUCCESS;
+	signed int res = _SUCCESS;
 
 	psta = rtw_get_stainfo(&padapter->stapriv, pattrib->ra);
 	if (pattrib->psta != psta) {
@@ -2014,9 +2014,9 @@ void rtw_free_hwxmits(struct adapter *padapter)
 	kfree(pxmitpriv->hwxmits);
 }
 
-void rtw_init_hwxmits(struct hw_xmit *phwxmit, sint entry)
+void rtw_init_hwxmits(struct hw_xmit *phwxmit, signed int entry)
 {
-	sint i;
+	signed int i;
 
 	for (i = 0; i < entry; i++, phwxmit++)
 		phwxmit->accnt = 0;
@@ -2163,14 +2163,14 @@ inline bool xmitframe_hiq_filter(struct xmit_frame *xmitframe)
 	return allow;
 }
 
-sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_frame *pxmitframe)
+signed int xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_frame *pxmitframe)
 {
-	sint ret = false;
+	signed int ret = false;
 	struct sta_info *psta = NULL;
 	struct sta_priv *pstapriv = &padapter->stapriv;
 	struct pkt_attrib *pattrib = &pxmitframe->attrib;
 	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
-	sint bmcst = IS_MCAST(pattrib->ra);
+	signed int bmcst = IS_MCAST(pattrib->ra);
 	bool update_tim = false;
 
 	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == false)
@@ -2286,7 +2286,7 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 
 static void dequeue_xmitframes_to_sleeping_queue(struct adapter *padapter, struct sta_info *psta, struct __queue *pframequeue)
 {
-	sint ret;
+	signed int ret;
 	struct list_head	*plist, *phead;
 	u8 ac_index;
 	struct tx_servq	*ptxservq;
@@ -2639,10 +2639,10 @@ struct xmit_buf *dequeue_pending_xmitbuf_under_survey(struct xmit_priv *pxmitpri
 	return pxmitbuf;
 }
 
-sint check_pending_xmitbuf(struct xmit_priv *pxmitpriv)
+signed int check_pending_xmitbuf(struct xmit_priv *pxmitpriv)
 {
 	struct __queue *pqueue;
-	sint	ret = false;
+	signed int	ret = false;
 
 	pqueue = &pxmitpriv->pending_xmitbuf_queue;
 
diff --git a/drivers/staging/rtl8723bs/hal/hal_intf.c b/drivers/staging/rtl8723bs/hal/hal_intf.c
index ac3066a91c84..b3c40dde2cb5 100644
--- a/drivers/staging/rtl8723bs/hal/hal_intf.c
+++ b/drivers/staging/rtl8723bs/hal/hal_intf.c
@@ -65,7 +65,7 @@ static void rtw_hal_init_opmode(struct adapter *padapter)
 {
 	enum NDIS_802_11_NETWORK_INFRASTRUCTURE networkType = Ndis802_11InfrastructureMax;
 	struct  mlme_priv *pmlmepriv = &(padapter->mlmepriv);
-	sint fw_state;
+	signed int fw_state;
 
 	fw_state = get_fwstate(pmlmepriv);
 
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 515b56ae9df0..d8b764fc97ea 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -788,8 +788,8 @@ static void ConstructProbeRsp(struct adapter *padapter, u8 *pframe, u32 *pLength
 	/* retrieve SSID IE from cur_network->Ssid */
 	{
 		u8 *ssid_ie;
-		sint ssid_ielen;
-		sint ssid_ielen_diff;
+		signed int ssid_ielen;
+		signed int ssid_ielen_diff;
 		u8 buf[MAX_IE_SZ];
 		u8 *ies = pframe + sizeof(struct ieee80211_hdr_3addr);
 
diff --git a/drivers/staging/rtl8723bs/include/basic_types.h b/drivers/staging/rtl8723bs/include/basic_types.h
index bab9811aeb5f..d0b2ec25327a 100644
--- a/drivers/staging/rtl8723bs/include/basic_types.h
+++ b/drivers/staging/rtl8723bs/include/basic_types.h
@@ -13,8 +13,6 @@
 
 #include <linux/types.h>
 
-typedef	signed int sint;
-
 #define FIELD_OFFSET(s, field)	((__kernel_ssize_t)&((s*)(0))->field)
 
 #define SIZE_PTR __kernel_size_t
diff --git a/drivers/staging/rtl8723bs/include/ieee80211.h b/drivers/staging/rtl8723bs/include/ieee80211.h
index 10b599f835bb..bda5712aac62 100644
--- a/drivers/staging/rtl8723bs/include/ieee80211.h
+++ b/drivers/staging/rtl8723bs/include/ieee80211.h
@@ -990,7 +990,7 @@ enum ParseRes rtw_ieee802_11_parse_elems(u8 *start, uint len,
 				int show_errors);
 
 u8 *rtw_set_fixed_ie(unsigned char *pbuf, unsigned int len, unsigned char *source, unsigned int *frlen);
-u8 *rtw_set_ie(u8 *pbuf, sint index, uint len, u8 *source, uint *frlen);
+u8 *rtw_set_ie(u8 *pbuf, signed int index, uint len, u8 *source, uint *frlen);
 
 enum secondary_ch_offset {
 	SCN = 0, /* no secondary channel */
@@ -998,7 +998,7 @@ enum secondary_ch_offset {
 	SCB = 3,  /* secondary channel below */
 };
 
-u8 *rtw_get_ie(u8*pbuf, sint index, sint *len, sint limit);
+u8 *rtw_get_ie(u8*pbuf, signed int index, signed int *len, signed int limit);
 u8 *rtw_get_ie_ex(u8 *in_ie, uint in_len, u8 eid, u8 *oui, u8 oui_len, u8 *ie, uint *ielen);
 int rtw_ies_remove_ie(u8 *ies, uint *ies_len, uint offset, u8 eid, u8 *oui, u8 oui_len);
 
diff --git a/drivers/staging/rtl8723bs/include/recv_osdep.h b/drivers/staging/rtl8723bs/include/recv_osdep.h
index e85aafc93f6d..5f686cb339ba 100644
--- a/drivers/staging/rtl8723bs/include/recv_osdep.h
+++ b/drivers/staging/rtl8723bs/include/recv_osdep.h
@@ -8,7 +8,7 @@
 #define __RECV_OSDEP_H_
 
 
-extern sint _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter);
+extern signed int _rtw_init_recv_priv(struct recv_priv *precvpriv, struct adapter *padapter);
 extern void _rtw_free_recv_priv(struct recv_priv *precvpriv);
 
 
diff --git a/drivers/staging/rtl8723bs/include/rtw_cmd.h b/drivers/staging/rtl8723bs/include/rtw_cmd.h
index 56c77bc7ca81..f2459ad8c1e8 100644
--- a/drivers/staging/rtl8723bs/include/rtw_cmd.h
+++ b/drivers/staging/rtl8723bs/include/rtw_cmd.h
@@ -265,7 +265,7 @@ Command-Event Mode
 #define RTW_SSID_SCAN_AMOUNT 9 /*  for WEXT_CSCAN_AMOUNT 9 */
 #define RTW_CHANNEL_SCAN_AMOUNT (14+37)
 struct sitesurvey_parm {
-	sint scan_mode;	/* active: 1, passive: 0 */
+	signed int scan_mode;	/* active: 1, passive: 0 */
 	u8 ssid_num;
 	u8 ch_num;
 	struct ndis_802_11_ssid ssid[RTW_SSID_SCAN_AMOUNT];
diff --git a/drivers/staging/rtl8723bs/include/rtw_mlme.h b/drivers/staging/rtl8723bs/include/rtw_mlme.h
index 2f9c2a03e385..18f1653fc975 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mlme.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mlme.h
@@ -130,7 +130,7 @@ SHALL not lock up more than one locks at a time!
 struct sitesurvey_ctrl {
 	u64	last_tx_pkts;
 	uint	last_rx_pkts;
-	sint	traffic_busy;
+	signed int	traffic_busy;
 	_timer	sitesurvey_ctrl_timer;
 };
 
@@ -330,7 +330,7 @@ enum {
 struct mlme_priv {
 
 	_lock	lock;
-	sint	fw_state;	/* shall we protect this variable? maybe not necessarily... */
+	signed int	fw_state;	/* shall we protect this variable? maybe not necessarily... */
 	u8 bScanInProcess;
 	u8 to_join; /* flag */
 
@@ -490,9 +490,9 @@ extern int rtw_init_mlme_priv(struct adapter *adapter);/*  (struct mlme_priv *pm
 extern void rtw_free_mlme_priv(struct mlme_priv *pmlmepriv);
 
 
-extern sint rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv);
-extern sint rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, sint keyid, u8 set_tx, bool enqueue);
-extern sint rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv);
+extern signed int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv);
+extern signed int rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, signed int keyid, u8 set_tx, bool enqueue);
+extern signed int rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv);
 
 static inline u8 *get_bssid(struct mlme_priv *pmlmepriv)
 {	/* if sta_mode:pmlmepriv->cur_network.network.MacAddress => bssid */
@@ -500,7 +500,7 @@ static inline u8 *get_bssid(struct mlme_priv *pmlmepriv)
 	return pmlmepriv->cur_network.network.MacAddress;
 }
 
-static inline sint check_fwstate(struct mlme_priv *pmlmepriv, sint state)
+static inline signed int check_fwstate(struct mlme_priv *pmlmepriv, signed int state)
 {
 	if (pmlmepriv->fw_state & state)
 		return true;
@@ -508,7 +508,7 @@ static inline sint check_fwstate(struct mlme_priv *pmlmepriv, sint state)
 	return false;
 }
 
-static inline sint get_fwstate(struct mlme_priv *pmlmepriv)
+static inline signed int get_fwstate(struct mlme_priv *pmlmepriv)
 {
 	return pmlmepriv->fw_state;
 }
@@ -520,7 +520,7 @@ static inline sint get_fwstate(struct mlme_priv *pmlmepriv)
  * ### NOTE:#### (!!!!)
  * MUST TAKE CARE THAT BEFORE CALLING THIS FUNC, YOU SHOULD HAVE LOCKED pmlmepriv->lock
  */
-static inline void set_fwstate(struct mlme_priv *pmlmepriv, sint state)
+static inline void set_fwstate(struct mlme_priv *pmlmepriv, signed int state)
 {
 	pmlmepriv->fw_state |= state;
 	/* FOR HW integration */
@@ -528,7 +528,7 @@ static inline void set_fwstate(struct mlme_priv *pmlmepriv, sint state)
 		pmlmepriv->bScanInProcess = true;
 }
 
-static inline void _clr_fwstate_(struct mlme_priv *pmlmepriv, sint state)
+static inline void _clr_fwstate_(struct mlme_priv *pmlmepriv, signed int state)
 {
 	pmlmepriv->fw_state &= ~state;
 	/* FOR HW integration */
@@ -540,7 +540,7 @@ static inline void _clr_fwstate_(struct mlme_priv *pmlmepriv, sint state)
  * No Limit on the calling context,
  * therefore set it to be the critical section...
  */
-static inline void clr_fwstate(struct mlme_priv *pmlmepriv, sint state)
+static inline void clr_fwstate(struct mlme_priv *pmlmepriv, signed int state)
 {
 	spin_lock_bh(&pmlmepriv->lock);
 	if (check_fwstate(pmlmepriv, state) == true)
@@ -548,7 +548,7 @@ static inline void clr_fwstate(struct mlme_priv *pmlmepriv, sint state)
 	spin_unlock_bh(&pmlmepriv->lock);
 }
 
-static inline void set_scanned_network_val(struct mlme_priv *pmlmepriv, sint val)
+static inline void set_scanned_network_val(struct mlme_priv *pmlmepriv, signed int val)
 {
 	spin_lock_bh(&pmlmepriv->lock);
 	pmlmepriv->num_of_scanned = val;
@@ -600,9 +600,9 @@ extern void _rtw_free_network_nolock(struct mlme_priv *pmlmepriv, struct wlan_ne
 
 extern struct wlan_network *_rtw_find_network(struct __queue *scanned_queue, u8 *addr);
 
-extern sint rtw_if_up(struct adapter *padapter);
+extern signed int rtw_if_up(struct adapter *padapter);
 
-sint rtw_linked_check(struct adapter *padapter);
+signed int rtw_linked_check(struct adapter *padapter);
 
 u8 *rtw_get_capability_from_ie(u8 *ie);
 u8 *rtw_get_beacon_interval_from_ie(u8 *ie);
diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index b4aeb44d5d6e..7737e3a0e105 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -276,7 +276,7 @@ struct recv_priv {
 struct sta_recv_priv {
 
 	_lock	lock;
-	sint	option;
+	signed int	option;
 
 	/* struct __queue	blk_strms[MAX_RX_NUMBLKS]; */
 	struct __queue defrag_q;	 /* keeping the fragment frame until defrag */
@@ -393,8 +393,8 @@ extern int rtw_enqueue_recvframe(union recv_frame *precvframe, struct __queue *q
 extern void rtw_free_recvframe_queue(struct __queue *pframequeue,  struct __queue *pfree_recv_queue);
 u32 rtw_free_uc_swdec_pending_queue(struct adapter *adapter);
 
-sint rtw_enqueue_recvbuf_to_head(struct recv_buf *precvbuf, struct __queue *queue);
-sint rtw_enqueue_recvbuf(struct recv_buf *precvbuf, struct __queue *queue);
+signed int rtw_enqueue_recvbuf_to_head(struct recv_buf *precvbuf, struct __queue *queue);
+signed int rtw_enqueue_recvbuf(struct recv_buf *precvbuf, struct __queue *queue);
 struct recv_buf *rtw_dequeue_recvbuf(struct __queue *queue);
 
 void rtw_reordering_ctrl_timeout_handler(struct timer_list *t);
@@ -419,7 +419,7 @@ static inline u8 *get_recvframe_data(union recv_frame *precvframe)
 
 }
 
-static inline u8 *recvframe_pull(union recv_frame *precvframe, sint sz)
+static inline u8 *recvframe_pull(union recv_frame *precvframe, signed int sz)
 {
 	/*  rx_data += sz; move rx_data sz bytes  hereafter */
 
@@ -444,7 +444,7 @@ static inline u8 *recvframe_pull(union recv_frame *precvframe, sint sz)
 
 }
 
-static inline u8 *recvframe_put(union recv_frame *precvframe, sint sz)
+static inline u8 *recvframe_put(union recv_frame *precvframe, signed int sz)
 {
 	/*  rx_tai += sz; move rx_tail sz bytes  hereafter */
 
@@ -473,7 +473,7 @@ static inline u8 *recvframe_put(union recv_frame *precvframe, sint sz)
 
 
 
-static inline u8 *recvframe_pull_tail(union recv_frame *precvframe, sint sz)
+static inline u8 *recvframe_pull_tail(union recv_frame *precvframe, signed int sz)
 {
 	/*  rmv data from rx_tail (by yitsen) */
 
@@ -507,7 +507,7 @@ static inline union recv_frame *rxmem_to_recvframe(u8 *rxmem)
 
 }
 
-static inline sint get_recvframe_len(union recv_frame *precvframe)
+static inline signed int get_recvframe_len(union recv_frame *precvframe)
 {
 	return precvframe->u.hdr.len;
 }
diff --git a/drivers/staging/rtl8723bs/include/rtw_xmit.h b/drivers/staging/rtl8723bs/include/rtw_xmit.h
index c04318573f8f..db5884a8a707 100644
--- a/drivers/staging/rtl8723bs/include/rtw_xmit.h
+++ b/drivers/staging/rtl8723bs/include/rtw_xmit.h
@@ -132,7 +132,7 @@ struct	hw_xmit	{
 	/* struct list_head	pending; */
 	struct __queue *sta_queue;
 	/* struct hw_txqueue *phwtxqueue; */
-	/* sint	txcmdcnt; */
+	/* signed int	txcmdcnt; */
 	int	accnt;
 };
 
@@ -313,8 +313,8 @@ struct tx_servq {
 
 struct sta_xmit_priv {
 	_lock	lock;
-	sint	option;
-	sint	apsd_setting;	/* When bit mask is on, the associated edca queue supports APSD. */
+	signed int	option;
+	signed int	apsd_setting;	/* When bit mask is on, the associated edca queue supports APSD. */
 
 
 	/* struct tx_servq blk_q[MAX_NUMBLKS]; */
@@ -336,14 +336,14 @@ struct sta_xmit_priv {
 
 
 struct	hw_txqueue	{
-	volatile sint	head;
-	volatile sint	tail;
-	volatile sint	free_sz;	/* in units of 64 bytes */
-	volatile sint      free_cmdsz;
-	volatile sint	 txsz[8];
+	volatile signed int	head;
+	volatile signed int	tail;
+	volatile signed int	free_sz;	/* in units of 64 bytes */
+	volatile signed int      free_cmdsz;
+	volatile signed int	 txsz[8];
 	uint	ff_hwaddr;
 	uint	cmd_hwaddr;
-	sint	ac_tag;
+	signed int	ac_tag;
 };
 
 struct agg_pkt_info {
@@ -463,7 +463,7 @@ struct xmit_frame *rtw_alloc_xmitframe_ext(struct xmit_priv *pxmitpriv);
 struct xmit_frame *rtw_alloc_xmitframe_once(struct xmit_priv *pxmitpriv);
 extern s32 rtw_free_xmitframe(struct xmit_priv *pxmitpriv, struct xmit_frame *pxmitframe);
 extern void rtw_free_xmitframe_queue(struct xmit_priv *pxmitpriv, struct __queue *pframequeue);
-struct tx_servq *rtw_get_sta_pending(struct adapter *padapter, struct sta_info *psta, sint up, u8 *ac);
+struct tx_servq *rtw_get_sta_pending(struct adapter *padapter, struct sta_info *psta, signed int up, u8 *ac);
 extern s32 rtw_xmitframe_enqueue(struct adapter *padapter, struct xmit_frame *pxmitframe);
 
 extern s32 rtw_xmit_classifier(struct adapter *padapter, struct xmit_frame *pxmitframe);
@@ -476,7 +476,7 @@ void _rtw_init_sta_xmit_priv(struct sta_xmit_priv *psta_xmitpriv);
 
 
 s32 rtw_txframes_pending(struct adapter *padapter);
-void rtw_init_hwxmits(struct hw_xmit *phwxmit, sint entry);
+void rtw_init_hwxmits(struct hw_xmit *phwxmit, signed int entry);
 
 
 s32 _rtw_init_xmit_priv(struct xmit_priv *pxmitpriv, struct adapter *padapter);
@@ -490,7 +490,7 @@ void rtw_free_hwxmits(struct adapter *padapter);
 s32 rtw_xmit(struct adapter *padapter, _pkt **pkt);
 bool xmitframe_hiq_filter(struct xmit_frame *xmitframe);
 
-sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_frame *pxmitframe);
+signed int xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_frame *pxmitframe);
 void stop_sta_xmit(struct adapter *padapter, struct sta_info *psta);
 void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta);
 void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *psta);
@@ -503,7 +503,7 @@ void enqueue_pending_xmitbuf(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmit
 void enqueue_pending_xmitbuf_to_head(struct xmit_priv *pxmitpriv, struct xmit_buf *pxmitbuf);
 struct xmit_buf *dequeue_pending_xmitbuf(struct xmit_priv *pxmitpriv);
 struct xmit_buf *dequeue_pending_xmitbuf_under_survey(struct xmit_priv *pxmitpriv);
-sint	check_pending_xmitbuf(struct xmit_priv *pxmitpriv);
+signed int	check_pending_xmitbuf(struct xmit_priv *pxmitpriv);
 int	rtw_xmit_thread(void *context);
 
 u32 rtw_get_ff_hwaddr(struct xmit_frame	*pxmitframe);
diff --git a/drivers/staging/rtl8723bs/include/xmit_osdep.h b/drivers/staging/rtl8723bs/include/xmit_osdep.h
index e9ff274f7474..78109c633c10 100644
--- a/drivers/staging/rtl8723bs/include/xmit_osdep.h
+++ b/drivers/staging/rtl8723bs/include/xmit_osdep.h
@@ -36,7 +36,7 @@ void rtw_os_xmit_resource_free(struct adapter *padapter, struct xmit_buf *pxmitb
 extern uint rtw_remainder_len(struct pkt_file *pfile);
 extern void _rtw_open_pktfile(_pkt *pkt, struct pkt_file *pfile);
 extern uint _rtw_pktfile_read(struct pkt_file *pfile, u8 *rmem, uint rlen);
-extern sint rtw_endofpktfile(struct pkt_file *pfile);
+extern signed int rtw_endofpktfile(struct pkt_file *pfile);
 
 extern void rtw_os_pkt_complete(struct adapter *padapter, _pkt *pkt);
 extern void rtw_os_xmit_complete(struct adapter *padapter, struct xmit_frame *pxframe);
diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index e1d168d6ac86..6a28420cdb2f 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -1423,7 +1423,7 @@ static int rtw_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
 	char *ev = extra;
 	char *stop = ev + wrqu->data.length;
 	u32 ret = 0;
-	sint wait_status;
+	signed int wait_status;
 
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("rtw_wx_get_scan\n"));
 	RT_TRACE(_module_rtl871x_ioctl_os_c, _drv_info_, (" Start of Query SIOCGIWSCAN .\n"));
@@ -4086,7 +4086,7 @@ static int rtw_set_hidden_ssid(struct net_device *dev, struct ieee_param *param,
 	int ie_len;
 	u8 *ssid_ie;
 	char ssid[NDIS_802_11_LENGTH_SSID + 1];
-	sint ssid_len;
+	signed int ssid_len;
 	u8 ignore_broadcast_ssid;
 
 	if (check_fwstate(mlmepriv, WIFI_AP_STATE) != true)
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index f52802f24466..e77cd2cc29b1 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -30,7 +30,7 @@ void rtw_os_recv_resource_alloc(struct adapter *padapter, union recv_frame *prec
 /* free os related resource in union recv_frame */
 void rtw_os_recv_resource_free(struct recv_priv *precvpriv)
 {
-	sint i;
+	signed int i;
 	union recv_frame *precvframe;
 
 	precvframe = (union recv_frame *) precvpriv->precv_frame_buf;
diff --git a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
index a89b88eaed39..79c477f559de 100644
--- a/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/xmit_linux.c
@@ -39,7 +39,7 @@ uint _rtw_pktfile_read(struct pkt_file *pfile, u8 *rmem, uint rlen)
 	return len;
 }
 
-sint rtw_endofpktfile(struct pkt_file *pfile)
+signed int rtw_endofpktfile(struct pkt_file *pfile)
 {
 	if (pfile->pkt_len == 0)
 		return true;
-- 
2.30.2

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
