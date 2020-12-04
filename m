Return-Path: <driverdev-devel-bounces@linuxdriverproject.org>
X-Original-To: lists+driverdev-devel@lfdr.de
Delivered-To: lists+driverdev-devel@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B060C2CF67A
	for <lists+driverdev-devel@lfdr.de>; Fri,  4 Dec 2020 23:00:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 55D1620796;
	Fri,  4 Dec 2020 22:00:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w528tt4HmgY9; Fri,  4 Dec 2020 22:00:53 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id DCA3520554;
	Fri,  4 Dec 2020 22:00:50 +0000 (UTC)
X-Original-To: devel@linuxdriverproject.org
Delivered-To: driverdev-devel@osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 60CF41BF280
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 22:00:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 5A3F220525
 for <devel@linuxdriverproject.org>; Fri,  4 Dec 2020 22:00:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YQBhEkuVZpFc for <devel@linuxdriverproject.org>;
 Fri,  4 Dec 2020 22:00:47 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com
 [209.85.222.194])
 by silver.osuosl.org (Postfix) with ESMTPS id 3C97C204FF
 for <devel@driverdev.osuosl.org>; Fri,  4 Dec 2020 22:00:47 +0000 (UTC)
Received: by mail-qk1-f194.google.com with SMTP id q5so6933800qkc.12
 for <devel@driverdev.osuosl.org>; Fri, 04 Dec 2020 14:00:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
 bh=aQg7b4HlE5qilxaKRApIAGwNx3a5auskYq2FhXjvgw0=;
 b=ed+KAN2Z6pK+EAkReu7tOs7yHwyYhshsY5DHv7NI5MD9KtgNeK1RmnE/B41JGDuqu3
 tnssBbcwS1DF1OP9MQp3N9ZmmyJ4v+XvdmeSVlCn8eC7Wgz4ovilwIUgGq0DbwHEIvr4
 VpAzW59kBqrfqcW46xefPWn5kUs0vKHWqJqGA5b6h52ss0j2FJevx6csyRH1M2vvTzbY
 Etd3XhLQkP0VavDQIWCTmzqiWzoYlYcoZepqLoDzAwYEOHRk+Hes7pUzEldx6MtSS/ZB
 vTkTUuxWdXYD/1I1MSlmEzELir1k9vdhR6nybv8QjgAPwgCdhivo4vxNVuczE4tfWL4M
 4PgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition;
 bh=aQg7b4HlE5qilxaKRApIAGwNx3a5auskYq2FhXjvgw0=;
 b=s1960wkO8DYhaE7qp3CHyMEshmJ7IlXnICqXy2bo3R4YoP3Bn/JFyu71gBsR83N5sy
 uUXaLytxGpEocvMzUqCosL22rqyxEkb3pibB05SuLrvoDcgSJkazFjzoJyB6EYjCrj82
 eu8sVO7foNmuwSWrUaFRQ2Tk+wBbCsDO/bKITi04n2LL4Vlz3KUz9WMH1vJpdaaFWmRd
 tfWJJz+VBIOXMv9xurDFdEPUCh7oTztathwHPY+8PqP6EtlySRLYLrBwDNyKZFWkgr4R
 CtQ8HFIzMuGwY49wFUoF9vBhTXuTZO/6t+85lh6O8P8N007YlKAftXuV+NGCaiB16+6g
 kZww==
X-Gm-Message-State: AOAM530DRlGNf8iBCMqC6Q/Dsg3VfLbDy/3q0lnPldnKqX035Le+CO2O
 g3NFwagwjnNzr/N5c14Pycc=
X-Google-Smtp-Source: ABdhPJzrvV/Ur3Wb0AmCflfso9Bl8q2UiDuRu6ZE5xc9Dp8ot4sJTi0lZMNdHRs/+HHmBW7ZAgdUKQ==
X-Received: by 2002:a05:620a:4d0:: with SMTP id
 16mr3216384qks.400.1607119246027; 
 Fri, 04 Dec 2020 14:00:46 -0800 (PST)
Received: from a ([24.13.98.51])
 by smtp.gmail.com with ESMTPSA id t2sm5925122qtr.24.2020.12.04.14.00.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Dec 2020 14:00:45 -0800 (PST)
Date: Fri, 4 Dec 2020 16:00:43 -0600
From: Brother Matthew De Angelis <matthew.v.deangelis@gmail.com>
To: gregkh@linuxfoundation.org, ross.schm.dev@gmail.com, pterjan@google.com,
 amarjargal16@gmail.com, vkor@vkten.in
