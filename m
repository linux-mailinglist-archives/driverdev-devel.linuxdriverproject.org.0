Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2973B344741
	for <lists+driverdev-devel@lfdr.de>; Mon, 22 Mar 2021 15:33:02 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9B2046078B;
	Mon, 22 Mar 2021 14:33:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id fKymrMiEaqrI; Mon, 22 Mar 2021 14:32:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C7CDF605C6;
	Mon, 22 Mar 2021 14:32:57 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 04AB31BF35E
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E7F2B60659
 for <devel@linuxdriverproject.org>; Mon, 22 Mar 2021 14:32:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pOfC3FYidUHw for <devel@linuxdriverproject.org>;
 Mon, 22 Mar 2021 14:32:22 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D7773605C6
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 14:32:21 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id l18so11419734edc.9
 for <devel@driverdev.osuosl.org>; Mon, 22 Mar 2021 07:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Hmv+wMcaWK/LFxibof0zDKnQuOpUn+1y9iAIdkDuPW0=;
 b=UZT1YIQpfYawPHiUH3gJsDUcrc0cVjtBSyf4AOK8HbnONWIRuUEk2/m+VdBkaqh9Ss
 V/oIJh9ESy0CcESpIsz2zmCxxGNaSyCGkwvfGf8xRxEdeJrEd/Vaox9HEIlUFiInNcQS
 AQ19vy1IqsbsM32301BZMYfMGNiRg/79SF9VZ04pjUx8W5rGjFj/rrBHIckCI+xvcCgV
 AHBnRTqBce0WSZ43sCdEO2APGOVRo5A/3v8fPRgHgOP5cPJohTjl+4NThLe+aIazxssk
 6AbbjjJVp5huvRWWpMXC5QvlktgVQly/3M5vIV1kY02AQzPfNAvyx5UcGRxcdPsSPl0m
 iQww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Hmv+wMcaWK/LFxibof0zDKnQuOpUn+1y9iAIdkDuPW0=;
 b=sswb7M4G6yM+bLSgCyzTqGwP98LWS5HtGw2Nd8M87YmY0SbFN6Scq4+YcvlS7DYxTK
 QtFsQE30kpxp8qPbP+H0Ykm+L671Ghzv48UKBboEC+2+FAeNX4+lnBBnh+2usA0Y1vcv
 PT/eZO7aDM8Lh8vRJV2uZlybeXjam0uwIBf7IvKK5GEwY7x2rdVyMeT7oPeOS1svVvQY
 iITmR158dDgVbI94KLCp8pBBgohwIjax0sCf4izC1g24usC2cH66SHX86AfCy/zREfgr
 Mo67NWYaBWGa2l4p9+GHiqwszGbpNDSQvrvCbGGvDIt/ucqxhbsFc0iP4/whSMsgtWdU
 8+tg==
X-Gm-Message-State: AOAM533u5Uz9zsvYhsflBje+WYigeT/BoPCUCMVkXnNKaiu6jZpi9Wlb
 twl8DDZCjzM2ehAdAQ3QMhU=
X-Google-Smtp-Source: ABdhPJwhTZ1/75Rufosgwhw9v2WtpH8vDVkZiUOR7TKrqr3MiSzkSyhMjPvagto2fvkG4RepnkPPgA==
X-Received: by 2002:aa7:d917:: with SMTP id a23mr26047858edr.122.1616423540197; 
 Mon, 22 Mar 2021 07:32:20 -0700 (PDT)
Received: from agape ([151.57.176.11])
 by smtp.gmail.com with ESMTPSA id b12sm11314673eds.94.2021.03.22.07.32.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 22 Mar 2021 07:32:19 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH 04/11] staging: rtl8723bs: moved function prototypes out of
 core/rtw_recv.c
Date: Mon, 22 Mar 2021 15:31:42 +0100
Message-Id: <d46b20b33e95e9a46b147c08311d3c91181eed33.1616422773.git.fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1616422773.git.fabioaiuto83@gmail.com>
References: <cover.1616422773.git.fabioaiuto83@gmail.com>
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
Cc: joe@perches.com, apw@canonical.com, devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org, Fabio Aiuto <fabioaiuto83@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

fix the following checkpatch issues:

WARNING: externs should be avoided in .c files
1190: FILE: drivers/staging/rtl8723bs/core/rtw_recv.c:1190:
+signed int validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *precv_frame);

and then moved all function prototypes but one in include/rtw_recv.h

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_recv.c    | 31 +-----------
 drivers/staging/rtl8723bs/include/rtw_recv.h | 51 ++++++++++++++++++++
 2 files changed, 52 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 1fa381663b4c..9ef2408ded57 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -305,7 +305,6 @@ struct recv_buf *rtw_dequeue_recvbuf(struct __queue *queue)
 
 }
 
