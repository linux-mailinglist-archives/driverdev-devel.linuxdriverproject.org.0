Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6DE20D011
	for <lists+driverdev-devel@lfdr.de>; Mon, 29 Jun 2020 18:15:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id F0D44887BD;
	Mon, 29 Jun 2020 16:15:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WVIaYEptSxlS; Mon, 29 Jun 2020 16:15:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id F29348871A;
	Mon, 29 Jun 2020 16:15:39 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D8ABF1BF2EC
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 16:15:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id D076987115
 for <devel@linuxdriverproject.org>; Mon, 29 Jun 2020 16:15:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id BnuzAWpHQrqn for <devel@linuxdriverproject.org>;
 Mon, 29 Jun 2020 16:15:36 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0A6D287053
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 16:15:36 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id b15so13309747edy.7
 for <devel@driverdev.osuosl.org>; Mon, 29 Jun 2020 09:15:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+Juyoud8MpM8TQz1Dfa/76c2XGzho6tAHCYgSrh+ssA=;
 b=TAGxBhL9TYa/nGI/YUs+flh7diMa3p4hKBAJvzH5xnM1EDwpffiutAo5/l1ZyPKAHB
 YgSzqylMw02t6Y9/9T4+2f43lDv8Pt4CLp1DewKyuzwFVV513GrKp4oKq+ritKm0wN4p
 H4NSCAyKz1n0FJFsHZW63oTlhY/xLiMORN0S0cq5zGPhHawnHd9875R8cyQZv1lxFGcc
 zkIItDUX20m+xcychB6RRs+H66ZmaksXHdIJB7hWCG3pQweG+Bv4dJ5jA4QlCQIYNMJJ
 u8dTFmM1CtiY8QhYyKFxmscL23S92CwE8DUZD2Jhk4yr99xLm4/AauUTP9c58uggarJ8
 f4tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+Juyoud8MpM8TQz1Dfa/76c2XGzho6tAHCYgSrh+ssA=;
 b=GoDvtPbwQH2Tx9jAXKSlLbRTXQ7Hr4ybYl3CFTxw32TVZTZ0IhcO3p9sjwuv1V/MWw
 mnbUq+PTVTZI2VnZoYmWJh4tTgXCE2v9HUw0A5Ed1AlM7vDab627lI/G6lUQJfHDexvX
 vdfztHeT+R6unqKfYBbbP4+GDkGOvhCVz1Yp8QqecFfvosvgux8FQTAwuArc/u2AlfnN
 poNVC/Bhdt0pB6cyT26W5ggoeBEMk4EcN+/EKC4IKKrNdqZ0Qz0h12MXguMDVz7TUw+/
 9WT/1bVb3mpJrgwI7EaWqJOsTvOV54vuJQzJWlPFwpMj5Zi1YTfpvVb/JWqiUPsoWh1u
 lE0g==
X-Gm-Message-State: AOAM532dwzr2iLRGjzxWAQKBBthVX7yrdERYN+bFj6f3rCDIy6fjW9Yn
 S5dVy0KZeWQY762saM3lHhw=
X-Google-Smtp-Source: ABdhPJzmn3M3SPcSWVjMuwFiTJklF8gb+8bAasrmT5WDF1NkDvXwpGkCdxKsm/fV0n3vvJPZGEIEeA==
X-Received: by 2002:a05:6402:1757:: with SMTP id
 v23mr2072181edx.356.1593447334232; 
 Mon, 29 Jun 2020 09:15:34 -0700 (PDT)
Received: from localhost.localdomain
 (dslb-178-011-230-176.178.011.pools.vodafone-ip.de. [178.11.230.176])
 by smtp.gmail.com with ESMTPSA id m6sm87831ejq.85.2020.06.29.09.15.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Jun 2020 09:15:33 -0700 (PDT)
From: Michael Straube <straube.linux@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] staging: rtl8188eu: add spaces around operators
Date: Mon, 29 Jun 2020 18:12:55 +0200
Message-Id: <20200629161255.28371-2-straube.linux@gmail.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200629161255.28371-1-straube.linux@gmail.com>
References: <20200629161255.28371-1-straube.linux@gmail.com>
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
 Larry.Finger@lwfinger.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Add spaces around operators to improve readability and clear
checkpatch issues.

Signed-off-by: Michael Straube <straube.linux@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_pwrctrl.c  |   8 +-
 drivers/staging/rtl8188eu/core/rtw_recv.c     |  70 ++++++------
 drivers/staging/rtl8188eu/core/rtw_security.c | 102 +++++++++---------
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c  |   2 +-
 .../staging/rtl8188eu/os_dep/ioctl_linux.c    |  50 ++++-----
 5 files changed, 116 insertions(+), 116 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
index e7777bf3bafb..39ca97411fd5 100644
--- a/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
+++ b/drivers/staging/rtl8188eu/core/rtw_pwrctrl.c
@@ -205,10 +205,10 @@ static bool rtw_pwr_unassociated_idle(struct adapter *adapter)
 	if (time_after_eq(adapter->pwrctrlpriv.ips_deny_time, jiffies))
 		return false;
 
-	if (check_fwstate(pmlmepriv, WIFI_ASOC_STATE|WIFI_SITE_MONITOR) ||
-	    check_fwstate(pmlmepriv, WIFI_UNDER_LINKING|WIFI_UNDER_WPS) ||
+	if (check_fwstate(pmlmepriv, WIFI_ASOC_STATE | WIFI_SITE_MONITOR) ||
+	    check_fwstate(pmlmepriv, WIFI_UNDER_LINKING | WIFI_UNDER_WPS) ||
 	    check_fwstate(pmlmepriv, WIFI_AP_STATE) ||
-	    check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE|WIFI_ADHOC_STATE))
+	    check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE | WIFI_ADHOC_STATE))
 		return false;
 
 	return true;
@@ -249,7 +249,7 @@ void rtw_ps_processor(struct adapter *padapter)
 	if (!rtw_pwr_unassociated_idle(padapter))
 		goto exit;
 
