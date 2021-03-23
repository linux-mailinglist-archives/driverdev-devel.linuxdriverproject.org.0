Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 92DC1345EBB
	for <lists+driverdev-devel@lfdr.de>; Tue, 23 Mar 2021 13:59:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id ED2D683EE0;
	Tue, 23 Mar 2021 12:58:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QajKqE_ZQgKf; Tue, 23 Mar 2021 12:58:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 29B3B83DD0;
	Tue, 23 Mar 2021 12:58:55 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id F203C1BF371
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E0D26404BE
 for <devel@linuxdriverproject.org>; Tue, 23 Mar 2021 12:58:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tHFzf6rtJ1pE for <devel@linuxdriverproject.org>;
 Tue, 23 Mar 2021 12:58:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 233D8404BD
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 12:58:21 +0000 (UTC)
Received: by mail-ed1-x531.google.com with SMTP id bx7so23312093edb.12
 for <devel@driverdev.osuosl.org>; Tue, 23 Mar 2021 05:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=DDpJ6Fm5S6gE20kSB+NwqW1IzdIiqdrdo+ia0nrwzjk=;
 b=OIGEe8qWUeu6RkysZ+dAmHz4Z4nISjg0xZJA9krIY2V8dwQqXABe2IFKzgoMGNWlOh
 NdOHgEG0XsBQLFEv9XP5S7aFUi22viPm3c+h6gdXavT80PWvFADhX/HBHOQSbOlFssc0
 ndh0qBe2dzLzt/keeZoEXQMR6tYY2vuyqLBXnhgmhTJ21ZqIFy48Rh7VnzFxnos2MeWz
 8R2d+iBeIYPnl7hHDdFqj/INMt0sYM2D1iyApZxOar+QLqQrOmzlg8rVmxrUd4RMK95e
 vIM1g4adoy4vgQNU3ADZyTqEpkh9N7g8HXDReOWClbSdDyUfFAPmNZQc15JPEPsc35fv
 VBIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=DDpJ6Fm5S6gE20kSB+NwqW1IzdIiqdrdo+ia0nrwzjk=;
 b=nKcubZ34ej/dNXCySsXckBp+fikOqFvK1O2vv43BOjuXBhH9r5N4yyRQjD44Ca+G0k
 cKwQ+OcRprgULQIq8jBW6PBySm9woc3aiZn1itAIE+O//m5SUHB16PaSS2rUdGupeIqg
 tx1Ch9e0k6wKA3+TGJ/c61holpKu44fXYuPQc5VjKTCPyYj3b6AdFAAzHqRm4OITqpm6
 qA5F6108t3H/fi8maDAPeAKHp4eBALWNRF/6O+dREnESAZm4ESbkLbRorv5kXJ9hFqqU
 1s+Y2ZGuBcD/FHX4WcRJVl7lndPATO5xuFc+HFg3A+hUV3PYfLXx1oBGAqZ/D1r4WJuJ
 4GYg==
X-Gm-Message-State: AOAM531jS6gCDBcTaTzIgI0JDgEY9KnvbHSCJbdvGuD2+NX+wFVFSZaD
 xV5hDsbOu4pLK6q1L1fNSls=
X-Google-Smtp-Source: ABdhPJzBE0V7Qjb8UPet6IXNb0v3yxwz+RpXk4vVgKr551X8X8aIsGgANU0fBdQLBeWr4L1pmHjYKA==
X-Received: by 2002:a05:6402:138f:: with SMTP id
 b15mr4493409edv.121.1616504299204; 
 Tue, 23 Mar 2021 05:58:19 -0700 (PDT)
Received: from agape ([151.57.211.10])
 by smtp.gmail.com with ESMTPSA id ho19sm10821800ejc.57.2021.03.23.05.58.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Mar 2021 05:58:18 -0700 (PDT)
From: Fabio Aiuto <fabioaiuto83@gmail.com>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 3/9] staging: rtl8723bs: removed function prototypes and
 made statics in core/rtw_recv.c
Date: Tue, 23 Mar 2021 13:56:30 +0100
Message-Id: <e40951ad0d3ba103b1551e8f2e54c7bc45563346.1616503354.git.fabioaiuto83@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1616503354.git.fabioaiuto83@gmail.com>
References: <cover.1616503354.git.fabioaiuto83@gmail.com>
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

fix the following checkpatch issue:

WARNING: externs should be avoided in .c files
1190: FILE: drivers/staging/rtl8723bs/core/rtw_recv.c:1190:
+signed int validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *precv_frame);

removed function prototypes and made statics

moved two static function definitions before their usage
to make code compile

Signed-off-by: Fabio Aiuto <fabioaiuto83@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_recv.c | 441 ++++++++++------------
 1 file changed, 207 insertions(+), 234 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 1fa381663b4c..608a59286505 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -305,8 +305,7 @@ struct recv_buf *rtw_dequeue_recvbuf(struct __queue *queue)
 
 }
 
-signed int recvframe_chkmic(struct adapter *adapter,  union recv_frame *precvframe);
-signed int recvframe_chkmic(struct adapter *adapter,  union recv_frame *precvframe)
+static signed int recvframe_chkmic(struct adapter *adapter,  union recv_frame *precvframe)
 {
 
 	signed int	i, res = _SUCCESS;
@@ -436,8 +435,7 @@ signed int recvframe_chkmic(struct adapter *adapter,  union recv_frame *precvfra
 }
 
 /* decrypt and set the ivlen, icvlen of the recv_frame */
-union recv_frame *decryptor(struct adapter *padapter, union recv_frame *precv_frame);
-union recv_frame *decryptor(struct adapter *padapter, union recv_frame *precv_frame)
+static union recv_frame *decryptor(struct adapter *padapter, union recv_frame *precv_frame)
 {
 
 	struct rx_pkt_attrib *prxattrib = &precv_frame->u.hdr.attrib;
@@ -528,8 +526,7 @@ union recv_frame *decryptor(struct adapter *padapter, union recv_frame *precv_fr
 }
 
 /* set the security information in the recv_frame */
-union recv_frame *portctrl(struct adapter *adapter, union recv_frame *precv_frame);
-union recv_frame *portctrl(struct adapter *adapter, union recv_frame *precv_frame)
+static union recv_frame *portctrl(struct adapter *adapter, union recv_frame *precv_frame)
 {
 	u8 *psta_addr = NULL;
 	u8 *ptr;
@@ -606,8 +603,7 @@ union recv_frame *portctrl(struct adapter *adapter, union recv_frame *precv_fram
 	return prtnframe;
 }
 
-signed int recv_decache(union recv_frame *precv_frame, u8 bretry, struct stainfo_rxcache *prxcache);
-signed int recv_decache(union recv_frame *precv_frame, u8 bretry, struct stainfo_rxcache *prxcache)
+static signed int recv_decache(union recv_frame *precv_frame, u8 bretry, struct stainfo_rxcache *prxcache)
 {
 	signed int tid = precv_frame->u.hdr.attrib.priority;
 
@@ -634,8 +630,7 @@ signed int recv_decache(union recv_frame *precv_frame, u8 bretry, struct stainfo
 
 }
 
-void process_pwrbit_data(struct adapter *padapter, union recv_frame *precv_frame);
-void process_pwrbit_data(struct adapter *padapter, union recv_frame *precv_frame)
+static void process_pwrbit_data(struct adapter *padapter, union recv_frame *precv_frame)
 {
 	unsigned char pwrbit;
 	u8 *ptr = precv_frame->u.hdr.rx_data;
@@ -671,8 +666,7 @@ void process_pwrbit_data(struct adapter *padapter, union recv_frame *precv_frame
 	}
 }
 
-void process_wmmps_data(struct adapter *padapter, union recv_frame *precv_frame);
-void process_wmmps_data(struct adapter *padapter, union recv_frame *precv_frame)
+static void process_wmmps_data(struct adapter *padapter, union recv_frame *precv_frame)
 {
 	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
 	struct sta_priv *pstapriv = &padapter->stapriv;
@@ -723,8 +717,7 @@ void process_wmmps_data(struct adapter *padapter, union recv_frame *precv_frame)
 	}
 }
 
-void count_rx_stats(struct adapter *padapter, union recv_frame *prframe, struct sta_info *sta);
-void count_rx_stats(struct adapter *padapter, union recv_frame *prframe, struct sta_info *sta)
+static void count_rx_stats(struct adapter *padapter, union recv_frame *prframe, struct sta_info *sta)
 {
 	int sz;
 	struct sta_info *psta = NULL;
@@ -755,9 +748,7 @@ void count_rx_stats(struct adapter *padapter, union recv_frame *prframe, struct
 	traffic_check_for_leave_lps(padapter, false, 0);
 }
 
-signed int sta2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
-			struct sta_info **psta);
-signed int sta2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
+static signed int sta2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 			struct sta_info **psta)
 {
 	u8 *ptr = precv_frame->u.hdr.rx_data;
@@ -850,9 +841,7 @@ signed int sta2sta_data_frame(struct adapter *adapter, union recv_frame *precv_f
 	return ret;
 }
 
-signed int ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
-		       struct sta_info **psta);
-signed int ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
+static signed int ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 		       struct sta_info **psta)
 {
 	u8 *ptr = precv_frame->u.hdr.rx_data;
@@ -992,9 +981,7 @@ signed int ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_fr
 	return ret;
 }
 
-signed int sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
-		       struct sta_info **psta);
-signed int sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
+static signed int sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 		       struct sta_info **psta)
 {
 	u8 *ptr = precv_frame->u.hdr.rx_data;
@@ -1049,8 +1036,7 @@ signed int sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_fr
 	return ret;
 }
 
-signed int validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_frame);
-signed int validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_frame)
+static signed int validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *precv_frame)
 {
 	struct rx_pkt_attrib *pattrib = &precv_frame->u.hdr.attrib;
 	struct sta_priv *pstapriv = &padapter->stapriv;
@@ -1186,9 +1172,191 @@ signed int validate_recv_ctrl_frame(struct adapter *padapter, union recv_frame *
 
 }
 
-union recv_frame *recvframe_chk_defrag(struct adapter *padapter, union recv_frame *precv_frame);
-signed int validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *precv_frame);
-signed int validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *precv_frame)
+/* perform defrag */
+static union recv_frame *recvframe_defrag(struct adapter *adapter,
+					  struct __queue *defrag_q)
+{
+	struct list_head	 *plist, *phead;
+	u8  wlanhdr_offset;
+	u8 curfragnum;
+	struct recv_frame_hdr *pfhdr, *pnfhdr;
+	union recv_frame *prframe, *pnextrframe;
+	struct __queue	*pfree_recv_queue;
+
+	curfragnum = 0;
+	pfree_recv_queue = &adapter->recvpriv.free_recv_queue;
+
+	phead = get_list_head(defrag_q);
+	plist = get_next(phead);
+	prframe = (union recv_frame *)plist;
+	pfhdr = &prframe->u.hdr;
+	list_del_init(&(prframe->u.list));
+
+	if (curfragnum != pfhdr->attrib.frag_num) {
+		/* the first fragment number must be 0 */
+		/* free the whole queue */
+		rtw_free_recvframe(prframe, pfree_recv_queue);
+		rtw_free_recvframe_queue(defrag_q, pfree_recv_queue);
+
+		return NULL;
+	}
+
+	curfragnum++;
+
+	plist = get_list_head(defrag_q);
+
+	plist = get_next(plist);
+
+	while (phead != plist) {
+		pnextrframe = (union recv_frame *)plist;
+		pnfhdr = &pnextrframe->u.hdr;
+
+
+		/* check the fragment sequence  (2nd ~n fragment frame) */
+
+		if (curfragnum != pnfhdr->attrib.frag_num) {
+			/* the fragment number must be increasing  (after decache) */
+			/* release the defrag_q & prframe */
+			rtw_free_recvframe(prframe, pfree_recv_queue);
+			rtw_free_recvframe_queue(defrag_q, pfree_recv_queue);
+			return NULL;
+		}
+
+		curfragnum++;
+
+		/* copy the 2nd~n fragment frame's payload to the first fragment */
+		/* get the 2nd~last fragment frame's payload */
+
+		wlanhdr_offset = pnfhdr->attrib.hdrlen + pnfhdr->attrib.iv_len;
+
+		recvframe_pull(pnextrframe, wlanhdr_offset);
+
+		/* append  to first fragment frame's tail (if privacy frame, pull the ICV) */
+		recvframe_pull_tail(prframe, pfhdr->attrib.icv_len);
+
+		/* memcpy */
+		memcpy(pfhdr->rx_tail, pnfhdr->rx_data, pnfhdr->len);
+
+		recvframe_put(prframe, pnfhdr->len);
+
+		pfhdr->attrib.icv_len = pnfhdr->attrib.icv_len;
+		plist = get_next(plist);
+
+	}
+
+	/* free the defrag_q queue and return the prframe */
+	rtw_free_recvframe_queue(defrag_q, pfree_recv_queue);
+
+	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("Performance defrag!!!!!\n"));
+
+	return prframe;
+}
+
+/* check if need to defrag, if needed queue the frame to defrag_q */
+static union recv_frame *recvframe_chk_defrag(struct adapter *padapter, union recv_frame *precv_frame)
+{
+	u8 ismfrag;
+	u8 fragnum;
+	u8 *psta_addr;
+	struct recv_frame_hdr *pfhdr;
+	struct sta_info *psta;
+	struct sta_priv *pstapriv;
+	struct list_head *phead;
+	union recv_frame *prtnframe = NULL;
+	struct __queue *pfree_recv_queue, *pdefrag_q;
+
+	pstapriv = &padapter->stapriv;
+
+	pfhdr = &precv_frame->u.hdr;
+
+	pfree_recv_queue = &padapter->recvpriv.free_recv_queue;
+
+	/* need to define struct of wlan header frame ctrl */
+	ismfrag = pfhdr->attrib.mfrag;
+	fragnum = pfhdr->attrib.frag_num;
+
+	psta_addr = pfhdr->attrib.ta;
+	psta = rtw_get_stainfo(pstapriv, psta_addr);
+	if (!psta) {
+		u8 type = GetFrameType(pfhdr->rx_data);
+		if (type != WIFI_DATA_TYPE) {
+			psta = rtw_get_bcmc_stainfo(padapter);
+			pdefrag_q = &psta->sta_recvpriv.defrag_q;
+		} else
+			pdefrag_q = NULL;
+	} else
+		pdefrag_q = &psta->sta_recvpriv.defrag_q;
+
+	if ((ismfrag == 0) && (fragnum == 0))
+		prtnframe = precv_frame;/* isn't a fragment frame */
+
+	if (ismfrag == 1) {
+		/* 0~(n-1) fragment frame */
+		/* enqueue to defraf_g */
+		if (pdefrag_q) {
+			if (fragnum == 0)
+				/* the first fragment */
+				if (!list_empty(&pdefrag_q->queue))
+					/* free current defrag_q */
+					rtw_free_recvframe_queue(pdefrag_q, pfree_recv_queue);
+
+
+			/* Then enqueue the 0~(n-1) fragment into the defrag_q */
+
+			/* spin_lock(&pdefrag_q->lock); */
+			phead = get_list_head(pdefrag_q);
+			list_add_tail(&pfhdr->list, phead);
+			/* spin_unlock(&pdefrag_q->lock); */
+
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("Enqueuq: ismfrag = %d, fragnum = %d\n", ismfrag, fragnum));
+
+			prtnframe = NULL;
+
+		} else {
+			/* can't find this ta's defrag_queue, so free this recv_frame */
+			rtw_free_recvframe(precv_frame, pfree_recv_queue);
+			prtnframe = NULL;
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("Free because pdefrag_q == NULL: ismfrag = %d, fragnum = %d\n", ismfrag, fragnum));
+		}
+
+	}
+
+	if ((ismfrag == 0) && (fragnum != 0)) {
+		/* the last fragment frame */
+		/* enqueue the last fragment */
+		if (pdefrag_q) {
+			/* spin_lock(&pdefrag_q->lock); */
+			phead = get_list_head(pdefrag_q);
+			list_add_tail(&pfhdr->list, phead);
+			/* spin_unlock(&pdefrag_q->lock); */
+
+			/* call recvframe_defrag to defrag */
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("defrag: ismfrag = %d, fragnum = %d\n", ismfrag, fragnum));
+			precv_frame = recvframe_defrag(padapter, pdefrag_q);
+			prtnframe = precv_frame;
+
+		} else {
+			/* can't find this ta's defrag_queue, so free this recv_frame */
+			rtw_free_recvframe(precv_frame, pfree_recv_queue);
+			prtnframe = NULL;
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("Free because pdefrag_q == NULL: ismfrag = %d, fragnum = %d\n", ismfrag, fragnum));
+		}
+
+	}
+
+
+	if ((prtnframe) && (prtnframe->u.hdr.attrib.privacy)) {
+		/* after defrag we must check tkip mic code */
+		if (recvframe_chkmic(padapter,  prtnframe) == _FAIL) {
+			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("recvframe_chkmic(padapter,  prtnframe) == _FAIL\n"));
+			rtw_free_recvframe(prtnframe, pfree_recv_queue);
+			prtnframe = NULL;
+		}
+	}
+	return prtnframe;
+}
+
+static signed int validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *precv_frame)
 {
 	/* struct mlme_priv *pmlmepriv = &adapter->mlmepriv; */
 
@@ -1227,8 +1395,7 @@ signed int validate_recv_mgnt_frame(struct adapter *padapter, union recv_frame *
 
 }
 
-signed int validate_recv_data_frame(struct adapter *adapter, union recv_frame *precv_frame);
-signed int validate_recv_data_frame(struct adapter *adapter, union recv_frame *precv_frame)
+static signed int validate_recv_data_frame(struct adapter *adapter, union recv_frame *precv_frame)
 {
 	u8 bretry;
 	u8 *psa, *pda, *pbssid;
@@ -1459,8 +1626,7 @@ static inline void dump_rx_packet(u8 *ptr)
 	DBG_871X("#############################\n");
 }
 
-signed int validate_recv_frame(struct adapter *adapter, union recv_frame *precv_frame);
-signed int validate_recv_frame(struct adapter *adapter, union recv_frame *precv_frame)
+static signed int validate_recv_frame(struct adapter *adapter, union recv_frame *precv_frame)
 {
 	/* shall check frame subtype, to / from ds, da, bssid */
 
@@ -1557,10 +1723,8 @@ signed int validate_recv_frame(struct adapter *adapter, union recv_frame *precv_
 	return retval;
 }
 
-
 /* remove the wlanhdr and add the eth_hdr */
-signed int wlanhdr_to_ethhdr(union recv_frame *precvframe);
-signed int wlanhdr_to_ethhdr(union recv_frame *precvframe)
+static signed int wlanhdr_to_ethhdr(union recv_frame *precvframe)
 {
 	signed int	rmv_len;
 	u16 eth_type, len;
@@ -1624,190 +1788,6 @@ signed int wlanhdr_to_ethhdr(union recv_frame *precvframe)
 	return _SUCCESS;
 }
 
-/* perform defrag */
-static union recv_frame *recvframe_defrag(struct adapter *adapter,
-					  struct __queue *defrag_q)
-{
-	struct list_head	 *plist, *phead;
-	u8  wlanhdr_offset;
-	u8 curfragnum;
-	struct recv_frame_hdr *pfhdr, *pnfhdr;
-	union recv_frame *prframe, *pnextrframe;
-	struct __queue	*pfree_recv_queue;
-
-	curfragnum = 0;
-	pfree_recv_queue = &adapter->recvpriv.free_recv_queue;
-
-	phead = get_list_head(defrag_q);
-	plist = get_next(phead);
-	prframe = (union recv_frame *)plist;
-	pfhdr = &prframe->u.hdr;
-	list_del_init(&(prframe->u.list));
-
-	if (curfragnum != pfhdr->attrib.frag_num) {
-		/* the first fragment number must be 0 */
-		/* free the whole queue */
-		rtw_free_recvframe(prframe, pfree_recv_queue);
-		rtw_free_recvframe_queue(defrag_q, pfree_recv_queue);
-
-		return NULL;
-	}
-
-	curfragnum++;
-
-	plist = get_list_head(defrag_q);
-
-	plist = get_next(plist);
-
-	while (phead != plist) {
-		pnextrframe = (union recv_frame *)plist;
-		pnfhdr = &pnextrframe->u.hdr;
-
-
-		/* check the fragment sequence  (2nd ~n fragment frame) */
-
-		if (curfragnum != pnfhdr->attrib.frag_num) {
-			/* the fragment number must be increasing  (after decache) */
-			/* release the defrag_q & prframe */
-			rtw_free_recvframe(prframe, pfree_recv_queue);
-			rtw_free_recvframe_queue(defrag_q, pfree_recv_queue);
-			return NULL;
-		}
-
-		curfragnum++;
-
-		/* copy the 2nd~n fragment frame's payload to the first fragment */
-		/* get the 2nd~last fragment frame's payload */
-
-		wlanhdr_offset = pnfhdr->attrib.hdrlen + pnfhdr->attrib.iv_len;
-
-		recvframe_pull(pnextrframe, wlanhdr_offset);
-
-		/* append  to first fragment frame's tail (if privacy frame, pull the ICV) */
-		recvframe_pull_tail(prframe, pfhdr->attrib.icv_len);
-
-		/* memcpy */
-		memcpy(pfhdr->rx_tail, pnfhdr->rx_data, pnfhdr->len);
-
-		recvframe_put(prframe, pnfhdr->len);
-
-		pfhdr->attrib.icv_len = pnfhdr->attrib.icv_len;
-		plist = get_next(plist);
-
-	}
-
-	/* free the defrag_q queue and return the prframe */
-	rtw_free_recvframe_queue(defrag_q, pfree_recv_queue);
-
-	RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("Performance defrag!!!!!\n"));
-
-	return prframe;
-}
-
-/* check if need to defrag, if needed queue the frame to defrag_q */
-union recv_frame *recvframe_chk_defrag(struct adapter *padapter, union recv_frame *precv_frame)
-{
-	u8 ismfrag;
-	u8 fragnum;
-	u8 *psta_addr;
-	struct recv_frame_hdr *pfhdr;
-	struct sta_info *psta;
-	struct sta_priv *pstapriv;
-	struct list_head *phead;
-	union recv_frame *prtnframe = NULL;
-	struct __queue *pfree_recv_queue, *pdefrag_q;
-
-	pstapriv = &padapter->stapriv;
-
-	pfhdr = &precv_frame->u.hdr;
-
-	pfree_recv_queue = &padapter->recvpriv.free_recv_queue;
-
-	/* need to define struct of wlan header frame ctrl */
-	ismfrag = pfhdr->attrib.mfrag;
-	fragnum = pfhdr->attrib.frag_num;
-
-	psta_addr = pfhdr->attrib.ta;
-	psta = rtw_get_stainfo(pstapriv, psta_addr);
-	if (!psta) {
-		u8 type = GetFrameType(pfhdr->rx_data);
-		if (type != WIFI_DATA_TYPE) {
-			psta = rtw_get_bcmc_stainfo(padapter);
-			pdefrag_q = &psta->sta_recvpriv.defrag_q;
-		} else
-			pdefrag_q = NULL;
-	} else
-		pdefrag_q = &psta->sta_recvpriv.defrag_q;
-
-	if ((ismfrag == 0) && (fragnum == 0))
-		prtnframe = precv_frame;/* isn't a fragment frame */
-
-	if (ismfrag == 1) {
-		/* 0~(n-1) fragment frame */
-		/* enqueue to defraf_g */
-		if (pdefrag_q) {
-			if (fragnum == 0)
-				/* the first fragment */
-				if (!list_empty(&pdefrag_q->queue))
-					/* free current defrag_q */
-					rtw_free_recvframe_queue(pdefrag_q, pfree_recv_queue);
-
-
-			/* Then enqueue the 0~(n-1) fragment into the defrag_q */
-
-			/* spin_lock(&pdefrag_q->lock); */
-			phead = get_list_head(pdefrag_q);
-			list_add_tail(&pfhdr->list, phead);
-			/* spin_unlock(&pdefrag_q->lock); */
-
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("Enqueuq: ismfrag = %d, fragnum = %d\n", ismfrag, fragnum));
-
-			prtnframe = NULL;
-
-		} else {
-			/* can't find this ta's defrag_queue, so free this recv_frame */
-			rtw_free_recvframe(precv_frame, pfree_recv_queue);
-			prtnframe = NULL;
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("Free because pdefrag_q == NULL: ismfrag = %d, fragnum = %d\n", ismfrag, fragnum));
-		}
-
-	}
-
-	if ((ismfrag == 0) && (fragnum != 0)) {
-		/* the last fragment frame */
-		/* enqueue the last fragment */
-		if (pdefrag_q) {
-			/* spin_lock(&pdefrag_q->lock); */
-			phead = get_list_head(pdefrag_q);
-			list_add_tail(&pfhdr->list, phead);
-			/* spin_unlock(&pdefrag_q->lock); */
-
-			/* call recvframe_defrag to defrag */
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_info_, ("defrag: ismfrag = %d, fragnum = %d\n", ismfrag, fragnum));
-			precv_frame = recvframe_defrag(padapter, pdefrag_q);
-			prtnframe = precv_frame;
-
-		} else {
-			/* can't find this ta's defrag_queue, so free this recv_frame */
-			rtw_free_recvframe(precv_frame, pfree_recv_queue);
-			prtnframe = NULL;
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("Free because pdefrag_q == NULL: ismfrag = %d, fragnum = %d\n", ismfrag, fragnum));
-		}
-
-	}
-
-
-	if ((prtnframe) && (prtnframe->u.hdr.attrib.privacy)) {
-		/* after defrag we must check tkip mic code */
-		if (recvframe_chkmic(padapter,  prtnframe) == _FAIL) {
-			RT_TRACE(_module_rtl871x_recv_c_, _drv_err_, ("recvframe_chkmic(padapter,  prtnframe) == _FAIL\n"));
-			rtw_free_recvframe(prtnframe, pfree_recv_queue);
-			prtnframe = NULL;
-		}
-	}
-	return prtnframe;
-}
-
 static int amsdu_to_msdu(struct adapter *padapter, union recv_frame *prframe)
 {
 	int	a_len, padding_len;
@@ -1886,8 +1866,7 @@ static int amsdu_to_msdu(struct adapter *padapter, union recv_frame *prframe)
 	return  _SUCCESS;
 }
 