-signed int recvframe_chkmic(struct adapter *adapter,  union recv_frame *precvframe);
 signed int recvframe_chkmic(struct adapter *adapter,  union recv_frame *precvframe)
 {
 
@@ -435,8 +434,6 @@ signed int recvframe_chkmic(struct adapter *adapter,  union recv_frame *precvfra
 
 }
 
-/* decrypt and set the ivlen, icvlen of the recv_frame */
-union recv_frame *decryptor(struct adapter *padapter, union recv_frame *precv_frame);
 union recv_frame *decryptor(struct adapter *padapter, union recv_frame *precv_frame)
 {
 
@@ -527,8 +524,6 @@ union recv_frame *decryptor(struct adapter *padapter, union recv_frame *precv_fr
 	return return_packet;
 }
 
-/* set the security information in the recv_frame */
-union recv_frame *portctrl(struct adapter *adapter, union recv_frame *precv_frame);
 union recv_frame *portctrl(struct adapter *adapter, union recv_frame *precv_frame)
 {
 	u8 *psta_addr = NULL;
@@ -606,7 +601,6 @@ union recv_frame *portctrl(struct adapter *adapter, union recv_frame *precv_fram
 	return prtnframe;
 }
 
-signed int recv_decache(union recv_frame *precv_frame, u8 bretry, struct stainfo_rxcache *prxcache);
 signed int recv_decache(union recv_frame *precv_frame, u8 bretry, struct stainfo_rxcache *prxcache)
 {
 	signed int tid = precv_frame->u.hdr.attrib.priority;
@@ -634,7 +628,6 @@ signed int recv_decache(union recv_frame *precv_frame, u8 bretry, struct stainfo
 
 }
 
-void process_pwrbit_data(struct adapter *padapter, union recv_frame *precv_frame);
 void process_pwrbit_data(struct adapter *padapter, union recv_frame *precv_frame)
 {
 	unsigned char pwrbit;
@@ -671,7 +664,6 @@ void process_pwrbit_data(struct adapter *padapter, union recv_frame *precv_frame
 	}
 }
 
-void process_wmmps_data(struct adapter *padapter, union recv_frame *precv_frame);
 void process_wmmps_data(struct adapter *padapter, union recv_frame *precv_frame)
 {
 	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
@@ -723,7 +715,6 @@ void process_wmmps_data(struct adapter *padapter, union recv_frame *precv_frame)
 	}
 }
 
-void count_rx_stats(struct adapter *padapter, union recv_frame *prframe, struct sta_info *sta);
 void count_rx_stats(struct adapter *padapter, union recv_frame *prframe, struct sta_info *sta)
 {
 	int sz;
@@ -755,8 +746,6 @@ void count_rx_stats(struct adapter *padapter, union recv_frame *prframe, struct
 	traffic_check_for_leave_lps(padapter, false, 0);
 }
 
-signed int sta2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
-			struct sta_info **psta);
 signed int sta2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 			struct sta_info **psta)
 {
@@ -850,8 +839,6 @@ signed int sta2sta_data_frame(struct adapter *adapter, union recv_frame *precv_f
 	return ret;
 }
 
-signed int ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
-		       struct sta_info **psta);
 signed int ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 		       struct sta_info **psta)
 {
@@ -992,8 +979,6 @@ signed int ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_fr
 	return ret;
 }
 
-signed int sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
-		       struct sta_info **psta);
 signed int sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 		       struct sta_info **psta)
 {
@@ -1049,7 +1034,6 @@ signed int sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_fr
 	return ret;
 }
 
-signed int validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_frame);
 signed int validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_frame)
 {
 	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
@@ -1186,8 +1170,6 @@ signed int validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *
 
 }
 
-union recv_frame *recvframe_chk_defrag(struct adapter *padapter, union recv_frame *precv_frame);
-signed int validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *precv_frame);
 signed int validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *precv_frame)
 {
 	/* struct mlme_priv *pmlmepriv = &adapter->mlmepriv; */
@@ -1227,7 +1209,6 @@ signed int validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *
 
 }
 
-signed int validate_recv_data_frame(struct adapter *adapter, union recv_frame *precv_frame);
 signed int validate_recv_data_frame(struct adapter *adapter, union recv_frame *precv_frame)
 {
 	u8 bretry;
@@ -1459,7 +1440,6 @@ static inline void dump_rx_packet(u8 *ptr)
 	DBG_871X("#############################\n");
 }
 