-	if ((pwrpriv->rf_pwrstate == rf_on) && ((pwrpriv->pwr_state_check_cnts%4) == 0)) {
+	if ((pwrpriv->rf_pwrstate == rf_on) && ((pwrpriv->pwr_state_check_cnts % 4) == 0)) {
 		DBG_88E("==>%s .fw_state(%x)\n", __func__, get_fwstate(pmlmepriv));
 		pwrpriv->change_rfpwrstate = rf_off;
 
diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index 61ea8f38829c..44579f7cab87 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -244,10 +244,10 @@ static int recvframe_chkmic(struct adapter *adapter,
 			}
 
 			/* icv_len included the mic code */
-			datalen = precvframe->pkt->len-prxattrib->hdrlen -
-				  prxattrib->iv_len-prxattrib->icv_len-8;
+			datalen = precvframe->pkt->len - prxattrib->hdrlen -
+				  prxattrib->iv_len - prxattrib->icv_len - 8;
 			pframe = precvframe->pkt->data;
-			payload = pframe+prxattrib->hdrlen+prxattrib->iv_len;
+			payload = pframe + prxattrib->hdrlen + prxattrib->iv_len;
 
 			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("\n prxattrib->iv_len=%d prxattrib->icv_len=%d\n", prxattrib->iv_len, prxattrib->icv_len));
 			rtw_seccalctkipmic(mickey, pframe, payload, datalen, &miccode[0],
@@ -258,7 +258,7 @@ static int recvframe_chkmic(struct adapter *adapter,
 			bmic_err = false;
 
 			for (i = 0; i < 8; i++) {
-				if (miccode[i] != *(pframemic+i)) {
+				if (miccode[i] != *(pframemic + i)) {
 					RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
 						 ("%s: miccode[%d](%02x)!=*(pframemic+%d)(%02x) ",
 						  __func__, i, miccode[i], i, *(pframemic + i)));
@@ -269,14 +269,14 @@ static int recvframe_chkmic(struct adapter *adapter,
 			if (bmic_err) {
 				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
 					 ("\n *(pframemic-8)-*(pframemic-1)=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
-					 *(pframemic-8), *(pframemic-7), *(pframemic-6),
-					 *(pframemic-5), *(pframemic-4), *(pframemic-3),
-					 *(pframemic-2), *(pframemic-1)));
+					 *(pframemic - 8), *(pframemic - 7), *(pframemic - 6),
+					 *(pframemic - 5), *(pframemic - 4), *(pframemic - 3),
+					 *(pframemic - 2), *(pframemic - 1)));
 				RT_TRACE(_module_rtl871x_recv_c_, _drv_err_,
 					 ("\n *(pframemic-16)-*(pframemic-9)=0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x\n",
-					 *(pframemic-16), *(pframemic-15), *(pframemic-14),
-					 *(pframemic-13), *(pframemic-12), *(pframemic-11),
-					 *(pframemic-10), *(pframemic-9)));
+					 *(pframemic - 16), *(pframemic - 15), *(pframemic - 14),
+					 *(pframemic - 13), *(pframemic - 12), *(pframemic - 11),
+					 *(pframemic - 10), *(pframemic - 9)));
 				{
 					uint i;
 
@@ -287,14 +287,14 @@ static int recvframe_chkmic(struct adapter *adapter,
 						RT_TRACE(_module_rtl871x_recv_c_,
 							 _drv_err_,
 							 ("0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x:0x%02x",
-							 *(precvframe->pkt->data+i),
-							 *(precvframe->pkt->data+i+1),
-							 *(precvframe->pkt->data+i+2),
-							 *(precvframe->pkt->data+i+3),
-							 *(precvframe->pkt->data+i+4),
-							 *(precvframe->pkt->data+i+5),
-							 *(precvframe->pkt->data+i+6),
-							 *(precvframe->pkt->data+i+7)));
+							 *(precvframe->pkt->data + i),
+							 *(precvframe->pkt->data + i + 1),
+							 *(precvframe->pkt->data + i + 2),
+							 *(precvframe->pkt->data + i + 3),
+							 *(precvframe->pkt->data + i + 4),
+							 *(precvframe->pkt->data + i + 5),
+							 *(precvframe->pkt->data + i + 6),
+							 *(precvframe->pkt->data + i + 7)));
 					}
 					RT_TRACE(_module_rtl871x_recv_c_,
 						 _drv_err_,
@@ -488,7 +488,7 @@ static int recv_decache(struct recv_frame *precv_frame, u8 bretry,
 {
 	int tid = precv_frame->attrib.priority;
 
-	u16 seq_ctrl = ((precv_frame->attrib.seq_num&0xffff) << 4) |
+	u16 seq_ctrl = ((precv_frame->attrib.seq_num & 0xffff) << 4) |
 		(precv_frame->attrib.frag_num & 0xf);
 
 	if (tid > 15) {
@@ -553,29 +553,29 @@ static void process_wmmps_data(struct adapter *padapter,
 	if (!psta->qos_option)
 		return;
 
-	if (!(psta->qos_info&0xf))
+	if (!(psta->qos_info & 0xf))
 		return;
 
-	if (psta->state&WIFI_SLEEP_STATE) {
+	if (psta->state & WIFI_SLEEP_STATE) {
 		u8 wmmps_ac = 0;
 
 		switch (pattrib->priority) {
 		case 1:
 		case 2:
-			wmmps_ac = psta->uapsd_bk&BIT(1);
+			wmmps_ac = psta->uapsd_bk & BIT(1);
 			break;
 		case 4:
 		case 5:
-			wmmps_ac = psta->uapsd_vi&BIT(1);
+			wmmps_ac = psta->uapsd_vi & BIT(1);
 			break;
 		case 6:
 		case 7:
-			wmmps_ac = psta->uapsd_vo&BIT(1);
+			wmmps_ac = psta->uapsd_vo & BIT(1);
 			break;
 		case 0:
 		case 3:
 		default:
-			wmmps_ac = psta->uapsd_be&BIT(1);
+			wmmps_ac = psta->uapsd_be & BIT(1);
 			break;
 		}
 
@@ -884,20 +884,20 @@ static int validate_recv_ctrl_frame(struct adapter *padapter,
 		switch (pattrib->priority) {
 		case 1:
 		case 2:
-			wmmps_ac = psta->uapsd_bk&BIT(0);
+			wmmps_ac = psta->uapsd_bk & BIT(0);
 			break;
 		case 4:
 		case 5:
-			wmmps_ac = psta->uapsd_vi&BIT(0);
+			wmmps_ac = psta->uapsd_vi & BIT(0);
 			break;
 		case 6:
 		case 7:
-			wmmps_ac = psta->uapsd_vo&BIT(0);
+			wmmps_ac = psta->uapsd_vo & BIT(0);
 			break;
 		case 0:
 		case 3:
 		default:
-			wmmps_ac = psta->uapsd_be&BIT(0);
+			wmmps_ac = psta->uapsd_be & BIT(0);
 			break;
 		}
 
@@ -910,7 +910,7 @@ static int validate_recv_ctrl_frame(struct adapter *padapter,
 			psta->state ^= WIFI_STA_ALIVE_CHK_STATE;
 		}
 
-		if ((psta->state&WIFI_SLEEP_STATE) && (pstapriv->sta_dz_bitmap&BIT(psta->aid))) {
+		if ((psta->state & WIFI_SLEEP_STATE) && (pstapriv->sta_dz_bitmap & BIT(psta->aid))) {
 			struct list_head *xmitframe_plist, *xmitframe_phead;
 			struct xmit_frame *pxmitframe = NULL;
 
@@ -948,7 +948,7 @@ static int validate_recv_ctrl_frame(struct adapter *padapter,
 					update_beacon(padapter, _TIM_IE_, NULL, false);
 				}
 			} else {
-				if (pstapriv->tim_bitmap&BIT(psta->aid)) {
+				if (pstapriv->tim_bitmap & BIT(psta->aid)) {
 					if (psta->sleepq_len == 0) {
 						DBG_88E("no buffered packets to xmit\n");
 
@@ -1266,8 +1266,8 @@ static int wlanhdr_to_ethhdr(struct recv_frame *precvframe)
 	if (pattrib->encrypt)
 		skb_trim(precvframe->pkt, precvframe->pkt->len - pattrib->icv_len);
 
-	psnap = (struct ieee80211_snap_hdr *)(ptr+pattrib->hdrlen + pattrib->iv_len);
-	psnap_type = ptr+pattrib->hdrlen + pattrib->iv_len+SNAP_SIZE;
+	psnap = (struct ieee80211_snap_hdr *)(ptr + pattrib->hdrlen + pattrib->iv_len);
+	psnap_type = ptr + pattrib->hdrlen + pattrib->iv_len + SNAP_SIZE;
 	/* convert hdr + possible LLC headers into Ethernet header */
 	if ((!memcmp(psnap, rfc1042_header, SNAP_SIZE) &&
 	     memcmp(psnap_type, SNAP_ETH_TYPE_IPX, 2) &&
@@ -1286,7 +1286,7 @@ static int wlanhdr_to_ethhdr(struct recv_frame *precvframe)
 	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_,
 		 ("\n===pattrib->hdrlen: %x,  pattrib->iv_len:%x===\n\n", pattrib->hdrlen,  pattrib->iv_len));
 
-	memcpy(&be_tmp, ptr+rmv_len, 2);
+	memcpy(&be_tmp, ptr + rmv_len, 2);
 	eth_type = ntohs(be_tmp); /* pattrib->ether_type */
 	pattrib->eth_type = eth_type;
 
@@ -1535,7 +1535,7 @@ static int amsdu_to_msdu(struct adapter *padapter, struct recv_frame *prframe)
 		pdata += nSubframe_Length;
 		a_len -= nSubframe_Length;
 		if (a_len != 0) {
-			padding_len = 4 - ((nSubframe_Length + ETH_HLEN) & (4-1));
+			padding_len = 4 - ((nSubframe_Length + ETH_HLEN) & (4 - 1));
 			if (padding_len == 4)
 				padding_len = 0;
 
diff --git a/drivers/staging/rtl8188eu/core/rtw_security.c b/drivers/staging/rtl8188eu/core/rtw_security.c
index 435c0fbec54a..f9139f72b3a7 100644
--- a/drivers/staging/rtl8188eu/core/rtw_security.c
+++ b/drivers/staging/rtl8188eu/core/rtw_security.c
@@ -80,9 +80,9 @@ static u32 crc32_table[256];
 
 static u8 crc32_reverseBit(u8 data)
 {
-	return (u8)((data<<7)&0x80) | ((data<<5)&0x40) | ((data<<3)&0x20) |
-		   ((data<<1)&0x10) | ((data>>1)&0x08) | ((data>>3)&0x04) |
-		   ((data>>5)&0x02) | ((data>>7)&0x01);
+	return (u8)((data << 7) & 0x80) | ((data << 5) & 0x40) | ((data << 3) & 0x20) |
+		   ((data << 1) & 0x10) | ((data >> 1) & 0x08) | ((data >> 3) & 0x04) |
+		   ((data >> 5) & 0x02) | ((data >> 7) & 0x01);
 }
 
 static void crc32_init(void)
@@ -260,7 +260,7 @@ static u32 secmicgetuint32(u8 *p)
 	u32 res = 0;
 
 	for (i = 0; i < 4; i++)
-		res |= ((u32)(*p++)) << (8*i);
+		res |= ((u32)(*p++)) << (8 * i);
 	return res;
 }
 
@@ -296,7 +296,7 @@ void rtw_secmicsetkey(struct mic_data *pmicdata, u8 *key)
 void rtw_secmicappendbyte(struct mic_data *pmicdata, u8 b)
 {
 	/*  Append the byte to our word-sized buffer */
-	pmicdata->M |= ((unsigned long)b) << (8*pmicdata->nBytesInM);
+	pmicdata->M |= ((unsigned long)b) << (8 * pmicdata->nBytesInM);
 	pmicdata->nBytesInM++;
 	/*  Process the word if it is full. */
 	if (pmicdata->nBytesInM >= 4) {
@@ -337,7 +337,7 @@ void rtw_secgetmic(struct mic_data *pmicdata, u8 *dst)
 		rtw_secmicappendbyte(pmicdata, 0);
 	/*  The appendByte function has already computed the result. */
 	secmicputuint32(dst, pmicdata->L);
-	secmicputuint32(dst+4, pmicdata->R);
+	secmicputuint32(dst + 4, pmicdata->R);
 	/*  Reset to the empty message. */
 	secmicclear(pmicdata);
 }
@@ -351,15 +351,15 @@ void rtw_seccalctkipmic(u8 *key, u8 *header, u8 *data, u32 data_len, u8 *mic_cod
 	priority[0] = pri;
 
 	/* Michael MIC pseudo header: DA, SA, 3 x 0, Priority */
-	if (header[1]&1) {   /* ToDS == 1 */
+	if (header[1] & 1) {   /* ToDS == 1 */
 		rtw_secmicappend(&micdata, &header[16], 6);  /* DA */
-		if (header[1]&2)  /* From Ds == 1 */
+		if (header[1] & 2)  /* From Ds == 1 */
 			rtw_secmicappend(&micdata, &header[24], 6);
 		else
 			rtw_secmicappend(&micdata, &header[10], 6);
 	} else {	/* ToDS == 0 */
 		rtw_secmicappend(&micdata, &header[4], 6);   /* DA */
-		if (header[1]&2)  /* From Ds == 1 */
+		if (header[1] & 2)  /* From Ds == 1 */
 			rtw_secmicappend(&micdata, &header[16], 6);
 		else
 			rtw_secmicappend(&micdata, &header[10], 6);
@@ -382,7 +382,7 @@ void rtw_seccalctkipmic(u8 *key, u8 *header, u8 *data, u32 data_len, u8 *mic_cod
 #define  Mk16(hi, lo) ((lo) ^ (((u16)(hi)) << 8))
 
 /* select the Nth 16-bit word of the temporal key unsigned char array TK[]   */
-#define  TK16(N)     Mk16(tk[2*(N)+1], tk[2*(N)])
+#define  TK16(N)     Mk16(tk[2 * (N) + 1], tk[2 * (N)])
 
 /* S-box lookup: 16 bits --> 16 bits */
 #define _S_(v16)     (Sbox1[0][Lo8(v16)] ^ Sbox1[1][Hi8(v16)])
@@ -497,11 +497,11 @@ static void phase1(u16 *p1k, const u8 *tk, const u8 *ta, u32 iv32)
 	/* Now compute an unbalanced Feistel cipher with 80-bit block */
 	/* size on the 80-bit block P1K[], using the 128-bit key TK[] */
 	for (i = 0; i < PHASE1_LOOP_CNT; i++) { /* Each add operation here is mod 2**16 */
-		p1k[0] += _S_(p1k[4] ^ TK16((i&1)+0));
-		p1k[1] += _S_(p1k[0] ^ TK16((i&1)+2));
-		p1k[2] += _S_(p1k[1] ^ TK16((i&1)+4));
-		p1k[3] += _S_(p1k[2] ^ TK16((i&1)+6));
-		p1k[4] += _S_(p1k[3] ^ TK16((i&1)+0));
+		p1k[0] += _S_(p1k[4] ^ TK16((i & 1) + 0));
+		p1k[1] += _S_(p1k[0] ^ TK16((i & 1) + 2));
+		p1k[2] += _S_(p1k[1] ^ TK16((i & 1) + 4));
+		p1k[3] += _S_(p1k[2] ^ TK16((i & 1) + 6));
+		p1k[4] += _S_(p1k[3] ^ TK16((i & 1) + 0));
 		p1k[4] +=  (unsigned short)i;   /* avoid "slide attacks" */
 	}
 }
@@ -566,8 +566,8 @@ static void phase2(u8 *rc4key, const u8 *tk, const u16 *p1k, u16 iv16)
 
 	/* Copy 96 bits of PPK[0..5] to RC4KEY[4..15]  (little-endian)       */
 	for (i = 0; i < 6; i++) {
-		rc4key[4+2*i] = Lo8(PPK[i]);
-		rc4key[5+2*i] = Hi8(PPK[i]);
+		rc4key[4 + 2 * i] = Lo8(PPK[i]);
+		rc4key[5 + 2 * i] = Hi8(PPK[i]);
 	}
 }
 
@@ -613,18 +613,18 @@ u32	rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 				prwskey = &stainfo->dot118021x_UncstKey.skey[0];
 
 			for (curfragnum = 0; curfragnum < pattrib->nr_frags; curfragnum++) {
-				iv = pframe+pattrib->hdrlen;
-				payload = pframe+pattrib->iv_len+pattrib->hdrlen;
+				iv = pframe + pattrib->hdrlen;
+				payload = pframe + pattrib->iv_len + pattrib->hdrlen;
 
 				GET_TKIP_PN(iv, dot11txpn);
 
 				pnl = (u16)(dot11txpn.val);
-				pnh = (u32)(dot11txpn.val>>16);
+				pnh = (u32)(dot11txpn.val >> 16);
 				phase1((u16 *)&ttkey[0], prwskey, &pattrib->ta[0], pnh);
 				phase2(&rc4key[0], prwskey, (u16 *)&ttkey[0], pnl);
 
-				if ((curfragnum+1) == pattrib->nr_frags) {	/* 4 the last fragment */
-					length = pattrib->last_txcmdsz-pattrib->hdrlen-pattrib->iv_len-pattrib->icv_len;
+				if ((curfragnum + 1) == pattrib->nr_frags) {	/* 4 the last fragment */
+					length = pattrib->last_txcmdsz - pattrib->hdrlen - pattrib->iv_len - pattrib->icv_len;
 					RT_TRACE(_module_rtl871x_security_c_, _drv_info_,
 						 ("pattrib->iv_len=%x, pattrib->icv_len=%x\n",
 						 pattrib->iv_len, pattrib->icv_len));
@@ -632,13 +632,13 @@ u32	rtw_tkip_encrypt(struct adapter *padapter, u8 *pxmitframe)
 
 					arcfour_init(&mycontext, rc4key, 16);
 					arcfour_encrypt(&mycontext, payload, payload, length);
-					arcfour_encrypt(&mycontext, payload+length, crc, 4);
+					arcfour_encrypt(&mycontext, payload + length, crc, 4);
 				} else {
-					length = pxmitpriv->frag_len-pattrib->hdrlen-pattrib->iv_len-pattrib->icv_len;
+					length = pxmitpriv->frag_len - pattrib->hdrlen - pattrib->iv_len - pattrib->icv_len;
 					*((__le32 *)crc) = getcrc32(payload, length);/* modified by Amy*/
 					arcfour_init(&mycontext, rc4key, 16);
 					arcfour_encrypt(&mycontext, payload, payload, length);
-					arcfour_encrypt(&mycontext, payload+length, crc, 4);
+					arcfour_encrypt(&mycontext, payload + length, crc, 4);
 
 					pframe += pxmitpriv->frag_len;
 					pframe = (u8 *)round_up((size_t)(pframe), 4);
@@ -689,14 +689,14 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 				prwskey = &stainfo->dot118021x_UncstKey.skey[0];
 			}
 
-			iv = pframe+prxattrib->hdrlen;
-			payload = pframe+prxattrib->iv_len+prxattrib->hdrlen;
-			length = ((struct recv_frame *)precvframe)->pkt->len-prxattrib->hdrlen-prxattrib->iv_len;
+			iv = pframe + prxattrib->hdrlen;
+			payload = pframe + prxattrib->iv_len + prxattrib->hdrlen;
+			length = ((struct recv_frame *)precvframe)->pkt->len - prxattrib->hdrlen - prxattrib->iv_len;
 
 			GET_TKIP_PN(iv, dot11txpn);
 
 			pnl = (u16)(dot11txpn.val);
-			pnh = (u32)(dot11txpn.val>>16);
+			pnh = (u32)(dot11txpn.val >> 16);
 
 			phase1((u16 *)&ttkey[0], prwskey, &prxattrib->ta[0], pnh);
 			phase2(&rc4key[0], prwskey, (unsigned short *)&ttkey[0], pnl);
@@ -706,15 +706,15 @@ u32 rtw_tkip_decrypt(struct adapter *padapter, u8 *precvframe)
 			arcfour_init(&mycontext, rc4key, 16);
 			arcfour_encrypt(&mycontext, payload, payload, length);
 
-			*((__le32 *)crc) = getcrc32(payload, length-4);
+			*((__le32 *)crc) = getcrc32(payload, length - 4);
 
-			if (crc[3] != payload[length-1] ||
-			    crc[2] != payload[length-2] ||
-			    crc[1] != payload[length-3] ||
-			    crc[0] != payload[length-4]) {
+			if (crc[3] != payload[length - 1] ||
+			    crc[2] != payload[length - 2] ||
+			    crc[1] != payload[length - 3] ||
+			    crc[0] != payload[length - 4]) {
 				RT_TRACE(_module_rtl871x_security_c_, _drv_err_,
 					 ("rtw_wep_decrypt:icv error crc (%4ph)!=payload (%4ph)\n",
-					 &crc, &payload[length-4]));
+					 &crc, &payload[length - 4]));
 				res = _FAIL;
 			}
 		} else {
@@ -900,7 +900,7 @@ static void mix_column(u8 *in, u8 *out)
 
 	for (i = 3; i > 0; i--) {    /* logical shift left 1 bit */
 		andf7[i] = andf7[i] << 1;
-		if ((andf7[i-1] & 0x80) == 0x80)
+		if ((andf7[i - 1] & 0x80) == 0x80)
 			andf7[i] = (andf7[i] | 0x01);
 	}
 	andf7[0] = andf7[0] << 1;
@@ -1025,7 +1025,7 @@ static void construct_mic_header2(u8 *mic_header2, u8 *mpdu, int a4_exists, int
 
 	if (!qc_exists && a4_exists) {
 		for (i = 0; i < 6; i++)
-			mic_header2[8+i] = mpdu[24+i];   /* A4 */
+			mic_header2[8 + i] = mpdu[24 + i];   /* A4 */
 	}
 
 	if (qc_exists && !a4_exists) {
@@ -1035,7 +1035,7 @@ static void construct_mic_header2(u8 *mic_header2, u8 *mpdu, int a4_exists, int
 
 	if (qc_exists && a4_exists) {
 		for (i = 0; i < 6; i++)
-			mic_header2[8+i] = mpdu[24+i];   /* A4 */
+			mic_header2[8 + i] = mpdu[24 + i];   /* A4 */
 
 		mic_header2[14] = mpdu[30] & 0x0f;
 		mic_header2[15] = mpdu[31] & 0x00;
@@ -1128,11 +1128,11 @@ static int aes_cipher(u8 *key, uint hdrlen, u8 *pframe, uint plen)
 	}
 
 	pn_vector[0] = pframe[hdrlen];
-	pn_vector[1] = pframe[hdrlen+1];
-	pn_vector[2] = pframe[hdrlen+4];
-	pn_vector[3] = pframe[hdrlen+5];
-	pn_vector[4] = pframe[hdrlen+6];
-	pn_vector[5] = pframe[hdrlen+7];
+	pn_vector[1] = pframe[hdrlen + 1];
+	pn_vector[2] = pframe[hdrlen + 4];
+	pn_vector[3] = pframe[hdrlen + 5];
+	pn_vector[4] = pframe[hdrlen + 6];
+	pn_vector[5] = pframe[hdrlen + 7];
 
 	construct_mic_iv(mic_iv, qc_exists, a4_exists, pframe, plen, pn_vector);
 
@@ -1174,11 +1174,11 @@ static int aes_cipher(u8 *key, uint hdrlen, u8 *pframe, uint plen)
 
 	/* Insert MIC into payload */
 	for (j = 0; j < 8; j++)
-		pframe[payload_index+j] = mic[j];
+		pframe[payload_index + j] = mic[j];
 
 	payload_index = hdrlen + 8;
 	for (i = 0; i < num_blocks; i++) {
-		construct_ctr_preload(ctr_preload, a4_exists, qc_exists, pframe, pn_vector, i+1);
+		construct_ctr_preload(ctr_preload, a4_exists, qc_exists, pframe, pn_vector, i + 1);
 		aes128k128d(key, ctr_preload, aes_out);
 		bitwise_xor(aes_out, &pframe[payload_index], chain_buffer);
 		for (j = 0; j < 16; j++)
@@ -1187,12 +1187,12 @@ static int aes_cipher(u8 *key, uint hdrlen, u8 *pframe, uint plen)
 
 	if (payload_remainder > 0) {    /* If there is a short final block, then pad it,*/
 					/* encrypt it and copy the unpadded part back   */
-		construct_ctr_preload(ctr_preload, a4_exists, qc_exists, pframe, pn_vector, num_blocks+1);
+		construct_ctr_preload(ctr_preload, a4_exists, qc_exists, pframe, pn_vector, num_blocks + 1);
 
 		for (j = 0; j < 16; j++)
 			padded_buffer[j] = 0x00;
 		for (j = 0; j < payload_remainder; j++)
-			padded_buffer[j] = pframe[payload_index+j];
+			padded_buffer[j] = pframe[payload_index + j];
 		aes128k128d(key, ctr_preload, aes_out);
 		bitwise_xor(aes_out, padded_buffer, chain_buffer);
 		for (j = 0; j < payload_remainder; j++)
@@ -1204,7 +1204,7 @@ static int aes_cipher(u8 *key, uint hdrlen, u8 *pframe, uint plen)
 	for (j = 0; j < 16; j++)
 		padded_buffer[j] = 0x00;
 	for (j = 0; j < 8; j++)
-		padded_buffer[j] = pframe[j+hdrlen+8+plen];
+		padded_buffer[j] = pframe[j + hdrlen + 8 + plen];
 
 	aes128k128d(key, ctr_preload, aes_out);
 	bitwise_xor(aes_out, padded_buffer, chain_buffer);
@@ -1254,12 +1254,12 @@ u32	rtw_aes_encrypt(struct adapter *padapter, u8 *pxmitframe)
 			else
 				prwskey = &stainfo->dot118021x_UncstKey.skey[0];
 			for (curfragnum = 0; curfragnum < pattrib->nr_frags; curfragnum++) {
-				if ((curfragnum+1) == pattrib->nr_frags) {	/* 4 the last fragment */
-					length = pattrib->last_txcmdsz-pattrib->hdrlen-pattrib->iv_len-pattrib->icv_len;
+				if ((curfragnum + 1) == pattrib->nr_frags) {	/* 4 the last fragment */
+					length = pattrib->last_txcmdsz - pattrib->hdrlen - pattrib->iv_len - pattrib->icv_len;
 
 					aes_cipher(prwskey, pattrib->hdrlen, pframe, length);
 				} else {
-					length = pxmitpriv->frag_len-pattrib->hdrlen-pattrib->iv_len-pattrib->icv_len;
+					length = pxmitpriv->frag_len - pattrib->hdrlen - pattrib->iv_len - pattrib->icv_len;
 
 					aes_cipher(prwskey, pattrib->hdrlen, pframe, length);
 					pframe += pxmitpriv->frag_len;
diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index 73f2cb5ebaa6..3c03141e25b1 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -112,7 +112,7 @@ u32 _rtw_init_sta_priv(struct sta_priv *pstapriv)
 
 inline int rtw_stainfo_offset(struct sta_priv *stapriv, struct sta_info *sta)
 {
-	int offset = (((u8 *)sta) - stapriv->pstainfo_buf)/sizeof(struct sta_info);
+	int offset = (((u8 *)sta) - stapriv->pstainfo_buf) / sizeof(struct sta_info);
 
 	if (!stainfo_offset_valid(offset))
 		DBG_88E("%s invalid offset(%d), out of range!!!", __func__, offset);
diff --git a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
index 68196d8c05eb..38484dffe095 100644
--- a/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8188eu/os_dep/ioctl_linux.c
@@ -120,7 +120,7 @@ static char *translate_scan(struct adapter *padapter,
 	start = iwe_stream_add_point(info, start, stop, &iwe, pnetwork->network.ssid.ssid);
 
 	/* parsing HT_CAP_IE */
-	p = rtw_get_ie(&pnetwork->network.ies[12], _HT_CAPABILITY_IE_, &ht_ielen, pnetwork->network.ie_length-12);
+	p = rtw_get_ie(&pnetwork->network.ies[12], _HT_CAPABILITY_IE_, &ht_ielen, pnetwork->network.ie_length - 12);
 
 	if (p && ht_ielen > 0) {
 		struct ieee80211_ht_cap *pht_capie;
@@ -195,7 +195,7 @@ static char *translate_scan(struct adapter *padapter,
 	p = custom;
 	p += scnprintf(p, MAX_CUSTOM_LEN - (p - custom), " Rates (Mb/s): ");
 	while (pnetwork->network.SupportedRates[i] != 0) {
-		rate = pnetwork->network.SupportedRates[i]&0x7F;
+		rate = pnetwork->network.SupportedRates[i] & 0x7F;
 		if (rate > max_rate)
 			max_rate = rate;
 		p += scnprintf(p, MAX_CUSTOM_LEN - (p - custom),
@@ -204,9 +204,9 @@ static char *translate_scan(struct adapter *padapter,
 	}
 
 	if (ht_cap) {
-		if (mcs_rate&0x8000)/* MCS15 */
+		if (mcs_rate & 0x8000)/* MCS15 */
 			max_rate = (bw_40MHz) ? ((short_GI) ? 300 : 270) : ((short_GI) ? 144 : 130);
-		else if (mcs_rate&0x0080)/* MCS7 */
+		else if (mcs_rate & 0x0080)/* MCS7 */
 			;
 		else/* default MCS7 */
 			max_rate = (bw_40MHz) ? ((short_GI) ? 150 : 135) : ((short_GI) ? 72 : 65);
@@ -284,7 +284,7 @@ static char *translate_scan(struct adapter *padapter,
 				iwe.u.data.length = (u16)wps_ielen;
 				start = iwe_stream_add_point(info, start, stop, &iwe, wpsie_ptr);
 			}
-			cnt += ie_ptr[cnt+1]+2; /* goto next */
+			cnt += ie_ptr[cnt + 1] + 2; /* goto next */
 		}
 	}
 
@@ -512,7 +512,7 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 
 			DBG_88E("\n wpa_ie(length:%d):\n", ielen);
 			for (i = 0; i < ielen; i += 8)
-				DBG_88E("0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x\n", buf[i], buf[i+1], buf[i+2], buf[i+3], buf[i+4], buf[i+5], buf[i+6], buf[i+7]);
+				DBG_88E("0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x 0x%.2x\n", buf[i], buf[i + 1], buf[i + 2], buf[i + 3], buf[i + 4], buf[i + 5], buf[i + 6], buf[i + 7]);
 		}
 
 		if (ielen < RSN_HEADER_LEN) {
@@ -586,7 +586,7 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 
 			while (cnt < ielen) {
 				eid = buf[cnt];
-				if ((eid == _VENDOR_SPECIFIC_IE_) && (!memcmp(&buf[cnt+2], wps_oui, 4))) {
+				if ((eid == _VENDOR_SPECIFIC_IE_) && (!memcmp(&buf[cnt + 2], wps_oui, 4))) {
 					DBG_88E("SET WPS_IE\n");
 
 					padapter->securitypriv.wps_ie_len = min(buf[cnt + 1] + 2, MAX_WPA_IE_LEN << 2);
@@ -594,10 +594,10 @@ static int rtw_set_wpa_ie(struct adapter *padapter, char *pie, unsigned short ie
 					memcpy(padapter->securitypriv.wps_ie, &buf[cnt], padapter->securitypriv.wps_ie_len);
 
 					set_fwstate(&padapter->mlmepriv, WIFI_UNDER_WPS);
-					cnt += buf[cnt+1]+2;
+					cnt += buf[cnt + 1] + 2;
 					break;
 				}
-				cnt += buf[cnt+1]+2; /* goto next */
+				cnt += buf[cnt + 1] + 2; /* goto next */
 			}
 		}
 	}
@@ -628,7 +628,7 @@ static int rtw_wx_get_name(struct net_device *dev,
 
 	if (check_fwstate(pmlmepriv, _FW_LINKED | WIFI_ADHOC_MASTER_STATE)) {
 		/* parsing HT_CAP_IE */
-		p = rtw_get_ie(&pcur_bss->ies[12], _HT_CAPABILITY_IE_, &ht_ielen, pcur_bss->ie_length-12);
+		p = rtw_get_ie(&pcur_bss->ies[12], _HT_CAPABILITY_IE_, &ht_ielen, pcur_bss->ie_length - 12);
 		if (p && ht_ielen > 0)
 			ht_cap = true;
 
@@ -782,7 +782,7 @@ static int rtw_wx_set_pmkid(struct net_device *dev,
 				DBG_88E("[rtw_wx_set_pmkid] BSSID exists in the PMKList.\n");
 				memcpy(psecuritypriv->PMKIDList[j].PMKID, pPMK->pmkid, IW_PMKID_LEN);
 				psecuritypriv->PMKIDList[j].bUsed = true;
-				psecuritypriv->PMKIDIndex = j+1;
+				psecuritypriv->PMKIDIndex = j + 1;
 				blInserted = true;
 				break;
 			}
@@ -1093,7 +1093,7 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 		goto exit;
 	}
 
-	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY|_FW_UNDER_LINKING)) {
+	if (check_fwstate(pmlmepriv, _FW_UNDER_SURVEY | _FW_UNDER_LINKING)) {
 		indicate_wx_scan_complete_event(padapter);
 		goto exit;
 	}
@@ -1102,7 +1102,7 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 /*	the pmlmepriv->scan_interval is always equal to 3. */
 /*	So, the wpa_supplicant won't find out the WPS SoftAP. */
 
-	memset(ssid, 0, sizeof(struct ndis_802_11_ssid)*RTW_SSID_SCAN_AMOUNT);
+	memset(ssid, 0, sizeof(struct ndis_802_11_ssid) * RTW_SSID_SCAN_AMOUNT);
 
 	if (wrqu->data.length == sizeof(struct iw_scan_req)) {
 		struct iw_scan_req *req = (struct iw_scan_req *)extra;
@@ -1128,7 +1128,7 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 		if (wrqu->data.length >= WEXT_CSCAN_HEADER_SIZE &&
 		    !memcmp(extra, WEXT_CSCAN_HEADER, WEXT_CSCAN_HEADER_SIZE)) {
 			int len = wrqu->data.length - WEXT_CSCAN_HEADER_SIZE;
-			char *pos = extra+WEXT_CSCAN_HEADER_SIZE;
+			char *pos = extra + WEXT_CSCAN_HEADER_SIZE;
 			char section;
 			char sec_len;
 			int ssid_index = 0;
@@ -1239,7 +1239,7 @@ static int rtw_wx_get_scan(struct net_device *dev, struct iw_request_info *a,
 
 	spin_unlock_bh(&pmlmepriv->scanned_queue.lock);
 
-	wrqu->data.length = ev-extra;
+	wrqu->data.length = ev - extra;
 	wrqu->data.flags = 0;
 
 exit:
@@ -1890,7 +1890,7 @@ static int rtw_wx_set_enc_ext(struct net_device *dev,
 	    (pext->ext_flags & IW_ENCODE_EXT_GROUP_KEY))
 		param->u.crypt.set_tx = 0;
 
-	param->u.crypt.idx = (pencoding->flags&0x00FF) - 1;
+	param->u.crypt.idx = (pencoding->flags & 0x00FF) - 1;
 
 	if (pext->ext_flags & IW_ENCODE_EXT_RX_SEQ_VALID)
 		memcpy(param->u.crypt.seq, pext->rx_seq, 8);
@@ -1935,7 +1935,7 @@ static int wpa_set_param(struct net_device *dev, u8 name, u32 value)
 	switch (name) {
 	case IEEE_PARAM_WPA_ENABLED:
 		padapter->securitypriv.dot11AuthAlgrthm = dot11AuthAlgrthm_8021X; /* 802.1x */
-		switch ((value)&0xff) {
+		switch (value & 0xff) {
 		case 1: /* WPA */
 			padapter->securitypriv.ndisauthtype = Ndis802_11AuthModeWPAPSK; /* WPA_PSK */
 			padapter->securitypriv.ndisencryptstatus = Ndis802_11Encryption2Enabled;
@@ -2407,7 +2407,7 @@ static int rtw_set_beacon(struct net_device *dev, struct ieee_param *param, int
 	if ((pstapriv->max_num_sta > NUM_STA) || (pstapriv->max_num_sta <= 0))
 		pstapriv->max_num_sta = NUM_STA;
 
-	if (rtw_check_beacon_data(padapter, pbuf,  (len-12-2)) == _SUCCESS)/*  12 = param header, 2:no packed */
+	if (rtw_check_beacon_data(padapter, pbuf, len - 12 - 2) == _SUCCESS) /* 12 = param header, 2:no packed */
 		ret = 0;
 	else
 		ret = -EINVAL;
@@ -2436,7 +2436,7 @@ static int rtw_add_sta(struct net_device *dev, struct ieee_param *param)
 
 	DBG_88E("rtw_add_sta(aid =%d) =%pM\n", param->u.add_sta.aid, (param->sta_addr));
 
-	if (!check_fwstate(pmlmepriv, (_FW_LINKED|WIFI_AP_STATE)))
+	if (!check_fwstate(pmlmepriv, (_FW_LINKED | WIFI_AP_STATE)))
 		return -EINVAL;
 
 	if (is_broadcast_ether_addr(param->sta_addr))
@@ -2451,7 +2451,7 @@ static int rtw_add_sta(struct net_device *dev, struct ieee_param *param)
 		memcpy(psta->bssrateset, param->u.add_sta.tx_supp_rates, 16);
 
 		/* check wmm cap. */
-		if (WLAN_STA_WME&flags)
+		if (WLAN_STA_WME & flags)
 			psta->qos_option = 1;
 		else
 			psta->qos_option = 0;
@@ -2460,7 +2460,7 @@ static int rtw_add_sta(struct net_device *dev, struct ieee_param *param)
 			psta->qos_option = 0;
 
 		/* chec 802.11n ht cap. */
-		if (WLAN_STA_HT&flags) {
+		if (WLAN_STA_HT & flags) {
 			psta->htpriv.ht_option = true;
 			psta->qos_option = 1;
 			memcpy(&psta->htpriv.ht_cap, &param->u.add_sta.ht_cap,
@@ -2620,7 +2620,7 @@ static int rtw_set_wps_beacon(struct net_device *dev, struct ieee_param *param,
 	if (!check_fwstate(pmlmepriv, WIFI_AP_STATE))
 		return -EINVAL;
 
-	ie_len = len-12-2;/*  12 = param header, 2:no packed */
+	ie_len = len - 12 - 2; /* 12 = param header, 2:no packed */
 
 	kfree(pmlmepriv->wps_beacon_ie);
 	pmlmepriv->wps_beacon_ie = NULL;
@@ -2654,7 +2654,7 @@ static int rtw_set_wps_probe_resp(struct net_device *dev, struct ieee_param *par
 	if (!check_fwstate(pmlmepriv, WIFI_AP_STATE))
 		return -EINVAL;
 
-	ie_len = len-12-2;/*  12 = param header, 2:no packed */
+	ie_len = len - 12 - 2; /* 12 = param header, 2:no packed */
 
 	kfree(pmlmepriv->wps_probe_resp_ie);
 	pmlmepriv->wps_probe_resp_ie = NULL;
@@ -2683,7 +2683,7 @@ static int rtw_set_wps_assoc_resp(struct net_device *dev, struct ieee_param *par
 	if (!check_fwstate(pmlmepriv, WIFI_AP_STATE))
 		return -EINVAL;
 
-	ie_len = len-12-2;/*  12 = param header, 2:no packed */
+	ie_len = len - 12 - 2; /* 12 = param header, 2:no packed */
 
 	kfree(pmlmepriv->wps_assoc_resp_ie);
 	pmlmepriv->wps_assoc_resp_ie = NULL;
@@ -3014,7 +3014,7 @@ int rtw_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
 		ret = rtw_hostapd_ioctl(dev, &wrq->u.data);
 		break;
 #endif /*  CONFIG_88EU_AP_MODE */
-	case (SIOCDEVPRIVATE+1):
+	case (SIOCDEVPRIVATE + 1):
 		ret = rtw_android_priv_cmd(dev, rq, cmd);
 		break;
 	default:
-- 
2.27.0

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