-int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl, u16 seq_num);
-int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl, u16 seq_num)
+static int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl, u16 seq_num)
 {
 	struct adapter *padapter = preorder_ctrl->padapter;
 	struct dvobj_priv *psdpriv = padapter->dvobj;
@@ -1955,8 +1934,7 @@ int check_indicate_seq(struct recv_reorder_ctrl *preorder_ctrl, u16 seq_num)
 	return true;
 }
 
-int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl, union recv_frame *prframe);
-int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl, union recv_frame *prframe)
+static int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl, union recv_frame *prframe)
 {
 	struct rx_pkt_attrib *pattrib = &prframe->u.hdr.attrib;
 	struct __queue *ppending_recvframe_queue = &preorder_ctrl->pending_recvframe_queue;
@@ -2008,8 +1986,7 @@ int enqueue_reorder_recvframe(struct recv_reorder_ctrl *preorder_ctrl, union rec
 
 }
 
-void recv_indicatepkts_pkt_loss_cnt(struct debug_priv *pdbgpriv, u64 prev_seq, u64 current_seq);
-void recv_indicatepkts_pkt_loss_cnt(struct debug_priv *pdbgpriv, u64 prev_seq, u64 current_seq)
+static void recv_indicatepkts_pkt_loss_cnt(struct debug_priv *pdbgpriv, u64 prev_seq, u64 current_seq)
 {
 	if (current_seq < prev_seq)
 		pdbgpriv->dbg_rx_ampdu_loss_count += (4096 + current_seq - prev_seq);
@@ -2017,8 +1994,8 @@ void recv_indicatepkts_pkt_loss_cnt(struct debug_priv *pdbgpriv, u64 prev_seq, u
 		pdbgpriv->dbg_rx_ampdu_loss_count += (current_seq - prev_seq);
 
 }
-int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reorder_ctrl *preorder_ctrl, int bforced);
-int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reorder_ctrl *preorder_ctrl, int bforced)
+
+static int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reorder_ctrl *preorder_ctrl, int bforced)
 {
 	struct list_head	*phead, *plist;
 	union recv_frame *prframe;
@@ -2125,8 +2102,7 @@ int recv_indicatepkts_in_order(struct adapter *padapter, struct recv_reorder_ctr
 	return bPktInBuf;
 }
 
-int recv_indicatepkt_reorder(struct adapter *padapter, union recv_frame *prframe);
-int recv_indicatepkt_reorder(struct adapter *padapter, union recv_frame *prframe)
+static int recv_indicatepkt_reorder(struct adapter *padapter, union recv_frame *prframe)
 {
 	int retval = _SUCCESS;
 	struct rx_pkt_attrib *pattrib = &prframe->u.hdr.attrib;
@@ -2279,8 +2255,7 @@ void rtw_reordering_ctrl_timeout_handler(struct timer_list *t)
 
 }
 
-int process_recv_indicatepkts(struct adapter *padapter, union recv_frame *prframe);
-int process_recv_indicatepkts(struct adapter *padapter, union recv_frame *prframe)
+static int process_recv_indicatepkts(struct adapter *padapter, union recv_frame *prframe)
 {
 	int retval = _SUCCESS;
 	/* struct recv_priv *precvpriv = &padapter->recvpriv; */
@@ -2402,9 +2377,7 @@ static int recv_func_posthandle(struct adapter *padapter, union recv_frame *prfr
 	return ret;
 }
 
-
-int recv_func(struct adapter *padapter, union recv_frame *rframe);
-int recv_func(struct adapter *padapter, union recv_frame *rframe)
+static int recv_func(struct adapter *padapter, union recv_frame *rframe)
 {
 	int ret;
 	struct rx_pkt_attrib *prxattrib = &rframe->u.hdr.attrib;
-- 
2.20.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