-signed int validate_recv_frame(struct adapter *adapter, union recv_frame *precv_frame);
 signed int validate_recv_frame(struct adapter *adapter, union recv_frame *precv_frame)
 {
 	/* shall check frame subtype, to / from ds, da, bssid */
@@ -1557,9 +1537,6 @@ signed int validate_recv_frame(struct adapter *adapter, union recv_frame *precv_
 	return retval;
 }
 
-
-/* remove the wlanhdr and add the eth_hdr */
-signed int wlanhdr_to_ethhdr(union recv_frame *precvframe);
 signed int wlanhdr_to_ethhdr(union recv_frame *precvframe)
 {
 	signed int	rmv_len;
@@ -1886,7 +1863,6 @@ static int amsdu_to_msdu(struct adapter *padapter, union recv_frame *prframe)
 	return  _SUCCESS;
 }
 
-int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl, u16 seq_num);
 int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl, u16 seq_num)
 {
 	struct adapter *padapter = preorder_ctrl->padapter;
@@ -1955,7 +1931,6 @@ int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl, u16 seq_num)
 	return true;
 }
 
-int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl, union recv_frame *prframe);
 int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl, union recv_frame *prframe)
 {
 	struct rx_pkt_attrib *pattrib = &prframe->u.hdr.attrib;
@@ -2017,7 +1992,7 @@ void recv_indicatepkts_pkt_loss_cnt(struct debug_priv *pdbgpriv, u64 prev_seq, u
 		pdbgpriv->dbg_rx_ampdu_loss_count += (current_seq - prev_seq);
 
 }
-int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reorder_ctrl *preorder_ctrl, int bforced);
+
 int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reorder_ctrl *preorder_ctrl, int bforced)
 {
 	struct list_head	*phead, *plist;
@@ -2125,7 +2100,6 @@ int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reorder_ctr
 	return bPktInBuf;
 }
 
-int recv_indicatepkt_reorder(struct adapter *padapter, union recv_frame *prframe);
 int recv_indicatepkt_reorder(struct adapter *padapter, union recv_frame *prframe)
 {
 	int retval = _SUCCESS;
@@ -2279,7 +2253,6 @@ void rtw_reordering_ctrl_timeout_handler(struct timer_list *t)
 
 }
 
-int process_recv_indicatepkts(struct adapter *padapter, union recv_frame *prframe);
 int process_recv_indicatepkts(struct adapter *padapter, union recv_frame *prframe)
 {
 	int retval = _SUCCESS;
@@ -2402,8 +2375,6 @@ static int recv_func_posthandle(struct adapter *padapter, union recv_frame *prfr
 	return ret;
 }
 
-
-int recv_func(struct adapter *padapter, union recv_frame *rframe);
 int recv_func(struct adapter *padapter, union recv_frame *rframe)
 {
 	int ret;
diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index 3e2ee7f75e8c..248e098726fd 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -513,4 +513,55 @@ extern void _rtw_init_sta_recv_priv(struct sta_recv_priv *psta_recvpriv);
 
 extern void  mgt_dispatcher(struct adapter *padapter, union recv_frame *precv_frame);
 
+signed int recvframe_chkmic(struct adapter *adapter,  union recv_frame *precvframe);
+
+/* decrypt and set the ivlen, icvlen of the recv_frame */
+union recv_frame *decryptor(struct adapter *padapter, union recv_frame *precv_frame);
+
+/* set the security information in the recv_frame */
+union recv_frame *portctrl(struct adapter *adapter, union recv_frame *precv_frame);
+
+signed int recv_decache(union recv_frame *precv_frame, u8 bretry, struct stainfo_rxcache *prxcache);
+
+void process_pwrbit_data(struct adapter *padapter, union recv_frame *precv_frame);
+
+void process_wmmps_data(struct adapter *padapter, union recv_frame *precv_frame);
+
+void count_rx_stats(struct adapter *padapter, union recv_frame *prframe, struct sta_info *sta);
+
+signed int sta2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
+			      struct sta_info **psta);
+
+signed int ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
+			     struct sta_info **psta);
+
+signed int sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
+			     struct sta_info **psta);
+
+signed int validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_frame);
+
+union recv_frame *recvframe_chk_defrag(struct adapter *padapter, union recv_frame *precv_frame);
+
+signed int validate_recv_data_frame(struct adapter *adapter, union recv_frame *precv_frame);
+
+signed int validate_recv_frame(struct adapter *adapter, union recv_frame *precv_frame);
+
+/* remove the wlanhdr and add the eth_hdr */
+signed int wlanhdr_to_ethhdr(union recv_frame *precvframe);
+
+int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl, u16 seq_num);
+
+int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl, union recv_frame *prframe);
+
+int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reorder_ctrl *preorder_ctrl,
+			       int bforced);
+
+int recv_indicatepkt_reorder(struct adapter *padapter, union recv_frame *prframe);
+
+int process_recv_indicatepkts(struct adapter *padapter, union recv_frame *prframe);
+
+int recv_func(struct adapter *padapter, union recv_frame *rframe);
+
+signed int validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *precv_frame);
+
 #endif
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