Subject: [PATCH] Staging: rtl8723bs/core fix brace coding style issues in
 rtw_recv.c
Message-ID: <20201204220043.GA440355@a>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: devel@driverdev.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>

Fix all the brace code style warnings found by checkpatch.pl at the
following lines:
748, 940, 1039, 1602, 1922, 1939.
At line 940 add a semi-colon to specify a line that does not execute
anything, as in Kernighan and Ritchie

Signed-off-by: Brother Matthew De Angelis <matthew.v.deangelis@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_recv.c | 20 +++++++-------------
 1 file changed, 7 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_recv.c b/drivers/staging/rtl8723bs/core/rtw_recv.c
index 43e67e48d2df..22030fe6e714 100644
--- a/drivers/staging/rtl8723bs/core/rtw_recv.c
+++ b/drivers/staging/rtl8723bs/core/rtw_recv.c
@@ -745,9 +745,8 @@ void count_rx_stats(struct adapter *padapter, union recv_frame *prframe, struct
 
 	padapter->mlmepriv.LinkDetectInfo.NumRxOkInPeriod++;
 
-	if ((!MacAddr_isBcst(pattrib->dst)) && (!IS_MCAST(pattrib->dst))) {
+	if ((!MacAddr_isBcst(pattrib->dst)) && (!IS_MCAST(pattrib->dst)))
 		padapter->mlmepriv.LinkDetectInfo.NumRxUnicastOkInPeriod++;
-	}
 
 	if (sta)
 		psta = sta;
@@ -937,9 +936,8 @@ sint ap2sta_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 			goto exit;
 		}
 
-		if ((GetFrameSubType(ptr) & WIFI_QOS_DATA_TYPE) == WIFI_QOS_DATA_TYPE) {
-		}
-
+		if ((GetFrameSubType(ptr) & WIFI_QOS_DATA_TYPE) == WIFI_QOS_DATA_TYPE)
+			;
 		if (GetFrameSubType(ptr) & BIT(6)) {
 			/* No data, will not indicate to upper layer, temporily count it here */
 			count_rx_stats(adapter, precv_frame, *psta);
@@ -1036,9 +1034,8 @@ sint sta2ap_data_frame(struct adapter *adapter, union recv_frame *precv_frame,
 
 		process_pwrbit_data(adapter, precv_frame);
 
-		if ((GetFrameSubType(ptr) & WIFI_QOS_DATA_TYPE) == WIFI_QOS_DATA_TYPE) {
+		if ((GetFrameSubType(ptr) & WIFI_QOS_DATA_TYPE) == WIFI_QOS_DATA_TYPE)
 			process_wmmps_data(adapter, precv_frame);
-		}
 
 		if (GetFrameSubType(ptr) & BIT(6)) {
 			/* No data, will not indicate to upper layer, temporily count it here */
@@ -1599,9 +1596,8 @@ sint wlanhdr_to_ethhdr(union recv_frame *precvframe)
 	u8 *ptr = get_recvframe_data(precvframe) ; /*  point to frame_ctrl field */
 	struct rx_pkt_attrib *pattrib = &precvframe->u.hdr.attrib;
 
-	if (pattrib->encrypt) {
+	if (pattrib->encrypt)
 		recvframe_pull_tail(precvframe, pattrib->icv_len);
-	}
 
 	psnap = (struct ieee80211_snap_hdr	*)(ptr+pattrib->hdrlen + pattrib->iv_len);
 	psnap_type = ptr+pattrib->hdrlen + pattrib->iv_len+SNAP_SIZE;
@@ -1919,9 +1915,8 @@ static int amsdu_to_msdu(struct adapter *padapter, union recv_frame *prframe)
 		a_len -= nSubframe_Length;
 		if (a_len != 0) {
 			padding_len = 4 - ((nSubframe_Length + ETH_HLEN) & (4-1));
-			if (padding_len == 4) {
+			if (padding_len == 4)
 				padding_len = 0;
-			}
 
 			if (a_len < padding_len) {
 				DBG_871X("ParseSubframe(): a_len < padding_len !\n");
@@ -1936,9 +1931,8 @@ static int amsdu_to_msdu(struct adapter *padapter, union recv_frame *prframe)
 		sub_pkt = subframes[i];
 
 		/* Indicate the packets to upper layer */
-		if (sub_pkt) {
+		if (sub_pkt)
 			rtw_os_recv_indicate_pkt(padapter, sub_pkt, &prframe->u.hdr.attrib);
-		}
 	}
 
 	prframe->u.hdr.len = 0;
-- 
2.25.1

_______________________________________________
devel mailing list
devel@linuxdriverproject.org
http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel
